---
product: mediacentral-newsroom-management
product-area: integration
version: "2020.4"
release-date: 01/04/2020
doc-type: technical-specification
source: avid-official
source-file: MCNM-FTP-FTPS-ServerProtocol-2020.4.pdf
confidentiality: public
date-added: 28/04/2026
status: superseded
superseded-by: "2020.4.2"
feature-tags: [ftp, ftps, tls, ssl, protocol, integration, rxnet, txnet, certificates, nsml]
---

# MediaCentral | Newsroom Management — iNEWS FTP/FTPS Server Protocol Specification

**Document version:** 2020.4 (Spec version 2020.4)  
**Date:** April 2020  
**Applies to:** MCNM v2020.4

---

## Version History

| Spec Version | Changes |
|---|---|
| 2.4 | Initial specification |
| 2.5 | FTPS support added (AUTH TLS, PBSZ, PROT commands) |
| 2.6 | SITE SENDFORM command added |
| 2.7 | SITE LISTSZ command added |
| 2.8 | OPTS UTF8 command added |
| 3.0 | 3NSML and 3.1nsml format support added to RETR |
| 2020.4 | No structural change from prior spec; aligned to MCNM version numbering |

---

## FTP Command Set

The iNEWS FTP server supports the following standard and site-specific commands.

### Standard Commands

| Command | Description |
|---|---|
| `CWD <path>` | Change working directory. Accepts iNEWS path syntax (e.g. `SYSTEM`, `SYSTEM.QUEUES`). |
| `DELE <path>` | Delete a story or queue. |
| `FEAT` | List server features. Returns supported extensions. |
| `HELP` | Display help text. |
| `LIST [<path>]` | List directory, queue, or user entries. See listing formats below. |
| `MKD <path>` | Make a directory (create a queue or directory). |
| `MODE S` / `MODE B` | Set transfer mode to Stream or Block. |
| `NLST [<path>]` | Name list — returns bare names only (no metadata). |
| `NOOP` | No operation. Returns 200 OK. |
| `OPTS UTF8 ON` | Enable UTF-8 encoding for paths and filenames. |
| `PASS <password>` | Supply password for authentication. |
| `PASV` | Enter passive mode. Server returns IP and port for data connection. |
| `PORT <h1,h2,h3,h4,p1,p2>` | Specify active mode data connection address and port. |
| `PWD` | Print working directory. |
| `QUIT` | End session and close connection. |
| `RETR <path>` | Retrieve a story. Returns story content in NSML format (see formats below). |
| `STAT` | Return server status. |
| `STOR <path>` | Store (upload) a story to the specified path. |
| `STRU F` | File structure (only file structure supported). |
| `SYST` | System type. Returns `UNIX Type: L8`. |
| `TYPE A` / `TYPE I` | Set transfer type to ASCII or Image (binary). |
| `USER <username>` | Supply username for authentication. |
| `XCWD <path>` | Extended CWD (alias for CWD). |
| `XMKD <path>` | Extended MKD (alias for MKD). |
| `XPWD` | Extended PWD (alias for PWD). |

### SITE Commands

| Command | Description |
|---|---|
| `SITE CHARSET <charset>` | Set character set for the session. |
| `SITE FAST` | Enable fast transfer mode — skips some metadata overhead. |
| `SITE FORMAT <format>` | Set story retrieval format (see RETR formats below). |
| `SITE HELP` | Display SITE-specific help. |
| `SITE IDLE <seconds>` | Set session idle timeout in seconds. |
| `SITE LISTSZ <n>` | Set maximum number of entries returned in a LIST response. |
| `SITE SENDFORM <form>` | Send a form definition to the server. |

### RETR — Story Retrieval Formats

The `RETR` command (and `SITE FORMAT`) supports multiple story formats:

| Format Token | Description |
|---|---|
| `NSML` | NSML format — standard iNEWS story XML (default) |
| `2NSML` | NSML format version 2 |
| `3NSML` | NSML format version 3 — introduced with MCNM v2019.x |
| `3.1nsml` | NSML format version 3.1 — introduced with MCNM v2019.x |

### LIST — Directory / Queue / User Listing Formats

- **Directory listing:** Returns queue and sub-directory names with metadata.
- **Queue listing:** Returns story slugs and metadata (air date, words, status, etc.).
- **User listing:** Returns user account names when path points to a user directory.

---

## FTP Reply Codes

Standard FTP reply codes apply. Key iNEWS-specific behaviours:

| Code | Meaning |
|---|---|
| 125 | Data connection already open; transfer starting |
| 150 | File status okay; about to open data connection |
| 200 | Command okay |
| 211 | System status / FEAT response |
| 213 | File status |
| 215 | SYST response: `UNIX Type: L8` |
| 220 | Service ready |
| 226 | Closing data connection; transfer complete |
| 227 | Entering Passive Mode |
| 230 | User logged in |
| 250 | Requested file action okay |
| 257 | Pathname created |
| 331 | User name okay, need password |
| 350 | Requested file action pending further information |
| 421 | Service not available, closing control connection |
| 425 | Cannot open data connection |
| 426 | Connection closed; transfer aborted |
| 450 | Requested file action not taken (temporary) |
| 451 | Requested action aborted: local error in processing |
| 500 | Syntax error, command unrecognised |
| 501 | Syntax error in parameters or arguments |
| 502 | Command not implemented |
| 503 | Bad sequence of commands |
| 530 | Not logged in |
| 550 | Requested action not taken: file unavailable |
| 553 | Requested action not taken: file name not allowed |

---

## FTPS Support

### Creating Certificates

FTPS requires TLS certificates. The following four-step procedure creates the required certificate chain.

**Step 1 — Generate root certificate authority key and certificate:**
```
openssl genrsa -out ca.key 2048
openssl req -new -x509 -days 1826 -key ca.key -out ca.crt -config ca.cnf
```

**Step 2 — Create certificate signing request for the server:**
```
openssl genrsa -out server.key 2048
openssl req -new -key server.key -out server.csr
```

**Step 3 — Sign the server certificate request with the CA:**
```
openssl x509 -req -days 730 -in server.csr -CA ca.crt -CAkey ca.key \
    -set_serial 01 -out server.crt
```

**Step 4 — Combine and install:**
```
cat server.crt server.key > /site/ssl/server.pem
```
The combined PEM file at `/site/ssl/server.pem` is the path used by `rxnet`.

**Sample `ca.cnf`:**
```
[req]
distinguished_name = req_distinguished_name
prompt = no

[req_distinguished_name]
C  = US
ST = Massachusetts
L  = Burlington
O  = Avid Technology
CN = iNEWS CA
```

> **Note:** Only TLS authentication is supported. SSL is not supported.

---

### FTPS Command Set

| Command | Description |
|---|---|
| `AUTH TLS` | Initiate TLS negotiation on the control connection. Required to enter FTPS mode. |
| `PBSZ 0` | Protection buffer size. Must be sent after `AUTH TLS`. Value must be `0`. |
| `PROT C` | Set data channel protection to Clear (unencrypted). |
| `PROT S` | Set data channel protection to Safe (integrity only). |
| `PROT E` | Set data channel protection to Confidential (encryption only). |
| `PROT P` | Set data channel protection to Private (encrypted and integrity-checked). |
| `CCC` | Clear Command Channel — **not supported** by iNEWS FTP server. |
| `ADAT` | Authentication data — not used. |
| `MIC` | Integrity-protected command — not used. |
| `CONF` | Confidentiality-protected command — not used. |
| `ENC` | Privacy-protected command — not used. |

### FTPS Reply Codes

| Code | Meaning |
|---|---|
| 234 | AUTH TLS accepted; proceeding with negotiation |
| 502 | CCC not supported |

---

## FTPS Environment Variables — RXNET / TXNET Configuration

### RXNET (iNEWS receiving / inbound FTP server)

| Variable | Values | Description |
|---|---|---|
| `RXREQUIRESSL` | `0` (default) / `1` | `0` = plain FTP allowed; `1` = TLS required, plain FTP connections refused |
| `RXCERTFILE` | file path | Path to the server PEM file. If not set, defaults to `/site/ssl/server.pem` |
| `RXDATAPORTRANGE` | `min:max` | Restrict passive mode data port range (e.g. `50000:51000`). Useful for firewall configuration. |

**Notes:**
- `rxnet` uses `/site/ssl/server.pem` by default; the `RXCERTFILE` variable overrides this.
- Only TLS authentication is supported (`AUTH TLS`). Implicit FTPS (port 990) is not supported.

### TXNET (iNEWS transmitting / outbound FTP client)

| Variable | Values | Description |
|---|---|---|
| `TXVERIFYCERT` | `0` (default) / `1` | `0` = do not verify remote server certificate; `1` = verify certificate |
| `TXDCKEEPALIVE` | `0` (default) / `20`+ | `0` = disable keepalive on data channel; `20`+ = keepalive interval in seconds |

**Notes:**
- When `TXVERIFYCERT=1`, the CA certificate used to sign the remote server's certificate must be trusted on the iNEWS system.
- `TXDCKEEPALIVE` is useful on connections where idle data channels may be dropped by intermediate network devices.

---

## Limitations

- `CCC` (Clear Command Channel) is **not supported**.
- Only `AUTH TLS` is supported; `AUTH SSL` is not.
- Passive mode port range should be restricted via `RXDATAPORTRANGE` where firewall traversal is required.
- MOS attachment size limit: 32,667 bytes (imposed by NSML, not the FTP layer).

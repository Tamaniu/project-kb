---
product: avid-content-core
product-area: cloud-platform
version: "0.0.3"
doc-type: user-guide
source: avid-official
source-url: https://docs.avid.com/acc/Content/ACC_Help/System_Admin.htm
confidentiality: public
date-added: 01/05/2026
last-updated: 01/05/2026
status: current
feature-tags: [content-core, system-requirements, networking, firewall, iam, rbac, authentication, saas, distributed-processing, aws, gcp]
---

# Avid Content Core — System Requirements and Overview

**Source:** docs.avid.com ACC Help — System Requirements and Overview  
**Extracted:** 01/05/2026 | Docs version: 0.0.3

---

## On-Prem MediaCentral Cloud UX Requirements

The MediaCentral Cloud UX servers run services (Search index, Rules Engine) that enable on-prem integration with ACC. Up to **ten** MediaCentral Cloud UX systems can be connected to a single ACC system.

**Minimum prerequisites:**

- MediaCentral Cloud UX **v2026.4 or later**
- Cluster of **three or more nodes** — single-server installations are not supported
- Configured for **Avid Production Management** or **MediaCentral Production Management** (at minimum)
  - Asset Management and Newsroom Management modules can be connected locally but are **not integrated with ACC** in this release
- Additional licences required (beyond standard MediaCentral):
  - Media Composer | Distributed Processing Engine
  - Media Composer | Distributed Processing Worker
  - MediaCentral | Flex Cloud Storage add-on

For MediaCentral Cloud UX configuration, see "Integrating with Avid Content Core" in the *Avid MediaCentral | Cloud UX Installation Guide*.

---

## On-Prem Client Workstations

| Requirement | Detail |
|---|---|
| Web browser | **Google Chrome only** — Avid qualifies with the last two major Chromium releases. Edge, Safari, and other Chromium-based browsers are not supported. |
| Screen resolution | Minimum **1280 × 1024 pixels** — some UI elements may not display below this. |
| Network | Public internet access required (no VPN needed). |
| Mobile | Mobile web browsers and portable Chrome installs are not supported. |
| Chrome extensions | Not tested — extensions can introduce performance impact affecting playback. |
| Endpoint security | Avid recommends an EDR solution. CrowdStrike Falcon guidelines: https://kb.avid.com/articles/en_US/troubleshooting/en239659 |
| Distributed Processing Service Workstations | One or more workstations running **v2025.12.2 or later** required for proxy creation. See *Avid Media Composer | Distributed Processing Administration Guide*. For version compatibility: https://kb.avid.com/pkb/articles/en_US/compatibility/Avid-Video-Compatibility-Charts |

**Note:** Graphics driver features may affect asset playback. If playback issues occur, try lowering video resolution or increasing display refresh rate.

---

## Networking

All traffic between on-prem servers/workstations and ACC uses **port 443** only. No VPN required from any workstation or server connecting to ACC.

If a network firewall is in place, create URL rules to allow outbound traffic from MediaCentral Cloud UX to ACC:

### Avid Content Core URLs

| URL pattern | Notes |
|---|---|
| `*<org>.avidcontentcore.com` | e.g. `*wavd.avidcontentcore.com` |
| `*<org>.us-east-1.avidapis.io` | Americas |
| `*<org>.eu-west-1.avidapis.io` | Europe |
| `admin-<org>.us-east-1.avidapis.io` | Americas |
| `admin-<org>.eu-west-1.avidapis.io` | Europe |

### Amazon Web Services

| URL |
|---|
| `s3.<region>.amazonaws.com` |
| `sts.amazonaws.com` |
| `https://sts.<region>.amazonaws.com` |
| `iam.amazonaws.com` |
| `https://<org>.auth.<region>.amazoncognito.com/` |
| `rolesanywhere.<region>.amazonaws.com` |
| `rolesanywhere.<region>.api.aws` |
| `secretsmanager.<region>.amazonaws.com` |

### Google Cloud Platform

| URL |
|---|
| `storage.googleapis.com` |
| `oauth2.googleapis.com` |
| `accounts.google.com` |

---

## User Authentication — Security Design Principles

| Principle | Description |
|---|---|
| Zero Trust | Every request is authenticated and authorised regardless of source. Network location does not grant trust. |
| Tenant Isolation | Users operate within tenant boundaries. Cross-tenant access is prevented by default. Each tenant has its own dedicated IAM user pool. |
| Least Privilege | Users and services receive only the minimum permissions required for their role. |
| Layered Enforcement | Authorisation enforced at API gateway, service, and database layers. Misconfiguration in one layer does not compromise overall security. |
| Fail-Closed | Absence or corruption of tenant context results in access denied. System defaults to restriction, not permissiveness. |
| Customer Control | Customers integrate their own identity providers. Avid does not control day-to-day user access. |
| Auditability | Authentication attempts and authorisation decisions are logged with timestamp, user identity, resource, action, and outcome. |
| Server-Side Authority | Feature enablement and access decisions are server-side. Client-side logic does not control access. |
| Limited Blast Radius | Compromised credentials affect only the scope of permissions granted to that identity. |

---

## System Configuration — High-Level Checklist

1. Configure identity provider settings and role mapping in the **ACC Control Panel** (Tenant Admin Portal).
2. Configure local MediaCentral Cloud UX system(s) — see "Integrating with Avid Content Core" in the *MediaCentral | Cloud UX Installation Guide*.
3. Configure additional settings through the **ACC Administrator apps** (Web Editor, Search Settings, Site Registry).

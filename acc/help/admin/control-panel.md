---
product: avid-content-core
product-area: cloud-platform
version: "0.0.3"
doc-type: user-guide
source: avid-official
source-url: https://docs.avid.com/acc/Content/ACC_Help/Admin_Using_Tenant_Portal.htm
confidentiality: public
date-added: 01/05/2026
last-updated: 01/05/2026
status: current
feature-tags: [content-core, admin, control-panel, tenant-portal, idp, oidc, saml, sso, okta, entra, role-mapping, rbac, seats, licences]
---

# Avid Content Core — ACC Control Panel

**Source:** docs.avid.com ACC Help — Using the ACC Control Panel  
**Extracted:** 01/05/2026 | Docs version: 0.0.3

---

## Overview

Following purchase, an email from `no.reply@avid.com` with subject **"Your Avid Content Core tenant is ready — next steps"** provides the URL and credentials for the ACC Control Panel.

The Control Panel is used to configure:

1. **Identity Provider (IDP) settings** — connect your enterprise authentication system (e.g. Okta, Microsoft Entra) to ACC so users can sign in with their standard credentials.
2. **Role mappings** — map IDP user groups to ACC roles to control what each user group can access.

Multiple IDPs can be configured against a single ACC system. However, users belonging to multiple IDPs should consistently connect via a single IDP.

---

## Connecting to the ACC Control Panel

1. Click the **Admin portal link** from the Avid setup email.
2. Enter the provided credentials. The temporary password expires after **7 days**; contact Avid Sales if it has expired.
3. Update your password on first login when prompted.

After configuring your IDP and signing in with SSO credentials, the temporary email credentials are **permanently disabled**.

To disconnect: click the **Logout** button (upper-right corner).

The portal supports **light and dark modes** — toggle using the moon/sun button to the left of the Logout button.

---

## Configuring an Identity Provider

### Supported IDP Types

- **OpenID Connect (OIDC)**
- **SAML** (Security Assertion Markup Language)

### Prerequisites

- Your IDP must support OAuth 2.0 (OIDC or SAML compliant) **and** Group Claims.
- Avid does not qualify or prefer any specific IDP vendor and cannot advise on vendor-specific settings.
- You must create an app within your identity provider for ACC **before** configuring these settings.

---

### Configuring an OIDC IDP

1. Click **Create IDP** on the Identity Provider section.
2. Enter a **Display name** — shown on the ACC welcome screen for all users.
3. Select **OIDC**.
4. Enter an optional **Description** (shown only within the Control Panel).
5. Configure **OIDC Configuration** fields:
   - **Client ID** and **Client Secret**: obtain from your IDP app.
   - Other fields (Issuer URL, Authorisation endpoint, etc.) are standard OIDC settings, often available via a well-known configuration URL. Okta example: `https://<org>.okta.com/.well-known/openid-configuration`
   - **Scopes**: typically `openid`, `email`, `profile`, `groups`. **Exception: do not configure `groups` for Microsoft Entra.**
   - Names entered must exactly match the scope names from your IDP.
6. Configure **Attribute Mapping**: map default Cognito values (left column) to your IDP app's custom values (right column). **Minimum required: `email` and `name`.**
7. Configure **Group Claim Name**: typically already named `groups` — no change needed unless your IDP uses a different name. For Microsoft Entra, this is a GUID relating to the GroupID claim.
8. Click **Create IDP**. The **OIDC Client Details** window appears.
9. Copy the **Redirect URI** and **Sign-out URL** into your IDP app. Save.
10. Click **"I've configured my IDP"** in the Control Panel.
11. *(Recommended)* Click **Test Federation** to verify.

---

### Configuring a SAML IDP

1. Click **Create IDP** on the Identity Provider section.
2. Enter a **Display name** and select **SAML**.
3. Enter an optional **Description**.
4. Paste the **Metadata URL** from your IDP app into the SAML Configuration area.
5. Configure **Attribute Mapping** — same rules as OIDC (email and name required at minimum).
6. Configure **Group Claim Name** — same rules as OIDC.
7. Click **Create IDP**. The **SAML Service Provider Details** window appears.
8. Copy the information from this window into your IDP app. Save.
9. Click **"I've configured my IDP"** in the Control Panel.
10. *(Recommended)* Click **Test Federation** to verify.

---

## Reviewing and Managing IDP Configuration

From the **Identity Provider Details** page you can:

- Click **Test Federation** — a "Test Federation Successful" message appears if the test passes.
- Click **Edit** — change settings for this IDP profile.
- Click **Delete** — remove this IDP profile. **This action cannot be undone.** A confirmation prompt appears.

To return to the IDP list, click **Back to IDP List** (upper-left of the Details page).

---

## ACC Seats and User Roles

### Concepts

- **Seats** ≈ licences — consumed whenever a user signs into ACC.
- **Roles** — define the type of seat consumed and the permissions for each user, by mapping IDP user groups to ACC role types.

ACC allows **oversubscription**: you can assign a role to more users than you have seats purchased. However, oversubscription may incur additional fees.

### Role Summary

| Role | Category | Description |
|---|---|---|
| **Viewer** | User | Read-only access. For reviewers, junior staff, or anyone needing to view but not edit content. |
| **Journalist** | User | Searches, retrieves, and edits proxy clips. Publishes to social media. |
| **Approver** | User | Reviews and approves content at defined production workflow stages. |
| **Editor** | User | Collects assets and uses the Web Editor to create and publish sequences. |
| **Collection Manager** | User | Reserved for future use — not applicable in this version. |
| **Workflow Administrator** | User | Oversight and management of editorial workflows and media processing jobs across the tenant. No access to tenant configuration. Intended for production managers and operations staff. |
| **Cutting Room Administrator** | High-Privilege | Access to Web Editor administrator settings only. Useful for managing social media profiles without broader admin access. |
| **Tenant Administrator** | High-Privilege | Access to the ACC Control Panel for tenant administration. Best practice: do not assign any other role to this group. |

### Key Rules

- Roles are **static** — cannot be customised; new role types cannot be created in this release.
- High-privilege roles **intentionally exclude content workflow permissions** — enforces separation of duties and limits blast radius from a compromised admin account.
- If a user belongs to multiple groups with different roles, their permissions are **cumulative**.
- Role changes take effect at the **next sign-in** — not applied mid-session.

### Permissions by Role — Review and Approval Stages

| Role | Can Request | Can Approve | Can Reject | Can Cancel |
|---|---|---|---|---|
| Viewer | — create task only — | ✗ | ✗ | ✗ |
| Editor / Journalist | ✓ | ✗ | ✗ | ✓ |
| Approver | ✓ | ✓ | ✓ | ✓ |

---

## Adding and Removing Role Mappings

If a user group has no assigned role, its members are **denied access** to ACC.

### To add a role mapping

1. Click the **Role Mappings** tab in the Control Panel header.
2. Click **Create Mapping**.
3. Type the IDP group name into the **IdP Group Name** field.
4. Select a role type from the menu.
5. Click **Create Mapping** to save.
6. Repeat as needed. A single role can be mapped to multiple groups, but each assignment must be created individually.
7. Verify by signing into Avid Content Core with the configured credentials.

### To remove a role mapping

1. Click the **Role Mappings** tab.
2. Click **Delete** to the right of the relevant group-to-role mapping.

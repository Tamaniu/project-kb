# MediaCentral | Cloud UX — Best Practices for VMware (Legacy)

> Product: MediaCentral | Cloud UX  
> Document type: Best Practices / Deployment Guidance  
> Status: **Legacy reference**  
> Source: Avid MediaCentral | Cloud UX Best Practices for VMware® (June 2025)

---

## Important Notification (as of 2025.6)

- Avid **no longer tests or qualifies** MediaCentral Cloud UX on any specific virtualization vendor (including VMware).
- Virtualized deployments are **permitted**, but:
  - Vendor selection
  - Qualification
  - Performance validation  
  are the **customer’s responsibility**.
- This document **will not receive further updates** and should be treated as legacy guidance.

---

## Supported Virtualization Context

- VMware vSphere **7.x or later**
- Avid internal testing historically used vSphere 7.x
- VMware 8.x+ may be used but is **not qualified**
- Quarterly VMware security patching recommended

---

## General Virtualization Guidance

- Do not oversubscribe host resources.
- Allocate minimum viable vCPU and RAM; scale up only when required.
- Over-allocating vCPU can reduce performance due to scheduling overhead.
- VMware Snapshots are **not backups** and should be avoided for MCUX VMs.

---

## Common VM Settings

- Enable **Memory Hot Plug**
- Do **not** enable vCPU Hot Add (disables vNUMA)
- Use **VMXNET3** network adapters
- vSphere Fault Tolerance is **not supported**
- Enable vCenter alarms:
  - VM CPU usage
  - VM memory usage
  - Host CPU usage
  - Host memory usage

---

## Minimum Host Requirements

- Intel Xeon CPUs (≤2 years old)
- Minimum **12 physical cores**
- AVX instruction support required (MongoDB dependency)
- **192 GB RAM minimum** per host
- Reserve:
  - ≥1 core
  - 2–4 GB RAM for ESXi host
- SSD storage **required**
- HDD (spinning disk) **not supported**

---

## VM Resource Allocation (Guidance)

- Typical baseline:
  - 12–24 vCPU
  - 128 GB RAM
- Stream capacity varies by codec:
  - AVC-Intra 100
  - DNxHD 145
  - XDCAM HD 50
  - Proxy H.264
- Performance scales with vCPU but not linearly.

---

## Storage Configuration

### Volumes (Required)
- **OS volume**: minimum 500 GB
- **Data volume**: minimum 500 GB
- Single disk may be partitioned:
  - ≥25% allocated to Data
  - Minimum 50 GB Data partition

### Provisioning
- Thick Eager Zero recommended
- SSD-backed datastores only
- SAN environments must also use SSDs

---

## Data Volume Usage

- MongoDB (IAM, licensing)
- Elasticsearch (Search index)
- Playback cache
- Draft sequences (Enterprise Editing)
- Multi-cam proxy images
- Mobile playback transcodes

Media cache auto-cleans when free space drops below 40%.

---

## GPU (Optional but Recommended)

- Required for performant **Avid Ada Transcribe**
- NVIDIA GPUs only (AMD not supported)
- GPU passthrough must be configured in VMware
- Example performance uplift:
  - CPU-only: ~real-time
  - NVIDIA Ampere: ~35× real-time
  - NVIDIA Ada: ~70× real-time

---

## SeaweedFS

- Used for temporary transcription assets
- Allocates ~32 GB from Data volume by default
- Auto-cleans after transcription completion

---

## Networking

- Multi-host deployments require **10 GbE or better**
- VMXNET3 recommended
- Shared storage strongly preferred for clusters

---

## Installation Notes

- Ubuntu installs Open VM Tools automatically
- VM BIOS configuration required before OS install:
  - Disable Legacy Diskette
  - Configure boot order
  - Set system date/time
- Follow standard MediaCentral Cloud UX Installation Guide thereafter

---

## Search Grid

- Supported in virtual environments
- VM sizing must follow Search Grid prerequisites
- Uses Elasticsearch and phonetic indexing services

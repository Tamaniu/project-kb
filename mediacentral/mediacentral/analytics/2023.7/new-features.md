# New Features in MediaCentral Analytics 2023.7

This document provides an overview of new features introduced in **MediaCentral Analytics version 2023.7**.

## Support for ARM-based Accounts (Azure Video Indexer)

Before this release, the Azure Video Indexer Gateway supported only classic accounts where the access token was generated through API Management.

Starting with version 2023.7:

- **Only Azure Resource Manager (ARM)-based accounts are supported for new installations**
- Existing classic accounts can still be used but are **not supported by the Asset Management installer**

For more information, see:
- *Creating a Video Indexer Account*
- *Installing and Updating MediaCentral Analytics Packages*
- *(Optional, Video Indexer) Enabling the Usage of Classic Accounts*

## Support for AWS MediaAnalytics

MediaCentral Analytics can now be used with **Amazon AWS Cognitive Services**, deployed as MediaCentral Cloud UX services.

### Supported analytics types

**AWS Rekognition**
- Annotations (visual content annotation)
- Content Moderation (adult and racial content detection)
- Face Recognition (face detection)
- Frame Patterns (for example, black frame detection)
- OCR (Optical Character Recognition)
- People (named person recognition)

**AWS Transcribe**
- Speech-to-Text (STT) transcription of spoken words

For more information, see:
- *Amazon AWS MediaAnalytics Prerequisites*
- *AWS MediaAnalytics Setup*

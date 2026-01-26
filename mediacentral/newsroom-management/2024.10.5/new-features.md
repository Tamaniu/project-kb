# New Features in MediaCentral | Newsroom Management 2024.10.5

## Newsroom Management Server

### Configuration files loaded by service

Embedding configuration information using `maketab` or `makemontab` is no longer required.

After changing configuration files, it is now sufficient to **restart the relevant services**.  
Affected services include:

- gnews  
- inewsctc  
- news  
- snews  
- nxserver  
- newsmail  
- monitor  

As a result, `maketab` and `makemontab` are no longer necessary and have been removed from procedures and appendices in:
- *Newsroom Management Setup and Configuration Guide*
- *Newsroom Management Administration Guide*

### Windows Server 2025 support

Windows Server 2025 is now the **primary supported platform** for:
- MOS Gateway
- Data Receiver
- FTS

Notes:
- Windows Server 2022 remains supported
- Windows Server 2019 is **discontinued**

---

## iNEWS Workstation

### Dynamic theme change

Previously, switching between themes (Original, Light, Dark) required an application restart and re-login.

In 2024.10.5:
- Themes can now be changed **dynamically**, without restarting
- Workspace state is preserved when switching themes

Note:
- Browser history is **not** restored after a theme change

### High resolution display and sizing improvements

Multiple UI enhancements improve high-resolution display handling and usability:

- Automatic scaling based on monitor pixels per inch (PPI), respecting OS scaling
- Icons updated to:
  - Vector graphics for Light and Dark themes
  - Scaled images for Classic theme
- Toolbars now display visual “grabber” indicators  
  - Can be disabled via *Show grabbers* in Toolbar customisation
- Expanded support for custom icon formats:
  - BMP, PNG, JPG, GIF, TIFF, ICO
- All dialogs are now resizable, with consistent action button layout
- Main menu can be docked to either side of the application
- Menus can be hidden

Note:
- If the main menu is hidden, menu accelerators will not function
- This may affect macros that rely on menu accelerators

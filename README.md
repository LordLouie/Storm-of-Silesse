# Lil' Manster Public Files
 Public build files for Lil' Manster, the Fire Emblem 5 translation and QoL patch.

This folder is a more complete version of the [**Lil' Manster**](https://forums.serenesforest.net/index.php?/topic/90189-fe5-lil-manster-%E2%80%93-translation-and-quality-of-life-patch-for-thracia-776/#comments) project files, which allows you to translate Fire Emblem Thracia 776 into different languages, or make mods without having to start from scratch.
While this may not be an "FE5 Builder", and the game's disassembly is still far from complete, I hope this will provide a useful base for your own creative endeavors.

-----------------
Setup
-----------------

- A recent version of [**python 3**](https://www.python.org/) must be installed and in your path.
  You will need to install pip and to add python to your environment variables.
  These last two requirements can be achieved at any time after the initial install by running the installer file and choosing "Modify".

- Install the Pillow module by running `python -m pip install pillow` in your command prompt.

- Download the [**Volt Edge library**](https://github.com/ZaneAvernathy/VoltEdge) and drop the VoltEdge.h file and the VOLTEDGE folder in the LM folder.

- Go through the `tools` folders and install said tools wherever you see an `.url` file.
  64tass, SuperFamiconv and Lunar Expand are required downloads, and the others are all strongly recommended.
  64tass comes in a folder, so make sure to empty the contents of that folder you download into the `Assembler` folder.
 
- A hex editor like [**HxD**](https://mh-nexus.de/en/hxd/) and a decent text editor like [**Sublime**](https://www.sublimetext.com/) or [**Notepad++**](https://notepad-plus-plus.org/) are also recommended.

- Place a headerless copy Fire Emblem: Thracia 776 in the `base_rom` folder and name it `FE5.sfc`.
  Then, using Lunar Expand, it needs to be expanded using the second 48 MBit ExLoROM option (48 Mbit ExLoROM 6 MB 2).
  Read the text file in `base_rom` for further instructions on how to expand the ROM with Lunar Expand.

-----------------
Operation
-----------------

- The first time you try to build, then every time you edit any of the tables in the `tables` folder, launch the `tablebuilder.bat` before building.
  This will generate new, insertable `.casm` files for the assembler.

- Click the `build.bat` file to generate a copy of the current developper version of Lil' Manster.
  Mac/Linux users should instead use `build.sh`.

- If no ROM is generated, consult the command line prompt and the `log.txt` file for possible error messages.
  Do ignore the "Warning messages" in the log, as they do not prevent the build process and are generally unconsequential.

- `buildfile.asm` has all the includes, and is the root from which the `build.bat` reaches the rest of the folder.

- `clean.bat` deletes the generated ROM, saves, patches, log and labels files.
  `clean-all.bat` also deletes the base ROM and its saves.

----------------
Folder overview
----------------

`asm` holds most of the nitty gritty code—almost of it assembler—as well as the various quality-of-life improvements. If you go look in there, you likely already know what you're doing

`base_rom`, as explained above, is where you put the FE5 ROM what will serve as a base for the assembler.

`definitions` holds some of the definition files that aren't in `asm`.

`doc` holds some documentation that might help with specific editing tasks. It is incomplete and very much a work-in-progress.

`events` holds all the game's events, which also include world map narration, units deployed, deployment slots, shops, etc.
Requires some tinkering and studying to edit, but fairly accessible compared to writing your own asm routines.

`graphics` holds a small portion of the game's graphics, including the intro crawl, portraits, and some elements of battle animations.
Anything that requires translation is located there. Everything else is a WIP.

`tables` will be of most interest for modders, and broadly replaces the function of Nightmare modules.
Units, class, item, chapter data, but also battle animation properties, arena opponents... there is a little of everything. Editing these should be easy for almost anyone.
`.asm` files are opened with a text editor, and `.csv` files with a spreadsheet.
`.casm` files are generated by the `tablebuilder.bat` in root, and should not be edited manually.

`text_dialogues` holds all the dialogue from Lil' Manster. Dialogue text editing is accessible to most anyone, and you can find an informal tutorial in the documentation folders which helps with the work flow and the quirks of the system.

`text_menu` holds all the menu text from Lil' Manster. Menu text editing is fairly tricky on a large scale, so following the tutorial in the documentation folder is greatly advised.
Keep in mind that dialogue text and menu text are completely different systems and that they do not interact with one another.

`tools` holds all the tools (or at least links to them) needed to edit Fire Emblem 5.

----------------
Credits
----------------

Miacis: Repository's manager and Lil' Manster Project Lead.

Zane Avernathy: Most of the disassembly and tools.

Ultimage: Disassembly work, coding for Lil' Manster.

[The Lil' Manster and Project Exile teams](https://forums.serenesforest.net/index.php?/topic/90189-fe5-lil-manster-%E2%80%93-translation-and-quality-of-life-patch-for-thracia-776/#comments)
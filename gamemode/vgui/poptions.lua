function MakepOptions()
	PlayMenuOpenSound()

	if pOptions then
		pOptions:SetAlpha(0)
		pOptions:AlphaTo(255, 0.5, 0)
		pOptions:SetVisible(true)
		pOptions:MakePopup()
		return
	end

	local Window = vgui.Create("DFrame")
	local wide = math.min(ScrW(), 600)
	local tall = math.min(ScrH(), 780)
	Window:SetSize(wide, tall)
	Window:Center()
	Window:SetTitle(" ")
	Window:SetDeleteOnClose(false)
	pOptions = Window

	local y = 8

	local label = EasyLabel(Window, translate.Get("options_button"), "ZSHUDFont", color_white)
	label:SetPos(wide * 0.5 - label:GetWide() * 0.5, y)
	y = y + label:GetTall() + 8

	local list = vgui.Create("DPanelList", pOptions)
	list:EnableVerticalScrollbar()
	list:EnableHorizontal(false)
	list:SetSize(wide - 24, tall - y - 12)
	list:SetPos(12, y)
	list:SetPadding(8)
	list:SetSpacing(4)

	gamemode.Call("AddExtraOptions", list, Window)

	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_no_floating_scores"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_nofloatingscore")
	check:SizeToContents()
	list:AddItem(check)
	
	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_show_team_indicators"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_teamindicators")
	check:SizeToContents()
	list:AddItem(check)
	check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("op_show_node"))
	check:SetConVar("zsb_disablenode")
	check:SizeToContents()
	check:SetTooltip(translate.Get("op_show_node_tool"))
	list:AddItem(check)
	
	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_enable_killstreak_sounds"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_killstreaksounds")
	check:SizeToContents()
	list:AddItem(check)
	
	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_spectator_mode"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_spectator")
	check:SizeToContents()
	list:AddItem(check)

	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_hide_most_of_hud"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_filmmode")
	check:SizeToContents()
	list:AddItem(check)
	
	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_simple_score_board"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_simplescoreboard")
	check:SizeToContents()
	list:AddItem(check)
	
	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_play_music"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_playmusic")
	check:SizeToContents()
	list:AddItem(check)
	
	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_crosshair_while_ironsights"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_ironsightscrosshair")
	check:SizeToContents()
	list:AddItem(check)

	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_crosshair_no_rotate"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_nocrosshairrotate")
	check:SizeToContents()
	list:AddItem(check)

	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_enable_color_correction"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_colormod")
	check:SizeToContents()
	list:AddItem(check)

	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_enable_pain_flashes"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_drawpainflash")
	check:SizeToContents()
	list:AddItem(check)
	
	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_show_ragdoll_eye_view"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_ragdolleyes")
	check:SizeToContents()
	list:AddItem(check)
	
	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_show_damage_indicators"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_damagefloaters")
	check:SizeToContents()
	list:AddItem(check)

	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_enable_view_roll"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_movementviewroll")
	check:SizeToContents()
	list:AddItem(check)

	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_always_show_nail_info"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_alwaysshownails")
	check:SizeToContents()
	list:AddItem(check)
	
	local check = vgui.Create("DCheckBoxLabel", Window)
	check:SetText(translate.Get("option_use_model_health_bar"))
	check:SetFont("ZSHUDFontSmallerNS")
	check:SetConVar("zsb_modelhealthbar")
	check:SizeToContents()
	list:AddItem(check)
	
	list:AddItem(EasyLabel(Window, translate.Get("option_weapon_hud_style"), "ZSHUDFontSmallerNS", color_white))
	local dropdown = vgui.Create("DComboBox", Window)
	dropdown:SetMouseInputEnabled(true)
	dropdown:AddChoice("3D")
	dropdown:AddChoice("2D")
	dropdown:AddChoice("2D/3D")
	dropdown.OnSelect = function(me, index, value, data)
		RunConsoleCommand("zsb_weaponhudmode", value == "2D/3D" and 2 or value == "2D" and 1 or 0)
	end
	dropdown:SetText(GAMEMODE.WeaponHUDMode == 2 and "2D/3D" or GAMEMODE.WeaponHUDMode == 1 and "2D" or "3D")
	list:AddItem(dropdown)

	list:AddItem(EasyLabel(Window, translate.Get("option_music_volume"), "ZSHUDFontSmallerNS", color_white))
	local slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(0)
	slider:SetMinMax(0, 100)
	slider:SetText("")
	slider:SetConVar("zsb_beatsvolume")
	slider:SizeToContents()
	list:AddItem(slider)
	
	list:AddItem(EasyLabel(Window, translate.Get("option_ally_transparency_radius"), "ZSHUDFontSmallerNS", color_white))
	local slider = vgui.Create("DNumSlider", Window)
	slider:SetDecimals(0)
	slider:SetMinMax(0, 512)
	slider:SetConVar("zsb_transparencyradius")
	slider:SetText("")
	slider:SizeToContents()
	list:AddItem(slider)

	list:AddItem(EasyLabel(Window, translate.Get("option_crosshair_color_primary"), "ZSHUDFontSmallerNS", color_white))
	local colpicker = vgui.Create("DColorMixer", Window)
	colpicker:SetAlphaBar(false)
	colpicker:SetPalette(false)
	colpicker:SetConVarR("zsb_crosshair_colr")
	colpicker:SetConVarG("zsb_crosshair_colg")
	colpicker:SetConVarB("zsb_crosshair_colb")
	colpicker:SetTall(72)
	list:AddItem(colpicker)

	list:AddItem(EasyLabel(Window, translate.Get("option_crosshair_color_secondary"), "ZSHUDFontSmallerNS", color_white))
	local colpicker = vgui.Create("DColorMixer", Window)
	colpicker:SetAlphaBar(false)
	colpicker:SetPalette(false)
	colpicker:SetConVarR("zsb_crosshair_colr2")
	colpicker:SetConVarG("zsb_crosshair_colg2")
	colpicker:SetConVarB("zsb_crosshair_colb2")
	colpicker:SetTall(72)
	list:AddItem(colpicker)

	list:AddItem(EasyLabel(Window, translate.Get("option_health_color_full"), "ZSHUDFontSmallerNS", color_white))
	local colpicker = vgui.Create("DColorMixer", Window)
	colpicker:SetAlphaBar(false)
	colpicker:SetPalette(false)
	colpicker:SetConVarR("zsb_auracolor_full_r")
	colpicker:SetConVarG("zsb_auracolor_full_g")
	colpicker:SetConVarB("zsb_auracolor_full_b")
	colpicker:SetTall(72)
	list:AddItem(colpicker)

	list:AddItem(EasyLabel(Window, translate.Get("option_health_color_empty"), "ZSHUDFontSmallerNS", color_white))
	local colpicker = vgui.Create("DColorMixer", Window)
	colpicker:SetAlphaBar(false)
	colpicker:SetPalette(false)
	colpicker:SetConVarR("zsb_auracolor_empty_r")
	colpicker:SetConVarG("zsb_auracolor_empty_g")
	colpicker:SetConVarB("zsb_auracolor_empty_b")
	colpicker:SetTall(72)
	list:AddItem(colpicker)
	list:AddItem(EasyLabel(Window, "Health Color"))
	local colpicker = vgui.Create("DColorMixer", Window)
	colpicker:SetAlphaBar(false)
	colpicker:SetPalette(false)
	colpicker:SetConVarR("zsb_rhealth")
	colpicker:SetConVarG("zsb_ghealth")
	colpicker:SetConVarB("zsb_bhealth")
	colpicker:SetTall(72)
	list:AddItem(colpicker)

	Window:SetAlpha(0)
	Window:AlphaTo(255, 0.5, 0)
	Window:MakePopup()

end

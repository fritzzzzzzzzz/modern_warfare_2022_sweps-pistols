ATTACHMENT.Base = "att_barrel_conversion"
ATTACHMENT.Name = "Impact Point"
ATTACHMENT.Icon = Material("models/kyo/icon/golf/icon_golf_impactpoint.vmt")
ATTACHMENT.Conversion = {
	[3] = {"att_vm_pi_romeo18_stock", "att_vm_pi_golf18_stocklight", "att_vm_pi_golf18_stockhvy", "att_vm_pi_golf18_stocktac"},

	[6] = {"att_sight", "att_vm_2x_west02_holo", "att_vm_2x_west02", "att_vm_reflex_02", "att_vm_minireddot01_tall", "att_vm_minireddot02_tall", "att_vm_minireddot03_tall",
    "att_vm_holo_west01", "att_vm_holo_west02", "att_vm_holo_east01", "att_vm_reflex_east01",
    "att_vm_reflex_east02", "att_vm_reflex_west02_tall", "att_vm_reflex_west03",
    "att_vm_thermal_east01", "att_vm_thermal_west01","att_vm_reflex_west04", "att_vm_2x_west01", "att_vm_4x_east01",
    "att_vm_4x_west01", "att_vm_4x_west02"},
	
	[7] = {"att_vm_pi_romeo18_slide"},
	
	[9] = {"att_laser", "att_vm_laser_pstl02_v0", "att_vm_laser_pstl05_v0", "att_vm_laser_pstl06_v0", "att_vm_laser_pstl07_v0", "att_vm_flashlight_pstl01_v0", "att_vm_flashlight_pstl02_v0"},
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.ViewModelOffsets.Idle.Pos = Vector(0, 0, 0)
    weapon.Zoom.Blur.EyeFocusDistance = 10
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
    if (!weapon:HasAttachment("att_sight")) then	
		weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0)
	else
		weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0, -2, -1)
	end
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetViewModel("models/easy/mw/weapons/vm_iw9_golf17_conv.mdl")
	weapon.WorldModel = Model("models/kyo/wm_pi_x12_impbar.mdl")
	weapon.WorldModelOffsets.Pos = weapon.WorldModelOffsets.Pos + Vector(-1, 1, -1)
end
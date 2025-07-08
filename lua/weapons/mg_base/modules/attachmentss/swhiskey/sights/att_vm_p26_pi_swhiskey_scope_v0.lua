ATTACHMENT.Base = "att_optic_1point5x"
ATTACHMENT.Name = "Corio RV500 Optic"
ATTACHMENT.Model = Model("models/zeron/att_vm_p26_pi_swhiskey_scope_v0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/swhiskey/icon_scope.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["sight"] = 2
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 1,
    ["sight"] = 2
}
ATTACHMENT.Optic = {
    LensHideMaterial = Material("viper/MW/attachments/attachment_vm_4x_west_lens.vmt"),
    HideModel = Model("models/zeron/att_vm_p26_pi_swhiskey_scope_v0_hide.mdl"),
    LensBodygroup = "lens",
    FOV = 1, 
    ParallaxSize = 600, --a value of zero means 1:1 size with the end of the optic
    Thermal = false
}
ATTACHMENT.Reticle = {
    Material = Material("viper/mw/reticles/reticle_sniper_new.vmt"),
    Size = 1950,
    Color = Color(255, 255, 255, 255),
    Attachment = "reticle",
	Offset = Vector(0.1, 0.04, 0)
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
    weapon.Zoom.ViewModelFovMultiplier = weapon.Zoom.ViewModelFovMultiplier * 1
    weapon.Zoom.FovMultiplier = 0.675
end

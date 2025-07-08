ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "EXF Shoreline Grip"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_gripaim_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/icon_attachment_p25_pi_decho_gripaim_v0.vmt")

ATTACHMENT.Bodygroups = {
    ["grip"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.8
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
end
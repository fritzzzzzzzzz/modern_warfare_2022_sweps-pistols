ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "GS .50 Wood Grain"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_griptac_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/icon_attachment_p25_pi_decho_griptac_v0.vmt")
ATTACHMENT.Bodygroups = {
    ["grip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.17
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.17
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.06
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.06
end
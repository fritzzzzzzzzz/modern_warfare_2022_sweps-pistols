ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "SO RO-99 Grip"
ATTACHMENT.Model = Model("models/zeron/att_vm_p26_pi_swhiskey_pgriptac_v0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/swhiskey/icon_griptac.vmt")
ATTACHMENT.Bodygroups = {
    ["pgrip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.9
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.89
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.89
end

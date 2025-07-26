ATTACHMENT.Base = "att_reargrip_golf"
ATTACHMENT.Name = "Cronen LIMA-6"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf17_griptac.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/golf/icon_golf_griptac.vmt")

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

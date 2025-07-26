ATTACHMENT.Base = "att_reargrip_golf"
ATTACHMENT.Name = "FTAC OL-Z Grip"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf17_gripass.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/golf/icon_golf_gripass.vmt")

ATTACHMENT.Bodygroups = {
    ["pgrip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
end
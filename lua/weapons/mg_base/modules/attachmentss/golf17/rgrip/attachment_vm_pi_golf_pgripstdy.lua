ATTACHMENT.Base = "att_reargrip_golf"
ATTACHMENT.Name = "XRK Field Grip"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf17_gripstdy.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/golf/icon_golf_gripstd.vmt")

ATTACHMENT.Bodygroups = {
    ["pgrip"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.07
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.07
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
end
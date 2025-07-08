ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "Razorleaf Grip"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_gripass_v0_lod0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/icons/9mmdaemonicons/gripskele.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.1
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.14
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.14
end
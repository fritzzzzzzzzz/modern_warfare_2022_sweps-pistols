ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "Daemon Hand"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_griptac_v0_lod0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/icons/9mmdaemonicons/griptac.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.7
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.06
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.06
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.02
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.02
end
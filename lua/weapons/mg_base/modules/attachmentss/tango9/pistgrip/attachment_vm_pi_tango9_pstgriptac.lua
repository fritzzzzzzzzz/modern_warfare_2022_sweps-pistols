ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "SUR-160"
ATTACHMENT.Model = Model("models/kyo/att_vm_p49_pi_tango9_pgriptac_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/icon/tango9/icon_attachment_p49_pi_tango9_pgriptac_v0.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.07
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.07
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
end
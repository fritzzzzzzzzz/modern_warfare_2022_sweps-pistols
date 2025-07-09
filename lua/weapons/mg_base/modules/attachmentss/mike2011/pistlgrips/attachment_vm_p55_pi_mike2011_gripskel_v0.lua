ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "SGT Grip"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_gripskel_v0_lod0.mdl")
ATTACHMENT.Icon = Material("fritz/attachments/icons/mike2011/icon_attachment_p55_pi_mike2011_gripskel_v0.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.3
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.3
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.33
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.3
end
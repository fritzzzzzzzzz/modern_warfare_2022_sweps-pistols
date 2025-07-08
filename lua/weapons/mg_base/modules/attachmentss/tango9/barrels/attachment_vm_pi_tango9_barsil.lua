ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "STF-U"
ATTACHMENT.Model = Model("models/kyo/att_vm_p49_pi_tango9_barsil_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/icon/tango9/icon_attachment_p49_pi_tango9_barsil_v0.vmt")
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.1
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.02
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.97
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.97
	weapon:doSuppressorStats()
end
ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "SuperTac-VI"
ATTACHMENT.Model = Model("models/kyo/att_vm_p49_pi_tango9_barlhvylong_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/icon/tango9/icon_attachment_p49_pi_tango9_barlhvylong_v0.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.3
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.3
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.87
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.87
	   weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.87
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.88
end
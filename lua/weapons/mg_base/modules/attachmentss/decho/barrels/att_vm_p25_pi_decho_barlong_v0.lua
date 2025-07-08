ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "SA Longshot-50"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_barlong_v0_LOD0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/icon_attachment_p25_pi_decho_barlong_v0.vmt")
--ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.6
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
end
ATTACHMENT.Base = "attachment_vm_pi_swhiskey_ammo"
ATTACHMENT.Name = "Snake Shot"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_pi_cpapa_loader_snake.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/cpapa/icon_attachment_pi_cpapa_loader_snake.vmt")
ATTACHMENT.ExcludedAttachments = {"att_perk_ricochet"}
ATTACHMENT.ShowOnWorldModel = false

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Bullet.NumBullets = 6
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.5
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.5
    weapon.Bullet.Range = weapon.Bullet.Range * 0.25
    weapon.Bullet.Ricochet = false
end
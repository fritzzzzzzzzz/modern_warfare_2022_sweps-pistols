ATTACHMENT.Base = "att_trigger"
ATTACHMENT.Name = "Precision Trigger"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_trighvy_v0_lod0.mdl")
ATTACHMENT.Icon = Material("fritz/attachments/icons/mike2011/icon_attachment_p55_pi_mike2011_trighvy_v0.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.77
	weapon.Cone.Hip =  weapon.Cone.Hip * 0.7
	weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.4
	weapon.Trigger.Time = 0.04
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.4
	weapon.Primary.RPM = 250
end
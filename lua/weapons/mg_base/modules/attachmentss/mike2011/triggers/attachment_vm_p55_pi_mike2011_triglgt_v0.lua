ATTACHMENT.Base = "att_trigger"
ATTACHMENT.Name = "DEX8 Trigger"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_triglgt_v0_lod0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/icons/9mmdaemonicons/triglgt.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
	weapon.Cone.Hip =  weapon.Cone.Hip 	* 0.8
	weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.1
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.1
	weapon.Primary.RPM = 450
end
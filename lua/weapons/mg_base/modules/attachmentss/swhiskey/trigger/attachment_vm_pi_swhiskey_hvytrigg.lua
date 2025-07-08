ATTACHMENT.Base = "att_trigger_swhiskey"
ATTACHMENT.Name = "Basilisk HT-7"
ATTACHMENT.Model = Model("models/zeron/att_vm_p26_pi_swhiskey_trighvy_v0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/swhiskey/icon_hvytrig.vmt")
ATTACHMENT.Bodygroups = {
    ["trigger"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.24
	weapon.Cone.Hip =  weapon.Cone.Hip * 1.4
	weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.4
	weapon.Trigger.Time = 0.09
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.4
	weapon.Primary.RPM = 100
end
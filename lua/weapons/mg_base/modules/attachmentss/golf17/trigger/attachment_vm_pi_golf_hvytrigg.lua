ATTACHMENT.Base = "att_trigger_golf"
ATTACHMENT.Name = "XRK v6 Match"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf17_trighvy.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/golf/icon_golf_trighvy.vmt")
ATTACHMENT.Bodygroups = {
    ["trig"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.24
	weapon.Cone.Hip =  weapon.Cone.Hip * 1.2
	weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.4
	weapon.Trigger.Time = 0.1
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.4
	weapon.Primary.RPM = weapon.Primary.RPM * 0.95
end
ATTACHMENT.Base = "att_trigger_golf"
ATTACHMENT.Name = "XRK TR9 Trigger"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf17_triglight.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/golf/icon_golf_triglight.vmt")
ATTACHMENT.Bodygroups = {
    ["trig"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.98
	weapon.Cone.Hip =  weapon.Cone.Hip * 0.98
	weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.04
	weapon.Trigger.Time = 0.02
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04
	weapon.Primary.RPM = weapon.Primary.RPM + 100
end
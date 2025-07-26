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
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.80
	weapon.Cone.Hip =  weapon.Cone.Hip * 1.2
	weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.30
	weapon.Trigger.Time = 0.035
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.5
end
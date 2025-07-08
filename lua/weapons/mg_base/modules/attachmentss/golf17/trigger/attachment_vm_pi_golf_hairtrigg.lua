ATTACHMENT.Base = "att_trigger_golf"
ATTACHMENT.Name = "XRK Lightning Fire"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf17_trighair.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/golf/icon_golf_trighair.vmt")
ATTACHMENT.Bodygroups = {
    ["trig"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.Trigger.Time = 0.002
	weapon.Primary.RPM = weapon.Primary.RPM + 150
end
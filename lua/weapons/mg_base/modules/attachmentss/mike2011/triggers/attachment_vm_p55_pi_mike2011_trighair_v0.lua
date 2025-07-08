ATTACHMENT.Base = "att_trigger"
ATTACHMENT.Name = "Rapid 30 Trigger"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_trighair_v0_lod0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/icons/9mmdaemonicons/trighair.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.Trigger.Time = 0.00025
	weapon.Primary.RPM = 500
end
ATTACHMENT.Base = "att_trigger_swhiskey"
ATTACHMENT.Name = "Bryson HTA"
ATTACHMENT.Model = Model("models/zeron/att_vm_p26_pi_swhiskey_trighair_v0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/swhiskey/icon_hairtrig.vmt")
ATTACHMENT.Bodygroups = {
    ["trigger"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.Trigger.Time = 0.05
	weapon.Primary.RPM = 250
end
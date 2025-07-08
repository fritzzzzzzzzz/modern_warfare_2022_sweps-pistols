ATTACHMENT.Base = "att_trigger"
ATTACHMENT.Name = "Daemon Trigger"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_trigger_v0_lod0.mdl")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

end
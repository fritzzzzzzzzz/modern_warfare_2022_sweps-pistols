ATTACHMENT.Base = "att_mags_swhiskey"
ATTACHMENT.Name = "defoocy"

ATTACHMENT.Model = Model("models/zeron/att_vm_p26_pi_swhiskey_cylinder_v0.mdl")
ATTACHMENT.Category = "Cylinders"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
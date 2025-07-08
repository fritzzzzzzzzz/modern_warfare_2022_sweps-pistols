ATTACHMENT.Base = "att_mags_swhiskey"
ATTACHMENT.Name = "defoomag"
ATTACHMENT.Model = Model("models/zeron/att_vm_p26_pi_swhiskey_mag_v0.mdl")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
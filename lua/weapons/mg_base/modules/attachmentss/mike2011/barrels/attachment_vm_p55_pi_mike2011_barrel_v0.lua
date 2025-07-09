ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Daemon Default Bar"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_barrel_v0_LOD0.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end
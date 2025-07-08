ATTACHMENT.Base = "att_ammo"
ATTACHMENT.Name = "Default Ammunitions"
ATTACHMENT.Category = "Ammunitions"
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end

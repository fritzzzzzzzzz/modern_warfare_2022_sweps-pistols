ATTACHMENT.Base = "att_ammo"
ATTACHMENT.Name = "Default Ammunition"
ATTACHMENT.Category = "Ammo"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end

ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Default Impact Stock"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Idle.Pos = weapon.ViewModelOffsets.Idle.Pos + Vector(0.1, 0, -0.77)
	weapon.ViewModelOffsets.Idle.Angles = weapon.ViewModelOffsets.Idle.Angles + Angle(-0, 0, -0)
end

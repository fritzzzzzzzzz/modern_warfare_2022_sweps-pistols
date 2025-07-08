ATTACHMENT.Base = "att_grip"
ATTACHMENT.Name = "One-Handed"
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Idle.Angles = Angle(0, 2, -5)
	weapon.ViewModelOffsets.Idle.Pos = Vector(0.5, 0, 0.5)
	weapon.ViewModelOffsets.Sprint.Angles = Angle(20, 2, -5)
	weapon.ViewModelOffsets.Sprint.Pos = Vector(4, 0, 0.5) 
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_cowboy_offset")

end 
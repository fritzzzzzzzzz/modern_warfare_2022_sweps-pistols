ATTACHMENT.Base = "att_stock"
ATTACHMENT.Model = Model("models/kyo/att_vm_p49_pi_tango9_stock_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/p220/icon_griptac.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Idle.Pos = weapon.ViewModelOffsets.Idle.Pos + Vector(-1, 0, -1)
	weapon.ViewModelOffsets.Idle.Angles = weapon.ViewModelOffsets.Idle.Angles + Angle(-0, 0, -5)
end

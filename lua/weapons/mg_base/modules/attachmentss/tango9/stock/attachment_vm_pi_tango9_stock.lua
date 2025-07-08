ATTACHMENT.Base = "att_stock"
ATTACHMENT.Model = Model("models/kyo/att_vm_p49_pi_tango9_stock_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/p220/icon_griptac.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end

ATTACHMENT.Base = "att_trigger_papa220"
ATTACHMENT.Name = "Bruen Express Trigger"
ATTACHMENT.Model = Model("models/kyo/att_vm_p27_pi_papa220_trighair_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/p220/icon_hairtrig.vmt")
ATTACHMENT.Bodygroups = {
    ["trigger"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.Primary.RPM = 350
end
ATTACHMENT.Base = "att_vm_p25_pi_decho_trig_v0"
ATTACHMENT.Name = "SA Hare Trigger"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_trighair_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/icon_attachment_p25_pi_decho_trighair_v0.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.RPM = 197
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.15
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.15
end
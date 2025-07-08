ATTACHMENT.Base = "att_vm_p25_pi_decho_trig_v0"
ATTACHMENT.Name = "SA Competition Trigger"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_triglight_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/icon_attachment_p25_pi_decho_triglight_v0.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.RPM = 178
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.05
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.05
end
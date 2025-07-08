ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "Matuzek Crown"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_comp01_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/icon_attachment_p25_pi_decho_comp01_v0.vmt")
ATTACHMENT.BonemergeToCategory = {"Barrels"}
ATTACHMENT.AttachmentBodygroups = {
    ["tag_tip"] = 1,
    ["muzzle"] = 1,
    ["tip"] = 1
}
ATTACHMENT.Bodygroups = {
    ["tag_tip"] = 1,
    ["muzzle"] = 1,
    ["tip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.98
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.98
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.98
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.98
end  
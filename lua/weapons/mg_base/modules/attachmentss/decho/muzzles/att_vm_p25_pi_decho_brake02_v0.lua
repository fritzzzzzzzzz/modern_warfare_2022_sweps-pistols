ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "SA Peak-77"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_brake02_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/icon_attachment_p25_pi_decho_brake02_v0.vmt")
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

    weapon.Cone.Ads = weapon.Cone.Ads * 0.9
    weapon.Cone.Hip = weapon.Cone.Hip * 0.9
end 
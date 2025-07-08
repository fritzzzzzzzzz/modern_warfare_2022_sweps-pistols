ATTACHMENT.Base = "att_muzzle"
ATTACHMENT.Name = "EXF Fifty GS"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_silencer_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/icon_attachment_p25_pi_decho_silencer_v0.vmt")
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

    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.02
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.02
    weapon:doSuppressorStats()
end 
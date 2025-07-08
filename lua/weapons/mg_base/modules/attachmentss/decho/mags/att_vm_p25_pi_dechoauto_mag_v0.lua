ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "GS MAGNA Mag"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_mag_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/icon_attachment_p25_pi_decho_mag_v0.vmt")
ATTACHMENT.BulletList = {
    [0] = {"j_ammo_17"},
    [1] = {"j_ammo_01"},
    [2] = {"j_ammo_02"},
    [3] = {"j_ammo_03"},
    [4] = {"j_ammo_04"},
    [5] = {"j_ammo_05"},
    [6] = {"j_ammo_06"},
    [7] = {"j_ammo_07"},
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end
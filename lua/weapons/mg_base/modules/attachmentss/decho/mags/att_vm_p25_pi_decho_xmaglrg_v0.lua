ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "13 Round Mag"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_Xmaglrg_v0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/icon_attachment_p25_pi_decho_xmaglrg_v0.vmt")
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
    weapon.Primary.ClipSize = 13
    weapon.Animations.Reload = weapon.Animations.Reload_Xmaglrg
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmaglrg
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_Fast_Xmaglrg
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Fast_Xmaglrg
	weapon.Animations.Inspect = weapon.Animations.Inspect_Xmaglrg
	weapon.Animations.Inspect_Empty = weapon.Animations.Inspect_Empty_Xmaglrg
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
end
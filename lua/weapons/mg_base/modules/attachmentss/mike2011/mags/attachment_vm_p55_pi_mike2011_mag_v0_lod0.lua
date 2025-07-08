ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "15 Round Mags"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_mag_v0_lod0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/icons/9mmdaemonicons/mag.vmt")

ATTACHMENT.BulletList = {
    [0] = {"j_ammo_01"},
	[1] = {"j_ammo_02"},
	[2] = {"j_ammo_03"},
	[3] = {"j_ammo_04"},
	[4] = {"j_ammo_05"},
	[5] = {"j_ammo_06"},
	[6] = {"j_ammo_07"},
	[7] = {"j_ammo_08"},
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 15
end
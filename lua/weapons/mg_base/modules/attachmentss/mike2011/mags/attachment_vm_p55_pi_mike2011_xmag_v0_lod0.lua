ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "20 Round Mags"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_xmag_v0_lod0.mdl")
ATTACHMENT.Icon = Material("fritz/attachments/icons/mike2011/icon_attachment_p55_pi_mike2011_xmag_v0.vmt")

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
    weapon.Primary.ClipSize = 20
	weapon.Animations.Reload = weapon.Animations.Reload_Xmag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_Xmag_Fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Xmag_Fast
    weapon.Animations.Inspect = weapon.Animations.Inspect_Xmag
	weapon.Animations.Inspect_Empty = weapon.Animations.Inspect_Empty_Xmag
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
	    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.96
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.96
end
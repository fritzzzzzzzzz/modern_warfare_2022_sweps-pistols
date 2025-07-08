ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "20 Round Mags"
ATTACHMENT.Icon = Material("models/icon/tango9/icon_attachment_p49_pi_tango9_smag_v0.vmt")
ATTACHMENT.Model = Model("models/kyo/att_vm_p49_pi_tango9_smag_v0_lod0.mdl")
ATTACHMENT.BulletList = {
    [0] = {"j_ammo_02"},
    [1] = {"j_ammo_03"},
    [2] = {"j_ammo_04"},
    [3] = {"j_ammo_05"},
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 20
    weapon.Animations.Reload = weapon.Animations.Reload_Smag
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Smag
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_Smag_Fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Smag_Fast
	weapon.Animations.Inspect = weapon.Animations.Inspect_Smag
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
end
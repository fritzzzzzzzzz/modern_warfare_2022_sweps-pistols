ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "50 Round Mags"
ATTACHMENT.Icon = Material("models/icon/tango9/icon_attachment_p49_pi_tango9_drum_v0.vmt")
ATTACHMENT.Model = Model("models/kyo/att_vm_p49_pi_tango9_drum_v0_lod0.mdl")
ATTACHMENT.BulletList = {
    [0] = {"j_ammo_02"},
    [1] = {"j_ammo_03"},
    [2] = {"j_ammo_04"},
    [3] = {"j_ammo_05"},
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 50
    weapon.Animations.Reload = weapon.Animations.Reload_Drum
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Drum
    weapon.Animations.Reload_Fast = weapon.Animations.Reload_Drum_Fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Drum_Fast
	weapon.Animations.Inspect = weapon.Animations.Inspect_Drum
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.95
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.95
end
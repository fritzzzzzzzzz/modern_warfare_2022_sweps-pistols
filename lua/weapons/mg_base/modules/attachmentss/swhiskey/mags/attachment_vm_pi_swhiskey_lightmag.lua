ATTACHMENT.Base = "att_mags_swhiskey"
ATTACHMENT.Name = "S40 Rapid Loader"
ATTACHMENT.Model = Model("models/zeron/att_vm_p26_pi_swhiskey_maglight_v0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/swhiskey/icon_maglght.vmt")
ATTACHMENT.Bodygroups = {
    ["cylinder"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
    weapon.Animations.Reload0.Fps = weapon.Animations.Reload0.Fps * 1.12
    weapon.Animations.Reload1.Fps = weapon.Animations.Reload1.Fps * 1.12
	weapon.Animations.Reload2.Fps = weapon.Animations.Reload2.Fps * 1.12
	weapon.Animations.Reload3.Fps = weapon.Animations.Reload3.Fps * 1.12
	weapon.Animations.Reload4.Fps = weapon.Animations.Reload4.Fps * 1.12
	weapon.Animations.Reload_Empty_Fast.Fps = weapon.Animations.Reload_Empty_Fast.Fps * 1.12
	weapon.Animations.Reload_Fast.Fps = weapon.Animations.Reload_Fast.Fps * 1.12
end
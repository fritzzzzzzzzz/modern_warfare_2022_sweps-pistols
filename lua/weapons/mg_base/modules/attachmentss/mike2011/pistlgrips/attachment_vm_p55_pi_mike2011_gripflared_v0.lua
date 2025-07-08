ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "Magwell Grip"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_gripflared_v0_lod0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/icons/9mmdaemonicons/gripflared.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier =  weapon.Recoil.AdsMultiplier * 1.1
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.3
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.3
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.3
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.3
	weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.2
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.2
end
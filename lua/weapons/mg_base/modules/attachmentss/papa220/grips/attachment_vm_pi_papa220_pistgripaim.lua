ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "Bruen Anchor Grip"
ATTACHMENT.Model = Model("models/kyo/att_vm_p27_pi_papa220_pstlgrp_aim_v0_LOD0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/p220/icon_gripaim.vmt")

ATTACHMENT.Bodygroups = {
    ["grip"] = 1
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.2
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.07
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.07
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
end
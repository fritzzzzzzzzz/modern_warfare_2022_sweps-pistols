ATTACHMENT.Base = "att_pistolgrip"
ATTACHMENT.Name = "FJX DVF60 Grip"
ATTACHMENT.Model = Model("models/kyo/att_vm_p27_pi_papa220_pstlgrp_ass_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/p220/icon_gripass.vmt")
ATTACHMENT.Bodygroups = {
    ["grip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
end
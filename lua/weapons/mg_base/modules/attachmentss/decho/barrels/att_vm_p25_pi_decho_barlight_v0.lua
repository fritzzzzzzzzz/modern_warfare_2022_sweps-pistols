ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "SA Comp Barrel"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_barlight_v0_LOD0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/icon_attachment_p25_pi_decho_barlight_v0.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.95
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.95
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.85
end
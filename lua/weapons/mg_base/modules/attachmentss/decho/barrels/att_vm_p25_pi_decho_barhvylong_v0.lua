ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "SA Tyrant Fifty"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_barhvylong_v0_LOD0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/icon_attachment_p25_pi_decho_barhvylong_v0.vmt")
--ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 2.5
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.75
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.75
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.75
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.75
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.1
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.1
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.8
end
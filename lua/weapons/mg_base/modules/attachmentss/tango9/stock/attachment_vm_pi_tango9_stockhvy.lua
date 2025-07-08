ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Heist LSW"
ATTACHMENT.Model = Model("models/kyo/att_vm_p49_pi_tango9_stockhvy_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/icon/tango9/icon_attachment_p49_pi_tango9_stockhvy_v0.vmt")
ATTACHMENT.Bodygroups = {
    ["grip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.8
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.8
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
end

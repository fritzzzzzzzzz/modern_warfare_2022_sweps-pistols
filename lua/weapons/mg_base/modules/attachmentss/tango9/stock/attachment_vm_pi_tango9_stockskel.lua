ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Siege Wire Stock"
ATTACHMENT.Model = Model("models/kyo/att_vm_p49_pi_tango9_stockskel_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/icon/tango9/icon_attachment_p49_pi_tango9_stockskel_v0.vmt")
ATTACHMENT.Bodygroups = {
    ["grip"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.88
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.88
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9

end

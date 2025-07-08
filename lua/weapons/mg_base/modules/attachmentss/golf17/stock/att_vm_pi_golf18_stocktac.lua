ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Tactical Stock"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf18_stocktac.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/golf/icon_golf_stocktac.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.96
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.96
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.6
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end
ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Skeleton Stock"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf17_stockskel.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/golf/icon_golf_skelstock.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.ViewModelOffsets.Aim.Pos = weapon.ViewModelOffsets.Aim.Pos + Vector(0, -8, 0)
    weapon.ViewModelOffsets.Idle.Pos = Vector(0, 1.2, -0.1)
	weapon.ViewModelOffsets.Sprint.Pos = weapon.ViewModelOffsets.Sprint.Pos + Vector(-2, -1, -1)
    weapon.Zoom.Blur.EyeFocusDistance = 10
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.5
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetViewModel("models/easy/mw/weapons/vm_iw9_golf18_stock.mdl")
end
ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "XRX Sidewinder-6 Slide"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf18_bartac.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/golf/icon_golf_barlong.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.95
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.95
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.04
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.04

end 
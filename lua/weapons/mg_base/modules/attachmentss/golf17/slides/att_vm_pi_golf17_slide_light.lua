
ATTACHMENT.Base = "att_vm_pi_golf21_slide"
ATTACHMENT.Name = "XRX LUC-9"
ATTACHMENT.Model = Model("models/kyo/att_vm_p24_pi_golf17_barlight.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/golf/icon_golf_barlight.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)

    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
	weapon.Primary.RPM = weapon.Primary.RPM + 100
end 
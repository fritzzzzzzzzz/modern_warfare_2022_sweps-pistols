ATTACHMENT.Base = "att_trigger_papa220"
ATTACHMENT.Name = "P890 Double Action"
ATTACHMENT.Model = Model("models/kyo/att_vm_p27_pi_papa220_hammer_dak_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/p220/icon_dak.vmt")
ATTACHMENT.AttachmentBodygroups = {
    ["hammer"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.24
	weapon.Cone.Hip =  weapon.Cone.Hip * 1.4
	weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.4
	weapon.Trigger.PressedAnimation = "Fire_pre"
	weapon.Trigger.Time = 0.08
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.4
	weapon.Primary.RPM = 300
	weapon.Animations.Inspect = weapon.Animations.Inspect_dak
	weapon.Animations.Inspect_xmag = weapon.Animations.Inspect_dak_xmag
	weapon.Animations.Inspect_xmaglrg = weapon.Animations.Inspect_dak_xmaglrg
end
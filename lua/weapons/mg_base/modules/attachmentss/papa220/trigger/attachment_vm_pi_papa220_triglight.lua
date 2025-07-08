ATTACHMENT.Base = "att_trigger_papa220"
ATTACHMENT.Name = "Bruen MG80 Trigger"
ATTACHMENT.Model = Model("models/kyo/att_vm_p27_pi_papa220_triglight_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/p220/icon_lighttrig.vmt")
ATTACHMENT.Bodygroups = {
    ["trigger"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.24
	weapon.Cone.Hip =  weapon.Cone.Hip * 1.4
	weapon.Primary.RPM = 320
end
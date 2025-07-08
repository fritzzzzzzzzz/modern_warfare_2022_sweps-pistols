ATTACHMENT.Base = "att_trigger_swhiskey"
ATTACHMENT.Name = "Basilisk Match Grade"
ATTACHMENT.Model = Model("models/zeron/att_vm_p26_pi_swhiskey_triglight_v0.mdl")
ATTACHMENT.Icon = Material("models/kyo/icon/swhiskey/icon_lighttrig.vmt")
ATTACHMENT.Bodygroups = {
    ["trigger"] = 1
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 1.24
	weapon.Cone.Hip =  weapon.Cone.Hip * 1.4
	weapon.Trigger.Time = 0.04
	weapon.Primary.RPM = 200
end
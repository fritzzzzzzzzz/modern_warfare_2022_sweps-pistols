ATTACHMENT.Base = "att_vm_stubbygrip02"
ATTACHMENT.ExcludedCategories = {"Lasers"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Fire.Sequences = {"fire_gripvert"}
	weapon.Animations.Fire_Last.Sequences = {"fire_last_gripvert"}
    weapon.Recoil.Shake = weapon.Recoil.Shake * 0.8
    weapon.Recoil.AdsMultiplier = weapon.Recoil.AdsMultiplier * 0.9
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_gripvertshort_offset")
end 
ATTACHMENT.Base = "att_vm_angledgrip02"
ATTACHMENT.Name = "Wedge Grip"
ATTACHMENT.Model = Model("models/kyo/att_vm_p49_pi_tango9_gripang_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/icon/tango9/icon_attachment_p49_pi_tango9_gripang_v0.vmt")
ATTACHMENT.AttachmentBodygroups = {
    ["tag_grip_hide"] = 1,
    ["tag_grip_attach"] = 1
}


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
	weapon.Animations.Inspect = weapon.Animations.Inspect_Gripang
	weapon.Animations.Inspect_Smag = weapon.Animations.Inspect_Smag_Gripang
	weapon.Animations.Inspect_Drum = weapon.Animations.Inspect_Drum_Gripang
	weapon.Animations.Inspect_XDrum = weapon.Animations.Inspect_XDrum_Gripang
	weapon.Animations.Inspect_empty = weapon.Animations.Inspect_empty_gripang
end
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_gripang_offset")

end 
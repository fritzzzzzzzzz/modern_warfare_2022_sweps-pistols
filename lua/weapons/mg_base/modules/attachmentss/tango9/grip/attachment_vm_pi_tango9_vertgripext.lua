ATTACHMENT.Base = "att_vm_vertgrip01"
ATTACHMENT.Name = "REBEL-HX"
ATTACHMENT.Model = Model("models/kyo/att_vm_p49_pi_tango9_gripvertlong_v0_lod0.mdl")
ATTACHMENT.Icon = Material("models/icon/tango9/icon_attachment_p49_pi_tango9_gripvertlong_v0.vmt")
ATTACHMENT.AttachmentBodygroups = {
    ["tag_grip_hide"] = 1,
    ["tag_grip_attach"] = 1
}


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_gripvertext_offset")

end 
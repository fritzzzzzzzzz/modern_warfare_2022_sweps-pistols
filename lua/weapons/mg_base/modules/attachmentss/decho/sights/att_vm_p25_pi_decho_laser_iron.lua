ATTACHMENT.Base = "att_laser"
ATTACHMENT.Name = "Handcannon Laser Sight"
ATTACHMENT.Model = Model("models/zeron/att_vm_p25_pi_decho_laser_iron.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/50gs/icons/laser_iron.vmt")
ATTACHMENT.Category = "Sights"
--ATTACHMENT.ExcludedCategories = {"Lasers"}
ATTACHMENT.Reticle = {
    Material = Material("sprites/light_glow02_add.vmt"),
    Size = 400,
    Color = Color(0, 255, 0, 255),
    Attachment = "reticle"
}
ATTACHMENT.Bodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 2,
    ["sight"] = 2
}
ATTACHMENT.AttachmentBodygroups ={
    ["tag_sight"] = 2,
    ["tag_rail"] = 2,
    ["sight"] = 2
}
ATTACHMENT.Laser = {
    BeamMaterial = Material("mw19_laserbeam.vmt"),
    DotMaterial = Material("sprites/light_glow02_add.vmt"),
    BeamSize = 12,
    BeamWidth = 0.7,
    DotSize = 4,
    Color = Color(25, 255, 50, 150),
    Attachment = "laser"
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Zoom.ViewModelFovMultiplier = weapon.Zoom.ViewModelFovMultiplier * 0.8
    weapon.Zoom.FovMultiplier = 0.9
end

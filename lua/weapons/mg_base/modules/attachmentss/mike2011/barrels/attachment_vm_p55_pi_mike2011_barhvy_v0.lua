ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "EXF Trope-H"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_barhvy_v0_lod0.mdl")
ATTACHMENT.Icon = Material("fritz/attachments/icons/mike2011/icon_attachment_p55_pi_mike2011_barhvy_v0.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.8
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
	weapon.Cone.Hip = weapon.Cone.Hip * 0.7
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)

end
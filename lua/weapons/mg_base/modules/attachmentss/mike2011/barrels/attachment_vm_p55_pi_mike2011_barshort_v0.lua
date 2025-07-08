ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "XTEN Windfall"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_barshort_v0_lod0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/icons/9mmdaemonicons/barshort.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.7
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.7
	weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.93
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.93
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.2
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.2
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
	weapon.Cone.Hip = weapon.Cone.Hip * 1.2
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)

end
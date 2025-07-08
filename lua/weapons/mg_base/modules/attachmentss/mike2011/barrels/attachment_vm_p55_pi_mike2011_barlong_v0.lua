ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "SA Longfire"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_barlong_v0_lod0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/icons/9mmdaemonicons/barlong.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.5
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.5
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
	weapon.Cone.Hip = weapon.Cone.Hip * 0.95
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)

end
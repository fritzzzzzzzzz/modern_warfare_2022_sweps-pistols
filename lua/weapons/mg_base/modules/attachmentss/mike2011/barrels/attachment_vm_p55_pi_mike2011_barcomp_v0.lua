ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "FT Competition"
ATTACHMENT.Model = Model("models/kyo/att_vm_p55_pi_mike2011_barcomp_v0_lod0.mdl")
ATTACHMENT.Icon = Material("zeron/weapons/icons/9mmdaemonicons/barcomp.vmt")
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.Customization[7][1] = "att_vm_p55_pi_mike2011_reflex_v0"
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Barcomp
    weapon.Animations.Reload_Empty_Xmag = weapon.Animations.Reload_Empty_Xmag_Barcomp
    weapon.Animations.Reload_Empty_XmagLrg = weapon.Animations.Reload_Empty_XmagLrg_Barcomp
    weapon.Animations.Inspect = weapon.Animations.Inspect_Barcomp
    weapon.Animations.Inspect_Xmag = weapon.Animations.Inspect_Xmag_Barcomp
    weapon.Animations.Inspect_XmagLrg = weapon.Animations.Inspect_XmagLrg_Barcomp
	weapon.Animations.Equip = weapon.Animations.Equip_Barcomp
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.1
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.1
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.15
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.15
	weapon.Cone.Hip = weapon.Cone.Hip * 0.6
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)

end
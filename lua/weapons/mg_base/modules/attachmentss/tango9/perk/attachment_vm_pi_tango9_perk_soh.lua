ATTACHMENT.Base = "att_perk_soh"
ATTACHMENT.Icon = Material("easy/mw/attachments/icons/shared/icon_perk_warhead_patch.vmt")
ATTACHMENT.Name = "Fast Hands"
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Reload = weapon.Animations.Reload_Fast
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Fast        
	weapon.Animations.Reload_XDrum = weapon.Animations.Reload_XDrum_Fast
    weapon.Animations.Reload_Empty_XDrum = weapon.Animations.Reload_Empty_XDrum_Fast
	weapon.Animations.Reload_Drum = weapon.Animations.Reload_Drum_Fast
    weapon.Animations.Reload_Empty_Drum = weapon.Animations.Reload_Empty_Drum_Fast
	weapon.Animations.Reload_Smag = weapon.Animations.Reload_Smag_Fast
    weapon.Animations.Reload_Empty_Smag = weapon.Animations.Reload_Empty_Smag_Fast
end
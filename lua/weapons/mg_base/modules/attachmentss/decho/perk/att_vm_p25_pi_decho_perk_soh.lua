ATTACHMENT.Base = "att_perk_soh"
ATTACHMENT.Icon = Material("easy/mw/attachments/icons/shared/icon_perk_warhead_patch.vmt")
ATTACHMENT.Name = "Fast Hands"
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Reload = weapon.Animations.Reload_Fast
    weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Fast                             
    weapon.Animations.Reload_Xmag = weapon.Animations.Reload_Fast_Xmag
    weapon.Animations.Reload_Empty_Xmag = weapon.Animations.Reload_Empty_Fast_Xmag
    weapon.Animations.Reload_Xmaglrg = weapon.Animations.Reload_Fast_Xmaglrg
    weapon.Animations.Reload_Empty_Xmaglrg = weapon.Animations.Reload_Empty_Fast_Xmaglrg
end
AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_pistol")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

require("mw_utils")
mw_utils.LoadInjectors(SWEP)  

if CLIENT then
    killicon.Add( "mg_iw9_swhiskey", "VGUI/entities/mg_iw9_swhiskey", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/entities/mg_swhiskey_icon")
end

SWEP.Base = "mg_base"
 
SWEP.PrintName = "Basilisk"
SWEP.Category = "Modern Warfare II"
SWEP.SubCategory = "Pistols"
SWEP.Spawnable = true
SWEP.VModel = Model("models/zeron/v_swhiskey.mdl")
SWEP.WorldModel = Model("models/zeron/w_swhiskey.mdl")
SWEP.Purpose = "A double-action revolver firing .500 Cal rounds, the Basilisk kicks hard but hits harder. Unstoppable in the right hands."
SWEP.FreezeInspectDelta = 0.17	


SWEP.Slot = 1
SWEP.HoldType = "Revolver"

SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "mw_fas2_muzzleflash_ar",
    ["MuzzleFlash_Suppressed"] = "mw_fas2_muzzleflash_suppressed",
}

SWEP.Trigger = {
    PressedSound = Sound("swhiskey_trig"),
    PressedAnimation = "Charge",
	EmptyAnimation = "Charge",
    Time = 0.08
}

SWEP.Primary.Sound = Sound("swhiskey_fire")
SWEP.Primary.Ammo = "357"
SWEP.Primary.ClipSize = 5
SWEP.Primary.Automatic = false
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 150
SWEP.CanChamberRound = false
SWEP.CanDisableAimReload = false
SWEP.Author = "People With Commitment Issues"

SWEP.Reverb = {
    RoomScale = 50000, --(cubic hu)    
    --how big should an area be before it is categorized as 'outside'?
 
    Sounds = {  
        Outside = {  
            Layer = Sound("swhiskey_atmo_ex"),
            Reflection = Sound("swhiskey_reflection_ex")
        },

        Inside = { 
            Layer = Sound("swhiskey_atmo_in"),
            Reflection = Sound("swhiskey_reflection_in")
        }
    }
}
SWEP.Firemodes = {
    [1] = {
        Name = "Semi Auto",
        OnSet = function()
            return nil
        end
    },
}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_pistol_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 100,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 100 --degrees per second
}
  
SWEP.Cone = {
    Hip = 0.3, --accuracy while hip
    Ads = 0.085, --accuracy while aiming
    Increase = 0.08, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.25, --multiply the increase value by this amount while aiming
    Max = 2, --the cone size will not go beyond this size
    Decrease = 2, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 61543 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {0.2, 0.4}, --random value between the 2
    Horizontal = {-0.4, 0.4}, --random value between the 2
    Shake = 3, --camera shake
    AdsMultiplier = 4, --multiply the values by this amount while aiming
    Seed = 998991 --give this a random number until you like the current recoil pattern
}

SWEP.Bullet = {
    Damage = {120, 58}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    EffectiveRange = 35, --in meters, damage scales within this distance
    DropOffStartRange = 12, --in meters, damage scales within this distance
    Range = 130, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 0.5, --damage is multiplied by this amount when pushing objects
    HeadshotMultiplier = 1,
    Penetration = {
        DamageMultiplier = 0.95, --how much damaged is multipled by when leaving a surface.
        MaxCount = 6, --how many times the bullet can penetrate.
        Thickness = 14, --in hu, how thick an obstacle has to be to stop the bullet.
    }
}

SWEP.Zoom = {
    FovMultiplier = 0.95,
    ViewModelFovMultiplier = 1,
    Blur = {
        EyeFocusDistance = 15
    }
}

SWEP.WorldModelOffsets = {
    Bone = "tag_pistol_offset",
    Angles = Angle(180,90,0),
    Pos = Vector(3.8 ,8, -4.4)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0.05, -0.05, 0),
        Pos = Vector(0.0, -4, -0.04)
    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
	Sprint = {
        Angles = Angle(0, 3, 0),
        Pos = Vector(0, -1, 0)
    }, 
    Inspection = {
        Bone = "tag_pistol_offset",
        X = {
            [0] = {Pos = Vector(0, 2, -2), Angles = Angle(30, 0, -30)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(0, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(2, 0, 0), Angles = Angle(-30, -30, 0)},
            [1] = {Pos = Vector(-4, 0, 0), Angles = Angle(0, 30, 0)}
        }
    },
    
    RecoilMultiplier = 1,
    KickMultiplier = 1
}

SWEP.Shell = "mwb_shelleject_50bmg"

function SWEP:ChooseReloadAnim()
    if (self:HasAttachment("att_vm_pi_swhiskey_soh")) then --change to your soh perk
        return "Reload"
    end

    return "Reload"..math.Clamp(self:Clip1(), 0, 5) --will play Reload_0 ... Reload_5 (wont go beyond 5)
end
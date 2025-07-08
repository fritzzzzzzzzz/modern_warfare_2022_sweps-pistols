AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_pistol")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_mike2011", "VGUI/entities/mg_mike2011", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/entities/mg_mike2011_killicon")
end

SWEP.Base = "mg_base"

SWEP.PrintName = "9mm Daemon"
SWEP.Category = "Modern Warfare II"
SWEP.SubCategory = "Pistols"
SWEP.Spawnable = true
SWEP.VModel = Model("models/fritz/weapons/mike2011/vm_iw9_mike2011.mdl")
SWEP.WorldModel = Model("models/fritz/weapons/mike2011/wm_iw9_mike2011.mdl")
SWEP.Trigger = {
    PressedSound = Sound("weap_mike2011_fire_plr_fcg"),
    ReleasedSound = Sound("weap_mike2011_fcg_disconnector_plr"),
    Time = 0.025
}
SWEP.Slot = 1
SWEP.HoldType = "Pistol"

SWEP.Primary.Sound = Sound("weap_mike2011_fire_plr_shot")
SWEP.Primary.Ammo = "Pistol"
SWEP.Primary.ClipSize = 15
SWEP.Primary.Automatic = false
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 462  
SWEP.CanChamberRound = true 
SWEP.Purpose = "This modern, tactical pistol chambered in 9mm is deadly from the hip and features best-in-class semi-automatic fire rate."
SWEP.FreezeInspectDelta = 0.29 
SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "AC_muzzle_pistol",
    ["MuzzleFlash_Suppressed"] = "AC_muzzle_pistol_suppressed",
    ["Ejection"] = "AC_muzzle_pistol_ejection", 
}

SWEP.Reverb = { 
    RoomScale = 50000, --(cubic hu)
    --how big should an area be before it is categorized as 'outside'?

    Sounds = {
        Outside = {
            Layer = Sound("weap_pistol_fire_plr_atmo_ext5"),
            Reflection = Sound("Reflection_Pistol.Outside")
        },
        Inside = { 
            Layer = Sound("weap_pistol_fire_plr_atmo_int2"),
            Reflection = Sound("Reflection_Pistol.Inside")
        }
    }
}

SWEP.Firemodes = {
    [1] = {
        Name = "Semi Auto",
        OnSet = function()
            return nil
        end
    }
}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_pistol_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 35,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 100 --degrees per second
}

SWEP.Cone = {
    Hip = 0.25, --accuracy while hip
    Ads = 0.12, --accuracy while aiming
    Increase = 0.2, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.15, --multiply the increase value by this amount while aiming
    Max = 1.1, --the cone size will not go beyond this size
    Decrease = 0.5, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 76676 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {1, 1.5}, --random value between the 2
    Horizontal = {-0.1, 0.1}, --random value between the 2
    Shake = 1.3, --camera shake
    AdsMultiplier = 0.45, --multiply the values by this amount while aiming
    Seed = 7355608 --give this a random number until you like the current recoil pattern
}

SWEP.Bullet = {
    Damage = {28, 16}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    EffectiveRange = 23, --in meters, damage scales within this distance
    DropOffStartRange = 7,
    Range = 100, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    HeadshotMultiplier = 1,
    Penetration = {
        DamageMultiplier = 0.9, --how much damaged is multipled by when leaving a surface.
        MaxCount = 3, --how many times the bullet can penetrate.
        Thickness = 10, --in hu, how thick an obstacle has to be to stop the bullet.
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
    Angles = Angle(0, -90, 180),
    Pos = Vector(5, 6, -2.5)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Idle = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    },
    Crouch = {
        Angles = Angle(0, 0, 5),
        Pos = Vector(-0.2, -1.5, -0.5)
    },
    Sprint = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0, 0, 0)
    }, 
    Inspection = {
        Bone = "tag_pistol_offset",
        X = {
            [0] = {Pos = Vector(0, 2, -2), Angles = Angle(30, 0, -30)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(0, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(-3, 0, 0), Angles = Angle(-10, -30, 0)},
            [1] = {Pos = Vector(-4, 0, 0), Angles = Angle(0, 30, 0)}
        }
    },

    RecoilMultiplier = 1,
    KickMultiplier = 1
}

SWEP.Shell = "mwb_shelleject_9mm"


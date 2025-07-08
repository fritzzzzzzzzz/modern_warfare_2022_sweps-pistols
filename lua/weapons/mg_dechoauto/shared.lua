AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_desert")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_dechoauto", "VGUI/entities/mg_dechoauto", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/spawnicons/icon_dechoauto")
end
  
SWEP.GripPoseParameters = {"grip_gripvertshort_offset", "grip_cowboy_offset"}  

SWEP.Base = "mg_base"

SWEP.PrintName = "GS Magna"
SWEP.Category = "Modern Warfare II"
SWEP.SubCategory = "Pistols"
SWEP.Spawnable = true
SWEP.VModel = Model("models/zeron/v_decho.mdl")
SWEP.WorldModel = Model("models/zeron/w_decho.mdl")
SWEP.Trigger = {
    PressedSound = Sound("decho_mwii_trigger"),
    ReleasedSound = Sound("decho_mwii_trigger_rel"),
    Time = 0.05
}
SWEP.Slot = 1
SWEP.HoldType = "Pistol"
SWEP.FreezeInspectDelta = 0.25
SWEP.Primary.Sound = Sound("decho_mwii_fire")
SWEP.Primary.Ammo = "357"
SWEP.Primary.ClipSize = 7
SWEP.Primary.Automatic = true
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 498
SWEP.CanChamberRound = true
SWEP.Purpose = "This fully automatic .50 GS boasts a thunderous rate of fire and enough power to put an end to anyone foolish enough to cross your path. Hold down the trigger and let this .50 Cal speak for itself."
SWEP.FreezeInspectDelta = 0.25

SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "mw_fas2_muzzleflash_pistol_deagle",
    ["MuzzleFlash_Suppressed"] = "AC_muzzle_pistol_suppressed",
    ["Ejection"] = "AC_muzzle_pistol_ejection",
}

SWEP.Reverb = {
    RoomScale = 50000, --(cubic hu)
    --how big should an area be before it is categorized as 'outside'?
 
    Sounds = {
        Outside = {
            Layer = Sound("decho_mwii_atmo_out"),
            Reflection = Sound("Reflection_Pistol.Outside")
        }, 

        Inside = { 
            Layer = Sound("decho_mwii_atmo_in"),
            Reflection = Sound("Reflection_Shotgun.Inside")
        }
    }
}

SWEP.Firemodes = {
    [1] = {
        Name = "Automatic",
        OnSet = function()
            return nil
        end
    }
}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_pistol_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 100,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 100 --degrees per second
}

SWEP.Cone = {
    Hip = 0.5, --accuracy while hip
    Ads = 0.22, --accuracy while aiming
    Increase = 0.3, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.15, --multiply the increase value by this amount while aiming
    Max = 1.23, --the cone size will not go beyond this size
    Decrease = 0.6, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 699969969 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {3, 7}, --random value between the 2
    Horizontal = {-1, 2}, --random value between the 2
    Shake = 2.5, --camera shake
    AdsMultiplier = 0.75, --multiply the values by this amount while aiming
    Seed = 8898757 --give this a random number until you like the current recoil pattern
}

SWEP.Bullet = {
    Damage = {55, 18}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    EffectiveRange = 30, --in meters, damage scales within this distance
    DropOffStartRange = 10, --in meters, damage scales within this distance
    Range = 100, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1.5, --damage is multiplied by this amount when pushing objects
    HeadshotMultiplier = 1,
    Penetration = {
        DamageMultiplier = 0.875, --how much damaged is multipled by when leaving a surface.
        MaxCount = 6, --how many times the bullet can penetrate.
        Thickness = 16, --in hu, how thick an obstacle has to be to stop the bullet.
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
    Pos = Vector(3, 8.6, -3)
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
            [0] = {Pos = Vector(2, 0, 0), Angles = Angle(-30, -30, 0)},
            [1] = {Pos = Vector(-4, 0, 0), Angles = Angle(0, 30, 0)}
        }
    },
    RecoilMultiplier = 5,   
    KickMultiplier = 1.5  
}    
   
SWEP.Shell = "mwb_shelleject_iw9_50ae"
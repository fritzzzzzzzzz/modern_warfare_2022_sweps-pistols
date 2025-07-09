AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("p27_pi_papa220_sup_plr")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("p27_pi_papa220_fire_sup_atmo_out"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("p27_pi_papa220_fire_sup_atmo_in"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        }
    }
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

SWEP.Customization = {

    {"att_perk", "att_vm_pi_papa220_soh", "att_perk_fmj", "att_perk_ricochet", "att_perk_fastswap"},

    {"att_receiver"},
	
	{"att_trigger_papa220", "attachment_vm_pi_papa220_triglight", "attachment_vm_pi_papa220_trighvy", "attachment_vm_pi_papa220_trighair", "attachment_vm_pi_papa220_hammer_dak",},
	
    {"attachment_vm_pi_papa220_pistgrip", "attachment_vm_pi_papa220_pistgripaim", "attachment_vm_pi_papa220_pistgripass", "attachment_vm_pi_papa220_pistgriptac", "attachment_vm_pi_papa220_pistgripsnp"},

    {"attachment_vm_pi_papa220_mag", "attachment_vm_pi_papa220_mag_ext", "attachment_vm_pi_papa220_mag_ext2"},

    {"att_muzzle", "att_vm_comp_pi01_v0", "att_vm_comp_pi02_v0", "att_vm_comp_pi03_v0", "att_vm_comp_pi04_v0", "att_vm_comp_pi05_v0", "att_vm_comp_pi06_v0", "att_vm_flash_pi01_v0", "att_vm_flash_pi02_v0", "att_vm_melee_pi01_v0", "att_vm_silencer_pi01_v0", "att_vm_silencer_pi02_v0", "att_vm_silencer_pi03_v0", "att_vm_silencer_pi04_v0"},

    {"att_sight", "att_vm_minireddot01_pstl_v0", "att_vm_minireddot02_pstl_v0", "att_vm_minireddot03_pstl_v0", "att_vm_minireddot04_pstl_v0", "att_vm_minireddot05_pstl_v0", "att_vm_minireddot06_pstl_v0"},

    {"attachment_vm_pi_papa220_slide", "attachment_vm_pi_papa220_barshort", "attachment_vm_pi_papa220_barlong", "attachment_vm_pi_papa220_barlight", "attachment_vm_pi_papa220_barcomp",},

    {"att_laser", "att_vm_laser_pstl02_v0", "att_vm_laser_pstl05_v0", "att_vm_laser_pstl06_v0", "att_vm_laser_pstl07_v0", "att_vm_flashlight_pstl01_v0", "att_vm_flashlight_pstl02_v0"}
}

--NECESSARY: it loads custom attachments from other authors
require("mw_utils")
mw_utils.LoadInjectors(SWEP)   

-- SWEP.Customization = {
--     ["Slide"] = {
--         Slot = 2,
--         {
--             Key = "attachment_vm_pi_papa320_slide"
--         },
--         {
--             Key = "attachment_vm_pi_papa320_slide_black",
--             Stats = function(self)  
--             end
--         },
--         {
--             Key = "attachment_vm_pi_papa320_slide_vented",
--             Stats = function(self)
--             end
--         },       
--         {
--             Key = "attachment_vm_pi_papa320_barrel_ext",
--             Stats = function(self)
--             end
--         }
--     },

--     ["Laser"] = {
--         Slot = 6,
--         {
--             Key = "no_laser",
--         },
--         {
--             Key = "attachment_vm_laser_pstl",
--               Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_laser_pstl03",
--             Stats = function(self)
--             end
--         },       
--         {
--             Key = "attachment_vm_laser_pstl04",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_laser_pstl_shoothouse",
--             Stats = function(self)
--             end
--         }
--     },

--     ["Optic"] = {
--         Slot = 5,
--         {
--             Key = "no_sight",
--         },
--         {
--             Key = "attachment_vm_minireddot01",
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.4)
--             end
--         },
--         {
--             Key = "attachment_vm_minireddot02",
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.35)
--             end
--         },      
--         {
--             Key = "attachment_vm_minireddot03",
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.35)
--             end
--         },  
--     },

--     ["Muzzle"] = {
--         Slot = 4,
--         {
--             Key = "no_muzzle"
--         },
--         {
--             Key = "attachment_vm_flashhider_psl01",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0.45, 0), Angle()},
--                         [4] = {Vector(0, 0.45, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
--             end 
--         },              
--         {
--             Key = "attachment_vm_muzzlebrake_pstl01",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0.45, 0), Angle()},
--                         [4] = {Vector(0, 0.45, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },        
--         {
--             Key = "attachment_vm_compensator_pstl01",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0.45, 0), Angle()},
--                         [4] = {Vector(0, 0.45, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--             end 
--         },     
--         {
--             Key = "attachment_vm_oil_filter_suppressor",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0.45, 0), Angle()},
--                         [4] = {Vector(0, 0.45, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },     
           
--         {
--             Key = "attachment_vm_silencer_pstl_02",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0.45, 0), Angle()},
--                         [4] = {Vector(0, 0.45, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },        
--         {
--             Key = "attachment_vm_silencerpstl03",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0.45, 0), Angle()},
--                         [4] = {Vector(0, 0.45, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },
--         {
--             Key = "attachment_vm_silencerpstl",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0, 0), Angle()},
--                         [3] = {Vector(0, 0.45, 0), Angle()},
--                         [4] = {Vector(0, 0.45, 0), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 doSuppressorStats(self)
--             end 
--         },    
--     },

--     ["Perk"] = {
--         Slot = 1,
--         {
--             Key = "no_perk",
--         },
--         {
--             Key = "perk_soh",
--             Stats = function(self)
--                 self.Animations.Reload = self.Animations.Reload_Fast
--                 self.Animations.Reload_Empty = self.Animations.Reload_Empty_Fast                
--                 self.Animations.Reload_XmagLrg = self.Animations.Reload_XmagLrg_Fast
--                 self.Animations.Reload_Empty_XmagLrg = self.Animations.Reload_Empty_XmagLrg_Fast
--                 self.Animations.Reload_Xmag = self.Animations.Reload_Xmag_Fast
--                 self.Animations.Reload_Empty_Xmag = self.Animations.Reload_Empty_Xmag_Fast
--             end
--         },
--         {
--             Key = "perk_fastmelee",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "perk_heavymelee",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "perk_fmj",
--             Stats = function(self)
--             end
--         }
--     },
    
--     ["Magazine"] = {
--         Slot = 3,
--         {
--             Key = "attachment_vm_pi_papa320_mag",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_papa320_mag_ext",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_papa320_mag_ext2",
--             Stats = function(self)
--             end
--         }
--     }
-- }


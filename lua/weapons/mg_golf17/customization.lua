AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("weap_golf21_sup_plr")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("weap_smg_sup_fire_plr_atmo_ext2"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
    
            Inside = { 
                Layer = Sound("weap_pistol_sup_fire_plr_atmo_int1"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        }
    }
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

SWEP.Customization = {

	{"att_vm_pi_golf17def", "att_vm_pi_golf17imp_stock"},

    {"att_perk", "att_vm_pi_golf17_soh", "att_perk_fmj", "att_perk_ricochet", "att_perk_fastswap",},

    {"att_stock", "att_vm_pi_golf17skel_stock", "att_vm_pi_golf18_stocklight", "att_vm_pi_golf18_stockhvy", "att_vm_pi_golf18_stocktac"},

	{"att_receiver"},

    {"att_muzzle", "att_vm_comp_pi01_v0", "att_vm_comp_pi02_v0", "att_vm_comp_pi03_v0", "att_vm_comp_pi04_v0", "att_vm_comp_pi05_v0", "att_vm_comp_pi06_v0", "att_vm_flash_pi01_v0", "att_vm_flash_pi02_v0", "att_vm_melee_pi01_v0", "att_vm_silencer_pi01_v0", "att_vm_silencer_pi02_v0", "att_vm_silencer_pi03_v0", "att_vm_silencer_pi04_v0"},

    {"att_sight", "att_vm_minireddot01_pstl_v0", "att_vm_minireddot02_pstl_v0", "att_vm_minireddot03_pstl_v0", "att_vm_minireddot04_pstl_v0", "att_vm_minireddot05_pstl_v0", "att_vm_minireddot06_pstl_v0"},

    {"att_vm_pi_golf17_slide","att_vm_pi_golf17_slide_long","att_vm_pi_golf17_slide_light"},

    {"att_vm_pi_golf17_mag", "att_vm_pi_golf17_mag_xmags", "att_vm_pi_golf17_mag_xmagslrg", "att_vm_pi_golf17_mag_drummag",},

    {"att_laser", "att_vm_laser_pstl02_v0", "att_vm_laser_pstl05_v0", "att_vm_laser_pstl06_v0", "att_vm_laser_pstl07_v0", "att_vm_flashlight_pstl01_v0", "att_vm_flashlight_pstl02_v0"},
	
	{"att_grip", "att_vm_angledgrip01_glock","att_vm_angledgrip02_glock","att_vm_stubbygrip01_glock","att_vm_stubbygrip02_glock","att_vm_vertgrip01_glock","att_vm_vertgrip02_glock","att_vm_vertgrip03_glock"},
	
	{"att_trigger_golf", "attachment_vm_pi_golf_hairtrigg", "attachment_vm_pi_golf_hvytrigg", "attachment_vm_pi_golf_lighttrigg", },
	
	{"att_reargrip_golf", "attachment_vm_pi_golf_pgripass", "attachment_vm_pi_golf_pgripstdy", "attachment_vm_pi_golf_pistgriptac", },
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


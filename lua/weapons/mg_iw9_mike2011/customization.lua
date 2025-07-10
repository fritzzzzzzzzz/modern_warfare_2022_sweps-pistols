AddCSLuaFile()

function SWEP:doSuppressorStats()
    self.Primary.Sound = Sound("weap_mike2011_sup_plr_shot")
    self.Reverb = {
        RoomScale = 50000,
        Sounds = {
            Outside = {
                Layer = Sound("weap_smg_sup_fire_plr_atmo_ext3"),
                Reflection = Sound("Reflection_ARSUP.Outside")
            },
            Inside = { 
                Layer = Sound("Atmo_Pistol_Sup.Inside"),
                Reflection = Sound("Reflection_ARSUP.Inside")
            }
        }
    }
    self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
end

SWEP.Customization = {

    {"att_receiver"},
    
	{"attachment_vm_p55_pi_mike2011_barrel_v0", "attachment_vm_p55_pi_mike2011_barshort_v0", "attachment_vm_p55_pi_mike2011_barhvy_v0", "attachment_vm_p55_pi_mike2011_barlong_v0", "attachment_vm_p55_pi_mike2011_barlgt_v0", "attachment_vm_p55_pi_mike2011_barcomp_v0"},
	
	{"attachment_vm_p55_pi_mike2011_mag_v0_lod0", "attachment_vm_p55_pi_mike2011_xmag_v0_lod0", "attachment_vm_p55_pi_mike2011_xmaglrg_v0_lod0"},
	
	{"attachment_vm_p55_pi_mike2011_grip_v0", "attachment_vm_p55_pi_mike2011_griptac_v0", "attachment_vm_p55_pi_mike2011_gripskel_v0", "attachment_vm_p55_pi_mike2011_gripflared_v0", "attachment_vm_p55_pi_mike2011_gripass_v0"},
	
	{"attachment_vm_p55_pi_mike2011_trigger_v0", "attachment_vm_p55_pi_mike2011_trighvy_v0", "attachment_vm_p55_pi_mike2011_triglgt_v0", "attachment_vm_p55_pi_mike2011_trighair_v0"},
	
    {"att_muzzle", "att_vm_comp_pi01_v0", "att_vm_comp_pi02_v0", "att_vm_comp_pi03_v0", "att_vm_comp_pi04_v0", "att_vm_comp_pi05_v0", "att_vm_comp_pi06_v0", "att_vm_flash_pi01_v0", "att_vm_flash_pi02_v0", "att_vm_melee_pi01_v0", "att_vm_silencer_pi01_v0", "att_vm_silencer_pi02_v0", "att_vm_silencer_pi03_v0", "att_vm_silencer_pi04_v0"},

    {"att_sight", "att_vm_minireddot01_pstl_v0", "att_vm_minireddot02_pstl_v0", "att_vm_minireddot03_pstl_v0", "att_vm_minireddot04_pstl_v0", "att_vm_minireddot05_pstl_v0", "att_vm_minireddot06_pstl_v0"},

    {"att_laser", "att_vm_laser_pstl02_v0", "att_vm_laser_pstl05_v0", "att_vm_laser_pstl06_v0", "att_vm_laser_pstl07_v0", "att_vm_flashlight_pstl01_v0", "att_vm_flashlight_pstl02_v0"},
	
	{"att_perk", "att_vm_pi_mike2011_soh", "iw9_perk_fmj", "iw9_perk_ricochet", "iw9_perk_fastswap"},
}

--NECESSARY: it loads custom attachments from other authors
require("mw_utils")
mw_utils.LoadInjectors(SWEP)   

-- SWEP.Customization = {
--     ["Slide"] = {
--         Slot = 2,
--         {
--             Key = "attachment_vm_pi_mike1911_v1_slide",
--             Bodygroups = {
--                 ["sights"] = 0
--             },
--         },
--         {
--             Key = "attachment_vm_pi_mike1911_barlong",
--             Bodygroups = {
--                 ["sights"] = 2
--             },
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike1911_barshort",
--             Bodygroups = {
--                 ["sights"] = 4
--             },
--             Stats = function(self)
--             end
--         },       
--         {
--             Key = "attachment_vm_pi_mike1911_v2_slide",
--             Bodygroups = {
--                 ["sights"] = 6
--             },
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
--         }
--     },

--     ["Optic"] = {
--         Slot = 4,
--         {
--             Key = "no_sight",
--         },
--         {
--             Key = "attachment_vm_minireddot01",
--             Bodygroups = {
--                 ["sights"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.35)
--             end
--         },
--         {
--             Key = "attachment_vm_minireddot02",
--             Bodygroups = {
--                 ["sights"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.3)
--             end
--         },      
--         {
--             Key = "attachment_vm_minireddot03",
--             Bodygroups = {
--                 ["sights"] = 1
--             },
--             Stats = function(self)
--                 self.ViewModelOffsets.Aim.Pos = self.ViewModelOffsets.Aim.Pos + Vector(0, 0, -0.3)
--             end
--         },  
--     },

--     ["Muzzle"] = {
--         Slot = 3,
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
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
--                     }
--                 }
--             },
--             Stats = function(self)
--                 self.ParticleEffects.MuzzleFlash = "AC_muzzle_pistol_suppressed"
--             end 
--         },               
--         {
--             Key = "attachment_vm_pi_mike1911_muzzlebrake",
--             VElement = {
--                 Bone = "tag_silencer",
--                 Position = Vector(0, 0, 0),
--                 Angles = Angle(),
--                 Offsets = { 
--                     ["Slide"] = {
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
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
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
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
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
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
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
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
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
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
--                         [2] = {Vector(0, 0.2, 0), Angle()},
--                         [3] = {Vector(0, -0.5, 0), Angle()},
--                         [4] = {Vector(-0.02, 0, -0.1), Angle()}
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
--         Slot = 5,
--         {
--             Key = "attachment_vm_pi_mike1911_v1_mag",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike1911_mmags",
--             Stats = function(self)
--             end
--         },
--         {
--             Key = "attachment_vm_pi_mike1911_xmags",
--             Stats = function(self)
--             end
--         }
--     },

--     -- ["Camo"] = {
--     --     Slot = 7,
--     --     {
--     --         Key = "no_camo",
--     --     },
--     --     {
--     --         Key = "camo_jermasus",
--     --         Stats = function(self)
--     --         end
--     --     },
--     --     {
--     --         Key = "camo_digital",
--     --         Stats = function(self)
--     --         end
--     --     }
--     -- },
-- }
AddCSLuaFile()

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30
        --does not need NextSequence to loop, it's an exception to the rule
    },

    ["Draw"] = {
        Sequences = {"draw"},
        Length = 0.7,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Raise")) end}
        }
    },
	
    ["Draw_Empty"] = {
        Sequences = {"draw_empty"},
        Length = 0.7,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.7,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Drop")) end}
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Raise_First_Up")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("MW19_M1911.Raise_First_SlidePull")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M1911.Raise_First_SlideRelease")) end}
        }
    },
    ["Equip_Barcomp"] = {
        Sequences = {"draw_First_barcomp"},
        Length = 1,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Raise_First_Up")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("MW19_M1911.Raise_First_SlidePull")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M1911.Raise_First_SlideRelease")) end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0.05, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("MW19_M1911.Maginsert")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End")) end}
        }
    },

   ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.3,
        Fps = 30,
        MagLength = 0.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start_Fast")) end},
            {Time = 0.5, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.26, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout_Fast")) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin_Fast")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End_Fast")) end}
        }
    },

    ["Reload_XmagLrg"] = {
        Sequences = {"reload_xmaglrg"},
        Length = 2.4,
        Fps = 30,
        MagLength = 1.75,
        NextSequence = "Idle",
        Events = {
            {Time = 0.05, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("MW19_M1911.Maginsert")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End")) end}
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 2.2,
        Fps = 30,
        MagLength = 1.7,
        NextSequence = "Idle",
        Events = {
            {Time = 0.05, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start")) end},
            {Time = 0.5, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout")) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("MW19_M1911.Maginsert")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End")) end}
        }
    },

    ["Reload_XmagLrg_Fast"] = {
        Sequences = {"reload_xmaglrg_fast"},
        Length = 1.7,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start_Fast")) end},
            {Time = 0.26, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout_Fast")) end},
            {Time = 0.5, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin_Fast")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End_Fast")) end}
        }
    },

    ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1.4,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start_Fast")) end},
            {Time = 0.26, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout_Fast")) end},
            {Time = 0.5, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin_Fast")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End_Fast")) end}
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start_Empty")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout_Empty")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M1911.Maginsert_Empty")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin_Empty")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Charge")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End_Empty")) end}
        }
    },

    ["Reload_Empty_Barcomp"] = {
        Sequences = {"reload_empty_barcomp"},
        Length = 2.6,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start_Empty")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout_Empty")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M1911.Maginsert_Empty")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin_Empty")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Charge")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End_Empty")) end}
        }
    },
	
    ["Reload_Empty_Xmag_Barcomp"] = {
        Sequences = {"reload_xmag_empty_barcomp"},
        Length = 2.8,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start_Empty")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout_Empty")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M1911.Maginsert_Empty")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin_Empty")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Charge")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End_Empty")) end}
        }
    },
	
    ["Reload_Empty_XmagLrg_Barcomp"] = {
        Sequences = {"reload_xmaglrg_empty_barcomp"},
        Length = 3,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start_Empty")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout_Empty")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M1911.Maginsert_Empty")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin_Empty")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Charge")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End_Empty")) end}
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_fast_empty"},
        Length = 1.4,
        Fps = 30,
        MagLength = 0.8,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start_Empty_Fast")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout_Empty_Fast")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin_Empty_Fast")) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("MW19_M1911.Charge_Fast")) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End_Empty_Fast")) end}
        }
    },

  ["Reload_Empty_XmagLrg"] = {
        Sequences = {"reload_xmaglrg_empty"},
        Length = 3,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start_Empty")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout_Empty")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M1911.Maginsert_Empty")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin_Empty")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Charge")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End_Empty")) end}
        }
    },

   ["Reload_Empty_XmagLrg_Fast"] = {
        Sequences = {"reload_xmaglrg_fast_empty"},
        Length = 1.9,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start_Empty_Fast")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout_Empty_Fast")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin_Empty_Fast")) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("MW19_M1911.Charge_Fast")) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End_Empty_Fast")) end}
        }
    },

   ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_xmag_empty"},
        Length = 2.8,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start_Empty")) end},
            {Time = 0.3, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout_Empty")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_M1911.Maginsert_Empty")) end},
            {Time = 0.9, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin_Empty")) end},
            {Time = 1.2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Charge")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End_Empty")) end}
        }
    },

   ["Reload_Empty_Xmag_Fast"] = {
        Sequences = {"reload_xmag_fast_empty"},
        Length = 1.5,
        Fps = 30,
        MagLength = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_Start_Empty_Fast")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magout_Empty_Fast")) end},
            {Time = 0.7, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MW19_M1911.Magin_Empty_Fast")) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("MW19_M1911.Charge_Fast")) end},
            {Time = 0.83, Callback = function(self) self:DoSound(Sound("MW19_M1911.Reload_End_Empty_Fast")) end}
        }
    },

    ["Fire"] = {
        Sequences = {"fire"},
        Fps = 60,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0, 
                Callback = function(self) 
                    self:DoParticle("MuzzleFlash", "muzzle")
                    self:DoParticle("Ejection", "shell_eject")
                    self:DoEjection("shell_eject")
                end
            }
        }
    },

    ["Fire_Last"] = {
        Sequences = {"fire_last"},
        Fps = 60,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0, 
                Callback = function(self) 
                    self:DoParticle("MuzzleFlash", "muzzle")
                    self:DoParticle("Ejection", "shell_eject")
                    self:DoEjection("shell_eject")
                end
            },
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Lastshot")) end},
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.ADS_Up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.ADS_Down")) end}
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 24
        --NextSequence = "Sprint_Loop",
    },

    ["Sprint_Loop"] = {
        Sequences = {"sprint_loop"},
        Fps = 30,
        NextSequence = "Sprint_Loop" --make our state loop
        --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
    },

    ["Sprint_Out"] = {
        Sequences = {"sprint_out"},
        Length = 0.3,
        Fps = 24,
        NextSequence = "Idle",
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 8.9,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect01")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect02")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect03")) end},
            {Time = 3.65, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect04")) end}
        }
    },
	
    ["Inspect_Xmag"] = {
        Sequences = {"inspect_xmag"},
        Length = 8.9,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect01")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect02")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect03")) end},
            {Time = 3.65, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect04")) end}
        }
    },
	
    ["Inspect_XmagLrg"] = {
        Sequences = {"inspect_xmaglrg"},
        Length = 8.9,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect01")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect02")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect03")) end},
            {Time = 3.65, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect04")) end}
        }
    },
	

	["Inspect_Barcomp"] = {
        Sequences = {"inspect_barcomp"},
        Length = 8.9,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect01")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect02")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect03")) end},
            {Time = 3.65, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect04")) end}
        }
    },
	
	["Inspect_Xmag_Barcomp"] = {
        Sequences = {"inspect_xmag_barcomp"},
        Length = 8.9,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect01")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect02")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect03")) end},
            {Time = 3.65, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect04")) end}
        }
    },
	
	["Inspect_XmagLrg_Barcomp"] = {
        Sequences = {"inspect_xmaglrg_barcomp"},
        Length = 8.9,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect01")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect02")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect03")) end},
            {Time = 3.65, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect04")) end}
        }
    },
	
	["Inspect_Empty"] = {
        Sequences = {"inspect_empty"},
        Length = 11,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect01")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect02")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect03")) end},
            {Time = 3.65, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect04")) end}
        }
    },
	
	["Inspect_Empty_Xmag"] = {
        Sequences = {"inspect_xmag_empty"},
        Length = 11,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect01")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect02")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect03")) end},
            {Time = 3.65, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect04")) end}
        }
    },
	
	["Inspect_Empty_XmagLrg"] = {
        Sequences = {"inspect_xmaglrg_empty"},
        Length = 11,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect01")) end},
            {Time = 1, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect02")) end},
            {Time = 2, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect03")) end},
            {Time = 3.65, Callback = function(self) self:DoSound(Sound("MW19_M1911.Inspect04")) end}
        }
    },

    ["Jog_Out"] = {
        Sequences = {"jog_out"},
        Fps = 30,
        NextSequence = "Idle"
    },

    ["Jump"] = {
        Sequences = {"jump"},
        Fps = 15,
        NextSequence = "Idle"
    },

    ["Land"] = {
        Sequences = {"jump_land"},
        Fps = 30,
        NextSequence = "Idle"
    },

    ["Melee"] = {
        Sequences = {"melee_miss_01", "melee_miss_02", "melee_miss_03"},
        Length = 0.6, --if melee misses

        Size = 15,
        Range = 40,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Miss_Small")) end}
        }
    },

    ["Melee_Hit"] = {
        Sequences = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
        Length = 0.3, --if melee hits

        Damage = 45,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Flesh_Small")) end}
        }
    },
	
    --["Super_Sprint_In"] = {
    --    Sequences = {"super_sprint_in"},
    --    Fps = 30,
    --    Events = {
    --        {Time = 0, Callback = function(self) self:EnableGrip() end},
    --    }
    --    --NextSequence = "Sprint_Loop",
    --},

    --["Super_Sprint_Loop"] = {
    --    Sequences = {"super_sprint_loop"},
    --    Fps = 30,
    --    NextSequence = "Sprint_Loop", --make our state loop
    --    --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
    --    Events = {
    --        {Time = 0, Callback = function(self) self:EnableGrip() end},
    --    }
    --},

    --["Super_Sprint_Out"] = {
    --    Sequences = {"super_sprint_out"},
    --    Length = 0.3,
    --    Fps = 30,
    --    NextSequence = "Idle",
    --    Events = {
    --        {Time = 0, Callback = function(self) self:EnableGrip() end},
    --    }
    -- },	

}
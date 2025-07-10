AddCSLuaFile()

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30,
		Events = {
			{Time = 0, Callback = function(self) self:EnableGrip() end}
        }
        --does not need NextSequence to loop, it's an exception to the rule
    },

    ["Draw"] = {
        Sequences = {"draw"},
        Length = 16/30,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
			{Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 11/30,
        Fps = 30,
        Events = {
			{Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Drop")) end}
        }
    },
	
    ["Draw_Quick"] = {
        Sequences = {"draw"},
        Length = 16/30,
        Fps = 40,
        NextSequence = "Idle",
        Events = {
			{Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Raise")) end}
        }
    },

    ["Holster_Quick"] = {
        Sequences = {"holster"},
        Length = 11/30,
        Fps = 40,
        Events = {
			{Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Drop")) end}
        }
    },

    ["Equip"] = {
        Sequences = {"draw_first"},
        Length = 34/30,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
			{Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Raise_First_Up")) end},
            {Time = 0.33, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Raise_Safety")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Raise_First_End")) end}
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 63/30,
        Fps = 30,
        MagLength = 38/30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start")) end},
			{Time = 0.25, Callback = function(self) self:DisableGrip() end},
            {Time = 0.56, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGOUT_N")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGIN_N")) end},
			{Time = 1.45, Callback = function(self) self:EnableGrip() end},
            {Time = 1.5, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End")) end}
        }
    },

    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 38/30,
        Fps = 30,
        MagLength = 22/30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Fast")) end},
			{Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGOUT_F")) end},
            {Time = 0.35, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, -10)) end},
            {Time = 0.53, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGIN_F")) end},
			{Time = 0.75, Callback = function(self) self:EnableGrip() end},
            {Time = 0.73, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Fast")) end}
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 69/30,
        Fps = 30,
        MagLength = 44/30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Xmag")) end},
			{Time = 0.22, Callback = function(self) self:DisableGrip() end},
            {Time = 0.56, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGOUT_N")) end},
            {Time = 1.12, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGIN_N")) end},
			{Time = 1.94, Callback = function(self) self:EnableGrip() end},
            {Time = 1.62, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End")) end}
        }
    },

    ["Reload_Fast_Xmag"] = {
        Sequences = {"reload_fast_xmag"},
        Length = 45/30,
        Fps = 30,
        MagLength = 28/30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Xmag_Fast")) end},
			{Time = 0.05, Callback = function(self) self:DisableGrip() end},
            {Time = 0.2, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGOUT_F")) end},
            {Time = 0.35, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, -10)) end},
            {Time = 0.57, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGIN_F")) end},
			{Time = 1.21, Callback = function(self) self:EnableGrip() end},
            {Time = 0.75, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Fast")) end}
        }
    },

    ["Reload_Xmaglrg"] = {
        Sequences = {"reload_xmaglrg"},
        Length = 77/30,
        Fps = 30,
        MagLength = 44/30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Xmag")) end},
			{Time = 0.25, Callback = function(self) self:DisableGrip() end},
            {Time = 0.56, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGOUT_N")) end},
            {Time = 1.06, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGIN_N")) end},
			{Time = 1.52, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Magin_Xmag_Fast")) end},
			{Time = 2.16, Callback = function(self) self:EnableGrip() end},
            {Time = 1.65, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End")) end}
        }
    },

    ["Reload_Fast_Xmaglrg"] = {
        Sequences = {"reload_fast_xmaglrg"},
        Length = 58/30,
        Fps = 30,
        MagLength = 37/30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Xmag_Fast")) end},
			{Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGOUT_F")) end},
            {Time = 0.77, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGIN_F")) end},
			{Time = 1.68, Callback = function(self) self:EnableGrip() end},
            {Time = 1.21, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End")) end}
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 65/30,
        Fps = 30,
        MagLength = 32/30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Empty")) end},
			{Time = 0.02, Callback = function(self) self:DisableGrip() end},
            {Time = 0.16, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGOUT_N")) end},
            {Time = 0.65, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(20, 0, 0)) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Empty")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGIN_N")) end},
		    {Time = 1.36, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
            {Time = 1.42, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
			{Time = 1.47, Callback = function(self) self:EnableGrip() end},
            {Time = 1.56, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Empty")) end}
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 41/30,
        Fps = 30,
        MagLength = 22/30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Empty_Fast")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGOUT_F")) end},
            {Time = 0.35, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGIN_F")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MWII_DEAG_RCATCH")) end},
			{Time = 0.73, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Empty_Fast")) end}
        }
    },

    ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 70/30,
        Fps = 30,
        MagLength = 38/30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Empty")) end},
			{Time = 0.02, Callback = function(self) self:DisableGrip() end},
            {Time = 0.16, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGOUT_N")) end},
            {Time = 0.65, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(20, 0, 0)) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Empty")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGIN_N")) end},
		    {Time = 1.36, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
            {Time = 1.42, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
			{Time = 1.47, Callback = function(self) self:EnableGrip() end},
            {Time = 1.56, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Empty")) end}
        }
    },

    ["Reload_Empty_Fast_Xmag"] = {
        Sequences = {"reload_empty_fast_xmag"},
        Length = 46/30,
        Fps = 30,
        MagLength = 28/30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Empty_Fast")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGOUT_F")) end},
            {Time = 0.35, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGIN_F")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MWII_DEAG_RCATCH")) end},
			{Time = 0.73, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Empty_Fast")) end}
        }
    },

    ["Reload_Empty_Xmaglrg"] = {
        Sequences = {"reload_empty_xmaglrg"},
        Length = 83/30,
        Fps = 30,
        MagLength = 51/30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Empty")) end},
			{Time = 0.02, Callback = function(self) self:DisableGrip() end},
            {Time = 0.16, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGOUT_N")) end},
            {Time = 0.65, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(20, 0, 0)) end},
            {Time = 0.8, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Maginsert_Empty")) end},
            {Time = 1.03, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGIN_N")) end},
		    {Time = 1.36, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
            {Time = 1.42, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
			{Time = 1.47, Callback = function(self) self:EnableGrip() end},
            {Time = 1.56, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Empty")) end}
        }
    },

    ["Reload_Empty_Fast_Xmaglrg"] = {
        Sequences = {"reload_empty_fast_xmaglrg"},
        Length = 60/30,
        Fps = 30,
        MagLength = 32/30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_Start_Empty_Fast")) end},
            {Time = 0.23, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGOUT_F")) end},
            {Time = 0.35, Callback = function(self) self:DoSpatialSound(Sound("MW_MagazineDrop.SMG.Metal"), Vector(0, 0, 0)) end},
            {Time = 0.46, Callback = function(self) self:DoSound(Sound("MWII_DEAG_MAGIN_F")) end},
            {Time = 0.7, Callback = function(self) self:DoSound(Sound("MWII_DEAG_RCATCH")) end},
			{Time = 0.73, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
            {Time = 0.96, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Reload_End_Empty_Fast")) end}
        }
    },
    ["Fire"] = {
        Sequences = {"fire"},
        Fps = 50,
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
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },
	
    ["Fire_Ads"] = {
        Sequences = {"fire"},
        Fps = 30,
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Lastshot")) end},
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.ADS_Up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.ADS_Down")) end}
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
        Length = 0.35,
        Fps = 24,
        NextSequence = "Idle",
    },

    ["Inspect"] = {
        Sequences = {"inspect"},
        Length = 126/30,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect01")) end},
			{Time = 0.05, Callback = function(self) self:DisableGrip() end},
			{Time = 0.16, Callback = function(self) self:DoSound(Sound("MWII_DEAG_INS_MAGFLIP")) end},
            {Time = 2.33, Callback = function(self) self:DoSound(Sound("MWII_DEAG_INS_MAGIN")) end},
			{Time = 0.45, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect02")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MWII_DEAG_CATCH")) end},
			{Time = 2.96, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
			{Time = 3.52, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
			{Time = 3.75, Callback = function(self) self:EnableGrip() end},
            {Time = 3.76, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect03")) end}
        }
    },

    ["Inspect_Xmag"] = {
        Sequences = {"inspect_xmag"},
        Length = 126/30,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect01")) end},
			{Time = 0.05, Callback = function(self) self:DisableGrip() end},
			{Time = 0.16, Callback = function(self) self:DoSound(Sound("MWII_DEAG_INS_MAGFLIP")) end},
            {Time = 2.33, Callback = function(self) self:DoSound(Sound("MWII_DEAG_INS_MAGIN")) end},
			{Time = 0.45, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect02")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MWII_DEAG_CATCH")) end},
			{Time = 2.96, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
			{Time = 3.52, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
			{Time = 3.65, Callback = function(self) self:EnableGrip() end},
            {Time = 3.66, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect03")) end}
        }
    },
	
    ["Inspect_Xmaglrg"] = {
        Sequences = {"inspect_xmaglrg"},
        Length = 126/30,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect01")) end},
			{Time = 0.05, Callback = function(self) self:DisableGrip() end},
			{Time = 0.16, Callback = function(self) self:DoSound(Sound("MWII_DEAG_INS_MAGFLIP")) end},
            {Time = 2.33, Callback = function(self) self:DoSound(Sound("MWII_DEAG_INS_MAGIN")) end},
			{Time = 0.45, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect02")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MWII_DEAG_CATCH")) end},
			{Time = 2.96, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
			{Time = 3.52, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
			{Time = 3.65, Callback = function(self) self:EnableGrip() end},
            {Time = 3.66, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect03")) end}
        }
    },

    ["Inspect_Empty"] = {
        Sequences = {"inspect_empty"},
        Length = 172/30,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect01")) end},
			{Time = 0.16, Callback = function(self) self:DoSound(Sound("MWII_DEAG_INS_MAGFLIP")) end},
            {Time = 3.73, Callback = function(self) self:DoSound(Sound("MWII_DEAG_INS_MAGIN")) end},
			{Time = 0.45, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect02")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MWII_DEAG_CATCH")) end},
			{Time = 1.66, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
			{Time = 1.7, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
			{Time = 2.36, Callback = function(self) self:DoSound(Sound("MMWII_DEAG_SLIDEIN")) end},
			{Time = 2.4, Callback = function(self) self:DoSound(Sound("MMWII_DEAG_SLIDEOUT")) end},
			{Time = 2.86, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
			{Time = 2.9, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
			{Time = 4.66, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
            {Time = 5.26, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect03")) end}
        }
    },

    ["Inspect_Empty_Xmag"] = {
        Sequences = {"inspect_empty_Xmag"},
        Length = 172/30,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect01")) end},
			{Time = 0.16, Callback = function(self) self:DoSound(Sound("MWII_DEAG_INS_MAGFLIP")) end},
            {Time = 3.73, Callback = function(self) self:DoSound(Sound("MWII_DEAG_INS_MAGIN")) end},
			{Time = 0.45, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect02")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MWII_DEAG_CATCH")) end},
			{Time = 1.66, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
			{Time = 1.7, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
			{Time = 2.36, Callback = function(self) self:DoSound(Sound("MMWII_DEAG_SLIDEIN")) end},
			{Time = 2.4, Callback = function(self) self:DoSound(Sound("MMWII_DEAG_SLIDEOUT")) end},
			{Time = 2.86, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
			{Time = 2.9, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
			{Time = 4.66, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
            {Time = 5.26, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect03")) end}
        }
    },

    ["Inspect_Empty_Xmaglrg"] = {
        Sequences = {"inspect_empty_Xmaglrg"},
        Length = 172/30,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect01")) end},
			{Time = 0.16, Callback = function(self) self:DoSound(Sound("MWII_DEAG_INS_MAGFLIP")) end},
            {Time = 3.73, Callback = function(self) self:DoSound(Sound("MWII_DEAG_INS_MAGIN")) end},
			{Time = 0.45, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect02")) end},
            {Time = 0.66, Callback = function(self) self:DoSound(Sound("MWII_DEAG_CATCH")) end},
			{Time = 1.66, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
			{Time = 1.7, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
			{Time = 2.36, Callback = function(self) self:DoSound(Sound("MMWII_DEAG_SLIDEIN")) end},
			{Time = 2.4, Callback = function(self) self:DoSound(Sound("MMWII_DEAG_SLIDEOUT")) end},
			{Time = 2.86, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
			{Time = 2.9, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEOUT")) end},
			{Time = 4.66, Callback = function(self) self:DoSound(Sound("MWII_DEAG_SLIDEIN")) end},
            {Time = 5.26, Callback = function(self) self:DoSound(Sound("MW19_DEAGLE.Inspect03")) end}
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
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Miss_Medium")) end}
        }
    },

    ["Melee_Hit"] = {
        Sequences = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
        Length = 0.3, --if melee hits

        Damage = 45,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Flesh_Medium")) end}
        }
    },
}
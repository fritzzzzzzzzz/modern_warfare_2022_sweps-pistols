
--this sound lua was done manually by an autistic retard!

sound.Add({
	name = "weap_mike2011_fire_plr_shot",
	channel = CHAN_WEAPON,
	level = 140,
	volume = 1,
	pitch = {100,100},
	sound = {
		"^fritz/weapons/mike2011/fire/mixed/weap_mike2011_fire_plr_shot_01_mixed.ogg",
		"^fritz/weapons/mike2011/fire/mixed/weap_mike2011_fire_plr_shot_02_mixed.ogg",
		"^fritz/weapons/mike2011/fire/mixed/weap_mike2011_fire_plr_shot_03_mixed.ogg",
		}
})

sound.Add({
	name = "weap_mike2011_sup_plr_shot",
	channel = CHAN_WEAPON,
	level = 140,
	volume = 10,
	pitch = {100,100},
	sound = {
		"^fritz/weapons/mike2011/fire/mixed/weap_mike2011_sup_plr_shot_01_mixed.ogg",
		}
})

sound.Add({
	name = "mike2011_last_fire",
	channel = CHAN_WEAPON,
	level = 140,
	volume = 1,
	pitch = {100,100},
	sound = {
		"^fritz/weapons/mike2011/fire/weap_mike2011_fire_plr_last_mech_01.ogg",
		"^fritz/weapons/mike2011/fire/weap_mike2011_fire_plr_last_mech_02.ogg",
		"^fritz/weapons/mike2011/fire/weap_mike2011_fire_plr_last_mech_03.ogg",
		"^fritz/weapons/mike2011/fire/weap_mike2011_fire_plr_last_mech_ads_01.ogg",
		"^fritz/weapons/mike2011/fire/weap_mike2011_fire_plr_last_mech_ads_02.ogg",
		"^fritz/weapons/mike2011/fire/weap_mike2011_fire_plr_last_mech_ads_03.ogg",
		}
})

sound.Add({
	name = "weap_mike2011_fcg_disconnector_plr",
	channel = CHAN_WPNFOLEY +1,
	volume = 1,
	pitch = {100,100},
	sound = {
		"fritz/weapons/mike2011/fire/weap_mike2011_fcg_disconnector_plr_01.ogg",
		"fritz/weapons/mike2011/fire/weap_mike2011_fcg_disconnector_plr_02.ogg",
		"fritz/weapons/mike2011/fire/weap_mike2011_fcg_disconnector_plr_03.ogg",
		"fritz/weapons/mike2011/fire/weap_mike2011_fcg_disconnector_plr_04.ogg",
		"fritz/weapons/mike2011/fire/weap_mike2011_fcg_disconnector_plr_05.ogg",
		"fritz/weapons/mike2011/fire/weap_mike2011_fcg_disconnector_plr_06.ogg",
		}
})

sound.Add({
	name = "weap_mike2011_fire_plr_fcg",
	channel = CHAN_WPNFOLEY,
	volume = 1,
	pitch = {100,100},
	sound = {
		"fritz/weapons/mike2011/fire/weap_mike2011_fire_plr_fcg_01.ogg",
		"fritz/weapons/mike2011/fire/weap_mike2011_fire_plr_fcg_02.ogg",
		"fritz/weapons/mike2011/fire/weap_mike2011_fire_plr_fcg_03.ogg",
		"fritz/weapons/mike2011/fire/weap_mike2011_fire_plr_fcg_04.ogg",
		"fritz/weapons/mike2011/fire/weap_mike2011_fire_plr_fcg_05.ogg",
		"fritz/weapons/mike2011/fire/weap_mike2011_fire_plr_fcg_06.ogg",
		}
})

-- foley --

sound.Add({
    name =           "mike2011_ads_up",
    channel =        CHAN_WPNFOLEY + 1,
    volume =         1,
    sound = {"fritz/weapons/mike2011/wfoly_pi_mike1911_ads_up.ogg"}
})

sound.Add({
    name =           "mike2011_ads_down",
    channel =        CHAN_WPNFOLEY + 2,
    volume =         1,
    sound = {"fritz/weapons/mike2011/wfoly_pi_mike1911_ads_down.ogg"}
})



sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_drop_01",
    channel =        CHAN_WPNFOLEY + 1,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_drop.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_01",
    channel =        CHAN_WPNFOLEY + 2,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_decock.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_02",
    channel =        CHAN_WPNFOLEY + 3,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p27_pi_papa220_raise_first_end.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_03",
    channel =        CHAN_WPNFOLEY + 4,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_twirl.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_04",
    channel =        CHAN_WPNFOLEY + 5,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_hand.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_05",
    channel =        CHAN_WPNFOLEY + 6,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_rotate1.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_06",
    channel =        CHAN_WPNFOLEY + 7,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_mvmnt1.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_07",
    channel =        CHAN_WPNFOLEY + 8,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_mvmnt2.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_08",
    channel =        CHAN_WPNFOLEY + 9,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_magout.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_09",
    channel =        CHAN_WPNFOLEY + 10,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_magdrop.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_10",
    channel =        CHAN_WPNFOLEY + 11,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_magmvmnt1.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_11",
    channel =        CHAN_WPNFOLEY + 12,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_chargeeject.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_12",
    channel =        CHAN_WPNFOLEY + 13,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_mvmnt3.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_13",
    channel =        CHAN_WPNFOLEY + 14,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_bulletland.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_14",
    channel =        CHAN_WPNFOLEY + 15,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_mvmnt4.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_15",
    channel =        CHAN_WPNFOLEY + 16,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_bulletchamber.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_16",
    channel =        CHAN_WPNFOLEY + 17,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_charge.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_17",
    channel =        CHAN_WPNFOLEY + 18,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_rotate2.ogg"}
})
sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_18",
    channel =        CHAN_WPNFOLEY + 19,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_magmvmnt2.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_19",
    channel =        CHAN_WPNFOLEY + 20,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_magin.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_inspect_20",
    channel =        CHAN_WPNFOLEY + 21,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_inspect_end.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_reload_01",
    channel =        CHAN_WPNFOLEY + 22,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_reload_raise.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_reload_02",
    channel =        CHAN_WPNFOLEY + 23,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_reload_magout.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_reload_03",
    channel =        CHAN_WPNFOLEY + 24,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_reload_armdown.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_reload_04",
    channel =        CHAN_WPNFOLEY + 25,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_reload_rotate.ogg"}
})

sound.Add({
    name =           "ps_wfoly_plr_pi_mike2011_reload_05",
    channel =        CHAN_WPNFOLEY + 26,
    volume =         1,
    sound = {"fritz/weapons/mike2011/p55_pi_mike2011_reload_armup.ogg"}
})




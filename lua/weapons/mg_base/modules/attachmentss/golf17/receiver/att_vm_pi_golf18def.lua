ATTACHMENT.Base = "att_conversion"
ATTACHMENT.Name = "X13 Receiver"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/golf21/icon_attachment_pi_golf21_stock.vmt")
ATTACHMENT.ExcludedAttachments = {"att_vm_2x_west02_holo", "att_vm_2x_west02", "att_vm_reflex_02", "att_vm_minireddot01_tall", "att_vm_minireddot02_tall", "att_vm_minireddot03_tall",
    "att_vm_holo_west01", "att_vm_holo_west02", "att_vm_holo_east01", "att_vm_reflex_east01",
    "att_vm_reflex_east02", "att_vm_reflex_west02_tall", "att_vm_reflex_west03",
    "att_vm_thermal_east01", "att_vm_thermal_west01", "att_vm_thermal_east01_hybrid",
    "att_vm_hybrid_west01", "att_vm_reflex_west04", "att_vm_2x_west01",
    "att_vm_hybrid_west03", "att_vm_4x_east01",
    "att_vm_4x_west01", "att_vm_4x_west02",
    "att_vm_scope_mike14", "att_vm_scope_vz", "att_vm_pi_golf18_stocklight","att_vm_pi_golf18_stockhvy","att_vm_pi_golf18_stocktac",  "att_vm_angledgrip01_glock","att_vm_angledgrip02_glock","att_vm_stubbygrip01_glock","att_vm_stubbygrip02_glock","att_vm_vertgrip01_glock","att_vm_vertgrip02_glock","att_vm_vertgrip03_glock"}
ATTACHMENT.Conversion = {
	[6] = {"att_sight", "att_vm_minireddot01_pstl_v0", "att_vm_minireddot02_pstl_v0", "att_vm_minireddot03_pstl_v0", "att_vm_minireddot04_pstl_v0", "att_vm_minireddot05_pstl_v0", "att_vm_minireddot06_pstl_v0"},
	[7] = {"att_vm_pi_golf18_slide","att_vm_pi_golf17_slide_long","att_vm_pi_golf17_slide_light"},
	[9] =     {"att_laser", "att_vm_laser_pstl02_v0", "att_vm_laser_pstl05_v0", "att_vm_laser_pstl06_v0", "att_vm_laser_pstl07_v0", "att_vm_flashlight_pstl01_v0", "att_vm_flashlight_pstl02_v0"}
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end

function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
end
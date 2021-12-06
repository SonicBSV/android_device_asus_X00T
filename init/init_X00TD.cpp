/*
   Copyright (c) 2015, The Linux Foundation. All rights reserved.
   Copyright (C) 2016 The CyanogenMod Project.
   Copyright (C) 2019-2020 The LineageOS Project.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <cstdlib>
#include <fstream>
#include <string.h>
#include <unistd.h>
#include <vector>

#include <android-base/strings.h>
#include <android-base/file.h>
#include <android-base/properties.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>
#include <sys/sysinfo.h>

#include "property_service.h"
#include "vendor_init.h"

using android::base::GetProperty;
using android::base::SetProperty;
using android::base::ReadFileToString;
using android::base::Trim;
using std::string;

std::vector<std::string> ro_props_default_source_order = {
    "",
    "odm.",
    "product.",
    "system.",
    "system_ext.",
    "vendor.",
};

static void init_alarm_boot_properties()
{
    char const *boot_reason_file = "/proc/sys/kernel/boot_reason";
    std::string boot_reason;
    std::string reboot_reason = GetProperty("ro.boot.alarmboot", "");

    if (ReadFileToString(boot_reason_file, &boot_reason)) {
        /*
         * Setup ro.alarm_boot value to true when it is RTC triggered boot up
         * For existing PMIC chips, the following mapping applies
         * for the value of boot_reason:
         *
         * 0 -> unknown
         * 1 -> hard reset
         * 2 -> sudden momentary power loss (SMPL)
         * 3 -> real time clock (RTC)
         * 4 -> DC charger inserted
         * 5 -> USB charger inserted
         * 6 -> PON1 pin toggled (for secondary PMICs)
         * 7 -> CBLPWR_N pin toggled (for external power supply)
         * 8 -> KPDPWR_N pin toggled (power key pressed)
         */
        if (Trim(boot_reason) == "3" || reboot_reason == "true")
            SetProperty("ro.alarm_boot", "true");
        else
            SetProperty("ro.alarm_boot", "false");
    }
}

void property_override(char const prop[], char const value[], bool add = true) {
    prop_info *pi;

    pi = (prop_info *)__system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else if (add)
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void load_dalvik_properties() {
    struct sysinfo sys;

    sysinfo(&sys);
    if (sys.totalram > 5072ull * 1024 * 1024) {
        // from - phone-xhdpi-6144-dalvik-heap.mk
        property_override("dalvik.vm.heapstartsize", "16m");
        property_override("dalvik.vm.heapgrowthlimit", "256m");
        property_override("dalvik.vm.heapsize", "512m");
        property_override("dalvik.vm.heaptargetutilization", "0.5");
        property_override("dalvik.vm.heapmaxfree", "32m");
        property_override("dalvik.vm.heapminfree", "8m");
    } else if (sys.totalram > 3072ull * 1024 * 1024) {
        // from - phone-xxhdpi-4096-dalvik-heap.mk
        property_override("dalvik.vm.heapstartsize", "8m");
        property_override("dalvik.vm.heapgrowthlimit", "256m");
        property_override("dalvik.vm.heapsize", "512m");
        property_override("dalvik.vm.heapmaxfree", "16m");
        property_override("dalvik.vm.heapminfree", "8m");
        property_override("dalvik.vm.heaptargetutilization", "0.6");
    } else {
        // from - phone-xhdpi-2048-dalvik-heap.mk
        property_override("dalvik.vm.heapstartsize", "8m");
        property_override("dalvik.vm.heapgrowthlimit", "192m");
        property_override("dalvik.vm.heapsize", "512m");
        property_override("dalvik.vm.heapmaxfree", "8m");
        property_override("dalvik.vm.heapminfree", "512k");
        property_override("dalvik.vm.heaptargetutilization", "0.75");
    }    
}

void set_device_props(const std::string fingerprint, const std::string description,
        const std::string brand, const std::string device, const std::string model,
        const std::string name, const std::string marketname) {
    const auto set_ro_build_prop = [](const std::string &source,
                                      const std::string &prop,
                                      const std::string &value) {
        auto prop_name = "ro." + source + "build." + prop;
        property_override(prop_name.c_str(), value.c_str(), true);
    };

    const auto set_ro_product_prop = [](const std::string &source,
                                        const std::string &prop,
                                        const std::string &value) {
        auto prop_name = "ro.product." + source + prop;
        property_override(prop_name.c_str(), value.c_str(), true);
    };

    for (const auto &source : ro_props_default_source_order) {
        set_ro_build_prop(source, "fingerprint", fingerprint);
        set_ro_product_prop(source, "brand", brand);
        set_ro_product_prop(source, "device", device);
        set_ro_product_prop(source, "model", model);
        set_ro_product_prop(source, "name", name);
        set_ro_product_prop(source, "marketname", marketname);
    }

    property_override("ro.build.fingerprint", fingerprint.c_str());
    property_override("ro.build.description", description.c_str());
    property_override("ro.bootimage.build.fingerprint", fingerprint.c_str());
    property_override("ro.system_ext.build.fingerprint", fingerprint.c_str());
    property_override("ro.com.google.clientidbase", "android-asus");

}

void vendor_load_properties() {
//   SafetyNet workaround
    char const fp[] = "asus/RU_X00TD/ASUS_X00T_6:9/QKQ1/17.2017.2012.438-20201203:user/release-keys";
    char const fp_desc[] = "sdm660_64-user 10 QKQ1 72 release-keys";
    struct sysinfo sys;
    sysinfo(&sys);
    char const *region_file = "/mnt/vendor/persist/flag/countrycode.txt";
    string region = android::base::GetProperty("ro.boot.hwc", "");
    
// 6 GB variant
    if (sys.totalram > 4096ull * 1024 * 1024) {
// Russian model
	if (region == "RU") {
        set_device_props(
            fp,
            fp_desc,
            "asus", "ASUS_X00T_9", "ZB602KL", "RU_X00TD", "ZenFone Max Pro M1");
        property_override("ro.product.mod_device", "RU_X00TD");
// Global model
    } else {
        set_device_props(
            fp,
            fp_desc,
            "asus", "ASUS_X00T_3", "ZB601KL", "WW_X00TD", "ZenFone Max Pro M1");
        property_override("ro.product.mod_device", "WW_X00TD");
    }
// 3/4 GB variants
    } else {
// Russian model
    if (region == "RU") {
        set_device_props(
            fp,
            fp_desc,
            "asus", "ASUS_X00T_6", "ZB602KL", "RU_X00TD", "ZenFone Max Pro M1");
        property_override("ro.product.mod_device", "RU_X00TD");
// Global model
    } else {
        set_device_props(
            fp,
            fp_desc,
            "asus", "ASUS_X00T_2", "ZB602KL", "WW_X00TD", "ZenFone Max Pro M1");
        property_override("ro.product.mod_device", "WW_X00TD");
    }
    }
    
    load_dalvik_properties();
    init_alarm_boot_properties();

//  SafetyNet workaround
    property_override("ro.boot.verifiedbootstate", "green");
    property_override("ro.oem_unlock_supported", "1");
//  Enable transitional log for Privileged permissions
    property_override("ro.control_privapp_permissions", "log");
}


#include <stdlib.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include <android-base/properties.h>
#include "property_service.h"
#include "vendor_init.h"

using android::base::GetProperty;

using android::init::property_set;

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}

void vendor_load_properties()
{
    std::string platform = android::base::GetProperty("ro.board.platform", "");

    if (platform != ANDROID_TARGET)
        return;
    property_override("ro.build.description", "kuntao_row-user 7.0 NRD90N P2a42_S251_171107_ROW release-keys");
    property_override("ro.build.fingerprint", "Lenovo/kuntao_row/P2a42:7.0/NRD90N/P2a42_S251_171107_ROW:user/release-keys");
}

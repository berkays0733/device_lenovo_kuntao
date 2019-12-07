/*
 * Copyright (C) 2019 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define LOG_TAG "android.hardware.light@2.0-service.kuntao"

#include <hidl/HidlTransportSupport.h>

#include "Light.h"

// libhwbinder:
using android::hardware::configureRpcThreadpool;
using android::hardware::joinRpcThreadpool;

// Generated HIDL files
using android::hardware::light::V2_0::ILight;
using android::hardware::light::V2_0::implementation::Light;

const static std::string kLcdBacklightPath = "/sys/class/leds/lcd-backlight/brightness";
const static std::string kLcdMaxBacklightPath = "/sys/class/leds/lcd-backlight/max_brightness";
const static std::string kRgbLedPath = "/sys/class/leds/rgb/brightness";
const static std::string kRgbBlinkPath = "/sys/class/leds/rgb/blink";

int main() {
    uint32_t lcdMaxBrightness = 255;

    std::ofstream lcdBacklight(kLcdBacklightPath);
    if (!lcdBacklight) {
        ALOGE("Failed to open kLcdBacklightPath.");
        return 1;
    }

    std::ifstream lcdMaxBacklight(kLcdMaxBacklightPath);
    if (!lcdMaxBacklight) {
        ALOGE("Failed to open kLcdMaxBacklightPath.");
        return 1;
    } else {
        lcdMaxBacklight >> lcdMaxBrightness;
    }

    std::ofstream rgbLed(kRgbLedPath);
    if (!rgbLed) {
        ALOGE("Failed to open  kRgbLedPath.");
        return 1;
    }

    std::ofstream rgbBlink(kRgbBlinkPath);
    if (!rgbBlink) {
        ALOGE("Failed to open  kRgbBlinkPath.");
        return 1;
    }

    android::sp<ILight> service = new Light(
            {std::move(lcdBacklight), lcdMaxBrightness},
            std::move(rgbLed), std::move(rgbBlink));

    configureRpcThreadpool(1, true);

    android::status_t status = service->registerAsService();

    if (status != android::OK) {
        ALOGE("Cannot register Light HAL service.");
        return 1;
    }

    ALOGI("Light HAL service ready.");
    joinRpcThreadpool();
    // Under normal cases, execution will not reach this line.
    ALOGE("Light HAL failed to join thread pool.");
    return 1;
}

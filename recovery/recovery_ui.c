/*
 * Copyright (C) 2009 The Android Open Source Project
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

#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"

/* Key code of yulong_msm7627_surf, aka. Coolpad 5860.
 *   139, 102, 158, KEY_MENU, KEY_HOME, KEY_BACK
 *   115, 114, KEY_VOLUMEUP, KEY_VOLUMEDOWN
 *   107, KEY_END (the Power button)
 */

char* MENU_HEADERS[] = { "Use Volume keys to highlight and Home to select.",
			 "Use Power button to toggle display",
                         NULL };

char* MENU_ITEMS[] = { "reboot system now",
                       "apply update.zip from sdcard",
                       "wipe data/factory reset",
                       "wipe cache partition",
                       "install zip from sdcard",
                       "backup and restore",
                       "mounts and storage",
                       "advanced",
                       "power off",
                       NULL };

int device_recovery_start() {
    return 0;
}

int device_toggle_display(volatile char* key_pressed, int key_code) {
    return get_allow_toggle_display() && key_code == KEY_END;
}

int device_reboot_now(volatile char* key_pressed, int key_code) {
    return 0;
}

int device_handle_key(int key_code, int visible) {
    if (visible) {
        switch (key_code) {
            case KEY_VOLUMEUP:
                return HIGHLIGHT_UP;

            case KEY_VOLUMEDOWN:
                return HIGHLIGHT_DOWN;

	    case KEY_HOME:
                return SELECT_ITEM;
            
            case KEY_BACK:
                return GO_BACK;
        }
    }

    return NO_ACTION;
}

int device_perform_action(int which) {
    return which;
}

int device_wipe_data() {
    return 0;
}
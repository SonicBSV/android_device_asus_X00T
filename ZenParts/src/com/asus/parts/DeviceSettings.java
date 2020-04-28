package com.asus.parts;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceFragment;
import androidx.preference.PreferenceManager;
import androidx.preference.SwitchPreference;

import com.asus.parts.ambient.AmbientGesturePreferenceActivity;
import com.asus.parts.preferences.SecureSettingListPreference;
import com.asus.parts.preferences.SecureSettingSwitchPreference;
import com.asus.parts.preferences.VibrationSeekBarPreference;
import com.asus.parts.preferences.CustomSeekBarPreference;

import com.asus.parts.R;

public class DeviceSettings extends PreferenceFragment implements
        Preference.OnPreferenceChangeListener {

    private static final String CATEGORY_DISPLAY = "display";

    private static final String AMBIENT_DISPLAY = "ambient_display_gestures";

    public static final String PREF_VIBRATION_STRENGTH = "vibration_strength";
    public static final String VIBRATION_STRENGTH_PATH = "/sys/class/timed_output/vibrator/vtg_level";

    public static final String PREF_KEY_FPS_INFO = "fps_info";

    // value of vtg_min and vtg_max
    public static final int MIN_VIBRATION = 116;
    public static final int MAX_VIBRATION = 3596;

    public static final  String PREF_HEADPHONE_GAIN = "headphone_gain";
    public static final  String PREF_MICROPHONE_GAIN = "microphone_gain";
    public static final  String HEADPHONE_GAIN_PATH = "/sys/kernel/sound_control/headphone_gain";
    public static final  String MICROPHONE_GAIN_PATH = "/sys/kernel/sound_control/mic_gain";

    @Override
    public void onCreatePreferences(Bundle savedInstanceState, String rootKey) {
        setPreferencesFromResource(R.xml.asusparts_preferences, rootKey);
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this.getContext());

        VibrationSeekBarPreference vibrationStrength = (VibrationSeekBarPreference) findPreference(PREF_VIBRATION_STRENGTH);
        vibrationStrength.setEnabled(FileUtils.fileWritable(VIBRATION_STRENGTH_PATH));
        vibrationStrength.setOnPreferenceChangeListener(this);

        CustomSeekBarPreference headphone_gain = (CustomSeekBarPreference) findPreference(PREF_HEADPHONE_GAIN);
        headphone_gain.setOnPreferenceChangeListener(this);

        CustomSeekBarPreference microphone_gain = (CustomSeekBarPreference) findPreference(PREF_MICROPHONE_GAIN);
        microphone_gain.setOnPreferenceChangeListener(this);

        PreferenceCategory displayCategory = (PreferenceCategory) findPreference(CATEGORY_DISPLAY);

        SwitchPreference fpsInfo = (SwitchPreference) findPreference(PREF_KEY_FPS_INFO);
        fpsInfo.setChecked(prefs.getBoolean(PREF_KEY_FPS_INFO, false));
        fpsInfo.setOnPreferenceChangeListener(this);

        Preference ambientDisplay = findPreference(AMBIENT_DISPLAY);
        ambientDisplay.setOnPreferenceClickListener(preference -> {
            Intent intent = new Intent(getContext(), AmbientGesturePreferenceActivity.class);
            startActivity(intent);
            return true;
        });
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object value) {
        final String key = preference.getKey();
        switch (key) {
            case PREF_VIBRATION_STRENGTH:
                double vibrationValue = (int) value / 100.0 * (MAX_VIBRATION - MIN_VIBRATION) + MIN_VIBRATION;
                FileUtils.setValue(VIBRATION_STRENGTH_PATH, vibrationValue);
                break;

            case PREF_HEADPHONE_GAIN:
                FileUtils.setValue(HEADPHONE_GAIN_PATH, value + " " + value);
                break;

            case PREF_MICROPHONE_GAIN:
                FileUtils.setValue(MICROPHONE_GAIN_PATH, (int) value);
                break;

            case PREF_KEY_FPS_INFO:
                boolean enabled = (Boolean) value;
                Intent fpsinfo = new Intent(this.getContext(), FPSInfoService.class);
                if (enabled) {
                    this.getContext().startService(fpsinfo);
                } else {
                    this.getContext().stopService(fpsinfo);
                }
                break;

            default:
                break;
        }
        return true;
    }

    private boolean isAppNotInstalled(String uri) {
        PackageManager packageManager = getContext().getPackageManager();
        try {
            packageManager.getPackageInfo(uri, PackageManager.GET_ACTIVITIES);
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return true;
        }
    }
}

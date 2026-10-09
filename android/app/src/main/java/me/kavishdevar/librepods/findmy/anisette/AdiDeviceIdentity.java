/* Adapted from OpenTagViewer. Copyright (c) 2025 ShaneB. MIT License; see THIRD_PARTY_LICENSE.txt. */
package me.kavishdevar.librepods.findmy.anisette;

import android.util.Base64;

import org.json.JSONException;
import org.json.JSONObject;

import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.Locale;
import java.util.UUID;


public final class AdiDeviceIdentity {

    private final String uniqueDeviceIdentifier;
    private final String adiIdentifier;
    private final String localUserUuid;
    private final String serial;
    private final Hardware hardware;


    public AdiDeviceIdentity(String uniqueDeviceIdentifier, String adiIdentifier,
                             String localUserUuid, String serial, Hardware hardware) {
        this.uniqueDeviceIdentifier = uniqueDeviceIdentifier;
        this.adiIdentifier = adiIdentifier;
        this.localUserUuid = localUserUuid;
        this.serial = serial;
        this.hardware = hardware;
    }



    public static final String SERIAL_PREFIX = "0LIBREPD";


    public static final String SERIAL_ALPHABET = "ACDEFGHJKLMNPQRTUVWXY34679";


    public static final String LEGACY_SERIAL = "0LIBREPODS00";

    public static AdiDeviceIdentity generate() {
        final SecureRandom random = new SecureRandom();
        final Hardware hardware = Hardware.DEFAULT;

        return new AdiDeviceIdentity(
                UUID.randomUUID().toString().toUpperCase(Locale.ROOT),
                hex(random, 8).toLowerCase(Locale.ROOT),
                hardware.newLocalUserId(random),
                generateSerial(random),
                hardware);
    }


    static String generateSerial(SecureRandom random) {
        final StringBuilder tail = new StringBuilder(4);
        for (int i = 0; i < 4; i++) {
            tail.append(SERIAL_ALPHABET.charAt(random.nextInt(SERIAL_ALPHABET.length())));
        }
        return SERIAL_PREFIX + tail;
    }

    private static String hex(SecureRandom random, int bytes) {
        final byte[] buffer = new byte[bytes];
        random.nextBytes(buffer);

        final StringBuilder out = new StringBuilder(bytes * 2);
        for (final byte b : buffer) {
            out.append(String.format("%02X", b));
        }
        return out.toString();
    }


    public enum Hardware {

        LEGACY_MAC(
                "MacBook Pro 13\"",
                "MacBookPro13,2", "macOS", "13.1", "22C65",
                "1404.0.5", "22.2.0",
                "com.apple.akd/1.0") {


            @Override
            String newLocalUserId(SecureRandom random) {
                return hex(random, 32).toUpperCase(Locale.ROOT);
            }


            @Override
            public String localUserHeader(String localUserUuid) {
                return Base64.encodeToString(localUserUuid.getBytes(StandardCharsets.UTF_8), Base64.NO_WRAP);
            }
        },


        IPHONE(
                "iPhone 14 Pro",
                "iPhone15,2", "iPhone OS", "17.4", "21E219",
                "1494.0.7", "23.4.0",
                "com.apple.akd/1.0") {


            @Override
            String newLocalUserId(SecureRandom random) {
                return UUID.randomUUID().toString().toUpperCase(Locale.ROOT);
            }


            @Override
            public String localUserHeader(String localUserUuid) {
                return Base64.encodeToString(
                        localUserUuid.getBytes(StandardCharsets.UTF_8), Base64.NO_WRAP);
            }
        };


        abstract String newLocalUserId(SecureRandom random);


        public abstract String localUserHeader(String localUserUuid);


        public static final Hardware DEFAULT = LEGACY_MAC;

        private final String marketingName;
        private final String model;
        private final String osName;
        private final String osVersion;
        private final String osBuild;
        private final String cfnetwork;
        private final String darwin;
        private final String authKitApp;

        Hardware(String marketingName,
                 String model, String osName, String osVersion, String osBuild,
                 String cfnetwork, String darwin, String authKitApp) {
            this.marketingName = marketingName;
            this.model = model;
            this.osName = osName;
            this.osVersion = osVersion;
            this.osBuild = osBuild;
            this.cfnetwork = cfnetwork;
            this.darwin = darwin;
            this.authKitApp = authKitApp;
        }


        public String clientInfo() {
            return String.format(Locale.ROOT, "<%s> <%s;%s;%s> <com.apple.AuthKit/1 (%s)>",
                    this.model, this.osName, this.osVersion, this.osBuild, this.authKitApp);
        }


        public String userAgent() {
            return String.format(Locale.ROOT, "akd/1.0 CFNetwork/%s Darwin/%s",
                    this.cfnetwork, this.darwin);
        }

        public String model() {
            return this.model;
        }


        public String marketingName() {
            return this.marketingName;
        }


        public String deviceListName() {
            return this.model.replaceAll("\\d+,\\d+$", "");
        }

        public String osName() {
            return this.osName;
        }

        public String osVersion() {
            return this.osVersion;
        }

        public String osBuild() {
            return this.osBuild;
        }

        public String cfnetwork() {
            return this.cfnetwork;
        }

        public String darwin() {
            return this.darwin;
        }


        public String toJson() {
            try {
                return new JSONObject()
                        .put("model", this.model)
                        .put("os_name", this.osName)
                        .put("os_version", this.osVersion)
                        .put("os_build", this.osBuild)
                        .put("cfnetwork", this.cfnetwork)
                        .put("darwin", this.darwin)
                        .toString();
            } catch (final JSONException e) {
                // Six string literals into a fresh object. Unreachable short of the platform
                // being broken, and there is no sensible half-identity to return instead.
                throw new IllegalStateException("could not describe " + name(), e);
            }
        }
    }


    public Hardware hardware() {
        return this.hardware;
    }


    public String uniqueDeviceIdentifier() {
        return this.uniqueDeviceIdentifier;
    }


    public String adiIdentifier() {
        return this.adiIdentifier;
    }


    public String localUserUuid() {
        return this.localUserUuid;
    }


    public String serial() {
        return this.serial;
    }
}

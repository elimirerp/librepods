package me.kavishdevar.librepods.findmy.anisette;

import java.io.InputStream;
import java.net.URL;
import java.security.KeyStore;
import java.security.MessageDigest;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/** Platform TLS trust plus Apple's public 2006 root for Grand Slam. Hostnames stay verified. */
final class AppleProvisioningTls {
    static final String ROOT_SHA256 = "b0b1730ecbc7ff4505142c49f1295e6eda6bcaed7e2c68c5be91b5a11001f024";
    private static SSLSocketFactory factory;

    static boolean appliesTo(URL url) {
        return "https".equalsIgnoreCase(url.getProtocol()) && "gsa.apple.com".equalsIgnoreCase(url.getHost());
    }

    static synchronized SSLSocketFactory socketFactory(InputStream root) throws Exception {
        if (factory == null) {
            SSLContext context = SSLContext.getInstance("TLS");
            context.init(null, new TrustManager[]{trustManager(root)}, null);
            factory = context.getSocketFactory();
        }
        return factory;
    }

    static X509TrustManager trustManager(InputStream input) throws Exception {
        X509Certificate root = (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(input);
        byte[] digest = MessageDigest.getInstance("SHA-256").digest(root.getEncoded());
        StringBuilder hash = new StringBuilder();
        for (byte value : digest) hash.append(String.format(java.util.Locale.ROOT, "%02x", value));
        if (!ROOT_SHA256.contentEquals(hash)) throw new CertificateException("Bundled Apple root digest mismatch");
        root.checkValidity();
        X509TrustManager platform = manager(null);
        KeyStore anchors = KeyStore.getInstance(KeyStore.getDefaultType());
        anchors.load(null);
        anchors.setCertificateEntry("apple-2006", root);
        X509TrustManager apple = manager(anchors);
        return new X509TrustManager() {
            public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
                platform.checkClientTrusted(chain, authType);
            }
            public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
                try { platform.checkServerTrusted(chain, authType); }
                catch (CertificateException untrustedByPlatform) { apple.checkServerTrusted(chain, authType); }
            }
            public X509Certificate[] getAcceptedIssuers() {
                X509Certificate[] defaults = platform.getAcceptedIssuers();
                X509Certificate[] additional = apple.getAcceptedIssuers();
                X509Certificate[] all = Arrays.copyOf(defaults, defaults.length + additional.length);
                System.arraycopy(additional, 0, all, defaults.length, additional.length);
                return all;
            }
        };
    }

    private static X509TrustManager manager(KeyStore keys) throws Exception {
        TrustManagerFactory factory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        factory.init(keys);
        for (TrustManager manager : factory.getTrustManagers()) {
            if (manager instanceof X509TrustManager) return (X509TrustManager) manager;
        }
        throw new CertificateException("X509 trust manager unavailable");
    }
}

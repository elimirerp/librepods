package me.kavishdevar.librepods.findmy.anisette;

import java.io.FileInputStream;
import java.net.URL;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/** Standalone JVM regression. Arguments are the shipped public root and a synthetic self-signed cert. */
public final class AppleProvisioningTlsRegression {
    public static void main(String[] args) throws Exception {
        X509TrustManager manager;
        try (FileInputStream input = new FileInputStream(args[0])) {
            manager = AppleProvisioningTls.trustManager(input);
        }
        X509Certificate root = read(args[0]);
        manager.checkServerTrusted(new X509Certificate[]{root}, "RSA");
        check(manager.getAcceptedIssuers().length > 1, "platform trust was replaced");
        check(AppleProvisioningTls.appliesTo(new URL("https://gsa.apple.com/grandslam/test")), "GSA trust unavailable");
        check(!AppleProvisioningTls.appliesTo(new URL("https://gsa.apple.com.example.invalid/")), "host suffix accepted");
        check(!AppleProvisioningTls.appliesTo(new URL("https://example.invalid/")), "unrelated host altered");
        check(!AppleProvisioningTls.appliesTo(new URL("http://gsa.apple.com/")), "plaintext URL accepted");
        try {
            manager.checkServerTrusted(new X509Certificate[]{read(args[1])}, "RSA");
            throw new AssertionError("untrusted self-signed certificate accepted");
        } catch (CertificateException expected) { }
        try (FileInputStream input = new FileInputStream(args[1])) {
            try {
                AppleProvisioningTls.trustManager(input);
                throw new AssertionError("wrong bundled root accepted");
            } catch (CertificateException expected) { }
        }
        System.out.println("Apple provisioning TLS regression passed");
    }
    private static X509Certificate read(String path) throws Exception {
        try (FileInputStream input = new FileInputStream(path)) {
            return (X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(input);
        }
    }
    private static void check(boolean value, String message) {
        if (!value) throw new AssertionError(message);
    }
}

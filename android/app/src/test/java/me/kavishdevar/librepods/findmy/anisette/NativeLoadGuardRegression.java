package me.kavishdevar.librepods.findmy.anisette;

/** Standalone JVM regression: a caught linker error must not mark the device as crashed. */
public final class NativeLoadGuardRegression {
    private static final class MemoryStore implements NativeLoadGuard.Store {
        String value;
        public String get() { return value; }
        public void set(String attempt) { value = attempt; }
        public void clear() { value = null; }
    }

    public static void main(String[] args) throws Exception {
        MemoryStore store = new MemoryStore();
        NativeLoadGuard guard = new NativeLoadGuard(store, "test-attempt");
        try {
            guard.around(() -> { throw new UnsatisfiedLinkError("synthetic linker failure"); });
            throw new AssertionError("linker failure swallowed");
        } catch (UnsatisfiedLinkError expected) {
            check(store.value == null, "Java linker error retained crash marker");
            check(!guard.previousAttemptCrashed(), "retry refused after Java linker error");
        }
        check(guard.around(() -> true), "successful load did not return");
        check(store.value == null, "successful load retained marker");
        store.set("test-attempt");
        check(guard.previousAttemptCrashed(), "unfinished native load was not detected");
        System.out.println("Native load guard regression passed");
    }

    private static void check(boolean value, String message) {
        if (!value) throw new AssertionError(message);
    }
}

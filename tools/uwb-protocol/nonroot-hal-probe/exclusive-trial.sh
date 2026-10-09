#!/system/bin/sh
# Invoke through adb shell after pushing the compiled dex to this path.
# A successful preflight must report state 12 (ON); the trial restores ON.
set -eu
export CLASSPATH=/data/local/tmp/librepods-nonroot-hal.dex
preflight=$(app_process /system/bin NonRootHalProbe status)
printf '%s\n' "$preflight"
case "$preflight" in
  *'"state":12,'*) ;;
  *) echo 'Refusing trial: initial adapter must be fully ON.' >&2; exit 2 ;;
esac
# Do not toggle Bluetooth again on a device with a known callback restriction.
app_process /system/bin NonRootHalProbe eligible
old_scan=$(settings get global ble_scan_always_enabled)
restore() {
  trap - EXIT HUP INT TERM
  timeout -s KILL 5 app_process /system/bin NonRootHalProbe shutdown || true
  if [ "$old_scan" = null ]; then
    settings delete global ble_scan_always_enabled >/dev/null 2>&1 || true
  else
    settings put global ble_scan_always_enabled "$old_scan" || true
  fi
  cmd bluetooth_manager enable >/dev/null 2>&1 || true
  sleep 2
  app_process /system/bin NonRootHalProbe status || true
}
trap restore EXIT HUP INT TERM
settings put global ble_scan_always_enabled 0
app_process /system/bin NonRootHalProbe hold-off
count=0
while [ "$count" -lt 10 ]; do
  state=$(app_process /system/bin NonRootHalProbe status)
  case "$state" in
    *'"state":10,'*) break ;;
  esac
  count=$((count + 1))
  sleep 1
done
timeout -s KILL 15 app_process /system/bin NonRootHalProbe exclusive

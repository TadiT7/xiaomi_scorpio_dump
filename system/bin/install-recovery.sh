#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29398350:f0aeb5e0001fca5f97d975c7230a808a52fa24f2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24638794:a6c74294ffbcce9f75ca781207aed1e08210575f EMMC:/dev/block/bootdevice/by-name/recovery f0aeb5e0001fca5f97d975c7230a808a52fa24f2 29398350 a6c74294ffbcce9f75ca781207aed1e08210575f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

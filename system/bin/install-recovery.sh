#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29357390:01c4c3910ed9140bc12359c1dca31ca67a1fbeb6; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24618314:7fb222e3ead711aaea8419db729e930aa69c9ba6 EMMC:/dev/block/bootdevice/by-name/recovery 01c4c3910ed9140bc12359c1dca31ca67a1fbeb6 29357390 7fb222e3ead711aaea8419db729e930aa69c9ba6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

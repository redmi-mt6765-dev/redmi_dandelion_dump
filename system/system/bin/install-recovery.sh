#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:aa082cdd4af728214f2735b118edbe9dbf640f2b; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:67108864:a0105f81abe617c4cbb83a01a34ec3c989e348ad \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:67108864:aa082cdd4af728214f2735b118edbe9dbf640f2b && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

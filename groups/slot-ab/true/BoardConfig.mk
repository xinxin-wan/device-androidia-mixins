AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := \
    boot \
    system
{{^dynamic-partitions}}
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
{{/dynamic-partitions}}
TARGET_NO_RECOVERY := true

BOARD_SLOT_AB_ENABLE := true
BOARD_KERNEL_CMDLINE += rootfstype=ext4
BOARD_SEPOLICY_DIRS += $(INTEL_PATH_SEPOLICY)/slot-ab

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    FILESYSTEM_TYPE_vendor={{system_fs}} \
    POSTINSTALL_OPTIONAL_vendor=false \
    POSTINSTALL_PATH_vendor=bin/postinstall

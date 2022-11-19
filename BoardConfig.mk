#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Platform
DEVICE_CODENAME := a6plte
DEVICE_PATH := device/samsung/$(DEVICE_CODENAME)
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
TARGET_SOC := sdm450
TARGET_BOOTLOADER_BOARD_NAME := msm8953
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_USES_UEFI := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := $(TARGET_CPU_VARIANT)
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := $(PRODUCT_PLATFORM)
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := $(TARGET_BOOTLOADER_BOARD_NAME)
QCOM_BOARD_PLATFORMS += $(TARGET_BOARD_PLATFORM)

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk

TARGET_KERNEL_ARCH := $(TARGET_ARCH)
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/$(BOARD_KERNEL_IMAGE_NAME)
#BOARD_INCLUDE_RECOVERY_DTBO := true
#BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

BOARD_KERNEL_CMDLINE := \
    console=null \
    androidboot.hardware=qcom \
    msm_rtb.filter=0x237 \
    ehci-hcd.park=3 \
    androidboot.bootdevice=7824900.sdhci \
    lpm_levels.sleep_disabled=1
#
    #androidboot.memcg=1 \
    video=vfb:640x400,bpp=32,memsize=3072000 \
    msm_rtb.filter=0x237 \
    service_locator.enable=1 \
    androidboot.usbcontroller=a600000.dwc3 \
    swiotlb=0 \
    loop.max_part=7 \
    cgroup.memory=nokmem,nosocket \
    firmware_class.path=/vendor/firmware_mnt/image \
    pcie_ports=compat \
    loop.max_part=7 \
    iptable_raw.raw_before_defrag=1 \
    ip6table_raw.raw_before_defrag=1 \
    printk.devkmsg=on
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := \
    --board SRPRB26B003RU \
    --hash_type sha1 \
    --kernel_offset 0x00008000 \
    --ramdisk_offset 0x02000000 \
    --second_offset 0x00F00000 \
    --tags_offset 0x01E00000 \
    --header_version 0
BOARD_ROOT_EXTRA_FOLDERS := \
    carrier \
    efs \
    omr \
    optics \
    prism \
    spu

# Android Verified Boot
BOARD_AVB_ENABLE := false

# Samsung TS drivers (a52sxq)
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
#TW_LOAD_VENDOR_MODULES := "sec_cmd.ko sec_common_fn.ko sec_secure_touch.ko sec_tclm_v2.ko sec_tsp_dumpkey.ko sec_tsp_log.ko stm_ts.ko"

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_DTBOIMG_PARTITION_SIZE := 2097152
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3313500160
BOARD_VENDORIMAGE_PARTITION_SIZE := 503316480
BOARD_ODMIMAGE_PARTITION_SIZE := 377487360
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572800
BOARD_HIDDENIMAGE_PARTITION_SIZE := 5242880
BOARD_OMRIMAGE_PARTITION_SIZE := 20971520
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57641250816

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Dynamic partitions
#BOARD_SUPER_PARTITION_SIZE := 10643046400
#BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
#BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 10638852096
#BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system odm product vendor

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_ODM := odm
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_PRODUCT := product
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Encryption
BOARD_USES_QCOM_DECRYPTION := true
#BOARD_USES_QCOM_FBE_DECRYPTION := true
BOARD_USES_METADATA_PARTITION := true

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# TWRP specific build flags
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
#TW_MAX_BRIGHTNESS := 486
#TW_DEFAULT_BRIGHTNESS := 128
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone23/temp"
#TW_Y_OFFSET := 89
#TW_H_OFFSET := -89
RECOVERY_SDCARD_ON_DATA := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BACKUP_EXCLUSIONS := /data/fonts
TW_EXTRA_LANGUAGES := true
#TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_NTFS_3G := true

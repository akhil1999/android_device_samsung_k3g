USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/k3g/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := burgirnt
TARGET_SOC := exynos5422
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := universal5422

#KERNEL
TARGET_PREBUILT_KERNEL := device/samsung/k3g/kernel #(NOTE: Even if this is declared, kernel built from source is given priority)
TARGET_KERNEL_CONFIG := exynos5422-k3g_00_defconfig
TARGET_PREBUILT_DT := device/samsung/k3g/dt
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dt $(TARGET_PREBUILT_DT)

#find the blocks size of each partition from 'cat /proc/partitions', blocks * 1024 (block_size) = partition size in bytes
#BOOT 13MB, RECOVERY 15MB, SYSTEM 2500MB, USERDATA 12164MB
BOARD_BOOTMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2621440000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12754878464
BOARD_FLASH_BLOCK_SIZE := 131072

#For power button to confirm selections in recovery.
BOARD_HAS_NO_SELECT_BUTTON := true

#Embedded-System Graphics Library Config
BOARD_EGL_CFG := device/samsung/k3g/config/egl/egl.cfg

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/samsung/k3g/sepolicy
    
#Screen
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080   

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/nougat
TARGET_KERNEL_APPEND_DTB := true
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
LZMA_RAMDISK_TARGETS := recovery
TARGET_KERNEL_CONFIG := LS5015_defconfig
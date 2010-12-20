LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CFLAGS := -Os

LOCAL_SRC_FILES := initmap.c inodemap.c inodes.c mkfs.c

LOCAL_MODULE := libsteam_mkfs_jfs
LOCAL_MODULE_TAGS := eng

LOCAL_STATIC_LIBRARIES := libsteam_fs libsteam_fs_uuid

LOCAL_C_INCLUDES := bootable/steam/jfsutils \
									  bootable/steam/jfsutils/include \
										bootable/steam/jfsutils/libfs \
										bootable/steam/jfsutils/uuid

LOCAL_CFLAGS := -Os -g -W -Wall \
	-DHAVE_DIRENT_H \
	-DHAVE_ERRNO_H \
	-DHAVE_INTTYPES_H \
	-DHAVE_LINUX_FD_H \
	-DHAVE_NETINET_IN_H \
	-DHAVE_SETJMP_H \
	-DHAVE_SYS_IOCTL_H \
	-DHAVE_SYS_MMAN_H \
	-DHAVE_SYS_MOUNT_H \
	-DHAVE_SYS_PRCTL_H \
	-DHAVE_SYS_RESOURCE_H \
	-DHAVE_SYS_SELECT_H \
	-DHAVE_SYS_STAT_H \
	-DHAVE_SYS_TYPES_H \
	-DHAVE_STDLIB_H \
	-DHAVE_UNISTD_H \
	-DHAVE_UTIME_H \
	-DHAVE_STRDUP \
	-DHAVE_MMAP \
	-DHAVE_GETPAGESIZE \
	-DHAVE_LSEEK64 \
	-DHAVE_LSEEK64_PROTOTYPE \
	-DHAVE_EXT2_IOCTLS \
	-DHAVE_TYPE_SSIZE_T \
	-DHAVE_INTPTR_T \
	-DENABLE_HTREE=1 \
	-DONE_FILESET_PER_AGGR \
	-Dmain=steam_mkfs_jfs_main

include $(BUILD_STATIC_LIBRARY)


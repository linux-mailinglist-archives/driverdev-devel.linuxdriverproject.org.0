Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 960E4B6D2E
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 22:01:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98BF986905;
	Wed, 18 Sep 2019 20:01:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lb5dQhycP99x; Wed, 18 Sep 2019 20:01:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5A36186816;
	Wed, 18 Sep 2019 20:00:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 174B41BF3A0
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:00:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EF76784E38
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 20:00:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L4xVOsTKzPgF for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 19:59:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3795984483
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 19:59:57 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id x15so456550pgg.8
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 12:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mbxEb+9kxdnTL4XBVdd68mZHs3mv8QCy1b4DKg5rlK8=;
 b=mp/f2G2WMNkC1/uoHhSX9mGHfPXK8hrq1p0y15fO1RLMtIAJlXdKnglmX7Dm+PsFO+
 1s+rX4rMdUz02t18Xaj/i6TJGZxaB0tRlvWvZ1wlKDKH6VVgX9G0zUh02wve78QC//YH
 Ny7n4Rz2+wmYwrRjmOGn/Pp2iF7jOvwwn/D/UfdEuBAO9doYpgXqeP/HPB10kPIvrNX+
 CEvyROYp4RuJCYTJaosvMuZ3FTFRqQTG5Z8VzciSQZnidvjGM1TWJ8cUkyAPgn3mJmHw
 FZvFAZYa5FSzEWHZloMbZ5SRjk5JpuqVSNc+dKxAN9ixajxJ5KRg5XwNFTOh8uqwPy8d
 ASoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mbxEb+9kxdnTL4XBVdd68mZHs3mv8QCy1b4DKg5rlK8=;
 b=fL+Qq7JYmpS8eEwszPFWeVtGEFLPFCfkUTTfuoZX0hkDwXdJt9NhoMMvrEWQJpUqid
 qEaKt7p0PjP15hzYg7gm7nxws2pn/g8eqKL+nSVpb24g8dz+z+Hj7Ppjx7W3HCIvXvmT
 TK/33rj4vubH2fNML8S+toCFpjvRbGcSlVA/tK8aOYZQ2kcUVKq1Z7SjEp4etNmAkHNG
 REbGbsDkektZIpCv7hG9BBnDWPOCjbE7rJ52xqQRqNWvGsFkfUZxrTdUpGZhc/z30x85
 fNCOj5OQth/xiE/VBGBqsO75tBq02lkgUOThmhwSYuEEFB38XmfZ+s17kNhi3uG1pjBu
 ctyQ==
X-Gm-Message-State: APjAAAVT9Vyk3w7e+yLB/bB7d7gWy0+tZ4Yn7HFDp6zjE7ysYPWkUj1k
 KjitNGriZS9nRij4HMmOYzc=
X-Google-Smtp-Source: APXvYqyIFCmFhajRXw7oZXACmXE81aCBSkix5nTrrvV2+RdINpuMqWUTHzH63TxLSvgi1ioM7+vsvQ==
X-Received: by 2002:a63:5222:: with SMTP id g34mr5222349pgb.405.1568836794754; 
 Wed, 18 Sep 2019 12:59:54 -0700 (PDT)
Received: from arter97-x1.inha.ac.kr ([175.210.149.241])
 by smtp.gmail.com with ESMTPSA id 1sm7521052pff.39.2019.09.18.12.59.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 12:59:53 -0700 (PDT)
From: Park Ju Hyung <qkrwngud825@gmail.com>
To: gregkh@linuxfoundation.org, alexander.levin@microsoft.com,
 namjae.jeon@samsung.com, sergey.senozhatsky.work@gmail.com,
 sergey.senozhatsky@gmail.com, sj1557.seo@samsung.com,
 valdis.kletnieks@vt.edu
Subject: [PATCH] staging: exfat: rebase to sdFAT v2.2.0
Date: Thu, 19 Sep 2019 04:59:20 +0900
Message-Id: <20190918195920.25210-1-qkrwngud825@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190828160817.6250-1-gregkh@linuxfoundation.org>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com, qkrwngud825@gmail.com,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The new sdFAT driver base brings many improvements to the table.
Quoting Namjae Jeon:

======================================================================
1. sdfat has been refactored to improve compatibility, readability and
to be linux friendly.(included support mass storages larger than 2TB.)

2. sdfat has been optimized for the performance of SD-cards.
  - Support SD-card friendly block allocation and delayed allocation
    for vfat-fs only.
  - Support aligned_mpage_write for both vfat-fs and exfat-fs

3. sdfat has been optimized for the performance of general operations
    like create,lookup and readdir.

4. Fix many critical and minor bugs
 - Handle many kinds of error conditions gracefully to prevent panic.
 - Fix critical bugs related to rmdir, truncate behavior and so on...

5. Fix NLS functions
======================================================================

sdFAT v2.2.0 (from N970FXXU1ASHE) was forked and then cleaned up to better
suit mainline's standards:

 * Remove fat12/16/32 handlings and rename to exFAT.
 * Remove older kernel compatibilities.
 * Remove Samsung's userspace-specific code (e.g. defrag).
 * Fix compilation warnings on modern compiler.
 * Remove unused functions.
 * Rename non-static functions for avoiding global symbol table pollutions.
 * Declare functions as static whenever possible.
 * Fix checkpatch.pl errors.
 * Remove aligned mpage write for portability.

Full rebase history can be found on:
https://github.com/arter97/exfat-linux/commits/for-next

Signed-off-by: Park Ju Hyung <qkrwngud825@gmail.com>
---
 drivers/staging/exfat/Kconfig        |   88 +-
 drivers/staging/exfat/Makefile       |   11 +-
 drivers/staging/exfat/TODO           |   15 +-
 drivers/staging/exfat/api.h          |  265 ++
 drivers/staging/exfat/blkdev.c       |  330 +++
 drivers/staging/exfat/cache.c        |  785 +++++
 drivers/staging/exfat/config.h       |   32 +
 drivers/staging/exfat/core.c         | 3169 ++++++++++++++++++++
 drivers/staging/exfat/core.h         |  149 +
 drivers/staging/exfat/core_exfat.c   | 1485 ++++++++++
 drivers/staging/exfat/exfat.h        | 1261 +++-----
 drivers/staging/exfat/exfat_blkdev.c |  136 -
 drivers/staging/exfat/exfat_cache.c  |  724 -----
 drivers/staging/exfat/exfat_core.c   | 3701 -----------------------
 drivers/staging/exfat/exfat_fs.h     |  398 +++
 drivers/staging/exfat/exfat_nls.c    |  404 ---
 drivers/staging/exfat/exfat_super.c  | 4049 --------------------------
 drivers/staging/exfat/exfat_upcase.c |  740 -----
 drivers/staging/exfat/extent.c       |  329 +++
 drivers/staging/exfat/fatent.c       |  113 +
 drivers/staging/exfat/misc.c         |  356 +++
 drivers/staging/exfat/nls.c          |  323 ++
 drivers/staging/exfat/super.c        | 3168 ++++++++++++++++++++
 drivers/staging/exfat/upcase.h       |  394 +++
 drivers/staging/exfat/xattr.c        |   76 +
 25 files changed, 11777 insertions(+), 10724 deletions(-)
 create mode 100644 drivers/staging/exfat/api.h
 create mode 100644 drivers/staging/exfat/blkdev.c
 create mode 100644 drivers/staging/exfat/cache.c
 create mode 100644 drivers/staging/exfat/config.h
 create mode 100644 drivers/staging/exfat/core.c
 create mode 100644 drivers/staging/exfat/core.h
 create mode 100644 drivers/staging/exfat/core_exfat.c
 delete mode 100644 drivers/staging/exfat/exfat_blkdev.c
 delete mode 100644 drivers/staging/exfat/exfat_cache.c
 delete mode 100644 drivers/staging/exfat/exfat_core.c
 create mode 100644 drivers/staging/exfat/exfat_fs.h
 delete mode 100644 drivers/staging/exfat/exfat_nls.c
 delete mode 100644 drivers/staging/exfat/exfat_super.c
 delete mode 100644 drivers/staging/exfat/exfat_upcase.c
 create mode 100644 drivers/staging/exfat/extent.c
 create mode 100644 drivers/staging/exfat/fatent.c
 create mode 100644 drivers/staging/exfat/misc.c
 create mode 100644 drivers/staging/exfat/nls.c
 create mode 100644 drivers/staging/exfat/super.c
 create mode 100644 drivers/staging/exfat/upcase.h
 create mode 100644 drivers/staging/exfat/xattr.c

diff --git a/drivers/staging/exfat/Kconfig b/drivers/staging/exfat/Kconfig
index 290dbfc7ace1..5be23d429133 100644
--- a/drivers/staging/exfat/Kconfig
+++ b/drivers/staging/exfat/Kconfig
@@ -2,48 +2,72 @@ config EXFAT_FS
 	tristate "exFAT fs support"
 	depends on BLOCK
 	select NLS
+	select NLS_UTF8
+	select NLS_CODEPAGE_437
+	select NLS_ISO8859_1
 	help
-	  This adds support for the exFAT file system.
+	  If you want to use the exFAT file system, then you must say Y or M
+	  here to inlucde exFAT support. exFAT supports winnt short-name rule.
+	  (winnt: emulate the Windows NT rule for display/create.)
 
-config EXFAT_DONT_MOUNT_VFAT
-	bool "Prohibit mounting of fat/vfat filesysems by exFAT"
-	depends on EXFAT_FS
-	default y
-	help
-	  By default, the exFAT driver will only mount exFAT filesystems, and refuse
-	  to mount fat/vfat filesystems.  Set this to 'n' to allow the exFAT driver
-	  to mount these filesystems.
-
-config EXFAT_DISCARD
-	bool "enable discard support"
-	depends on EXFAT_FS
-	default y
-
-config EXFAT_DELAYED_SYNC
-	bool "enable delayed sync"
-	depends on EXFAT_FS
-	default n
-
-config EXFAT_KERNEL_DEBUG
-	bool "enable kernel debug features via ioctl"
-	depends on EXFAT_FS
-	default n
-
-config EXFAT_DEBUG_MSG
-	bool "print debug messages"
-	depends on EXFAT_FS
-	default n
+	  To compile this as a module, choose M here: the module will be called
+	  exfat.
 
+if EXFAT_FS
 config EXFAT_DEFAULT_CODEPAGE
 	int "Default codepage for exFAT"
 	default 437
-	depends on EXFAT_FS
 	help
 	  This option should be set to the codepage of your exFAT filesystems.
 
 config EXFAT_DEFAULT_IOCHARSET
 	string "Default iocharset for exFAT"
 	default "utf8"
-	depends on EXFAT_FS
 	help
-	  Set this to the default input/output character set you'd like exFAT to use.
+	  Set this to the default input/output character set you'd
+	  like exFAT to use. It should probably match the character set
+	  that most of your exFAT filesystems use, and can be overridden
+	  with the "iocharset" mount option for exFAT filesystems.
+
+config EXFAT_VIRTUAL_XATTR
+	bool "Virtual xattr support for exFAT"
+	default y
+	help
+	  To support virtual xattr.
+
+config EXFAT_VIRTUAL_XATTR_SELINUX_LABEL
+	string "Default string for SELinux label"
+	default "u:object_r:exfat:s0"
+	depends on EXFAT_VIRTUAL_XATTR
+	help
+	  Set this to the default string for SELinux label.
+	  Support for "u:object_r:exfat:s0" was added in Android Pie,
+	  if you're running Oreo or lower, use "u:object_r:vfat:s0" instead.
+
+config EXFAT_DEBUG
+	bool "enable debug features"
+
+if EXFAT_DEBUG
+
+config EXFAT_DBG_IOCTL
+	bool "enable debug-ioctl features"
+	depends on EXFAT_DEBUG
+
+config EXFAT_DBG_MSG
+	bool "enable debug messages"
+	depends on EXFAT_DEBUG
+
+config EXFAT_DBG_BUGON
+	bool "enable strict BUG_ON() for debugging"
+	depends on EXFAT_DEBUG
+
+config EXFAT_DBG_WARNON
+	bool "enable strict WARN_ON() for debugging"
+	depends on EXFAT_DEBUG
+
+endif # if EXFAT_DEBUG
+
+config EXFAT_UEVENT
+	bool "enable uevent"
+
+endif # if EXFAT_FS
diff --git a/drivers/staging/exfat/Makefile b/drivers/staging/exfat/Makefile
index 84944dfbae28..341371018195 100644
--- a/drivers/staging/exfat/Makefile
+++ b/drivers/staging/exfat/Makefile
@@ -1,10 +1,5 @@
-# SPDX-License-Identifier: GPL-2.0
-
 obj-$(CONFIG_EXFAT_FS) += exfat.o
 
-exfat-y :=	exfat_core.o	\
-		exfat_super.o	\
-		exfat_blkdev.o	\
-		exfat_cache.o	\
-		exfat_nls.o	\
-		exfat_upcase.o
+exfat-objs := \
+	super.o core.o core_exfat.o blkdev.o fatent.o \
+	cache.o nls.o misc.o extent.o xattr.o
diff --git a/drivers/staging/exfat/TODO b/drivers/staging/exfat/TODO
index a3eb282f9efc..0364e56cbe05 100644
--- a/drivers/staging/exfat/TODO
+++ b/drivers/staging/exfat/TODO
@@ -1,12 +1,5 @@
-exfat_core.c - ffsReadFile - the goto err_out seem to leak a brelse().
-same for ffsWriteFile.
+blkdev.c:
+    Remove blk_flush_plug() and fix with proper APIs.
 
-exfat_core.c - fs_sync(sb,0) all over the place looks fishy as hell.
-There's only one place that calls it with a non-zero argument.
-
-ffsTruncateFile -  if (old_size <= new_size) {
-That doesn't look right. How did it ever work? Are they relying on lazy
-block allocation when actual writes happen? If nothing else, it never
-does the 'fid->size = new_size' and do the inode update....
-
-ffsSetAttr() is just dangling in the breeze, not wired up at all...
+mpage.c:
+    Re-evaluate aligned mpage write.
diff --git a/drivers/staging/exfat/api.h b/drivers/staging/exfat/api.h
new file mode 100644
index 000000000000..5b13c0a1aab1
--- /dev/null
+++ b/drivers/staging/exfat/api.h
@@ -0,0 +1,265 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ */
+
+#ifndef _EXFAT_API_H
+#define _EXFAT_API_H
+
+#include "config.h"
+#include "exfat_fs.h"
+
+/* cache size (in number of sectors)                */
+/* (should be an exponential value of 2)            */
+#define FAT_CACHE_SIZE          128
+#define FAT_CACHE_HASH_SIZE     64
+#define BUF_CACHE_SIZE          256
+#define BUF_CACHE_HASH_SIZE     64
+
+/* Read-ahead related                                */
+/* First config vars. should be pow of 2             */
+#define FCACHE_MAX_RA_SIZE	(PAGE_SIZE)
+#define DCACHE_MAX_RA_SIZE	(128*1024)
+
+/* type values */
+#define TYPE_UNUSED             0x0000
+#define TYPE_DELETED            0x0001
+#define TYPE_INVALID            0x0002
+#define TYPE_CRITICAL_PRI       0x0100
+#define TYPE_BITMAP             0x0101
+#define TYPE_UPCASE             0x0102
+#define TYPE_VOLUME             0x0103
+#define TYPE_DIR                0x0104
+#define TYPE_FILE               0x011F
+#define TYPE_SYMLINK            0x015F
+#define TYPE_CRITICAL_SEC       0x0200
+#define TYPE_STREAM             0x0201
+#define TYPE_EXTEND             0x0202
+#define TYPE_ACL                0x0203
+#define TYPE_BENIGN_PRI         0x0400
+#define TYPE_GUID               0x0401
+#define TYPE_PADDING            0x0402
+#define TYPE_ACLTAB             0x0403
+#define TYPE_BENIGN_SEC         0x0800
+#define TYPE_ALL                0x0FFF
+
+/* eio values */
+#define EXFAT_EIO_NONE		(0x00000000)
+#define EXFAT_EIO_READ		(0x00000001)
+#define EXFAT_EIO_WRITE		(0x00000002)
+#define EXFAT_EIO_BDI		(0x00000004)
+
+/* modes for volume allocation unit status */
+#define VOL_AU_STAT_TOTAL	(0)
+#define VOL_AU_STAT_CLEAN	(1)
+#define VOL_AU_STAT_FULL	(2)
+
+/* DOS name structure */
+typedef struct {
+	u8       name[DOS_NAME_LENGTH];
+	u8       name_case;
+} DOS_NAME_T;
+
+/* unicode name structure */
+typedef struct {
+	u16      name[MAX_NAME_LENGTH+3]; /* +3 for null and for converting */
+	u16      name_hash;
+	u8       name_len;
+} UNI_NAME_T;
+
+/* should be merged it to DATE_TIME_T */
+typedef struct {
+	u16      sec;        /* 0 ~ 59               */
+	u16      min;        /* 0 ~ 59               */
+	u16      hour;       /* 0 ~ 23               */
+	u16      day;        /* 1 ~ 31               */
+	u16      mon;        /* 1 ~ 12               */
+	u16      year;       /* 0 ~ 127 (since 1980) */
+} TIMESTAMP_T;
+
+
+typedef struct {
+	u16      Year;
+	u16      Month;
+	u16      Day;
+	u16      Hour;
+	u16      Minute;
+	u16      Second;
+	u16      MilliSecond;
+} DATE_TIME_T;
+
+typedef struct {
+	u64      Offset;    // start sector number of the partition
+	u64      Size;      // in sectors
+} PART_INFO_T;
+
+typedef struct {
+	u32      SecSize;    // sector size in bytes
+	u64      DevSize;    // block device size in sectors
+} DEV_INFO_T;
+
+typedef struct {
+	u32      ClusterSize;
+	u32      NumClusters;
+	u32      FreeClusters;
+	u32      UsedClusters;
+} VOL_INFO_T;
+
+/* directory structure */
+typedef struct {
+	u32      dir;
+	u32      size;
+	u8       flags;
+} CHAIN_T;
+
+/* hint structure */
+typedef struct {
+	u32      clu;
+	union {
+		u32 off;     // cluster offset
+		s32 eidx;    // entry index
+	};
+} HINT_T;
+
+typedef struct {
+	spinlock_t cache_lru_lock;
+	struct list_head cache_lru;
+	s32 nr_caches;
+	u32 cache_valid_id;	// for avoiding the race between alloc and free
+} EXTENT_T;
+
+/* first empty entry hint information */
+typedef struct {
+	s32 eidx;		// entry index of a directory
+	s32 count;		// count of continuous empty entry
+	CHAIN_T cur;		// the cluster that first empty slot exists in
+} HINT_FEMP_T;
+
+/* file id structure */
+typedef struct {
+	CHAIN_T dir;
+	s32 entry;
+	u32 type;
+	u32 attr;
+	u32 start_clu;
+	u64 size;
+	u8  flags;
+	u8  reserved[3];	// padding
+	u32 version;		// the copy of low 32bit of i_version to check the validation of hint_stat
+	s64 rwoffset;		// file offset or dentry index for readdir
+	EXTENT_T extent;	// extent cache for a file
+	HINT_T	hint_bmap;	// hint for cluster last accessed
+	HINT_T	hint_stat;	// hint for entry index we try to lookup next time
+	HINT_FEMP_T hint_femp;	// hint for first empty entry
+} FILE_ID_T;
+
+typedef struct {
+	s8 *lfn;
+	s8 *sfn;
+	s32 lfnbuf_len;	//usally MAX_UNINAME_BUF_SIZE
+	s32 sfnbuf_len; //usally MAX_DOSNAME_BUF_SIZE, used only for vfat, not for exfat
+} DENTRY_NAMEBUF_T;
+
+typedef struct {
+	u32 Attr;
+	u64 Size;
+	u32 NumSubdirs;
+	DATE_TIME_T CreateTimestamp;
+	DATE_TIME_T ModifyTimestamp;
+	DATE_TIME_T AccessTimestamp;
+	DENTRY_NAMEBUF_T NameBuf;
+} DIR_ENTRY_T;
+
+/* cache information */
+typedef struct __cache_entry {
+	struct __cache_entry *next;
+	struct __cache_entry *prev;
+	struct {
+		struct __cache_entry *next;
+		struct __cache_entry *prev;
+	} hash;
+	u64 sec;
+	u32 flag;
+	struct buffer_head   *bh;
+} cache_ent_t;
+
+typedef struct {
+	s32      (*alloc_cluster)(struct super_block *, u32, CHAIN_T *, s32);
+	s32      (*free_cluster)(struct super_block *, CHAIN_T *, s32);
+	s32      (*count_used_clusters)(struct super_block *, u32 *);
+	s32      (*init_dir_entry)(struct super_block *, CHAIN_T *, s32, u32, u32, u64);
+	s32      (*init_ext_entry)(struct super_block *, CHAIN_T *, s32, s32, UNI_NAME_T *, DOS_NAME_T *);
+	s32      (*find_dir_entry)(struct super_block *, FILE_ID_T *, CHAIN_T *, UNI_NAME_T *, s32, DOS_NAME_T *, u32);
+	s32      (*delete_dir_entry)(struct super_block *, CHAIN_T *, s32, s32, s32);
+	void     (*get_uniname_from_ext_entry)(struct super_block *, CHAIN_T *, s32, u16 *);
+	s32      (*count_ext_entries)(struct super_block *, CHAIN_T *, s32, DENTRY_T *);
+	s32      (*calc_num_entries)(UNI_NAME_T *);
+	s32      (*check_max_dentries)(FILE_ID_T *);
+	u32      (*get_entry_type)(DENTRY_T *);
+	void     (*set_entry_type)(DENTRY_T *, u32);
+	u32      (*get_entry_attr)(DENTRY_T *);
+	void     (*set_entry_attr)(DENTRY_T *, u32);
+	u8       (*get_entry_flag)(DENTRY_T *);
+	void     (*set_entry_flag)(DENTRY_T *, u8);
+	u32      (*get_entry_clu0)(DENTRY_T *);
+	void     (*set_entry_clu0)(DENTRY_T *, u32);
+	u64      (*get_entry_size)(DENTRY_T *);
+	void     (*set_entry_size)(DENTRY_T *, u64);
+	void     (*get_entry_time)(DENTRY_T *, TIMESTAMP_T *, u8);
+	void     (*set_entry_time)(DENTRY_T *, TIMESTAMP_T *, u8);
+	u32      (*get_au_stat)(struct super_block *, s32);
+} FS_FUNC_T;
+
+typedef struct __FS_INFO_T {
+	s32	 bd_opened;              // opened or not
+	u32      vol_id;                 // volume serial number
+	u64      num_sectors;            // num of sectors in volume
+	u32      num_clusters;           // num of clusters in volume
+	u32      cluster_size;           // cluster size in bytes
+	u32      cluster_size_bits;
+	u32      sect_per_clus;        // cluster size in sectors
+	u32      sect_per_clus_bits;
+	u64      FAT1_start_sector;      // FAT1 start sector
+	u64      FAT2_start_sector;      // FAT2 start sector
+	u64      root_start_sector;      // root dir start sector
+	u64      data_start_sector;      // data area start sector
+	u32      num_FAT_sectors;        // num of FAT sectors
+	u32      root_dir;               // root dir cluster
+	u32      dentries_in_root;       // num of dentries in root dir
+	u32      dentries_per_clu;       // num of dentries per cluster
+	u32      vol_flag;               // volume dirty flag
+	struct buffer_head *pbr_bh;      // buffer_head of PBR sector
+
+	u32      map_clu;                // allocation bitmap start cluster
+	u32      map_sectors;            // num of allocation bitmap sectors
+	struct buffer_head **vol_amap;      // allocation bitmap
+
+	u16      **vol_utbl;               // upcase table
+
+	u32      clu_srch_ptr;           // cluster search pointer
+	u32      used_clusters;          // number of used clusters
+
+	u32      prev_eio;            // block device operation error flag
+
+	FS_FUNC_T   *fs_func;
+
+	s32       reserved_clusters;  // # of reserved clusters (DA)
+	void        *amap;                  // AU Allocation Map
+
+	/* fat cache */
+	struct {
+		cache_ent_t pool[FAT_CACHE_SIZE];
+		cache_ent_t lru_list;
+		cache_ent_t hash_list[FAT_CACHE_HASH_SIZE];
+	} fcache;
+
+	/* meta cache */
+	struct {
+		cache_ent_t pool[BUF_CACHE_SIZE];
+		cache_ent_t lru_list;
+		cache_ent_t keep_list;        // CACHEs in this list will not be kicked by normal lru operations
+		cache_ent_t hash_list[BUF_CACHE_HASH_SIZE];
+	} dcache;
+} FS_INFO_T;
+
+#endif /* _EXFAT_API_H */
diff --git a/drivers/staging/exfat/blkdev.c b/drivers/staging/exfat/blkdev.c
new file mode 100644
index 000000000000..63a92575eb52
--- /dev/null
+++ b/drivers/staging/exfat/blkdev.c
@@ -0,0 +1,330 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ *
+ *  blkdev.c: exFAT Block Device Driver Glue Layer
+ */
+
+#include <linux/blkdev.h>
+#include <linux/log2.h>
+#include <linux/backing-dev.h>
+#include "exfat.h"
+
+s32 exfat_bdev_open_dev(struct super_block *sb)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (fsi->bd_opened)
+		return 0;
+
+	fsi->bd_opened = true;
+	return 0;
+}
+
+s32 exfat_bdev_close_dev(struct super_block *sb)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	fsi->bd_opened = false;
+	return 0;
+}
+
+static inline s32 block_device_ejected(struct super_block *sb)
+{
+	struct inode *bd_inode = sb->s_bdev->bd_inode;
+	struct backing_dev_info *bdi = inode_to_bdi(bd_inode);
+
+	return (bdi->dev == NULL);
+}
+
+s32 exfat_bdev_check_bdi_valid(struct super_block *sb)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (block_device_ejected(sb)) {
+		if (!(fsi->prev_eio & EXFAT_EIO_BDI)) {
+			fsi->prev_eio |= EXFAT_EIO_BDI;
+			exfat_log_msg(sb, KERN_ERR, "%s: block device is "
+				"eliminated.(bdi:%p)", __func__, sb->s_bdi);
+			exfat_debug_warn_on(1);
+		}
+		return -ENXIO;
+	}
+
+	return 0;
+}
+
+
+/* Make a readahead request */
+s32 exfat_bdev_readahead(struct super_block *sb, u64 secno, u64 num_secs)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	u32 sects_per_page = (PAGE_SIZE >> sb->s_blocksize_bits);
+	struct blk_plug plug;
+	u64 i;
+
+	if (!fsi->bd_opened)
+		return -EIO;
+
+	blk_start_plug(&plug);
+	for (i = 0; i < num_secs; i++) {
+		if (i && !(i & (sects_per_page - 1))) {
+#ifdef MODULE
+			/* TODO: fix this by using proper APIs */
+			blk_finish_plug(&plug);
+			blk_start_plug(&plug);
+#else
+			blk_flush_plug(current);
+#endif
+		}
+		sb_breadahead(sb, (sector_t)(secno + i));
+	}
+	blk_finish_plug(&plug);
+
+	return 0;
+}
+
+s32 exfat_bdev_mread(struct super_block *sb, u64 secno, struct buffer_head **bh, u64 num_secs, s32 read)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	u8 blksize_bits = sb->s_blocksize_bits;
+#ifdef CONFIG_EXFAT_DBG_IOCTL
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	long flags = sbi->debug_flags;
+
+	if (flags & EXFAT_DEBUGFLAGS_ERROR_RW)
+		return -EIO;
+#endif /* CONFIG_EXFAT_DBG_IOCTL */
+
+	if (!fsi->bd_opened)
+		return -EIO;
+
+	brelse(*bh);
+
+	if (read)
+		*bh = __bread(sb->s_bdev, (sector_t)secno, num_secs << blksize_bits);
+	else
+		*bh = __getblk(sb->s_bdev, (sector_t)secno, num_secs << blksize_bits);
+
+	/* read successfully */
+	if (*bh)
+		return 0;
+
+	/*
+	 * patch 1.2.4 : reset ONCE warning message per volume.
+	 */
+	if (!(fsi->prev_eio & EXFAT_EIO_READ)) {
+		fsi->prev_eio |= EXFAT_EIO_READ;
+		exfat_log_msg(sb, KERN_ERR, "%s: No bh. I/O error.", __func__);
+		exfat_debug_warn_on(1);
+	}
+
+	return -EIO;
+}
+
+s32 exfat_bdev_mwrite(struct super_block *sb, u64 secno, struct buffer_head *bh, u64 num_secs, s32 sync)
+{
+	u64 count;
+	struct buffer_head *bh2;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+#ifdef CONFIG_EXFAT_DBG_IOCTL
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	long flags = sbi->debug_flags;
+
+	if (flags & EXFAT_DEBUGFLAGS_ERROR_RW)
+		return -EIO;
+#endif /* CONFIG_EXFAT_DBG_IOCTL */
+
+	if (!fsi->bd_opened)
+		return -EIO;
+
+	if (secno == bh->b_blocknr) {
+		set_buffer_uptodate(bh);
+		mark_buffer_dirty(bh);
+		if (sync && (sync_dirty_buffer(bh) != 0))
+			return -EIO;
+	} else {
+		count = num_secs << sb->s_blocksize_bits;
+
+		bh2 = __getblk(sb->s_bdev, (sector_t)secno, count);
+
+		if (!bh2)
+			goto no_bh;
+
+		lock_buffer(bh2);
+		memcpy(bh2->b_data, bh->b_data, count);
+		set_buffer_uptodate(bh2);
+		mark_buffer_dirty(bh2);
+		unlock_buffer(bh2);
+		if (sync && (sync_dirty_buffer(bh2) != 0)) {
+			__brelse(bh2);
+			goto no_bh;
+		}
+		__brelse(bh2);
+	}
+	return 0;
+no_bh:
+	/*
+	 * patch 1.2.4 : reset ONCE warning message per volume.
+	 */
+	if (!(fsi->prev_eio & EXFAT_EIO_WRITE)) {
+		fsi->prev_eio |= EXFAT_EIO_WRITE;
+		exfat_log_msg(sb, KERN_ERR, "%s: No bh. I/O error.", __func__);
+		exfat_debug_warn_on(1);
+	}
+
+	return -EIO;
+}
+
+s32 exfat_bdev_sync_all(struct super_block *sb)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+#ifdef CONFIG_EXFAT_DBG_IOCTL
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	long flags = sbi->debug_flags;
+
+	if (flags & EXFAT_DEBUGFLAGS_ERROR_RW)
+		return -EIO;
+#endif /* CONFIG_EXFAT_DBG_IOCTL */
+
+	if (!fsi->bd_opened)
+		return -EIO;
+
+	return sync_blockdev(sb->s_bdev);
+}
+
+/*
+ *  Sector Read/Write Functions
+ */
+s32 exfat_read_sect(struct super_block *sb, u64 sec, struct buffer_head **bh, s32 read)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	BUG_ON(!bh);
+	if ((sec >= fsi->num_sectors) && (fsi->num_sectors > 0)) {
+		exfat_fs_error_ratelimit(sb,
+				"%s: out of range (sect:%llu)", __func__, sec);
+		return -EIO;
+	}
+
+	if (exfat_bdev_mread(sb, sec, bh, 1, read)) {
+		exfat_fs_error_ratelimit(sb,
+				"%s: I/O error (sect:%llu)", __func__, sec);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+s32 exfat_write_sect(struct super_block *sb, u64 sec, struct buffer_head *bh, s32 sync)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	BUG_ON(!bh);
+	if ((sec >= fsi->num_sectors) && (fsi->num_sectors > 0)) {
+		exfat_fs_error_ratelimit(sb,
+				"%s: out of range (sect:%llu)", __func__, sec);
+		return -EIO;
+	}
+
+	if (exfat_bdev_mwrite(sb, sec, bh, 1, sync)) {
+		exfat_fs_error_ratelimit(sb, "%s: I/O error (sect:%llu)",
+						__func__, sec);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static inline void __blkdev_write_bhs(struct buffer_head **bhs, s32 nr_bhs)
+{
+	s32 i;
+
+	for (i = 0; i < nr_bhs; i++)
+		write_dirty_buffer(bhs[i], WRITE);
+}
+
+static inline s32 __blkdev_sync_bhs(struct buffer_head **bhs, s32 nr_bhs)
+{
+	s32 i, err = 0;
+
+	for (i = 0; i < nr_bhs; i++) {
+		wait_on_buffer(bhs[i]);
+		if (!err && !buffer_uptodate(bhs[i]))
+			err = -EIO;
+	}
+	return err;
+}
+
+static inline s32 __buffer_zeroed(struct super_block *sb, u64 blknr, u64 num_secs)
+{
+	struct buffer_head *bhs[MAX_BUF_PER_PAGE];
+	s32 nr_bhs = MAX_BUF_PER_PAGE;
+	u64 last_blknr = blknr + num_secs;
+	s32 err, i, n;
+	struct blk_plug plug;
+
+	/* Zeroing the unused blocks on this cluster */
+	n = 0;
+	blk_start_plug(&plug);
+	while (blknr < last_blknr) {
+		bhs[n] = sb_getblk(sb, (sector_t)blknr);
+		if (!bhs[n]) {
+			err = -ENOMEM;
+			blk_finish_plug(&plug);
+			goto error;
+		}
+		memset(bhs[n]->b_data, 0, sb->s_blocksize);
+		set_buffer_uptodate(bhs[n]);
+		mark_buffer_dirty(bhs[n]);
+
+		n++;
+		blknr++;
+
+		if (blknr == last_blknr)
+			break;
+
+		if (n == nr_bhs) {
+			__blkdev_write_bhs(bhs, n);
+
+			for (i = 0; i < n; i++)
+				brelse(bhs[i]);
+			n = 0;
+		}
+	}
+	__blkdev_write_bhs(bhs, n);
+	blk_finish_plug(&plug);
+
+	err = __blkdev_sync_bhs(bhs, n);
+	if (err)
+		goto error;
+
+	for (i = 0; i < n; i++)
+		brelse(bhs[i]);
+
+	return 0;
+
+error:
+	EMSG("%s: failed zeroed sect %llu\n", __func__, blknr);
+	for (i = 0; i < n; i++)
+		bforget(bhs[i]);
+
+	return err;
+}
+
+s32 exfat_write_msect_zero(struct super_block *sb, u64 sec, u64 num_secs)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (((sec+num_secs) > fsi->num_sectors) && (fsi->num_sectors > 0)) {
+		exfat_fs_error_ratelimit(sb, "%s: out of range(sect:%llu len:%llu)",
+						__func__, sec, num_secs);
+		return -EIO;
+	}
+
+	/* Just return -EAGAIN if it is failed */
+	if (__buffer_zeroed(sb, sec, num_secs))
+		return -EAGAIN;
+
+	return 0;
+}
diff --git a/drivers/staging/exfat/cache.c b/drivers/staging/exfat/cache.c
new file mode 100644
index 000000000000..c633da83a1c6
--- /dev/null
+++ b/drivers/staging/exfat/cache.c
@@ -0,0 +1,785 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ *
+ *  cache.c: exFAT Cache Manager
+ */
+
+#include <linux/swap.h> /* for mark_page_accessed() */
+#include <asm/unaligned.h>
+#include "exfat.h"
+#include "core.h"
+
+#define DEBUG_HASH_LIST
+#define DEBUG_HASH_PREV	(0xAAAA5555)
+#define DEBUG_HASH_NEXT	(0x5555AAAA)
+
+#define LOCKBIT         (0x01)
+#define DIRTYBIT        (0x02)
+#define KEEPBIT         (0x04)
+
+static cache_ent_t *__fcache_find(struct super_block *sb, u64 sec);
+static cache_ent_t *__fcache_get(struct super_block *sb);
+static void __fcache_insert_hash(struct super_block *sb, cache_ent_t *bp);
+static void __fcache_remove_hash(cache_ent_t *bp);
+
+static cache_ent_t *__dcache_find(struct super_block *sb, u64 sec);
+static cache_ent_t *__dcache_get(struct super_block *sb);
+static void __dcache_insert_hash(struct super_block *sb, cache_ent_t *bp);
+static void __dcache_remove_hash(cache_ent_t *bp);
+
+static void push_to_mru(cache_ent_t *bp, cache_ent_t *list)
+{
+	bp->next = list->next;
+	bp->prev = list;
+	list->next->prev = bp;
+	list->next = bp;
+}
+
+static void push_to_lru(cache_ent_t *bp, cache_ent_t *list)
+{
+	bp->prev = list->prev;
+	bp->next = list;
+	list->prev->next = bp;
+	list->prev = bp;
+}
+
+static void move_to_mru(cache_ent_t *bp, cache_ent_t *list)
+{
+	bp->prev->next = bp->next;
+	bp->next->prev = bp->prev;
+	push_to_mru(bp, list);
+}
+
+static void move_to_lru(cache_ent_t *bp, cache_ent_t *list)
+{
+	bp->prev->next = bp->next;
+	bp->next->prev = bp->prev;
+	push_to_lru(bp, list);
+}
+
+static inline s32 __check_hash_valid(cache_ent_t *bp)
+{
+#ifdef DEBUG_HASH_LIST
+	if ((bp->hash.next == (cache_ent_t *)DEBUG_HASH_NEXT) ||
+		(bp->hash.prev == (cache_ent_t *)DEBUG_HASH_PREV)) {
+		return -EINVAL;
+	}
+#endif
+	if ((bp->hash.next == bp) || (bp->hash.prev == bp))
+		return -EINVAL;
+
+	return 0;
+}
+
+static inline void __remove_from_hash(cache_ent_t *bp)
+{
+	(bp->hash.prev)->hash.next = bp->hash.next;
+	(bp->hash.next)->hash.prev = bp->hash.prev;
+	bp->hash.next = bp;
+	bp->hash.prev = bp;
+#ifdef DEBUG_HASH_LIST
+	bp->hash.next = (cache_ent_t *)DEBUG_HASH_NEXT;
+	bp->hash.prev = (cache_ent_t *)DEBUG_HASH_PREV;
+#endif
+}
+
+/*
+ * Do FAT mirroring (don't sync)
+ * sec: sector No. in FAT1
+ * bh:  bh of sec.
+ */
+static inline s32 __fat_copy(struct super_block *sb, u64 sec, struct buffer_head *bh, int sync)
+{
+#ifdef CONFIG_EXFAT_FAT_MIRRORING
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	u64 sec2;
+
+	if (fsi->FAT2_start_sector != fsi->FAT1_start_sector) {
+		sec2 = sec - fsi->FAT1_start_sector + fsi->FAT2_start_sector;
+		BUG_ON(sec2 != (sec + (u64)fsi->num_FAT_sectors));
+
+		MMSG("BD: fat mirroring (%llu in FAT1, %llu in FAT2)\n", sec, sec2);
+		if (exfat_write_sect(sb, sec2, bh, sync))
+			return -EIO;
+	}
+#else
+	/* DO NOTHING */
+#endif
+	return 0;
+}
+
+/*
+ * returns 1, if bp is flushed
+ * returns 0, if bp is not dirty
+ * returns -1, if error occurs
+ */
+static s32 __fcache_ent_flush(struct super_block *sb, cache_ent_t *bp, u32 sync)
+{
+	struct exfat_sb_info *sbi;
+
+	if (!(bp->flag & DIRTYBIT))
+		return 0;
+
+	sbi = EXFAT_SB(sb);
+	if (sbi->options.delayed_meta) {
+		// Make buffer dirty (XXX: Naive impl.)
+		if (exfat_write_sect(sb, bp->sec, bp->bh, 0))
+			return -EIO;
+
+		if (__fat_copy(sb, bp->sec, bp->bh, 0))
+			return -EIO;
+	}
+
+	bp->flag &= ~(DIRTYBIT);
+
+	if (sync)
+		sync_dirty_buffer(bp->bh);
+
+	return 1;
+}
+
+static s32 __fcache_ent_discard(struct super_block *sb, cache_ent_t *bp)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	__fcache_remove_hash(bp);
+	bp->sec = ~0;
+	bp->flag = 0;
+
+	if (bp->bh) {
+		__brelse(bp->bh);
+		bp->bh = NULL;
+	}
+	move_to_lru(bp, &fsi->fcache.lru_list);
+	return 0;
+}
+
+u8 *exfat_fcache_getblk(struct super_block *sb, u64 sec)
+{
+	cache_ent_t *bp;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	u32 page_ra_count = FCACHE_MAX_RA_SIZE >> sb->s_blocksize_bits;
+
+	bp = __fcache_find(sb, sec);
+	if (bp) {
+		if (exfat_bdev_check_bdi_valid(sb)) {
+			__fcache_ent_flush(sb, bp, 0);
+			__fcache_ent_discard(sb, bp);
+			return NULL;
+		}
+		move_to_mru(bp, &fsi->fcache.lru_list);
+		return bp->bh->b_data;
+	}
+
+	bp = __fcache_get(sb);
+	if (!__check_hash_valid(bp))
+		__fcache_remove_hash(bp);
+
+	bp->sec = sec;
+	bp->flag = 0;
+	__fcache_insert_hash(sb, bp);
+
+	/* Naive FAT read-ahead (increase I/O unit to page_ra_count) */
+	if ((sec & (page_ra_count - 1)) == 0)
+		exfat_bdev_readahead(sb, sec, (u64)page_ra_count);
+
+	/*
+	 * patch 1.2.4 : buffer_head null pointer exception problem.
+	 *
+	 * When exfat_read_sect is failed, fcache should be moved to
+	 * EMPTY hash_list and the first of lru_list.
+	 */
+	if (exfat_read_sect(sb, sec, &(bp->bh), 1)) {
+		__fcache_ent_discard(sb, bp);
+		return NULL;
+	}
+
+	return bp->bh->b_data;
+}
+
+s32 exfat_fcache_modify(struct super_block *sb, u64 sec)
+{
+	cache_ent_t *bp;
+
+	bp = __fcache_find(sb, sec);
+	if (!bp) {
+		exfat_fs_error(sb, "Can`t find fcache (sec 0x%016llx)", sec);
+		return -EIO;
+	}
+
+	if (exfat_write_sect(sb, sec, bp->bh, 0))
+		return -EIO;
+
+	if (__fat_copy(sb, sec, bp->bh, 0))
+		return -EIO;
+
+	return 0;
+}
+
+s32 exfat_meta_cache_init(struct super_block *sb)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	s32 i;
+
+	/* LRU list */
+	fsi->fcache.lru_list.next = &fsi->fcache.lru_list;
+	fsi->fcache.lru_list.prev = fsi->fcache.lru_list.next;
+
+	for (i = 0; i < FAT_CACHE_SIZE; i++) {
+		fsi->fcache.pool[i].sec = ~0;
+		fsi->fcache.pool[i].flag = 0;
+		fsi->fcache.pool[i].bh = NULL;
+		fsi->fcache.pool[i].prev = NULL;
+		fsi->fcache.pool[i].next = NULL;
+		push_to_mru(&(fsi->fcache.pool[i]), &fsi->fcache.lru_list);
+	}
+
+	fsi->dcache.lru_list.next = &fsi->dcache.lru_list;
+	fsi->dcache.lru_list.prev = fsi->dcache.lru_list.next;
+	fsi->dcache.keep_list.next = &fsi->dcache.keep_list;
+	fsi->dcache.keep_list.prev = fsi->dcache.keep_list.next;
+
+	// Initially, all the BUF_CACHEs are in the LRU list
+	for (i = 0; i < BUF_CACHE_SIZE; i++) {
+		fsi->dcache.pool[i].sec = ~0;
+		fsi->dcache.pool[i].flag = 0;
+		fsi->dcache.pool[i].bh = NULL;
+		fsi->dcache.pool[i].prev = NULL;
+		fsi->dcache.pool[i].next = NULL;
+		push_to_mru(&(fsi->dcache.pool[i]), &fsi->dcache.lru_list);
+	}
+
+	/* HASH list */
+	for (i = 0; i < FAT_CACHE_HASH_SIZE; i++) {
+		fsi->fcache.hash_list[i].sec = ~0;
+		fsi->fcache.hash_list[i].hash.next = &(fsi->fcache.hash_list[i]);
+;
+		fsi->fcache.hash_list[i].hash.prev = fsi->fcache.hash_list[i].hash.next;
+	}
+
+	for (i = 0; i < FAT_CACHE_SIZE; i++)
+		__fcache_insert_hash(sb, &(fsi->fcache.pool[i]));
+
+	for (i = 0; i < BUF_CACHE_HASH_SIZE; i++) {
+		fsi->dcache.hash_list[i].sec = ~0;
+		fsi->dcache.hash_list[i].hash.next = &(fsi->dcache.hash_list[i]);
+
+		fsi->dcache.hash_list[i].hash.prev = fsi->dcache.hash_list[i].hash.next;
+	}
+
+	for (i = 0; i < BUF_CACHE_SIZE; i++)
+		__dcache_insert_hash(sb, &(fsi->dcache.pool[i]));
+
+	return 0;
+}
+
+s32 exfat_meta_cache_shutdown(struct super_block *sb)
+{
+	return 0;
+}
+
+s32 exfat_fcache_release_all(struct super_block *sb)
+{
+	s32 ret = 0;
+	cache_ent_t *bp;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	s32 dirtycnt = 0;
+
+	bp = fsi->fcache.lru_list.next;
+	while (bp != &fsi->fcache.lru_list) {
+		s32 ret_tmp = __fcache_ent_flush(sb, bp, 0);
+
+		if (ret_tmp < 0)
+			ret = ret_tmp;
+		else
+			dirtycnt += ret_tmp;
+
+		bp->sec = ~0;
+		bp->flag = 0;
+
+		if (bp->bh) {
+			__brelse(bp->bh);
+			bp->bh = NULL;
+		}
+		bp = bp->next;
+	}
+
+	DMSG("BD:Release / dirty fat cache: %d (err:%d)\n", dirtycnt, ret);
+	return ret;
+}
+
+
+/* internal DIRTYBIT marked => bh dirty */
+s32 exfat_fcache_flush(struct super_block *sb, u32 sync)
+{
+	s32 ret = 0;
+	cache_ent_t *bp;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	s32 dirtycnt = 0;
+
+	bp = fsi->fcache.lru_list.next;
+	while (bp != &fsi->fcache.lru_list) {
+		ret = __fcache_ent_flush(sb, bp, sync);
+		if (ret < 0)
+			break;
+
+		dirtycnt += ret;
+		bp = bp->next;
+	}
+
+	MMSG("BD: flush / dirty fat cache: %d (err:%d)\n", dirtycnt, ret);
+	return ret;
+}
+
+static cache_ent_t *__fcache_find(struct super_block *sb, u64 sec)
+{
+	s32 off;
+	cache_ent_t *bp, *hp;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	off = (sec + (sec >> fsi->sect_per_clus_bits)) & (FAT_CACHE_HASH_SIZE - 1);
+	hp = &(fsi->fcache.hash_list[off]);
+	for (bp = hp->hash.next; bp != hp; bp = bp->hash.next) {
+		if (bp->sec == sec) {
+			/*
+			 * patch 1.2.4 : for debugging
+			 */
+			WARN(!bp->bh, "exFAT: fcache has no bh. "
+					  "It will make system panic.\n");
+
+			touch_buffer(bp->bh);
+			return bp;
+		}
+	}
+	return NULL;
+}
+
+static cache_ent_t *__fcache_get(struct super_block *sb)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	FS_INFO_T *fsi = &(sbi->fsi);
+	cache_ent_t *bp;
+
+	bp = fsi->fcache.lru_list.prev;
+	if (sbi->options.delayed_meta) {
+		while (bp->flag & DIRTYBIT) {
+			cache_ent_t *bp_prev = bp->prev;
+
+			bp = bp_prev;
+			if (bp == &fsi->fcache.lru_list) {
+				DMSG("BD: fat cache flooding\n");
+				exfat_fcache_flush(sb, 0);	// flush all dirty FAT caches
+				bp = fsi->fcache.lru_list.prev;
+			}
+		}
+	}
+//	if (bp->flag & DIRTYBIT)
+//       sync_dirty_buffer(bp->bh);
+
+	move_to_mru(bp, &fsi->fcache.lru_list);
+	return bp;
+}
+
+static void __fcache_insert_hash(struct super_block *sb, cache_ent_t *bp)
+{
+	s32 off;
+	cache_ent_t *hp;
+	FS_INFO_T *fsi;
+
+	fsi = &(EXFAT_SB(sb)->fsi);
+	off = (bp->sec + (bp->sec >> fsi->sect_per_clus_bits)) & (FAT_CACHE_HASH_SIZE-1);
+
+	hp = &(fsi->fcache.hash_list[off]);
+	bp->hash.next = hp->hash.next;
+	bp->hash.prev = hp;
+	hp->hash.next->hash.prev = bp;
+	hp->hash.next = bp;
+}
+
+
+static void __fcache_remove_hash(cache_ent_t *bp)
+{
+#ifdef DEBUG_HASH_LIST
+	if ((bp->hash.next == (cache_ent_t *)DEBUG_HASH_NEXT) ||
+		(bp->hash.prev == (cache_ent_t *)DEBUG_HASH_PREV)) {
+		EMSG("%s: FATAL: tried to remove already-removed-cache-entry"
+			"(bp:%p)\n", __func__, bp);
+		return;
+	}
+#endif
+	WARN_ON(bp->flag & DIRTYBIT);
+	__remove_from_hash(bp);
+}
+
+/* Read-ahead a cluster */
+s32 exfat_dcache_readahead(struct super_block *sb, u64 sec)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	struct buffer_head *bh;
+	u32 max_ra_count = DCACHE_MAX_RA_SIZE >> sb->s_blocksize_bits;
+	u32 page_ra_count = PAGE_SIZE >> sb->s_blocksize_bits;
+	u32 adj_ra_count = max(fsi->sect_per_clus, page_ra_count);
+	u32 ra_count = min(adj_ra_count, max_ra_count);
+
+	/* Read-ahead is not required */
+	if (fsi->sect_per_clus == 1)
+		return 0;
+
+	if (sec < fsi->data_start_sector) {
+		EMSG("BD: %s: requested sector is invalid(sect:%llu, root:%llu)\n",
+				__func__, sec, fsi->data_start_sector);
+		return -EIO;
+	}
+
+	/* Not sector aligned with ra_count, resize ra_count to page size */
+	if ((sec - fsi->data_start_sector) & (ra_count - 1))
+		ra_count = page_ra_count;
+
+	bh = sb_find_get_block(sb, sec);
+	if (!bh || !buffer_uptodate(bh))
+		exfat_bdev_readahead(sb, sec, (u64)ra_count);
+
+	brelse(bh);
+
+	return 0;
+}
+
+/*
+ * returns 1, if bp is flushed
+ * returns 0, if bp is not dirty
+ * returns -1, if error occurs
+ */
+static s32 __dcache_ent_flush(struct super_block *sb, cache_ent_t *bp, u32 sync)
+{
+	struct exfat_sb_info *sbi;
+
+	if (!(bp->flag & DIRTYBIT))
+		return 0;
+
+	sbi = EXFAT_SB(sb);
+	if (sbi->options.delayed_meta) {
+		// Make buffer dirty (XXX: Naive impl.)
+		if (exfat_write_sect(sb, bp->sec, bp->bh, 0))
+			return -EIO;
+	}
+	bp->flag &= ~(DIRTYBIT);
+
+	if (sync)
+		sync_dirty_buffer(bp->bh);
+
+	return 1;
+}
+
+static s32 __dcache_ent_discard(struct super_block *sb, cache_ent_t *bp)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	MMSG("%s : bp[%p] (sec:%016llx flag:%08x bh:%p) list(prev:%p next:%p) "
+		"hash(prev:%p next:%p)\n", __func__,
+		bp, bp->sec, bp->flag, bp->bh, bp->prev, bp->next,
+		bp->hash.prev, bp->hash.next);
+
+	__dcache_remove_hash(bp);
+	bp->sec = ~0;
+	bp->flag = 0;
+
+	if (bp->bh) {
+		__brelse(bp->bh);
+		bp->bh = NULL;
+	}
+
+	move_to_lru(bp, &fsi->dcache.lru_list);
+	return 0;
+}
+
+u8 *exfat_dcache_getblk(struct super_block *sb, u64 sec)
+{
+	cache_ent_t *bp;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	bp = __dcache_find(sb, sec);
+	if (bp) {
+		if (exfat_bdev_check_bdi_valid(sb)) {
+			MMSG("%s: found cache(%p, sect:%llu). But invalid BDI\n"
+				, __func__, bp, sec);
+			__dcache_ent_flush(sb, bp, 0);
+			__dcache_ent_discard(sb, bp);
+			return NULL;
+		}
+
+		if (!(bp->flag & KEEPBIT))	// already in keep list
+			move_to_mru(bp, &fsi->dcache.lru_list);
+
+		return bp->bh->b_data;
+	}
+
+	bp = __dcache_get(sb);
+
+	if (!__check_hash_valid(bp))
+		__dcache_remove_hash(bp);
+
+	bp->sec = sec;
+	bp->flag = 0;
+	__dcache_insert_hash(sb, bp);
+
+	if (exfat_read_sect(sb, sec, &(bp->bh), 1)) {
+		__dcache_ent_discard(sb, bp);
+		return NULL;
+	}
+
+	return bp->bh->b_data;
+
+}
+
+s32 exfat_dcache_modify(struct super_block *sb, u64 sec)
+{
+	s32 ret = -EIO;
+	cache_ent_t *bp;
+
+	exfat_set_sb_dirty(sb);
+
+	bp = __dcache_find(sb, sec);
+	if (unlikely(!bp)) {
+		exfat_fs_error(sb, "Can`t find dcache (sec 0x%016llx)", sec);
+		return -EIO;
+	}
+
+	ret = exfat_write_sect(sb, sec, bp->bh, 0);
+
+	if (ret) {
+		DMSG("%s : failed to modify buffer(err:%d, sec:%llu, bp:0x%p)\n",
+			__func__, ret, sec, bp);
+	}
+
+	return ret;
+}
+
+s32 exfat_dcache_lock(struct super_block *sb, u64 sec)
+{
+	cache_ent_t *bp;
+
+	bp = __dcache_find(sb, sec);
+	if (likely(bp)) {
+		bp->flag |= LOCKBIT;
+		return 0;
+	}
+
+	EMSG("%s : failed to lock buffer(sec:%llu, bp:0x%p)\n", __func__, sec, bp);
+	return -EIO;
+}
+
+s32 exfat_dcache_unlock(struct super_block *sb, u64 sec)
+{
+	cache_ent_t *bp;
+
+	bp = __dcache_find(sb, sec);
+	if (likely(bp))  {
+		bp->flag &= ~(LOCKBIT);
+		return 0;
+	}
+
+	EMSG("%s : failed to unlock buffer (sec:%llu, bp:0x%p)\n", __func__, sec, bp);
+	return -EIO;
+}
+
+s32 exfat_dcache_release(struct super_block *sb, u64 sec)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	cache_ent_t *bp;
+	FS_INFO_T *fsi = &(sbi->fsi);
+
+	bp = __dcache_find(sb, sec);
+	if (unlikely(!bp))
+		return -ENOENT;
+
+	if (sbi->options.delayed_meta) {
+		if (bp->flag & DIRTYBIT) {
+			if (exfat_write_sect(sb, bp->sec, bp->bh, 0))
+				return -EIO;
+		}
+	}
+
+	bp->sec = ~0;
+	bp->flag = 0;
+
+	if (bp->bh) {
+		__brelse(bp->bh);
+		bp->bh = NULL;
+	}
+
+	move_to_lru(bp, &fsi->dcache.lru_list);
+	return 0;
+}
+
+s32 exfat_dcache_release_all(struct super_block *sb)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	s32 ret = 0;
+	cache_ent_t *bp;
+	FS_INFO_T *fsi = &(sbi->fsi);
+	s32 dirtycnt = 0;
+
+	/* Connect list elements:
+	 * LRU list : (A - B - ... - bp_front) + (bp_first + ... + bp_last)
+	 */
+	while (fsi->dcache.keep_list.prev != &fsi->dcache.keep_list) {
+		cache_ent_t *bp_keep = fsi->dcache.keep_list.prev;
+		// bp_keep->flag &= ~(KEEPBIT);		// Will be 0-ed later
+		move_to_mru(bp_keep, &fsi->dcache.lru_list);
+	}
+
+	bp = fsi->dcache.lru_list.next;
+	while (bp != &fsi->dcache.lru_list) {
+		if (sbi->options.delayed_meta) {
+			if (bp->flag & DIRTYBIT) {
+				dirtycnt++;
+				if (exfat_write_sect(sb, bp->sec, bp->bh, 0))
+					ret = -EIO;
+			}
+		}
+
+		bp->sec = ~0;
+		bp->flag = 0;
+
+		if (bp->bh) {
+			__brelse(bp->bh);
+			bp->bh = NULL;
+		}
+		bp = bp->next;
+	}
+
+	DMSG("BD:Release / dirty buf cache: %d (err:%d)", dirtycnt, ret);
+	return ret;
+}
+
+
+s32 exfat_dcache_flush(struct super_block *sb, u32 sync)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	s32 ret = 0;
+	cache_ent_t *bp;
+	FS_INFO_T *fsi = &(sbi->fsi);
+	s32 dirtycnt = 0;
+	s32 keepcnt = 0;
+
+	/* Connect list elements:
+	 * LRU list : (A - B - ... - bp_front) + (bp_first + ... + bp_last)
+	 */
+	while (fsi->dcache.keep_list.prev != &fsi->dcache.keep_list) {
+		cache_ent_t *bp_keep = fsi->dcache.keep_list.prev;
+
+		bp_keep->flag &= ~(KEEPBIT);		// Will be 0-ed later
+		move_to_mru(bp_keep, &fsi->dcache.lru_list);
+		keepcnt++;
+	}
+
+	bp = fsi->dcache.lru_list.next;
+	while (bp != &fsi->dcache.lru_list) {
+		if (bp->flag & DIRTYBIT) {
+			if (sbi->options.delayed_meta) {
+				// Make buffer dirty (XXX: Naive impl.)
+				if (exfat_write_sect(sb, bp->sec, bp->bh, 0)) {
+					ret = -EIO;
+					break;
+				}
+			}
+
+			bp->flag &= ~(DIRTYBIT);
+			dirtycnt++;
+
+			if (sync != 0)
+				sync_dirty_buffer(bp->bh);
+		}
+		bp = bp->next;
+	}
+
+	MMSG("BD: flush / dirty dentry cache: %d (%d from keeplist, err:%d)\n",
+						dirtycnt, keepcnt, ret);
+	return ret;
+}
+
+static cache_ent_t *__dcache_find(struct super_block *sb, u64 sec)
+{
+	s32 off;
+	cache_ent_t *bp, *hp;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	off = (sec + (sec >> fsi->sect_per_clus_bits)) & (BUF_CACHE_HASH_SIZE - 1);
+
+	hp = &(fsi->dcache.hash_list[off]);
+	for (bp = hp->hash.next; bp != hp; bp = bp->hash.next) {
+		if (bp->sec == sec) {
+			touch_buffer(bp->bh);
+			return bp;
+		}
+	}
+	return NULL;
+}
+
+static cache_ent_t *__dcache_get(struct super_block *sb)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	cache_ent_t *bp;
+	FS_INFO_T *fsi = &(sbi->fsi);
+
+	bp = fsi->dcache.lru_list.prev;
+
+	if (sbi->options.delayed_meta) {
+		while (bp->flag & (DIRTYBIT | LOCKBIT)) {
+			cache_ent_t *bp_prev = bp->prev; // hold prev
+
+			if (bp->flag & DIRTYBIT) {
+				MMSG("BD: Buf cache => Keep list\n");
+				bp->flag |= KEEPBIT;
+				move_to_mru(bp, &fsi->dcache.keep_list);
+			}
+			bp = bp_prev;
+
+			/* If all dcaches are dirty */
+			if (bp == &fsi->dcache.lru_list) {
+				DMSG("BD: buf cache flooding\n");
+				exfat_dcache_flush(sb, 0);
+				bp = fsi->dcache.lru_list.prev;
+			}
+		}
+	} else {
+		while (bp->flag & LOCKBIT)
+			bp = bp->prev;
+	}
+//	if (bp->flag & DIRTYBIT)
+//       sync_dirty_buffer(bp->bh);
+
+	move_to_mru(bp, &fsi->dcache.lru_list);
+	return bp;
+}
+
+static void __dcache_insert_hash(struct super_block *sb, cache_ent_t *bp)
+{
+	s32 off;
+	cache_ent_t *hp;
+	FS_INFO_T *fsi;
+
+	fsi = &(EXFAT_SB(sb)->fsi);
+	off = (bp->sec + (bp->sec >> fsi->sect_per_clus_bits)) & (BUF_CACHE_HASH_SIZE-1);
+
+	hp = &(fsi->dcache.hash_list[off]);
+	bp->hash.next = hp->hash.next;
+	bp->hash.prev = hp;
+	hp->hash.next->hash.prev = bp;
+	hp->hash.next = bp;
+}
+
+static void __dcache_remove_hash(cache_ent_t *bp)
+{
+#ifdef DEBUG_HASH_LIST
+	if ((bp->hash.next == (cache_ent_t *)DEBUG_HASH_NEXT) ||
+		(bp->hash.prev == (cache_ent_t *)DEBUG_HASH_PREV)) {
+		EMSG("%s: FATAL: tried to remove already-removed-cache-entry"
+			"(bp:%p)\n", __func__, bp);
+		return;
+	}
+#endif
+	WARN_ON(bp->flag & DIRTYBIT);
+	__remove_from_hash(bp);
+}
diff --git a/drivers/staging/exfat/config.h b/drivers/staging/exfat/config.h
new file mode 100644
index 000000000000..ed87744f8d1f
--- /dev/null
+++ b/drivers/staging/exfat/config.h
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ */
+
+#ifndef _EXFAT_CONFIG_H
+#define _EXFAT_CONFIG_H
+
+//#define CONFIG_EXFAT_TRACE_IO
+//#define CONFIG_EXFAT_TRACE_LOCK /* Trace elapsed time in lock_super(sb) */
+
+#ifndef CONFIG_EXFAT_WRITE_SB_INTERVAL_CSECS
+#define CONFIG_EXFAT_WRITE_SB_INTERVAL_CSECS	(dirty_writeback_interval)
+#endif
+
+#ifndef CONFIG_EXFAT_DEFAULT_CODEPAGE /* if Kconfig lacked codepage */
+#define CONFIG_EXFAT_DEFAULT_CODEPAGE   437
+#endif
+
+#ifndef CONFIG_EXFAT_DEFAULT_IOCHARSET /* if Kconfig lacked iocharset */
+#define CONFIG_EXFAT_DEFAULT_IOCHARSET  "utf8"
+#endif
+
+#ifndef CONFIG_EXFAT_FAT_MIRRORING /* if Kconfig lacked fat-mirroring option */
+#define CONFIG_EXFAT_FAT_MIRRORING /* Write FAT 1, FAT 2 simultaneously */
+#endif
+
+#ifndef CONFIG_EXFAT_VIRTUAL_XATTR
+#define CONFIG_EXFAT_VIRTUAL_XATTR
+#endif
+
+#endif /* _EXFAT_CONFIG_H */
diff --git a/drivers/staging/exfat/core.c b/drivers/staging/exfat/core.c
new file mode 100644
index 000000000000..92c63b066084
--- /dev/null
+++ b/drivers/staging/exfat/core.c
@@ -0,0 +1,3169 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ *
+ *  core.c: FAT-common core code
+ */
+
+#include <linux/version.h>
+#include <linux/blkdev.h>
+#include <linux/workqueue.h>
+#include <linux/writeback.h>
+#include <linux/kernel.h>
+#include <linux/log2.h>
+
+#include "exfat.h"
+#include "core.h"
+#include <asm/byteorder.h>
+#include <asm/unaligned.h>
+
+void exfat_set_sb_dirty(struct super_block *sb)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+
+	sbi->s_dirt = 1;
+	/* Insert work */
+	spin_lock(&sbi->work_lock);
+	if (!sbi->write_super_queued) {
+		unsigned long delay;
+
+		delay = msecs_to_jiffies(CONFIG_EXFAT_WRITE_SB_INTERVAL_CSECS * 10);
+		queue_delayed_work(system_long_wq, &sbi->write_super_work, delay);
+		sbi->write_super_queued = 1;
+	}
+	spin_unlock(&sbi->work_lock);
+}
+
+static s32 check_type_size(void)
+{
+	/* critical check for system requirement on size of DENTRY_T structure */
+	if (sizeof(DENTRY_T) != DENTRY_SIZE)
+		return -EINVAL;
+
+	if (sizeof(DOS_DENTRY_T) != DENTRY_SIZE)
+		return -EINVAL;
+
+	if (sizeof(EXT_DENTRY_T) != DENTRY_SIZE)
+		return -EINVAL;
+
+	if (sizeof(FILE_DENTRY_T) != DENTRY_SIZE)
+		return -EINVAL;
+
+	if (sizeof(STRM_DENTRY_T) != DENTRY_SIZE)
+		return -EINVAL;
+
+	if (sizeof(NAME_DENTRY_T) != DENTRY_SIZE)
+		return -EINVAL;
+
+	if (sizeof(BMAP_DENTRY_T) != DENTRY_SIZE)
+		return -EINVAL;
+
+	if (sizeof(CASE_DENTRY_T) != DENTRY_SIZE)
+		return -EINVAL;
+
+	if (sizeof(VOLM_DENTRY_T) != DENTRY_SIZE)
+		return -EINVAL;
+
+	return 0;
+}
+
+static s32 __fs_set_vol_flags(struct super_block *sb, u16 new_flag, s32 always_sync)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	pbr64_t *bpb;
+	s32 err;
+	s32 sync = 0;
+
+	/* flags are not changed */
+	if (fsi->vol_flag == new_flag)
+		return 0;
+
+	fsi->vol_flag = new_flag;
+
+	/* skip updating volume dirty flag,
+	 * if this volume has been mounted with read-only
+	 */
+	if (EXFAT_IS_SB_RDONLY(sb))
+		return 0;
+
+	if (!fsi->pbr_bh) {
+		err = exfat_read_sect(sb, 0, &(fsi->pbr_bh), 1);
+		if (err) {
+			EMSG("%s : failed to read boot sector\n", __func__);
+			return err;
+		}
+	}
+
+	bpb = (pbr64_t *)fsi->pbr_bh->b_data;
+	bpb->bsx.vol_flags = cpu_to_le16(new_flag);
+
+	if (always_sync)
+		sync = 1;
+	else if ((new_flag == VOL_DIRTY) && (!buffer_dirty(fsi->pbr_bh)))
+		sync = 1;
+	else
+		sync = 0;
+
+	err = exfat_write_sect(sb, 0, fsi->pbr_bh, sync);
+	if (err)
+		EMSG("%s : failed to modify volume flag\n", __func__);
+
+	return err;
+}
+
+static s32 fs_set_vol_flags(struct super_block *sb, u16 new_flag)
+{
+	return __fs_set_vol_flags(sb, new_flag, 0);
+}
+
+s32 exfat_fscore_set_vol_flags(struct super_block *sb, u16 new_flag, s32 always_sync)
+{
+	return __fs_set_vol_flags(sb, new_flag, always_sync);
+}
+
+static s32 fs_sync(struct super_block *sb, s32 do_sync)
+{
+	s32 err;
+
+	if (!do_sync)
+		return 0;
+
+	err = exfat_bdev_sync_all(sb);
+	if (err)
+		EMSG("%s : failed to sync. (err:%d)\n", __func__, err);
+
+	return err;
+}
+
+/*
+ *  Cluster Management Functions
+ */
+
+static s32 __clear_cluster(struct inode *inode, u32 clu)
+{
+	u64 s, n;
+	struct super_block *sb = inode->i_sb;
+	u32 sect_size = (u32)sb->s_blocksize;
+	s32 ret = 0;
+	struct buffer_head *tmp_bh = NULL;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (IS_CLUS_FREE(clu)) { /* FAT16 root_dir */
+		s = fsi->root_start_sector;
+		n = fsi->data_start_sector;
+	} else {
+		s = CLUS_TO_SECT(fsi, clu);
+		n = s + fsi->sect_per_clus;
+	}
+
+	if (IS_DIRSYNC(inode)) {
+		ret = exfat_write_msect_zero(sb, s, (u64)fsi->sect_per_clus);
+		if (ret != -EAGAIN)
+			return ret;
+	}
+
+	/* Trying buffered zero writes
+	 * if it doesn't have DIRSYNC or exfat_write_msect_zero() returned -EAGAIN
+	 */
+	for ( ; s < n; s++) {
+#if 0
+		exfat_dcache_release(sb, s);
+#endif
+		ret = exfat_read_sect(sb, s, &tmp_bh, 0);
+		if (ret)
+			goto out;
+
+		memset((u8 *)tmp_bh->b_data, 0x0, sect_size);
+		ret = exfat_write_sect(sb, s, tmp_bh, 0);
+		if (ret)
+			goto out;
+	}
+out:
+	brelse(tmp_bh);
+	return ret;
+}
+
+static s32 __find_last_cluster(struct super_block *sb, CHAIN_T *p_chain, u32 *ret_clu)
+{
+	u32 clu, next;
+	u32 count = 0;
+
+	next = p_chain->dir;
+	if (p_chain->flags == 0x03) {
+		*ret_clu = next + p_chain->size - 1;
+		return 0;
+	}
+
+	do {
+		count++;
+		clu = next;
+		if (exfat_ent_get_safe(sb, clu, &next))
+			return -EIO;
+	} while (!IS_CLUS_EOF(next));
+
+	if (p_chain->size != count) {
+		exfat_fs_error(sb, "bogus directory size "
+				"(clus : ondisk(%d) != counted(%d))",
+				p_chain->size, count);
+		exfat_debug_bug_on(1);
+		return -EIO;
+	}
+
+	*ret_clu = clu;
+	return 0;
+}
+
+
+static s32 __count_num_clusters(struct super_block *sb, CHAIN_T *p_chain, u32 *ret_count)
+{
+	u32 i, count;
+	u32 clu;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (!p_chain->dir || IS_CLUS_EOF(p_chain->dir)) {
+		*ret_count = 0;
+		return 0;
+	}
+
+	if (p_chain->flags == 0x03) {
+		*ret_count = p_chain->size;
+		return 0;
+	}
+
+	clu = p_chain->dir;
+	count = 0;
+	for (i = CLUS_BASE; i < fsi->num_clusters; i++) {
+		count++;
+		if (exfat_ent_get_safe(sb, clu, &clu))
+			return -EIO;
+		if (IS_CLUS_EOF(clu))
+			break;
+	}
+
+	*ret_count = count;
+	return 0;
+}
+
+/*
+ *  Upcase table Management Functions
+ */
+static void free_upcase_table(struct super_block *sb)
+{
+	u32 i;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	u16 **upcase_table;
+
+	upcase_table = fsi->vol_utbl;
+	for (i = 0 ; i < UTBL_COL_COUNT ; i++) {
+		/* kfree(NULL) is safe */
+		kfree(upcase_table[i]);
+		upcase_table[i] = NULL;
+	}
+
+	/* kfree(NULL) is safe */
+	kfree(fsi->vol_utbl);
+	fsi->vol_utbl = NULL;
+}
+
+static s32 __load_upcase_table(struct super_block *sb, u64 sector, u64 num_sectors, u32 utbl_checksum)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	struct buffer_head *tmp_bh = NULL;
+	u32 sect_size = (u32)sb->s_blocksize;
+	s32 ret = -EIO;
+	u32 i, j;
+
+	u8 skip = false;
+	u32 index = 0;
+	u32 checksum = 0;
+	u16 **upcase_table = kzalloc((UTBL_COL_COUNT * sizeof(u16 *)), GFP_KERNEL);
+
+	if (!upcase_table)
+		return -ENOMEM;
+	/* thanks for kzalloc
+	 * memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
+	 */
+
+	fsi->vol_utbl = upcase_table;
+	num_sectors += sector;
+
+	while (sector < num_sectors) {
+		ret = exfat_read_sect(sb, sector, &tmp_bh, 1);
+		if (ret) {
+			EMSG("%s: failed to read sector(0x%llx)\n",
+						__func__, sector);
+			goto error;
+		}
+		sector++;
+
+		for (i = 0; i < sect_size && index <= 0xFFFF; i += 2) {
+			/* FIXME : is __le16 ok? */
+			//u16 uni = le16_to_cpu(((__le16*)(tmp_bh->b_data))[i]);
+			u16 uni = get_unaligned_le16((u8 *)tmp_bh->b_data+i);
+
+			checksum = ((checksum & 1) ? 0x80000000 : 0) +
+				(checksum >> 1) + *(((u8 *)tmp_bh->b_data)+i);
+			checksum = ((checksum & 1) ? 0x80000000 : 0) +
+				(checksum >> 1) + *(((u8 *)tmp_bh->b_data)+(i+1));
+
+			if (skip) {
+				MMSG("skip from 0x%X to 0x%X(amount of 0x%X)\n",
+					index, index+uni, uni);
+				index += uni;
+				skip = false;
+			} else if (uni == index) {
+				index++;
+			} else if (uni == 0xFFFF) {
+				skip = true;
+			} else { /* uni != index , uni != 0xFFFF */
+				u16 col_index = exfat_get_col_index(index);
+
+				if (!upcase_table[col_index]) {
+					upcase_table[col_index] =
+						kmalloc((UTBL_ROW_COUNT * sizeof(u16)), GFP_KERNEL);
+					if (!upcase_table[col_index]) {
+						EMSG("failed to allocate memory"
+							" for column 0x%X\n",
+							col_index);
+						ret = -ENOMEM;
+						goto error;
+					}
+
+					for (j = 0; j < UTBL_ROW_COUNT; j++)
+						upcase_table[col_index][j] = (col_index << LOW_INDEX_BIT) | j;
+				}
+
+				upcase_table[col_index][exfat_get_row_index(index)] = uni;
+				index++;
+			}
+		}
+	}
+	if (index >= 0xFFFF && utbl_checksum == checksum) {
+		DMSG("%s: load upcase table successfully"
+			"(idx:0x%08x, utbl_chksum:0x%08x)\n",
+			__func__, index, utbl_checksum);
+		if (tmp_bh)
+			brelse(tmp_bh);
+		return 0;
+	}
+
+	EMSG("%s: failed to load upcase table"
+		"(idx:0x%08x, chksum:0x%08x, utbl_chksum:0x%08x)\n",
+		__func__, index, checksum, utbl_checksum);
+
+	ret = -EINVAL;
+error:
+	if (tmp_bh)
+		brelse(tmp_bh);
+	free_upcase_table(sb);
+	return ret;
+}
+
+static s32 __load_default_upcase_table(struct super_block *sb)
+{
+	s32 i, ret = -EIO;
+	u32 j;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	u8 skip = false;
+	u32 index = 0;
+	u16 uni = 0;
+	u16 **upcase_table;
+
+	upcase_table = kmalloc((UTBL_COL_COUNT * sizeof(u16 *)), GFP_KERNEL);
+	if (!upcase_table)
+		return -ENOMEM;
+
+	fsi->vol_utbl = upcase_table;
+	memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
+
+	for (i = 0; index <= 0xFFFF && i < EXFAT_NUM_UPCASE*2; i += 2) {
+		/* FIXME : is __le16 ok? */
+		//uni = le16_to_cpu(((__le16*)uni_def_upcase)[i>>1]);
+		uni = get_unaligned_le16((u8 *)uni_def_upcase+i);
+		if (skip) {
+			MMSG("skip from 0x%x ", index);
+			index += uni;
+			MMSG("to 0x%x (amount of 0x%x)\n", index, uni);
+			skip = false;
+		} else if (uni == index) {
+			index++;
+		} else if (uni == 0xFFFF) {
+			skip = true;
+		} else { /* uni != index , uni != 0xFFFF */
+			u16 col_index = exfat_get_col_index(index);
+
+			if (!upcase_table[col_index]) {
+				upcase_table[col_index] = kmalloc((UTBL_ROW_COUNT * sizeof(u16)), GFP_KERNEL);
+				if (!upcase_table[col_index]) {
+					EMSG("failed to allocate memory for "
+						"new column 0x%x\n", col_index);
+					ret = -ENOMEM;
+					goto error;
+				}
+
+				for (j = 0; j < UTBL_ROW_COUNT; j++)
+					upcase_table[col_index][j] = (col_index << LOW_INDEX_BIT) | j;
+			}
+
+			upcase_table[col_index][exfat_get_row_index(index)] = uni;
+			index++;
+		}
+	}
+
+	if (index >= 0xFFFF)
+		return 0;
+
+error:
+	/* FATAL error: default upcase table has error */
+	free_upcase_table(sb);
+	return ret;
+}
+
+static s32 load_upcase_table(struct super_block *sb)
+{
+	s32 i, ret;
+	u32 tbl_clu, type;
+	u64 sector, tbl_size, num_sectors;
+	u8 blksize_bits = sb->s_blocksize_bits;
+	CHAIN_T clu;
+	CASE_DENTRY_T *ep;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	clu.dir = fsi->root_dir;
+	clu.flags = 0x01;
+
+	while (!IS_CLUS_EOF(clu.dir)) {
+		for (i = 0; i < fsi->dentries_per_clu; i++) {
+			ep = (CASE_DENTRY_T *) exfat_get_dentry_in_dir(sb, &clu, i, NULL);
+			if (!ep)
+				return -EIO;
+
+			type = fsi->fs_func->get_entry_type((DENTRY_T *) ep);
+
+			if (type == TYPE_UNUSED)
+				break;
+			if (type != TYPE_UPCASE)
+				continue;
+
+			tbl_clu  = le32_to_cpu(ep->start_clu);
+			tbl_size = le64_to_cpu(ep->size);
+
+			sector = CLUS_TO_SECT(fsi, tbl_clu);
+			num_sectors = ((tbl_size - 1) >> blksize_bits) + 1;
+			ret = __load_upcase_table(sb, sector, num_sectors,
+						le32_to_cpu(ep->checksum));
+
+			if (ret && (ret != -EIO))
+				goto load_default;
+
+			/* load successfully */
+			return ret;
+		}
+
+		if (get_next_clus_safe(sb, &(clu.dir)))
+			return -EIO;
+	}
+
+load_default:
+	exfat_log_msg(sb, KERN_INFO, "trying to load default upcase table");
+	/* load default upcase table */
+	return __load_default_upcase_table(sb);
+}
+
+
+/*
+ *  Directory Entry Management Functions
+ */
+s32 exfat_walk_fat_chain(struct super_block *sb, CHAIN_T *p_dir, u32 byte_offset, u32 *clu)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	u32 clu_offset;
+	u32 cur_clu;
+
+	clu_offset = byte_offset >> fsi->cluster_size_bits;
+	cur_clu = p_dir->dir;
+
+	if (p_dir->flags == 0x03) {
+		cur_clu += clu_offset;
+	} else {
+		while (clu_offset > 0) {
+			if (get_next_clus_safe(sb, &cur_clu))
+				return -EIO;
+			if (IS_CLUS_EOF(cur_clu)) {
+				exfat_fs_error(sb, "invalid dentry access "
+					"beyond EOF (clu : %u, eidx : %d)",
+					p_dir->dir,
+					byte_offset >> DENTRY_SIZE_BITS);
+				return -EIO;
+			}
+			clu_offset--;
+		}
+	}
+
+	if (clu)
+		*clu = cur_clu;
+	return 0;
+}
+
+static s32 find_location(struct super_block *sb, CHAIN_T *p_dir, s32 entry, u64 *sector, s32 *offset)
+{
+	s32 ret;
+	u32 off, clu = 0;
+	u32 blksize_mask = (u32)(sb->s_blocksize-1);
+	u8 blksize_bits = sb->s_blocksize_bits;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	off = entry << DENTRY_SIZE_BITS;
+
+	/* FAT16 root_dir */
+	if (IS_CLUS_FREE(p_dir->dir)) {
+		*offset = off & blksize_mask;
+		*sector = off >> blksize_bits;
+		*sector += fsi->root_start_sector;
+		return 0;
+	}
+
+	ret = exfat_walk_fat_chain(sb, p_dir, off, &clu);
+	if (ret)
+		return ret;
+
+	/* byte offset in cluster */
+	off &= (fsi->cluster_size - 1);
+
+	/* byte offset in sector    */
+	*offset = off & blksize_mask;
+
+	/* sector offset in cluster */
+	*sector = off >> blksize_bits;
+	*sector += CLUS_TO_SECT(fsi, clu);
+	return 0;
+}
+
+DENTRY_T *exfat_get_dentry_in_dir(struct super_block *sb, CHAIN_T *p_dir, s32 entry, u64 *sector)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	u32 dentries_per_page = PAGE_SIZE >> DENTRY_SIZE_BITS;
+	s32 off;
+	u64 sec;
+	u8 *buf;
+
+	if (p_dir->dir == DIR_DELETED) {
+		EMSG("%s : abnormal access to deleted dentry\n", __func__);
+		BUG_ON(!fsi->prev_eio);
+		return NULL;
+	}
+
+	if (find_location(sb, p_dir, entry, &sec, &off))
+		return NULL;
+
+	/* DIRECTORY READAHEAD :
+	 * Try to read ahead per a page except root directory of fat12/16
+	 */
+	if ((!IS_CLUS_FREE(p_dir->dir)) &&
+		!(entry & (dentries_per_page - 1)))
+		exfat_dcache_readahead(sb, sec);
+
+	buf = exfat_dcache_getblk(sb, sec);
+	if (!buf)
+		return NULL;
+
+	if (sector)
+		*sector = sec;
+	return (DENTRY_T *)(buf + off);
+}
+
+/* used only in search empty_slot() */
+#define CNT_UNUSED_NOHIT	(-1)
+#define CNT_UNUSED_HIT		(-2)
+/* search EMPTY CONTINUOUS "num_entries" entries */
+static s32 search_empty_slot(struct super_block *sb, HINT_FEMP_T *hint_femp, CHAIN_T *p_dir, s32 num_entries)
+{
+	s32 i, dentry, num_empty = 0;
+	s32 dentries_per_clu;
+	u32 type;
+	CHAIN_T clu;
+	DENTRY_T *ep;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (IS_CLUS_FREE(p_dir->dir)) /* FAT16 root_dir */
+		dentries_per_clu = fsi->dentries_in_root;
+	else
+		dentries_per_clu = fsi->dentries_per_clu;
+
+	ASSERT(-1 <= hint_femp->eidx);
+
+	if (hint_femp->eidx != -1) {
+		clu.dir = hint_femp->cur.dir;
+		clu.size = hint_femp->cur.size;
+		clu.flags = hint_femp->cur.flags;
+
+		dentry = hint_femp->eidx;
+
+		if (num_entries <= hint_femp->count) {
+			MMSG("%s: empty slot(HIT) - found "
+				"(clu : 0x%08x eidx : %d)\n",
+				__func__, hint_femp->cur.dir, hint_femp->eidx);
+			hint_femp->eidx = -1;
+
+			return dentry;
+		}
+		MMSG("%s: empty slot(HIT) - search from "
+		       "(clu : 0x%08x eidx : %d)\n",
+			__func__, hint_femp->cur.dir, hint_femp->eidx);
+	} else {
+		MMSG("%s: empty slot(MISS) - search from "
+			"(clu:0x%08x eidx : 0)\n",
+			__func__, p_dir->dir);
+
+		clu.dir = p_dir->dir;
+		clu.size = p_dir->size;
+		clu.flags = p_dir->flags;
+
+		dentry = 0;
+	}
+
+	while (!IS_CLUS_EOF(clu.dir)) {
+		/* FAT16 root_dir */
+		if (IS_CLUS_FREE(p_dir->dir))
+			i = dentry % dentries_per_clu;
+		else
+			i = dentry & (dentries_per_clu-1);
+
+		for ( ; i < dentries_per_clu; i++, dentry++) {
+			ep = exfat_get_dentry_in_dir(sb, &clu, i, NULL);
+			if (!ep)
+				return -EIO;
+
+			type = fsi->fs_func->get_entry_type(ep);
+
+			if ((type == TYPE_UNUSED) || (type == TYPE_DELETED)) {
+				num_empty++;
+				if (hint_femp->eidx == -1) {
+					hint_femp->eidx = dentry;
+					hint_femp->count = CNT_UNUSED_NOHIT;
+
+					hint_femp->cur.dir = clu.dir;
+					hint_femp->cur.size = clu.size;
+					hint_femp->cur.flags = clu.flags;
+				}
+
+				if ((type == TYPE_UNUSED) &&
+					(hint_femp->count != CNT_UNUSED_HIT)) {
+					hint_femp->count = CNT_UNUSED_HIT;
+				}
+			} else {
+				if ((hint_femp->eidx != -1) &&
+					(hint_femp->count == CNT_UNUSED_HIT)) {
+					/* unused empty group means
+					 * an empty group which includes
+					 * unused dentry
+					 */
+					exfat_fs_error(sb,
+						"found bogus dentry(%d) "
+						"beyond unused empty group(%d) "
+						"(start_clu : %u, cur_clu : %u)",
+						dentry, hint_femp->eidx, p_dir->dir,
+						clu.dir);
+					return -EIO;
+				}
+
+				num_empty = 0;
+				hint_femp->eidx = -1;
+			}
+
+			if (num_empty >= num_entries) {
+				/* found and invalidate hint_femp */
+				hint_femp->eidx = -1;
+
+				return (dentry - (num_entries-1));
+			}
+		}
+
+		if (IS_CLUS_FREE(p_dir->dir))
+			break; /* FAT16 root_dir */
+
+		if (clu.flags == 0x03) {
+			if ((--clu.size) > 0)
+				clu.dir++;
+			else
+				clu.dir = CLUS_EOF;
+		} else {
+			if (get_next_clus_safe(sb, &(clu.dir)))
+				return -EIO;
+		}
+	}
+
+	return -ENOSPC;
+}
+
+/*
+ * find empty directory entry.
+ * if there isn't any empty slot, expand cluster chain.
+ */
+static s32 find_empty_entry(struct inode *inode, CHAIN_T *p_dir, s32 num_entries)
+{
+	s32 dentry;
+	u32 ret, last_clu;
+	u64 sector;
+	u64 size = 0;
+	CHAIN_T clu;
+	DENTRY_T *ep = NULL;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	FILE_ID_T *fid = &(EXFAT_I(inode)->fid);
+	HINT_FEMP_T hint_femp;
+
+	hint_femp.eidx = -1;
+
+	ASSERT(-1 <= fid->hint_femp.eidx);
+
+	if (fid->hint_femp.eidx != -1) {
+		memcpy(&hint_femp, &fid->hint_femp, sizeof(HINT_FEMP_T));
+		fid->hint_femp.eidx = -1;
+	}
+
+	/* FAT16 root_dir */
+	if (IS_CLUS_FREE(p_dir->dir))
+		return search_empty_slot(sb, &hint_femp, p_dir, num_entries);
+
+	while ((dentry = search_empty_slot(sb, &hint_femp, p_dir, num_entries)) < 0) {
+		if (dentry == -EIO)
+			break;
+
+		if (fsi->fs_func->check_max_dentries(fid))
+			return -ENOSPC;
+
+		/* we trust p_dir->size regardless of FAT type */
+		if (__find_last_cluster(sb, p_dir, &last_clu))
+			return -EIO;
+
+		/*
+		 * Allocate new cluster to this directory
+		 */
+		clu.dir = last_clu + 1;
+		clu.size = 0; /* UNUSED */
+		clu.flags = p_dir->flags;
+
+		/* (0) check if there are reserved clusters
+		 * Refer to create_dir's comments
+		 */
+		if (!IS_CLUS_EOF(fsi->used_clusters) &&
+			((fsi->used_clusters + fsi->reserved_clusters) >= (fsi->num_clusters - 2)))
+			return -ENOSPC;
+
+		/* (1) allocate a cluster */
+		ret = fsi->fs_func->alloc_cluster(sb, 1, &clu, ALLOC_HOT);
+		if (ret)
+			return ret;
+
+		if (__clear_cluster(inode, clu.dir))
+			return -EIO;
+
+		/* (2) append to the FAT chain */
+		if (clu.flags != p_dir->flags) {
+			/* no-fat-chain bit is disabled,
+			 * so fat-chain should be synced with alloc-bmp
+			 */
+			exfat_chain_cont_cluster(sb, p_dir->dir, p_dir->size);
+			p_dir->flags = 0x01;
+			hint_femp.cur.flags = 0x01;
+		}
+
+		if (clu.flags == 0x01)
+			if (exfat_ent_set(sb, last_clu, clu.dir))
+				return -EIO;
+
+		if (hint_femp.eidx == -1) {
+			/* the special case that new dentry
+			 * should be allocated from the start of new cluster
+			 */
+			hint_femp.eidx = (s32)(p_dir->size <<
+				(fsi->cluster_size_bits - DENTRY_SIZE_BITS));
+			hint_femp.count = fsi->dentries_per_clu;
+
+			hint_femp.cur.dir = clu.dir;
+			hint_femp.cur.size = 0;
+			hint_femp.cur.flags = clu.flags;
+		}
+		hint_femp.cur.size++;
+		p_dir->size++;
+		size = (p_dir->size << fsi->cluster_size_bits);
+
+		/* (3) update the directory entry */
+		if (p_dir->dir != fsi->root_dir) {
+			ep = exfat_get_dentry_in_dir(sb,
+					&(fid->dir), fid->entry+1, &sector);
+			if (!ep)
+				return -EIO;
+			fsi->fs_func->set_entry_size(ep, size);
+			fsi->fs_func->set_entry_flag(ep, p_dir->flags);
+			if (exfat_dcache_modify(sb, sector))
+				return -EIO;
+
+			if (exfat_update_dir_chksum(sb, &(fid->dir), fid->entry))
+				return -EIO;
+		}
+
+		/* directory inode should be updated in here */
+		i_size_write(inode, (loff_t)size);
+		EXFAT_I(inode)->i_size_ondisk += fsi->cluster_size;
+		EXFAT_I(inode)->i_size_aligned += fsi->cluster_size;
+		EXFAT_I(inode)->fid.size = size;
+		EXFAT_I(inode)->fid.flags = p_dir->flags;
+		inode->i_blocks += 1 << (fsi->cluster_size_bits - sb->s_blocksize_bits);
+	}
+
+	return dentry;
+}
+
+#define EXFAT_MIN_SUBDIR	(2)
+
+static s32 __count_dos_name_entries(struct super_block *sb, CHAIN_T *p_dir, u32 type, u32 *dotcnt)
+{
+	s32 i, count = 0, check_dot = 0;
+	s32 dentries_per_clu;
+	u32 entry_type;
+	CHAIN_T clu;
+	DENTRY_T *ep;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (IS_CLUS_FREE(p_dir->dir)) /* FAT16 root_dir */
+		dentries_per_clu = fsi->dentries_in_root;
+	else
+		dentries_per_clu = fsi->dentries_per_clu;
+
+	clu.dir = p_dir->dir;
+	clu.size = p_dir->size;
+	clu.flags = p_dir->flags;
+
+	if (dotcnt)
+		*dotcnt = 0;
+
+	while (!IS_CLUS_EOF(clu.dir)) {
+		for (i = 0; i < dentries_per_clu; i++) {
+			ep = exfat_get_dentry_in_dir(sb, &clu, i, NULL);
+			if (!ep)
+				return -EIO;
+
+			entry_type = fsi->fs_func->get_entry_type(ep);
+
+			if (entry_type == TYPE_UNUSED)
+				return count;
+			if (!(type & TYPE_CRITICAL_PRI) && !(type & TYPE_BENIGN_PRI))
+				continue;
+
+			if ((type != TYPE_ALL) && (type != entry_type))
+				continue;
+
+			count++;
+		}
+
+		/* FAT16 root_dir */
+		if (IS_CLUS_FREE(p_dir->dir))
+			break;
+
+		if (clu.flags == 0x03) {
+			if ((--clu.size) > 0)
+				clu.dir++;
+			else
+				clu.dir = CLUS_EOF;
+		} else {
+			if (get_next_clus_safe(sb, &(clu.dir)))
+				return -EIO;
+		}
+
+		check_dot = 0;
+	}
+
+	return count;
+}
+
+s32 check_dir_empty(struct super_block *sb, CHAIN_T *p_dir)
+{
+	s32 i;
+	s32 dentries_per_clu;
+	u32 type;
+	CHAIN_T clu;
+	DENTRY_T *ep;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (IS_CLUS_FREE(p_dir->dir)) /* FAT16 root_dir */
+		dentries_per_clu = fsi->dentries_in_root;
+	else
+		dentries_per_clu = fsi->dentries_per_clu;
+
+	clu.dir = p_dir->dir;
+	clu.size = p_dir->size;
+	clu.flags = p_dir->flags;
+
+	while (!IS_CLUS_EOF(clu.dir)) {
+		for (i = 0; i < dentries_per_clu; i++) {
+			ep = exfat_get_dentry_in_dir(sb, &clu, i, NULL);
+			if (!ep)
+				return -EIO;
+
+			type = fsi->fs_func->get_entry_type(ep);
+
+			if (type == TYPE_UNUSED)
+				return 0;
+
+			if ((type != TYPE_FILE) && (type != TYPE_DIR))
+				continue;
+
+			return -ENOTEMPTY;
+		}
+
+		/* FAT16 root_dir */
+		if (IS_CLUS_FREE(p_dir->dir))
+			return -ENOTEMPTY;
+
+		if (clu.flags == 0x03) {
+			if ((--clu.size) > 0)
+				clu.dir++;
+			else
+				clu.dir = CLUS_EOF;
+		} else {
+			if (get_next_clus_safe(sb, &(clu.dir)))
+				return -EIO;
+		}
+	}
+
+	return 0;
+}
+
+/* input  : dir, uni_name
+ * output : num_of_entry, dos_name(format : aaaaaa~1.bbb)
+ */
+static s32 get_num_entries_and_dos_name(struct super_block *sb, CHAIN_T *p_dir,
+					UNI_NAME_T *p_uniname, s32 *entries,
+					DOS_NAME_T *p_dosname, s32 lookup)
+{
+	s32 num_entries;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	/* Init null char. */
+	p_dosname->name[0] = '\0';
+
+	num_entries = fsi->fs_func->calc_num_entries(p_uniname);
+	if (num_entries == 0)
+		return -EINVAL;
+
+	*entries = num_entries;
+	return 0;
+}
+
+void exfat_get_uniname_from_dos_entry(struct super_block *sb, DOS_DENTRY_T *ep, UNI_NAME_T *p_uniname, u8 mode)
+{
+	DOS_NAME_T dos_name;
+
+	if (mode == 0x0)
+		dos_name.name_case = 0x0;
+	else
+		dos_name.name_case = ep->lcase;
+
+	memcpy(dos_name.name, ep->name, DOS_NAME_LENGTH);
+	exfat_nls_sfn_to_uni16s(sb, &dos_name, p_uniname);
+}
+
+/* returns the length of a struct qstr, ignoring trailing dots */
+static inline unsigned int __striptail_len(unsigned int len, const char *name)
+{
+	while (len && name[len - 1] == '.')
+		len--;
+	return len;
+}
+
+/*
+ * Name Resolution Functions :
+ * Zero if it was successful; otherwise nonzero.
+ */
+static s32 __resolve_path(struct inode *inode, const u8 *path, CHAIN_T *p_dir, UNI_NAME_T *p_uniname, int lookup)
+{
+	s32 namelen;
+	s32 lossy = NLS_NAME_NO_LOSSY;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	FILE_ID_T *fid = &(EXFAT_I(inode)->fid);
+
+	/* DOT and DOTDOT are handled by VFS layer */
+
+	/* strip all trailing spaces */
+	/* DO NOTHING : Is needed? */
+
+	/* strip all trailing periods */
+	namelen = __striptail_len(strlen(path), path);
+	if (!namelen)
+		return -ENOENT;
+
+	/* the limitation of linux? */
+	if (strlen(path) > (MAX_NAME_LENGTH * MAX_CHARSET_SIZE))
+		return -ENAMETOOLONG;
+
+	/*
+	 * strip all leading spaces :
+	 * "MS windows 7" supports leading spaces.
+	 * So we should skip this preprocessing for compatibility.
+	 */
+
+	/* file name conversion :
+	 * If lookup case, we allow bad-name for compatibility.
+	 */
+	namelen = exfat_nls_vfsname_to_uni16s(sb, path, namelen, p_uniname, &lossy);
+	if (namelen < 0)
+		return namelen; /* return error value */
+
+	if ((lossy && !lookup) || !namelen)
+		return -EINVAL;
+
+	exfat_debug_bug_on(fid->size != i_size_read(inode));
+//	fid->size = i_size_read(inode);
+
+	p_dir->dir = fid->start_clu;
+	p_dir->size = (u32)(fid->size >> fsi->cluster_size_bits);
+	p_dir->flags = fid->flags;
+
+	return 0;
+}
+
+static inline s32 resolve_path(struct inode *inode, const u8 *path, CHAIN_T *dir, UNI_NAME_T *uni)
+{
+	return __resolve_path(inode, path, dir, uni, 0);
+}
+
+static inline s32 resolve_path_for_lookup(struct inode *inode, const u8 *path, CHAIN_T *dir, UNI_NAME_T *uni)
+{
+	return __resolve_path(inode, path, dir, uni, 1);
+}
+
+static s32 create_dir(struct inode *inode, CHAIN_T *p_dir, UNI_NAME_T *p_uniname, FILE_ID_T *fid)
+{
+	s32 dentry, num_entries;
+	u64 ret;
+	u64 size;
+	CHAIN_T clu;
+	DOS_NAME_T dos_name;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	ret = get_num_entries_and_dos_name(sb, p_dir, p_uniname, &num_entries, &dos_name, 0);
+	if (ret)
+		return ret;
+
+	/* find_empty_entry must be called before alloc_cluster */
+	dentry = find_empty_entry(inode, p_dir, num_entries);
+	if (dentry < 0)
+		return dentry; /* -EIO or -ENOSPC */
+
+	clu.dir = CLUS_EOF;
+	clu.size = 0;
+	clu.flags = 0x03;
+
+	/* (0) Check if there are reserved clusters up to max. */
+	if ((fsi->used_clusters + fsi->reserved_clusters) >= (fsi->num_clusters - CLUS_BASE))
+		return -ENOSPC;
+
+	/* (1) allocate a cluster */
+	ret = fsi->fs_func->alloc_cluster(sb, 1, &clu, ALLOC_HOT);
+	if (ret)
+		return ret;
+
+	ret = __clear_cluster(inode, clu.dir);
+	if (ret)
+		return ret;
+
+	size = fsi->cluster_size;
+
+	/* (2) update the directory entry */
+	/* make sub-dir entry in parent directory */
+	ret = fsi->fs_func->init_dir_entry(sb, p_dir, dentry, TYPE_DIR, clu.dir, size);
+	if (ret)
+		return ret;
+
+	ret = fsi->fs_func->init_ext_entry(sb, p_dir, dentry, num_entries, p_uniname, &dos_name);
+	if (ret)
+		return ret;
+
+	fid->dir.dir = p_dir->dir;
+	fid->dir.size = p_dir->size;
+	fid->dir.flags = p_dir->flags;
+	fid->entry = dentry;
+
+	fid->attr = ATTR_SUBDIR;
+	fid->flags = 0x03;
+	fid->size = size;
+	fid->start_clu = clu.dir;
+
+	fid->type = TYPE_DIR;
+	fid->rwoffset = 0;
+	fid->hint_bmap.off = CLUS_EOF;
+
+	/* hint_stat will be used if this is directory. */
+	fid->version = 0;
+	fid->hint_stat.eidx = 0;
+	fid->hint_stat.clu = fid->start_clu;
+	fid->hint_femp.eidx = -1;
+
+	return 0;
+}
+
+static s32 create_file(struct inode *inode, CHAIN_T *p_dir, UNI_NAME_T *p_uniname, u8 mode, FILE_ID_T *fid)
+{
+	s32 ret, dentry, num_entries;
+	DOS_NAME_T dos_name;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	ret = get_num_entries_and_dos_name(sb, p_dir, p_uniname, &num_entries, &dos_name, 0);
+	if (ret)
+		return ret;
+
+	/* find_empty_entry must be called before alloc_cluster() */
+	dentry = find_empty_entry(inode, p_dir, num_entries);
+	if (dentry < 0)
+		return dentry; /* -EIO or -ENOSPC */
+
+	/* (1) update the directory entry */
+	/* fill the dos name directory entry information of the created file.
+	 * the first cluster is not determined yet. (0)
+	 */
+	ret = fsi->fs_func->init_dir_entry(sb, p_dir, dentry, TYPE_FILE | mode, CLUS_FREE, 0);
+	if (ret)
+		return ret;
+
+	ret = fsi->fs_func->init_ext_entry(sb, p_dir, dentry, num_entries, p_uniname, &dos_name);
+	if (ret)
+		return ret;
+
+	fid->dir.dir = p_dir->dir;
+	fid->dir.size = p_dir->size;
+	fid->dir.flags = p_dir->flags;
+	fid->entry = dentry;
+
+	fid->attr = ATTR_ARCHIVE | mode;
+	fid->flags = 0x03;
+	fid->size = 0;
+	fid->start_clu = CLUS_EOF;
+
+	fid->type = TYPE_FILE;
+	fid->rwoffset = 0;
+	fid->hint_bmap.off = CLUS_EOF;
+
+	/* hint_stat will be used if this is directory. */
+	fid->version = 0;
+	fid->hint_stat.eidx = 0;
+	fid->hint_stat.clu = fid->start_clu;
+	fid->hint_femp.eidx = -1;
+
+	return 0;
+}
+
+static s32 remove_file(struct inode *inode, CHAIN_T *p_dir, s32 entry)
+{
+	s32 num_entries;
+	u64 sector;
+	DENTRY_T *ep;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	ep = exfat_get_dentry_in_dir(sb, p_dir, entry, &sector);
+	if (!ep)
+		return -EIO;
+
+	exfat_dcache_lock(sb, sector);
+
+	/* exfat_dcache_lock() before call count_ext_entries() */
+	num_entries = fsi->fs_func->count_ext_entries(sb, p_dir, entry, ep);
+	if (num_entries < 0) {
+		exfat_dcache_unlock(sb, sector);
+		return -EIO;
+	}
+	num_entries++;
+
+	exfat_dcache_unlock(sb, sector);
+
+	/* (1) update the directory entry */
+	return fsi->fs_func->delete_dir_entry(sb, p_dir, entry, 0, num_entries);
+}
+
+static s32 rename_file(struct inode *inode, CHAIN_T *p_dir, s32 oldentry, UNI_NAME_T *p_uniname, FILE_ID_T *fid)
+{
+	s32 ret, newentry = -1, num_old_entries, num_new_entries;
+	u64 sector_old, sector_new;
+	DOS_NAME_T dos_name;
+	DENTRY_T *epold, *epnew;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	epold = exfat_get_dentry_in_dir(sb, p_dir, oldentry, &sector_old);
+	if (!epold)
+		return -EIO;
+
+	exfat_dcache_lock(sb, sector_old);
+
+	/* exfat_dcache_lock() before call count_ext_entries() */
+	num_old_entries = fsi->fs_func->count_ext_entries(sb, p_dir, oldentry, epold);
+	if (num_old_entries < 0) {
+		exfat_dcache_unlock(sb, sector_old);
+		return -EIO;
+	}
+	num_old_entries++;
+
+	ret = get_num_entries_and_dos_name(sb, p_dir, p_uniname, &num_new_entries, &dos_name, 0);
+	if (ret) {
+		exfat_dcache_unlock(sb, sector_old);
+		return ret;
+	}
+
+	if (num_old_entries < num_new_entries) {
+		newentry = find_empty_entry(inode, p_dir, num_new_entries);
+		if (newentry < 0) {
+			exfat_dcache_unlock(sb, sector_old);
+			return newentry; /* -EIO or -ENOSPC */
+		}
+
+		epnew = exfat_get_dentry_in_dir(sb, p_dir, newentry, &sector_new);
+		if (!epnew) {
+			exfat_dcache_unlock(sb, sector_old);
+			return -EIO;
+		}
+
+		memcpy((void *) epnew, (void *) epold, DENTRY_SIZE);
+		if (fsi->fs_func->get_entry_type(epnew) == TYPE_FILE) {
+			fsi->fs_func->set_entry_attr(epnew, fsi->fs_func->get_entry_attr(epnew) | ATTR_ARCHIVE);
+			fid->attr |= ATTR_ARCHIVE;
+		}
+		exfat_dcache_modify(sb, sector_new);
+		exfat_dcache_unlock(sb, sector_old);
+
+		epold = exfat_get_dentry_in_dir(sb, p_dir, oldentry+1, &sector_old);
+		exfat_dcache_lock(sb, sector_old);
+		epnew = exfat_get_dentry_in_dir(sb, p_dir, newentry+1, &sector_new);
+
+		if (!epold || !epnew) {
+			exfat_dcache_unlock(sb, sector_old);
+			return -EIO;
+		}
+
+		memcpy((void *) epnew, (void *) epold, DENTRY_SIZE);
+		exfat_dcache_modify(sb, sector_new);
+		exfat_dcache_unlock(sb, sector_old);
+
+		ret = fsi->fs_func->init_ext_entry(sb, p_dir, newentry, num_new_entries, p_uniname, &dos_name);
+		if (ret)
+			return ret;
+
+		fsi->fs_func->delete_dir_entry(sb, p_dir, oldentry, 0, num_old_entries);
+		fid->entry = newentry;
+	} else {
+		if (fsi->fs_func->get_entry_type(epold) == TYPE_FILE) {
+			fsi->fs_func->set_entry_attr(epold, fsi->fs_func->get_entry_attr(epold) | ATTR_ARCHIVE);
+			fid->attr |= ATTR_ARCHIVE;
+		}
+		exfat_dcache_modify(sb, sector_old);
+		exfat_dcache_unlock(sb, sector_old);
+
+		ret = fsi->fs_func->init_ext_entry(sb, p_dir, oldentry, num_new_entries, p_uniname, &dos_name);
+		if (ret)
+			return ret;
+
+		fsi->fs_func->delete_dir_entry(sb, p_dir, oldentry, num_new_entries, num_old_entries);
+	}
+
+	return 0;
+}
+
+static s32 move_file(struct inode *inode, CHAIN_T *p_olddir, s32 oldentry,
+		CHAIN_T *p_newdir, UNI_NAME_T *p_uniname, FILE_ID_T *fid)
+{
+	s32 ret, newentry, num_new_entries, num_old_entries;
+	u64 sector_mov, sector_new;
+	DOS_NAME_T dos_name;
+	DENTRY_T *epmov, *epnew;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	epmov = exfat_get_dentry_in_dir(sb, p_olddir, oldentry, &sector_mov);
+	if (!epmov)
+		return -EIO;
+
+	/* check if the source and target directory is the same */
+	if (fsi->fs_func->get_entry_type(epmov) == TYPE_DIR &&
+		fsi->fs_func->get_entry_clu0(epmov) == p_newdir->dir)
+		return -EINVAL;
+
+	exfat_dcache_lock(sb, sector_mov);
+
+	/* exfat_dcache_lock() before call count_ext_entries() */
+	num_old_entries = fsi->fs_func->count_ext_entries(sb, p_olddir, oldentry, epmov);
+	if (num_old_entries < 0) {
+		exfat_dcache_unlock(sb, sector_mov);
+		return -EIO;
+	}
+	num_old_entries++;
+
+	ret = get_num_entries_and_dos_name(sb, p_newdir, p_uniname, &num_new_entries, &dos_name, 0);
+	if (ret) {
+		exfat_dcache_unlock(sb, sector_mov);
+		return ret;
+	}
+
+	newentry = find_empty_entry(inode, p_newdir, num_new_entries);
+	if (newentry < 0) {
+		exfat_dcache_unlock(sb, sector_mov);
+		return newentry; /* -EIO or -ENOSPC */
+	}
+
+	epnew = exfat_get_dentry_in_dir(sb, p_newdir, newentry, &sector_new);
+	if (!epnew) {
+		exfat_dcache_unlock(sb, sector_mov);
+		return -EIO;
+	}
+
+	memcpy((void *) epnew, (void *) epmov, DENTRY_SIZE);
+	if (fsi->fs_func->get_entry_type(epnew) == TYPE_FILE) {
+		fsi->fs_func->set_entry_attr(epnew, fsi->fs_func->get_entry_attr(epnew) | ATTR_ARCHIVE);
+		fid->attr |= ATTR_ARCHIVE;
+	}
+	exfat_dcache_modify(sb, sector_new);
+	exfat_dcache_unlock(sb, sector_mov);
+
+	epmov = exfat_get_dentry_in_dir(sb, p_olddir, oldentry+1, &sector_mov);
+	exfat_dcache_lock(sb, sector_mov);
+	epnew = exfat_get_dentry_in_dir(sb, p_newdir, newentry+1, &sector_new);
+	if (!epmov || !epnew) {
+		exfat_dcache_unlock(sb, sector_mov);
+		return -EIO;
+	}
+
+	memcpy((void *) epnew, (void *) epmov, DENTRY_SIZE);
+	exfat_dcache_modify(sb, sector_new);
+	exfat_dcache_unlock(sb, sector_mov);
+
+	ret = fsi->fs_func->init_ext_entry(sb, p_newdir, newentry, num_new_entries, p_uniname, &dos_name);
+	if (ret)
+		return ret;
+
+	fsi->fs_func->delete_dir_entry(sb, p_olddir, oldentry, 0, num_old_entries);
+
+	fid->dir.dir = p_newdir->dir;
+	fid->dir.size = p_newdir->size;
+	fid->dir.flags = p_newdir->flags;
+
+	fid->entry = newentry;
+
+	return 0;
+}
+
+/* roll back to the initial state of the file system */
+s32 exfat_fscore_init(void)
+{
+	s32 ret;
+
+	ret = check_type_size();
+	if (ret)
+		return ret;
+
+	return exfat_extent_cache_init();
+}
+
+/* make free all memory-alloced global buffers */
+s32 exfat_fscore_shutdown(void)
+{
+	exfat_extent_cache_shutdown();
+	return 0;
+}
+
+/* check device is ejected */
+s32 exfat_fscore_check_bdi_valid(struct super_block *sb)
+{
+	return exfat_bdev_check_bdi_valid(sb);
+}
+
+static bool is_exfat(pbr_t *pbr)
+{
+	int i = 53;
+
+	do {
+		if (pbr->bpb.f64.res_zero[i-1])
+			break;
+	} while (--i);
+	return i ? false : true;
+}
+
+inline pbr_t *read_pbr_with_logical_sector(struct super_block *sb, struct buffer_head **prev_bh)
+{
+	pbr_t *p_pbr = (pbr_t *) (*prev_bh)->b_data;
+	u16 logical_sect = 0;
+
+	if (is_exfat(p_pbr))
+		logical_sect = 1 << p_pbr->bsx.f64.sect_size_bits;
+	else
+		logical_sect = get_unaligned_le16(&p_pbr->bpb.f16.sect_size);
+
+	/* is x a power of 2?
+	 * (x) != 0 && (((x) & ((x) - 1)) == 0)
+	 */
+	if (!is_power_of_2(logical_sect)
+			|| (logical_sect < 512)
+			|| (logical_sect > 4096)) {
+		exfat_log_msg(sb, KERN_ERR, "bogus logical sector size %u",
+						logical_sect);
+		return NULL;
+	}
+
+	if (logical_sect < sb->s_blocksize) {
+		exfat_log_msg(sb, KERN_ERR,
+			"logical sector size too small for device"
+			" (logical sector size = %u)", logical_sect);
+		return NULL;
+	}
+
+	if (logical_sect > sb->s_blocksize) {
+		struct buffer_head *bh = NULL;
+
+		__brelse(*prev_bh);
+		*prev_bh = NULL;
+
+		if (!sb_set_blocksize(sb, logical_sect)) {
+			exfat_log_msg(sb, KERN_ERR,
+				"unable to set blocksize %u", logical_sect);
+			return NULL;
+		}
+		bh = sb_bread(sb, 0);
+		if (!bh) {
+			exfat_log_msg(sb, KERN_ERR,
+				"unable to read boot sector "
+				"(logical sector size = %lu)", sb->s_blocksize);
+			return NULL;
+		}
+
+		*prev_bh = bh;
+		p_pbr = (pbr_t *) bh->b_data;
+	}
+
+	exfat_log_msg(sb, KERN_INFO,
+		"set logical sector size  : %lu", sb->s_blocksize);
+
+	return p_pbr;
+}
+
+/* mount the file system volume */
+s32 exfat_fscore_mount(struct super_block *sb)
+{
+	s32 ret;
+	pbr_t *p_pbr;
+	struct buffer_head *tmp_bh = NULL;
+	struct gendisk *disk = sb->s_bdev->bd_disk;
+	struct hd_struct *part = sb->s_bdev->bd_part;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	/* initialize previous I/O error */
+	fsi->prev_eio = 0;
+
+	/* open the block device */
+	if (exfat_bdev_open_dev(sb))
+		return -EIO;
+
+	/* set block size to read super block */
+	sb_min_blocksize(sb, 512);
+
+	/* read boot sector */
+	ret = exfat_read_sect(sb, 0, &tmp_bh, 1);
+	if (ret) {
+		exfat_log_msg(sb, KERN_ERR, "unable to read boot sector");
+		ret = -EIO;
+		goto bd_close;
+	}
+
+	/* PRB is read */
+	p_pbr = (pbr_t *) tmp_bh->b_data;
+
+	/* check the validity of PBR */
+	if (le16_to_cpu((p_pbr->signature)) != PBR_SIGNATURE) {
+		exfat_log_msg(sb, KERN_ERR, "invalid boot record signature");
+		brelse(tmp_bh);
+		ret = -EINVAL;
+		goto bd_close;
+	}
+
+	/* check logical sector size */
+	p_pbr = read_pbr_with_logical_sector(sb, &tmp_bh);
+	if (!p_pbr) {
+		brelse(tmp_bh);
+		ret = -EIO;
+		goto bd_close;
+	}
+
+	/* fill fs_struct */
+	if (!is_exfat(p_pbr)) {
+		ret = -EINVAL;
+		goto free_bh;
+	}
+
+	/* set maximum file size for exFAT */
+	sb->s_maxbytes = 0x7fffffffffffffffLL;
+	ret = mount_exfat(sb, p_pbr);
+
+free_bh:
+	brelse(tmp_bh);
+	if (ret) {
+		exfat_log_msg(sb, KERN_ERR, "failed to mount fs-core");
+		goto bd_close;
+	}
+
+	/* warn misaligned data data start sector must be a multiple of clu_size */
+	exfat_log_msg(sb, KERN_INFO,
+		"(bps : %lu, spc : %u, data start : %llu, %s)",
+		sb->s_blocksize, fsi->sect_per_clus, fsi->data_start_sector,
+		(fsi->data_start_sector & (fsi->sect_per_clus - 1)) ?
+		"misaligned" : "aligned");
+
+	exfat_log_msg(sb, KERN_INFO,
+		"detected volume size     : %llu KB (disk : %llu KB, "
+		"part : %llu KB)",
+		(fsi->num_sectors * (sb->s_blocksize >> SECTOR_SIZE_BITS)) >> 1,
+		disk ? (u64)((disk->part0.nr_sects) >> 1) : 0,
+		part ? (u64)((part->nr_sects) >> 1) : 0);
+
+	ret = load_upcase_table(sb);
+	if (ret) {
+		exfat_log_msg(sb, KERN_ERR, "failed to load upcase table");
+		goto bd_close;
+	}
+
+	/* allocate-bitmap is only for exFAT */
+	ret = exfat_load_alloc_bmp(sb);
+	if (ret) {
+		exfat_log_msg(sb, KERN_ERR, "failed to load alloc-bitmap");
+		goto free_upcase;
+	}
+
+	if (fsi->used_clusters == UINT_MAX) {
+		ret = fsi->fs_func->count_used_clusters(sb, &fsi->used_clusters);
+		if (ret) {
+			exfat_log_msg(sb, KERN_ERR, "failed to scan clusters");
+			goto exfat_free_alloc_bmp;
+		}
+	}
+
+	return 0;
+exfat_free_alloc_bmp:
+	exfat_free_alloc_bmp(sb);
+free_upcase:
+	free_upcase_table(sb);
+bd_close:
+	exfat_bdev_close_dev(sb);
+	return ret;
+}
+
+/* umount the file system volume */
+s32 exfat_fscore_umount(struct super_block *sb)
+{
+	s32 ret = 0;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (fs_sync(sb, 0))
+		ret = -EIO;
+
+	if (fs_set_vol_flags(sb, VOL_CLEAN))
+		ret = -EIO;
+
+	free_upcase_table(sb);
+
+	exfat_free_alloc_bmp(sb);
+
+	if (exfat_fcache_release_all(sb))
+		ret = -EIO;
+
+	if (exfat_dcache_release_all(sb))
+		ret = -EIO;
+
+	if (fsi->prev_eio)
+		ret = -EIO;
+	/* close the block device */
+	exfat_bdev_close_dev(sb);
+	return ret;
+}
+
+/* get the information of a file system volume */
+s32 exfat_fscore_statfs(struct super_block *sb, VOL_INFO_T *info)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (fsi->used_clusters == UINT_MAX) {
+		if (fsi->fs_func->count_used_clusters(sb, &fsi->used_clusters))
+			return -EIO;
+	}
+
+	info->ClusterSize = fsi->cluster_size;
+	info->NumClusters = fsi->num_clusters - 2; /* clu 0 & 1 */
+	info->UsedClusters = fsi->used_clusters + fsi->reserved_clusters;
+	info->FreeClusters = info->NumClusters - info->UsedClusters;
+
+	return 0;
+}
+
+/* synchronize all file system volumes */
+s32 exfat_fscore_sync_fs(struct super_block *sb, s32 do_sync)
+{
+	/* synchronize the file system */
+	if (fs_sync(sb, do_sync))
+		return -EIO;
+
+	if (fs_set_vol_flags(sb, VOL_CLEAN))
+		return -EIO;
+
+	return 0;
+}
+
+/* stat allocation unit of a file system volume */
+u32 exfat_fscore_get_au_stat(struct super_block *sb, s32 mode)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (fsi->fs_func->get_au_stat)
+		return fsi->fs_func->get_au_stat(sb, mode);
+
+	/* No error, just returns 0 */
+	return 0;
+}
+
+/* lookup a file */
+s32 exfat_fscore_lookup(struct inode *inode, u8 *path, FILE_ID_T *fid)
+{
+	s32 ret, dentry, num_entries;
+	CHAIN_T dir;
+	UNI_NAME_T uni_name;
+	DOS_NAME_T dos_name;
+	DENTRY_T *ep, *ep2;
+	ENTRY_SET_CACHE_T *es = NULL;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	FILE_ID_T *dir_fid = &(EXFAT_I(inode)->fid);
+
+	/* check the validity of directory name in the given pathname */
+	ret = resolve_path_for_lookup(inode, path, &dir, &uni_name);
+	if (ret)
+		return ret;
+
+	ret = get_num_entries_and_dos_name(sb, &dir, &uni_name, &num_entries, &dos_name, 1);
+	if (ret)
+		return ret;
+
+	/* check the validation of hint_stat and initialize it if required */
+	if (dir_fid->version != (u32)(inode_peek_iversion_raw(inode) & 0xffffffff)) {
+		dir_fid->hint_stat.clu = dir.dir;
+		dir_fid->hint_stat.eidx = 0;
+		dir_fid->version = (u32)(inode_peek_iversion_raw(inode) & 0xffffffff);
+		dir_fid->hint_femp.eidx = -1;
+	}
+
+	/* search the file name for directories */
+	dentry = fsi->fs_func->find_dir_entry(sb, dir_fid, &dir, &uni_name,
+				num_entries, &dos_name, TYPE_ALL);
+
+	if ((dentry < 0) && (dentry != -EEXIST))
+		return dentry; /* -error value */
+
+	fid->dir.dir = dir.dir;
+	fid->dir.size = dir.size;
+	fid->dir.flags = dir.flags;
+	fid->entry = dentry;
+
+	/* root directory itself */
+	if (unlikely(dentry == -EEXIST)) {
+		fid->type = TYPE_DIR;
+		fid->rwoffset = 0;
+		fid->hint_bmap.off = CLUS_EOF;
+
+		fid->attr = ATTR_SUBDIR;
+		fid->flags = 0x01;
+		fid->size = 0;
+		fid->start_clu = fsi->root_dir;
+	} else {
+		es = exfat_get_dentry_set_in_dir(sb, &dir, dentry, ES_2_ENTRIES, &ep);
+		if (!es)
+			return -EIO;
+		ep2 = ep+1;
+
+		fid->type = fsi->fs_func->get_entry_type(ep);
+		fid->rwoffset = 0;
+		fid->hint_bmap.off = CLUS_EOF;
+		fid->attr = fsi->fs_func->get_entry_attr(ep);
+
+		fid->size = fsi->fs_func->get_entry_size(ep2);
+		if ((fid->type == TYPE_FILE) && (fid->size == 0)) {
+			fid->flags = 0x03;
+			fid->start_clu = CLUS_EOF;
+		} else {
+			fid->flags = fsi->fs_func->get_entry_flag(ep2);
+			fid->start_clu = fsi->fs_func->get_entry_clu0(ep2);
+		}
+
+		/* FOR GRACEFUL ERROR HANDLING */
+		if (IS_CLUS_FREE(fid->start_clu)) {
+			exfat_fs_error(sb,
+				"non-zero size file starts with zero cluster "
+				"(size : %llu, p_dir : %u, entry : 0x%08x)",
+				fid->size, fid->dir.dir, fid->entry);
+			exfat_debug_bug_on(1);
+			return -EIO;
+		}
+
+		exfat_release_dentry_set(es);
+	}
+
+	/* hint_stat will be used if this is directory. */
+	fid->version = 0;
+	fid->hint_stat.eidx = 0;
+	fid->hint_stat.clu = fid->start_clu;
+	fid->hint_femp.eidx = -1;
+
+	return 0;
+}
+
+/* create a file */
+s32 exfat_fscore_create(struct inode *inode, u8 *path, u8 mode, FILE_ID_T *fid)
+{
+	s32 ret/*, dentry*/;
+	CHAIN_T dir;
+	UNI_NAME_T uni_name;
+	struct super_block *sb = inode->i_sb;
+
+	/* check the validity of directory name in the given pathname */
+	ret = resolve_path(inode, path, &dir, &uni_name);
+	if (ret)
+		return ret;
+
+	fs_set_vol_flags(sb, VOL_DIRTY);
+
+	/* create a new file */
+	ret = create_file(inode, &dir, &uni_name, mode, fid);
+
+	fs_sync(sb, 0);
+	fs_set_vol_flags(sb, VOL_CLEAN);
+
+	return ret;
+}
+
+/* read data from a opened file */
+s32 exfat_fscore_read_link(struct inode *inode, FILE_ID_T *fid, void *buffer, u64 count, u64 *rcount)
+{
+	s32 ret = 0;
+	s32 offset, sec_offset;
+	u32 clu_offset;
+	u32 clu;
+	u64 logsector, oneblkread, read_bytes;
+	struct buffer_head *tmp_bh = NULL;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	/* check if the given file ID is opened */
+	if (fid->type != TYPE_FILE)
+		return -EPERM;
+
+	if (fid->rwoffset > fid->size)
+		fid->rwoffset = fid->size;
+
+	if (count > (fid->size - fid->rwoffset))
+		count = fid->size - fid->rwoffset;
+
+	if (count == 0) {
+		if (rcount)
+			*rcount = 0;
+		return 0;
+	}
+
+	read_bytes = 0;
+
+	while (count > 0) {
+		clu_offset = fid->rwoffset >> fsi->cluster_size_bits;
+		clu = fid->start_clu;
+
+		if (fid->flags == 0x03) {
+			clu += clu_offset;
+		} else {
+			/* hint information */
+			if ((clu_offset > 0) &&
+				((fid->hint_bmap.off != CLUS_EOF) && (fid->hint_bmap.off > 0)) &&
+				(clu_offset >= fid->hint_bmap.off)) {
+				clu_offset -= fid->hint_bmap.off;
+				clu = fid->hint_bmap.clu;
+			}
+
+			while (clu_offset > 0) {
+				ret = get_next_clus_safe(sb, &clu);
+				if (ret)
+					goto err_out;
+
+				clu_offset--;
+			}
+		}
+
+		/* hint information */
+		fid->hint_bmap.off = fid->rwoffset >> fsi->cluster_size_bits;
+		fid->hint_bmap.clu = clu;
+
+		offset = (s32)(fid->rwoffset & (fsi->cluster_size - 1)); /* byte offset in cluster   */
+		sec_offset = offset >> sb->s_blocksize_bits;            /* sector offset in cluster */
+		offset &= (sb->s_blocksize - 1);                         /* byte offset in sector    */
+
+		logsector = CLUS_TO_SECT(fsi, clu) + sec_offset;
+
+		oneblkread = (u64)(sb->s_blocksize - offset);
+		if (oneblkread > count)
+			oneblkread = count;
+
+		if ((offset == 0) && (oneblkread == sb->s_blocksize)) {
+			ret = exfat_read_sect(sb, logsector, &tmp_bh, 1);
+			if (ret)
+				goto err_out;
+			memcpy(((s8 *) buffer)+read_bytes, ((s8 *) tmp_bh->b_data), (s32) oneblkread);
+		} else {
+			ret = exfat_read_sect(sb, logsector, &tmp_bh, 1);
+			if (ret)
+				goto err_out;
+			memcpy(((s8 *) buffer)+read_bytes, ((s8 *) tmp_bh->b_data)+offset, (s32) oneblkread);
+		}
+		count -= oneblkread;
+		read_bytes += oneblkread;
+		fid->rwoffset += oneblkread;
+	}
+
+err_out:
+	brelse(tmp_bh);
+
+	/* set the size of read bytes */
+	if (rcount != NULL)
+		*rcount = read_bytes;
+
+	return ret;
+}
+
+/* write data into a opened file */
+s32 exfat_fscore_write_link(struct inode *inode, FILE_ID_T *fid, void *buffer, u64 count, u64 *wcount)
+{
+	s32 ret = 0;
+	s32 modified = false, offset, sec_offset;
+	u32 clu_offset, num_clusters, num_alloc;
+	u32 clu, last_clu;
+	u64 logsector, oneblkwrite, write_bytes;
+	CHAIN_T new_clu;
+	TIMESTAMP_T tm;
+	DENTRY_T *ep, *ep2;
+	ENTRY_SET_CACHE_T *es = NULL;
+	struct buffer_head *tmp_bh = NULL;
+	struct super_block *sb = inode->i_sb;
+	u32 blksize = (u32)sb->s_blocksize;
+	u32 blksize_mask = (u32)(sb->s_blocksize-1);
+	u8 blksize_bits = sb->s_blocksize_bits;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	/* check if the given file ID is opened */
+	if (fid->type != TYPE_FILE)
+		return -EPERM;
+
+	if (fid->rwoffset > fid->size)
+		fid->rwoffset = fid->size;
+
+	if (count == 0) {
+		if (wcount)
+			*wcount = 0;
+		return 0;
+	}
+
+	fs_set_vol_flags(sb, VOL_DIRTY);
+
+	if (fid->size == 0)
+		num_clusters = 0;
+	else
+		num_clusters = ((fid->size-1) >> fsi->cluster_size_bits) + 1;
+
+	write_bytes = 0;
+
+	while (count > 0) {
+		clu_offset = (fid->rwoffset >> fsi->cluster_size_bits);
+		clu = last_clu = fid->start_clu;
+
+		if (fid->flags == 0x03) {
+			if ((clu_offset > 0) && (!IS_CLUS_EOF(clu))) {
+				last_clu += clu_offset - 1;
+
+				if (clu_offset == num_clusters)
+					clu = CLUS_EOF;
+				else
+					clu += clu_offset;
+			}
+		} else {
+			/* hint information */
+			if ((clu_offset > 0) &&
+				((fid->hint_bmap.off != CLUS_EOF) && (fid->hint_bmap.off > 0)) &&
+				(clu_offset >= fid->hint_bmap.off)) {
+				clu_offset -= fid->hint_bmap.off;
+				clu = fid->hint_bmap.clu;
+			}
+
+			while ((clu_offset > 0) && (!IS_CLUS_EOF(clu))) {
+				last_clu = clu;
+				ret = get_next_clus_safe(sb, &clu);
+				if (ret)
+					goto err_out;
+
+				clu_offset--;
+			}
+		}
+
+		if (IS_CLUS_EOF(clu)) {
+			num_alloc = ((count-1) >> fsi->cluster_size_bits) + 1;
+			new_clu.dir = IS_CLUS_EOF(last_clu) ? CLUS_EOF : last_clu+1;
+			new_clu.size = 0;
+			new_clu.flags = fid->flags;
+
+			/* (1) allocate a chain of clusters */
+			ret = fsi->fs_func->alloc_cluster(sb, num_alloc, &new_clu, ALLOC_COLD);
+			if (ret)
+				goto err_out;
+
+			/* (2) append to the FAT chain */
+			if (IS_CLUS_EOF(last_clu)) {
+				if (new_clu.flags == 0x01)
+					fid->flags = 0x01;
+				fid->start_clu = new_clu.dir;
+				modified = true;
+			} else {
+				if (new_clu.flags != fid->flags) {
+					/* no-fat-chain bit is disabled,
+					 * so fat-chain should be synced with
+					 * alloc-bmp
+					 */
+					exfat_chain_cont_cluster(sb, fid->start_clu, num_clusters);
+					fid->flags = 0x01;
+					modified = true;
+				}
+				if (new_clu.flags == 0x01) {
+					ret = exfat_ent_set(sb, last_clu, new_clu.dir);
+					if (ret)
+						goto err_out;
+				}
+			}
+
+			num_clusters += num_alloc;
+			clu = new_clu.dir;
+		}
+
+		/* hint information */
+		fid->hint_bmap.off = fid->rwoffset >> fsi->cluster_size_bits;
+		fid->hint_bmap.clu = clu;
+
+		/* byte offset in cluster   */
+		offset = (s32)(fid->rwoffset & (fsi->cluster_size-1));
+		/* sector offset in cluster */
+		sec_offset = offset >> blksize_bits;
+		/* byte offset in sector    */
+		offset &= blksize_mask;
+		logsector = CLUS_TO_SECT(fsi, clu) + sec_offset;
+
+		oneblkwrite = (u64)(blksize - offset);
+		if (oneblkwrite > count)
+			oneblkwrite = count;
+
+		if ((offset == 0) && (oneblkwrite == blksize)) {
+			ret = exfat_read_sect(sb, logsector, &tmp_bh, 0);
+			if (ret)
+				goto err_out;
+
+			memcpy(((s8 *)tmp_bh->b_data),
+				((s8 *)buffer)+write_bytes,
+				(s32)oneblkwrite);
+
+			ret = exfat_write_sect(sb, logsector, tmp_bh, 0);
+			if (ret) {
+				brelse(tmp_bh);
+				goto err_out;
+			}
+		} else {
+			if ((offset > 0) || ((fid->rwoffset+oneblkwrite) < fid->size)) {
+				ret = exfat_read_sect(sb, logsector, &tmp_bh, 1);
+				if (ret)
+					goto err_out;
+			} else {
+				ret = exfat_read_sect(sb, logsector, &tmp_bh, 0);
+				if (ret)
+					goto err_out;
+			}
+
+			memcpy(((s8 *) tmp_bh->b_data)+offset, ((s8 *) buffer)+write_bytes, (s32) oneblkwrite);
+			ret = exfat_write_sect(sb, logsector, tmp_bh, 0);
+			if (ret) {
+				brelse(tmp_bh);
+				goto err_out;
+			}
+		}
+
+		count -= oneblkwrite;
+		write_bytes += oneblkwrite;
+		fid->rwoffset += oneblkwrite;
+
+		fid->attr |= ATTR_ARCHIVE;
+
+		if (fid->size < fid->rwoffset) {
+			fid->size = fid->rwoffset;
+			modified = true;
+		}
+	}
+
+	brelse(tmp_bh);
+
+	/* (3) update the direcoty entry */
+	/* get_entry_(set_)in_dir shoulb be check DIR_DELETED flag. */
+	es = exfat_get_dentry_set_in_dir(sb, &(fid->dir), fid->entry, ES_ALL_ENTRIES, &ep);
+	if (!es) {
+		ret = -EIO;
+		goto err_out;
+	}
+	ep2 = ep+1;
+
+	fsi->fs_func->set_entry_time(ep, exfat_tm_now(EXFAT_SB(sb), &tm), TM_MODIFY);
+	fsi->fs_func->set_entry_attr(ep, fid->attr);
+
+	if (modified) {
+		if (fsi->fs_func->get_entry_flag(ep2) != fid->flags)
+			fsi->fs_func->set_entry_flag(ep2, fid->flags);
+
+		if (fsi->fs_func->get_entry_size(ep2) != fid->size)
+			fsi->fs_func->set_entry_size(ep2, fid->size);
+
+		if (fsi->fs_func->get_entry_clu0(ep2) != fid->start_clu)
+			fsi->fs_func->set_entry_clu0(ep2, fid->start_clu);
+	}
+
+	if (exfat_update_dir_chksum_with_entry_set(sb, es)) {
+		ret = -EIO;
+		goto err_out;
+	}
+	exfat_release_dentry_set(es);
+
+	fs_sync(sb, 0);
+	fs_set_vol_flags(sb, VOL_CLEAN);
+
+err_out:
+	/* set the size of written bytes */
+	if (wcount)
+		*wcount = write_bytes;
+
+	return ret;
+}
+
+/* resize the file length */
+s32 exfat_fscore_truncate(struct inode *inode, u64 old_size, u64 new_size)
+{
+	u32 num_clusters_new, num_clusters_da, num_clusters_phys;
+	u32 last_clu = CLUS_FREE;
+	CHAIN_T clu;
+	TIMESTAMP_T tm;
+	DENTRY_T *ep, *ep2;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	FILE_ID_T *fid = &(EXFAT_I(inode)->fid);
+	ENTRY_SET_CACHE_T *es = NULL;
+	s32 evict = (fid->dir.dir == DIR_DELETED) ? 1 : 0;
+
+	/* check if the given file ID is opened */
+	if ((fid->type != TYPE_FILE) && (fid->type != TYPE_DIR))
+		return -EPERM;
+
+	/* TO CHECK inode type and size */
+	MMSG("%s: inode(%p) type(%s) size:%lld->%lld\n", __func__, inode,
+		(fid->type == TYPE_FILE) ? "file" : "dir", old_size, new_size);
+
+	/* XXX : This is for debugging. */
+
+	/* It can be when write failed */
+#if 0
+	if (fid->size != old_size) {
+		DMSG("%s: inode(%p) size-mismatch(old:%lld != fid:%lld)\n",
+				__func__, inode, old_size, fid->size);
+		WARN_ON(1);
+	}
+#endif
+	/*
+	 * There is no lock to protect fid->size.
+	 * So, we should get old_size and use it.
+	 */
+	if (old_size <= new_size)
+		return 0;
+
+	fs_set_vol_flags(sb, VOL_DIRTY);
+
+	/* Reserved count update */
+	#define num_clusters(v) ((v) ? (u32)(((v) - 1) >> fsi->cluster_size_bits) + 1 : 0)
+	num_clusters_da = num_clusters(EXFAT_I(inode)->i_size_aligned);
+	num_clusters_new = num_clusters(i_size_read(inode));
+	num_clusters_phys = num_clusters(EXFAT_I(inode)->i_size_ondisk);
+
+	/* num_clusters(i_size_old) should be equal to num_clusters_da */
+	BUG_ON((num_clusters(old_size)) != (num_clusters(EXFAT_I(inode)->i_size_aligned)));
+
+	/* for debugging (FIXME: is okay on no-da case?) */
+	BUG_ON(num_clusters_da < num_clusters_phys);
+
+	if ((num_clusters_da != num_clusters_phys) &&
+			(num_clusters_new < num_clusters_da)) {
+		/* Decrement reserved clusters
+		 * n_reserved = num_clusters_da - max(new,phys)
+		 */
+		int n_reserved = (num_clusters_new > num_clusters_phys) ?
+				(num_clusters_da - num_clusters_new) :
+				(num_clusters_da - num_clusters_phys);
+
+		fsi->reserved_clusters -= n_reserved;
+		BUG_ON(fsi->reserved_clusters < 0);
+	}
+
+	clu.dir = fid->start_clu;
+	/* In no-da case, num_clusters_phys is equal to below value
+	 * clu.size = (u32)((old_size-1) >> fsi->cluster_size_bits) + 1;
+	 */
+	clu.size = num_clusters_phys;
+	clu.flags = fid->flags;
+
+	if (new_size > 0) {
+		/* Truncate FAT chain num_clusters after the first cluster
+		 * num_clusters = min(new, phys);
+		 */
+		u32 num_clusters = (num_clusters_new < num_clusters_phys) ?
+					num_clusters_new : num_clusters_phys;
+
+		/* Follow FAT chain
+		 * (defensive coding - works fine even with corrupted FAT table
+		 */
+		if (clu.flags == 0x03) {
+			clu.dir += num_clusters;
+			clu.size -= num_clusters;
+#if 0
+		/* exfat_extent_get_clus can`t know last_cluster
+		 * when find target cluster in cache.
+		 */
+		} else if (fid->type == TYPE_FILE) {
+			u32 fclus = 0;
+			s32 err = exfat_extent_get_clus(inode, num_clusters,
+					&fclus, &(clu.dir), &last_clu, 0);
+			if (err)
+				return -EIO;
+			ASSERT(fclus == num_clusters);
+
+			if ((num_clusters > 1) && (last_clu == fid->start_clu)) {
+				u32 fclus_tmp = 0;
+				u32 temp = 0;
+
+				err = exfat_extent_get_clus(inode, num_clusters - 1,
+						&fclus_tmp, &last_clu, &temp, 0);
+				if (err)
+					return -EIO;
+				ASSERT(fclus_tmp == (num_clusters - 1));
+			}
+
+			num_clusters -= fclus;
+			clu.size -= fclus;
+#endif
+		} else {
+			while (num_clusters > 0) {
+				last_clu = clu.dir;
+				if (get_next_clus_safe(sb, &(clu.dir)))
+					return -EIO;
+
+				num_clusters--;
+				clu.size--;
+			}
+		}
+
+		/* Optimization avialable: */
+#if 0
+		if (num_clusters_new < num_clusters) {
+			< loop >
+		} else {
+			// num_clusters_new >= num_clusters_phys
+			// FAT truncation is not necessary
+
+			clu.dir = CLUS_EOF;
+			clu.size = 0;
+		}
+#endif
+	} else if (new_size == 0) {
+		fid->flags = 0x03;
+		fid->start_clu = CLUS_EOF;
+	}
+	fid->size = new_size;
+
+	if (fid->type == TYPE_FILE)
+		fid->attr |= ATTR_ARCHIVE;
+
+	/*
+	 * clu.dir: free from
+	 * clu.size: # of clusters to free (exFAT, 0x03 only), no fat_free if 0
+	 * clu.flags: fid->flags (exFAT only)
+	 */
+
+	/* (1) update the directory entry */
+	if (!evict) {
+		es = exfat_get_dentry_set_in_dir(sb, &(fid->dir), fid->entry, ES_ALL_ENTRIES, &ep);
+		if (!es)
+			return -EIO;
+		ep2 = ep+1;
+
+		fsi->fs_func->set_entry_time(ep, exfat_tm_now(EXFAT_SB(sb), &tm), TM_MODIFY);
+		fsi->fs_func->set_entry_attr(ep, fid->attr);
+
+		/* File size should be zero if there is no cluster allocated */
+		if (IS_CLUS_EOF(fid->start_clu))
+			fsi->fs_func->set_entry_size(ep2, 0);
+		else
+			fsi->fs_func->set_entry_size(ep2, new_size);
+
+		if (new_size == 0) {
+			/* Any directory can not be truncated to zero */
+			BUG_ON(fid->type != TYPE_FILE);
+
+			fsi->fs_func->set_entry_flag(ep2, 0x01);
+			fsi->fs_func->set_entry_clu0(ep2, CLUS_FREE);
+		}
+
+		if (exfat_update_dir_chksum_with_entry_set(sb, es))
+			return -EIO;
+		exfat_release_dentry_set(es);
+	}
+
+	/* (2) cut off from the FAT chain */
+	if ((fid->flags == 0x01) &&
+		(!IS_CLUS_FREE(last_clu)) && (!IS_CLUS_EOF(last_clu))) {
+		if (exfat_ent_set(sb, last_clu, CLUS_EOF))
+			return -EIO;
+	}
+
+	/* (3) invalidate cache and free the clusters */
+	/* clear extent cache */
+	exfat_extent_cache_inval_inode(inode);
+
+	/* hint information */
+	fid->hint_bmap.off = CLUS_EOF;
+	fid->hint_bmap.clu = CLUS_EOF;
+	if (fid->rwoffset > fid->size)
+		fid->rwoffset = fid->size;
+
+	/* hint_stat will be used if this is directory. */
+	fid->hint_stat.eidx = 0;
+	fid->hint_stat.clu = fid->start_clu;
+	fid->hint_femp.eidx = -1;
+
+	/* free the clusters */
+	if (fsi->fs_func->free_cluster(sb, &clu, evict))
+		return -EIO;
+
+	fs_sync(sb, 0);
+	fs_set_vol_flags(sb, VOL_CLEAN);
+
+	return 0;
+}
+
+static void update_parent_info(FILE_ID_T *fid, struct inode *parent_inode)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(parent_inode->i_sb)->fsi);
+	FILE_ID_T *parent_fid = &(EXFAT_I(parent_inode)->fid);
+
+	 /*
+	  * the problem that FILE_ID_T caches wrong parent info.
+	  *
+	  * because of flag-mismatch of fid->dir,
+	  * there is abnormal traversing cluster chain.
+	  */
+	if (unlikely((parent_fid->flags != fid->dir.flags)
+		|| (parent_fid->size != (fid->dir.size<<fsi->cluster_size_bits))
+		|| (parent_fid->start_clu != fid->dir.dir))) {
+
+		fid->dir.dir = parent_fid->start_clu;
+		fid->dir.flags = parent_fid->flags;
+		fid->dir.size = ((parent_fid->size + (fsi->cluster_size-1))
+						>> fsi->cluster_size_bits);
+	}
+}
+
+/* rename or move a old file into a new file */
+s32 exfat_fscore_rename(struct inode *old_parent_inode, FILE_ID_T *fid,
+		struct inode *new_parent_inode, struct dentry *new_dentry)
+{
+	s32 ret;
+	s32 dentry;
+	CHAIN_T olddir, newdir;
+	CHAIN_T *p_dir = NULL;
+	UNI_NAME_T uni_name;
+	DENTRY_T *ep;
+	struct super_block *sb = old_parent_inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	u8 *new_path = (u8 *) new_dentry->d_name.name;
+	struct inode *new_inode = new_dentry->d_inode;
+	int num_entries;
+	FILE_ID_T *new_fid = NULL;
+	u32 new_entry_type = TYPE_UNUSED;
+	s32 new_entry = 0;
+
+	/* check the validity of pointer parameters */
+	if ((new_path == NULL) || (strlen(new_path) == 0))
+		return -EINVAL;
+
+	if (fid->dir.dir == DIR_DELETED) {
+		EMSG("%s : abnormal access to deleted source dentry\n", __func__);
+		return -ENOENT;
+	}
+
+	/* patch 1.2.4 : the problem that FILE_ID_T caches wrong parent info. */
+	update_parent_info(fid, old_parent_inode);
+
+	olddir.dir = fid->dir.dir;
+	olddir.size = fid->dir.size;
+	olddir.flags = fid->dir.flags;
+
+	dentry = fid->entry;
+
+	ep = exfat_get_dentry_in_dir(sb, &olddir, dentry, NULL);
+	if (!ep)
+		return -EIO;
+
+	if (fsi->fs_func->get_entry_attr(ep) & ATTR_READONLY)
+		return -EPERM;
+
+	/* check whether new dir is existing directory and empty */
+	if (new_inode) {
+		ret = -EIO;
+		new_fid = &EXFAT_I(new_inode)->fid;
+
+		if (new_fid->dir.dir == DIR_DELETED) {
+			EMSG("%s : abnormal access to deleted target dentry\n", __func__);
+			goto out;
+		}
+
+		/* patch 1.2.4 :
+		 * the problem that FILE_ID_T caches wrong parent info.
+		 *
+		 * FIXME : is needed?
+		 */
+		update_parent_info(new_fid, new_parent_inode);
+
+		p_dir = &(new_fid->dir);
+		new_entry = new_fid->entry;
+		ep = exfat_get_dentry_in_dir(sb, p_dir, new_entry, NULL);
+		if (!ep)
+			goto out;
+
+		new_entry_type = fsi->fs_func->get_entry_type(ep);
+
+		/* if new_inode exists, update fid */
+		new_fid->size = i_size_read(new_inode);
+
+		if (new_entry_type == TYPE_DIR) {
+			CHAIN_T new_clu;
+
+			new_clu.dir = new_fid->start_clu;
+			new_clu.size = ((new_fid->size-1) >> fsi->cluster_size_bits) + 1;
+			new_clu.flags = new_fid->flags;
+
+			ret = check_dir_empty(sb, &new_clu);
+			if (ret)
+				return ret;
+		}
+	}
+
+	/* check the validity of directory name in the given new pathname */
+	ret = resolve_path(new_parent_inode, new_path, &newdir, &uni_name);
+	if (ret)
+		return ret;
+
+	fs_set_vol_flags(sb, VOL_DIRTY);
+
+	if (olddir.dir == newdir.dir)
+		ret = rename_file(new_parent_inode, &olddir, dentry, &uni_name, fid);
+	else
+		ret = move_file(new_parent_inode, &olddir, dentry, &newdir, &uni_name, fid);
+
+	if ((!ret) && new_inode) {
+		/* delete entries of new_dir */
+		ep = exfat_get_dentry_in_dir(sb, p_dir, new_entry, NULL);
+		if (!ep) {
+			ret = -EIO;
+			goto del_out;
+		}
+
+		num_entries = fsi->fs_func->count_ext_entries(sb, p_dir, new_entry, ep);
+		if (num_entries < 0) {
+			ret = -EIO;
+			goto del_out;
+		}
+
+
+		if (fsi->fs_func->delete_dir_entry(sb, p_dir, new_entry, 0, num_entries+1)) {
+			ret = -EIO;
+			goto del_out;
+		}
+
+		/* Free the clusters if new_inode is a dir(as if exfat_fscore_rmdir) */
+		if (new_entry_type == TYPE_DIR) {
+			/* new_fid, new_clu_to_free */
+			CHAIN_T new_clu_to_free;
+
+			new_clu_to_free.dir = new_fid->start_clu;
+			new_clu_to_free.size = ((new_fid->size-1) >> fsi->cluster_size_bits) + 1;
+			new_clu_to_free.flags = new_fid->flags;
+
+			if (fsi->fs_func->free_cluster(sb, &new_clu_to_free, 1)) {
+				/* just set I/O error only */
+				ret = -EIO;
+			}
+
+			new_fid->size = 0;
+			new_fid->start_clu = CLUS_EOF;
+			new_fid->flags = 0x03;
+		}
+del_out:
+		/* Update new_inode fid
+		 * Prevent syncing removed new_inode
+		 * (new_fid is already initialized above code ("if (new_inode)")
+		 */
+		new_fid->dir.dir = DIR_DELETED;
+	}
+out:
+	fs_sync(sb, 0);
+	fs_set_vol_flags(sb, VOL_CLEAN);
+
+	return ret;
+}
+
+/* remove a file */
+s32 exfat_fscore_remove(struct inode *inode, FILE_ID_T *fid)
+{
+	s32 ret;
+	s32 dentry;
+	CHAIN_T dir, clu_to_free;
+	DENTRY_T *ep;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	dir.dir = fid->dir.dir;
+	dir.size = fid->dir.size;
+	dir.flags = fid->dir.flags;
+
+	dentry = fid->entry;
+
+	if (fid->dir.dir == DIR_DELETED) {
+		EMSG("%s : abnormal access to deleted dentry\n", __func__);
+		return -ENOENT;
+	}
+
+	ep = exfat_get_dentry_in_dir(sb, &dir, dentry, NULL);
+	if (!ep)
+		return -EIO;
+
+	if (fsi->fs_func->get_entry_attr(ep) & ATTR_READONLY)
+		return -EPERM;
+
+	fs_set_vol_flags(sb, VOL_DIRTY);
+
+	/* (1) update the directory entry */
+	ret = remove_file(inode, &dir, dentry);
+	if (ret)
+		goto out;
+
+	clu_to_free.dir = fid->start_clu;
+	clu_to_free.size = ((fid->size-1) >> fsi->cluster_size_bits) + 1;
+	clu_to_free.flags = fid->flags;
+
+	/* (2) invalidate extent cache and free the clusters
+	 */
+	/* clear extent cache */
+	exfat_extent_cache_inval_inode(inode);
+	ret = fsi->fs_func->free_cluster(sb, &clu_to_free, 0);
+	/* WARN : DO NOT RETURN ERROR IN HERE */
+
+	/* (3) update FILE_ID_T  */
+	fid->size = 0;
+	fid->start_clu = CLUS_EOF;
+	fid->flags = 0x03;
+	fid->dir.dir = DIR_DELETED;
+
+	fs_sync(sb, 0);
+	fs_set_vol_flags(sb, VOL_CLEAN);
+out:
+	return ret;
+}
+
+
+/*
+ * Get the information of a given file
+ * REMARK : This function does not need any file name on linux
+ *
+ * info.Size means the value saved on disk.
+ * But root directory doesn`t have real dentry,
+ * so the size of root directory returns calculated one exceptively.
+ */
+s32 exfat_fscore_read_inode(struct inode *inode, DIR_ENTRY_T *info)
+{
+	s32 count;
+	CHAIN_T dir;
+	TIMESTAMP_T tm;
+	DENTRY_T *ep, *ep2;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	FILE_ID_T *fid = &(EXFAT_I(inode)->fid);
+	ENTRY_SET_CACHE_T *es = NULL;
+	u8 is_dir = (fid->type == TYPE_DIR) ? 1 : 0;
+
+	exfat_extent_cache_init_inode(inode);
+
+	/* if root directory */
+	if (is_dir && (fid->dir.dir == fsi->root_dir) && (fid->entry == -1)) {
+		info->Attr = ATTR_SUBDIR;
+		memset((s8 *) &info->CreateTimestamp, 0, sizeof(DATE_TIME_T));
+		memset((s8 *) &info->ModifyTimestamp, 0, sizeof(DATE_TIME_T));
+		memset((s8 *) &info->AccessTimestamp, 0, sizeof(DATE_TIME_T));
+		//strcpy(info->NameBuf.sfn, ".");
+		//strcpy(info->NameBuf.lfn, ".");
+
+		dir.dir = fsi->root_dir;
+		dir.flags = 0x01;
+		dir.size = 0; /* UNUSED */
+
+		/* FAT16 root_dir */
+		if (IS_CLUS_FREE(fsi->root_dir)) {
+			info->Size = fsi->dentries_in_root << DENTRY_SIZE_BITS;
+		} else {
+			u32 num_clu;
+
+			if (__count_num_clusters(sb, &dir, &num_clu))
+				return -EIO;
+			info->Size = (u64)num_clu << fsi->cluster_size_bits;
+		}
+
+		count = __count_dos_name_entries(sb, &dir, TYPE_DIR, NULL);
+		if (count < 0)
+			return -EIO;
+		info->NumSubdirs = count;
+
+		return 0;
+	}
+
+	/* get the directory entry of given file or directory */
+	/* es should be released */
+	es = exfat_get_dentry_set_in_dir(sb, &(fid->dir), fid->entry, ES_2_ENTRIES, &ep);
+	if (!es)
+		return -EIO;
+	ep2 = ep+1;
+
+	/* set FILE_INFO structure using the acquired DENTRY_T */
+	info->Attr = fsi->fs_func->get_entry_attr(ep);
+
+	fsi->fs_func->get_entry_time(ep, &tm, TM_CREATE);
+	info->CreateTimestamp.Year = tm.year;
+	info->CreateTimestamp.Month = tm.mon;
+	info->CreateTimestamp.Day = tm.day;
+	info->CreateTimestamp.Hour = tm.hour;
+	info->CreateTimestamp.Minute = tm.min;
+	info->CreateTimestamp.Second = tm.sec;
+	info->CreateTimestamp.MilliSecond = 0;
+
+	fsi->fs_func->get_entry_time(ep, &tm, TM_MODIFY);
+	info->ModifyTimestamp.Year = tm.year;
+	info->ModifyTimestamp.Month = tm.mon;
+	info->ModifyTimestamp.Day = tm.day;
+	info->ModifyTimestamp.Hour = tm.hour;
+	info->ModifyTimestamp.Minute = tm.min;
+	info->ModifyTimestamp.Second = tm.sec;
+	info->ModifyTimestamp.MilliSecond = 0;
+
+	memset((s8 *) &info->AccessTimestamp, 0, sizeof(DATE_TIME_T));
+
+	info->NumSubdirs = 0;
+	info->Size = fsi->fs_func->get_entry_size(ep2);
+
+	exfat_release_dentry_set(es);
+
+	if (is_dir) {
+		u32 dotcnt = 0;
+
+		dir.dir = fid->start_clu;
+		dir.flags = fid->flags;
+		dir.size = fid->size >> fsi->cluster_size_bits;
+		/*
+		 * NOTE :
+		 * If "dir.flags" has 0x01, "dir.size" is meaningless.
+		 */
+#if 0
+		if (info->Size == 0) {
+			s32 num_clu;
+
+			if (__count_num_clusters(sb, &dir, &num_clu))
+				return -EIO;
+			info->Size = (u64)num_clu << fsi->cluster_size_bits;
+		}
+#endif
+		count = __count_dos_name_entries(sb, &dir, TYPE_DIR, &dotcnt);
+		if (count < 0)
+			return -EIO;
+
+		count += EXFAT_MIN_SUBDIR;
+		info->NumSubdirs = count;
+	}
+
+	return 0;
+}
+
+/* set the information of a given file
+ * REMARK : This function does not need any file name on linux
+ */
+s32 exfat_fscore_write_inode(struct inode *inode, DIR_ENTRY_T *info, s32 sync)
+{
+	s32 ret = -EIO;
+	TIMESTAMP_T tm;
+	DENTRY_T *ep, *ep2;
+	ENTRY_SET_CACHE_T *es = NULL;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	FILE_ID_T *fid = &(EXFAT_I(inode)->fid);
+	u8 is_dir = (fid->type == TYPE_DIR) ? 1 : 0;
+	u64 on_disk_size;
+
+	/* SKIP WRITING INODE :
+	 * if the indoe is already unlinked,
+	 * there is no need for updating inode
+	 */
+	if (fid->dir.dir == DIR_DELETED)
+		return 0;
+
+	if (is_dir && (fid->dir.dir == fsi->root_dir) && (fid->entry == -1))
+		return 0;
+
+	fs_set_vol_flags(sb, VOL_DIRTY);
+
+	/* get the directory entry of given file or directory */
+	es = exfat_get_dentry_set_in_dir(sb, &(fid->dir), fid->entry, ES_ALL_ENTRIES, &ep);
+	if (!es)
+		return -EIO;
+	ep2 = ep+1;
+
+	fsi->fs_func->set_entry_attr(ep, info->Attr);
+
+	/* set FILE_INFO structure using the acquired DENTRY_T */
+	tm.sec  = info->CreateTimestamp.Second;
+	tm.min  = info->CreateTimestamp.Minute;
+	tm.hour = info->CreateTimestamp.Hour;
+	tm.day  = info->CreateTimestamp.Day;
+	tm.mon  = info->CreateTimestamp.Month;
+	tm.year = info->CreateTimestamp.Year;
+	fsi->fs_func->set_entry_time(ep, &tm, TM_CREATE);
+
+	tm.sec  = info->ModifyTimestamp.Second;
+	tm.min  = info->ModifyTimestamp.Minute;
+	tm.hour = info->ModifyTimestamp.Hour;
+	tm.day  = info->ModifyTimestamp.Day;
+	tm.mon  = info->ModifyTimestamp.Month;
+	tm.year = info->ModifyTimestamp.Year;
+	fsi->fs_func->set_entry_time(ep, &tm, TM_MODIFY);
+
+	/* File size should be zero if there is no cluster allocated */
+	on_disk_size = info->Size;
+
+	if (IS_CLUS_EOF(fid->start_clu))
+		on_disk_size = 0;
+
+	fsi->fs_func->set_entry_size(ep2, on_disk_size);
+
+	ret = exfat_update_dir_chksum_with_entry_set(sb, es);
+	exfat_release_dentry_set(es);
+
+	fs_sync(sb, sync);
+	/* Comment below code to prevent super block update frequently */
+	//fs_set_vol_flags(sb, VOL_CLEAN);
+
+	return ret;
+}
+
+
+/*
+ * Input: inode, (logical) clu_offset, target allocation area
+ * Output: errcode, cluster number
+ * *clu = (~0), if it's unable to allocate a new cluster
+ */
+s32 exfat_fscore_map_clus(struct inode *inode, u32 clu_offset, u32 *clu, int dest)
+{
+	s32 ret, modified = false;
+	u32 last_clu;
+	CHAIN_T new_clu;
+	DENTRY_T *ep;
+	ENTRY_SET_CACHE_T *es = NULL;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	FILE_ID_T *fid = &(EXFAT_I(inode)->fid);
+	u32 local_clu_offset = clu_offset;
+	s32 reserved_clusters = fsi->reserved_clusters;
+	u32 num_to_be_allocated = 0, num_clusters = 0;
+
+	fid->rwoffset = (s64)(clu_offset) << fsi->cluster_size_bits;
+
+	if (EXFAT_I(inode)->i_size_ondisk > 0)
+		num_clusters = (u32)((EXFAT_I(inode)->i_size_ondisk-1) >> fsi->cluster_size_bits) + 1;
+
+	if (clu_offset >= num_clusters)
+		num_to_be_allocated = clu_offset - num_clusters + 1;
+
+	if ((dest == ALLOC_NOWHERE) && (num_to_be_allocated > 0)) {
+		*clu = CLUS_EOF;
+		return 0;
+	}
+
+	/* check always request cluster is 1 */
+	//ASSERT(num_to_be_allocated == 1);
+
+	exfat_debug_check_clusters(inode);
+
+	*clu = last_clu = fid->start_clu;
+
+	/* XXX: Defensive code needed.
+	 * what if i_size_ondisk != # of allocated clusters
+	 */
+	if (fid->flags == 0x03) {
+		if ((clu_offset > 0) && (!IS_CLUS_EOF(*clu))) {
+			last_clu += clu_offset - 1;
+
+			if (clu_offset == num_clusters)
+				*clu = CLUS_EOF;
+			else
+				*clu += clu_offset;
+		}
+	} else if (fid->type == TYPE_FILE) {
+		u32 fclus = 0;
+		s32 err = exfat_extent_get_clus(inode, clu_offset,
+				&fclus, clu, &last_clu, 1);
+		if (err)
+			return -EIO;
+
+		clu_offset -= fclus;
+	} else {
+		/* hint information */
+		if ((clu_offset > 0) &&
+			((fid->hint_bmap.off != CLUS_EOF) && (fid->hint_bmap.off > 0)) &&
+			(clu_offset >= fid->hint_bmap.off)) {
+			clu_offset -= fid->hint_bmap.off;
+			/* hint_bmap.clu should be valid */
+			ASSERT(fid->hint_bmap.clu >= 2);
+			*clu = fid->hint_bmap.clu;
+		}
+
+		while ((clu_offset > 0) && (!IS_CLUS_EOF(*clu))) {
+			last_clu = *clu;
+			if (get_next_clus_safe(sb, clu))
+				return -EIO;
+			clu_offset--;
+		}
+	}
+
+	if (IS_CLUS_EOF(*clu)) {
+		fs_set_vol_flags(sb, VOL_DIRTY);
+
+		new_clu.dir = (IS_CLUS_EOF(last_clu)) ? CLUS_EOF : last_clu + 1;
+		new_clu.size = 0;
+		new_clu.flags = fid->flags;
+
+		/* (1) allocate a cluster */
+		if (num_to_be_allocated < 1) {
+			/* Broken FAT (i_sze > allocated FAT) */
+			EMSG("%s: invalid fat chain : inode(%p) "
+				"num_to_be_allocated(%d) "
+				"i_size_ondisk(%lld) fid->flags(%02x) "
+				"fid->start(%08x) fid->hint_off(%u) "
+				"fid->hint_clu(%u) fid->rwoffset(%llu) "
+				"modified_clu_off(%d) last_clu(%08x) "
+				"new_clu(%08x)", __func__, inode,
+				num_to_be_allocated,
+				(EXFAT_I(inode)->i_size_ondisk),
+				fid->flags, fid->start_clu,
+				fid->hint_bmap.off, fid->hint_bmap.clu,
+				fid->rwoffset, clu_offset,
+				last_clu, new_clu.dir);
+			exfat_fs_error(sb, "broken FAT chain.");
+			return -EIO;
+		}
+
+		ret = fsi->fs_func->alloc_cluster(sb, num_to_be_allocated, &new_clu, ALLOC_COLD);
+		if (ret)
+			return ret;
+
+		if (IS_CLUS_EOF(new_clu.dir) || IS_CLUS_FREE(new_clu.dir)) {
+			exfat_fs_error(sb, "bogus cluster new allocated"
+				"(last_clu : %u, new_clu : %u)",
+				last_clu, new_clu.dir);
+			ASSERT(0);
+			return -EIO;
+		}
+
+		/* (2) append to the FAT chain */
+		if (IS_CLUS_EOF(last_clu)) {
+			if (new_clu.flags == 0x01)
+				fid->flags = 0x01;
+			fid->start_clu = new_clu.dir;
+			modified = true;
+		} else {
+			if (new_clu.flags != fid->flags) {
+				/* no-fat-chain bit is disabled,
+				 * so fat-chain should be synced with alloc-bmp
+				 */
+				exfat_chain_cont_cluster(sb, fid->start_clu, num_clusters);
+				fid->flags = 0x01;
+				modified = true;
+			}
+			if (new_clu.flags == 0x01)
+				if (exfat_ent_set(sb, last_clu, new_clu.dir))
+					return -EIO;
+		}
+
+		num_clusters += num_to_be_allocated;
+		*clu = new_clu.dir;
+
+		if (fid->dir.dir != DIR_DELETED) {
+			es = exfat_get_dentry_set_in_dir(sb, &(fid->dir), fid->entry, ES_ALL_ENTRIES, &ep);
+			if (!es)
+				return -EIO;
+			/* get stream entry */
+			ep++;
+
+			/* (3) update directory entry */
+			if (modified) {
+				if (fsi->fs_func->get_entry_flag(ep) != fid->flags)
+					fsi->fs_func->set_entry_flag(ep, fid->flags);
+
+				if (fsi->fs_func->get_entry_clu0(ep) != fid->start_clu)
+					fsi->fs_func->set_entry_clu0(ep, fid->start_clu);
+
+				fsi->fs_func->set_entry_size(ep, fid->size);
+			}
+
+			if (exfat_update_dir_chksum_with_entry_set(sb, es))
+				return -EIO;
+			exfat_release_dentry_set(es);
+		}
+
+		/* add number of new blocks to inode */
+		inode->i_blocks += num_to_be_allocated << (fsi->cluster_size_bits - sb->s_blocksize_bits);
+#if 0
+		fs_sync(sb, 0);
+		fs_set_vol_flags(sb, VOL_CLEAN);
+#endif
+		/* (4) Move *clu pointer along FAT chains (hole care)
+		 * because the caller of this function expect *clu to be the last cluster.
+		 * This only works when num_to_be_allocated >= 2,
+		 * *clu = (the first cluster of the allocated chain) => (the last cluster of ...)
+		 */
+		if (fid->flags == 0x03) {
+			*clu += num_to_be_allocated - 1;
+		} else {
+			while (num_to_be_allocated > 1) {
+				if (get_next_clus_safe(sb, clu))
+					return -EIO;
+				num_to_be_allocated--;
+			}
+		}
+
+	}
+
+	/* update reserved_clusters */
+	fsi->reserved_clusters = reserved_clusters;
+
+	/* hint information */
+	fid->hint_bmap.off = local_clu_offset;
+	fid->hint_bmap.clu = *clu;
+
+	return 0;
+}
+
+/* remove an entry, BUT don't truncate */
+s32 exfat_fscore_unlink(struct inode *inode, FILE_ID_T *fid)
+{
+	s32 dentry;
+	CHAIN_T dir;
+	DENTRY_T *ep;
+	struct super_block *sb = inode->i_sb;
+
+	dir.dir = fid->dir.dir;
+	dir.size = fid->dir.size;
+	dir.flags = fid->dir.flags;
+
+	dentry = fid->entry;
+
+	if (fid->dir.dir == DIR_DELETED) {
+		EMSG("%s : abnormal access to deleted dentry\n", __func__);
+		return -ENOENT;
+	}
+
+	ep = exfat_get_dentry_in_dir(sb, &dir, dentry, NULL);
+	if (!ep)
+		return -EIO;
+
+	if (EXFAT_SB(sb)->fsi.fs_func->get_entry_attr(ep) & ATTR_READONLY)
+		return -EPERM;
+
+	fs_set_vol_flags(sb, VOL_DIRTY);
+
+	/* (1) update the directory entry */
+	if (remove_file(inode, &dir, dentry))
+		return -EIO;
+
+	/* This doesn't modify fid */
+	fid->dir.dir = DIR_DELETED;
+
+	fs_sync(sb, 0);
+	fs_set_vol_flags(sb, VOL_CLEAN);
+
+	return 0;
+}
+
+/* create a directory */
+s32 exfat_fscore_mkdir(struct inode *inode, u8 *path, FILE_ID_T *fid)
+{
+	s32 ret/*, dentry*/;
+	CHAIN_T dir;
+	UNI_NAME_T uni_name;
+	struct super_block *sb = inode->i_sb;
+
+	/* check the validity of directory name in the given old pathname */
+	ret = resolve_path(inode, path, &dir, &uni_name);
+	if (ret)
+		goto out;
+
+	fs_set_vol_flags(sb, VOL_DIRTY);
+
+	ret = create_dir(inode, &dir, &uni_name, fid);
+
+	fs_sync(sb, 0);
+	fs_set_vol_flags(sb, VOL_CLEAN);
+out:
+	return ret;
+}
+
+/* read a directory entry from the opened directory */
+s32 exfat_fscore_readdir(struct inode *inode, DIR_ENTRY_T *dir_entry)
+{
+	s32 i;
+	s32 dentries_per_clu, dentries_per_clu_bits = 0;
+	u32 type, clu_offset;
+	u64 sector;
+	CHAIN_T dir, clu;
+	UNI_NAME_T uni_name;
+	TIMESTAMP_T tm;
+	DENTRY_T *ep;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	FILE_ID_T *fid = &(EXFAT_I(inode)->fid);
+	u32 dentry = (u32)(fid->rwoffset & 0xFFFFFFFF); /* u32 is enough for directory */
+
+	/* check if the given file ID is opened */
+	if (fid->type != TYPE_DIR)
+		return -EPERM;
+
+	if (fid->entry == -1) {
+		dir.dir = fsi->root_dir;
+		dir.size = 0; /* just initialize, but will not use */
+		dir.flags = 0x01;
+	} else {
+		dir.dir = fid->start_clu;
+		dir.size = fid->size >> fsi->cluster_size_bits;
+		dir.flags = fid->flags;
+		exfat_debug_bug_on(dentry >= (dir.size * fsi->dentries_per_clu));
+	}
+
+	if (IS_CLUS_FREE(dir.dir)) { /* FAT16 root_dir */
+		dentries_per_clu = fsi->dentries_in_root;
+
+		/* Prevent readdir over directory size */
+		if (dentry >= dentries_per_clu) {
+			clu.dir = CLUS_EOF;
+		} else {
+			clu.dir = dir.dir;
+			clu.size = dir.size;
+			clu.flags = dir.flags;
+		}
+	} else {
+		dentries_per_clu = fsi->dentries_per_clu;
+		dentries_per_clu_bits = ilog2(dentries_per_clu);
+
+		clu_offset = dentry >> dentries_per_clu_bits;
+		clu.dir = dir.dir;
+		clu.size = dir.size;
+		clu.flags = dir.flags;
+
+		if (clu.flags == 0x03) {
+			clu.dir += clu_offset;
+			clu.size -= clu_offset;
+		} else {
+			/* hint_information */
+			if ((clu_offset > 0) &&
+				((fid->hint_bmap.off != CLUS_EOF) && (fid->hint_bmap.off > 0)) &&
+				(clu_offset >= fid->hint_bmap.off)) {
+				clu_offset -= fid->hint_bmap.off;
+				clu.dir = fid->hint_bmap.clu;
+			}
+
+			while (clu_offset > 0) {
+				if (get_next_clus_safe(sb, &(clu.dir)))
+					return -EIO;
+
+				clu_offset--;
+			}
+		}
+	}
+
+	while (!IS_CLUS_EOF(clu.dir)) {
+		if (IS_CLUS_FREE(dir.dir)) /* FAT16 root_dir */
+			i = dentry % dentries_per_clu;
+		else
+			i = dentry & (dentries_per_clu-1);
+
+		for ( ; i < dentries_per_clu; i++, dentry++) {
+			ep = exfat_get_dentry_in_dir(sb, &clu, i, &sector);
+			if (!ep)
+				return -EIO;
+
+			type = fsi->fs_func->get_entry_type(ep);
+
+			if (type == TYPE_UNUSED)
+				break;
+
+			if ((type != TYPE_FILE) && (type != TYPE_DIR))
+				continue;
+
+			exfat_dcache_lock(sb, sector);
+			dir_entry->Attr = fsi->fs_func->get_entry_attr(ep);
+
+			fsi->fs_func->get_entry_time(ep, &tm, TM_CREATE);
+			dir_entry->CreateTimestamp.Year = tm.year;
+			dir_entry->CreateTimestamp.Month = tm.mon;
+			dir_entry->CreateTimestamp.Day = tm.day;
+			dir_entry->CreateTimestamp.Hour = tm.hour;
+			dir_entry->CreateTimestamp.Minute = tm.min;
+			dir_entry->CreateTimestamp.Second = tm.sec;
+			dir_entry->CreateTimestamp.MilliSecond = 0;
+
+			fsi->fs_func->get_entry_time(ep, &tm, TM_MODIFY);
+			dir_entry->ModifyTimestamp.Year = tm.year;
+			dir_entry->ModifyTimestamp.Month = tm.mon;
+			dir_entry->ModifyTimestamp.Day = tm.day;
+			dir_entry->ModifyTimestamp.Hour = tm.hour;
+			dir_entry->ModifyTimestamp.Minute = tm.min;
+			dir_entry->ModifyTimestamp.Second = tm.sec;
+			dir_entry->ModifyTimestamp.MilliSecond = 0;
+
+			memset((s8 *) &dir_entry->AccessTimestamp, 0, sizeof(DATE_TIME_T));
+
+			*(uni_name.name) = 0x0;
+			fsi->fs_func->get_uniname_from_ext_entry(sb, &dir, dentry, uni_name.name);
+			if (*(uni_name.name) == 0x0)
+				exfat_get_uniname_from_dos_entry(sb, (DOS_DENTRY_T *) ep, &uni_name, 0x1);
+			exfat_nls_uni16s_to_vfsname(sb, &uni_name,
+				dir_entry->NameBuf.lfn,
+				dir_entry->NameBuf.lfnbuf_len);
+			exfat_dcache_unlock(sb, sector);
+
+			ep = exfat_get_dentry_in_dir(sb, &clu, i+1, NULL);
+			if (!ep)
+				return -EIO;
+
+			dir_entry->Size = fsi->fs_func->get_entry_size(ep);
+
+			/*
+			 * Update hint information :
+			 * fat16 root directory does not need it.
+			 */
+			if (!IS_CLUS_FREE(dir.dir)) {
+				fid->hint_bmap.off = dentry >> dentries_per_clu_bits;
+				fid->hint_bmap.clu = clu.dir;
+			}
+
+			fid->rwoffset = (s64) ++dentry;
+
+			return 0;
+		}
+
+		/* fat16 root directory */
+		if (IS_CLUS_FREE(dir.dir))
+			break;
+
+		if (clu.flags == 0x03) {
+			if ((--clu.size) > 0)
+				clu.dir++;
+			else
+				clu.dir = CLUS_EOF;
+		} else {
+			if (get_next_clus_safe(sb, &(clu.dir)))
+				return -EIO;
+		}
+	}
+
+	dir_entry->NameBuf.lfn[0] = '\0';
+
+	fid->rwoffset = (s64)dentry;
+
+	return 0;
+}
+
+/* remove a directory */
+s32 exfat_fscore_rmdir(struct inode *inode, FILE_ID_T *fid)
+{
+	s32 ret;
+	s32 dentry;
+	DENTRY_T *ep;
+	CHAIN_T dir, clu_to_free;
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	dir.dir = fid->dir.dir;
+	dir.size = fid->dir.size;
+	dir.flags = fid->dir.flags;
+
+	dentry = fid->entry;
+
+	if (fid->dir.dir == DIR_DELETED) {
+		EMSG("%s : abnormal access to deleted dentry\n", __func__);
+		return -ENOENT;
+	}
+
+	ep = exfat_get_dentry_in_dir(sb, &dir, dentry, NULL);
+	if (!ep)
+		return -EIO;
+
+	if (EXFAT_SB(sb)->fsi.fs_func->get_entry_attr(ep) & ATTR_READONLY)
+		return -EPERM;
+
+	clu_to_free.dir = fid->start_clu;
+	clu_to_free.size = ((fid->size-1) >> fsi->cluster_size_bits) + 1;
+	clu_to_free.flags = fid->flags;
+
+	ret = check_dir_empty(sb, &clu_to_free);
+	if (ret) {
+		if (ret == -EIO)
+			EMSG("%s : failed to check_dir_empty : err(%d)\n",
+				__func__, ret);
+		return ret;
+	}
+
+	fs_set_vol_flags(sb, VOL_DIRTY);
+
+	/* (1) update the directory entry */
+	ret = remove_file(inode, &dir, dentry);
+	if (ret) {
+		EMSG("%s : failed to remove_file : err(%d)\n", __func__, ret);
+		return ret;
+	}
+
+	fid->dir.dir = DIR_DELETED;
+
+	fs_sync(sb, 0);
+	fs_set_vol_flags(sb, VOL_CLEAN);
+
+	return ret;
+}
diff --git a/drivers/staging/exfat/core.h b/drivers/staging/exfat/core.h
new file mode 100644
index 000000000000..258bb490c96e
--- /dev/null
+++ b/drivers/staging/exfat/core.h
@@ -0,0 +1,149 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ */
+
+#ifndef _EXFAT_CORE_H
+#define _EXFAT_CORE_H
+
+#include <asm/byteorder.h>
+
+#include "config.h"
+#include "api.h"
+#include "upcase.h"
+
+#define get_next_clus(sb, pclu)		exfat_ent_get(sb, *(pclu), pclu)
+#define get_next_clus_safe(sb, pclu)	exfat_ent_get_safe(sb, *(pclu), pclu)
+
+/* file status */
+/* this prevents
+ * exfat_fscore_write_inode, exfat_fscore_map_clus, ... with the unlinked inodes
+ * from corrupting on-disk dentry data.
+ *
+ * The fid->dir value of unlinked inode will be DIR_DELETED
+ * and those functions must check if fid->dir is valid prior to
+ * the calling of exfat_get_dentry_in_dir()
+ */
+#define DIR_DELETED				0xFFFF0321
+
+#define ES_2_ENTRIES		2
+#define ES_3_ENTRIES		3
+#define ES_ALL_ENTRIES	0
+
+typedef struct {
+	u64	sector;		// sector number that contains file_entry
+	u32	offset;		// byte offset in the sector
+	s32	alloc_flag;	// flag in stream entry. 01 for cluster chain, 03 for contig. clusters.
+	u32	num_entries;
+	void	*__buf;		// __buf should be the last member
+} ENTRY_SET_CACHE_T;
+
+/* file system initialization & shutdown functions */
+s32 exfat_fscore_init(void);
+s32 exfat_fscore_shutdown(void);
+
+/* bdev management */
+s32 exfat_fscore_check_bdi_valid(struct super_block *sb);
+
+/* chain management */
+s32 exfat_chain_cont_cluster(struct super_block *sb, u32 chain, u32 len);
+
+/* volume management functions */
+s32 exfat_fscore_mount(struct super_block *sb);
+s32 exfat_fscore_umount(struct super_block *sb);
+s32 exfat_fscore_statfs(struct super_block *sb, VOL_INFO_T *info);
+s32 exfat_fscore_sync_fs(struct super_block *sb, s32 do_sync);
+s32 exfat_fscore_set_vol_flags(struct super_block *sb, u16 new_flag, s32 always_sync);
+u32 exfat_fscore_get_au_stat(struct super_block *sb, s32 mode);
+
+/* file management functions */
+s32 exfat_fscore_lookup(struct inode *inode, u8 *path, FILE_ID_T *fid);
+s32 exfat_fscore_create(struct inode *inode, u8 *path, u8 mode, FILE_ID_T *fid);
+s32 exfat_fscore_read_link(struct inode *inode, FILE_ID_T *fid, void *buffer, u64 count, u64 *rcount);
+s32 exfat_fscore_write_link(struct inode *inode, FILE_ID_T *fid, void *buffer, u64 count, u64 *wcount);
+s32 exfat_fscore_truncate(struct inode *inode, u64 old_size, u64 new_size);
+s32 exfat_fscore_rename(struct inode *old_parent_inode, FILE_ID_T *fid,
+		struct inode *new_parent_inode, struct dentry *new_dentry);
+s32 exfat_fscore_remove(struct inode *inode, FILE_ID_T *fid);
+s32 exfat_fscore_read_inode(struct inode *inode, DIR_ENTRY_T *info);
+s32 exfat_fscore_write_inode(struct inode *inode, DIR_ENTRY_T *info, int sync);
+s32 exfat_fscore_map_clus(struct inode *inode, u32 clu_offset, u32 *clu, int dest);
+s32 exfat_fscore_unlink(struct inode *inode, FILE_ID_T *fid);
+
+/* directory management functions */
+s32 exfat_fscore_mkdir(struct inode *inode, u8 *path, FILE_ID_T *fid);
+s32 exfat_fscore_readdir(struct inode *inode, DIR_ENTRY_T *dir_ent);
+s32 exfat_fscore_rmdir(struct inode *inode, FILE_ID_T *fid);
+
+/* core.c : core code for common */
+/* dir entry management functions */
+DENTRY_T *exfat_get_dentry_in_dir(struct super_block *sb, CHAIN_T *p_dir, s32 entry, u64 *sector);
+
+/* name conversion functions */
+void exfat_get_uniname_from_dos_entry(struct super_block *sb, DOS_DENTRY_T *ep, UNI_NAME_T *p_uniname, u8 mode);
+
+/* file operation functions */
+s32 exfat_walk_fat_chain(struct super_block *sb, CHAIN_T *p_dir, u32 byte_offset, u32 *clu);
+
+/* exfat/cache.c */
+s32  exfat_meta_cache_init(struct super_block *sb);
+s32  exfat_meta_cache_shutdown(struct super_block *sb);
+u8 *exfat_fcache_getblk(struct super_block *sb, u64 sec);
+s32  exfat_fcache_modify(struct super_block *sb, u64 sec);
+s32  exfat_fcache_release_all(struct super_block *sb);
+s32  exfat_fcache_flush(struct super_block *sb, u32 sync);
+
+u8 *exfat_dcache_getblk(struct super_block *sb, u64 sec);
+s32   exfat_dcache_modify(struct super_block *sb, u64 sec);
+s32   exfat_dcache_lock(struct super_block *sb, u64 sec);
+s32   exfat_dcache_unlock(struct super_block *sb, u64 sec);
+s32   exfat_dcache_release(struct super_block *sb, u64 sec);
+s32   exfat_dcache_release_all(struct super_block *sb);
+s32   exfat_dcache_flush(struct super_block *sb, u32 sync);
+s32   exfat_dcache_readahead(struct super_block *sb, u64 sec);
+
+
+/* fatent.c */
+s32 exfat_ent_get(struct super_block *sb, u32 loc, u32 *content);
+s32 exfat_ent_set(struct super_block *sb, u32 loc, u32 content);
+s32 exfat_ent_get_safe(struct super_block *sb, u32 loc, u32 *content);
+
+/* core_exfat.c : core code for exfat */
+
+s32 exfat_load_alloc_bmp(struct super_block *sb);
+void exfat_free_alloc_bmp(struct super_block *sb);
+ENTRY_SET_CACHE_T *exfat_get_dentry_set_in_dir(struct super_block *sb,
+		CHAIN_T *p_dir, s32 entry, u32 type, DENTRY_T **file_ep);
+void exfat_release_dentry_set(ENTRY_SET_CACHE_T *es);
+s32 exfat_update_dir_chksum(struct super_block *sb, CHAIN_T *p_dir, s32 entry);
+s32 exfat_update_dir_chksum_with_entry_set(struct super_block *sb, ENTRY_SET_CACHE_T *es);
+s32  mount_exfat(struct super_block *sb, pbr_t *p_pbr);
+
+/* blkdev.c */
+s32 exfat_bdev_open_dev(struct super_block *sb);
+s32 exfat_bdev_close_dev(struct super_block *sb);
+s32 exfat_bdev_check_bdi_valid(struct super_block *sb);
+s32 exfat_bdev_readahead(struct super_block *sb, u64 secno, u64 num_secs);
+s32 exfat_bdev_mread(struct super_block *sb, u64 secno, struct buffer_head **bh, u64 num_secs, s32 read);
+s32 exfat_bdev_mwrite(struct super_block *sb, u64 secno, struct buffer_head *bh, u64 num_secs, s32 sync);
+s32 exfat_bdev_sync_all(struct super_block *sb);
+
+/* blkdev.c : sector read/write functions */
+s32 exfat_read_sect(struct super_block *sb, u64 sec, struct buffer_head **bh, s32 read);
+s32 exfat_write_sect(struct super_block *sb, u64 sec, struct buffer_head *bh, s32 sync);
+s32 exfat_write_msect_zero(struct super_block *sb, u64 sec, u64 num_secs);
+
+/* misc.c */
+u16 exfat_calc_chksum_2byte(void *data, s32 len, u16 chksum, s32 type);
+
+/* extent.c */
+s32 exfat_extent_cache_init(void);
+void exfat_extent_cache_shutdown(void);
+void exfat_extent_cache_init_inode(struct inode *inode);
+void exfat_extent_cache_inval_inode(struct inode *inode);
+s32 exfat_extent_get_clus(struct inode *inode, u32 cluster, u32 *fclus,
+		u32 *dclus, u32 *last_dclus, s32 allow_eof);
+
+void	exfat_set_sb_dirty(struct super_block *sb);
+
+#endif /* _EXFAT_CORE_H */
diff --git a/drivers/staging/exfat/core_exfat.c b/drivers/staging/exfat/core_exfat.c
new file mode 100644
index 000000000000..28eba2f213a9
--- /dev/null
+++ b/drivers/staging/exfat/core_exfat.c
@@ -0,0 +1,1485 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ *
+ *  core_exfat.c: exFAT core code
+ */
+
+#include <linux/version.h>
+#include <linux/blkdev.h>
+#include <linux/workqueue.h>
+#include <linux/kernel.h>
+#include <linux/log2.h>
+
+#include "exfat.h"
+#include "core.h"
+#include <asm/byteorder.h>
+#include <asm/unaligned.h>
+
+static u8 free_bit[] = {
+	0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2,/*  0 ~  19*/
+	0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3,/* 20 ~  39*/
+	0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2,/* 40 ~  59*/
+	0, 1, 0, 6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4,/* 60 ~  79*/
+	0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2,/* 80 ~  99*/
+	0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3,/*100 ~ 119*/
+	0, 1, 0, 2, 0, 1, 0, 7, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2,/*120 ~ 139*/
+	0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5,/*140 ~ 159*/
+	0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2,/*160 ~ 179*/
+	0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 6, 0, 1, 0, 2, 0, 1, 0, 3,/*180 ~ 199*/
+	0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2,/*200 ~ 219*/
+	0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4,/*220 ~ 239*/
+	0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0                /*240 ~ 254*/
+};
+
+static u8 used_bit[] = {
+	0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3,/*  0 ~  19*/
+	2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3, 2, 3, 3, 4,/* 20 ~  39*/
+	2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5,/* 40 ~  59*/
+	4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5,/* 60 ~  79*/
+	2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4,/* 80 ~  99*/
+	3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6,/*100 ~ 119*/
+	4, 5, 5, 6, 5, 6, 6, 7, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4,/*120 ~ 139*/
+	3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6,/*140 ~ 159*/
+	2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5,/*160 ~ 179*/
+	4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 2, 3, 3, 4, 3, 4, 4, 5,/*180 ~ 199*/
+	3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6,/*200 ~ 219*/
+	5, 6, 6, 7, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7,/*220 ~ 239*/
+	4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8             /*240 ~ 255*/
+};
+
+/*
+ *  Directory Entry Management Functions
+ */
+static u32 exfat_get_entry_type(DENTRY_T *p_entry)
+{
+	FILE_DENTRY_T *ep = (FILE_DENTRY_T *) p_entry;
+
+	if (ep->type == EXFAT_UNUSED)
+		return TYPE_UNUSED;
+	if (ep->type < 0x80)
+		return TYPE_DELETED;
+	if (ep->type == 0x80)
+		return TYPE_INVALID;
+	if (ep->type < 0xA0) {
+		if (ep->type == 0x81)
+			return TYPE_BITMAP;
+		if (ep->type == 0x82)
+			return TYPE_UPCASE;
+		if (ep->type == 0x83)
+			return TYPE_VOLUME;
+		if (ep->type == 0x85) {
+			if (le16_to_cpu(ep->attr) & ATTR_SUBDIR)
+				return TYPE_DIR;
+			return TYPE_FILE;
+		}
+		return TYPE_CRITICAL_PRI;
+	}
+	if (ep->type < 0xC0) {
+		if (ep->type == 0xA0)
+			return TYPE_GUID;
+		if (ep->type == 0xA1)
+			return TYPE_PADDING;
+		if (ep->type == 0xA2)
+			return TYPE_ACLTAB;
+		return TYPE_BENIGN_PRI;
+	}
+	if (ep->type < 0xE0) {
+		if (ep->type == 0xC0)
+			return TYPE_STREAM;
+		if (ep->type == 0xC1)
+			return TYPE_EXTEND;
+		if (ep->type == 0xC2)
+			return TYPE_ACL;
+		return TYPE_CRITICAL_SEC;
+	}
+	return TYPE_BENIGN_SEC;
+}
+
+static void exfat_set_entry_type(DENTRY_T *p_entry, u32 type)
+{
+	FILE_DENTRY_T *ep = (FILE_DENTRY_T *) p_entry;
+
+	if (type == TYPE_UNUSED) {
+		ep->type = 0x0;
+	} else if (type == TYPE_DELETED) {
+		ep->type &= ~0x80;
+	} else if (type == TYPE_STREAM) {
+		ep->type = 0xC0;
+	} else if (type == TYPE_EXTEND) {
+		ep->type = 0xC1;
+	} else if (type == TYPE_BITMAP) {
+		ep->type = 0x81;
+	} else if (type == TYPE_UPCASE) {
+		ep->type = 0x82;
+	} else if (type == TYPE_VOLUME) {
+		ep->type = 0x83;
+	} else if (type == TYPE_DIR) {
+		ep->type = 0x85;
+		ep->attr = cpu_to_le16(ATTR_SUBDIR);
+	} else if (type == TYPE_FILE) {
+		ep->type = 0x85;
+		ep->attr = cpu_to_le16(ATTR_ARCHIVE);
+	} else if (type == TYPE_SYMLINK) {
+		ep->type = 0x85;
+		ep->attr = cpu_to_le16(ATTR_ARCHIVE | ATTR_SYMLINK);
+	}
+}
+
+static u32 exfat_get_entry_attr(DENTRY_T *p_entry)
+{
+	FILE_DENTRY_T *ep = (FILE_DENTRY_T *)p_entry;
+
+	return (u32)le16_to_cpu(ep->attr);
+}
+
+static void exfat_set_entry_attr(DENTRY_T *p_entry, u32 attr)
+{
+	FILE_DENTRY_T *ep = (FILE_DENTRY_T *)p_entry;
+
+	ep->attr = cpu_to_le16((u16) attr);
+}
+
+static u8 exfat_get_entry_flag(DENTRY_T *p_entry)
+{
+	STRM_DENTRY_T *ep = (STRM_DENTRY_T *)p_entry;
+
+	return ep->flags;
+}
+
+static void exfat_set_entry_flag(DENTRY_T *p_entry, u8 flags)
+{
+	STRM_DENTRY_T *ep = (STRM_DENTRY_T *)p_entry;
+
+	ep->flags = flags;
+}
+
+static u32 exfat_get_entry_clu0(DENTRY_T *p_entry)
+{
+	STRM_DENTRY_T *ep = (STRM_DENTRY_T *)p_entry;
+
+	return (u32)le32_to_cpu(ep->start_clu);
+}
+
+static void exfat_set_entry_clu0(DENTRY_T *p_entry, u32 start_clu)
+{
+	STRM_DENTRY_T *ep = (STRM_DENTRY_T *)p_entry;
+
+	ep->start_clu = cpu_to_le32(start_clu);
+}
+
+static u64 exfat_get_entry_size(DENTRY_T *p_entry)
+{
+	STRM_DENTRY_T *ep = (STRM_DENTRY_T *)p_entry;
+
+	return le64_to_cpu(ep->valid_size);
+}
+
+static void exfat_set_entry_size(DENTRY_T *p_entry, u64 size)
+{
+	STRM_DENTRY_T *ep = (STRM_DENTRY_T *)p_entry;
+
+	ep->valid_size = cpu_to_le64(size);
+	ep->size = cpu_to_le64(size);
+}
+
+static void exfat_get_entry_time(DENTRY_T *p_entry, TIMESTAMP_T *tp, u8 mode)
+{
+	u16 t = 0x00, d = 0x21;
+	FILE_DENTRY_T *ep = (FILE_DENTRY_T *)p_entry;
+
+	switch (mode) {
+	case TM_CREATE:
+		t = le16_to_cpu(ep->create_time);
+		d = le16_to_cpu(ep->create_date);
+		break;
+	case TM_MODIFY:
+		t = le16_to_cpu(ep->modify_time);
+		d = le16_to_cpu(ep->modify_date);
+		break;
+	case TM_ACCESS:
+		t = le16_to_cpu(ep->access_time);
+		d = le16_to_cpu(ep->access_date);
+		break;
+	}
+
+	tp->sec  = (t & 0x001F) << 1;
+	tp->min  = (t >> 5) & 0x003F;
+	tp->hour = (t >> 11);
+	tp->day  = (d & 0x001F);
+	tp->mon  = (d >> 5) & 0x000F;
+	tp->year = (d >> 9);
+}
+
+static void exfat_set_entry_time(DENTRY_T *p_entry, TIMESTAMP_T *tp, u8 mode)
+{
+	u16 t, d;
+	FILE_DENTRY_T *ep = (FILE_DENTRY_T *)p_entry;
+
+	t = (tp->hour << 11) | (tp->min << 5) | (tp->sec >> 1);
+	d = (tp->year <<  9) | (tp->mon << 5) |  tp->day;
+
+	switch (mode) {
+	case TM_CREATE:
+		ep->create_time = cpu_to_le16(t);
+		ep->create_date = cpu_to_le16(d);
+		break;
+	case TM_MODIFY:
+		ep->modify_time = cpu_to_le16(t);
+		ep->modify_date = cpu_to_le16(d);
+		break;
+	case TM_ACCESS:
+		ep->access_time = cpu_to_le16(t);
+		ep->access_date = cpu_to_le16(d);
+		break;
+	}
+}
+
+
+static void __init_file_entry(struct super_block *sb, FILE_DENTRY_T *ep, u32 type)
+{
+	TIMESTAMP_T tm, *tp;
+
+	exfat_set_entry_type((DENTRY_T *) ep, type);
+
+	tp = exfat_tm_now(EXFAT_SB(sb), &tm);
+	exfat_set_entry_time((DENTRY_T *) ep, tp, TM_CREATE);
+	exfat_set_entry_time((DENTRY_T *) ep, tp, TM_MODIFY);
+	exfat_set_entry_time((DENTRY_T *) ep, tp, TM_ACCESS);
+	ep->create_time_ms = 0;
+	ep->modify_time_ms = 0;
+	ep->access_time_ms = 0;
+}
+
+static void __init_strm_entry(STRM_DENTRY_T *ep, u8 flags, u32 start_clu, u64 size)
+{
+	exfat_set_entry_type((DENTRY_T *) ep, TYPE_STREAM);
+	ep->flags = flags;
+	ep->start_clu = cpu_to_le32(start_clu);
+	ep->valid_size = cpu_to_le64(size);
+	ep->size = cpu_to_le64(size);
+}
+
+static void __init_name_entry(NAME_DENTRY_T *ep, u16 *uniname)
+{
+	s32 i;
+
+	exfat_set_entry_type((DENTRY_T *) ep, TYPE_EXTEND);
+	ep->flags = 0x0;
+
+	for (i = 0; i < 15; i++) {
+		ep->unicode_0_14[i] = cpu_to_le16(*uniname);
+		if (*uniname == 0x0)
+			break;
+		uniname++;
+	}
+}
+
+static s32 exfat_init_dir_entry(struct super_block *sb, CHAIN_T *p_dir, s32 entry, u32 type, u32 start_clu, u64 size)
+{
+	u64 sector;
+	u8 flags;
+	FILE_DENTRY_T *file_ep;
+	STRM_DENTRY_T *strm_ep;
+
+	flags = (type == TYPE_FILE) ? 0x01 : 0x03;
+
+	/* we cannot use exfat_get_dentry_set_in_dir here because file ep is not initialized yet */
+	file_ep = (FILE_DENTRY_T *)exfat_get_dentry_in_dir(sb, p_dir, entry, &sector);
+	if (!file_ep)
+		return -EIO;
+
+	strm_ep = (STRM_DENTRY_T *)exfat_get_dentry_in_dir(sb, p_dir, entry+1, &sector);
+	if (!strm_ep)
+		return -EIO;
+
+	__init_file_entry(sb, file_ep, type);
+	if (exfat_dcache_modify(sb, sector))
+		return -EIO;
+
+	__init_strm_entry(strm_ep, flags, start_clu, size);
+	if (exfat_dcache_modify(sb, sector))
+		return -EIO;
+
+	return 0;
+}
+
+s32 exfat_update_dir_chksum(struct super_block *sb, CHAIN_T *p_dir, s32 entry)
+{
+	s32 ret = -EIO;
+	s32 i, num_entries;
+	u64 sector;
+	u16 chksum;
+	FILE_DENTRY_T *file_ep;
+	DENTRY_T *ep;
+
+	file_ep = (FILE_DENTRY_T *)exfat_get_dentry_in_dir(sb, p_dir, entry, &sector);
+	if (!file_ep)
+		return -EIO;
+
+	exfat_dcache_lock(sb, sector);
+
+	num_entries = (s32) file_ep->num_ext + 1;
+	chksum = exfat_calc_chksum_2byte((void *) file_ep, DENTRY_SIZE, 0, CS_DIR_ENTRY);
+
+	for (i = 1; i < num_entries; i++) {
+		ep = exfat_get_dentry_in_dir(sb, p_dir, entry+i, NULL);
+		if (!ep)
+			goto out_unlock;
+
+		chksum = exfat_calc_chksum_2byte((void *) ep, DENTRY_SIZE, chksum, CS_DEFAULT);
+	}
+
+	file_ep->checksum = cpu_to_le16(chksum);
+	ret = exfat_dcache_modify(sb, sector);
+out_unlock:
+	exfat_dcache_unlock(sb, sector);
+	return ret;
+
+}
+
+
+static s32 exfat_init_ext_entry(struct super_block *sb, CHAIN_T *p_dir, s32 entry, s32 num_entries,
+						   UNI_NAME_T *p_uniname, DOS_NAME_T *p_dosname)
+{
+	s32 i;
+	u64 sector;
+	u16 *uniname = p_uniname->name;
+	FILE_DENTRY_T *file_ep;
+	STRM_DENTRY_T *strm_ep;
+	NAME_DENTRY_T *name_ep;
+
+	file_ep = (FILE_DENTRY_T *)exfat_get_dentry_in_dir(sb, p_dir, entry, &sector);
+	if (!file_ep)
+		return -EIO;
+
+	file_ep->num_ext = (u8)(num_entries - 1);
+	exfat_dcache_modify(sb, sector);
+
+	strm_ep = (STRM_DENTRY_T *)exfat_get_dentry_in_dir(sb, p_dir, entry+1, &sector);
+	if (!strm_ep)
+		return -EIO;
+
+	strm_ep->name_len = p_uniname->name_len;
+	strm_ep->name_hash = cpu_to_le16(p_uniname->name_hash);
+	exfat_dcache_modify(sb, sector);
+
+	for (i = 2; i < num_entries; i++) {
+		name_ep = (NAME_DENTRY_T *)exfat_get_dentry_in_dir(sb, p_dir, entry+i, &sector);
+		if (!name_ep)
+			return -EIO;
+
+		__init_name_entry(name_ep, uniname);
+		exfat_dcache_modify(sb, sector);
+		uniname += 15;
+	}
+
+	exfat_update_dir_chksum(sb, p_dir, entry);
+
+	return 0;
+}
+
+
+static s32 exfat_delete_dir_entry(struct super_block *sb, CHAIN_T *p_dir, s32 entry, s32 order, s32 num_entries)
+{
+	s32 i;
+	u64 sector;
+	DENTRY_T *ep;
+
+	for (i = order; i < num_entries; i++) {
+		ep = exfat_get_dentry_in_dir(sb, p_dir, entry+i, &sector);
+		if (!ep)
+			return -EIO;
+
+		exfat_set_entry_type(ep, TYPE_DELETED);
+		if (exfat_dcache_modify(sb, sector))
+			return -EIO;
+	}
+
+	return 0;
+}
+
+static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
+		ENTRY_SET_CACHE_T *es, u64 sec, u32 off, u32 count)
+{
+	s32 num_entries;
+	u32 buf_off = (off - es->offset);
+	u32 remaining_byte_in_sector, copy_entries;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	u32 clu;
+	u8 *buf, *esbuf = (u8 *)&(es->__buf);
+
+	MMSG("%s: es %p sec %llu off %u cnt %d\n", __func__, es, sec, off, count);
+	num_entries = count;
+
+	while (num_entries) {
+		/* write per sector base */
+		remaining_byte_in_sector = (1 << sb->s_blocksize_bits) - off;
+		copy_entries = min((s32)(remaining_byte_in_sector >> DENTRY_SIZE_BITS), num_entries);
+		buf = exfat_dcache_getblk(sb, sec);
+		if (!buf)
+			goto err_out;
+		MMSG("es->buf %p buf_off %u\n", esbuf, buf_off);
+		MMSG("copying %d entries from %p to sector %llu\n", copy_entries, (esbuf + buf_off), sec);
+		memcpy(buf + off, esbuf + buf_off, copy_entries << DENTRY_SIZE_BITS);
+		exfat_dcache_modify(sb, sec);
+		num_entries -= copy_entries;
+
+		if (num_entries) {
+			// get next sector
+			if (IS_LAST_SECT_IN_CLUS(fsi, sec)) {
+				clu = SECT_TO_CLUS(fsi, sec);
+				if (es->alloc_flag == 0x03)
+					clu++;
+				else if (get_next_clus_safe(sb, &clu))
+					goto err_out;
+				sec = CLUS_TO_SECT(fsi, clu);
+			} else {
+				sec++;
+			}
+			off = 0;
+			buf_off += copy_entries << DENTRY_SIZE_BITS;
+		}
+	}
+
+	return 0;
+err_out:
+	return -EIO;
+}
+
+/* write back all entries in entry set */
+static s32 __write_whole_entry_set(struct super_block *sb, ENTRY_SET_CACHE_T *es)
+{
+	return __write_partial_entries_in_entry_set(sb, es, es->sector, es->offset, es->num_entries);
+}
+
+s32 exfat_update_dir_chksum_with_entry_set(struct super_block *sb, ENTRY_SET_CACHE_T *es)
+{
+	DENTRY_T *ep;
+	u16 chksum = 0;
+	s32 chksum_type = CS_DIR_ENTRY, i;
+
+	ep = (DENTRY_T *)&(es->__buf);
+	for (i = 0; i < es->num_entries; i++) {
+		MMSG("%s %p\n", __func__, ep);
+		chksum = exfat_calc_chksum_2byte((void *) ep, DENTRY_SIZE, chksum, chksum_type);
+		ep++;
+		chksum_type = CS_DEFAULT;
+	}
+
+	ep = (DENTRY_T *)&(es->__buf);
+	((FILE_DENTRY_T *)ep)->checksum = cpu_to_le16(chksum);
+	return __write_whole_entry_set(sb, es);
+}
+
+/* returns a set of dentries for a file or dir.
+ * Note that this is a copy (dump) of dentries so that user should call write_entry_set()
+ * to apply changes made in this entry set to the real device.
+ * in:
+ *   sb+p_dir+entry: indicates a file/dir
+ *   type:  specifies how many dentries should be included.
+ * out:
+ *   file_ep: will point the first dentry(= file dentry) on success
+ * return:
+ *   pointer of entry set on success,
+ *   NULL on failure.
+ */
+
+#define ES_MODE_STARTED				0
+#define ES_MODE_GET_FILE_ENTRY			1
+#define ES_MODE_GET_STRM_ENTRY			2
+#define ES_MODE_GET_NAME_ENTRY			3
+#define ES_MODE_GET_CRITICAL_SEC_ENTRY		4
+ENTRY_SET_CACHE_T *exfat_get_dentry_set_in_dir(struct super_block *sb,
+		CHAIN_T *p_dir, s32 entry, u32 type, DENTRY_T **file_ep)
+{
+	s32 ret;
+	u32 off, byte_offset, clu = 0;
+	u32 entry_type;
+	u64 sec;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	ENTRY_SET_CACHE_T *es = NULL;
+	DENTRY_T *ep, *pos;
+	u8 *buf;
+	u8 num_entries;
+	s32 mode = ES_MODE_STARTED;
+
+	/* FIXME : is available in error case? */
+	if (p_dir->dir == DIR_DELETED) {
+		EMSG("%s : access to deleted dentry\n", __func__);
+		BUG_ON(!fsi->prev_eio);
+		return NULL;
+	}
+
+	MMSG("p_dir dir %u flags %x size %d\n", p_dir->dir, p_dir->flags, p_dir->size);
+	MMSG("entry %d type %d\n", entry, type);
+
+	byte_offset = entry << DENTRY_SIZE_BITS;
+	ret = exfat_walk_fat_chain(sb, p_dir, byte_offset, &clu);
+	if (ret)
+		return NULL;
+
+	/* byte offset in cluster */
+	byte_offset &= fsi->cluster_size - 1;
+
+	/* byte offset in sector */
+	off = byte_offset & (u32)(sb->s_blocksize - 1);
+
+	/* sector offset in cluster */
+	sec = byte_offset >> (sb->s_blocksize_bits);
+	sec += CLUS_TO_SECT(fsi, clu);
+
+	buf = exfat_dcache_getblk(sb, sec);
+	if (!buf)
+		goto err_out;
+
+	ep = (DENTRY_T *)(buf + off);
+	entry_type = exfat_get_entry_type(ep);
+
+	if ((entry_type != TYPE_FILE)
+		&& (entry_type != TYPE_DIR))
+		goto err_out;
+
+	if (type == ES_ALL_ENTRIES)
+		num_entries = ((FILE_DENTRY_T *)ep)->num_ext+1;
+	else
+		num_entries = type;
+
+	MMSG("trying to malloc %lx bytes for %d entries\n",
+		(unsigned long)(offsetof(ENTRY_SET_CACHE_T, __buf) + (num_entries)  * sizeof(DENTRY_T)), num_entries);
+	es = kmalloc((offsetof(ENTRY_SET_CACHE_T, __buf) + (num_entries)  * sizeof(DENTRY_T)), GFP_KERNEL);
+	if (!es) {
+		EMSG("%s: failed to alloc entryset\n", __func__);
+		goto err_out;
+	}
+
+	es->num_entries = num_entries;
+	es->sector = sec;
+	es->offset = off;
+	es->alloc_flag = p_dir->flags;
+
+	pos = (DENTRY_T *) &(es->__buf);
+
+	while (num_entries) {
+		// instead of copying whole sector, we will check every entry.
+		// this will provide minimum stablity and consistency.
+		entry_type = exfat_get_entry_type(ep);
+
+		if ((entry_type == TYPE_UNUSED) || (entry_type == TYPE_DELETED))
+			goto err_out;
+
+		switch (mode) {
+		case ES_MODE_STARTED:
+			if  ((entry_type == TYPE_FILE) || (entry_type == TYPE_DIR))
+				mode = ES_MODE_GET_FILE_ENTRY;
+			else
+				goto err_out;
+			break;
+		case ES_MODE_GET_FILE_ENTRY:
+			if (entry_type == TYPE_STREAM)
+				mode = ES_MODE_GET_STRM_ENTRY;
+			else
+				goto err_out;
+			break;
+		case ES_MODE_GET_STRM_ENTRY:
+			if (entry_type == TYPE_EXTEND)
+				mode = ES_MODE_GET_NAME_ENTRY;
+			else
+				goto err_out;
+			break;
+		case ES_MODE_GET_NAME_ENTRY:
+			if (entry_type == TYPE_EXTEND)
+				break;
+			else if (entry_type == TYPE_STREAM)
+				goto err_out;
+			else if (entry_type & TYPE_CRITICAL_SEC)
+				mode = ES_MODE_GET_CRITICAL_SEC_ENTRY;
+			else
+				goto err_out;
+			break;
+		case ES_MODE_GET_CRITICAL_SEC_ENTRY:
+			if ((entry_type == TYPE_EXTEND) || (entry_type == TYPE_STREAM))
+				goto err_out;
+			else if ((entry_type & TYPE_CRITICAL_SEC) != TYPE_CRITICAL_SEC)
+				goto err_out;
+			break;
+		}
+
+		/* copy dentry */
+		memcpy(pos, ep, sizeof(DENTRY_T));
+
+		if (--num_entries == 0)
+			break;
+
+		if (((off + DENTRY_SIZE) & (u32)(sb->s_blocksize - 1)) <
+					(off & (u32)(sb->s_blocksize - 1))) {
+			// get the next sector
+			if (IS_LAST_SECT_IN_CLUS(fsi, sec)) {
+				if (es->alloc_flag == 0x03)
+					clu++;
+				else if (get_next_clus_safe(sb, &clu))
+					goto err_out;
+				sec = CLUS_TO_SECT(fsi, clu);
+			} else {
+				sec++;
+			}
+			buf = exfat_dcache_getblk(sb, sec);
+			if (!buf)
+				goto err_out;
+			off = 0;
+			ep = (DENTRY_T *)(buf);
+		} else {
+			ep++;
+			off += DENTRY_SIZE;
+		}
+		pos++;
+	}
+
+	if (file_ep)
+		*file_ep = (DENTRY_T *)&(es->__buf);
+
+	MMSG("es sec %llu offset %u flags %d, num_entries %u buf ptr %p\n",
+	 es->sector, es->offset, es->alloc_flag, es->num_entries, &(es->__buf));
+	return es;
+
+err_out:
+	/* kfree(NULL) is safe */
+	kfree(es);
+	es = NULL;
+	return NULL;
+}
+
+void exfat_release_dentry_set(ENTRY_SET_CACHE_T *es)
+{
+	/* kfree(NULL) is safe */
+	kfree(es);
+	es = NULL;
+}
+
+static s32 __extract_uni_name_from_name_entry(NAME_DENTRY_T *ep, u16 *uniname, s32 order)
+{
+	s32 i, len = 0;
+
+	for (i = 0; i < 15; i++) {
+		/* FIXME : unaligned? */
+		*uniname = le16_to_cpu(ep->unicode_0_14[i]);
+		if (*uniname == 0x0)
+			return len;
+		uniname++;
+		len++;
+	}
+
+	*uniname = 0x0;
+	return len;
+
+}
+
+#define DIRENT_STEP_FILE	(0)
+#define DIRENT_STEP_STRM	(1)
+#define DIRENT_STEP_NAME	(2)
+#define DIRENT_STEP_SECD	(3)
+
+/* return values of exfat_find_dir_entry()
+ * >= 0 : return dir entiry position with the name in dir
+ * -EEXIST : (root dir, ".") it is the root dir itself
+ * -ENOENT : entry with the name does not exist
+ * -EIO    : I/O error
+ */
+static s32 exfat_find_dir_entry(struct super_block *sb, FILE_ID_T *fid,
+		CHAIN_T *p_dir, UNI_NAME_T *p_uniname, s32 num_entries, DOS_NAME_T *unused, u32 type)
+{
+	s32 i, rewind = 0, dentry = 0, end_eidx = 0, num_ext = 0, len;
+	s32 order, step, name_len = 0;
+	s32 dentries_per_clu, num_empty = 0;
+	u32 entry_type;
+	u16 entry_uniname[16], *uniname = NULL, unichar;
+	CHAIN_T clu;
+	DENTRY_T *ep;
+	HINT_T *hint_stat = &fid->hint_stat;
+	HINT_FEMP_T candi_empty;
+	FILE_DENTRY_T *file_ep;
+	STRM_DENTRY_T *strm_ep;
+	NAME_DENTRY_T *name_ep;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	/*
+	 * REMARK:
+	 * DOT and DOTDOT are handled by VFS layer
+	 */
+
+	if (IS_CLUS_FREE(p_dir->dir))
+		return -EIO;
+
+	dentries_per_clu = fsi->dentries_per_clu;
+
+	clu.dir = p_dir->dir;
+	clu.size = p_dir->size;
+	clu.flags = p_dir->flags;
+
+	if (hint_stat->eidx) {
+		clu.dir = hint_stat->clu;
+		dentry = hint_stat->eidx;
+		end_eidx = dentry;
+	}
+
+	candi_empty.eidx = -1;
+rewind:
+	order = 0;
+	step = DIRENT_STEP_FILE;
+	while (!IS_CLUS_EOF(clu.dir)) {
+		i = dentry & (dentries_per_clu - 1);
+		for (; i < dentries_per_clu; i++, dentry++) {
+			if (rewind && (dentry == end_eidx))
+				goto not_found;
+
+			ep = exfat_get_dentry_in_dir(sb, &clu, i, NULL);
+			if (!ep)
+				return -EIO;
+
+			entry_type = exfat_get_entry_type(ep);
+
+			if ((entry_type == TYPE_UNUSED) || (entry_type == TYPE_DELETED)) {
+				step = DIRENT_STEP_FILE;
+
+				num_empty++;
+				if (candi_empty.eidx == -1) {
+					if (num_empty == 1) {
+						candi_empty.cur.dir = clu.dir;
+						candi_empty.cur.size = clu.size;
+						candi_empty.cur.flags = clu.flags;
+					}
+
+					if (num_empty >= num_entries) {
+						candi_empty.eidx = dentry - (num_empty - 1);
+						ASSERT(0 <= candi_empty.eidx);
+						candi_empty.count = num_empty;
+
+						if ((fid->hint_femp.eidx == -1) ||
+							(candi_empty.eidx <= fid->hint_femp.eidx)) {
+							memcpy(&fid->hint_femp,
+								&candi_empty,
+								sizeof(HINT_FEMP_T));
+						}
+					}
+				}
+
+				if (entry_type == TYPE_UNUSED)
+					goto not_found;
+				continue;
+			}
+
+			num_empty = 0;
+			candi_empty.eidx = -1;
+
+			if ((entry_type == TYPE_FILE) || (entry_type == TYPE_DIR)) {
+				step = DIRENT_STEP_FILE;
+				if ((type == TYPE_ALL) || (type == entry_type)) {
+					file_ep = (FILE_DENTRY_T *) ep;
+					num_ext = file_ep->num_ext;
+					step = DIRENT_STEP_STRM;
+				}
+				continue;
+			}
+
+			if (entry_type == TYPE_STREAM) {
+				if (step != DIRENT_STEP_STRM) {
+					step = DIRENT_STEP_FILE;
+					continue;
+				}
+				step = DIRENT_STEP_FILE;
+				strm_ep = (STRM_DENTRY_T *) ep;
+				if ((p_uniname->name_hash == le16_to_cpu(strm_ep->name_hash)) &&
+						(p_uniname->name_len == strm_ep->name_len)) {
+					step = DIRENT_STEP_NAME;
+					order = 1;
+					name_len = 0;
+				}
+				continue;
+			}
+
+			if (entry_type == TYPE_EXTEND) {
+				if (step != DIRENT_STEP_NAME) {
+					step = DIRENT_STEP_FILE;
+					continue;
+				}
+				name_ep = (NAME_DENTRY_T *) ep;
+
+				if ((++order) == 2)
+					uniname = p_uniname->name;
+				else
+					uniname += 15;
+
+				len = __extract_uni_name_from_name_entry(name_ep, entry_uniname, order);
+				name_len += len;
+
+				unichar = *(uniname+len);
+				*(uniname+len) = 0x0;
+
+				if (exfat_nls_cmp_uniname(sb, uniname, entry_uniname)) {
+					step = DIRENT_STEP_FILE;
+				} else if (name_len == p_uniname->name_len) {
+					if (order == num_ext) {
+						//fid->hint_femp.eidx = -1;
+						goto found;
+					}
+					step = DIRENT_STEP_SECD;
+				}
+
+				*(uniname+len) = unichar;
+				continue;
+			}
+
+			if (entry_type & (TYPE_CRITICAL_SEC | TYPE_BENIGN_SEC)) {
+				if (step == DIRENT_STEP_SECD) {
+					if (++order == num_ext)
+						goto found;
+					continue;
+				}
+			}
+			step = DIRENT_STEP_FILE;
+		}
+
+		if (clu.flags == 0x03) {
+			if ((--clu.size) > 0)
+				clu.dir++;
+			else
+				clu.dir = CLUS_EOF;
+		} else {
+			if (get_next_clus_safe(sb, &clu.dir))
+				return -EIO;
+		}
+	}
+
+not_found:
+	/* we started at not 0 index,so we should try to find target
+	 * from 0 index to the index we started at.
+	 */
+	if (!rewind && end_eidx) {
+		rewind = 1;
+		dentry = 0;
+		clu.dir = p_dir->dir;
+		/* reset empty hint */
+		num_empty = 0;
+		candi_empty.eidx = -1;
+		goto rewind;
+	}
+
+	/* initialized hint_stat */
+	hint_stat->clu = p_dir->dir;
+	hint_stat->eidx = 0;
+	return -ENOENT;
+
+found:
+	/* next dentry we'll find is out of this cluster */
+	if (!((dentry + 1) & (dentries_per_clu-1))) {
+		int ret = 0;
+
+		if (clu.flags == 0x03) {
+			if ((--clu.size) > 0)
+				clu.dir++;
+			else
+				clu.dir = CLUS_EOF;
+		} else {
+			ret = get_next_clus_safe(sb, &clu.dir);
+		}
+
+		if (ret || IS_CLUS_EOF(clu.dir)) {
+			/* just initialized hint_stat */
+			hint_stat->clu = p_dir->dir;
+			hint_stat->eidx = 0;
+			return (dentry - num_ext);
+		}
+	}
+
+	hint_stat->clu = clu.dir;
+	hint_stat->eidx = dentry + 1;
+	return (dentry - num_ext);
+}
+
+/* returns -EIO on error */
+static s32 exfat_count_ext_entries(struct super_block *sb, CHAIN_T *p_dir, s32 entry, DENTRY_T *p_entry)
+{
+	s32 i, count = 0;
+	u32 type;
+	FILE_DENTRY_T *file_ep = (FILE_DENTRY_T *) p_entry;
+	DENTRY_T *ext_ep;
+
+	for (i = 0, entry++; i < file_ep->num_ext; i++, entry++) {
+		ext_ep = exfat_get_dentry_in_dir(sb, p_dir, entry, NULL);
+		if (!ext_ep)
+			return -EIO;
+
+		type = exfat_get_entry_type(ext_ep);
+		if ((type == TYPE_EXTEND) || (type == TYPE_STREAM))
+			count++;
+		else
+			return count;
+	}
+
+	return count;
+}
+
+
+/*
+ *  Name Conversion Functions
+ */
+static void exfat_get_uniname_from_ext_entry(struct super_block *sb, CHAIN_T *p_dir, s32 entry, u16 *uniname)
+{
+	s32 i;
+	DENTRY_T *ep;
+	ENTRY_SET_CACHE_T *es;
+
+	es = exfat_get_dentry_set_in_dir(sb, p_dir, entry, ES_ALL_ENTRIES, &ep);
+	if (!es)
+		return;
+
+	if (es->num_entries < 3)
+		goto out;
+
+	ep += 2;
+
+	/*
+	 * First entry  : file entry
+	 * Second entry : stream-extension entry
+	 * Third entry  : first file-name entry
+	 * So, the index of first file-name dentry should start from 2.
+	 */
+	for (i = 2; i < es->num_entries; i++, ep++) {
+		if (exfat_get_entry_type(ep) != TYPE_EXTEND)
+			goto out;
+
+		__extract_uni_name_from_name_entry((NAME_DENTRY_T *)ep, uniname, i);
+		uniname += 15;
+	}
+
+out:
+	exfat_release_dentry_set(es);
+}
+
+static s32 exfat_calc_num_entries(UNI_NAME_T *p_uniname)
+{
+	s32 len;
+
+	len = p_uniname->name_len;
+	if (len == 0)
+		return 0;
+
+	/* 1 file entry + 1 stream entry + name entries */
+	return((len-1) / 15 + 3);
+
+}
+
+static s32 exfat_check_max_dentries(FILE_ID_T *fid)
+{
+	if ((fid->size >> DENTRY_SIZE_BITS) >= MAX_EXFAT_DENTRIES) {
+		/* exFAT spec allows a dir to grow upto 8388608(256MB) dentries */
+		return -ENOSPC;
+	}
+	return 0;
+}
+
+/*
+ *  Allocation Bitmap Management Functions
+ */
+s32 exfat_load_alloc_bmp(struct super_block *sb)
+{
+	s32 ret;
+	u32 i, j, map_size, type, need_map_size;
+	u64 sector;
+	CHAIN_T clu;
+	BMAP_DENTRY_T *ep;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	clu.dir = fsi->root_dir;
+	clu.flags = 0x01;
+
+	while (!IS_CLUS_EOF(clu.dir)) {
+		for (i = 0; i < fsi->dentries_per_clu; i++) {
+			ep = (BMAP_DENTRY_T *) exfat_get_dentry_in_dir(sb, &clu, i, NULL);
+			if (!ep)
+				return -EIO;
+
+			type = exfat_get_entry_type((DENTRY_T *) ep);
+
+			if (type == TYPE_UNUSED)
+				break;
+			if (type != TYPE_BITMAP)
+				continue;
+
+			if (ep->flags == 0x0) {
+				fsi->map_clu  = le32_to_cpu(ep->start_clu);
+				map_size = (u32) le64_to_cpu(ep->size);
+
+				need_map_size = (((fsi->num_clusters - CLUS_BASE) - 1) >> 3) + 1;
+				if (need_map_size != map_size) {
+					exfat_log_msg(sb, KERN_ERR,
+						"bogus allocation bitmap size(need : %u, cur : %u)",
+						need_map_size, map_size);
+					/* Only allowed when bogus allocation bitmap size is large */
+					if (need_map_size > map_size)
+						return -EIO;
+				}
+				fsi->map_sectors = ((need_map_size - 1) >> (sb->s_blocksize_bits)) + 1;
+				fsi->vol_amap =
+					kmalloc((sizeof(struct buffer_head *) * fsi->map_sectors), GFP_KERNEL);
+				if (!fsi->vol_amap)
+					return -ENOMEM;
+
+				sector = CLUS_TO_SECT(fsi, fsi->map_clu);
+
+				for (j = 0; j < fsi->map_sectors; j++) {
+					fsi->vol_amap[j] = NULL;
+					ret = exfat_read_sect(sb, sector+j, &(fsi->vol_amap[j]), 1);
+					if (ret) {
+						/*  release all buffers and free vol_amap */
+						i = 0;
+						while (i < j)
+							brelse(fsi->vol_amap[i++]);
+
+						/* kfree(NULL) is safe */
+						kfree(fsi->vol_amap);
+						fsi->vol_amap = NULL;
+						return ret;
+					}
+				}
+
+				fsi->pbr_bh = NULL;
+				return 0;
+			}
+		}
+
+		if (get_next_clus_safe(sb, &clu.dir))
+			return -EIO;
+	}
+
+	return -EINVAL;
+}
+
+void exfat_free_alloc_bmp(struct super_block *sb)
+{
+	s32 i;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	brelse(fsi->pbr_bh);
+
+	for (i = 0; i < fsi->map_sectors; i++)
+		__brelse(fsi->vol_amap[i]);
+
+	/* kfree(NULL) is safe */
+	kfree(fsi->vol_amap);
+	fsi->vol_amap = NULL;
+}
+
+/* WARN :
+ * If the value of "clu" is 0, it means cluster 2 which is
+ * the first cluster of cluster heap.
+ */
+static s32 set_alloc_bitmap(struct super_block *sb, u32 clu)
+{
+	s32 i, b;
+	u64 sector;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	i = clu >> (sb->s_blocksize_bits + 3);
+	b = clu & (u32)((sb->s_blocksize << 3) - 1);
+
+	sector = CLUS_TO_SECT(fsi, fsi->map_clu) + i;
+	bitmap_set((unsigned long *)(fsi->vol_amap[i]->b_data), b, 1);
+
+	return exfat_write_sect(sb, sector, fsi->vol_amap[i], 0);
+}
+
+/* WARN :
+ * If the value of "clu" is 0, it means cluster 2 which is
+ * the first cluster of cluster heap.
+ */
+static s32 clr_alloc_bitmap(struct super_block *sb, u32 clu)
+{
+	s32 ret;
+	s32 i, b;
+	u64 sector;
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	struct exfat_mount_options *opts = &sbi->options;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	i = clu >> (sb->s_blocksize_bits + 3);
+	b = clu & (u32)((sb->s_blocksize << 3) - 1);
+
+	sector = CLUS_TO_SECT(fsi, fsi->map_clu) + i;
+
+	bitmap_clear((unsigned long *)(fsi->vol_amap[i]->b_data), b, 1);
+
+	ret = exfat_write_sect(sb, sector, fsi->vol_amap[i], 0);
+
+	if (opts->discard) {
+		s32 ret_discard;
+
+		ret_discard = sb_issue_discard(sb, CLUS_TO_SECT(fsi, clu+2),
+				(1 << fsi->sect_per_clus_bits), GFP_NOFS, 0);
+
+		if (ret_discard == -EOPNOTSUPP) {
+			exfat_msg(sb, KERN_ERR,
+				"discard not supported by device, disabling");
+			opts->discard = 0;
+		}
+	}
+
+	return ret;
+}
+
+/* WARN :
+ * If the value of "clu" is 0, it means cluster 2 which is
+ * the first cluster of cluster heap.
+ */
+static u32 test_alloc_bitmap(struct super_block *sb, u32 clu)
+{
+	u32 i, map_i, map_b;
+	u32 clu_base, clu_free;
+	u8 k, clu_mask;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	clu_base = (clu & ~(0x7)) + 2;
+	clu_mask = (1 << (clu - clu_base + 2)) - 1;
+
+	map_i = clu >> (sb->s_blocksize_bits + 3);
+	map_b = (clu >> 3) & (u32)(sb->s_blocksize - 1);
+
+	for (i = 2; i < fsi->num_clusters; i += 8) {
+		k = *(((u8 *) fsi->vol_amap[map_i]->b_data) + map_b);
+		if (clu_mask > 0) {
+			k |= clu_mask;
+			clu_mask = 0;
+		}
+		if (k < 0xFF) {
+			clu_free = clu_base + free_bit[k];
+			if (clu_free < fsi->num_clusters)
+				return clu_free;
+		}
+		clu_base += 8;
+
+		if (((++map_b) >= (u32)sb->s_blocksize) ||
+			(clu_base >= fsi->num_clusters)) {
+			if ((++map_i) >= fsi->map_sectors) {
+				clu_base = 2;
+				map_i = 0;
+			}
+			map_b = 0;
+		}
+	}
+
+	return CLUS_EOF;
+}
+
+s32 exfat_chain_cont_cluster(struct super_block *sb, u32 chain, u32 len)
+{
+	if (!len)
+		return 0;
+
+	while (len > 1) {
+		if (exfat_ent_set(sb, chain, chain+1))
+			return -EIO;
+		chain++;
+		len--;
+	}
+
+	if (exfat_ent_set(sb, chain, CLUS_EOF))
+		return -EIO;
+	return 0;
+}
+
+static s32 exfat_free_cluster(struct super_block *sb, CHAIN_T *p_chain, s32 do_relse)
+{
+	s32 ret = -EIO;
+	u32 num_clusters = 0;
+	u32 clu;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	s32 i;
+	u64 sector;
+
+	/* invalid cluster number */
+	if (IS_CLUS_FREE(p_chain->dir) || IS_CLUS_EOF(p_chain->dir))
+		return 0;
+
+	/* no cluster to truncate */
+	if (p_chain->size == 0) {
+		DMSG("%s: cluster(%u) truncation is not required.",
+			 __func__, p_chain->dir);
+		return 0;
+	}
+
+	/* check cluster validation */
+	if ((p_chain->dir < 2) && (p_chain->dir >= fsi->num_clusters)) {
+		EMSG("%s: invalid start cluster (%u)\n", __func__, p_chain->dir);
+		exfat_debug_bug_on(1);
+		return -EIO;
+	}
+
+	exfat_set_sb_dirty(sb);
+	clu = p_chain->dir;
+
+	if (p_chain->flags == 0x03) {
+		do {
+			if (do_relse) {
+				sector = CLUS_TO_SECT(fsi, clu);
+				for (i = 0; i < fsi->sect_per_clus; i++) {
+					if (exfat_dcache_release(sb, sector+i) == -EIO)
+						goto out;
+				}
+			}
+
+			if (clr_alloc_bitmap(sb, clu-2))
+				goto out;
+			clu++;
+
+			num_clusters++;
+		} while (num_clusters < p_chain->size);
+	} else {
+		do {
+			if (do_relse) {
+				sector = CLUS_TO_SECT(fsi, clu);
+				for (i = 0; i < fsi->sect_per_clus; i++) {
+					if (exfat_dcache_release(sb, sector+i) == -EIO)
+						goto out;
+				}
+			}
+
+			if (clr_alloc_bitmap(sb, (clu - CLUS_BASE)))
+				goto out;
+
+			if (get_next_clus_safe(sb, &clu))
+				goto out;
+
+			num_clusters++;
+		} while (!IS_CLUS_EOF(clu));
+	}
+
+	/* success */
+	ret = 0;
+out:
+
+	fsi->used_clusters -= num_clusters;
+	return ret;
+}
+
+static s32 exfat_alloc_cluster(struct super_block *sb, u32 num_alloc, CHAIN_T *p_chain, s32 dest)
+{
+	s32 ret = -ENOSPC;
+	u32 num_clusters = 0, total_cnt;
+	u32 hint_clu, new_clu, last_clu = CLUS_EOF;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	total_cnt = fsi->num_clusters - CLUS_BASE;
+
+	if (unlikely(total_cnt < fsi->used_clusters)) {
+		exfat_fs_error_ratelimit(sb,
+				"%s: invalid used clusters(t:%u,u:%u)\n",
+				__func__, total_cnt, fsi->used_clusters);
+		return -EIO;
+	}
+
+	if (num_alloc > total_cnt - fsi->used_clusters)
+		return -ENOSPC;
+
+	hint_clu = p_chain->dir;
+	/* find new cluster */
+	if (IS_CLUS_EOF(hint_clu)) {
+		if (fsi->clu_srch_ptr < CLUS_BASE) {
+			EMSG("%s: fsi->clu_srch_ptr is invalid (%u)\n",
+				__func__, fsi->clu_srch_ptr);
+			ASSERT(0);
+			fsi->clu_srch_ptr = CLUS_BASE;
+		}
+
+		hint_clu = test_alloc_bitmap(sb, fsi->clu_srch_ptr - CLUS_BASE);
+		if (IS_CLUS_EOF(hint_clu))
+			return -ENOSPC;
+	}
+
+	/* check cluster validation */
+	if ((hint_clu < CLUS_BASE) && (hint_clu >= fsi->num_clusters)) {
+		EMSG("%s: hint_cluster is invalid (%u)\n", __func__, hint_clu);
+		ASSERT(0);
+		hint_clu = CLUS_BASE;
+		if (p_chain->flags == 0x03) {
+			if (exfat_chain_cont_cluster(sb, p_chain->dir, num_clusters))
+				return -EIO;
+			p_chain->flags = 0x01;
+		}
+	}
+
+	exfat_set_sb_dirty(sb);
+
+	p_chain->dir = CLUS_EOF;
+
+	while ((new_clu = test_alloc_bitmap(sb, hint_clu - CLUS_BASE)) != CLUS_EOF) {
+		if ((new_clu != hint_clu) && (p_chain->flags == 0x03)) {
+			if (exfat_chain_cont_cluster(sb, p_chain->dir, num_clusters)) {
+				ret = -EIO;
+				goto error;
+			}
+			p_chain->flags = 0x01;
+		}
+
+		/* update allocation bitmap */
+		if (set_alloc_bitmap(sb, new_clu - CLUS_BASE)) {
+			ret = -EIO;
+			goto error;
+		}
+
+		num_clusters++;
+
+		/* update FAT table */
+		if (p_chain->flags == 0x01) {
+			if (exfat_ent_set(sb, new_clu, CLUS_EOF)) {
+				ret = -EIO;
+				goto error;
+			}
+		}
+
+		if (IS_CLUS_EOF(p_chain->dir)) {
+			p_chain->dir = new_clu;
+		} else if (p_chain->flags == 0x01) {
+			if (exfat_ent_set(sb, last_clu, new_clu)) {
+				ret = -EIO;
+				goto error;
+			}
+		}
+		last_clu = new_clu;
+
+		if ((--num_alloc) == 0) {
+			fsi->clu_srch_ptr = hint_clu;
+			fsi->used_clusters += num_clusters;
+
+			p_chain->size += num_clusters;
+			return 0;
+		}
+
+		hint_clu = new_clu + 1;
+		if (hint_clu >= fsi->num_clusters) {
+			hint_clu = CLUS_BASE;
+
+			if (p_chain->flags == 0x03) {
+				if (exfat_chain_cont_cluster(sb, p_chain->dir, num_clusters)) {
+					ret = -EIO;
+					goto error;
+				}
+				p_chain->flags = 0x01;
+			}
+		}
+	}
+error:
+	if (num_clusters)
+		exfat_free_cluster(sb, p_chain, 0);
+	return ret;
+}
+
+static s32 exfat_count_used_clusters(struct super_block *sb, u32 *ret_count)
+{
+	u32 count = 0;
+	u32 i, map_i, map_b;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	u32 total_clus = fsi->num_clusters - 2;
+
+	map_i = map_b = 0;
+
+	for (i = 0; i < total_clus; i += 8) {
+		u8 k = *(((u8 *) fsi->vol_amap[map_i]->b_data) + map_b);
+
+		count += used_bit[k];
+		if ((++map_b) >= (u32)sb->s_blocksize) {
+			map_i++;
+			map_b = 0;
+		}
+	}
+
+	/* FIXME : abnormal bitmap count should be handled as more smart */
+	if (total_clus < count)
+		count = total_clus;
+
+	*ret_count = count;
+	return 0;
+}
+
+
+/*
+ *  File Operation Functions
+ */
+static FS_FUNC_T exfat_fs_func = {
+	.alloc_cluster = exfat_alloc_cluster,
+	.free_cluster = exfat_free_cluster,
+	.count_used_clusters = exfat_count_used_clusters,
+
+	.init_dir_entry = exfat_init_dir_entry,
+	.init_ext_entry = exfat_init_ext_entry,
+	.find_dir_entry = exfat_find_dir_entry,
+	.delete_dir_entry = exfat_delete_dir_entry,
+	.get_uniname_from_ext_entry = exfat_get_uniname_from_ext_entry,
+	.count_ext_entries = exfat_count_ext_entries,
+	.calc_num_entries = exfat_calc_num_entries,
+	.check_max_dentries = exfat_check_max_dentries,
+
+	.get_entry_type = exfat_get_entry_type,
+	.set_entry_type = exfat_set_entry_type,
+	.get_entry_attr = exfat_get_entry_attr,
+	.set_entry_attr = exfat_set_entry_attr,
+	.get_entry_flag = exfat_get_entry_flag,
+	.set_entry_flag = exfat_set_entry_flag,
+	.get_entry_clu0 = exfat_get_entry_clu0,
+	.set_entry_clu0 = exfat_set_entry_clu0,
+	.get_entry_size = exfat_get_entry_size,
+	.set_entry_size = exfat_set_entry_size,
+	.get_entry_time = exfat_get_entry_time,
+	.set_entry_time = exfat_set_entry_time,
+};
+
+s32 mount_exfat(struct super_block *sb, pbr_t *p_pbr)
+{
+	pbr64_t *p_bpb = (pbr64_t *)p_pbr;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (!p_bpb->bsx.num_fats) {
+		exfat_msg(sb, KERN_ERR, "bogus number of FAT structure");
+		return -EINVAL;
+	}
+
+	fsi->sect_per_clus = 1 << p_bpb->bsx.sect_per_clus_bits;
+	fsi->sect_per_clus_bits = p_bpb->bsx.sect_per_clus_bits;
+	fsi->cluster_size_bits = fsi->sect_per_clus_bits + sb->s_blocksize_bits;
+	fsi->cluster_size = 1 << fsi->cluster_size_bits;
+
+	fsi->num_FAT_sectors = le32_to_cpu(p_bpb->bsx.fat_length);
+
+	fsi->FAT1_start_sector = le32_to_cpu(p_bpb->bsx.fat_offset);
+	if (p_bpb->bsx.num_fats == 1)
+		fsi->FAT2_start_sector = fsi->FAT1_start_sector;
+	else
+		fsi->FAT2_start_sector = fsi->FAT1_start_sector + fsi->num_FAT_sectors;
+
+	fsi->root_start_sector = le32_to_cpu(p_bpb->bsx.clu_offset);
+	fsi->data_start_sector = fsi->root_start_sector;
+
+	fsi->num_sectors = le64_to_cpu(p_bpb->bsx.vol_length);
+	fsi->num_clusters = le32_to_cpu(p_bpb->bsx.clu_count) + 2;
+	/* because the cluster index starts with 2 */
+
+	fsi->vol_id = le32_to_cpu(p_bpb->bsx.vol_serial);
+
+	fsi->root_dir = le32_to_cpu(p_bpb->bsx.root_cluster);
+	fsi->dentries_in_root = 0;
+	fsi->dentries_per_clu = 1 << (fsi->cluster_size_bits - DENTRY_SIZE_BITS);
+
+	fsi->vol_flag = (u32) le16_to_cpu(p_bpb->bsx.vol_flags);
+	fsi->clu_srch_ptr = CLUS_BASE;
+	fsi->used_clusters = UINT_MAX;
+
+	fsi->fs_func = &exfat_fs_func;
+
+	if (p_bpb->bsx.vol_flags & VOL_DIRTY) {
+		fsi->vol_flag |= VOL_DIRTY;
+		exfat_log_msg(sb, KERN_WARNING, "Volume was not properly "
+				"unmounted. Some data may be corrupt. "
+				"Please run fsck.");
+	}
+
+	return 0;
+}
diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
index 6c12f2d79f4d..785f640cfbbe 100644
--- a/drivers/staging/exfat/exfat.h
+++ b/drivers/staging/exfat/exfat.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0 */
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
  */
@@ -6,966 +6,389 @@
 #ifndef _EXFAT_H
 #define _EXFAT_H
 
-#include <linux/types.h>
 #include <linux/buffer_head.h>
+#include <linux/string.h>
+#include <linux/types.h>
+#include <linux/nls.h>
+#include <linux/fs.h>
+#include <linux/mutex.h>
+#include <linux/ratelimit.h>
+#include <linux/version.h>
+#include <linux/kobject.h>
+#include <linux/iversion.h>
+#include "api.h"
 
-#ifdef CONFIG_EXFAT_KERNEL_DEBUG
-  /* For Debugging Purpose */
-	/* IOCTL code 'f' used by
-	 *   - file systems typically #0~0x1F
-	 *   - embedded terminal devices #128~
-	 *   - exts for debugging purpose #99
-	 * number 100 and 101 is available now but has possible conflicts
-	 */
-#define EXFAT_IOC_GET_DEBUGFLAGS	_IOR('f', 100, long)
-#define EXFAT_IOC_SET_DEBUGFLAGS	_IOW('f', 101, long)
-
-#define EXFAT_DEBUGFLAGS_INVALID_UMOUNT	0x01
-#define EXFAT_DEBUGFLAGS_ERROR_RW	0x02
-#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
-
-#ifdef CONFIG_EXFAT_DEBUG_MSG
-#define DEBUG	1
-#else
-#undef DEBUG
-#endif
-
-#define DENTRY_SIZE		32	/* dir entry size */
-#define DENTRY_SIZE_BITS	5
-
-/* PBR entries */
-#define PBR_SIGNATURE	0xAA55
-#define EXT_SIGNATURE	0xAA550000
-#define VOL_LABEL	"NO NAME    "	/* size should be 11 */
-#define OEM_NAME	"MSWIN4.1"	/* size should be 8 */
-#define STR_FAT12	"FAT12   "	/* size should be 8 */
-#define STR_FAT16	"FAT16   "	/* size should be 8 */
-#define STR_FAT32	"FAT32   "	/* size should be 8 */
-#define STR_EXFAT	"EXFAT   "	/* size should be 8 */
-#define VOL_CLEAN	0x0000
-#define VOL_DIRTY	0x0002
-
-/* max number of clusters */
-#define FAT12_THRESHOLD		4087		/* 2^12 - 1 + 2 (clu 0 & 1) */
-#define FAT16_THRESHOLD		65527		/* 2^16 - 1 + 2 */
-#define FAT32_THRESHOLD		268435457	/* 2^28 - 1 + 2 */
-#define EXFAT_THRESHOLD		268435457	/* 2^28 - 1 + 2 */
-
-/* file types */
-#define TYPE_UNUSED		0x0000
-#define TYPE_DELETED		0x0001
-#define TYPE_INVALID		0x0002
-#define TYPE_CRITICAL_PRI	0x0100
-#define TYPE_BITMAP		0x0101
-#define TYPE_UPCASE		0x0102
-#define TYPE_VOLUME		0x0103
-#define TYPE_DIR		0x0104
-#define TYPE_FILE		0x011F
-#define TYPE_SYMLINK		0x015F
-#define TYPE_CRITICAL_SEC	0x0200
-#define TYPE_STREAM		0x0201
-#define TYPE_EXTEND		0x0202
-#define TYPE_ACL		0x0203
-#define TYPE_BENIGN_PRI		0x0400
-#define TYPE_GUID		0x0401
-#define TYPE_PADDING		0x0402
-#define TYPE_ACLTAB		0x0403
-#define TYPE_BENIGN_SEC		0x0800
-#define TYPE_ALL		0x0FFF
-
-/* time modes */
-#define TM_CREATE		0
-#define TM_MODIFY		1
-#define TM_ACCESS		2
-
-/* checksum types */
-#define CS_DIR_ENTRY		0
-#define CS_PBR_SECTOR		1
-#define CS_DEFAULT		2
-
-#define CLUSTER_16(x)		((u16)(x))
-#define CLUSTER_32(x)		((u32)(x))
-
-#define START_SECTOR(x)							\
-	((((sector_t)((x) - 2)) << p_fs->sectors_per_clu_bits) +	\
-	 p_fs->data_start_sector)
-
-#define IS_LAST_SECTOR_IN_CLUSTER(sec)				\
-	((((sec) - p_fs->data_start_sector + 1) &		\
-	  ((1 <<  p_fs->sectors_per_clu_bits) - 1)) == 0)
-
-#define GET_CLUSTER_FROM_SECTOR(sec)				\
-	((u32)((((sec) - p_fs->data_start_sector) >>		\
-		p_fs->sectors_per_clu_bits) + 2))
-
-#define GET16(p_src)						\
-	(((u16)(p_src)[0]) | (((u16)(p_src)[1]) << 8))
-#define GET32(p_src)						\
-	(((u32)(p_src)[0]) | (((u32)(p_src)[1]) << 8) |		\
-	(((u32)(p_src)[2]) << 16) | (((u32)(p_src)[3]) << 24))
-#define GET64(p_src) \
-	(((u64)(p_src)[0]) | (((u64)(p_src)[1]) << 8) |		\
-	(((u64)(p_src)[2]) << 16) | (((u64)(p_src)[3]) << 24) |	\
-	(((u64)(p_src)[4]) << 32) | (((u64)(p_src)[5]) << 40) |	\
-	(((u64)(p_src)[6]) << 48) | (((u64)(p_src)[7]) << 56))
-
-#define SET16(p_dst, src)					\
-	do {							\
-		(p_dst)[0] = (u8)(src);				\
-		(p_dst)[1] = (u8)(((u16)(src)) >> 8);		\
-	} while (0)
-#define SET32(p_dst, src)					\
-	do {							\
-		(p_dst)[0] = (u8)(src);				\
-		(p_dst)[1] = (u8)(((u32)(src)) >> 8);		\
-		(p_dst)[2] = (u8)(((u32)(src)) >> 16);		\
-		(p_dst)[3] = (u8)(((u32)(src)) >> 24);		\
-	} while (0)
-#define SET64(p_dst, src)					\
-	do {							\
-		(p_dst)[0] = (u8)(src);				\
-		(p_dst)[1] = (u8)(((u64)(src)) >> 8);		\
-		(p_dst)[2] = (u8)(((u64)(src)) >> 16);		\
-		(p_dst)[3] = (u8)(((u64)(src)) >> 24);		\
-		(p_dst)[4] = (u8)(((u64)(src)) >> 32);		\
-		(p_dst)[5] = (u8)(((u64)(src)) >> 40);		\
-		(p_dst)[6] = (u8)(((u64)(src)) >> 48);		\
-		(p_dst)[7] = (u8)(((u64)(src)) >> 56);		\
-	} while (0)
-
-#ifdef __LITTLE_ENDIAN
-#define GET16_A(p_src)		(*((u16 *)(p_src)))
-#define GET32_A(p_src)		(*((u32 *)(p_src)))
-#define GET64_A(p_src)		(*((u64 *)(p_src)))
-#define SET16_A(p_dst, src)	(*((u16 *)(p_dst)) = (u16)(src))
-#define SET32_A(p_dst, src)	(*((u32 *)(p_dst)) = (u32)(src))
-#define SET64_A(p_dst, src)	(*((u64 *)(p_dst)) = (u64)(src))
-#else /* BIG_ENDIAN */
-#define GET16_A(p_src)		GET16(p_src)
-#define GET32_A(p_src)		GET32(p_src)
-#define GET64_A(p_src)		GET64(p_src)
-#define SET16_A(p_dst, src)	SET16(p_dst, src)
-#define SET32_A(p_dst, src)	SET32(p_dst, src)
-#define SET64_A(p_dst, src)	SET64(p_dst, src)
-#endif
-
-/* cache size (in number of sectors) */
-/* (should be an exponential value of 2) */
-#define FAT_CACHE_SIZE		128
-#define FAT_CACHE_HASH_SIZE	64
-#define BUF_CACHE_SIZE		256
-#define BUF_CACHE_HASH_SIZE	64
-
-/* Upcase table macro */
-#define HIGH_INDEX_BIT	(8)
-#define HIGH_INDEX_MASK	(0xFF00)
-#define LOW_INDEX_BIT	(16 - HIGH_INDEX_BIT)
-#define UTBL_ROW_COUNT	BIT(LOW_INDEX_BIT)
-#define UTBL_COL_COUNT	BIT(HIGH_INDEX_BIT)
-
-static inline u16 get_col_index(u16 i)
-{
-	return i >> LOW_INDEX_BIT;
-}
-
-static inline u16 get_row_index(u16 i)
-{
-	return i & ~HIGH_INDEX_MASK;
-}
-
-#define EXFAT_SUPER_MAGIC       (0x2011BAB0L)
-#define EXFAT_ROOT_INO          1
-
-/* FAT types */
-#define FAT12			0x01	/* FAT12 */
-#define FAT16			0x0E	/* Win95 FAT16 (LBA) */
-#define FAT32			0x0C	/* Win95 FAT32 (LBA) */
-#define EXFAT			0x07	/* exFAT */
-
-/* file name lengths */
-#define MAX_CHARSET_SIZE	3	/* max size of multi-byte character */
-#define MAX_PATH_DEPTH		15	/* max depth of path name */
-#define MAX_NAME_LENGTH		256	/* max len of filename including NULL */
-#define MAX_PATH_LENGTH		260	/* max len of pathname including NULL */
-#define DOS_NAME_LENGTH		11	/* DOS filename length excluding NULL */
-#define DOS_PATH_LENGTH		80	/* DOS pathname length excluding NULL */
-
-/* file attributes */
-#define ATTR_NORMAL		0x0000
-#define ATTR_READONLY		0x0001
-#define ATTR_HIDDEN		0x0002
-#define ATTR_SYSTEM		0x0004
-#define ATTR_VOLUME		0x0008
-#define ATTR_SUBDIR		0x0010
-#define ATTR_ARCHIVE		0x0020
-#define ATTR_SYMLINK		0x0040
-#define ATTR_EXTEND		0x000F
-#define ATTR_RWMASK		0x007E
-
-/* file creation modes */
-#define FM_REGULAR              0x00
-#define FM_SYMLINK              0x40
-
-/* return values */
-#define FFS_SUCCESS             0
-#define FFS_MEDIAERR            1
-#define FFS_FORMATERR           2
-#define FFS_MOUNTED             3
-#define FFS_NOTMOUNTED          4
-#define FFS_ALIGNMENTERR        5
-#define FFS_SEMAPHOREERR        6
-#define FFS_INVALIDPATH         7
-#define FFS_INVALIDFID          8
-#define FFS_NOTFOUND            9
-#define FFS_FILEEXIST           10
-#define FFS_PERMISSIONERR       11
-#define FFS_NOTOPENED           12
-#define FFS_MAXOPENED           13
-#define FFS_FULL                14
-#define FFS_EOF                 15
-#define FFS_DIRBUSY             16
-#define FFS_MEMORYERR           17
-#define FFS_NAMETOOLONG		18
-#define FFS_ERROR               19
-
-#define NUM_UPCASE              2918
-
-#define DOS_CUR_DIR_NAME        ".          "
-#define DOS_PAR_DIR_NAME        "..         "
-
-#ifdef __LITTLE_ENDIAN
-#define UNI_CUR_DIR_NAME        ".\0"
-#define UNI_PAR_DIR_NAME        ".\0.\0"
-#else
-#define UNI_CUR_DIR_NAME        "\0."
-#define UNI_PAR_DIR_NAME        "\0.\0."
-#endif
-
-struct date_time_t {
-	u16      Year;
-	u16      Month;
-	u16      Day;
-	u16      Hour;
-	u16      Minute;
-	u16      Second;
-	u16      MilliSecond;
-};
-
-struct part_info_t {
-	u32      Offset;    /* start sector number of the partition */
-	u32      Size;      /* in sectors */
-};
-
-struct dev_info_t {
-	u32      SecSize;    /* sector size in bytes */
-	u32      DevSize;    /* block device size in sectors */
-};
-
-struct vol_info_t {
-	u32      FatType;
-	u32      ClusterSize;
-	u32      NumClusters;
-	u32      FreeClusters;
-	u32      UsedClusters;
-};
-
-/* directory structure */
-struct chain_t {
-	u32      dir;
-	s32       size;
-	u8       flags;
-};
-
-struct file_id_t {
-	struct chain_t     dir;
-	s32       entry;
-	u32      type;
-	u32      attr;
-	u32      start_clu;
-	u64      size;
-	u8       flags;
-	s64       rwoffset;
-	s32       hint_last_off;
-	u32      hint_last_clu;
-};
-
-struct dir_entry_t {
-	char Name[MAX_NAME_LENGTH * MAX_CHARSET_SIZE];
-
-	/* used only for FAT12/16/32, not used for exFAT */
-	char ShortName[DOS_NAME_LENGTH + 2];
-
-	u32 Attr;
-	u64 Size;
-	u32 NumSubdirs;
-	struct date_time_t CreateTimestamp;
-	struct date_time_t ModifyTimestamp;
-	struct date_time_t AccessTimestamp;
-};
-
-struct timestamp_t {
-	u16      sec;        /* 0 ~ 59               */
-	u16      min;        /* 0 ~ 59               */
-	u16      hour;       /* 0 ~ 23               */
-	u16      day;        /* 1 ~ 31               */
-	u16      mon;        /* 1 ~ 12               */
-	u16      year;       /* 0 ~ 127 (since 1980) */
-};
-
-/* MS_DOS FAT partition boot record (512 bytes) */
-struct pbr_sector_t {
-	u8       jmp_boot[3];
-	u8       oem_name[8];
-	u8       bpb[109];
-	u8       boot_code[390];
-	u8       signature[2];
-};
-
-/* MS-DOS FAT12/16 BIOS parameter block (51 bytes) */
-struct bpb16_t {
-	u8       sector_size[2];
-	u8       sectors_per_clu;
-	u8       num_reserved[2];
-	u8       num_fats;
-	u8       num_root_entries[2];
-	u8       num_sectors[2];
-	u8       media_type;
-	u8       num_fat_sectors[2];
-	u8       sectors_in_track[2];
-	u8       num_heads[2];
-	u8       num_hid_sectors[4];
-	u8       num_huge_sectors[4];
-
-	u8       phy_drv_no;
-	u8       reserved;
-	u8       ext_signature;
-	u8       vol_serial[4];
-	u8       vol_label[11];
-	u8       vol_type[8];
-};
-
-/* MS-DOS FAT32 BIOS parameter block (79 bytes) */
-struct bpb32_t {
-	u8       sector_size[2];
-	u8       sectors_per_clu;
-	u8       num_reserved[2];
-	u8       num_fats;
-	u8       num_root_entries[2];
-	u8       num_sectors[2];
-	u8       media_type;
-	u8       num_fat_sectors[2];
-	u8       sectors_in_track[2];
-	u8       num_heads[2];
-	u8       num_hid_sectors[4];
-	u8       num_huge_sectors[4];
-	u8       num_fat32_sectors[4];
-	u8       ext_flags[2];
-	u8       fs_version[2];
-	u8       root_cluster[4];
-	u8       fsinfo_sector[2];
-	u8       backup_sector[2];
-	u8       reserved[12];
-
-	u8       phy_drv_no;
-	u8       ext_reserved;
-	u8       ext_signature;
-	u8       vol_serial[4];
-	u8       vol_label[11];
-	u8       vol_type[8];
-};
-
-/* MS-DOS EXFAT BIOS parameter block (109 bytes) */
-struct bpbex_t {
-	u8       reserved1[53];
-	u8       vol_offset[8];
-	u8       vol_length[8];
-	u8       fat_offset[4];
-	u8       fat_length[4];
-	u8       clu_offset[4];
-	u8       clu_count[4];
-	u8       root_cluster[4];
-	u8       vol_serial[4];
-	u8       fs_version[2];
-	u8       vol_flags[2];
-	u8       sector_size_bits;
-	u8       sectors_per_clu_bits;
-	u8       num_fats;
-	u8       phy_drv_no;
-	u8       perc_in_use;
-	u8       reserved2[7];
-};
-
-/* MS-DOS FAT file system information sector (512 bytes) */
-struct fsi_sector_t {
-	u8       signature1[4];
-	u8       reserved1[480];
-	u8       signature2[4];
-	u8       free_cluster[4];
-	u8       next_cluster[4];
-	u8       reserved2[14];
-	u8       signature3[2];
-};
-
-/* MS-DOS FAT directory entry (32 bytes) */
-struct dentry_t {
-	u8       dummy[32];
-};
-
-struct dos_dentry_t {
-	u8       name[DOS_NAME_LENGTH];
-	u8       attr;
-	u8       lcase;
-	u8       create_time_ms;
-	u8       create_time[2];
-	u8       create_date[2];
-	u8       access_date[2];
-	u8       start_clu_hi[2];
-	u8       modify_time[2];
-	u8       modify_date[2];
-	u8       start_clu_lo[2];
-	u8       size[4];
-};
-
-/* MS-DOS FAT extended directory entry (32 bytes) */
-struct ext_dentry_t {
-	u8       order;
-	u8       unicode_0_4[10];
-	u8       attr;
-	u8       sysid;
-	u8       checksum;
-	u8       unicode_5_10[12];
-	u8       start_clu[2];
-	u8       unicode_11_12[4];
-};
-
-/* MS-DOS EXFAT file directory entry (32 bytes) */
-struct file_dentry_t {
-	u8       type;
-	u8       num_ext;
-	u8       checksum[2];
-	u8       attr[2];
-	u8       reserved1[2];
-	u8       create_time[2];
-	u8       create_date[2];
-	u8       modify_time[2];
-	u8       modify_date[2];
-	u8       access_time[2];
-	u8       access_date[2];
-	u8       create_time_ms;
-	u8       modify_time_ms;
-	u8       access_time_ms;
-	u8       reserved2[9];
-};
-
-/* MS-DOS EXFAT stream extension directory entry (32 bytes) */
-struct strm_dentry_t {
-	u8       type;
-	u8       flags;
-	u8       reserved1;
-	u8       name_len;
-	u8       name_hash[2];
-	u8       reserved2[2];
-	u8       valid_size[8];
-	u8       reserved3[4];
-	u8       start_clu[4];
-	u8       size[8];
-};
-
-/* MS-DOS EXFAT file name directory entry (32 bytes) */
-struct name_dentry_t {
-	u8       type;
-	u8       flags;
-	u8       unicode_0_14[30];
-};
-
-/* MS-DOS EXFAT allocation bitmap directory entry (32 bytes) */
-struct bmap_dentry_t {
-	u8       type;
-	u8       flags;
-	u8       reserved[18];
-	u8       start_clu[4];
-	u8       size[8];
-};
-
-/* MS-DOS EXFAT up-case table directory entry (32 bytes) */
-struct case_dentry_t {
-	u8       type;
-	u8       reserved1[3];
-	u8       checksum[4];
-	u8       reserved2[12];
-	u8       start_clu[4];
-	u8       size[8];
-};
-
-/* MS-DOS EXFAT volume label directory entry (32 bytes) */
-struct volm_dentry_t {
-	u8       type;
-	u8       label_len;
-	u8       unicode_0_10[22];
-	u8       reserved[8];
-};
-
-/* unused entry hint information */
-struct uentry_t {
-	u32      dir;
-	s32       entry;
-	struct chain_t     clu;
-};
-
-/* DOS name structure */
-struct dos_name_t {
-	u8       name[DOS_NAME_LENGTH];
-	u8       name_case;
-};
-
-/* unicode name structure */
-struct uni_name_t {
-	u16      name[MAX_NAME_LENGTH];
-	u16      name_hash;
-	u8       name_len;
-};
-
-struct buf_cache_t {
-	struct buf_cache_t *next;
-	struct buf_cache_t *prev;
-	struct buf_cache_t *hash_next;
-	struct buf_cache_t *hash_prev;
-	s32                drv;
-	sector_t          sec;
-	u32               flag;
-	struct buffer_head   *buf_bh;
-};
-
-struct fs_func {
-	s32	(*alloc_cluster)(struct super_block *sb, s32 num_alloc,
-				 struct chain_t *p_chain);
-	void	(*free_cluster)(struct super_block *sb, struct chain_t *p_chain,
-				s32 do_relse);
-	s32	(*count_used_clusters)(struct super_block *sb);
-
-	s32	(*init_dir_entry)(struct super_block *sb, struct chain_t *p_dir,
-				  s32 entry, u32 type, u32 start_clu, u64 size);
-	s32	(*init_ext_entry)(struct super_block *sb, struct chain_t *p_dir,
-				  s32 entry, s32 num_entries,
-				  struct uni_name_t *p_uniname,
-				  struct dos_name_t *p_dosname);
-	s32	(*find_dir_entry)(struct super_block *sb, struct chain_t *p_dir,
-				  struct uni_name_t *p_uniname, s32 num_entries,
-				  struct dos_name_t *p_dosname, u32 type);
-	void	(*delete_dir_entry)(struct super_block *sb,
-				    struct chain_t *p_dir, s32 entry,
-				    s32 offset, s32 num_entries);
-	void	(*get_uni_name_from_ext_entry)(struct super_block *sb,
-					       struct chain_t *p_dir, s32 entry,
-					       u16 *uniname);
-	s32	(*count_ext_entries)(struct super_block *sb,
-				     struct chain_t *p_dir, s32 entry,
-				     struct dentry_t *p_entry);
-	s32	(*calc_num_entries)(struct uni_name_t *p_uniname);
-
-	u32	(*get_entry_type)(struct dentry_t *p_entry);
-	void	(*set_entry_type)(struct dentry_t *p_entry, u32 type);
-	u32	(*get_entry_attr)(struct dentry_t *p_entry);
-	void	(*set_entry_attr)(struct dentry_t *p_entry, u32 attr);
-	u8	(*get_entry_flag)(struct dentry_t *p_entry);
-	void	(*set_entry_flag)(struct dentry_t *p_entry, u8 flag);
-	u32	(*get_entry_clu0)(struct dentry_t *p_entry);
-	void	(*set_entry_clu0)(struct dentry_t *p_entry, u32 clu0);
-	u64	(*get_entry_size)(struct dentry_t *p_entry);
-	void	(*set_entry_size)(struct dentry_t *p_entry, u64 size);
-	void	(*get_entry_time)(struct dentry_t *p_entry,
-				  struct timestamp_t *tp, u8 mode);
-	void	(*set_entry_time)(struct dentry_t *p_entry,
-				  struct timestamp_t *tp, u8 mode);
-};
-
-struct fs_info_t {
-	u32      drv;                    /* drive ID */
-	u32      vol_type;               /* volume FAT type */
-	u32      vol_id;                 /* volume serial number */
-
-	u64      num_sectors;            /* num of sectors in volume */
-	u32      num_clusters;           /* num of clusters in volume */
-	u32      cluster_size;           /* cluster size in bytes */
-	u32      cluster_size_bits;
-	u32      sectors_per_clu;        /* cluster size in sectors */
-	u32      sectors_per_clu_bits;
-
-	u32      PBR_sector;             /* PBR sector */
-	u32      FAT1_start_sector;      /* FAT1 start sector */
-	u32      FAT2_start_sector;      /* FAT2 start sector */
-	u32      root_start_sector;      /* root dir start sector */
-	u32      data_start_sector;      /* data area start sector */
-	u32      num_FAT_sectors;        /* num of FAT sectors */
-
-	u32      root_dir;               /* root dir cluster */
-	u32      dentries_in_root;       /* num of dentries in root dir */
-	u32      dentries_per_clu;       /* num of dentries per cluster */
-
-	u32      vol_flag;               /* volume dirty flag */
-	struct buffer_head *pbr_bh;         /* PBR sector */
-
-	u32      map_clu;                /* allocation bitmap start cluster */
-	u32      map_sectors;            /* num of allocation bitmap sectors */
-	struct buffer_head **vol_amap;      /* allocation bitmap */
-
-	u16 **vol_utbl;			/* upcase table */
-
-	u32 clu_srch_ptr;		/* cluster search pointer */
-	u32 used_clusters;		/* number of used clusters */
-	struct uentry_t hint_uentry;	/* unused entry hint information */
-
-	u32 dev_ejected;	/* block device operation error flag */
-
-	struct fs_func *fs_func;
-	struct semaphore v_sem;
-
-	/* FAT cache */
-	struct buf_cache_t FAT_cache_array[FAT_CACHE_SIZE];
-	struct buf_cache_t FAT_cache_lru_list;
-	struct buf_cache_t FAT_cache_hash_list[FAT_CACHE_HASH_SIZE];
-
-	/* buf cache */
-	struct buf_cache_t buf_cache_array[BUF_CACHE_SIZE];
-	struct buf_cache_t buf_cache_lru_list;
-	struct buf_cache_t buf_cache_hash_list[BUF_CACHE_HASH_SIZE];
-};
-
-#define ES_2_ENTRIES		2
-#define ES_3_ENTRIES		3
-#define ES_ALL_ENTRIES		0
-
-struct entry_set_cache_t {
-	/* sector number that contains file_entry */
-	sector_t sector;
-
-	/* byte offset in the sector */
-	s32 offset;
-
-	/*
-	 * flag in stream entry.
-	 * 01 for cluster chain,
-	 * 03 for contig. clusteres.
-	 */
-	s32 alloc_flag;
+#define EXFAT_IS_SB_RDONLY(sb)	((sb)->s_flags & SB_RDONLY)
 
-	u32 num_entries;
+/*
+ * exfat error flags
+ */
+#define EXFAT_ERRORS_CONT	(1)    /* ignore error and continue */
+#define EXFAT_ERRORS_PANIC	(2)    /* panic on error */
+#define EXFAT_ERRORS_RO		(3)    /* remount r/o on error */
 
-	/* __buf should be the last member */
-	void *__buf;
-};
+/*
+ * exfat allocator destination for smart allocation
+ */
+#define ALLOC_NOWHERE		(0)
+#define ALLOC_COLD		(1)
+#define ALLOC_HOT		(16)
+#define ALLOC_COLD_ALIGNED	(1)
+#define ALLOC_COLD_PACKING	(2)
+#define ALLOC_COLD_SEQ		(4)
 
-#define EXFAT_ERRORS_CONT	1	/* ignore error and continue */
-#define EXFAT_ERRORS_PANIC	2	/* panic on error */
-#define EXFAT_ERRORS_RO		3	/* remount r/o on error */
+/*
+ * exfat nls lossy flag
+ */
+#define NLS_NAME_NO_LOSSY	(0x00) /* no lossy */
+#define NLS_NAME_LOSSY		(0x01) /* just detected incorrect filename(s) */
+#define NLS_NAME_OVERLEN	(0x02) /* the length is over than its limit */
 
-/* ioctl command */
-#define EXFAT_IOCTL_GET_VOLUME_ID _IOR('r', 0x12, __u32)
+/*
+ * exfat common MACRO
+ */
+#define CLUSTER_16(x)	((u16)((x) & 0xFFFFU))
+#define CLUSTER_32(x)	((u32)((x) & 0xFFFFFFFFU))
+#define CLUS_EOF	CLUSTER_32(~0)
+#define CLUS_BAD	(0xFFFFFFF7U)
+#define CLUS_FREE	(0)
+#define CLUS_BASE	(2)
+#define IS_CLUS_EOF(x)	((x) == CLUS_EOF)
+#define IS_CLUS_BAD(x)	((x) == CLUS_BAD)
+#define IS_CLUS_FREE(x)	((x) == CLUS_FREE)
+#define IS_LAST_SECT_IN_CLUS(fsi, sec)				\
+	((((sec) - (fsi)->data_start_sector + 1)		\
+	& ((1 << (fsi)->sect_per_clus_bits) - 1)) == 0)
+
+#define CLUS_TO_SECT(fsi, x)	\
+	((((unsigned long long)(x) - CLUS_BASE) << (fsi)->sect_per_clus_bits) + (fsi)->data_start_sector)
+
+#define SECT_TO_CLUS(fsi, sec)	\
+	((u32)((((sec) - (fsi)->data_start_sector) >> (fsi)->sect_per_clus_bits) + CLUS_BASE))
 
+/*
+ * exfat mount in-memory data
+ */
 struct exfat_mount_options {
 	kuid_t fs_uid;
 	kgid_t fs_gid;
+
 	unsigned short fs_fmask;
 	unsigned short fs_dmask;
+	unsigned short allow_utime; /* permission for setting the [am]time */
+	unsigned short codepage;    /* codepage for shortname conversions */
+	char *iocharset;            /* charset for filename input/display */
 
-	/* permission for setting the [am]time */
-	unsigned short allow_utime;
-
-	/* codepage for shortname conversions */
-	unsigned short codepage;
-
-	/* charset for filename input/display */
-	char *iocharset;
-
+	unsigned char utf8;
 	unsigned char casesensitive;
-
-	/* on error: continue, panic, remount-ro */
-	unsigned char errors;
-#ifdef CONFIG_EXFAT_DISCARD
-	/* flag on if -o dicard specified and device support discard() */
-	unsigned char discard;
-#endif /* CONFIG_EXFAT_DISCARD */
+	unsigned char tz_utc;
+	unsigned char symlink;      /* support symlink operation */
+	unsigned char errors;       /* on error: continue, panic, remount-ro */
+	unsigned char discard;      /* flag on if -o dicard specified and device support discard() */
+	unsigned char delayed_meta; /* delay flushing dirty metadata */
 };
 
-#define EXFAT_HASH_BITS		8
-#define EXFAT_HASH_SIZE		BIT(EXFAT_HASH_BITS)
+#define EXFAT_HASH_BITS    8
+#define EXFAT_HASH_SIZE    (1UL << EXFAT_HASH_BITS)
 
 /*
- * EXFAT file system in-core superblock data
+ * EXFAT file system superblock in-memory data
  */
-struct bd_info_t {
-	s32 sector_size;	/* in bytes */
-	s32 sector_size_bits;
-	s32 sector_size_mask;
-
-	/* total number of sectors in this block device */
-	s32 num_sectors;
-
-	/* opened or not */
-	bool opened;
-};
-
 struct exfat_sb_info {
-	struct fs_info_t fs_info;
-	struct bd_info_t bd_info;
+	FS_INFO_T fsi;	/* private filesystem info */
 
-	struct exfat_mount_options options;
+	struct mutex s_vlock;   /* volume lock */
+	int use_vmalloc;
 
 	int s_dirt;
-	struct mutex s_lock;
+	struct mutex s_lock;    /* superblock lock */
+	int write_super_queued;			/* Write_super work is pending? */
+	struct delayed_work write_super_work;   /* Work_queue data structrue for write_super() */
+	spinlock_t work_lock;			/* Lock for WQ */
+
+	struct super_block *host_sb;		/* sb pointer */
+	struct exfat_mount_options options;
 	struct nls_table *nls_disk; /* Codepage used on disk */
 	struct nls_table *nls_io;   /* Charset used for input and display */
-
-	struct inode *fat_inode;
+	struct ratelimit_state ratelimit;
 
 	spinlock_t inode_hash_lock;
 	struct hlist_head inode_hashtable[EXFAT_HASH_SIZE];
-#ifdef CONFIG_EXFAT_KERNEL_DEBUG
+	struct kobject sb_kobj;
+#ifdef CONFIG_EXFAT_DBG_IOCTL
 	long debug_flags;
-#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
+#endif /* CONFIG_EXFAT_DBG_IOCTL */
+
+#ifdef CONFIG_EXFAT_TRACE_IO
+	/* Statistics for allocator */
+	unsigned int stat_n_pages_written;	/* # of written pages in total */
+	unsigned int stat_n_pages_added;	/* # of added blocks in total */
+	unsigned int stat_n_bdev_pages_written;	/* # of written pages owned by bdev inode */
+	unsigned int stat_n_pages_confused;
+#endif
+	atomic_t stat_n_pages_queued;	/* # of pages in the request queue (approx.) */
 };
 
 /*
- * EXFAT file system inode data in memory
+ * EXFAT file system inode in-memory data
  */
 struct exfat_inode_info {
-	struct file_id_t fid;
+	FILE_ID_T fid;
 	char  *target;
-	/* NOTE: mmu_private is 64bits, so must hold ->i_mutex to access */
-	loff_t mmu_private;	/* physically allocated size */
-	loff_t i_pos;		/* on-disk position of directory entry or 0 */
-	struct hlist_node i_hash_fat;	/* hash by i_location */
-	struct rw_semaphore truncate_lock;
+	/* NOTE: i_size_ondisk is 64bits, so must hold ->inode_lock to access */
+	loff_t i_size_ondisk;         /* physically allocated size */
+	loff_t i_size_aligned;          /* block-aligned i_size (used in cont_write_begin) */
+	loff_t i_pos;               /* on-disk position of directory entry or 0 */
+	struct hlist_node i_hash_fat;    /* hash by i_location */
+	struct rw_semaphore truncate_lock; /* protect bmap against truncate */
 	struct inode vfs_inode;
-	struct rw_semaphore i_alloc_sem; /* protect bmap against truncate */
 };
 
-#define EXFAT_SB(sb)		((struct exfat_sb_info *)((sb)->s_fs_info))
+/*
+ * FIXME : needs on-disk-slot in-memory data
+ */
+
+static inline struct exfat_sb_info *EXFAT_SB(struct super_block *sb)
+{
+	return (struct exfat_sb_info *)sb->s_fs_info;
+}
 
 static inline struct exfat_inode_info *EXFAT_I(struct inode *inode)
 {
 	return container_of(inode, struct exfat_inode_info, vfs_inode);
 }
 
+/*
+ * If ->i_mode can't hold S_IWUGO (i.e. ATTR_RO), we use ->i_attrs to
+ * save ATTR_RO instead of ->i_mode.
+ *
+ * If it's directory and !sbi->options.rodir, ATTR_RO isn't read-only
+ * bit, it's just used as flag for app.
+ */
+static inline int exfat_mode_can_hold_ro(struct inode *inode)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);
+
+	if (S_ISDIR(inode->i_mode))
+		return 0;
+
+	if ((~sbi->options.fs_fmask) & S_IWUGO)
+		return 1;
+	return 0;
+}
+
+/*
+ * FIXME : needs to check symlink option.
+ */
+/* Convert attribute bits and a mask to the UNIX mode. */
+static inline mode_t exfat_make_mode(struct exfat_sb_info *sbi,
+					u32 attr, mode_t mode)
+{
+	if ((attr & ATTR_READONLY) && !(attr & ATTR_SUBDIR))
+		mode &= ~S_IWUGO;
+
+	if (attr & ATTR_SUBDIR)
+		return (mode & ~sbi->options.fs_dmask) | S_IFDIR;
+	else if (attr & ATTR_SYMLINK)
+		return (mode & ~sbi->options.fs_dmask) | S_IFLNK;
+	else
+		return (mode & ~sbi->options.fs_fmask) | S_IFREG;
+}
+
+/* Return the FAT attribute byte for this inode */
+static inline u32 exfat_make_attr(struct inode *inode)
+{
+	u32 attrs = EXFAT_I(inode)->fid.attr;
+
+	if (S_ISDIR(inode->i_mode))
+		attrs |= ATTR_SUBDIR;
+	if (exfat_mode_can_hold_ro(inode) && !(inode->i_mode & S_IWUGO))
+		attrs |= ATTR_READONLY;
+	return attrs;
+}
+
+static inline void exfat_save_attr(struct inode *inode, u32 attr)
+{
+	if (exfat_mode_can_hold_ro(inode))
+		EXFAT_I(inode)->fid.attr = attr & ATTR_RWMASK;
+	else
+		EXFAT_I(inode)->fid.attr = attr & (ATTR_RWMASK | ATTR_READONLY);
+}
+
+/* exfat/nls.c */
 /* NLS management function */
-u16 nls_upper(struct super_block *sb, u16 a);
-int nls_dosname_cmp(struct super_block *sb, u8 *a, u8 *b);
-int nls_uniname_cmp(struct super_block *sb, u16 *a, u16 *b);
-void nls_uniname_to_dosname(struct super_block *sb,
-			    struct dos_name_t *p_dosname,
-			    struct uni_name_t *p_uniname, bool *p_lossy);
-void nls_dosname_to_uniname(struct super_block *sb,
-			    struct uni_name_t *p_uniname,
-			    struct dos_name_t *p_dosname);
-void nls_uniname_to_cstring(struct super_block *sb, u8 *p_cstring,
-			    struct uni_name_t *p_uniname);
-void nls_cstring_to_uniname(struct super_block *sb,
-			    struct uni_name_t *p_uniname, u8 *p_cstring,
-			    bool *p_lossy);
-
-/* buffer cache management */
-void buf_init(struct super_block *sb);
-void buf_shutdown(struct super_block *sb);
-int FAT_read(struct super_block *sb, u32 loc, u32 *content);
-s32 FAT_write(struct super_block *sb, u32 loc, u32 content);
-u8 *FAT_getblk(struct super_block *sb, sector_t sec);
-void FAT_modify(struct super_block *sb, sector_t sec);
-void FAT_release_all(struct super_block *sb);
-void FAT_sync(struct super_block *sb);
-u8 *buf_getblk(struct super_block *sb, sector_t sec);
-void buf_modify(struct super_block *sb, sector_t sec);
-void buf_lock(struct super_block *sb, sector_t sec);
-void buf_unlock(struct super_block *sb, sector_t sec);
-void buf_release(struct super_block *sb, sector_t sec);
-void buf_release_all(struct super_block *sb);
-void buf_sync(struct super_block *sb);
-
-/* fs management functions */
-void fs_set_vol_flags(struct super_block *sb, u32 new_flag);
-void fs_error(struct super_block *sb);
-
-/* cluster management functions */
-s32 clear_cluster(struct super_block *sb, u32 clu);
-s32 fat_alloc_cluster(struct super_block *sb, s32 num_alloc,
-		      struct chain_t *p_chain);
-s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
-			struct chain_t *p_chain);
-void fat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
-		      s32 do_relse);
-void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
-			s32 do_relse);
-u32 find_last_cluster(struct super_block *sb, struct chain_t *p_chain);
-s32 count_num_clusters(struct super_block *sb, struct chain_t *dir);
-s32 fat_count_used_clusters(struct super_block *sb);
-s32 exfat_count_used_clusters(struct super_block *sb);
-void exfat_chain_cont_cluster(struct super_block *sb, u32 chain, s32 len);
-
-/* allocation bitmap management functions */
-s32 load_alloc_bitmap(struct super_block *sb);
-void free_alloc_bitmap(struct super_block *sb);
-s32 set_alloc_bitmap(struct super_block *sb, u32 clu);
-s32 clr_alloc_bitmap(struct super_block *sb, u32 clu);
-u32 test_alloc_bitmap(struct super_block *sb, u32 clu);
-void sync_alloc_bitmap(struct super_block *sb);
-
-/* upcase table management functions */
-s32 load_upcase_table(struct super_block *sb);
-void free_upcase_table(struct super_block *sb);
-
-/* dir entry management functions */
-u32 fat_get_entry_type(struct dentry_t *p_entry);
-u32 exfat_get_entry_type(struct dentry_t *p_entry);
-void fat_set_entry_type(struct dentry_t *p_entry, u32 type);
-void exfat_set_entry_type(struct dentry_t *p_entry, u32 type);
-u32 fat_get_entry_attr(struct dentry_t *p_entry);
-u32 exfat_get_entry_attr(struct dentry_t *p_entry);
-void fat_set_entry_attr(struct dentry_t *p_entry, u32 attr);
-void exfat_set_entry_attr(struct dentry_t *p_entry, u32 attr);
-u8 fat_get_entry_flag(struct dentry_t *p_entry);
-u8 exfat_get_entry_flag(struct dentry_t *p_entry);
-void fat_set_entry_flag(struct dentry_t *p_entry, u8 flag);
-void exfat_set_entry_flag(struct dentry_t *p_entry, u8 flag);
-u32 fat_get_entry_clu0(struct dentry_t *p_entry);
-u32 exfat_get_entry_clu0(struct dentry_t *p_entry);
-void fat_set_entry_clu0(struct dentry_t *p_entry, u32 start_clu);
-void exfat_set_entry_clu0(struct dentry_t *p_entry, u32 start_clu);
-u64 fat_get_entry_size(struct dentry_t *p_entry);
-u64 exfat_get_entry_size(struct dentry_t *p_entry);
-void fat_set_entry_size(struct dentry_t *p_entry, u64 size);
-void exfat_set_entry_size(struct dentry_t *p_entry, u64 size);
-struct timestamp_t *tm_current(struct timestamp_t *tm);
-void fat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
-			u8 mode);
-void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
-			  u8 mode);
-void fat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
-			u8 mode);
-void exfat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
-			  u8 mode);
-s32 fat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir, s32 entry,
-		       u32 type, u32 start_clu, u64 size);
-s32 exfat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			 s32 entry, u32 type, u32 start_clu, u64 size);
-s32 fat_init_ext_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			   s32 entry, s32 num_entries,
-			   struct uni_name_t *p_uniname,
-			   struct dos_name_t *p_dosname);
-s32 exfat_init_ext_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			     s32 entry, s32 num_entries,
-			     struct uni_name_t *p_uniname,
-		struct dos_name_t *p_dosname);
-void init_dos_entry(struct dos_dentry_t *ep, u32 type, u32 start_clu);
-void init_ext_entry(struct ext_dentry_t *ep, s32 order, u8 chksum,
-		    u16 *uniname);
-void init_file_entry(struct file_dentry_t *ep, u32 type);
-void init_strm_entry(struct strm_dentry_t *ep, u8 flags, u32 start_clu,
-		     u64 size);
-void init_name_entry(struct name_dentry_t *ep, u16 *uniname);
-void fat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			  s32 entry, s32 order, s32 num_entries);
-void exfat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			    s32 entry, s32 order, s32 num_entries);
-
-s32 find_location(struct super_block *sb, struct chain_t *p_dir, s32 entry,
-		  sector_t *sector, s32 *offset);
-struct dentry_t *get_entry_with_sector(struct super_block *sb, sector_t sector,
-				       s32 offset);
-struct dentry_t *get_entry_in_dir(struct super_block *sb, struct chain_t *p_dir,
-				  s32 entry, sector_t *sector);
-struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
-					       struct chain_t *p_dir, s32 entry,
-					       u32 type,
-					       struct dentry_t **file_ep);
-void release_entry_set(struct entry_set_cache_t *es);
-s32 write_whole_entry_set(struct super_block *sb, struct entry_set_cache_t *es);
-s32 write_partial_entries_in_entry_set(struct super_block *sb,
-				       struct entry_set_cache_t *es,
-				       struct dentry_t *ep, u32 count);
-s32 search_deleted_or_unused_entry(struct super_block *sb,
-				   struct chain_t *p_dir, s32 num_entries);
-s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir,
-		     s32 num_entries);
-s32 fat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-		       struct uni_name_t *p_uniname, s32 num_entries,
-		       struct dos_name_t *p_dosname, u32 type);
-s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			 struct uni_name_t *p_uniname, s32 num_entries,
-			 struct dos_name_t *p_dosname, u32 type);
-s32 fat_count_ext_entries(struct super_block *sb, struct chain_t *p_dir,
-			  s32 entry, struct dentry_t *p_entry);
-s32 exfat_count_ext_entries(struct super_block *sb, struct chain_t *p_dir,
-			    s32 entry, struct dentry_t *p_entry);
-s32 count_dos_name_entries(struct super_block *sb, struct chain_t *p_dir,
-			   u32 type);
-void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
-			 s32 entry);
-void update_dir_checksum_with_entry_set(struct super_block *sb,
-					struct entry_set_cache_t *es);
-bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir);
-
-/* name conversion functions */
-s32 get_num_entries_and_dos_name(struct super_block *sb, struct chain_t *p_dir,
-				 struct uni_name_t *p_uniname, s32 *entries,
-				 struct dos_name_t *p_dosname);
-void get_uni_name_from_dos_entry(struct super_block *sb,
-				 struct dos_dentry_t *ep,
-				 struct uni_name_t *p_uniname, u8 mode);
-void fat_get_uni_name_from_ext_entry(struct super_block *sb,
-				     struct chain_t *p_dir, s32 entry,
-				     u16 *uniname);
-void exfat_get_uni_name_from_ext_entry(struct super_block *sb,
-				       struct chain_t *p_dir, s32 entry,
-				       u16 *uniname);
-s32 extract_uni_name_from_ext_entry(struct ext_dentry_t *ep,
-				    u16 *uniname, s32 order);
-s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep,
-				     u16 *uniname, s32 order);
-s32 fat_generate_dos_name(struct super_block *sb, struct chain_t *p_dir,
-			  struct dos_name_t *p_dosname);
-void fat_attach_count_to_dos_name(u8 *dosname, s32 count);
-s32 fat_calc_num_entries(struct uni_name_t *p_uniname);
-s32 exfat_calc_num_entries(struct uni_name_t *p_uniname);
-u8 calc_checksum_1byte(void *data, s32 len, u8 chksum);
-u16 calc_checksum_2byte(void *data, s32 len, u16 chksum, s32 type);
-u32 calc_checksum_4byte(void *data, s32 len, u32 chksum, s32 type);
-
-/* name resolution functions */
-s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
-		 struct uni_name_t *p_uniname);
-s32 resolve_name(u8 *name, u8 **arg);
-
-/* file operation functions */
-s32 fat16_mount(struct super_block *sb, struct pbr_sector_t *p_pbr);
-s32 fat32_mount(struct super_block *sb, struct pbr_sector_t *p_pbr);
-s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr);
-s32 create_dir(struct inode *inode, struct chain_t *p_dir,
-	       struct uni_name_t *p_uniname, struct file_id_t *fid);
-s32 create_file(struct inode *inode, struct chain_t *p_dir,
-		struct uni_name_t *p_uniname, u8 mode, struct file_id_t *fid);
-void remove_file(struct inode *inode, struct chain_t *p_dir, s32 entry);
-s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 old_entry,
-		struct uni_name_t *p_uniname, struct file_id_t *fid);
-s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
-	      struct chain_t *p_newdir, struct uni_name_t *p_uniname,
-	      struct file_id_t *fid);
-
-/* sector read/write functions */
-int sector_read(struct super_block *sb, sector_t sec,
-		struct buffer_head **bh, bool read);
-int sector_write(struct super_block *sb, sector_t sec,
-		 struct buffer_head *bh, bool sync);
-int multi_sector_read(struct super_block *sb, sector_t sec,
-		      struct buffer_head **bh, s32 num_secs, bool read);
-int multi_sector_write(struct super_block *sb, sector_t sec,
-		       struct buffer_head *bh, s32 num_secs, bool sync);
-
-void bdev_open(struct super_block *sb);
-void bdev_close(struct super_block *sb);
-int bdev_read(struct super_block *sb, sector_t secno,
-	      struct buffer_head **bh, u32 num_secs, bool read);
-int bdev_write(struct super_block *sb, sector_t secno,
-	       struct buffer_head *bh, u32 num_secs, bool sync);
-int bdev_sync(struct super_block *sb);
-
-extern const u8 uni_upcase[];
-#endif /* _EXFAT_H */
+s32  exfat_nls_cmp_uniname(struct super_block *sb, u16 *a, u16 *b);
+s32  exfat_nls_sfn_to_uni16s(struct super_block *sb, DOS_NAME_T *p_dosname, UNI_NAME_T *p_uniname);
+s32  exfat_nls_uni16s_to_vfsname(struct super_block *sb, UNI_NAME_T *uniname, u8 *p_cstring, s32 len);
+s32  exfat_nls_vfsname_to_uni16s(struct super_block *sb, const u8 *p_cstring,
+			const s32 len, UNI_NAME_T *uniname, s32 *p_lossy);
+
+/* exfat/xattr.c */
+#ifdef CONFIG_EXFAT_VIRTUAL_XATTR
+void setup_exfat_xattr_handler(struct super_block *sb);
+extern int exfat_setxattr(struct dentry *dentry, const char *name, const void *value, size_t size, int flags);
+extern ssize_t exfat_getxattr(struct dentry *dentry, const char *name, void *value, size_t size);
+extern ssize_t exfat_listxattr(struct dentry *dentry, char *list, size_t size);
+extern int exfat_removexattr(struct dentry *dentry, const char *name);
+#else
+static inline void setup_exfat_xattr_handler(struct super_block *sb) {};
+#endif
+
+/* exfat/misc.c */
+#ifdef CONFIG_EXFAT_UEVENT
+extern int exfat_uevent_init(struct kset *exfat_kset);
+extern void exfat_uevent_uninit(void);
+extern void exfat_uevent_ro_remount(struct super_block *sb);
+#else
+static inline int exfat_uevent_init(struct kset *exfat_kset)
+{
+	return 0;
+}
+static inline void exfat_uevent_uninit(void) {};
+static inline void exfat_uevent_ro_remount(struct super_block *sb) {};
+#endif
+extern void
+__exfat_fs_error(struct super_block *sb, int report, const char *fmt, ...)
+	__printf(3, 4) __cold;
+#define exfat_fs_error(sb, fmt, args...)          \
+	__exfat_fs_error(sb, 1, fmt, ## args)
+#define exfat_fs_error_ratelimit(sb, fmt, args...) \
+	__exfat_fs_error(sb, __ratelimit(&EXFAT_SB(sb)->ratelimit), fmt, ## args)
+extern void
+__exfat_msg(struct super_block *sb, const char *lv, int st, const char *fmt, ...)
+	__printf(4, 5) __cold;
+#define exfat_msg(sb, lv, fmt, args...)          \
+	__exfat_msg(sb, lv, 0, fmt, ## args)
+#define exfat_log_msg(sb, lv, fmt, args...)          \
+	__exfat_msg(sb, lv, 1, fmt, ## args)
+extern void exfat_time_fat2unix(struct exfat_sb_info *sbi, struct timespec64 *ts,
+				DATE_TIME_T *tp);
+extern void exfat_time_unix2fat(struct exfat_sb_info *sbi, struct timespec64 *ts,
+				DATE_TIME_T *tp);
+extern TIMESTAMP_T *exfat_tm_now(struct exfat_sb_info *sbi, TIMESTAMP_T *tm);
+
+#ifdef CONFIG_EXFAT_DEBUG
+
+#ifdef CONFIG_EXFAT_DBG_CAREFUL
+void exfat_debug_check_clusters(struct inode *inode);
+#else
+#define exfat_debug_check_clusters(inode)
+#endif /* CONFIG_EXFAT_DBG_CAREFUL */
+
+#ifdef CONFIG_EXFAT_DBG_BUGON
+#define exfat_debug_bug_on(expr)        BUG_ON(expr)
+#else
+#define exfat_debug_bug_on(expr)
+#endif
+
+#ifdef CONFIG_EXFAT_DBG_WARNON
+#define exfat_debug_warn_on(expr)        WARN_ON(expr)
+#else
+#define exfat_debug_warn_on(expr)
+#endif
+
+#else /* CONFIG_EXFAT_DEBUG */
+
+#define exfat_debug_check_clusters(inode)
+#define exfat_debug_bug_on(expr)
+#define exfat_debug_warn_on(expr)
+
+#endif /* CONFIG_EXFAT_DEBUG */
+
+#ifdef CONFIG_EXFAT_TRACE_ELAPSED_TIME
+u32 exfat_time_current_usec(struct timeval *tv);
+extern struct timeval __t1;
+extern struct timeval __t2;
+
+#define TIME_GET(tv)	exfat_time_current_usec(tv)
+#define TIME_START(s)	exfat_time_current_usec(s)
+#define TIME_END(e)	exfat_time_current_usec(e)
+#define TIME_ELAPSED(s, e) ((u32)(((e)->tv_sec - (s)->tv_sec) * 1000000 + \
+			((e)->tv_usec - (s)->tv_usec)))
+#define PRINT_TIME(n)	pr_info("exFAT: Elapsed time %d = %d (usec)\n", n, (__t2 - __t1))
+#else /* CONFIG_EXFAT_TRACE_ELAPSED_TIME */
+#define TIME_GET(tv)    (0)
+#define TIME_START(s)
+#define TIME_END(e)
+#define TIME_ELAPSED(s, e)      (0)
+#define PRINT_TIME(n)
+#endif /* CONFIG_EXFAT_TRACE_ELAPSED_TIME */
+
+#define	EXFAT_MSG_LV_NONE	(0x00000000)
+#define EXFAT_MSG_LV_ERR	(0x00000001)
+#define EXFAT_MSG_LV_INFO	(0x00000002)
+#define EXFAT_MSG_LV_DBG	(0x00000003)
+#define EXFAT_MSG_LV_MORE	(0x00000004)
+#define EXFAT_MSG_LV_TRACE	(0x00000005)
+#define EXFAT_MSG_LV_ALL	(0x00000006)
+
+#define EXFAT_MSG_LEVEL		EXFAT_MSG_LV_INFO
+
+#define EXFAT_TAG_NAME	"EXFAT"
+#define __S(x) #x
+#define _S(x) __S(x)
+
+extern void __exfat_dmsg(int level, const char *fmt, ...) __printf(2, 3) __cold;
+
+#define EXFAT_EMSG_T(level, ...)	\
+	__exfat_dmsg(level, KERN_ERR "[" EXFAT_TAG_NAME "] [" _S(__FILE__) "(" _S(__LINE__) ")] " __VA_ARGS__)
+#define EXFAT_DMSG_T(level, ...)	\
+	__exfat_dmsg(level, KERN_INFO "[" EXFAT_TAG_NAME "] " __VA_ARGS__)
+
+#define EXFAT_EMSG(...) EXFAT_EMSG_T(EXFAT_MSG_LV_ERR, __VA_ARGS__)
+#define EXFAT_IMSG(...) EXFAT_DMSG_T(EXFAT_MSG_LV_INFO, __VA_ARGS__)
+#define EXFAT_DMSG(...) EXFAT_DMSG_T(EXFAT_MSG_LV_DBG, __VA_ARGS__)
+#define EXFAT_MMSG(...) EXFAT_DMSG_T(EXFAT_MSG_LV_MORE, __VA_ARGS__)
+
+#define EMSG(...)
+#define IMSG(...)
+#define DMSG(...)
+#define MMSG(...)
+
+#define EMSG_VAR(exp)
+#define IMSG_VAR(exp)
+#define DMSG_VAR(exp)
+#define MMSG_VAR(exp)
+
+#ifdef CONFIG_EXFAT_DBG_MSG
+
+
+#if (EXFAT_MSG_LEVEL >= EXFAT_MSG_LV_ERR)
+#undef EMSG
+#undef EMSG_VAR
+#define EMSG(...)	EXFAT_EMSG(__VA_ARGS__)
+#define EMSG_VAR(exp)	exp
+#endif
+
+#if (EXFAT_MSG_LEVEL >= EXFAT_MSG_LV_INFO)
+#undef IMSG
+#undef IMSG_VAR
+#define IMSG(...)	EXFAT_IMSG(__VA_ARGS__)
+#define IMSG_VAR(exp)	exp
+#endif
+
+#if (EXFAT_MSG_LEVEL >= EXFAT_MSG_LV_DBG)
+#undef DMSG
+#undef DMSG_VAR
+#define DMSG(...)	EXFAT_DMSG(__VA_ARGS__)
+#define DMSG_VAR(exp)	exp
+#endif
+
+#if (EXFAT_MSG_LEVEL >= EXFAT_MSG_LV_MORE)
+#undef MMSG
+#undef MMSG_VAR
+#define MMSG(...)	EXFAT_MMSG(__VA_ARGS__)
+#define MMSG_VAR(exp)	exp
+#endif
+
+#endif /* CONFIG_EXFAT_DBG_MSG */
+
+#define ASSERT(expr)	{					\
+	if (!(expr)) {						\
+		pr_err("exFAT: Assertion failed! %s\n", #expr);	\
+		BUG_ON(1);					\
+	}							\
+}
+
+#endif /* !_EXFAT_H */
+
diff --git a/drivers/staging/exfat/exfat_blkdev.c b/drivers/staging/exfat/exfat_blkdev.c
deleted file mode 100644
index f086c75e7076..000000000000
--- a/drivers/staging/exfat/exfat_blkdev.c
+++ /dev/null
@@ -1,136 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
- */
-
-#include <linux/blkdev.h>
-#include <linux/buffer_head.h>
-#include <linux/fs.h>
-#include "exfat.h"
-
-void bdev_open(struct super_block *sb)
-{
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	if (p_bd->opened)
-		return;
-
-	p_bd->sector_size      = bdev_logical_block_size(sb->s_bdev);
-	p_bd->sector_size_bits = ilog2(p_bd->sector_size);
-	p_bd->sector_size_mask = p_bd->sector_size - 1;
-	p_bd->num_sectors      = i_size_read(sb->s_bdev->bd_inode) >>
-				 p_bd->sector_size_bits;
-	p_bd->opened = true;
-}
-
-void bdev_close(struct super_block *sb)
-{
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	p_bd->opened = false;
-}
-
-int bdev_read(struct super_block *sb, sector_t secno, struct buffer_head **bh,
-	      u32 num_secs, bool read)
-{
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-#ifdef CONFIG_EXFAT_KERNEL_DEBUG
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	long flags = sbi->debug_flags;
-
-	if (flags & EXFAT_DEBUGFLAGS_ERROR_RW)
-		return FFS_MEDIAERR;
-#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
-
-	if (!p_bd->opened)
-		return FFS_MEDIAERR;
-
-	if (*bh)
-		__brelse(*bh);
-
-	if (read)
-		*bh = __bread(sb->s_bdev, secno,
-			      num_secs << p_bd->sector_size_bits);
-	else
-		*bh = __getblk(sb->s_bdev, secno,
-			       num_secs << p_bd->sector_size_bits);
-
-	if (*bh)
-		return 0;
-
-	WARN(!p_fs->dev_ejected,
-	     "[EXFAT] No bh, device seems wrong or to be ejected.\n");
-
-	return FFS_MEDIAERR;
-}
-
-int bdev_write(struct super_block *sb, sector_t secno, struct buffer_head *bh,
-	       u32 num_secs, bool sync)
-{
-	s32 count;
-	struct buffer_head *bh2;
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-#ifdef CONFIG_EXFAT_KERNEL_DEBUG
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	long flags = sbi->debug_flags;
-
-	if (flags & EXFAT_DEBUGFLAGS_ERROR_RW)
-		return FFS_MEDIAERR;
-#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
-
-	if (!p_bd->opened)
-		return FFS_MEDIAERR;
-
-	if (secno == bh->b_blocknr) {
-		lock_buffer(bh);
-		set_buffer_uptodate(bh);
-		mark_buffer_dirty(bh);
-		unlock_buffer(bh);
-		if (sync && (sync_dirty_buffer(bh) != 0))
-			return FFS_MEDIAERR;
-	} else {
-		count = num_secs << p_bd->sector_size_bits;
-
-		bh2 = __getblk(sb->s_bdev, secno, count);
-		if (!bh2)
-			goto no_bh;
-
-		lock_buffer(bh2);
-		memcpy(bh2->b_data, bh->b_data, count);
-		set_buffer_uptodate(bh2);
-		mark_buffer_dirty(bh2);
-		unlock_buffer(bh2);
-		if (sync && (sync_dirty_buffer(bh2) != 0)) {
-			__brelse(bh2);
-			goto no_bh;
-		}
-		__brelse(bh2);
-	}
-
-	return 0;
-
-no_bh:
-	WARN(!p_fs->dev_ejected,
-	     "[EXFAT] No bh, device seems wrong or to be ejected.\n");
-
-	return FFS_MEDIAERR;
-}
-
-int bdev_sync(struct super_block *sb)
-{
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-#ifdef CONFIG_EXFAT_KERNEL_DEBUG
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	long flags = sbi->debug_flags;
-
-	if (flags & EXFAT_DEBUGFLAGS_ERROR_RW)
-		return FFS_MEDIAERR;
-#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
-
-	if (!p_bd->opened)
-		return FFS_MEDIAERR;
-
-	return sync_blockdev(sb->s_bdev);
-}
diff --git a/drivers/staging/exfat/exfat_cache.c b/drivers/staging/exfat/exfat_cache.c
deleted file mode 100644
index 1565ce65d39f..000000000000
--- a/drivers/staging/exfat/exfat_cache.c
+++ /dev/null
@@ -1,724 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
- */
-
-#include <linux/buffer_head.h>
-#include <linux/fs.h>
-#include <linux/mutex.h>
-#include "exfat.h"
-
-#define LOCKBIT		0x01
-#define DIRTYBIT	0x02
-
-/* Local variables */
-static DEFINE_SEMAPHORE(f_sem);
-static DEFINE_SEMAPHORE(b_sem);
-
-static struct buf_cache_t *FAT_cache_find(struct super_block *sb, sector_t sec)
-{
-	s32 off;
-	struct buf_cache_t *bp, *hp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	off = (sec +
-	       (sec >> p_fs->sectors_per_clu_bits)) & (FAT_CACHE_HASH_SIZE - 1);
-
-	hp = &p_fs->FAT_cache_hash_list[off];
-	for (bp = hp->hash_next; bp != hp; bp = bp->hash_next) {
-		if ((bp->drv == p_fs->drv) && (bp->sec == sec)) {
-			WARN(!bp->buf_bh,
-			     "[EXFAT] FAT_cache has no bh. It will make system panic.\n");
-
-			touch_buffer(bp->buf_bh);
-			return bp;
-		}
-	}
-	return NULL;
-}
-
-static void push_to_mru(struct buf_cache_t *bp, struct buf_cache_t *list)
-{
-	bp->next = list->next;
-	bp->prev = list;
-	list->next->prev = bp;
-	list->next = bp;
-}
-
-static void push_to_lru(struct buf_cache_t *bp, struct buf_cache_t *list)
-{
-	bp->prev = list->prev;
-	bp->next = list;
-	list->prev->next = bp;
-	list->prev = bp;
-}
-
-static void move_to_mru(struct buf_cache_t *bp, struct buf_cache_t *list)
-{
-	bp->prev->next = bp->next;
-	bp->next->prev = bp->prev;
-	push_to_mru(bp, list);
-}
-
-static void move_to_lru(struct buf_cache_t *bp, struct buf_cache_t *list)
-{
-	bp->prev->next = bp->next;
-	bp->next->prev = bp->prev;
-	push_to_lru(bp, list);
-}
-
-static struct buf_cache_t *FAT_cache_get(struct super_block *sb, sector_t sec)
-{
-	struct buf_cache_t *bp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	bp = p_fs->FAT_cache_lru_list.prev;
-
-	move_to_mru(bp, &p_fs->FAT_cache_lru_list);
-	return bp;
-}
-
-static void FAT_cache_insert_hash(struct super_block *sb,
-				  struct buf_cache_t *bp)
-{
-	s32 off;
-	struct buf_cache_t *hp;
-	struct fs_info_t *p_fs;
-
-	p_fs = &(EXFAT_SB(sb)->fs_info);
-	off = (bp->sec +
-	       (bp->sec >> p_fs->sectors_per_clu_bits)) &
-		(FAT_CACHE_HASH_SIZE - 1);
-
-	hp = &p_fs->FAT_cache_hash_list[off];
-	bp->hash_next = hp->hash_next;
-	bp->hash_prev = hp;
-	hp->hash_next->hash_prev = bp;
-	hp->hash_next = bp;
-}
-
-static void FAT_cache_remove_hash(struct buf_cache_t *bp)
-{
-	(bp->hash_prev)->hash_next = bp->hash_next;
-	(bp->hash_next)->hash_prev = bp->hash_prev;
-}
-
-static void buf_cache_insert_hash(struct super_block *sb,
-				  struct buf_cache_t *bp)
-{
-	s32 off;
-	struct buf_cache_t *hp;
-	struct fs_info_t *p_fs;
-
-	p_fs = &(EXFAT_SB(sb)->fs_info);
-	off = (bp->sec +
-	       (bp->sec >> p_fs->sectors_per_clu_bits)) &
-		(BUF_CACHE_HASH_SIZE - 1);
-
-	hp = &p_fs->buf_cache_hash_list[off];
-	bp->hash_next = hp->hash_next;
-	bp->hash_prev = hp;
-	hp->hash_next->hash_prev = bp;
-	hp->hash_next = bp;
-}
-
-static void buf_cache_remove_hash(struct buf_cache_t *bp)
-{
-	(bp->hash_prev)->hash_next = bp->hash_next;
-	(bp->hash_next)->hash_prev = bp->hash_prev;
-}
-
-void buf_init(struct super_block *sb)
-{
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	int i;
-
-	/* LRU list */
-	p_fs->FAT_cache_lru_list.next = &p_fs->FAT_cache_lru_list;
-	p_fs->FAT_cache_lru_list.prev = &p_fs->FAT_cache_lru_list;
-
-	for (i = 0; i < FAT_CACHE_SIZE; i++) {
-		p_fs->FAT_cache_array[i].drv = -1;
-		p_fs->FAT_cache_array[i].sec = ~0;
-		p_fs->FAT_cache_array[i].flag = 0;
-		p_fs->FAT_cache_array[i].buf_bh = NULL;
-		p_fs->FAT_cache_array[i].prev = NULL;
-		p_fs->FAT_cache_array[i].next = NULL;
-		push_to_mru(&p_fs->FAT_cache_array[i],
-			    &p_fs->FAT_cache_lru_list);
-	}
-
-	p_fs->buf_cache_lru_list.next = &p_fs->buf_cache_lru_list;
-	p_fs->buf_cache_lru_list.prev = &p_fs->buf_cache_lru_list;
-
-	for (i = 0; i < BUF_CACHE_SIZE; i++) {
-		p_fs->buf_cache_array[i].drv = -1;
-		p_fs->buf_cache_array[i].sec = ~0;
-		p_fs->buf_cache_array[i].flag = 0;
-		p_fs->buf_cache_array[i].buf_bh = NULL;
-		p_fs->buf_cache_array[i].prev = NULL;
-		p_fs->buf_cache_array[i].next = NULL;
-		push_to_mru(&p_fs->buf_cache_array[i],
-			    &p_fs->buf_cache_lru_list);
-	}
-
-	/* HASH list */
-	for (i = 0; i < FAT_CACHE_HASH_SIZE; i++) {
-		p_fs->FAT_cache_hash_list[i].drv = -1;
-		p_fs->FAT_cache_hash_list[i].sec = ~0;
-		p_fs->FAT_cache_hash_list[i].hash_next =
-			&p_fs->FAT_cache_hash_list[i];
-		p_fs->FAT_cache_hash_list[i].hash_prev =
-			&p_fs->FAT_cache_hash_list[i];
-	}
-
-	for (i = 0; i < FAT_CACHE_SIZE; i++)
-		FAT_cache_insert_hash(sb, &p_fs->FAT_cache_array[i]);
-
-	for (i = 0; i < BUF_CACHE_HASH_SIZE; i++) {
-		p_fs->buf_cache_hash_list[i].drv = -1;
-		p_fs->buf_cache_hash_list[i].sec = ~0;
-		p_fs->buf_cache_hash_list[i].hash_next =
-			&p_fs->buf_cache_hash_list[i];
-		p_fs->buf_cache_hash_list[i].hash_prev =
-			&p_fs->buf_cache_hash_list[i];
-	}
-
-	for (i = 0; i < BUF_CACHE_SIZE; i++)
-		buf_cache_insert_hash(sb, &p_fs->buf_cache_array[i]);
-}
-
-void buf_shutdown(struct super_block *sb)
-{
-}
-
-static int __FAT_read(struct super_block *sb, u32 loc, u32 *content)
-{
-	s32 off;
-	u32 _content;
-	sector_t sec;
-	u8 *fat_sector, *fat_entry;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	if (p_fs->vol_type == FAT12) {
-		sec = p_fs->FAT1_start_sector +
-			((loc + (loc >> 1)) >> p_bd->sector_size_bits);
-		off = (loc + (loc >> 1)) & p_bd->sector_size_mask;
-
-		if (off == (p_bd->sector_size - 1)) {
-			fat_sector = FAT_getblk(sb, sec);
-			if (!fat_sector)
-				return -1;
-
-			_content = (u32)fat_sector[off];
-
-			fat_sector = FAT_getblk(sb, ++sec);
-			if (!fat_sector)
-				return -1;
-
-			_content |= (u32)fat_sector[0] << 8;
-		} else {
-			fat_sector = FAT_getblk(sb, sec);
-			if (!fat_sector)
-				return -1;
-
-			fat_entry = &fat_sector[off];
-			_content = GET16(fat_entry);
-		}
-
-		if (loc & 1)
-			_content >>= 4;
-
-		_content &= 0x00000FFF;
-
-		if (_content >= CLUSTER_16(0x0FF8)) {
-			*content = CLUSTER_32(~0);
-			return 0;
-		}
-		*content = CLUSTER_32(_content);
-		return 0;
-	} else if (p_fs->vol_type == FAT16) {
-		sec = p_fs->FAT1_start_sector +
-			(loc >> (p_bd->sector_size_bits - 1));
-		off = (loc << 1) & p_bd->sector_size_mask;
-
-		fat_sector = FAT_getblk(sb, sec);
-		if (!fat_sector)
-			return -1;
-
-		fat_entry = &fat_sector[off];
-
-		_content = GET16_A(fat_entry);
-
-		_content &= 0x0000FFFF;
-
-		if (_content >= CLUSTER_16(0xFFF8)) {
-			*content = CLUSTER_32(~0);
-			return 0;
-		}
-		*content = CLUSTER_32(_content);
-		return 0;
-	} else if (p_fs->vol_type == FAT32) {
-		sec = p_fs->FAT1_start_sector +
-			(loc >> (p_bd->sector_size_bits - 2));
-		off = (loc << 2) & p_bd->sector_size_mask;
-
-		fat_sector = FAT_getblk(sb, sec);
-		if (!fat_sector)
-			return -1;
-
-		fat_entry = &fat_sector[off];
-
-		_content = GET32_A(fat_entry);
-
-		_content &= 0x0FFFFFFF;
-
-		if (_content >= CLUSTER_32(0x0FFFFFF8)) {
-			*content = CLUSTER_32(~0);
-			return 0;
-		}
-		*content = CLUSTER_32(_content);
-		return 0;
-	} else if (p_fs->vol_type == EXFAT) {
-		sec = p_fs->FAT1_start_sector +
-			(loc >> (p_bd->sector_size_bits - 2));
-		off = (loc << 2) & p_bd->sector_size_mask;
-
-		fat_sector = FAT_getblk(sb, sec);
-		if (!fat_sector)
-			return -1;
-
-		fat_entry = &fat_sector[off];
-		_content = GET32_A(fat_entry);
-
-		if (_content >= CLUSTER_32(0xFFFFFFF8)) {
-			*content = CLUSTER_32(~0);
-			return 0;
-		}
-		*content = CLUSTER_32(_content);
-		return 0;
-	}
-
-	/* Unknown volume type, throw in the towel and go home */
-	*content = CLUSTER_32(~0);
-	return 0;
-}
-
-/* in : sb, loc
- * out: content
- * returns 0 on success
- *            -1 on error
- */
-int FAT_read(struct super_block *sb, u32 loc, u32 *content)
-{
-	s32 ret;
-
-	down(&f_sem);
-	ret = __FAT_read(sb, loc, content);
-	up(&f_sem);
-
-	return ret;
-}
-
-static s32 __FAT_write(struct super_block *sb, u32 loc, u32 content)
-{
-	s32 off;
-	sector_t sec;
-	u8 *fat_sector, *fat_entry;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	if (p_fs->vol_type == FAT12) {
-		content &= 0x00000FFF;
-
-		sec = p_fs->FAT1_start_sector +
-			((loc + (loc >> 1)) >> p_bd->sector_size_bits);
-		off = (loc + (loc >> 1)) & p_bd->sector_size_mask;
-
-		fat_sector = FAT_getblk(sb, sec);
-		if (!fat_sector)
-			return -1;
-
-		if (loc & 1) { /* odd */
-			content <<= 4;
-
-			if (off == (p_bd->sector_size - 1)) {
-				fat_sector[off] = (u8)(content |
-						       (fat_sector[off] &
-							0x0F));
-				FAT_modify(sb, sec);
-
-				fat_sector = FAT_getblk(sb, ++sec);
-				if (!fat_sector)
-					return -1;
-
-				fat_sector[0] = (u8)(content >> 8);
-			} else {
-				fat_entry = &fat_sector[off];
-				content |= GET16(fat_entry) & 0x000F;
-
-				SET16(fat_entry, content);
-			}
-		} else { /* even */
-			fat_sector[off] = (u8)(content);
-
-			if (off == (p_bd->sector_size - 1)) {
-				fat_sector[off] = (u8)(content);
-				FAT_modify(sb, sec);
-
-				fat_sector = FAT_getblk(sb, ++sec);
-				if (!fat_sector)
-					return -1;
-				fat_sector[0] = (u8)((fat_sector[0] & 0xF0) |
-						     (content >> 8));
-			} else {
-				fat_entry = &fat_sector[off];
-				content |= GET16(fat_entry) & 0xF000;
-
-				SET16(fat_entry, content);
-			}
-		}
-	}
-
-	else if (p_fs->vol_type == FAT16) {
-		content &= 0x0000FFFF;
-
-		sec = p_fs->FAT1_start_sector + (loc >>
-						 (p_bd->sector_size_bits - 1));
-		off = (loc << 1) & p_bd->sector_size_mask;
-
-		fat_sector = FAT_getblk(sb, sec);
-		if (!fat_sector)
-			return -1;
-
-		fat_entry = &fat_sector[off];
-
-		SET16_A(fat_entry, content);
-	} else if (p_fs->vol_type == FAT32) {
-		content &= 0x0FFFFFFF;
-
-		sec = p_fs->FAT1_start_sector + (loc >>
-						 (p_bd->sector_size_bits - 2));
-		off = (loc << 2) & p_bd->sector_size_mask;
-
-		fat_sector = FAT_getblk(sb, sec);
-		if (!fat_sector)
-			return -1;
-
-		fat_entry = &fat_sector[off];
-
-		content |= GET32_A(fat_entry) & 0xF0000000;
-
-		SET32_A(fat_entry, content);
-	} else { /* p_fs->vol_type == EXFAT */
-		sec = p_fs->FAT1_start_sector + (loc >>
-						 (p_bd->sector_size_bits - 2));
-		off = (loc << 2) & p_bd->sector_size_mask;
-
-		fat_sector = FAT_getblk(sb, sec);
-		if (!fat_sector)
-			return -1;
-
-		fat_entry = &fat_sector[off];
-
-		SET32_A(fat_entry, content);
-	}
-
-	FAT_modify(sb, sec);
-	return 0;
-}
-
-int FAT_write(struct super_block *sb, u32 loc, u32 content)
-{
-	s32 ret;
-
-	down(&f_sem);
-	ret = __FAT_write(sb, loc, content);
-	up(&f_sem);
-
-	return ret;
-}
-
-u8 *FAT_getblk(struct super_block *sb, sector_t sec)
-{
-	struct buf_cache_t *bp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	bp = FAT_cache_find(sb, sec);
-	if (bp) {
-		move_to_mru(bp, &p_fs->FAT_cache_lru_list);
-		return bp->buf_bh->b_data;
-	}
-
-	bp = FAT_cache_get(sb, sec);
-
-	FAT_cache_remove_hash(bp);
-
-	bp->drv = p_fs->drv;
-	bp->sec = sec;
-	bp->flag = 0;
-
-	FAT_cache_insert_hash(sb, bp);
-
-	if (sector_read(sb, sec, &bp->buf_bh, 1) != FFS_SUCCESS) {
-		FAT_cache_remove_hash(bp);
-		bp->drv = -1;
-		bp->sec = ~0;
-		bp->flag = 0;
-		bp->buf_bh = NULL;
-
-		move_to_lru(bp, &p_fs->FAT_cache_lru_list);
-		return NULL;
-	}
-
-	return bp->buf_bh->b_data;
-}
-
-void FAT_modify(struct super_block *sb, sector_t sec)
-{
-	struct buf_cache_t *bp;
-
-	bp = FAT_cache_find(sb, sec);
-	if (bp)
-		sector_write(sb, sec, bp->buf_bh, 0);
-}
-
-void FAT_release_all(struct super_block *sb)
-{
-	struct buf_cache_t *bp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	down(&f_sem);
-
-	bp = p_fs->FAT_cache_lru_list.next;
-	while (bp != &p_fs->FAT_cache_lru_list) {
-		if (bp->drv == p_fs->drv) {
-			bp->drv = -1;
-			bp->sec = ~0;
-			bp->flag = 0;
-
-			if (bp->buf_bh) {
-				__brelse(bp->buf_bh);
-				bp->buf_bh = NULL;
-			}
-		}
-		bp = bp->next;
-	}
-
-	up(&f_sem);
-}
-
-void FAT_sync(struct super_block *sb)
-{
-	struct buf_cache_t *bp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	down(&f_sem);
-
-	bp = p_fs->FAT_cache_lru_list.next;
-	while (bp != &p_fs->FAT_cache_lru_list) {
-		if ((bp->drv == p_fs->drv) && (bp->flag & DIRTYBIT)) {
-			sync_dirty_buffer(bp->buf_bh);
-			bp->flag &= ~(DIRTYBIT);
-		}
-		bp = bp->next;
-	}
-
-	up(&f_sem);
-}
-
-static struct buf_cache_t *buf_cache_find(struct super_block *sb, sector_t sec)
-{
-	s32 off;
-	struct buf_cache_t *bp, *hp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	off = (sec + (sec >> p_fs->sectors_per_clu_bits)) &
-		(BUF_CACHE_HASH_SIZE - 1);
-
-	hp = &p_fs->buf_cache_hash_list[off];
-	for (bp = hp->hash_next; bp != hp; bp = bp->hash_next) {
-		if ((bp->drv == p_fs->drv) && (bp->sec == sec)) {
-			touch_buffer(bp->buf_bh);
-			return bp;
-		}
-	}
-	return NULL;
-}
-
-static struct buf_cache_t *buf_cache_get(struct super_block *sb, sector_t sec)
-{
-	struct buf_cache_t *bp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	bp = p_fs->buf_cache_lru_list.prev;
-	while (bp->flag & LOCKBIT)
-		bp = bp->prev;
-
-	move_to_mru(bp, &p_fs->buf_cache_lru_list);
-	return bp;
-}
-
-static u8 *__buf_getblk(struct super_block *sb, sector_t sec)
-{
-	struct buf_cache_t *bp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	bp = buf_cache_find(sb, sec);
-	if (bp) {
-		move_to_mru(bp, &p_fs->buf_cache_lru_list);
-		return bp->buf_bh->b_data;
-	}
-
-	bp = buf_cache_get(sb, sec);
-
-	buf_cache_remove_hash(bp);
-
-	bp->drv = p_fs->drv;
-	bp->sec = sec;
-	bp->flag = 0;
-
-	buf_cache_insert_hash(sb, bp);
-
-	if (sector_read(sb, sec, &bp->buf_bh, 1) != FFS_SUCCESS) {
-		buf_cache_remove_hash(bp);
-		bp->drv = -1;
-		bp->sec = ~0;
-		bp->flag = 0;
-		bp->buf_bh = NULL;
-
-		move_to_lru(bp, &p_fs->buf_cache_lru_list);
-		return NULL;
-	}
-
-	return bp->buf_bh->b_data;
-}
-
-u8 *buf_getblk(struct super_block *sb, sector_t sec)
-{
-	u8 *buf;
-
-	down(&b_sem);
-	buf = __buf_getblk(sb, sec);
-	up(&b_sem);
-
-	return buf;
-}
-
-void buf_modify(struct super_block *sb, sector_t sec)
-{
-	struct buf_cache_t *bp;
-
-	down(&b_sem);
-
-	bp = buf_cache_find(sb, sec);
-	if (likely(bp))
-		sector_write(sb, sec, bp->buf_bh, 0);
-
-	WARN(!bp, "[EXFAT] failed to find buffer_cache(sector:%llu).\n",
-	     (unsigned long long)sec);
-
-	up(&b_sem);
-}
-
-void buf_lock(struct super_block *sb, sector_t sec)
-{
-	struct buf_cache_t *bp;
-
-	down(&b_sem);
-
-	bp = buf_cache_find(sb, sec);
-	if (likely(bp))
-		bp->flag |= LOCKBIT;
-
-	WARN(!bp, "[EXFAT] failed to find buffer_cache(sector:%llu).\n",
-	     (unsigned long long)sec);
-
-	up(&b_sem);
-}
-
-void buf_unlock(struct super_block *sb, sector_t sec)
-{
-	struct buf_cache_t *bp;
-
-	down(&b_sem);
-
-	bp = buf_cache_find(sb, sec);
-	if (likely(bp))
-		bp->flag &= ~(LOCKBIT);
-
-	WARN(!bp, "[EXFAT] failed to find buffer_cache(sector:%llu).\n",
-	     (unsigned long long)sec);
-
-	up(&b_sem);
-}
-
-void buf_release(struct super_block *sb, sector_t sec)
-{
-	struct buf_cache_t *bp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	down(&b_sem);
-
-	bp = buf_cache_find(sb, sec);
-	if (likely(bp)) {
-		bp->drv = -1;
-		bp->sec = ~0;
-		bp->flag = 0;
-
-		if (bp->buf_bh) {
-			__brelse(bp->buf_bh);
-			bp->buf_bh = NULL;
-		}
-
-		move_to_lru(bp, &p_fs->buf_cache_lru_list);
-	}
-
-	up(&b_sem);
-}
-
-void buf_release_all(struct super_block *sb)
-{
-	struct buf_cache_t *bp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	down(&b_sem);
-
-	bp = p_fs->buf_cache_lru_list.next;
-	while (bp != &p_fs->buf_cache_lru_list) {
-		if (bp->drv == p_fs->drv) {
-			bp->drv = -1;
-			bp->sec = ~0;
-			bp->flag = 0;
-
-			if (bp->buf_bh) {
-				__brelse(bp->buf_bh);
-				bp->buf_bh = NULL;
-			}
-		}
-		bp = bp->next;
-	}
-
-	up(&b_sem);
-}
-
-void buf_sync(struct super_block *sb)
-{
-	struct buf_cache_t *bp;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	down(&b_sem);
-
-	bp = p_fs->buf_cache_lru_list.next;
-	while (bp != &p_fs->buf_cache_lru_list) {
-		if ((bp->drv == p_fs->drv) && (bp->flag & DIRTYBIT)) {
-			sync_dirty_buffer(bp->buf_bh);
-			bp->flag &= ~(DIRTYBIT);
-		}
-		bp = bp->next;
-	}
-
-	up(&b_sem);
-}
diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
deleted file mode 100644
index b3e9cf725cf5..000000000000
--- a/drivers/staging/exfat/exfat_core.c
+++ /dev/null
@@ -1,3701 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
- */
-
-#include <linux/types.h>
-#include <linux/buffer_head.h>
-#include <linux/fs.h>
-#include <linux/mutex.h>
-#include <linux/blkdev.h>
-#include <linux/slab.h>
-#include "exfat.h"
-
-static void __set_sb_dirty(struct super_block *sb)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-
-	sbi->s_dirt = 1;
-}
-
-static u8 name_buf[MAX_PATH_LENGTH * MAX_CHARSET_SIZE];
-
-static char *reserved_names[] = {
-	"AUX     ", "CON     ", "NUL     ", "PRN     ",
-	"COM1    ", "COM2    ", "COM3    ", "COM4    ",
-	"COM5    ", "COM6    ", "COM7    ", "COM8    ", "COM9    ",
-	"LPT1    ", "LPT2    ", "LPT3    ", "LPT4    ",
-	"LPT5    ", "LPT6    ", "LPT7    ", "LPT8    ", "LPT9    ",
-	NULL
-};
-
-static u8 free_bit[] = {
-	0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, /*   0 ~  19 */
-	0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, /*  20 ~  39 */
-	0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, /*  40 ~  59 */
-	0, 1, 0, 6, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, /*  60 ~  79 */
-	0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, 0, 1, 0, 2, /*  80 ~  99 */
-	0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, /* 100 ~ 119 */
-	0, 1, 0, 2, 0, 1, 0, 7, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, /* 120 ~ 139 */
-	0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 5, /* 140 ~ 159 */
-	0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, /* 160 ~ 179 */
-	0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 6, 0, 1, 0, 2, 0, 1, 0, 3, /* 180 ~ 199 */
-	0, 1, 0, 2, 0, 1, 0, 4, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, /* 200 ~ 219 */
-	0, 1, 0, 5, 0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0, 4, /* 220 ~ 239 */
-	0, 1, 0, 2, 0, 1, 0, 3, 0, 1, 0, 2, 0, 1, 0                 /* 240 ~ 254 */
-};
-
-static u8 used_bit[] = {
-	0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, /*   0 ~  19 */
-	2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1, 2, 2, 3, 2, 3, 3, 4, /*  20 ~  39 */
-	2, 3, 3, 4, 3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, /*  40 ~  59 */
-	4, 5, 5, 6, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, /*  60 ~  79 */
-	2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 2, 3, 3, 4, /*  80 ~  99 */
-	3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, /* 100 ~ 119 */
-	4, 5, 5, 6, 5, 6, 6, 7, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, /* 120 ~ 139 */
-	3, 4, 4, 5, 2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, /* 140 ~ 159 */
-	2, 3, 3, 4, 3, 4, 4, 5, 3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, /* 160 ~ 179 */
-	4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, 2, 3, 3, 4, 3, 4, 4, 5, /* 180 ~ 199 */
-	3, 4, 4, 5, 4, 5, 5, 6, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, /* 200 ~ 219 */
-	5, 6, 6, 7, 3, 4, 4, 5, 4, 5, 5, 6, 4, 5, 5, 6, 5, 6, 6, 7, /* 220 ~ 239 */
-	4, 5, 5, 6, 5, 6, 6, 7, 5, 6, 6, 7, 6, 7, 7, 8              /* 240 ~ 255 */
-};
-
-#define BITMAP_LOC(v)           ((v) >> 3)
-#define BITMAP_SHIFT(v)         ((v) & 0x07)
-
-static inline s32 exfat_bitmap_test(u8 *bitmap, int i)
-{
-	u8 data;
-
-	data = bitmap[BITMAP_LOC(i)];
-	if ((data >> BITMAP_SHIFT(i)) & 0x01)
-		return 1;
-	return 0;
-}
-
-static inline void exfat_bitmap_set(u8 *bitmap, int i)
-{
-	bitmap[BITMAP_LOC(i)] |= (0x01 << BITMAP_SHIFT(i));
-}
-
-static inline void exfat_bitmap_clear(u8 *bitmap, int i)
-{
-	bitmap[BITMAP_LOC(i)] &= ~(0x01 << BITMAP_SHIFT(i));
-}
-
-/*
- *  File System Management Functions
- */
-
-void fs_set_vol_flags(struct super_block *sb, u32 new_flag)
-{
-	struct pbr_sector_t *p_pbr;
-	struct bpbex_t *p_bpb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if (p_fs->vol_flag == new_flag)
-		return;
-
-	p_fs->vol_flag = new_flag;
-
-	if (p_fs->vol_type == EXFAT) {
-		if (!p_fs->pbr_bh) {
-			if (sector_read(sb, p_fs->PBR_sector,
-					&p_fs->pbr_bh, 1) != FFS_SUCCESS)
-				return;
-		}
-
-		p_pbr = (struct pbr_sector_t *)p_fs->pbr_bh->b_data;
-		p_bpb = (struct bpbex_t *)p_pbr->bpb;
-		SET16(p_bpb->vol_flags, (u16)new_flag);
-
-		/* XXX duyoung
-		 * what can we do here? (cuz fs_set_vol_flags() is void)
-		 */
-		if ((new_flag == VOL_DIRTY) && (!buffer_dirty(p_fs->pbr_bh)))
-			sector_write(sb, p_fs->PBR_sector, p_fs->pbr_bh, 1);
-		else
-			sector_write(sb, p_fs->PBR_sector, p_fs->pbr_bh, 0);
-	}
-}
-
-void fs_error(struct super_block *sb)
-{
-	struct exfat_mount_options *opts = &EXFAT_SB(sb)->options;
-
-	if (opts->errors == EXFAT_ERRORS_PANIC) {
-		panic("[EXFAT] Filesystem panic from previous error\n");
-	} else if ((opts->errors == EXFAT_ERRORS_RO) && !sb_rdonly(sb)) {
-		sb->s_flags |= SB_RDONLY;
-		pr_err("[EXFAT] Filesystem has been set read-only\n");
-	}
-}
-
-/*
- *  Cluster Management Functions
- */
-
-s32 clear_cluster(struct super_block *sb, u32 clu)
-{
-	sector_t s, n;
-	s32 ret = FFS_SUCCESS;
-	struct buffer_head *tmp_bh = NULL;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	if (clu == CLUSTER_32(0)) { /* FAT16 root_dir */
-		s = p_fs->root_start_sector;
-		n = p_fs->data_start_sector;
-	} else {
-		s = START_SECTOR(clu);
-		n = s + p_fs->sectors_per_clu;
-	}
-
-	for (; s < n; s++) {
-		ret = sector_read(sb, s, &tmp_bh, 0);
-		if (ret != FFS_SUCCESS)
-			return ret;
-
-		memset((char *)tmp_bh->b_data, 0x0, p_bd->sector_size);
-		ret = sector_write(sb, s, tmp_bh, 0);
-		if (ret != FFS_SUCCESS)
-			break;
-	}
-
-	brelse(tmp_bh);
-	return ret;
-}
-
-s32 fat_alloc_cluster(struct super_block *sb, s32 num_alloc,
-		      struct chain_t *p_chain)
-{
-	int i, num_clusters = 0;
-	u32 new_clu, last_clu = CLUSTER_32(~0), read_clu;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	new_clu = p_chain->dir;
-	if (new_clu == CLUSTER_32(~0))
-		new_clu = p_fs->clu_srch_ptr;
-	else if (new_clu >= p_fs->num_clusters)
-		new_clu = 2;
-
-	__set_sb_dirty(sb);
-
-	p_chain->dir = CLUSTER_32(~0);
-
-	for (i = 2; i < p_fs->num_clusters; i++) {
-		if (FAT_read(sb, new_clu, &read_clu) != 0)
-			return -1;
-
-		if (read_clu == CLUSTER_32(0)) {
-			if (FAT_write(sb, new_clu, CLUSTER_32(~0)) < 0)
-				return -1;
-			num_clusters++;
-
-			if (p_chain->dir == CLUSTER_32(~0)) {
-				p_chain->dir = new_clu;
-			} else {
-				if (FAT_write(sb, last_clu, new_clu) < 0)
-					return -1;
-			}
-
-			last_clu = new_clu;
-
-			if ((--num_alloc) == 0) {
-				p_fs->clu_srch_ptr = new_clu;
-				if (p_fs->used_clusters != UINT_MAX)
-					p_fs->used_clusters += num_clusters;
-
-				return num_clusters;
-			}
-		}
-		if ((++new_clu) >= p_fs->num_clusters)
-			new_clu = 2;
-	}
-
-	p_fs->clu_srch_ptr = new_clu;
-	if (p_fs->used_clusters != UINT_MAX)
-		p_fs->used_clusters += num_clusters;
-
-	return num_clusters;
-}
-
-s32 exfat_alloc_cluster(struct super_block *sb, s32 num_alloc,
-			struct chain_t *p_chain)
-{
-	s32 num_clusters = 0;
-	u32 hint_clu, new_clu, last_clu = CLUSTER_32(~0);
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	hint_clu = p_chain->dir;
-	if (hint_clu == CLUSTER_32(~0)) {
-		hint_clu = test_alloc_bitmap(sb, p_fs->clu_srch_ptr - 2);
-		if (hint_clu == CLUSTER_32(~0))
-			return 0;
-	} else if (hint_clu >= p_fs->num_clusters) {
-		hint_clu = 2;
-		p_chain->flags = 0x01;
-	}
-
-	__set_sb_dirty(sb);
-
-	p_chain->dir = CLUSTER_32(~0);
-
-	while ((new_clu = test_alloc_bitmap(sb, hint_clu - 2)) != CLUSTER_32(~0)) {
-		if (new_clu != hint_clu) {
-			if (p_chain->flags == 0x03) {
-				exfat_chain_cont_cluster(sb, p_chain->dir,
-							 num_clusters);
-				p_chain->flags = 0x01;
-			}
-		}
-
-		if (set_alloc_bitmap(sb, new_clu - 2) != FFS_SUCCESS)
-			return -1;
-
-		num_clusters++;
-
-		if (p_chain->flags == 0x01) {
-			if (FAT_write(sb, new_clu, CLUSTER_32(~0)) < 0)
-				return -1;
-		}
-
-		if (p_chain->dir == CLUSTER_32(~0)) {
-			p_chain->dir = new_clu;
-		} else {
-			if (p_chain->flags == 0x01) {
-				if (FAT_write(sb, last_clu, new_clu) < 0)
-					return -1;
-			}
-		}
-		last_clu = new_clu;
-
-		if ((--num_alloc) == 0) {
-			p_fs->clu_srch_ptr = hint_clu;
-			if (p_fs->used_clusters != UINT_MAX)
-				p_fs->used_clusters += num_clusters;
-
-			p_chain->size += num_clusters;
-			return num_clusters;
-		}
-
-		hint_clu = new_clu + 1;
-		if (hint_clu >= p_fs->num_clusters) {
-			hint_clu = 2;
-
-			if (p_chain->flags == 0x03) {
-				exfat_chain_cont_cluster(sb, p_chain->dir,
-							 num_clusters);
-				p_chain->flags = 0x01;
-			}
-		}
-	}
-
-	p_fs->clu_srch_ptr = hint_clu;
-	if (p_fs->used_clusters != UINT_MAX)
-		p_fs->used_clusters += num_clusters;
-
-	p_chain->size += num_clusters;
-	return num_clusters;
-}
-
-void fat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
-		      s32 do_relse)
-{
-	s32 num_clusters = 0;
-	u32 clu, prev;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	int i;
-	sector_t sector;
-
-	if ((p_chain->dir == CLUSTER_32(0)) || (p_chain->dir == CLUSTER_32(~0)))
-		return;
-	__set_sb_dirty(sb);
-	clu = p_chain->dir;
-
-	if (p_chain->size <= 0)
-		return;
-
-	do {
-		if (p_fs->dev_ejected)
-			break;
-
-		if (do_relse) {
-			sector = START_SECTOR(clu);
-			for (i = 0; i < p_fs->sectors_per_clu; i++)
-				buf_release(sb, sector + i);
-		}
-
-		prev = clu;
-		if (FAT_read(sb, clu, &clu) == -1)
-			break;
-
-		if (FAT_write(sb, prev, CLUSTER_32(0)) < 0)
-			break;
-		num_clusters++;
-
-	} while (clu != CLUSTER_32(~0));
-
-	if (p_fs->used_clusters != UINT_MAX)
-		p_fs->used_clusters -= num_clusters;
-}
-
-void exfat_free_cluster(struct super_block *sb, struct chain_t *p_chain,
-			s32 do_relse)
-{
-	s32 num_clusters = 0;
-	u32 clu;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	int i;
-	sector_t sector;
-
-	if ((p_chain->dir == CLUSTER_32(0)) || (p_chain->dir == CLUSTER_32(~0)))
-		return;
-
-	if (p_chain->size <= 0) {
-		pr_err("[EXFAT] free_cluster : skip free-req clu:%u, because of zero-size truncation\n",
-		       p_chain->dir);
-		return;
-	}
-
-	__set_sb_dirty(sb);
-	clu = p_chain->dir;
-
-	if (p_chain->flags == 0x03) {
-		do {
-			if (do_relse) {
-				sector = START_SECTOR(clu);
-				for (i = 0; i < p_fs->sectors_per_clu; i++)
-					buf_release(sb, sector + i);
-			}
-
-			if (clr_alloc_bitmap(sb, clu - 2) != FFS_SUCCESS)
-				break;
-			clu++;
-
-			num_clusters++;
-		} while (num_clusters < p_chain->size);
-	} else {
-		do {
-			if (p_fs->dev_ejected)
-				break;
-
-			if (do_relse) {
-				sector = START_SECTOR(clu);
-				for (i = 0; i < p_fs->sectors_per_clu; i++)
-					buf_release(sb, sector + i);
-			}
-
-			if (clr_alloc_bitmap(sb, clu - 2) != FFS_SUCCESS)
-				break;
-
-			if (FAT_read(sb, clu, &clu) == -1)
-				break;
-			num_clusters++;
-		} while ((clu != CLUSTER_32(0)) && (clu != CLUSTER_32(~0)));
-	}
-
-	if (p_fs->used_clusters != UINT_MAX)
-		p_fs->used_clusters -= num_clusters;
-}
-
-u32 find_last_cluster(struct super_block *sb, struct chain_t *p_chain)
-{
-	u32 clu, next;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	clu = p_chain->dir;
-
-	if (p_chain->flags == 0x03) {
-		clu += p_chain->size - 1;
-	} else {
-		while ((FAT_read(sb, clu, &next) == 0) &&
-		       (next != CLUSTER_32(~0))) {
-			if (p_fs->dev_ejected)
-				break;
-			clu = next;
-		}
-	}
-
-	return clu;
-}
-
-s32 count_num_clusters(struct super_block *sb, struct chain_t *p_chain)
-{
-	int i, count = 0;
-	u32 clu;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if ((p_chain->dir == CLUSTER_32(0)) || (p_chain->dir == CLUSTER_32(~0)))
-		return 0;
-
-	clu = p_chain->dir;
-
-	if (p_chain->flags == 0x03) {
-		count = p_chain->size;
-	} else {
-		for (i = 2; i < p_fs->num_clusters; i++) {
-			count++;
-			if (FAT_read(sb, clu, &clu) != 0)
-				return 0;
-			if (clu == CLUSTER_32(~0))
-				break;
-		}
-	}
-
-	return count;
-}
-
-s32 fat_count_used_clusters(struct super_block *sb)
-{
-	int i, count = 0;
-	u32 clu;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	for (i = 2; i < p_fs->num_clusters; i++) {
-		if (FAT_read(sb, i, &clu) != 0)
-			break;
-		if (clu != CLUSTER_32(0))
-			count++;
-	}
-
-	return count;
-}
-
-s32 exfat_count_used_clusters(struct super_block *sb)
-{
-	int i, map_i, map_b, count = 0;
-	u8 k;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	map_i = map_b = 0;
-
-	for (i = 2; i < p_fs->num_clusters; i += 8) {
-		k = *(((u8 *)p_fs->vol_amap[map_i]->b_data) + map_b);
-		count += used_bit[k];
-
-		if ((++map_b) >= p_bd->sector_size) {
-			map_i++;
-			map_b = 0;
-		}
-	}
-
-	return count;
-}
-
-void exfat_chain_cont_cluster(struct super_block *sb, u32 chain, s32 len)
-{
-	if (len == 0)
-		return;
-
-	while (len > 1) {
-		if (FAT_write(sb, chain, chain + 1) < 0)
-			break;
-		chain++;
-		len--;
-	}
-	FAT_write(sb, chain, CLUSTER_32(~0));
-}
-
-/*
- *  Allocation Bitmap Management Functions
- */
-
-s32 load_alloc_bitmap(struct super_block *sb)
-{
-	int i, j, ret;
-	u32 map_size;
-	u32 type;
-	sector_t sector;
-	struct chain_t clu;
-	struct bmap_dentry_t *ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	clu.dir = p_fs->root_dir;
-	clu.flags = 0x01;
-
-	while (clu.dir != CLUSTER_32(~0)) {
-		if (p_fs->dev_ejected)
-			break;
-
-		for (i = 0; i < p_fs->dentries_per_clu; i++) {
-			ep = (struct bmap_dentry_t *)get_entry_in_dir(sb, &clu,
-								      i, NULL);
-			if (!ep)
-				return FFS_MEDIAERR;
-
-			type = p_fs->fs_func->get_entry_type((struct dentry_t *)ep);
-
-			if (type == TYPE_UNUSED)
-				break;
-			if (type != TYPE_BITMAP)
-				continue;
-
-			if (ep->flags == 0x0) {
-				p_fs->map_clu  = GET32_A(ep->start_clu);
-				map_size = (u32)GET64_A(ep->size);
-
-				p_fs->map_sectors = ((map_size - 1) >> p_bd->sector_size_bits) + 1;
-
-				p_fs->vol_amap = kmalloc_array(p_fs->map_sectors,
-							       sizeof(struct buffer_head *),
-							       GFP_KERNEL);
-				if (!p_fs->vol_amap)
-					return FFS_MEMORYERR;
-
-				sector = START_SECTOR(p_fs->map_clu);
-
-				for (j = 0; j < p_fs->map_sectors; j++) {
-					p_fs->vol_amap[j] = NULL;
-					ret = sector_read(sb, sector + j, &(p_fs->vol_amap[j]), 1);
-					if (ret != FFS_SUCCESS) {
-						/*  release all buffers and free vol_amap */
-						i = 0;
-						while (i < j)
-							brelse(p_fs->vol_amap[i++]);
-
-						kfree(p_fs->vol_amap);
-						p_fs->vol_amap = NULL;
-						return ret;
-					}
-				}
-
-				p_fs->pbr_bh = NULL;
-				return FFS_SUCCESS;
-			}
-		}
-
-		if (FAT_read(sb, clu.dir, &clu.dir) != 0)
-			return FFS_MEDIAERR;
-	}
-
-	return FFS_FORMATERR;
-}
-
-void free_alloc_bitmap(struct super_block *sb)
-{
-	int i;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	brelse(p_fs->pbr_bh);
-
-	for (i = 0; i < p_fs->map_sectors; i++)
-		__brelse(p_fs->vol_amap[i]);
-
-	kfree(p_fs->vol_amap);
-	p_fs->vol_amap = NULL;
-}
-
-s32 set_alloc_bitmap(struct super_block *sb, u32 clu)
-{
-	int i, b;
-	sector_t sector;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	i = clu >> (p_bd->sector_size_bits + 3);
-	b = clu & ((p_bd->sector_size << 3) - 1);
-
-	sector = START_SECTOR(p_fs->map_clu) + i;
-
-	exfat_bitmap_set((u8 *)p_fs->vol_amap[i]->b_data, b);
-
-	return sector_write(sb, sector, p_fs->vol_amap[i], 0);
-}
-
-s32 clr_alloc_bitmap(struct super_block *sb, u32 clu)
-{
-	int i, b;
-	sector_t sector;
-#ifdef CONFIG_EXFAT_DISCARD
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct exfat_mount_options *opts = &sbi->options;
-	int ret;
-#endif /* CONFIG_EXFAT_DISCARD */
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	i = clu >> (p_bd->sector_size_bits + 3);
-	b = clu & ((p_bd->sector_size << 3) - 1);
-
-	sector = START_SECTOR(p_fs->map_clu) + i;
-
-	exfat_bitmap_clear((u8 *)p_fs->vol_amap[i]->b_data, b);
-
-	return sector_write(sb, sector, p_fs->vol_amap[i], 0);
-
-#ifdef CONFIG_EXFAT_DISCARD
-	if (opts->discard) {
-		ret = sb_issue_discard(sb, START_SECTOR(clu),
-				       (1 << p_fs->sectors_per_clu_bits),
-				       GFP_NOFS, 0);
-		if (ret == -EOPNOTSUPP) {
-			pr_warn("discard not supported by device, disabling");
-			opts->discard = 0;
-		}
-	}
-#endif /* CONFIG_EXFAT_DISCARD */
-}
-
-u32 test_alloc_bitmap(struct super_block *sb, u32 clu)
-{
-	int i, map_i, map_b;
-	u32 clu_base, clu_free;
-	u8 k, clu_mask;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	clu_base = (clu & ~(0x7)) + 2;
-	clu_mask = (1 << (clu - clu_base + 2)) - 1;
-
-	map_i = clu >> (p_bd->sector_size_bits + 3);
-	map_b = (clu >> 3) & p_bd->sector_size_mask;
-
-	for (i = 2; i < p_fs->num_clusters; i += 8) {
-		k = *(((u8 *)p_fs->vol_amap[map_i]->b_data) + map_b);
-		if (clu_mask > 0) {
-			k |= clu_mask;
-			clu_mask = 0;
-		}
-		if (k < 0xFF) {
-			clu_free = clu_base + free_bit[k];
-			if (clu_free < p_fs->num_clusters)
-				return clu_free;
-		}
-		clu_base += 8;
-
-		if (((++map_b) >= p_bd->sector_size) ||
-		    (clu_base >= p_fs->num_clusters)) {
-			if ((++map_i) >= p_fs->map_sectors) {
-				clu_base = 2;
-				map_i = 0;
-			}
-			map_b = 0;
-		}
-	}
-
-	return CLUSTER_32(~0);
-}
-
-void sync_alloc_bitmap(struct super_block *sb)
-{
-	int i;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if (!p_fs->vol_amap)
-		return;
-
-	for (i = 0; i < p_fs->map_sectors; i++)
-		sync_dirty_buffer(p_fs->vol_amap[i]);
-}
-
-/*
- *  Upcase table Management Functions
- */
-static s32 __load_upcase_table(struct super_block *sb, sector_t sector,
-			       u32 num_sectors, u32 utbl_checksum)
-{
-	int i, ret = FFS_ERROR;
-	u32 j;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-	struct buffer_head *tmp_bh = NULL;
-	sector_t end_sector = num_sectors + sector;
-
-	bool	skip = false;
-	u32	index = 0;
-	u16	uni = 0;
-	u16 **upcase_table;
-
-	u32 checksum = 0;
-
-	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
-						GFP_KERNEL);
-	if (!upcase_table)
-		return FFS_MEMORYERR;
-	memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
-
-	while (sector < end_sector) {
-		ret = sector_read(sb, sector, &tmp_bh, 1);
-		if (ret != FFS_SUCCESS) {
-			pr_debug("sector read (0x%llX)fail\n",
-				 (unsigned long long)sector);
-			goto error;
-		}
-		sector++;
-
-		for (i = 0; i < p_bd->sector_size && index <= 0xFFFF; i += 2) {
-			uni = GET16(((u8 *)tmp_bh->b_data) + i);
-
-			checksum = ((checksum & 1) ? 0x80000000 : 0) +
-				   (checksum >> 1) + *(((u8 *)tmp_bh->b_data) +
-						       i);
-			checksum = ((checksum & 1) ? 0x80000000 : 0) +
-				   (checksum >> 1) + *(((u8 *)tmp_bh->b_data) +
-						       (i + 1));
-
-			if (skip) {
-				pr_debug("skip from 0x%X ", index);
-				index += uni;
-				pr_debug("to 0x%X (amount of 0x%X)\n",
-					 index, uni);
-				skip = false;
-			} else if (uni == index) {
-				index++;
-			} else if (uni == 0xFFFF) {
-				skip = true;
-			} else { /* uni != index , uni != 0xFFFF */
-				u16 col_index = get_col_index(index);
-
-				if (!upcase_table[col_index]) {
-					pr_debug("alloc = 0x%X\n", col_index);
-					upcase_table[col_index] = kmalloc_array(UTBL_ROW_COUNT,
-						sizeof(u16), GFP_KERNEL);
-					if (!upcase_table[col_index]) {
-						ret = FFS_MEMORYERR;
-						goto error;
-					}
-
-					for (j = 0; j < UTBL_ROW_COUNT; j++)
-						upcase_table[col_index][j] = (col_index << LOW_INDEX_BIT) | j;
-				}
-
-				upcase_table[col_index][get_row_index(index)] = uni;
-				index++;
-			}
-		}
-	}
-	if (index >= 0xFFFF && utbl_checksum == checksum) {
-		if (tmp_bh)
-			brelse(tmp_bh);
-		return FFS_SUCCESS;
-	}
-	ret = FFS_ERROR;
-error:
-	if (tmp_bh)
-		brelse(tmp_bh);
-	free_upcase_table(sb);
-	return ret;
-}
-
-static s32 __load_default_upcase_table(struct super_block *sb)
-{
-	int i, ret = FFS_ERROR;
-	u32 j;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	bool	skip = false;
-	u32	index = 0;
-	u16	uni = 0;
-	u16 **upcase_table;
-
-	upcase_table = p_fs->vol_utbl = kmalloc(UTBL_COL_COUNT * sizeof(u16 *),
-						GFP_KERNEL);
-	if (!upcase_table)
-		return FFS_MEMORYERR;
-	memset(upcase_table, 0, UTBL_COL_COUNT * sizeof(u16 *));
-
-	for (i = 0; index <= 0xFFFF && i < NUM_UPCASE * 2; i += 2) {
-		uni = GET16(uni_upcase + i);
-		if (skip) {
-			pr_debug("skip from 0x%X ", index);
-			index += uni;
-			pr_debug("to 0x%X (amount of 0x%X)\n", index, uni);
-			skip = false;
-		} else if (uni == index) {
-			index++;
-		} else if (uni == 0xFFFF) {
-			skip = true;
-		} else { /* uni != index , uni != 0xFFFF */
-			u16 col_index = get_col_index(index);
-
-			if (!upcase_table[col_index]) {
-				pr_debug("alloc = 0x%X\n", col_index);
-				upcase_table[col_index] = kmalloc_array(UTBL_ROW_COUNT,
-									sizeof(u16),
-									GFP_KERNEL);
-				if (!upcase_table[col_index]) {
-					ret = FFS_MEMORYERR;
-					goto error;
-				}
-
-				for (j = 0; j < UTBL_ROW_COUNT; j++)
-					upcase_table[col_index][j] = (col_index << LOW_INDEX_BIT) | j;
-			}
-
-			upcase_table[col_index][get_row_index(index)] = uni;
-			index++;
-		}
-	}
-
-	if (index >= 0xFFFF)
-		return FFS_SUCCESS;
-
-error:
-	/* FATAL error: default upcase table has error */
-	free_upcase_table(sb);
-	return ret;
-}
-
-s32 load_upcase_table(struct super_block *sb)
-{
-	int i;
-	u32 tbl_clu, tbl_size;
-	sector_t sector;
-	u32 type, num_sectors;
-	struct chain_t clu;
-	struct case_dentry_t *ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	clu.dir = p_fs->root_dir;
-	clu.flags = 0x01;
-
-	if (p_fs->dev_ejected)
-		return FFS_MEDIAERR;
-
-	while (clu.dir != CLUSTER_32(~0)) {
-		for (i = 0; i < p_fs->dentries_per_clu; i++) {
-			ep = (struct case_dentry_t *)get_entry_in_dir(sb, &clu,
-								      i, NULL);
-			if (!ep)
-				return FFS_MEDIAERR;
-
-			type = p_fs->fs_func->get_entry_type((struct dentry_t *)ep);
-
-			if (type == TYPE_UNUSED)
-				break;
-			if (type != TYPE_UPCASE)
-				continue;
-
-			tbl_clu  = GET32_A(ep->start_clu);
-			tbl_size = (u32)GET64_A(ep->size);
-
-			sector = START_SECTOR(tbl_clu);
-			num_sectors = ((tbl_size - 1) >> p_bd->sector_size_bits) + 1;
-			if (__load_upcase_table(sb, sector, num_sectors,
-						GET32_A(ep->checksum)) != FFS_SUCCESS)
-				break;
-			return FFS_SUCCESS;
-		}
-		if (FAT_read(sb, clu.dir, &clu.dir) != 0)
-			return FFS_MEDIAERR;
-	}
-	/* load default upcase table */
-	return __load_default_upcase_table(sb);
-}
-
-void free_upcase_table(struct super_block *sb)
-{
-	u32 i;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	u16 **upcase_table;
-
-	upcase_table = p_fs->vol_utbl;
-	for (i = 0; i < UTBL_COL_COUNT; i++)
-		kfree(upcase_table[i]);
-
-	kfree(p_fs->vol_utbl);
-	p_fs->vol_utbl = NULL;
-}
-
-/*
- *  Directory Entry Management Functions
- */
-
-u32 fat_get_entry_type(struct dentry_t *p_entry)
-{
-	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
-
-	if (*(ep->name) == 0x0)
-		return TYPE_UNUSED;
-
-	else if (*(ep->name) == 0xE5)
-		return TYPE_DELETED;
-
-	else if (ep->attr == ATTR_EXTEND)
-		return TYPE_EXTEND;
-
-	else if ((ep->attr & (ATTR_SUBDIR | ATTR_VOLUME)) == ATTR_VOLUME)
-		return TYPE_VOLUME;
-
-	else if ((ep->attr & (ATTR_SUBDIR | ATTR_VOLUME)) == ATTR_SUBDIR)
-		return TYPE_DIR;
-
-	return TYPE_FILE;
-}
-
-u32 exfat_get_entry_type(struct dentry_t *p_entry)
-{
-	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
-
-	if (ep->type == 0x0) {
-		return TYPE_UNUSED;
-	} else if (ep->type < 0x80) {
-		return TYPE_DELETED;
-	} else if (ep->type == 0x80) {
-		return TYPE_INVALID;
-	} else if (ep->type < 0xA0) {
-		if (ep->type == 0x81) {
-			return TYPE_BITMAP;
-		} else if (ep->type == 0x82) {
-			return TYPE_UPCASE;
-		} else if (ep->type == 0x83) {
-			return TYPE_VOLUME;
-		} else if (ep->type == 0x85) {
-			if (GET16_A(ep->attr) & ATTR_SUBDIR)
-				return TYPE_DIR;
-			else
-				return TYPE_FILE;
-		}
-		return TYPE_CRITICAL_PRI;
-	} else if (ep->type < 0xC0) {
-		if (ep->type == 0xA0)
-			return TYPE_GUID;
-		else if (ep->type == 0xA1)
-			return TYPE_PADDING;
-		else if (ep->type == 0xA2)
-			return TYPE_ACLTAB;
-		return TYPE_BENIGN_PRI;
-	} else if (ep->type < 0xE0) {
-		if (ep->type == 0xC0)
-			return TYPE_STREAM;
-		else if (ep->type == 0xC1)
-			return TYPE_EXTEND;
-		else if (ep->type == 0xC2)
-			return TYPE_ACL;
-		return TYPE_CRITICAL_SEC;
-	}
-
-	return TYPE_BENIGN_SEC;
-}
-
-void fat_set_entry_type(struct dentry_t *p_entry, u32 type)
-{
-	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
-
-	if (type == TYPE_UNUSED)
-		*(ep->name) = 0x0;
-
-	else if (type == TYPE_DELETED)
-		*(ep->name) = 0xE5;
-
-	else if (type == TYPE_EXTEND)
-		ep->attr = ATTR_EXTEND;
-
-	else if (type == TYPE_DIR)
-		ep->attr = ATTR_SUBDIR;
-
-	else if (type == TYPE_FILE)
-		ep->attr = ATTR_ARCHIVE;
-
-	else if (type == TYPE_SYMLINK)
-		ep->attr = ATTR_ARCHIVE | ATTR_SYMLINK;
-}
-
-void exfat_set_entry_type(struct dentry_t *p_entry, u32 type)
-{
-	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
-
-	if (type == TYPE_UNUSED) {
-		ep->type = 0x0;
-	} else if (type == TYPE_DELETED) {
-		ep->type &= ~0x80;
-	} else if (type == TYPE_STREAM) {
-		ep->type = 0xC0;
-	} else if (type == TYPE_EXTEND) {
-		ep->type = 0xC1;
-	} else if (type == TYPE_BITMAP) {
-		ep->type = 0x81;
-	} else if (type == TYPE_UPCASE) {
-		ep->type = 0x82;
-	} else if (type == TYPE_VOLUME) {
-		ep->type = 0x83;
-	} else if (type == TYPE_DIR) {
-		ep->type = 0x85;
-		SET16_A(ep->attr, ATTR_SUBDIR);
-	} else if (type == TYPE_FILE) {
-		ep->type = 0x85;
-		SET16_A(ep->attr, ATTR_ARCHIVE);
-	} else if (type == TYPE_SYMLINK) {
-		ep->type = 0x85;
-		SET16_A(ep->attr, ATTR_ARCHIVE | ATTR_SYMLINK);
-	}
-}
-
-u32 fat_get_entry_attr(struct dentry_t *p_entry)
-{
-	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
-
-	return (u32)ep->attr;
-}
-
-u32 exfat_get_entry_attr(struct dentry_t *p_entry)
-{
-	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
-
-	return (u32)GET16_A(ep->attr);
-}
-
-void fat_set_entry_attr(struct dentry_t *p_entry, u32 attr)
-{
-	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
-
-	ep->attr = (u8)attr;
-}
-
-void exfat_set_entry_attr(struct dentry_t *p_entry, u32 attr)
-{
-	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
-
-	SET16_A(ep->attr, (u16)attr);
-}
-
-u8 fat_get_entry_flag(struct dentry_t *p_entry)
-{
-	return 0x01;
-}
-
-u8 exfat_get_entry_flag(struct dentry_t *p_entry)
-{
-	struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;
-
-	return ep->flags;
-}
-
-void fat_set_entry_flag(struct dentry_t *p_entry, u8 flags)
-{
-}
-
-void exfat_set_entry_flag(struct dentry_t *p_entry, u8 flags)
-{
-	struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;
-
-	ep->flags = flags;
-}
-
-u32 fat_get_entry_clu0(struct dentry_t *p_entry)
-{
-	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
-
-	return ((u32)GET16_A(ep->start_clu_hi) << 16) |
-		GET16_A(ep->start_clu_lo);
-}
-
-u32 exfat_get_entry_clu0(struct dentry_t *p_entry)
-{
-	struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;
-
-	return GET32_A(ep->start_clu);
-}
-
-void fat_set_entry_clu0(struct dentry_t *p_entry, u32 start_clu)
-{
-	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
-
-	SET16_A(ep->start_clu_lo, CLUSTER_16(start_clu));
-	SET16_A(ep->start_clu_hi, CLUSTER_16(start_clu >> 16));
-}
-
-void exfat_set_entry_clu0(struct dentry_t *p_entry, u32 start_clu)
-{
-	struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;
-
-	SET32_A(ep->start_clu, start_clu);
-}
-
-u64 fat_get_entry_size(struct dentry_t *p_entry)
-{
-	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
-
-	return (u64)GET32_A(ep->size);
-}
-
-u64 exfat_get_entry_size(struct dentry_t *p_entry)
-{
-	struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;
-
-	return GET64_A(ep->valid_size);
-}
-
-void fat_set_entry_size(struct dentry_t *p_entry, u64 size)
-{
-	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
-
-	SET32_A(ep->size, (u32)size);
-}
-
-void exfat_set_entry_size(struct dentry_t *p_entry, u64 size)
-{
-	struct strm_dentry_t *ep = (struct strm_dentry_t *)p_entry;
-
-	SET64_A(ep->valid_size, size);
-	SET64_A(ep->size, size);
-}
-
-void fat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
-			u8 mode)
-{
-	u16 t = 0x00, d = 0x21;
-	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
-
-	switch (mode) {
-	case TM_CREATE:
-		t = GET16_A(ep->create_time);
-		d = GET16_A(ep->create_date);
-		break;
-	case TM_MODIFY:
-		t = GET16_A(ep->modify_time);
-		d = GET16_A(ep->modify_date);
-		break;
-	}
-
-	tp->sec  = (t & 0x001F) << 1;
-	tp->min  = (t >> 5) & 0x003F;
-	tp->hour = (t >> 11);
-	tp->day  = (d & 0x001F);
-	tp->mon  = (d >> 5) & 0x000F;
-	tp->year = (d >> 9);
-}
-
-void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
-			  u8 mode)
-{
-	u16 t = 0x00, d = 0x21;
-	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
-
-	switch (mode) {
-	case TM_CREATE:
-		t = GET16_A(ep->create_time);
-		d = GET16_A(ep->create_date);
-		break;
-	case TM_MODIFY:
-		t = GET16_A(ep->modify_time);
-		d = GET16_A(ep->modify_date);
-		break;
-	case TM_ACCESS:
-		t = GET16_A(ep->access_time);
-		d = GET16_A(ep->access_date);
-		break;
-	}
-
-	tp->sec  = (t & 0x001F) << 1;
-	tp->min  = (t >> 5) & 0x003F;
-	tp->hour = (t >> 11);
-	tp->day  = (d & 0x001F);
-	tp->mon  = (d >> 5) & 0x000F;
-	tp->year = (d >> 9);
-}
-
-void fat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
-			u8 mode)
-{
-	u16 t, d;
-	struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;
-
-	t = (tp->hour << 11) | (tp->min << 5) | (tp->sec >> 1);
-	d = (tp->year <<  9) | (tp->mon << 5) |  tp->day;
-
-	switch (mode) {
-	case TM_CREATE:
-		SET16_A(ep->create_time, t);
-		SET16_A(ep->create_date, d);
-		break;
-	case TM_MODIFY:
-		SET16_A(ep->modify_time, t);
-		SET16_A(ep->modify_date, d);
-		break;
-	}
-}
-
-void exfat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
-			  u8 mode)
-{
-	u16 t, d;
-	struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;
-
-	t = (tp->hour << 11) | (tp->min << 5) | (tp->sec >> 1);
-	d = (tp->year <<  9) | (tp->mon << 5) |  tp->day;
-
-	switch (mode) {
-	case TM_CREATE:
-		SET16_A(ep->create_time, t);
-		SET16_A(ep->create_date, d);
-		break;
-	case TM_MODIFY:
-		SET16_A(ep->modify_time, t);
-		SET16_A(ep->modify_date, d);
-		break;
-	case TM_ACCESS:
-		SET16_A(ep->access_time, t);
-		SET16_A(ep->access_date, d);
-		break;
-	}
-}
-
-s32 fat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir, s32 entry,
-		       u32 type, u32 start_clu, u64 size)
-{
-	sector_t sector;
-	struct dos_dentry_t *dos_ep;
-
-	dos_ep = (struct dos_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
-							 &sector);
-	if (!dos_ep)
-		return FFS_MEDIAERR;
-
-	init_dos_entry(dos_ep, type, start_clu);
-	buf_modify(sb, sector);
-
-	return FFS_SUCCESS;
-}
-
-s32 exfat_init_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			 s32 entry, u32 type, u32 start_clu, u64 size)
-{
-	sector_t sector;
-	u8 flags;
-	struct file_dentry_t *file_ep;
-	struct strm_dentry_t *strm_ep;
-
-	flags = (type == TYPE_FILE) ? 0x01 : 0x03;
-
-	/* we cannot use get_entry_set_in_dir here because file ep is not initialized yet */
-	file_ep = (struct file_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
-							   &sector);
-	if (!file_ep)
-		return FFS_MEDIAERR;
-
-	strm_ep = (struct strm_dentry_t *)get_entry_in_dir(sb, p_dir, entry + 1,
-							   &sector);
-	if (!strm_ep)
-		return FFS_MEDIAERR;
-
-	init_file_entry(file_ep, type);
-	buf_modify(sb, sector);
-
-	init_strm_entry(strm_ep, flags, start_clu, size);
-	buf_modify(sb, sector);
-
-	return FFS_SUCCESS;
-}
-
-static s32 fat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
-			      s32 entry, s32 num_entries,
-			      struct uni_name_t *p_uniname,
-			      struct dos_name_t *p_dosname)
-{
-	int i;
-	sector_t sector;
-	u8 chksum;
-	u16 *uniname = p_uniname->name;
-	struct dos_dentry_t *dos_ep;
-	struct ext_dentry_t *ext_ep;
-
-	dos_ep = (struct dos_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
-							 &sector);
-	if (!dos_ep)
-		return FFS_MEDIAERR;
-
-	dos_ep->lcase = p_dosname->name_case;
-	memcpy(dos_ep->name, p_dosname->name, DOS_NAME_LENGTH);
-	buf_modify(sb, sector);
-
-	if ((--num_entries) > 0) {
-		chksum = calc_checksum_1byte((void *)dos_ep->name,
-					     DOS_NAME_LENGTH, 0);
-
-		for (i = 1; i < num_entries; i++) {
-			ext_ep = (struct ext_dentry_t *)get_entry_in_dir(sb,
-									 p_dir,
-									 entry - i,
-									 &sector);
-			if (!ext_ep)
-				return FFS_MEDIAERR;
-
-			init_ext_entry(ext_ep, i, chksum, uniname);
-			buf_modify(sb, sector);
-			uniname += 13;
-		}
-
-		ext_ep = (struct ext_dentry_t *)get_entry_in_dir(sb, p_dir,
-								 entry - i,
-								 &sector);
-		if (!ext_ep)
-			return FFS_MEDIAERR;
-
-		init_ext_entry(ext_ep, i + 0x40, chksum, uniname);
-		buf_modify(sb, sector);
-	}
-
-	return FFS_SUCCESS;
-}
-
-static s32 exfat_init_ext_entry(struct super_block *sb, struct chain_t *p_dir,
-				s32 entry, s32 num_entries,
-				struct uni_name_t *p_uniname,
-				struct dos_name_t *p_dosname)
-{
-	int i;
-	sector_t sector;
-	u16 *uniname = p_uniname->name;
-	struct file_dentry_t *file_ep;
-	struct strm_dentry_t *strm_ep;
-	struct name_dentry_t *name_ep;
-
-	file_ep = (struct file_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
-							   &sector);
-	if (!file_ep)
-		return FFS_MEDIAERR;
-
-	file_ep->num_ext = (u8)(num_entries - 1);
-	buf_modify(sb, sector);
-
-	strm_ep = (struct strm_dentry_t *)get_entry_in_dir(sb, p_dir, entry + 1,
-							   &sector);
-	if (!strm_ep)
-		return FFS_MEDIAERR;
-
-	strm_ep->name_len = p_uniname->name_len;
-	SET16_A(strm_ep->name_hash, p_uniname->name_hash);
-	buf_modify(sb, sector);
-
-	for (i = 2; i < num_entries; i++) {
-		name_ep = (struct name_dentry_t *)get_entry_in_dir(sb, p_dir,
-								   entry + i,
-								   &sector);
-		if (!name_ep)
-			return FFS_MEDIAERR;
-
-		init_name_entry(name_ep, uniname);
-		buf_modify(sb, sector);
-		uniname += 15;
-	}
-
-	update_dir_checksum(sb, p_dir, entry);
-
-	return FFS_SUCCESS;
-}
-
-void init_dos_entry(struct dos_dentry_t *ep, u32 type, u32 start_clu)
-{
-	struct timestamp_t tm, *tp;
-
-	fat_set_entry_type((struct dentry_t *)ep, type);
-	SET16_A(ep->start_clu_lo, CLUSTER_16(start_clu));
-	SET16_A(ep->start_clu_hi, CLUSTER_16(start_clu >> 16));
-	SET32_A(ep->size, 0);
-
-	tp = tm_current(&tm);
-	fat_set_entry_time((struct dentry_t *)ep, tp, TM_CREATE);
-	fat_set_entry_time((struct dentry_t *)ep, tp, TM_MODIFY);
-	SET16_A(ep->access_date, 0);
-	ep->create_time_ms = 0;
-}
-
-void init_ext_entry(struct ext_dentry_t *ep, s32 order, u8 chksum, u16 *uniname)
-{
-	int i;
-	bool end = false;
-
-	fat_set_entry_type((struct dentry_t *)ep, TYPE_EXTEND);
-	ep->order = (u8)order;
-	ep->sysid = 0;
-	ep->checksum = chksum;
-	SET16_A(ep->start_clu, 0);
-
-	for (i = 0; i < 10; i += 2) {
-		if (!end) {
-			SET16(ep->unicode_0_4 + i, *uniname);
-			if (*uniname == 0x0)
-				end = true;
-			else
-				uniname++;
-		} else {
-			SET16(ep->unicode_0_4 + i, 0xFFFF);
-		}
-	}
-
-	for (i = 0; i < 12; i += 2) {
-		if (!end) {
-			SET16_A(ep->unicode_5_10 + i, *uniname);
-			if (*uniname == 0x0)
-				end = true;
-			else
-				uniname++;
-		} else {
-			SET16_A(ep->unicode_5_10 + i, 0xFFFF);
-		}
-	}
-
-	for (i = 0; i < 4; i += 2) {
-		if (!end) {
-			SET16_A(ep->unicode_11_12 + i, *uniname);
-			if (*uniname == 0x0)
-				end = true;
-			else
-				uniname++;
-		} else {
-			SET16_A(ep->unicode_11_12 + i, 0xFFFF);
-		}
-	}
-}
-
-void init_file_entry(struct file_dentry_t *ep, u32 type)
-{
-	struct timestamp_t tm, *tp;
-
-	exfat_set_entry_type((struct dentry_t *)ep, type);
-
-	tp = tm_current(&tm);
-	exfat_set_entry_time((struct dentry_t *)ep, tp, TM_CREATE);
-	exfat_set_entry_time((struct dentry_t *)ep, tp, TM_MODIFY);
-	exfat_set_entry_time((struct dentry_t *)ep, tp, TM_ACCESS);
-	ep->create_time_ms = 0;
-	ep->modify_time_ms = 0;
-	ep->access_time_ms = 0;
-}
-
-void init_strm_entry(struct strm_dentry_t *ep, u8 flags, u32 start_clu, u64 size)
-{
-	exfat_set_entry_type((struct dentry_t *)ep, TYPE_STREAM);
-	ep->flags = flags;
-	SET32_A(ep->start_clu, start_clu);
-	SET64_A(ep->valid_size, size);
-	SET64_A(ep->size, size);
-}
-
-void init_name_entry(struct name_dentry_t *ep, u16 *uniname)
-{
-	int i;
-
-	exfat_set_entry_type((struct dentry_t *)ep, TYPE_EXTEND);
-	ep->flags = 0x0;
-
-	for (i = 0; i < 30; i++, i++) {
-		SET16_A(ep->unicode_0_14 + i, *uniname);
-		if (*uniname == 0x0)
-			break;
-		uniname++;
-	}
-}
-
-void fat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-		s32 entry, s32 order, s32 num_entries)
-{
-	int i;
-	sector_t sector;
-	struct dentry_t *ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	for (i = num_entries - 1; i >= order; i--) {
-		ep = get_entry_in_dir(sb, p_dir, entry - i, &sector);
-		if (!ep)
-			return;
-
-		p_fs->fs_func->set_entry_type(ep, TYPE_DELETED);
-		buf_modify(sb, sector);
-	}
-}
-
-void exfat_delete_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-		s32 entry, s32 order, s32 num_entries)
-{
-	int i;
-	sector_t sector;
-	struct dentry_t *ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	for (i = order; i < num_entries; i++) {
-		ep = get_entry_in_dir(sb, p_dir, entry + i, &sector);
-		if (!ep)
-			return;
-
-		p_fs->fs_func->set_entry_type(ep, TYPE_DELETED);
-		buf_modify(sb, sector);
-	}
-}
-
-void update_dir_checksum(struct super_block *sb, struct chain_t *p_dir,
-			 s32 entry)
-{
-	int i, num_entries;
-	sector_t sector;
-	u16 chksum;
-	struct file_dentry_t *file_ep;
-	struct dentry_t *ep;
-
-	file_ep = (struct file_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
-							   &sector);
-	if (!file_ep)
-		return;
-
-	buf_lock(sb, sector);
-
-	num_entries = (s32)file_ep->num_ext + 1;
-	chksum = calc_checksum_2byte((void *)file_ep, DENTRY_SIZE, 0,
-				     CS_DIR_ENTRY);
-
-	for (i = 1; i < num_entries; i++) {
-		ep = get_entry_in_dir(sb, p_dir, entry + i, NULL);
-		if (!ep) {
-			buf_unlock(sb, sector);
-			return;
-		}
-
-		chksum = calc_checksum_2byte((void *)ep, DENTRY_SIZE, chksum,
-					     CS_DEFAULT);
-	}
-
-	SET16_A(file_ep->checksum, chksum);
-	buf_modify(sb, sector);
-	buf_unlock(sb, sector);
-}
-
-void update_dir_checksum_with_entry_set(struct super_block *sb,
-					struct entry_set_cache_t *es)
-{
-	struct dentry_t *ep;
-	u16 chksum = 0;
-	s32 chksum_type = CS_DIR_ENTRY, i;
-
-	ep = (struct dentry_t *)&(es->__buf);
-	for (i = 0; i < es->num_entries; i++) {
-		pr_debug("%s ep %p\n", __func__, ep);
-		chksum = calc_checksum_2byte((void *)ep, DENTRY_SIZE, chksum,
-					     chksum_type);
-		ep++;
-		chksum_type = CS_DEFAULT;
-	}
-
-	ep = (struct dentry_t *)&(es->__buf);
-	SET16_A(((struct file_dentry_t *)ep)->checksum, chksum);
-	write_whole_entry_set(sb, es);
-}
-
-static s32 _walk_fat_chain(struct super_block *sb, struct chain_t *p_dir,
-			   s32 byte_offset, u32 *clu)
-{
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	s32 clu_offset;
-	u32 cur_clu;
-
-	clu_offset = byte_offset >> p_fs->cluster_size_bits;
-	cur_clu = p_dir->dir;
-
-	if (p_dir->flags == 0x03) {
-		cur_clu += clu_offset;
-	} else {
-		while (clu_offset > 0) {
-			if (FAT_read(sb, cur_clu, &cur_clu) == -1)
-				return FFS_MEDIAERR;
-			clu_offset--;
-		}
-	}
-
-	if (clu)
-		*clu = cur_clu;
-	return FFS_SUCCESS;
-}
-
-s32 find_location(struct super_block *sb, struct chain_t *p_dir, s32 entry,
-		  sector_t *sector, s32 *offset)
-{
-	s32 off, ret;
-	u32 clu = 0;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	off = entry << DENTRY_SIZE_BITS;
-
-	if (p_dir->dir == CLUSTER_32(0)) { /* FAT16 root_dir */
-		*offset = off & p_bd->sector_size_mask;
-		*sector = off >> p_bd->sector_size_bits;
-		*sector += p_fs->root_start_sector;
-	} else {
-		ret = _walk_fat_chain(sb, p_dir, off, &clu);
-		if (ret != FFS_SUCCESS)
-			return ret;
-
-		/* byte offset in cluster */
-		off &= p_fs->cluster_size - 1;
-
-		/* byte offset in sector    */
-		*offset = off & p_bd->sector_size_mask;
-
-		/* sector offset in cluster */
-		*sector = off >> p_bd->sector_size_bits;
-		*sector += START_SECTOR(clu);
-	}
-	return FFS_SUCCESS;
-}
-
-struct dentry_t *get_entry_with_sector(struct super_block *sb, sector_t sector,
-				       s32 offset)
-{
-	u8 *buf;
-
-	buf = buf_getblk(sb, sector);
-
-	if (!buf)
-		return NULL;
-
-	return (struct dentry_t *)(buf + offset);
-}
-
-struct dentry_t *get_entry_in_dir(struct super_block *sb, struct chain_t *p_dir,
-				  s32 entry, sector_t *sector)
-{
-	s32 off;
-	sector_t sec;
-	u8 *buf;
-
-	if (find_location(sb, p_dir, entry, &sec, &off) != FFS_SUCCESS)
-		return NULL;
-
-	buf = buf_getblk(sb, sec);
-
-	if (!buf)
-		return NULL;
-
-	if (sector)
-		*sector = sec;
-	return (struct dentry_t *)(buf + off);
-}
-
-/* returns a set of dentries for a file or dir.
- * Note that this is a copy (dump) of dentries so that user should call write_entry_set()
- * to apply changes made in this entry set to the real device.
- * in:
- *   sb+p_dir+entry: indicates a file/dir
- *   type:  specifies how many dentries should be included.
- * out:
- *   file_ep: will point the first dentry(= file dentry) on success
- * return:
- *   pointer of entry set on success,
- *   NULL on failure.
- */
-
-#define ES_MODE_STARTED				0
-#define ES_MODE_GET_FILE_ENTRY			1
-#define ES_MODE_GET_STRM_ENTRY			2
-#define ES_MODE_GET_NAME_ENTRY			3
-#define ES_MODE_GET_CRITICAL_SEC_ENTRY		4
-struct entry_set_cache_t *get_entry_set_in_dir(struct super_block *sb,
-					       struct chain_t *p_dir, s32 entry,
-					       u32 type,
-					       struct dentry_t **file_ep)
-{
-	s32 off, ret, byte_offset;
-	u32 clu = 0;
-	sector_t sec;
-	u32 entry_type;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-	struct entry_set_cache_t *es = NULL;
-	struct dentry_t *ep, *pos;
-	u8 *buf;
-	u8 num_entries;
-	s32 mode = ES_MODE_STARTED;
-	size_t bufsize;
-
-	pr_debug("%s entered p_dir dir %u flags %x size %d\n",
-		__func__, p_dir->dir, p_dir->flags, p_dir->size);
-
-	byte_offset = entry << DENTRY_SIZE_BITS;
-	ret = _walk_fat_chain(sb, p_dir, byte_offset, &clu);
-	if (ret != FFS_SUCCESS)
-		return NULL;
-
-	/* byte offset in cluster */
-	byte_offset &= p_fs->cluster_size - 1;
-
-	/* byte offset in sector    */
-	off = byte_offset & p_bd->sector_size_mask;
-
-	/* sector offset in cluster */
-	sec = byte_offset >> p_bd->sector_size_bits;
-	sec += START_SECTOR(clu);
-
-	buf = buf_getblk(sb, sec);
-	if (!buf)
-		goto err_out;
-
-	ep = (struct dentry_t *)(buf + off);
-	entry_type = p_fs->fs_func->get_entry_type(ep);
-
-	if ((entry_type != TYPE_FILE)
-		&& (entry_type != TYPE_DIR))
-		goto err_out;
-
-	if (type == ES_ALL_ENTRIES)
-		num_entries = ((struct file_dentry_t *)ep)->num_ext + 1;
-	else
-		num_entries = type;
-
-	bufsize = offsetof(struct entry_set_cache_t, __buf) + (num_entries) *
-		  sizeof(struct dentry_t);
-	pr_debug("%s: trying to kmalloc %zx bytes for %d entries\n", __func__,
-		 bufsize, num_entries);
-	es = kmalloc(bufsize, GFP_KERNEL);
-	if (!es)
-		goto err_out;
-
-	es->num_entries = num_entries;
-	es->sector = sec;
-	es->offset = off;
-	es->alloc_flag = p_dir->flags;
-
-	pos = (struct dentry_t *)&es->__buf;
-
-	while (num_entries) {
-		/*
-		 * instead of copying whole sector, we will check every entry.
-		 * this will provide minimum stablity and consistency.
-		 */
-		entry_type = p_fs->fs_func->get_entry_type(ep);
-
-		if ((entry_type == TYPE_UNUSED) || (entry_type == TYPE_DELETED))
-			goto err_out;
-
-		switch (mode) {
-		case ES_MODE_STARTED:
-			if ((entry_type == TYPE_FILE) || (entry_type == TYPE_DIR))
-				mode = ES_MODE_GET_FILE_ENTRY;
-			else
-				goto err_out;
-			break;
-		case ES_MODE_GET_FILE_ENTRY:
-			if (entry_type == TYPE_STREAM)
-				mode = ES_MODE_GET_STRM_ENTRY;
-			else
-				goto err_out;
-			break;
-		case ES_MODE_GET_STRM_ENTRY:
-			if (entry_type == TYPE_EXTEND)
-				mode = ES_MODE_GET_NAME_ENTRY;
-			else
-				goto err_out;
-			break;
-		case ES_MODE_GET_NAME_ENTRY:
-			if (entry_type == TYPE_EXTEND)
-				break;
-			else if (entry_type == TYPE_STREAM)
-				goto err_out;
-			else if (entry_type & TYPE_CRITICAL_SEC)
-				mode = ES_MODE_GET_CRITICAL_SEC_ENTRY;
-			else
-				goto err_out;
-			break;
-		case ES_MODE_GET_CRITICAL_SEC_ENTRY:
-			if ((entry_type == TYPE_EXTEND) ||
-			    (entry_type == TYPE_STREAM))
-				goto err_out;
-			else if ((entry_type & TYPE_CRITICAL_SEC) !=
-				 TYPE_CRITICAL_SEC)
-				goto err_out;
-			break;
-		}
-
-		memcpy(pos, ep, sizeof(struct dentry_t));
-
-		if (--num_entries == 0)
-			break;
-
-		if (((off + DENTRY_SIZE) & p_bd->sector_size_mask) <
-		    (off &  p_bd->sector_size_mask)) {
-			/* get the next sector */
-			if (IS_LAST_SECTOR_IN_CLUSTER(sec)) {
-				if (es->alloc_flag == 0x03) {
-					clu++;
-				} else {
-					if (FAT_read(sb, clu, &clu) == -1)
-						goto err_out;
-				}
-				sec = START_SECTOR(clu);
-			} else {
-				sec++;
-			}
-			buf = buf_getblk(sb, sec);
-			if (!buf)
-				goto err_out;
-			off = 0;
-			ep = (struct dentry_t *)(buf);
-		} else {
-			ep++;
-			off += DENTRY_SIZE;
-		}
-		pos++;
-	}
-
-	if (file_ep)
-		*file_ep = (struct dentry_t *)&(es->__buf);
-
-	pr_debug("%s exiting es %p sec %llu offset %d flags %d, num_entries %u buf ptr %p\n",
-		   __func__, es, (unsigned long long)es->sector, es->offset,
-		   es->alloc_flag, es->num_entries, &es->__buf);
-	return es;
-err_out:
-	pr_debug("%s exited NULL (es %p)\n", __func__, es);
-	kfree(es);
-	return NULL;
-}
-
-void release_entry_set(struct entry_set_cache_t *es)
-{
-	pr_debug("%s es=%p\n", __func__, es);
-	kfree(es);
-}
-
-static s32 __write_partial_entries_in_entry_set(struct super_block *sb,
-						struct entry_set_cache_t *es,
-						sector_t sec, s32 off, u32 count)
-{
-	s32 num_entries, buf_off = (off - es->offset);
-	u32 remaining_byte_in_sector, copy_entries;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-	u32 clu;
-	u8 *buf, *esbuf = (u8 *)&(es->__buf);
-
-	pr_debug("%s entered es %p sec %llu off %d count %d\n",
-		__func__, es, (unsigned long long)sec, off, count);
-	num_entries = count;
-
-	while (num_entries) {
-		/* white per sector base */
-		remaining_byte_in_sector = (1 << p_bd->sector_size_bits) - off;
-		copy_entries = min_t(s32,
-				     remaining_byte_in_sector >> DENTRY_SIZE_BITS,
-				     num_entries);
-		buf = buf_getblk(sb, sec);
-		if (!buf)
-			goto err_out;
-		pr_debug("es->buf %p buf_off %u\n", esbuf, buf_off);
-		pr_debug("copying %d entries from %p to sector %llu\n",
-			copy_entries, (esbuf + buf_off),
-			(unsigned long long)sec);
-		memcpy(buf + off, esbuf + buf_off,
-		       copy_entries << DENTRY_SIZE_BITS);
-		buf_modify(sb, sec);
-		num_entries -= copy_entries;
-
-		if (num_entries) {
-			/* get next sector */
-			if (IS_LAST_SECTOR_IN_CLUSTER(sec)) {
-				clu = GET_CLUSTER_FROM_SECTOR(sec);
-				if (es->alloc_flag == 0x03) {
-					clu++;
-				} else {
-					if (FAT_read(sb, clu, &clu) == -1)
-						goto err_out;
-				}
-				sec = START_SECTOR(clu);
-			} else {
-				sec++;
-			}
-			off = 0;
-			buf_off += copy_entries << DENTRY_SIZE_BITS;
-		}
-	}
-
-	pr_debug("%s exited successfully\n", __func__);
-	return FFS_SUCCESS;
-err_out:
-	pr_debug("%s failed\n", __func__);
-	return FFS_ERROR;
-}
-
-/* write back all entries in entry set */
-s32 write_whole_entry_set(struct super_block *sb, struct entry_set_cache_t *es)
-{
-	return __write_partial_entries_in_entry_set(sb, es, es->sector,
-						    es->offset,
-						    es->num_entries);
-}
-
-/* write back some entries in entry set */
-s32 write_partial_entries_in_entry_set(struct super_block *sb,
-	struct entry_set_cache_t *es, struct dentry_t *ep, u32 count)
-{
-	s32 ret, byte_offset, off;
-	u32 clu = 0;
-	sector_t sec;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-	struct chain_t dir;
-
-	/* vaidity check */
-	if (ep + count  > ((struct dentry_t *)&(es->__buf)) + es->num_entries)
-		return FFS_ERROR;
-
-	dir.dir = GET_CLUSTER_FROM_SECTOR(es->sector);
-	dir.flags = es->alloc_flag;
-	dir.size = 0xffffffff;		/* XXX */
-
-	byte_offset = (es->sector - START_SECTOR(dir.dir)) <<
-			p_bd->sector_size_bits;
-	byte_offset += ((void **)ep - &(es->__buf)) + es->offset;
-
-	ret = _walk_fat_chain(sb, &dir, byte_offset, &clu);
-	if (ret != FFS_SUCCESS)
-		return ret;
-
-	/* byte offset in cluster */
-	byte_offset &= p_fs->cluster_size - 1;
-
-	/* byte offset in sector    */
-	off = byte_offset & p_bd->sector_size_mask;
-
-	/* sector offset in cluster */
-	sec = byte_offset >> p_bd->sector_size_bits;
-	sec += START_SECTOR(clu);
-	return __write_partial_entries_in_entry_set(sb, es, sec, off, count);
-}
-
-/* search EMPTY CONTINUOUS "num_entries" entries */
-s32 search_deleted_or_unused_entry(struct super_block *sb,
-				   struct chain_t *p_dir, s32 num_entries)
-{
-	int i, dentry, num_empty = 0;
-	s32 dentries_per_clu;
-	u32 type;
-	struct chain_t clu;
-	struct dentry_t *ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
-		dentries_per_clu = p_fs->dentries_in_root;
-	else
-		dentries_per_clu = p_fs->dentries_per_clu;
-
-	if (p_fs->hint_uentry.dir == p_dir->dir) {
-		if (p_fs->hint_uentry.entry == -1)
-			return -1;
-
-		clu.dir = p_fs->hint_uentry.clu.dir;
-		clu.size = p_fs->hint_uentry.clu.size;
-		clu.flags = p_fs->hint_uentry.clu.flags;
-
-		dentry = p_fs->hint_uentry.entry;
-	} else {
-		p_fs->hint_uentry.entry = -1;
-
-		clu.dir = p_dir->dir;
-		clu.size = p_dir->size;
-		clu.flags = p_dir->flags;
-
-		dentry = 0;
-	}
-
-	while (clu.dir != CLUSTER_32(~0)) {
-		if (p_fs->dev_ejected)
-			break;
-
-		if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
-			i = dentry % dentries_per_clu;
-		else
-			i = dentry & (dentries_per_clu - 1);
-
-		for (; i < dentries_per_clu; i++, dentry++) {
-			ep = get_entry_in_dir(sb, &clu, i, NULL);
-			if (!ep)
-				return -1;
-
-			type = p_fs->fs_func->get_entry_type(ep);
-
-			if (type == TYPE_UNUSED) {
-				num_empty++;
-				if (p_fs->hint_uentry.entry == -1) {
-					p_fs->hint_uentry.dir = p_dir->dir;
-					p_fs->hint_uentry.entry = dentry;
-
-					p_fs->hint_uentry.clu.dir = clu.dir;
-					p_fs->hint_uentry.clu.size = clu.size;
-					p_fs->hint_uentry.clu.flags = clu.flags;
-				}
-			} else if (type == TYPE_DELETED) {
-				num_empty++;
-			} else {
-				num_empty = 0;
-			}
-
-			if (num_empty >= num_entries) {
-				p_fs->hint_uentry.dir = CLUSTER_32(~0);
-				p_fs->hint_uentry.entry = -1;
-
-				if (p_fs->vol_type == EXFAT)
-					return dentry - (num_entries - 1);
-				else
-					return dentry;
-			}
-		}
-
-		if (p_dir->dir == CLUSTER_32(0))
-			break; /* FAT16 root_dir */
-
-		if (clu.flags == 0x03) {
-			if ((--clu.size) > 0)
-				clu.dir++;
-			else
-				clu.dir = CLUSTER_32(~0);
-		} else {
-			if (FAT_read(sb, clu.dir, &clu.dir) != 0)
-				return -1;
-		}
-	}
-
-	return -1;
-}
-
-s32 find_empty_entry(struct inode *inode, struct chain_t *p_dir, s32 num_entries)
-{
-	s32 ret, dentry;
-	u32 last_clu;
-	sector_t sector;
-	u64 size = 0;
-	struct chain_t clu;
-	struct dentry_t *ep = NULL;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
-
-	if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
-		return search_deleted_or_unused_entry(sb, p_dir, num_entries);
-
-	while ((dentry = search_deleted_or_unused_entry(sb, p_dir, num_entries)) < 0) {
-		if (p_fs->dev_ejected)
-			break;
-
-		if (p_fs->vol_type == EXFAT) {
-			if (p_dir->dir != p_fs->root_dir)
-				size = i_size_read(inode);
-		}
-
-		last_clu = find_last_cluster(sb, p_dir);
-		clu.dir = last_clu + 1;
-		clu.size = 0;
-		clu.flags = p_dir->flags;
-
-		/* (1) allocate a cluster */
-		ret = p_fs->fs_func->alloc_cluster(sb, 1, &clu);
-		if (ret < 1)
-			return -1;
-
-		if (clear_cluster(sb, clu.dir) != FFS_SUCCESS)
-			return -1;
-
-		/* (2) append to the FAT chain */
-		if (clu.flags != p_dir->flags) {
-			exfat_chain_cont_cluster(sb, p_dir->dir, p_dir->size);
-			p_dir->flags = 0x01;
-			p_fs->hint_uentry.clu.flags = 0x01;
-		}
-		if (clu.flags == 0x01)
-			if (FAT_write(sb, last_clu, clu.dir) < 0)
-				return -1;
-
-		if (p_fs->hint_uentry.entry == -1) {
-			p_fs->hint_uentry.dir = p_dir->dir;
-			p_fs->hint_uentry.entry = p_dir->size << (p_fs->cluster_size_bits - DENTRY_SIZE_BITS);
-
-			p_fs->hint_uentry.clu.dir = clu.dir;
-			p_fs->hint_uentry.clu.size = 0;
-			p_fs->hint_uentry.clu.flags = clu.flags;
-		}
-		p_fs->hint_uentry.clu.size++;
-		p_dir->size++;
-
-		/* (3) update the directory entry */
-		if (p_fs->vol_type == EXFAT) {
-			if (p_dir->dir != p_fs->root_dir) {
-				size += p_fs->cluster_size;
-
-				ep = get_entry_in_dir(sb, &fid->dir,
-						      fid->entry + 1, &sector);
-				if (!ep)
-					return -1;
-				p_fs->fs_func->set_entry_size(ep, size);
-				p_fs->fs_func->set_entry_flag(ep, p_dir->flags);
-				buf_modify(sb, sector);
-
-				update_dir_checksum(sb, &(fid->dir),
-						    fid->entry);
-			}
-		}
-
-		i_size_write(inode, i_size_read(inode) + p_fs->cluster_size);
-		EXFAT_I(inode)->mmu_private += p_fs->cluster_size;
-		EXFAT_I(inode)->fid.size += p_fs->cluster_size;
-		EXFAT_I(inode)->fid.flags = p_dir->flags;
-		inode->i_blocks += 1 << (p_fs->cluster_size_bits - 9);
-	}
-
-	return dentry;
-}
-
-/* return values of fat_find_dir_entry()
- * >= 0 : return dir entiry position with the name in dir
- * -1 : (root dir, ".") it is the root dir itself
- * -2 : entry with the name does not exist
- */
-s32 fat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-		       struct uni_name_t *p_uniname, s32 num_entries,
-		       struct dos_name_t *p_dosname, u32 type)
-{
-	int i, dentry = 0, len;
-	s32 order = 0;
-	bool is_feasible_entry = true, has_ext_entry = false;
-	s32 dentries_per_clu;
-	u32 entry_type;
-	u16 entry_uniname[14], *uniname = NULL, unichar;
-	struct chain_t clu;
-	struct dentry_t *ep;
-	struct dos_dentry_t *dos_ep;
-	struct ext_dentry_t *ext_ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if (p_dir->dir == p_fs->root_dir) {
-		if ((!nls_uniname_cmp(sb, p_uniname->name,
-				      (u16 *)UNI_CUR_DIR_NAME)) ||
-			(!nls_uniname_cmp(sb, p_uniname->name,
-					  (u16 *)UNI_PAR_DIR_NAME)))
-			return -1; // special case, root directory itself
-	}
-
-	if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
-		dentries_per_clu = p_fs->dentries_in_root;
-	else
-		dentries_per_clu = p_fs->dentries_per_clu;
-
-	clu.dir = p_dir->dir;
-	clu.flags = p_dir->flags;
-
-	while (clu.dir != CLUSTER_32(~0)) {
-		if (p_fs->dev_ejected)
-			break;
-
-		for (i = 0; i < dentries_per_clu; i++, dentry++) {
-			ep = get_entry_in_dir(sb, &clu, i, NULL);
-			if (!ep)
-				return -2;
-
-			entry_type = p_fs->fs_func->get_entry_type(ep);
-
-			if ((entry_type == TYPE_FILE) || (entry_type == TYPE_DIR)) {
-				if ((type == TYPE_ALL) || (type == entry_type)) {
-					if (is_feasible_entry && has_ext_entry)
-						return dentry;
-
-					dos_ep = (struct dos_dentry_t *)ep;
-					if (!nls_dosname_cmp(sb, p_dosname->name, dos_ep->name))
-						return dentry;
-				}
-				is_feasible_entry = true;
-				has_ext_entry = false;
-			} else if (entry_type == TYPE_EXTEND) {
-				if (is_feasible_entry) {
-					ext_ep = (struct ext_dentry_t *)ep;
-					if (ext_ep->order > 0x40) {
-						order = (s32)(ext_ep->order - 0x40);
-						uniname = p_uniname->name + 13 * (order - 1);
-					} else {
-						order = (s32)ext_ep->order;
-						uniname -= 13;
-					}
-
-					len = extract_uni_name_from_ext_entry(ext_ep, entry_uniname, order);
-
-					unichar = *(uniname + len);
-					*(uniname + len) = 0x0;
-
-					if (nls_uniname_cmp(sb, uniname, entry_uniname))
-						is_feasible_entry = false;
-
-					*(uniname + len) = unichar;
-				}
-				has_ext_entry = true;
-			} else if (entry_type == TYPE_UNUSED) {
-				return -2;
-			}
-			is_feasible_entry = true;
-			has_ext_entry = false;
-		}
-
-		if (p_dir->dir == CLUSTER_32(0))
-			break; /* FAT16 root_dir */
-
-		if (FAT_read(sb, clu.dir, &clu.dir) != 0)
-			return -2;
-	}
-
-	return -2;
-}
-
-/* return values of exfat_find_dir_entry()
- * >= 0 : return dir entiry position with the name in dir
- * -1 : (root dir, ".") it is the root dir itself
- * -2 : entry with the name does not exist
- */
-s32 exfat_find_dir_entry(struct super_block *sb, struct chain_t *p_dir,
-			 struct uni_name_t *p_uniname, s32 num_entries,
-			 struct dos_name_t *p_dosname, u32 type)
-{
-	int i = 0, dentry = 0, num_ext_entries = 0, len, step;
-	s32 order = 0;
-	bool is_feasible_entry = false;
-	s32 dentries_per_clu, num_empty = 0;
-	u32 entry_type;
-	u16 entry_uniname[16], *uniname = NULL, unichar;
-	struct chain_t clu;
-	struct dentry_t *ep;
-	struct file_dentry_t *file_ep;
-	struct strm_dentry_t *strm_ep;
-	struct name_dentry_t *name_ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if (p_dir->dir == p_fs->root_dir) {
-		if ((!nls_uniname_cmp(sb, p_uniname->name,
-				      (u16 *)UNI_CUR_DIR_NAME)) ||
-			(!nls_uniname_cmp(sb, p_uniname->name,
-					  (u16 *)UNI_PAR_DIR_NAME)))
-			return -1; // special case, root directory itself
-	}
-
-	if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
-		dentries_per_clu = p_fs->dentries_in_root;
-	else
-		dentries_per_clu = p_fs->dentries_per_clu;
-
-	clu.dir = p_dir->dir;
-	clu.size = p_dir->size;
-	clu.flags = p_dir->flags;
-
-	p_fs->hint_uentry.dir = p_dir->dir;
-	p_fs->hint_uentry.entry = -1;
-
-	while (clu.dir != CLUSTER_32(~0)) {
-		if (p_fs->dev_ejected)
-			break;
-
-		while (i < dentries_per_clu) {
-			ep = get_entry_in_dir(sb, &clu, i, NULL);
-			if (!ep)
-				return -2;
-
-			entry_type = p_fs->fs_func->get_entry_type(ep);
-			step = 1;
-
-			if ((entry_type == TYPE_UNUSED) || (entry_type == TYPE_DELETED)) {
-				is_feasible_entry = false;
-
-				if (p_fs->hint_uentry.entry == -1) {
-					num_empty++;
-
-					if (num_empty == 1) {
-						p_fs->hint_uentry.clu.dir = clu.dir;
-						p_fs->hint_uentry.clu.size = clu.size;
-						p_fs->hint_uentry.clu.flags = clu.flags;
-					}
-					if ((num_empty >= num_entries) || (entry_type == TYPE_UNUSED))
-						p_fs->hint_uentry.entry = dentry - (num_empty - 1);
-				}
-
-				if (entry_type == TYPE_UNUSED)
-					return -2;
-			} else {
-				num_empty = 0;
-
-				if ((entry_type == TYPE_FILE) || (entry_type == TYPE_DIR)) {
-					file_ep = (struct file_dentry_t *)ep;
-					if ((type == TYPE_ALL) || (type == entry_type)) {
-						num_ext_entries = file_ep->num_ext;
-						is_feasible_entry = true;
-					} else {
-						is_feasible_entry = false;
-						step = file_ep->num_ext + 1;
-					}
-				} else if (entry_type == TYPE_STREAM) {
-					if (is_feasible_entry) {
-						strm_ep = (struct strm_dentry_t *)ep;
-						if (p_uniname->name_hash == GET16_A(strm_ep->name_hash) &&
-						    p_uniname->name_len == strm_ep->name_len) {
-							order = 1;
-						} else {
-							is_feasible_entry = false;
-							step = num_ext_entries;
-						}
-					}
-				} else if (entry_type == TYPE_EXTEND) {
-					if (is_feasible_entry) {
-						name_ep = (struct name_dentry_t *)ep;
-
-						if ((++order) == 2)
-							uniname = p_uniname->name;
-						else
-							uniname += 15;
-
-						len = extract_uni_name_from_name_entry(name_ep,
-								entry_uniname, order);
-
-						unichar = *(uniname + len);
-						*(uniname + len) = 0x0;
-
-						if (nls_uniname_cmp(sb, uniname, entry_uniname)) {
-							is_feasible_entry = false;
-							step = num_ext_entries - order + 1;
-						} else if (order == num_ext_entries) {
-							p_fs->hint_uentry.dir = CLUSTER_32(~0);
-							p_fs->hint_uentry.entry = -1;
-							return dentry - (num_ext_entries);
-						}
-
-						*(uniname + len) = unichar;
-					}
-				} else {
-					is_feasible_entry = false;
-				}
-			}
-
-			i += step;
-			dentry += step;
-		}
-
-		i -= dentries_per_clu;
-
-		if (p_dir->dir == CLUSTER_32(0))
-			break; /* FAT16 root_dir */
-
-		if (clu.flags == 0x03) {
-			if ((--clu.size) > 0)
-				clu.dir++;
-			else
-				clu.dir = CLUSTER_32(~0);
-		} else {
-			if (FAT_read(sb, clu.dir, &clu.dir) != 0)
-				return -2;
-		}
-	}
-
-	return -2;
-}
-
-s32 fat_count_ext_entries(struct super_block *sb, struct chain_t *p_dir,
-			  s32 entry, struct dentry_t *p_entry)
-{
-	s32 count = 0;
-	u8 chksum;
-	struct dos_dentry_t *dos_ep = (struct dos_dentry_t *)p_entry;
-	struct ext_dentry_t *ext_ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	chksum = calc_checksum_1byte((void *)dos_ep->name, DOS_NAME_LENGTH, 0);
-
-	for (entry--; entry >= 0; entry--) {
-		ext_ep = (struct ext_dentry_t *)get_entry_in_dir(sb, p_dir,
-								 entry, NULL);
-		if (!ext_ep)
-			return -1;
-
-		if ((p_fs->fs_func->get_entry_type((struct dentry_t *)ext_ep) ==
-		     TYPE_EXTEND) && (ext_ep->checksum == chksum)) {
-			count++;
-			if (ext_ep->order > 0x40)
-				return count;
-		} else {
-			return count;
-		}
-	}
-
-	return count;
-}
-
-s32 exfat_count_ext_entries(struct super_block *sb, struct chain_t *p_dir,
-			    s32 entry, struct dentry_t *p_entry)
-{
-	int i, count = 0;
-	u32 type;
-	struct file_dentry_t *file_ep = (struct file_dentry_t *)p_entry;
-	struct dentry_t *ext_ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	for (i = 0, entry++; i < file_ep->num_ext; i++, entry++) {
-		ext_ep = get_entry_in_dir(sb, p_dir, entry, NULL);
-		if (!ext_ep)
-			return -1;
-
-		type = p_fs->fs_func->get_entry_type(ext_ep);
-		if ((type == TYPE_EXTEND) || (type == TYPE_STREAM))
-			count++;
-		else
-			return count;
-	}
-
-	return count;
-}
-
-s32 count_dos_name_entries(struct super_block *sb, struct chain_t *p_dir,
-			   u32 type)
-{
-	int i, count = 0;
-	s32 dentries_per_clu;
-	u32 entry_type;
-	struct chain_t clu;
-	struct dentry_t *ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
-		dentries_per_clu = p_fs->dentries_in_root;
-	else
-		dentries_per_clu = p_fs->dentries_per_clu;
-
-	clu.dir = p_dir->dir;
-	clu.size = p_dir->size;
-	clu.flags = p_dir->flags;
-
-	while (clu.dir != CLUSTER_32(~0)) {
-		if (p_fs->dev_ejected)
-			break;
-
-		for (i = 0; i < dentries_per_clu; i++) {
-			ep = get_entry_in_dir(sb, &clu, i, NULL);
-			if (!ep)
-				return -1;
-
-			entry_type = p_fs->fs_func->get_entry_type(ep);
-
-			if (entry_type == TYPE_UNUSED)
-				return count;
-			if (!(type & TYPE_CRITICAL_PRI) &&
-			    !(type & TYPE_BENIGN_PRI))
-				continue;
-
-			if ((type == TYPE_ALL) || (type == entry_type))
-				count++;
-		}
-
-		if (p_dir->dir == CLUSTER_32(0))
-			break; /* FAT16 root_dir */
-
-		if (clu.flags == 0x03) {
-			if ((--clu.size) > 0)
-				clu.dir++;
-			else
-				clu.dir = CLUSTER_32(~0);
-		} else {
-			if (FAT_read(sb, clu.dir, &clu.dir) != 0)
-				return -1;
-		}
-	}
-
-	return count;
-}
-
-bool is_dir_empty(struct super_block *sb, struct chain_t *p_dir)
-{
-	int i, count = 0;
-	s32 dentries_per_clu;
-	u32 type;
-	struct chain_t clu;
-	struct dentry_t *ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
-		dentries_per_clu = p_fs->dentries_in_root;
-	else
-		dentries_per_clu = p_fs->dentries_per_clu;
-
-	clu.dir = p_dir->dir;
-	clu.size = p_dir->size;
-	clu.flags = p_dir->flags;
-
-	while (clu.dir != CLUSTER_32(~0)) {
-		if (p_fs->dev_ejected)
-			break;
-
-		for (i = 0; i < dentries_per_clu; i++) {
-			ep = get_entry_in_dir(sb, &clu, i, NULL);
-			if (!ep)
-				break;
-
-			type = p_fs->fs_func->get_entry_type(ep);
-
-			if (type == TYPE_UNUSED)
-				return true;
-			if ((type != TYPE_FILE) && (type != TYPE_DIR))
-				continue;
-
-			if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
-				return false;
-
-			if (p_fs->vol_type == EXFAT)
-				return false;
-			if ((p_dir->dir == p_fs->root_dir) || ((++count) > 2))
-				return false;
-		}
-
-		if (p_dir->dir == CLUSTER_32(0))
-			break; /* FAT16 root_dir */
-
-		if (clu.flags == 0x03) {
-			if ((--clu.size) > 0)
-				clu.dir++;
-			else
-				clu.dir = CLUSTER_32(~0);
-		}
-		if (FAT_read(sb, clu.dir, &clu.dir) != 0)
-			break;
-	}
-
-	return true;
-}
-
-/*
- *  Name Conversion Functions
- */
-
-/* input  : dir, uni_name
- * output : num_of_entry, dos_name(format : aaaaaa~1.bbb)
- */
-s32 get_num_entries_and_dos_name(struct super_block *sb, struct chain_t *p_dir,
-				 struct uni_name_t *p_uniname, s32 *entries,
-				 struct dos_name_t *p_dosname)
-{
-	s32 ret, num_entries;
-	bool lossy = false;
-	char **r;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	num_entries = p_fs->fs_func->calc_num_entries(p_uniname);
-	if (num_entries == 0)
-		return FFS_INVALIDPATH;
-
-	if (p_fs->vol_type != EXFAT) {
-		nls_uniname_to_dosname(sb, p_dosname, p_uniname, &lossy);
-
-		if (lossy) {
-			ret = fat_generate_dos_name(sb, p_dir, p_dosname);
-			if (ret)
-				return ret;
-		} else {
-			for (r = reserved_names; *r; r++) {
-				if (!strncmp((void *)p_dosname->name, *r, 8))
-					return FFS_INVALIDPATH;
-			}
-
-			if (p_dosname->name_case != 0xFF)
-				num_entries = 1;
-		}
-
-		if (num_entries > 1)
-			p_dosname->name_case = 0x0;
-	}
-
-	*entries = num_entries;
-
-	return FFS_SUCCESS;
-}
-
-void get_uni_name_from_dos_entry(struct super_block *sb,
-				 struct dos_dentry_t *ep,
-				 struct uni_name_t *p_uniname, u8 mode)
-{
-	struct dos_name_t dos_name;
-
-	if (mode == 0x0)
-		dos_name.name_case = 0x0;
-	else
-		dos_name.name_case = ep->lcase;
-
-	memcpy(dos_name.name, ep->name, DOS_NAME_LENGTH);
-	nls_dosname_to_uniname(sb, p_uniname, &dos_name);
-}
-
-void fat_get_uni_name_from_ext_entry(struct super_block *sb,
-				     struct chain_t *p_dir, s32 entry,
-				     u16 *uniname)
-{
-	int i;
-	struct ext_dentry_t *ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	for (entry--, i = 1; entry >= 0; entry--, i++) {
-		ep = (struct ext_dentry_t *)get_entry_in_dir(sb, p_dir, entry,
-							     NULL);
-		if (!ep)
-			return;
-
-		if (p_fs->fs_func->get_entry_type((struct dentry_t *)ep) ==
-		    TYPE_EXTEND) {
-			extract_uni_name_from_ext_entry(ep, uniname, i);
-			if (ep->order > 0x40)
-				return;
-		} else {
-			return;
-		}
-
-		uniname += 13;
-	}
-}
-
-void exfat_get_uni_name_from_ext_entry(struct super_block *sb,
-				       struct chain_t *p_dir, s32 entry,
-				       u16 *uniname)
-{
-	int i;
-	struct dentry_t *ep;
-	struct entry_set_cache_t *es;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	es = get_entry_set_in_dir(sb, p_dir, entry, ES_ALL_ENTRIES, &ep);
-	if (!es || es->num_entries < 3) {
-		if (es)
-			release_entry_set(es);
-		return;
-	}
-
-	ep += 2;
-
-	/*
-	 * First entry  : file entry
-	 * Second entry : stream-extension entry
-	 * Third entry  : first file-name entry
-	 * So, the index of first file-name dentry should start from 2.
-	 */
-	for (i = 2; i < es->num_entries; i++, ep++) {
-		if (p_fs->fs_func->get_entry_type(ep) == TYPE_EXTEND)
-			extract_uni_name_from_name_entry((struct name_dentry_t *)
-							 ep, uniname, i);
-		else
-			goto out;
-		uniname += 15;
-	}
-
-out:
-	release_entry_set(es);
-}
-
-s32 extract_uni_name_from_ext_entry(struct ext_dentry_t *ep, u16 *uniname,
-				    s32 order)
-{
-	int i, len = 0;
-
-	for (i = 0; i < 10; i += 2) {
-		*uniname = GET16(ep->unicode_0_4 + i);
-		if (*uniname == 0x0)
-			return len;
-		uniname++;
-		len++;
-	}
-
-	if (order < 20) {
-		for (i = 0; i < 12; i += 2) {
-			*uniname = GET16_A(ep->unicode_5_10 + i);
-			if (*uniname == 0x0)
-				return len;
-			uniname++;
-			len++;
-		}
-	} else {
-		for (i = 0; i < 8; i += 2) {
-			*uniname = GET16_A(ep->unicode_5_10 + i);
-			if (*uniname == 0x0)
-				return len;
-			uniname++;
-			len++;
-		}
-		*uniname = 0x0; /* uniname[MAX_NAME_LENGTH-1] */
-		return len;
-	}
-
-	for (i = 0; i < 4; i += 2) {
-		*uniname = GET16_A(ep->unicode_11_12 + i);
-		if (*uniname == 0x0)
-			return len;
-		uniname++;
-		len++;
-	}
-
-	*uniname = 0x0;
-	return len;
-}
-
-s32 extract_uni_name_from_name_entry(struct name_dentry_t *ep, u16 *uniname,
-				     s32 order)
-{
-	int i, len = 0;
-
-	for (i = 0; i < 30; i += 2) {
-		*uniname = GET16_A(ep->unicode_0_14 + i);
-		if (*uniname == 0x0)
-			return len;
-		uniname++;
-		len++;
-	}
-
-	*uniname = 0x0;
-	return len;
-}
-
-s32 fat_generate_dos_name(struct super_block *sb, struct chain_t *p_dir,
-			  struct dos_name_t *p_dosname)
-{
-	int i, j, count = 0;
-	bool count_begin = false;
-	s32 dentries_per_clu;
-	u32 type;
-	u8 bmap[128/* 1 ~ 1023 */];
-	struct chain_t clu;
-	struct dos_dentry_t *ep;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	memset(bmap, 0, sizeof(bmap));
-	exfat_bitmap_set(bmap, 0);
-
-	if (p_dir->dir == CLUSTER_32(0)) /* FAT16 root_dir */
-		dentries_per_clu = p_fs->dentries_in_root;
-	else
-		dentries_per_clu = p_fs->dentries_per_clu;
-
-	clu.dir = p_dir->dir;
-	clu.flags = p_dir->flags;
-
-	while (clu.dir != CLUSTER_32(~0)) {
-		if (p_fs->dev_ejected)
-			break;
-
-		for (i = 0; i < dentries_per_clu; i++) {
-			ep = (struct dos_dentry_t *)get_entry_in_dir(sb, &clu,
-								     i, NULL);
-			if (!ep)
-				return FFS_MEDIAERR;
-
-			type = p_fs->fs_func->get_entry_type((struct dentry_t *)
-							     ep);
-
-			if (type == TYPE_UNUSED)
-				break;
-			if ((type != TYPE_FILE) && (type != TYPE_DIR))
-				continue;
-
-			count = 0;
-			count_begin = false;
-
-			for (j = 0; j < 8; j++) {
-				if (ep->name[j] == ' ')
-					break;
-
-				if (ep->name[j] == '~') {
-					count_begin = true;
-				} else if (count_begin) {
-					if ((ep->name[j] >= '0') &&
-					    (ep->name[j] <= '9')) {
-						count = count * 10 +
-							(ep->name[j] - '0');
-					} else {
-						count = 0;
-						count_begin = false;
-					}
-				}
-			}
-
-			if ((count > 0) && (count < 1024))
-				exfat_bitmap_set(bmap, count);
-		}
-
-		if (p_dir->dir == CLUSTER_32(0))
-			break; /* FAT16 root_dir */
-
-		if (FAT_read(sb, clu.dir, &clu.dir) != 0)
-			return FFS_MEDIAERR;
-	}
-
-	count = 0;
-	for (i = 0; i < 128; i++) {
-		if (bmap[i] != 0xFF) {
-			for (j = 0; j < 8; j++) {
-				if (exfat_bitmap_test(&bmap[i], j) == 0) {
-					count = (i << 3) + j;
-					break;
-				}
-			}
-			if (count != 0)
-				break;
-		}
-	}
-
-	if ((count == 0) || (count >= 1024))
-		return FFS_FILEEXIST;
-	fat_attach_count_to_dos_name(p_dosname->name, count);
-
-	/* Now dos_name has DOS~????.EXT */
-	return FFS_SUCCESS;
-}
-
-void fat_attach_count_to_dos_name(u8 *dosname, s32 count)
-{
-	int i, j, length;
-	char str_count[6];
-
-	snprintf(str_count, sizeof(str_count), "~%d", count);
-	length = strlen(str_count);
-
-	i = 0;
-	j = 0;
-	while (j <= (8 - length)) {
-		i = j;
-		if (dosname[j] == ' ')
-			break;
-		if (dosname[j] & 0x80)
-			j += 2;
-		else
-			j++;
-	}
-
-	for (j = 0; j < length; i++, j++)
-		dosname[i] = (u8)str_count[j];
-
-	if (i == 7)
-		dosname[7] = ' ';
-}
-
-s32 fat_calc_num_entries(struct uni_name_t *p_uniname)
-{
-	s32 len;
-
-	len = p_uniname->name_len;
-	if (len == 0)
-		return 0;
-
-	/* 1 dos name entry + extended entries */
-	return (len - 1) / 13 + 2;
-}
-
-s32 exfat_calc_num_entries(struct uni_name_t *p_uniname)
-{
-	s32 len;
-
-	len = p_uniname->name_len;
-	if (len == 0)
-		return 0;
-
-	/* 1 file entry + 1 stream entry + name entries */
-	return (len - 1) / 15 + 3;
-}
-
-u8 calc_checksum_1byte(void *data, s32 len, u8 chksum)
-{
-	int i;
-	u8 *c = (u8 *)data;
-
-	for (i = 0; i < len; i++, c++)
-		chksum = (((chksum & 1) << 7) | ((chksum & 0xFE) >> 1)) + *c;
-
-	return chksum;
-}
-
-u16 calc_checksum_2byte(void *data, s32 len, u16 chksum, s32 type)
-{
-	int i;
-	u8 *c = (u8 *)data;
-
-	switch (type) {
-	case CS_DIR_ENTRY:
-		for (i = 0; i < len; i++, c++) {
-			if ((i == 2) || (i == 3))
-				continue;
-			chksum = (((chksum & 1) << 15) |
-				  ((chksum & 0xFFFE) >> 1)) + (u16)*c;
-		}
-		break;
-	default
-			:
-		for (i = 0; i < len; i++, c++)
-			chksum = (((chksum & 1) << 15) |
-				  ((chksum & 0xFFFE) >> 1)) + (u16)*c;
-	}
-
-	return chksum;
-}
-
-u32 calc_checksum_4byte(void *data, s32 len, u32 chksum, s32 type)
-{
-	int i;
-	u8 *c = (u8 *)data;
-
-	switch (type) {
-	case CS_PBR_SECTOR:
-		for (i = 0; i < len; i++, c++) {
-			if ((i == 106) || (i == 107) || (i == 112))
-				continue;
-			chksum = (((chksum & 1) << 31) |
-				  ((chksum & 0xFFFFFFFE) >> 1)) + (u32)*c;
-		}
-		break;
-	default
-			:
-		for (i = 0; i < len; i++, c++)
-			chksum = (((chksum & 1) << 31) |
-				  ((chksum & 0xFFFFFFFE) >> 1)) + (u32)*c;
-	}
-
-	return chksum;
-}
-
-/*
- *  Name Resolution Functions
- */
-
-/* return values of resolve_path()
- * > 0 : return the length of the path
- * < 0 : return error
- */
-s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
-		 struct uni_name_t *p_uniname)
-{
-	bool lossy = false;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
-
-	if (strscpy(name_buf, path, sizeof(name_buf)) < 0)
-		return FFS_INVALIDPATH;
-
-	nls_cstring_to_uniname(sb, p_uniname, name_buf, &lossy);
-	if (lossy)
-		return FFS_INVALIDPATH;
-
-	fid->size = i_size_read(inode);
-
-	p_dir->dir = fid->start_clu;
-	p_dir->size = (s32)(fid->size >> p_fs->cluster_size_bits);
-	p_dir->flags = fid->flags;
-
-	return FFS_SUCCESS;
-}
-
-/*
- *  File Operation Functions
- */
-static struct fs_func fat_fs_func = {
-	.alloc_cluster = fat_alloc_cluster,
-	.free_cluster = fat_free_cluster,
-	.count_used_clusters = fat_count_used_clusters,
-
-	.init_dir_entry = fat_init_dir_entry,
-	.init_ext_entry = fat_init_ext_entry,
-	.find_dir_entry = fat_find_dir_entry,
-	.delete_dir_entry = fat_delete_dir_entry,
-	.get_uni_name_from_ext_entry = fat_get_uni_name_from_ext_entry,
-	.count_ext_entries = fat_count_ext_entries,
-	.calc_num_entries = fat_calc_num_entries,
-
-	.get_entry_type = fat_get_entry_type,
-	.set_entry_type = fat_set_entry_type,
-	.get_entry_attr = fat_get_entry_attr,
-	.set_entry_attr = fat_set_entry_attr,
-	.get_entry_flag = fat_get_entry_flag,
-	.set_entry_flag = fat_set_entry_flag,
-	.get_entry_clu0 = fat_get_entry_clu0,
-	.set_entry_clu0 = fat_set_entry_clu0,
-	.get_entry_size = fat_get_entry_size,
-	.set_entry_size = fat_set_entry_size,
-	.get_entry_time = fat_get_entry_time,
-	.set_entry_time = fat_set_entry_time,
-};
-
-s32 fat16_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
-{
-	s32 num_reserved, num_root_sectors;
-	struct bpb16_t *p_bpb = (struct bpb16_t *)p_pbr->bpb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	if (p_bpb->num_fats == 0)
-		return FFS_FORMATERR;
-
-	num_root_sectors = GET16(p_bpb->num_root_entries) << DENTRY_SIZE_BITS;
-	num_root_sectors = ((num_root_sectors - 1) >>
-			    p_bd->sector_size_bits) + 1;
-
-	p_fs->sectors_per_clu = p_bpb->sectors_per_clu;
-	p_fs->sectors_per_clu_bits = ilog2(p_bpb->sectors_per_clu);
-	p_fs->cluster_size_bits = p_fs->sectors_per_clu_bits +
-				  p_bd->sector_size_bits;
-	p_fs->cluster_size = 1 << p_fs->cluster_size_bits;
-
-	p_fs->num_FAT_sectors = GET16(p_bpb->num_fat_sectors);
-
-	p_fs->FAT1_start_sector = p_fs->PBR_sector + GET16(p_bpb->num_reserved);
-	if (p_bpb->num_fats == 1)
-		p_fs->FAT2_start_sector = p_fs->FAT1_start_sector;
-	else
-		p_fs->FAT2_start_sector = p_fs->FAT1_start_sector +
-					  p_fs->num_FAT_sectors;
-
-	p_fs->root_start_sector = p_fs->FAT2_start_sector +
-				  p_fs->num_FAT_sectors;
-	p_fs->data_start_sector = p_fs->root_start_sector + num_root_sectors;
-
-	p_fs->num_sectors = GET16(p_bpb->num_sectors);
-	if (p_fs->num_sectors == 0)
-		p_fs->num_sectors = GET32(p_bpb->num_huge_sectors);
-
-	num_reserved = p_fs->data_start_sector - p_fs->PBR_sector;
-	p_fs->num_clusters = ((p_fs->num_sectors - num_reserved) >>
-			      p_fs->sectors_per_clu_bits) + 2;
-	/* because the cluster index starts with 2 */
-
-	if (p_fs->num_clusters < FAT12_THRESHOLD)
-		p_fs->vol_type = FAT12;
-	else
-		p_fs->vol_type = FAT16;
-	p_fs->vol_id = GET32(p_bpb->vol_serial);
-
-	p_fs->root_dir = 0;
-	p_fs->dentries_in_root = GET16(p_bpb->num_root_entries);
-	p_fs->dentries_per_clu = 1 << (p_fs->cluster_size_bits -
-				       DENTRY_SIZE_BITS);
-
-	p_fs->vol_flag = VOL_CLEAN;
-	p_fs->clu_srch_ptr = 2;
-	p_fs->used_clusters = UINT_MAX;
-
-	p_fs->fs_func = &fat_fs_func;
-
-	return FFS_SUCCESS;
-}
-
-s32 fat32_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
-{
-	s32 num_reserved;
-	struct bpb32_t *p_bpb = (struct bpb32_t *)p_pbr->bpb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	if (p_bpb->num_fats == 0)
-		return FFS_FORMATERR;
-
-	p_fs->sectors_per_clu = p_bpb->sectors_per_clu;
-	p_fs->sectors_per_clu_bits = ilog2(p_bpb->sectors_per_clu);
-	p_fs->cluster_size_bits = p_fs->sectors_per_clu_bits +
-				  p_bd->sector_size_bits;
-	p_fs->cluster_size = 1 << p_fs->cluster_size_bits;
-
-	p_fs->num_FAT_sectors = GET32(p_bpb->num_fat32_sectors);
-
-	p_fs->FAT1_start_sector = p_fs->PBR_sector + GET16(p_bpb->num_reserved);
-	if (p_bpb->num_fats == 1)
-		p_fs->FAT2_start_sector = p_fs->FAT1_start_sector;
-	else
-		p_fs->FAT2_start_sector = p_fs->FAT1_start_sector +
-					  p_fs->num_FAT_sectors;
-
-	p_fs->root_start_sector = p_fs->FAT2_start_sector +
-				  p_fs->num_FAT_sectors;
-	p_fs->data_start_sector = p_fs->root_start_sector;
-
-	p_fs->num_sectors = GET32(p_bpb->num_huge_sectors);
-	num_reserved = p_fs->data_start_sector - p_fs->PBR_sector;
-
-	p_fs->num_clusters = ((p_fs->num_sectors - num_reserved) >>
-			      p_fs->sectors_per_clu_bits) + 2;
-	/* because the cluster index starts with 2 */
-
-	p_fs->vol_type = FAT32;
-	p_fs->vol_id = GET32(p_bpb->vol_serial);
-
-	p_fs->root_dir = GET32(p_bpb->root_cluster);
-	p_fs->dentries_in_root = 0;
-	p_fs->dentries_per_clu = 1 << (p_fs->cluster_size_bits -
-				       DENTRY_SIZE_BITS);
-
-	p_fs->vol_flag = VOL_CLEAN;
-	p_fs->clu_srch_ptr = 2;
-	p_fs->used_clusters = UINT_MAX;
-
-	p_fs->fs_func = &fat_fs_func;
-
-	return FFS_SUCCESS;
-}
-
-static struct fs_func exfat_fs_func = {
-	.alloc_cluster = exfat_alloc_cluster,
-	.free_cluster = exfat_free_cluster,
-	.count_used_clusters = exfat_count_used_clusters,
-
-	.init_dir_entry = exfat_init_dir_entry,
-	.init_ext_entry = exfat_init_ext_entry,
-	.find_dir_entry = exfat_find_dir_entry,
-	.delete_dir_entry = exfat_delete_dir_entry,
-	.get_uni_name_from_ext_entry = exfat_get_uni_name_from_ext_entry,
-	.count_ext_entries = exfat_count_ext_entries,
-	.calc_num_entries = exfat_calc_num_entries,
-
-	.get_entry_type = exfat_get_entry_type,
-	.set_entry_type = exfat_set_entry_type,
-	.get_entry_attr = exfat_get_entry_attr,
-	.set_entry_attr = exfat_set_entry_attr,
-	.get_entry_flag = exfat_get_entry_flag,
-	.set_entry_flag = exfat_set_entry_flag,
-	.get_entry_clu0 = exfat_get_entry_clu0,
-	.set_entry_clu0 = exfat_set_entry_clu0,
-	.get_entry_size = exfat_get_entry_size,
-	.set_entry_size = exfat_set_entry_size,
-	.get_entry_time = exfat_get_entry_time,
-	.set_entry_time = exfat_set_entry_time,
-};
-
-s32 exfat_mount(struct super_block *sb, struct pbr_sector_t *p_pbr)
-{
-	struct bpbex_t *p_bpb = (struct bpbex_t *)p_pbr->bpb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	if (p_bpb->num_fats == 0)
-		return FFS_FORMATERR;
-
-	p_fs->sectors_per_clu = 1 << p_bpb->sectors_per_clu_bits;
-	p_fs->sectors_per_clu_bits = p_bpb->sectors_per_clu_bits;
-	p_fs->cluster_size_bits = p_fs->sectors_per_clu_bits +
-				  p_bd->sector_size_bits;
-	p_fs->cluster_size = 1 << p_fs->cluster_size_bits;
-
-	p_fs->num_FAT_sectors = GET32(p_bpb->fat_length);
-
-	p_fs->FAT1_start_sector = p_fs->PBR_sector + GET32(p_bpb->fat_offset);
-	if (p_bpb->num_fats == 1)
-		p_fs->FAT2_start_sector = p_fs->FAT1_start_sector;
-	else
-		p_fs->FAT2_start_sector = p_fs->FAT1_start_sector +
-					  p_fs->num_FAT_sectors;
-
-	p_fs->root_start_sector = p_fs->PBR_sector + GET32(p_bpb->clu_offset);
-	p_fs->data_start_sector = p_fs->root_start_sector;
-
-	p_fs->num_sectors = GET64(p_bpb->vol_length);
-	p_fs->num_clusters = GET32(p_bpb->clu_count) + 2;
-	/* because the cluster index starts with 2 */
-
-	p_fs->vol_type = EXFAT;
-	p_fs->vol_id = GET32(p_bpb->vol_serial);
-
-	p_fs->root_dir = GET32(p_bpb->root_cluster);
-	p_fs->dentries_in_root = 0;
-	p_fs->dentries_per_clu = 1 << (p_fs->cluster_size_bits -
-				       DENTRY_SIZE_BITS);
-
-	p_fs->vol_flag = (u32)GET16(p_bpb->vol_flags);
-	p_fs->clu_srch_ptr = 2;
-	p_fs->used_clusters = UINT_MAX;
-
-	p_fs->fs_func = &exfat_fs_func;
-
-	return FFS_SUCCESS;
-}
-
-s32 create_dir(struct inode *inode, struct chain_t *p_dir,
-	       struct uni_name_t *p_uniname, struct file_id_t *fid)
-{
-	s32 ret, dentry, num_entries;
-	u64 size;
-	struct chain_t clu;
-	struct dos_name_t dos_name, dot_name;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct fs_func *fs_func = p_fs->fs_func;
-
-	ret = get_num_entries_and_dos_name(sb, p_dir, p_uniname, &num_entries,
-					   &dos_name);
-	if (ret)
-		return ret;
-
-	/* find_empty_entry must be called before alloc_cluster */
-	dentry = find_empty_entry(inode, p_dir, num_entries);
-	if (dentry < 0)
-		return FFS_FULL;
-
-	clu.dir = CLUSTER_32(~0);
-	clu.size = 0;
-	clu.flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
-
-	/* (1) allocate a cluster */
-	ret = fs_func->alloc_cluster(sb, 1, &clu);
-	if (ret < 0)
-		return FFS_MEDIAERR;
-	else if (ret == 0)
-		return FFS_FULL;
-
-	ret = clear_cluster(sb, clu.dir);
-	if (ret != FFS_SUCCESS)
-		return ret;
-
-	if (p_fs->vol_type == EXFAT) {
-		size = p_fs->cluster_size;
-	} else {
-		size = 0;
-
-		/* initialize the . and .. entry
-		 * Information for . points to itself
-		 * Information for .. points to parent dir
-		 */
-
-		dot_name.name_case = 0x0;
-		memcpy(dot_name.name, DOS_CUR_DIR_NAME, DOS_NAME_LENGTH);
-
-		ret = fs_func->init_dir_entry(sb, &clu, 0, TYPE_DIR, clu.dir,
-					      0);
-		if (ret != FFS_SUCCESS)
-			return ret;
-
-		ret = fs_func->init_ext_entry(sb, &clu, 0, 1, NULL, &dot_name);
-		if (ret != FFS_SUCCESS)
-			return ret;
-
-		memcpy(dot_name.name, DOS_PAR_DIR_NAME, DOS_NAME_LENGTH);
-
-		if (p_dir->dir == p_fs->root_dir)
-			ret = fs_func->init_dir_entry(sb, &clu, 1, TYPE_DIR,
-						      CLUSTER_32(0), 0);
-		else
-			ret = fs_func->init_dir_entry(sb, &clu, 1, TYPE_DIR,
-						      p_dir->dir, 0);
-
-		if (ret != FFS_SUCCESS)
-			return ret;
-
-		ret = p_fs->fs_func->init_ext_entry(sb, &clu, 1, 1, NULL,
-						    &dot_name);
-		if (ret != FFS_SUCCESS)
-			return ret;
-	}
-
-	/* (2) update the directory entry */
-	/* make sub-dir entry in parent directory */
-	ret = fs_func->init_dir_entry(sb, p_dir, dentry, TYPE_DIR, clu.dir,
-				      size);
-	if (ret != FFS_SUCCESS)
-		return ret;
-
-	ret = fs_func->init_ext_entry(sb, p_dir, dentry, num_entries, p_uniname,
-				      &dos_name);
-	if (ret != FFS_SUCCESS)
-		return ret;
-
-	fid->dir.dir = p_dir->dir;
-	fid->dir.size = p_dir->size;
-	fid->dir.flags = p_dir->flags;
-	fid->entry = dentry;
-
-	fid->attr = ATTR_SUBDIR;
-	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
-	fid->size = size;
-	fid->start_clu = clu.dir;
-
-	fid->type = TYPE_DIR;
-	fid->rwoffset = 0;
-	fid->hint_last_off = -1;
-
-	return FFS_SUCCESS;
-}
-
-s32 create_file(struct inode *inode, struct chain_t *p_dir,
-		struct uni_name_t *p_uniname, u8 mode, struct file_id_t *fid)
-{
-	s32 ret, dentry, num_entries;
-	struct dos_name_t dos_name;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct fs_func *fs_func = p_fs->fs_func;
-
-	ret = get_num_entries_and_dos_name(sb, p_dir, p_uniname, &num_entries,
-					   &dos_name);
-	if (ret)
-		return ret;
-
-	/* find_empty_entry must be called before alloc_cluster() */
-	dentry = find_empty_entry(inode, p_dir, num_entries);
-	if (dentry < 0)
-		return FFS_FULL;
-
-	/* (1) update the directory entry */
-	/* fill the dos name directory entry information of the created file.
-	 * the first cluster is not determined yet. (0)
-	 */
-	ret = fs_func->init_dir_entry(sb, p_dir, dentry, TYPE_FILE | mode,
-				      CLUSTER_32(0), 0);
-	if (ret != FFS_SUCCESS)
-		return ret;
-
-	ret = fs_func->init_ext_entry(sb, p_dir, dentry, num_entries, p_uniname,
-				      &dos_name);
-	if (ret != FFS_SUCCESS)
-		return ret;
-
-	fid->dir.dir = p_dir->dir;
-	fid->dir.size = p_dir->size;
-	fid->dir.flags = p_dir->flags;
-	fid->entry = dentry;
-
-	fid->attr = ATTR_ARCHIVE | mode;
-	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
-	fid->size = 0;
-	fid->start_clu = CLUSTER_32(~0);
-
-	fid->type = TYPE_FILE;
-	fid->rwoffset = 0;
-	fid->hint_last_off = -1;
-
-	return FFS_SUCCESS;
-}
-
-void remove_file(struct inode *inode, struct chain_t *p_dir, s32 entry)
-{
-	s32 num_entries;
-	sector_t sector;
-	struct dentry_t *ep;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct fs_func *fs_func = p_fs->fs_func;
-
-	ep = get_entry_in_dir(sb, p_dir, entry, &sector);
-	if (!ep)
-		return;
-
-	buf_lock(sb, sector);
-
-	/* buf_lock() before call count_ext_entries() */
-	num_entries = fs_func->count_ext_entries(sb, p_dir, entry, ep);
-	if (num_entries < 0) {
-		buf_unlock(sb, sector);
-		return;
-	}
-	num_entries++;
-
-	buf_unlock(sb, sector);
-
-	/* (1) update the directory entry */
-	fs_func->delete_dir_entry(sb, p_dir, entry, 0, num_entries);
-}
-
-s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 oldentry,
-		struct uni_name_t *p_uniname, struct file_id_t *fid)
-{
-	s32 ret, newentry = -1, num_old_entries, num_new_entries;
-	sector_t sector_old, sector_new;
-	struct dos_name_t dos_name;
-	struct dentry_t *epold, *epnew;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct fs_func *fs_func = p_fs->fs_func;
-
-	epold = get_entry_in_dir(sb, p_dir, oldentry, &sector_old);
-	if (!epold)
-		return FFS_MEDIAERR;
-
-	buf_lock(sb, sector_old);
-
-	/* buf_lock() before call count_ext_entries() */
-	num_old_entries = fs_func->count_ext_entries(sb, p_dir, oldentry,
-						     epold);
-	if (num_old_entries < 0) {
-		buf_unlock(sb, sector_old);
-		return FFS_MEDIAERR;
-	}
-	num_old_entries++;
-
-	ret = get_num_entries_and_dos_name(sb, p_dir, p_uniname,
-					   &num_new_entries, &dos_name);
-	if (ret) {
-		buf_unlock(sb, sector_old);
-		return ret;
-	}
-
-	if (num_old_entries < num_new_entries) {
-		newentry = find_empty_entry(inode, p_dir, num_new_entries);
-		if (newentry < 0) {
-			buf_unlock(sb, sector_old);
-			return FFS_FULL;
-		}
-
-		epnew = get_entry_in_dir(sb, p_dir, newentry, &sector_new);
-		if (!epnew) {
-			buf_unlock(sb, sector_old);
-			return FFS_MEDIAERR;
-		}
-
-		memcpy((void *)epnew, (void *)epold, DENTRY_SIZE);
-		if (fs_func->get_entry_type(epnew) == TYPE_FILE) {
-			fs_func->set_entry_attr(epnew,
-						fs_func->get_entry_attr(epnew) |
-						ATTR_ARCHIVE);
-			fid->attr |= ATTR_ARCHIVE;
-		}
-		buf_modify(sb, sector_new);
-		buf_unlock(sb, sector_old);
-
-		if (p_fs->vol_type == EXFAT) {
-			epold = get_entry_in_dir(sb, p_dir, oldentry + 1,
-						 &sector_old);
-			buf_lock(sb, sector_old);
-			epnew = get_entry_in_dir(sb, p_dir, newentry + 1,
-						 &sector_new);
-
-			if (!epold || !epnew) {
-				buf_unlock(sb, sector_old);
-				return FFS_MEDIAERR;
-			}
-
-			memcpy((void *)epnew, (void *)epold, DENTRY_SIZE);
-			buf_modify(sb, sector_new);
-			buf_unlock(sb, sector_old);
-		}
-
-		ret = fs_func->init_ext_entry(sb, p_dir, newentry,
-					      num_new_entries, p_uniname,
-					      &dos_name);
-		if (ret != FFS_SUCCESS)
-			return ret;
-
-		fs_func->delete_dir_entry(sb, p_dir, oldentry, 0,
-					  num_old_entries);
-		fid->entry = newentry;
-	} else {
-		if (fs_func->get_entry_type(epold) == TYPE_FILE) {
-			fs_func->set_entry_attr(epold,
-						fs_func->get_entry_attr(epold) |
-						ATTR_ARCHIVE);
-			fid->attr |= ATTR_ARCHIVE;
-		}
-		buf_modify(sb, sector_old);
-		buf_unlock(sb, sector_old);
-
-		ret = fs_func->init_ext_entry(sb, p_dir, oldentry,
-					      num_new_entries, p_uniname,
-					      &dos_name);
-		if (ret != FFS_SUCCESS)
-			return ret;
-
-		fs_func->delete_dir_entry(sb, p_dir, oldentry, num_new_entries,
-					  num_old_entries);
-	}
-
-	return FFS_SUCCESS;
-}
-
-s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
-	      struct chain_t *p_newdir, struct uni_name_t *p_uniname,
-	      struct file_id_t *fid)
-{
-	s32 ret, newentry, num_new_entries, num_old_entries;
-	sector_t sector_mov, sector_new;
-	struct chain_t clu;
-	struct dos_name_t dos_name;
-	struct dentry_t *epmov, *epnew;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct fs_func *fs_func = p_fs->fs_func;
-
-	epmov = get_entry_in_dir(sb, p_olddir, oldentry, &sector_mov);
-	if (!epmov)
-		return FFS_MEDIAERR;
-
-	/* check if the source and target directory is the same */
-	if (fs_func->get_entry_type(epmov) == TYPE_DIR &&
-	    fs_func->get_entry_clu0(epmov) == p_newdir->dir)
-		return FFS_INVALIDPATH;
-
-	buf_lock(sb, sector_mov);
-
-	/* buf_lock() before call count_ext_entries() */
-	num_old_entries = fs_func->count_ext_entries(sb, p_olddir, oldentry,
-						     epmov);
-	if (num_old_entries < 0) {
-		buf_unlock(sb, sector_mov);
-		return FFS_MEDIAERR;
-	}
-	num_old_entries++;
-
-	ret = get_num_entries_and_dos_name(sb, p_newdir, p_uniname,
-					   &num_new_entries, &dos_name);
-	if (ret) {
-		buf_unlock(sb, sector_mov);
-		return ret;
-	}
-
-	newentry = find_empty_entry(inode, p_newdir, num_new_entries);
-	if (newentry < 0) {
-		buf_unlock(sb, sector_mov);
-		return FFS_FULL;
-	}
-
-	epnew = get_entry_in_dir(sb, p_newdir, newentry, &sector_new);
-	if (!epnew) {
-		buf_unlock(sb, sector_mov);
-		return FFS_MEDIAERR;
-	}
-
-	memcpy((void *)epnew, (void *)epmov, DENTRY_SIZE);
-	if (fs_func->get_entry_type(epnew) == TYPE_FILE) {
-		fs_func->set_entry_attr(epnew, fs_func->get_entry_attr(epnew) |
-					ATTR_ARCHIVE);
-		fid->attr |= ATTR_ARCHIVE;
-	}
-	buf_modify(sb, sector_new);
-	buf_unlock(sb, sector_mov);
-
-	if (p_fs->vol_type == EXFAT) {
-		epmov = get_entry_in_dir(sb, p_olddir, oldentry + 1,
-					 &sector_mov);
-		buf_lock(sb, sector_mov);
-		epnew = get_entry_in_dir(sb, p_newdir, newentry + 1,
-					 &sector_new);
-		if (!epmov || !epnew) {
-			buf_unlock(sb, sector_mov);
-			return FFS_MEDIAERR;
-		}
-
-		memcpy((void *)epnew, (void *)epmov, DENTRY_SIZE);
-		buf_modify(sb, sector_new);
-		buf_unlock(sb, sector_mov);
-	} else if (fs_func->get_entry_type(epnew) == TYPE_DIR) {
-		/* change ".." pointer to new parent dir */
-		clu.dir = fs_func->get_entry_clu0(epnew);
-		clu.flags = 0x01;
-
-		epnew = get_entry_in_dir(sb, &clu, 1, &sector_new);
-		if (!epnew)
-			return FFS_MEDIAERR;
-
-		if (p_newdir->dir == p_fs->root_dir)
-			fs_func->set_entry_clu0(epnew, CLUSTER_32(0));
-		else
-			fs_func->set_entry_clu0(epnew, p_newdir->dir);
-		buf_modify(sb, sector_new);
-	}
-
-	ret = fs_func->init_ext_entry(sb, p_newdir, newentry, num_new_entries,
-				      p_uniname, &dos_name);
-	if (ret != FFS_SUCCESS)
-		return ret;
-
-	fs_func->delete_dir_entry(sb, p_olddir, oldentry, 0, num_old_entries);
-
-	fid->dir.dir = p_newdir->dir;
-	fid->dir.size = p_newdir->size;
-	fid->dir.flags = p_newdir->flags;
-
-	fid->entry = newentry;
-
-	return FFS_SUCCESS;
-}
-
-/*
- *  Sector Read/Write Functions
- */
-
-int sector_read(struct super_block *sb, sector_t sec, struct buffer_head **bh,
-		bool read)
-{
-	s32 ret = FFS_MEDIAERR;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if ((sec >= (p_fs->PBR_sector + p_fs->num_sectors)) &&
-	    (p_fs->num_sectors > 0)) {
-		pr_err("[EXFAT] %s: out of range error! (sec = %llu)\n",
-		       __func__, (unsigned long long)sec);
-		fs_error(sb);
-		return ret;
-	}
-
-	if (!p_fs->dev_ejected) {
-		ret = bdev_read(sb, sec, bh, 1, read);
-		if (ret != FFS_SUCCESS)
-			p_fs->dev_ejected = 1;
-	}
-
-	return ret;
-}
-
-int sector_write(struct super_block *sb, sector_t sec, struct buffer_head *bh,
-		 bool sync)
-{
-	s32 ret = FFS_MEDIAERR;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if (sec >= (p_fs->PBR_sector + p_fs->num_sectors) &&
-	    (p_fs->num_sectors > 0)) {
-		pr_err("[EXFAT] %s: out of range error! (sec = %llu)\n",
-		       __func__, (unsigned long long)sec);
-		fs_error(sb);
-		return ret;
-	}
-
-	if (!bh) {
-		pr_err("[EXFAT] %s: bh is NULL!\n", __func__);
-		fs_error(sb);
-		return ret;
-	}
-
-	if (!p_fs->dev_ejected) {
-		ret = bdev_write(sb, sec, bh, 1, sync);
-		if (ret != FFS_SUCCESS)
-			p_fs->dev_ejected = 1;
-	}
-
-	return ret;
-}
-
-int multi_sector_read(struct super_block *sb, sector_t sec,
-		      struct buffer_head **bh, s32 num_secs, bool read)
-{
-	s32 ret = FFS_MEDIAERR;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if (((sec + num_secs) > (p_fs->PBR_sector + p_fs->num_sectors)) &&
-	    (p_fs->num_sectors > 0)) {
-		pr_err("[EXFAT] %s: out of range error! (sec = %llu, num_secs = %d)\n",
-		       __func__, (unsigned long long)sec, num_secs);
-		fs_error(sb);
-		return ret;
-	}
-
-	if (!p_fs->dev_ejected) {
-		ret = bdev_read(sb, sec, bh, num_secs, read);
-		if (ret != FFS_SUCCESS)
-			p_fs->dev_ejected = 1;
-	}
-
-	return ret;
-}
-
-int multi_sector_write(struct super_block *sb, sector_t sec,
-		       struct buffer_head *bh, s32 num_secs, bool sync)
-{
-	s32 ret = FFS_MEDIAERR;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if ((sec + num_secs) > (p_fs->PBR_sector + p_fs->num_sectors) &&
-	    (p_fs->num_sectors > 0)) {
-		pr_err("[EXFAT] %s: out of range error! (sec = %llu, num_secs = %d)\n",
-		       __func__, (unsigned long long)sec, num_secs);
-		fs_error(sb);
-		return ret;
-	}
-	if (!bh) {
-		pr_err("[EXFAT] %s: bh is NULL!\n", __func__);
-		fs_error(sb);
-		return ret;
-	}
-
-	if (!p_fs->dev_ejected) {
-		ret = bdev_write(sb, sec, bh, num_secs, sync);
-		if (ret != FFS_SUCCESS)
-			p_fs->dev_ejected = 1;
-	}
-
-	return ret;
-}
diff --git a/drivers/staging/exfat/exfat_fs.h b/drivers/staging/exfat/exfat_fs.h
new file mode 100644
index 000000000000..235cc68526bf
--- /dev/null
+++ b/drivers/staging/exfat/exfat_fs.h
@@ -0,0 +1,398 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ */
+
+#ifndef _EXFAT_FS_H
+#define _EXFAT_FS_H
+
+#include <linux/types.h>
+#include <linux/magic.h>
+#include <asm/byteorder.h>
+
+#ifndef MSDOS_SUPER_MAGIC
+#define MSDOS_SUPER_MAGIC       0x4d44          /* MD */
+#endif
+
+#ifndef EXFAT_SUPER_MAGIC
+#define EXFAT_SUPER_MAGIC       (0x2011BAB0UL)
+#endif /* EXFAT_SUPER_MAGIC */
+
+#ifndef EXFAT_SUPER_MAGIC
+#define EXFAT_SUPER_MAGIC       (0x5EC5DFA4UL)
+#endif /* EXFAT_SUPER_MAGIC */
+
+#define EXFAT_ROOT_INO          1
+
+/* FAT types */
+#define FAT12                   0x01    // FAT12
+#define FAT16                   0x0E    // Win95 FAT16 (LBA)
+#define FAT32                   0x0C    // Win95 FAT32 (LBA)
+#define EXFAT                   0x07    // exFAT
+
+/* directory file name */
+#define DOS_CUR_DIR_NAME        ".          "
+#define DOS_PAR_DIR_NAME        "..         "
+
+#ifdef __LITTLE_ENDIAN
+#define UNI_CUR_DIR_NAME        ".\0"
+#define UNI_PAR_DIR_NAME        ".\0.\0"
+#else
+#define UNI_CUR_DIR_NAME        "\0."
+#define UNI_PAR_DIR_NAME        "\0.\0."
+#endif
+
+/* file name lengths */
+/* NOTE :
+ * The maximum length of input or output is limited to 256 including NULL,
+ * But we allocate 4 extra bytes for utf8 translation reside in last position,
+ * because utf8 can uses memory upto 6 bytes per one character.
+ * Therefore, MAX_CHARSET_SIZE supports upto 6 bytes for utf8
+ */
+#define MAX_UNINAME_BUF_SIZE       (((MAX_NAME_LENGTH+1)*2)+4)
+#define MAX_DOSNAME_BUF_SIZE       ((DOS_NAME_LENGTH+2)+6)
+#define MAX_VFSNAME_BUF_SIZE       ((MAX_NAME_LENGTH+1)*MAX_CHARSET_SIZE)
+#define MAX_CHARSET_SIZE        6       // max size of multi-byte character
+#define MAX_NAME_LENGTH         255     // max len of file name excluding NULL
+#define DOS_NAME_LENGTH         11      // DOS file name length excluding NULL
+
+#define SECTOR_SIZE_BITS	9	/* VFS sector size is 512 bytes */
+
+#define DENTRY_SIZE		32	/* directory entry size */
+#define DENTRY_SIZE_BITS	5
+
+#define MAX_FAT_DENTRIES	65536   /* FAT allows 65536 directory entries */
+#define MAX_EXFAT_DENTRIES	8388608 /* exFAT allows 8388608(256MB) directory entries */
+
+/* PBR entries */
+#define PBR_SIGNATURE	0xAA55
+#define EXT_SIGNATURE	0xAA550000
+#define VOL_LABEL	"NO NAME    " /* size should be 11 */
+#define OEM_NAME	"MSWIN4.1"  /* size should be 8 */
+#define STR_FAT12	"FAT12   "  /* size should be 8 */
+#define STR_FAT16	"FAT16   "  /* size should be 8 */
+#define STR_FAT32	"FAT32   "  /* size should be 8 */
+#define STR_EXFAT	"EXFAT   "  /* size should be 8 */
+
+#define VOL_CLEAN	0x0000
+#define VOL_DIRTY	0x0002
+
+#define FAT_VOL_DIRTY	0x01
+
+/* max number of clusters */
+#define FAT12_THRESHOLD         4087        // 2^12 - 1 + 2 (clu 0 & 1)
+#define FAT16_THRESHOLD         65527       // 2^16 - 1 + 2
+#define FAT32_THRESHOLD         268435457   // 2^28 - 1 + 2
+#define EXFAT_THRESHOLD         268435457   // 2^28 - 1 + 2
+
+/* dentry types */
+#define MSDOS_DELETED		0xE5	/* deleted mark */
+#define MSDOS_UNUSED		0x00	/* end of directory */
+
+#define EXFAT_UNUSED		0x00	/* end of directory */
+#define IS_EXFAT_DELETED(x)	((x) < 0x80) /* deleted file (0x01~0x7F) */
+#define EXFAT_INVAL		0x80	/* invalid value */
+#define EXFAT_BITMAP		0x81	/* allocation bitmap */
+#define EXFAT_UPCASE		0x82	/* upcase table */
+#define EXFAT_VOLUME		0x83	/* volume label */
+#define EXFAT_FILE		0x85	/* file or dir */
+#define EXFAT_STREAM		0xC0	/* stream entry */
+#define EXFAT_NAME		0xC1	/* file name entry */
+#define EXFAT_ACL		0xC2	/* stream entry */
+
+/* specific flag */
+#define MSDOS_LAST_LFN		0x40
+
+/* file attributes */
+#define ATTR_NORMAL             0x0000
+#define ATTR_READONLY           0x0001
+#define ATTR_HIDDEN             0x0002
+#define ATTR_SYSTEM             0x0004
+#define ATTR_VOLUME             0x0008
+#define ATTR_SUBDIR             0x0010
+#define ATTR_ARCHIVE            0x0020
+#define ATTR_SYMLINK            0x0040
+#define ATTR_EXTEND             (ATTR_READONLY | ATTR_HIDDEN | ATTR_SYSTEM | \
+				 ATTR_VOLUME) /* 0x000F */
+
+#define ATTR_EXTEND_MASK        (ATTR_EXTEND | ATTR_SUBDIR | ATTR_ARCHIVE)
+#define ATTR_RWMASK             (ATTR_HIDDEN | ATTR_SYSTEM | ATTR_VOLUME | \
+				 ATTR_SUBDIR | ATTR_ARCHIVE | ATTR_SYMLINK)/* 0x007E */
+
+/* file creation modes */
+#define FM_REGULAR              0x00
+#define FM_SYMLINK              0x40
+
+/* time modes */
+#define TM_CREATE               0
+#define TM_MODIFY               1
+#define TM_ACCESS               2
+
+/* checksum types */
+#define CS_DIR_ENTRY            0
+#define CS_PBR_SECTOR           1
+#define CS_DEFAULT              2
+
+/*
+ * ioctl command
+ */
+#define EXFAT_IOCTL_GET_VOLUME_ID	_IOR('r', 0x12, __u32)
+#define EXFAT_IOCTL_PANIC               _IOC(_IOC_NONE, 'E', 0x17, sizeof(u32))
+
+/*
+ * ioctl command for debugging
+ */
+
+/*
+ * IOCTL code 'f' used by
+ *   - file systems typically #0~0x1F
+ *   - embedded terminal devices #128~
+ *   - exts for debugging purpose #99
+ * number 100 and 101 is available now but has possible conflicts
+ *
+ * NOTE : This is available only If CONFIG_EXFAT_DVBG_IOCTL is enabled.
+ *
+ */
+#define EXFAT_IOC_GET_DEBUGFLAGS       _IOR('f', 100, long)
+#define EXFAT_IOC_SET_DEBUGFLAGS       _IOW('f', 101, long)
+
+#define EXFAT_DEBUGFLAGS_INVALID_UMOUNT        0x01
+#define EXFAT_DEBUGFLAGS_ERROR_RW              0x02
+
+/* FAT12/16 BIOS parameter block (64 bytes) */
+typedef struct {
+	__u8	jmp_boot[3];
+	__u8	oem_name[8];
+
+	__u8	sect_size[2];		/* unaligned */
+	__u8	sect_per_clus;
+	__le16	num_reserved;		/* . */
+	__u8	num_fats;
+	__u8	num_root_entries[2];	/* unaligned */
+	__u8	num_sectors[2];		/* unaligned */
+	__u8	media_type;
+	__le16  num_fat_sectors;
+	__le16  sectors_in_track;
+	__le16  num_heads;
+	__le32	num_hid_sectors;	/* . */
+	__le32	num_huge_sectors;
+
+	__u8	phy_drv_no;
+	__u8	state;			/* used by WindowsNT for mount state */
+	__u8	ext_signature;
+	__u8	vol_serial[4];
+	__u8	vol_label[11];
+	__u8	vol_type[8];
+	__le16	dummy;
+} bpb16_t;
+
+/* FAT32 BIOS parameter block (64 bytes) */
+typedef struct {
+	__u8	jmp_boot[3];
+	__u8	oem_name[8];
+
+	__u8	sect_size[2];		/* unaligned */
+	__u8	sect_per_clus;
+	__le16	num_reserved;
+	__u8	num_fats;
+	__u8	num_root_entries[2];	/* unaligned */
+	__u8	num_sectors[2];		/* unaligned */
+	__u8	media_type;
+	__le16  num_fat_sectors;	/* zero */
+	__le16  sectors_in_track;
+	__le16  num_heads;
+	__le32	num_hid_sectors;	/* . */
+	__le32	num_huge_sectors;
+
+	__le32	num_fat32_sectors;
+	__le16	ext_flags;
+	__u8	fs_version[2];
+	__le32	root_cluster;		/* . */
+	__le16	fsinfo_sector;
+	__le16	backup_sector;
+	__le16	reserved[6];		/* . */
+} bpb32_t;
+
+/* FAT32 EXTEND BIOS parameter block (32 bytes) */
+typedef struct {
+	__u8	phy_drv_no;
+	__u8	state;			/* used by WindowsNT for mount state */
+	__u8	ext_signature;
+	__u8	vol_serial[4];
+	__u8	vol_label[11];
+	__u8	vol_type[8];
+	__le16  dummy[3];
+} bsx32_t;
+
+/* EXFAT BIOS parameter block (64 bytes) */
+typedef struct {
+	__u8	jmp_boot[3];
+	__u8	oem_name[8];
+	__u8	res_zero[53];
+} bpb64_t;
+
+/* EXFAT EXTEND BIOS parameter block (56 bytes) */
+typedef struct {
+	__le64	vol_offset;
+	__le64	vol_length;
+	__le32	fat_offset;
+	__le32	fat_length;
+	__le32	clu_offset;
+	__le32	clu_count;
+	__le32	root_cluster;
+	__le32	vol_serial;
+	__u8	fs_version[2];
+	__le16	vol_flags;
+	__u8	sect_size_bits;
+	__u8	sect_per_clus_bits;
+	__u8	num_fats;
+	__u8	phy_drv_no;
+	__u8	perc_in_use;
+	__u8	reserved2[7];
+} bsx64_t;
+
+/* FAT32 PBR (64 bytes) */
+typedef struct {
+	bpb16_t bpb;
+} pbr16_t;
+
+/* FAT32 PBR[BPB+BSX] (96 bytes) */
+typedef struct {
+	bpb32_t bpb;
+	bsx32_t bsx;
+} pbr32_t;
+
+/* EXFAT PBR[BPB+BSX] (120 bytes) */
+typedef struct {
+	bpb64_t bpb;
+	bsx64_t bsx;
+} pbr64_t;
+
+/* Common PBR[Partition Boot Record] (512 bytes) */
+typedef struct {
+	union {
+		__u8	raw[64];
+		bpb16_t f16;
+		bpb32_t f32;
+		bpb64_t f64;
+	} bpb;
+	union {
+		__u8	raw[56];
+		bsx32_t f32;
+		bsx64_t f64;
+	} bsx;
+	__u8	boot_code[390];
+	__le16	signature;
+} pbr_t;
+
+/* FAT32 filesystem information sector (512 bytes) */
+typedef struct {
+	__le32	signature1;              // aligned
+	__u8	reserved1[480];
+	__le32	signature2;              // aligned
+	__le32	free_cluster;            // aligned
+	__le32	next_cluster;            // aligned
+	__u8    reserved2[14];
+	__le16	signature3[2];
+} fat32_fsi_t;
+
+/* FAT directory entry (32 bytes) */
+typedef struct {
+	__u8       dummy[32];
+} DENTRY_T;
+
+typedef struct {
+	__u8	name[DOS_NAME_LENGTH];	/* 11 chars */
+	__u8	attr;
+	__u8	lcase;
+	__u8	create_time_ms;
+	__le16	create_time;             // aligned
+	__le16	create_date;             // aligned
+	__le16	access_date;             // aligned
+	__le16	start_clu_hi;            // aligned
+	__le16	modify_time;             // aligned
+	__le16	modify_date;             // aligned
+	__le16	start_clu_lo;            // aligned
+	__le32	size;                    // aligned
+} DOS_DENTRY_T;
+
+/* FAT extended directory entry (32 bytes) */
+typedef struct {
+	__u8	order;
+	__u8	unicode_0_4[10];
+	__u8	attr;
+	__u8	sysid;
+	__u8	checksum;
+	__le16	unicode_5_10[6];	// aligned
+	__le16	start_clu;		// aligned
+	__le16	unicode_11_12[2];	// aligned
+} EXT_DENTRY_T;
+
+/* EXFAT file directory entry (32 bytes) */
+typedef struct {
+	__u8	type;
+	__u8	num_ext;
+	__le16	checksum;		// aligned
+	__le16	attr;			// aligned
+	__le16	reserved1;
+	__le16	create_time;		// aligned
+	__le16	create_date;		// aligned
+	__le16	modify_time;		// aligned
+	__le16	modify_date;		// aligned
+	__le16	access_time;		// aligned
+	__le16	access_date;		// aligned
+	__u8	create_time_ms;
+	__u8	modify_time_ms;
+	__u8	access_time_ms;
+	__u8	reserved2[9];
+} FILE_DENTRY_T;
+
+/* EXFAT stream extension directory entry (32 bytes) */
+typedef struct {
+	__u8	type;
+	__u8	flags;
+	__u8	reserved1;
+	__u8	name_len;
+	__le16	name_hash;		// aligned
+	__le16	reserved2;
+	__le64	valid_size;		// aligned
+	__le32	reserved3;		// aligned
+	__le32	start_clu;		// aligned
+	__le64	size;			// aligned
+} STRM_DENTRY_T;
+
+/* EXFAT file name directory entry (32 bytes) */
+typedef struct {
+	__u8	type;
+	__u8	flags;
+	__le16	unicode_0_14[15];	// aligned
+} NAME_DENTRY_T;
+
+/* EXFAT allocation bitmap directory entry (32 bytes) */
+typedef struct {
+	__u8	type;
+	__u8	flags;
+	__u8	reserved[18];
+	__le32  start_clu;		// aligned
+	__le64	size;			// aligned
+} BMAP_DENTRY_T;
+
+/* EXFAT up-case table directory entry (32 bytes) */
+typedef struct {
+	__u8	type;
+	__u8	reserved1[3];
+	__le32	checksum;		// aligned
+	__u8	reserved2[12];
+	__le32	start_clu;		// aligned
+	__le64	size;			// aligned
+} CASE_DENTRY_T;
+
+/* EXFAT volume label directory entry (32 bytes) */
+typedef struct {
+	__u8	type;
+	__u8	label_len;
+	__le16	unicode_0_10[11];	// aligned
+	__u8	reserved[8];
+} VOLM_DENTRY_T;
+
+#endif /* _EXFAT_FS_H */
diff --git a/drivers/staging/exfat/exfat_nls.c b/drivers/staging/exfat/exfat_nls.c
deleted file mode 100644
index 03cb8290b5d2..000000000000
--- a/drivers/staging/exfat/exfat_nls.c
+++ /dev/null
@@ -1,404 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
- */
-
-#include <linux/string.h>
-#include <linux/nls.h>
-#include "exfat.h"
-
-static u16 bad_dos_chars[] = {
-	/* + , ; = [ ] */
-	0x002B, 0x002C, 0x003B, 0x003D, 0x005B, 0x005D,
-	0xFF0B, 0xFF0C, 0xFF1B, 0xFF1D, 0xFF3B, 0xFF3D,
-	0
-};
-
-static u16 bad_uni_chars[] = {
-	/* " * / : < > ? \ | */
-	0x0022,         0x002A, 0x002F, 0x003A,
-	0x003C, 0x003E, 0x003F, 0x005C, 0x007C,
-	0
-};
-
-static int convert_ch_to_uni(struct nls_table *nls, u16 *uni, u8 *ch,
-			     bool *lossy)
-{
-	int len;
-
-	*uni = 0x0;
-
-	if (ch[0] < 0x80) {
-		*uni = (u16)ch[0];
-		return 1;
-	}
-
-	len = nls->char2uni(ch, NLS_MAX_CHARSET_SIZE, uni);
-	if (len < 0) {
-		/* conversion failed */
-		pr_info("%s: fail to use nls\n", __func__);
-		if (lossy)
-			*lossy = true;
-		*uni = (u16)'_';
-		if (!strcmp(nls->charset, "utf8"))
-			return 1;
-		else
-			return 2;
-	}
-
-	return len;
-}
-
-static int convert_uni_to_ch(struct nls_table *nls, u8 *ch, u16 uni,
-			     bool *lossy)
-{
-	int len;
-
-	ch[0] = 0x0;
-
-	if (uni < 0x0080) {
-		ch[0] = (u8)uni;
-		return 1;
-	}
-
-	len = nls->uni2char(uni, ch, NLS_MAX_CHARSET_SIZE);
-	if (len < 0) {
-		/* conversion failed */
-		pr_info("%s: fail to use nls\n", __func__);
-		if (lossy)
-			*lossy = true;
-		ch[0] = '_';
-		return 1;
-	}
-
-	return len;
-}
-
-u16 nls_upper(struct super_block *sb, u16 a)
-{
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	if (EXFAT_SB(sb)->options.casesensitive)
-		return a;
-	if (p_fs->vol_utbl && p_fs->vol_utbl[get_col_index(a)])
-		return p_fs->vol_utbl[get_col_index(a)][get_row_index(a)];
-	else
-		return a;
-}
-
-static u16 *nls_wstrchr(u16 *str, u16 wchar)
-{
-	while (*str) {
-		if (*(str++) == wchar)
-			return str;
-	}
-
-	return NULL;
-}
-
-int nls_dosname_cmp(struct super_block *sb, u8 *a, u8 *b)
-{
-	return strncmp(a, b, DOS_NAME_LENGTH);
-}
-
-int nls_uniname_cmp(struct super_block *sb, u16 *a, u16 *b)
-{
-	int i;
-
-	for (i = 0; i < MAX_NAME_LENGTH; i++, a++, b++) {
-		if (nls_upper(sb, *a) != nls_upper(sb, *b))
-			return 1;
-		if (*a == 0x0)
-			return 0;
-	}
-	return 0;
-}
-
-void nls_uniname_to_dosname(struct super_block *sb,
-			    struct dos_name_t *p_dosname,
-			    struct uni_name_t *p_uniname, bool *p_lossy)
-{
-	int i, j, len;
-	bool lossy = false;
-	u8 buf[MAX_CHARSET_SIZE];
-	u8 lower = 0, upper = 0;
-	u8 *dosname = p_dosname->name;
-	u16 *uniname = p_uniname->name;
-	u16 *p, *last_period;
-	struct nls_table *nls = EXFAT_SB(sb)->nls_disk;
-
-	for (i = 0; i < DOS_NAME_LENGTH; i++)
-		*(dosname + i) = ' ';
-
-	if (!nls_uniname_cmp(sb, uniname, (u16 *)UNI_CUR_DIR_NAME)) {
-		*(dosname) = '.';
-		p_dosname->name_case = 0x0;
-		if (p_lossy)
-			*p_lossy = false;
-		return;
-	}
-
-	if (!nls_uniname_cmp(sb, uniname, (u16 *)UNI_PAR_DIR_NAME)) {
-		*(dosname) = '.';
-		*(dosname + 1) = '.';
-		p_dosname->name_case = 0x0;
-		if (p_lossy)
-			*p_lossy = false;
-		return;
-	}
-
-	/* search for the last embedded period */
-	last_period = NULL;
-	for (p = uniname; *p; p++) {
-		if (*p == (u16)'.')
-			last_period = p;
-	}
-
-	i = 0;
-	while (i < DOS_NAME_LENGTH) {
-		if (i == 8) {
-			if (!last_period)
-				break;
-
-			if (uniname <= last_period) {
-				if (uniname < last_period)
-					lossy = true;
-				uniname = last_period + 1;
-			}
-		}
-
-		if (*uniname == (u16)'\0') {
-			break;
-		} else if (*uniname == (u16)' ') {
-			lossy = true;
-		} else if (*uniname == (u16)'.') {
-			if (uniname < last_period)
-				lossy = true;
-			else
-				i = 8;
-		} else if (nls_wstrchr(bad_dos_chars, *uniname)) {
-			lossy = true;
-			*(dosname + i) = '_';
-			i++;
-		} else {
-			len = convert_uni_to_ch(nls, buf, *uniname, &lossy);
-
-			if (len > 1) {
-				if ((i >= 8) && ((i + len) > DOS_NAME_LENGTH))
-					break;
-
-				if ((i < 8) && ((i + len) > 8)) {
-					i = 8;
-					continue;
-				}
-
-				lower = 0xFF;
-
-				for (j = 0; j < len; j++, i++)
-					*(dosname + i) = *(buf + j);
-			} else { /* len == 1 */
-				if ((*buf >= 'a') && (*buf <= 'z')) {
-					*(dosname + i) = *buf - ('a' - 'A');
-
-					if (i < 8)
-						lower |= 0x08;
-					else
-						lower |= 0x10;
-				} else if ((*buf >= 'A') && (*buf <= 'Z')) {
-					*(dosname + i) = *buf;
-
-					if (i < 8)
-						upper |= 0x08;
-					else
-						upper |= 0x10;
-				} else {
-					*(dosname + i) = *buf;
-				}
-				i++;
-			}
-		}
-
-		uniname++;
-	}
-
-	if (*dosname == 0xE5)
-		*dosname = 0x05;
-
-	if (*uniname != 0x0)
-		lossy = true;
-
-	if (upper & lower)
-		p_dosname->name_case = 0xFF;
-	else
-		p_dosname->name_case = lower;
-
-	if (p_lossy)
-		*p_lossy = lossy;
-}
-
-void nls_dosname_to_uniname(struct super_block *sb,
-			    struct uni_name_t *p_uniname,
-			    struct dos_name_t *p_dosname)
-{
-	int i = 0, j, n = 0;
-	u8 buf[DOS_NAME_LENGTH + 2];
-	u8 *dosname = p_dosname->name;
-	u16 *uniname = p_uniname->name;
-	struct nls_table *nls = EXFAT_SB(sb)->nls_disk;
-
-	if (*dosname == 0x05) {
-		*buf = 0xE5;
-		i++;
-		n++;
-	}
-
-	for (; i < 8; i++, n++) {
-		if (*(dosname + i) == ' ')
-			break;
-
-		if ((*(dosname + i) >= 'A') && (*(dosname + i) <= 'Z') &&
-		    (p_dosname->name_case & 0x08))
-			*(buf + n) = *(dosname + i) + ('a' - 'A');
-		else
-			*(buf + n) = *(dosname + i);
-	}
-	if (*(dosname + 8) != ' ') {
-		*(buf + n) = '.';
-		n++;
-	}
-
-	for (i = 8; i < DOS_NAME_LENGTH; i++, n++) {
-		if (*(dosname + i) == ' ')
-			break;
-
-		if ((*(dosname + i) >= 'A') && (*(dosname + i) <= 'Z') &&
-		    (p_dosname->name_case & 0x10))
-			*(buf + n) = *(dosname + i) + ('a' - 'A');
-		else
-			*(buf + n) = *(dosname + i);
-	}
-	*(buf + n) = '\0';
-
-	i = 0;
-	j = 0;
-	while (j < (MAX_NAME_LENGTH - 1)) {
-		if (*(buf + i) == '\0')
-			break;
-
-		i += convert_ch_to_uni(nls, uniname, (buf + i), NULL);
-
-		uniname++;
-		j++;
-	}
-
-	*uniname = (u16)'\0';
-}
-
-void nls_uniname_to_cstring(struct super_block *sb, u8 *p_cstring,
-			    struct uni_name_t *p_uniname)
-{
-	int i, j, len;
-	u8 buf[MAX_CHARSET_SIZE];
-	u16 *uniname = p_uniname->name;
-	struct nls_table *nls = EXFAT_SB(sb)->nls_io;
-
-	if (!nls) {
-		len = utf16s_to_utf8s(uniname, MAX_NAME_LENGTH,
-				      UTF16_HOST_ENDIAN, p_cstring,
-				      MAX_NAME_LENGTH);
-		p_cstring[len] = 0;
-		return;
-	}
-
-	i = 0;
-	while (i < (MAX_NAME_LENGTH - 1)) {
-		if (*uniname == (u16)'\0')
-			break;
-
-		len = convert_uni_to_ch(nls, buf, *uniname, NULL);
-
-		if (len > 1) {
-			for (j = 0; j < len; j++)
-				*p_cstring++ = (char)*(buf + j);
-		} else { /* len == 1 */
-			*p_cstring++ = (char)*buf;
-		}
-
-		uniname++;
-		i++;
-	}
-
-	*p_cstring = '\0';
-}
-
-void nls_cstring_to_uniname(struct super_block *sb,
-			    struct uni_name_t *p_uniname, u8 *p_cstring,
-			    bool *p_lossy)
-{
-	int i, j;
-	bool lossy = false;
-	u8 *end_of_name;
-	u8 upname[MAX_NAME_LENGTH * 2];
-	u16 *uniname = p_uniname->name;
-	struct nls_table *nls = EXFAT_SB(sb)->nls_io;
-
-	/* strip all trailing spaces */
-	end_of_name = p_cstring + strlen(p_cstring);
-
-	while (*(--end_of_name) == ' ') {
-		if (end_of_name < p_cstring)
-			break;
-	}
-	*(++end_of_name) = '\0';
-
-	if (strcmp(p_cstring, ".") && strcmp(p_cstring, "..")) {
-		/* strip all trailing periods */
-		while (*(--end_of_name) == '.') {
-			if (end_of_name < p_cstring)
-				break;
-		}
-		*(++end_of_name) = '\0';
-	}
-
-	if (*p_cstring == '\0')
-		lossy = true;
-
-	if (!nls) {
-		i = utf8s_to_utf16s(p_cstring, MAX_NAME_LENGTH,
-				    UTF16_HOST_ENDIAN, uniname,
-				    MAX_NAME_LENGTH);
-		for (j = 0; j < i; j++)
-			SET16_A(upname + j * 2, nls_upper(sb, uniname[j]));
-		uniname[i] = '\0';
-	} else {
-		i = 0;
-		j = 0;
-		while (j < (MAX_NAME_LENGTH - 1)) {
-			if (*(p_cstring + i) == '\0')
-				break;
-
-			i += convert_ch_to_uni(nls, uniname,
-					       (u8 *)(p_cstring + i), &lossy);
-
-			if ((*uniname < 0x0020) ||
-			    nls_wstrchr(bad_uni_chars, *uniname))
-				lossy = true;
-
-			SET16_A(upname + j * 2, nls_upper(sb, *uniname));
-
-			uniname++;
-			j++;
-		}
-
-		if (*(p_cstring + i) != '\0')
-			lossy = true;
-		*uniname = (u16)'\0';
-	}
-
-	p_uniname->name_len = j;
-	p_uniname->name_hash = calc_checksum_2byte(upname, j << 1, 0,
-						   CS_DEFAULT);
-
-	if (p_lossy)
-		*p_lossy = lossy;
-}
diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
deleted file mode 100644
index 5f6caee819a6..000000000000
--- a/drivers/staging/exfat/exfat_super.c
+++ /dev/null
@@ -1,4049 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
- */
-
-#include <linux/module.h>
-#include <linux/init.h>
-#include <linux/time.h>
-#include <linux/slab.h>
-#include <linux/seq_file.h>
-#include <linux/pagemap.h>
-#include <linux/mpage.h>
-#include <linux/buffer_head.h>
-#include <linux/exportfs.h>
-#include <linux/mount.h>
-#include <linux/vfs.h>
-#include <linux/aio.h>
-#include <linux/iversion.h>
-#include <linux/parser.h>
-#include <linux/uio.h>
-#include <linux/writeback.h>
-#include <linux/log2.h>
-#include <linux/hash.h>
-#include <linux/backing-dev.h>
-#include <linux/sched.h>
-#include <linux/fs_struct.h>
-#include <linux/namei.h>
-
-#include <linux/string.h>
-#include <linux/nls.h>
-#include <linux/mutex.h>
-#include <linux/swap.h>
-
-#define EXFAT_VERSION  "1.3.0"
-
-#include "exfat.h"
-
-static struct kmem_cache *exfat_inode_cachep;
-
-static int exfat_default_codepage = CONFIG_EXFAT_DEFAULT_CODEPAGE;
-static char exfat_default_iocharset[] = CONFIG_EXFAT_DEFAULT_IOCHARSET;
-
-#define INC_IVERSION(x) (inode_inc_iversion(x))
-#define GET_IVERSION(x) (inode_peek_iversion_raw(x))
-#define SET_IVERSION(x, y) (inode_set_iversion(x, y))
-
-static struct inode *exfat_iget(struct super_block *sb, loff_t i_pos);
-static int exfat_sync_inode(struct inode *inode);
-static struct inode *exfat_build_inode(struct super_block *sb,
-				       struct file_id_t *fid, loff_t i_pos);
-static int exfat_write_inode(struct inode *inode,
-			     struct writeback_control *wbc);
-static void exfat_write_super(struct super_block *sb);
-
-#define UNIX_SECS_1980    315532800L
-#define UNIX_SECS_2108    4354819200L
-
-/* Convert a FAT time/date pair to a UNIX date (seconds since 1 1 70). */
-static void exfat_time_fat2unix(struct timespec64 *ts, struct date_time_t *tp)
-{
-	ts->tv_sec = mktime64(tp->Year + 1980, tp->Month + 1, tp->Day,
-			      tp->Hour, tp->Minute, tp->Second);
-
-	ts->tv_nsec = tp->MilliSecond * NSEC_PER_MSEC;
-}
-
-/* Convert linear UNIX date to a FAT time/date pair. */
-static void exfat_time_unix2fat(struct timespec64 *ts, struct date_time_t *tp)
-{
-	time64_t second = ts->tv_sec;
-	struct tm tm;
-
-	time64_to_tm(second, 0, &tm);
-
-	if (second < UNIX_SECS_1980) {
-		tp->MilliSecond = 0;
-		tp->Second	= 0;
-		tp->Minute	= 0;
-		tp->Hour	= 0;
-		tp->Day		= 1;
-		tp->Month	= 1;
-		tp->Year	= 0;
-		return;
-	}
-
-	if (second >= UNIX_SECS_2108) {
-		tp->MilliSecond = 999;
-		tp->Second	= 59;
-		tp->Minute	= 59;
-		tp->Hour	= 23;
-		tp->Day		= 31;
-		tp->Month	= 12;
-		tp->Year	= 127;
-		return;
-	}
-
-	tp->MilliSecond = ts->tv_nsec / NSEC_PER_MSEC;
-	tp->Second	= tm.tm_sec;
-	tp->Minute	= tm.tm_min;
-	tp->Hour	= tm.tm_hour;
-	tp->Day		= tm.tm_mday;
-	tp->Month	= tm.tm_mon + 1;
-	tp->Year	= tm.tm_year + 1900 - 1980;
-}
-
-struct timestamp_t *tm_current(struct timestamp_t *tp)
-{
-	time64_t second = ktime_get_real_seconds();
-	struct tm tm;
-
-	time64_to_tm(second, 0, &tm);
-
-	if (second < UNIX_SECS_1980) {
-		tp->sec  = 0;
-		tp->min  = 0;
-		tp->hour = 0;
-		tp->day  = 1;
-		tp->mon  = 1;
-		tp->year = 0;
-		return tp;
-	}
-
-	if (second >= UNIX_SECS_2108) {
-		tp->sec  = 59;
-		tp->min  = 59;
-		tp->hour = 23;
-		tp->day  = 31;
-		tp->mon  = 12;
-		tp->year = 127;
-		return tp;
-	}
-
-	tp->sec  = tm.tm_sec;
-	tp->min  = tm.tm_min;
-	tp->hour = tm.tm_hour;
-	tp->day  = tm.tm_mday;
-	tp->mon  = tm.tm_mon + 1;
-	tp->year = tm.tm_year + 1900 - 1980;
-
-	return tp;
-}
-
-static void __lock_super(struct super_block *sb)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-
-	mutex_lock(&sbi->s_lock);
-}
-
-static void __unlock_super(struct super_block *sb)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-
-	mutex_unlock(&sbi->s_lock);
-}
-
-static int __is_sb_dirty(struct super_block *sb)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-
-	return sbi->s_dirt;
-}
-
-static void __set_sb_clean(struct super_block *sb)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-
-	sbi->s_dirt = 0;
-}
-
-static int __exfat_revalidate(struct dentry *dentry)
-{
-	return 0;
-}
-
-static int exfat_revalidate(struct dentry *dentry, unsigned int flags)
-{
-	if (flags & LOOKUP_RCU)
-		return -ECHILD;
-
-	if (dentry->d_inode)
-		return 1;
-	return __exfat_revalidate(dentry);
-}
-
-static int exfat_revalidate_ci(struct dentry *dentry, unsigned int flags)
-{
-	if (flags & LOOKUP_RCU)
-		return -ECHILD;
-
-	if (dentry->d_inode)
-		return 1;
-
-	if (!flags)
-		return 0;
-
-	if (flags & (LOOKUP_CREATE | LOOKUP_RENAME_TARGET))
-		return 0;
-
-	return __exfat_revalidate(dentry);
-}
-
-static unsigned int __exfat_striptail_len(unsigned int len, const char *name)
-{
-	while (len && name[len - 1] == '.')
-		len--;
-	return len;
-}
-
-static unsigned int exfat_striptail_len(const struct qstr *qstr)
-{
-	return __exfat_striptail_len(qstr->len, qstr->name);
-}
-
-static int exfat_d_hash(const struct dentry *dentry, struct qstr *qstr)
-{
-	qstr->hash = full_name_hash(dentry, qstr->name,
-				    exfat_striptail_len(qstr));
-	return 0;
-}
-
-static int exfat_d_hashi(const struct dentry *dentry, struct qstr *qstr)
-{
-	struct super_block *sb = dentry->d_sb;
-	const unsigned char *name;
-	unsigned int len;
-	unsigned long hash;
-
-	name = qstr->name;
-	len = exfat_striptail_len(qstr);
-
-	hash = init_name_hash(dentry);
-	while (len--)
-		hash = partial_name_hash(nls_upper(sb, *name++), hash);
-	qstr->hash = end_name_hash(hash);
-
-	return 0;
-}
-
-static int exfat_cmpi(const struct dentry *dentry, unsigned int len,
-		      const char *str, const struct qstr *name)
-{
-	struct nls_table *t = EXFAT_SB(dentry->d_sb)->nls_io;
-	unsigned int alen, blen;
-
-	alen = exfat_striptail_len(name);
-	blen = __exfat_striptail_len(len, str);
-	if (alen == blen) {
-		if (!t) {
-			if (strncasecmp(name->name, str, alen) == 0)
-				return 0;
-		} else {
-			if (nls_strnicmp(t, name->name, str, alen) == 0)
-				return 0;
-		}
-	}
-	return 1;
-}
-
-static int exfat_cmp(const struct dentry *dentry, unsigned int len,
-		     const char *str, const struct qstr *name)
-{
-	unsigned int alen, blen;
-
-	alen = exfat_striptail_len(name);
-	blen = __exfat_striptail_len(len, str);
-	if (alen == blen) {
-		if (strncmp(name->name, str, alen) == 0)
-			return 0;
-	}
-	return 1;
-}
-
-static const struct dentry_operations exfat_ci_dentry_ops = {
-	.d_revalidate   = exfat_revalidate_ci,
-	.d_hash         = exfat_d_hashi,
-	.d_compare      = exfat_cmpi,
-};
-
-static const struct dentry_operations exfat_dentry_ops = {
-	.d_revalidate   = exfat_revalidate,
-	.d_hash         = exfat_d_hash,
-	.d_compare      = exfat_cmp,
-};
-
-static DEFINE_SEMAPHORE(z_sem);
-
-static inline void fs_sync(struct super_block *sb, bool do_sync)
-{
-	if (do_sync)
-		bdev_sync(sb);
-}
-
-/*
- * If ->i_mode can't hold S_IWUGO (i.e. ATTR_RO), we use ->i_attrs to
- * save ATTR_RO instead of ->i_mode.
- *
- * If it's directory and !sbi->options.rodir, ATTR_RO isn't read-only
- * bit, it's just used as flag for app.
- */
-static inline int exfat_mode_can_hold_ro(struct inode *inode)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);
-
-	if (S_ISDIR(inode->i_mode))
-		return 0;
-
-	if ((~sbi->options.fs_fmask) & 0222)
-		return 1;
-	return 0;
-}
-
-/* Convert attribute bits and a mask to the UNIX mode. */
-static inline mode_t exfat_make_mode(struct exfat_sb_info *sbi, u32 attr,
-				     mode_t mode)
-{
-	if ((attr & ATTR_READONLY) && !(attr & ATTR_SUBDIR))
-		mode &= ~0222;
-
-	if (attr & ATTR_SUBDIR)
-		return (mode & ~sbi->options.fs_dmask) | S_IFDIR;
-	else if (attr & ATTR_SYMLINK)
-		return (mode & ~sbi->options.fs_dmask) | S_IFLNK;
-	else
-		return (mode & ~sbi->options.fs_fmask) | S_IFREG;
-}
-
-/* Return the FAT attribute byte for this inode */
-static inline u32 exfat_make_attr(struct inode *inode)
-{
-	if (exfat_mode_can_hold_ro(inode) && !(inode->i_mode & 0222))
-		return (EXFAT_I(inode)->fid.attr) | ATTR_READONLY;
-	else
-		return EXFAT_I(inode)->fid.attr;
-}
-
-static inline void exfat_save_attr(struct inode *inode, u32 attr)
-{
-	if (exfat_mode_can_hold_ro(inode))
-		EXFAT_I(inode)->fid.attr = attr & ATTR_RWMASK;
-	else
-		EXFAT_I(inode)->fid.attr = attr & (ATTR_RWMASK | ATTR_READONLY);
-}
-
-static int ffsMountVol(struct super_block *sb)
-{
-	int i, ret;
-	struct pbr_sector_t *p_pbr;
-	struct buffer_head *tmp_bh = NULL;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	pr_info("[EXFAT] trying to mount...\n");
-
-	down(&z_sem);
-
-	buf_init(sb);
-
-	sema_init(&p_fs->v_sem, 1);
-	p_fs->dev_ejected = 0;
-
-	/* open the block device */
-	bdev_open(sb);
-
-	if (p_bd->sector_size < sb->s_blocksize) {
-		ret = FFS_MEDIAERR;
-		goto out;
-	}
-	if (p_bd->sector_size > sb->s_blocksize)
-		sb_set_blocksize(sb, p_bd->sector_size);
-
-	/* read Sector 0 */
-	if (sector_read(sb, 0, &tmp_bh, 1) != FFS_SUCCESS) {
-		ret = FFS_MEDIAERR;
-		goto out;
-	}
-
-	p_fs->PBR_sector = 0;
-
-	p_pbr = (struct pbr_sector_t *)tmp_bh->b_data;
-
-	/* check the validity of PBR */
-	if (GET16_A(p_pbr->signature) != PBR_SIGNATURE) {
-		brelse(tmp_bh);
-		bdev_close(sb);
-		ret = FFS_FORMATERR;
-		goto out;
-	}
-
-	/* fill fs_struct */
-	for (i = 0; i < 53; i++)
-		if (p_pbr->bpb[i])
-			break;
-
-	if (i < 53) {
-#ifdef CONFIG_EXFAT_DONT_MOUNT_VFAT
-		ret = -EINVAL;
-		printk(KERN_INFO "EXFAT: Attempted to mount VFAT filesystem\n");
-		goto out;
-#else
-		if (GET16(p_pbr->bpb + 11)) /* num_fat_sectors */
-			ret = fat16_mount(sb, p_pbr);
-		else
-			ret = fat32_mount(sb, p_pbr);
-#endif
-	} else {
-		ret = exfat_mount(sb, p_pbr);
-	}
-
-	brelse(tmp_bh);
-
-	if (ret) {
-		bdev_close(sb);
-		goto out;
-	}
-
-	if (p_fs->vol_type == EXFAT) {
-		ret = load_alloc_bitmap(sb);
-		if (ret) {
-			bdev_close(sb);
-			goto out;
-		}
-		ret = load_upcase_table(sb);
-		if (ret) {
-			free_alloc_bitmap(sb);
-			bdev_close(sb);
-			goto out;
-		}
-	}
-
-	if (p_fs->dev_ejected) {
-		if (p_fs->vol_type == EXFAT) {
-			free_upcase_table(sb);
-			free_alloc_bitmap(sb);
-		}
-		bdev_close(sb);
-		ret = FFS_MEDIAERR;
-		goto out;
-	}
-
-	pr_info("[EXFAT] mounted successfully\n");
-
-out:
-	up(&z_sem);
-
-	return ret;
-}
-
-static int ffsUmountVol(struct super_block *sb)
-{
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	int err = FFS_SUCCESS;
-
-	pr_info("[EXFAT] trying to unmount...\n");
-
-	down(&z_sem);
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	fs_sync(sb, false);
-	fs_set_vol_flags(sb, VOL_CLEAN);
-
-	if (p_fs->vol_type == EXFAT) {
-		free_upcase_table(sb);
-		free_alloc_bitmap(sb);
-	}
-
-	FAT_release_all(sb);
-	buf_release_all(sb);
-
-	/* close the block device */
-	bdev_close(sb);
-
-	if (p_fs->dev_ejected) {
-		pr_info("[EXFAT] unmounted with media errors. Device is already ejected.\n");
-		err = FFS_MEDIAERR;
-	}
-
-	buf_shutdown(sb);
-
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-	up(&z_sem);
-
-	pr_info("[EXFAT] unmounted successfully\n");
-
-	return err;
-}
-
-static int ffsGetVolInfo(struct super_block *sb, struct vol_info_t *info)
-{
-	int err = FFS_SUCCESS;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	/* check the validity of pointer parameters */
-	if (!info)
-		return FFS_ERROR;
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	if (p_fs->used_clusters == UINT_MAX)
-		p_fs->used_clusters = p_fs->fs_func->count_used_clusters(sb);
-
-	info->FatType = p_fs->vol_type;
-	info->ClusterSize = p_fs->cluster_size;
-	info->NumClusters = p_fs->num_clusters - 2; /* clu 0 & 1 */
-	info->UsedClusters = p_fs->used_clusters;
-	info->FreeClusters = info->NumClusters - info->UsedClusters;
-
-	if (p_fs->dev_ejected)
-		err = FFS_MEDIAERR;
-
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return err;
-}
-
-static int ffsSyncVol(struct super_block *sb, bool do_sync)
-{
-	int err = FFS_SUCCESS;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	/* synchronize the file system */
-	fs_sync(sb, do_sync);
-	fs_set_vol_flags(sb, VOL_CLEAN);
-
-	if (p_fs->dev_ejected)
-		err = FFS_MEDIAERR;
-
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return err;
-}
-
-/*----------------------------------------------------------------------*/
-/*  File Operation Functions                                            */
-/*----------------------------------------------------------------------*/
-
-static int ffsLookupFile(struct inode *inode, char *path, struct file_id_t *fid)
-{
-	int ret, dentry, num_entries;
-	struct chain_t dir;
-	struct uni_name_t uni_name;
-	struct dos_name_t dos_name;
-	struct dentry_t *ep, *ep2;
-	struct entry_set_cache_t *es = NULL;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	pr_debug("%s entered\n", __func__);
-
-	/* check the validity of pointer parameters */
-	if (!fid || !path || (*path == '\0'))
-		return FFS_ERROR;
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	/* check the validity of directory name in the given pathname */
-	ret = resolve_path(inode, path, &dir, &uni_name);
-	if (ret)
-		goto out;
-
-	ret = get_num_entries_and_dos_name(sb, &dir, &uni_name, &num_entries,
-					   &dos_name);
-	if (ret)
-		goto out;
-
-	/* search the file name for directories */
-	dentry = p_fs->fs_func->find_dir_entry(sb, &dir, &uni_name, num_entries,
-					       &dos_name, TYPE_ALL);
-	if (dentry < -1) {
-		ret = FFS_NOTFOUND;
-		goto out;
-	}
-
-	fid->dir.dir = dir.dir;
-	fid->dir.size = dir.size;
-	fid->dir.flags = dir.flags;
-	fid->entry = dentry;
-
-	if (dentry == -1) {
-		fid->type = TYPE_DIR;
-		fid->rwoffset = 0;
-		fid->hint_last_off = -1;
-
-		fid->attr = ATTR_SUBDIR;
-		fid->flags = 0x01;
-		fid->size = 0;
-		fid->start_clu = p_fs->root_dir;
-	} else {
-		if (p_fs->vol_type == EXFAT) {
-			es = get_entry_set_in_dir(sb, &dir, dentry,
-						  ES_2_ENTRIES, &ep);
-			if (!es) {
-				ret =  FFS_MEDIAERR;
-				goto out;
-			}
-			ep2 = ep + 1;
-		} else {
-			ep = get_entry_in_dir(sb, &dir, dentry, NULL);
-			if (!ep) {
-				ret =  FFS_MEDIAERR;
-				goto out;
-			}
-			ep2 = ep;
-		}
-
-		fid->type = p_fs->fs_func->get_entry_type(ep);
-		fid->rwoffset = 0;
-		fid->hint_last_off = -1;
-		fid->attr = p_fs->fs_func->get_entry_attr(ep);
-
-		fid->size = p_fs->fs_func->get_entry_size(ep2);
-		if ((fid->type == TYPE_FILE) && (fid->size == 0)) {
-			fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
-			fid->start_clu = CLUSTER_32(~0);
-		} else {
-			fid->flags = p_fs->fs_func->get_entry_flag(ep2);
-			fid->start_clu = p_fs->fs_func->get_entry_clu0(ep2);
-		}
-
-		if (p_fs->vol_type == EXFAT)
-			release_entry_set(es);
-	}
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-out:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return ret;
-}
-
-static int ffsCreateFile(struct inode *inode, char *path, u8 mode,
-			 struct file_id_t *fid)
-{
-	struct chain_t dir;
-	struct uni_name_t uni_name;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	int ret;
-
-	/* check the validity of pointer parameters */
-	if (!fid || !path || (*path == '\0'))
-		return FFS_ERROR;
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	/* check the validity of directory name in the given pathname */
-	ret = resolve_path(inode, path, &dir, &uni_name);
-	if (ret)
-		goto out;
-
-	fs_set_vol_flags(sb, VOL_DIRTY);
-
-	/* create a new file */
-	ret = create_file(inode, &dir, &uni_name, mode, fid);
-
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
-	fs_set_vol_flags(sb, VOL_CLEAN);
-#endif
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-
-out:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return ret;
-}
-
-static int ffsReadFile(struct inode *inode, struct file_id_t *fid, void *buffer,
-		       u64 count, u64 *rcount)
-{
-	s32 offset, sec_offset, clu_offset;
-	u32 clu;
-	int ret = 0;
-	sector_t LogSector;
-	u64 oneblkread, read_bytes;
-	struct buffer_head *tmp_bh = NULL;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	/* check the validity of the given file id */
-	if (!fid)
-		return FFS_INVALIDFID;
-
-	/* check the validity of pointer parameters */
-	if (!buffer)
-		return FFS_ERROR;
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	/* check if the given file ID is opened */
-	if (fid->type != TYPE_FILE) {
-		ret = FFS_PERMISSIONERR;
-		goto out;
-	}
-
-	if (fid->rwoffset > fid->size)
-		fid->rwoffset = fid->size;
-
-	if (count > (fid->size - fid->rwoffset))
-		count = fid->size - fid->rwoffset;
-
-	if (count == 0) {
-		if (rcount)
-			*rcount = 0;
-		ret = FFS_EOF;
-		goto out;
-	}
-
-	read_bytes = 0;
-
-	while (count > 0) {
-		clu_offset = (s32)(fid->rwoffset >> p_fs->cluster_size_bits);
-		clu = fid->start_clu;
-
-		if (fid->flags == 0x03) {
-			clu += clu_offset;
-		} else {
-			/* hint information */
-			if ((clu_offset > 0) && (fid->hint_last_off > 0) &&
-			    (clu_offset >= fid->hint_last_off)) {
-				clu_offset -= fid->hint_last_off;
-				clu = fid->hint_last_clu;
-			}
-
-			while (clu_offset > 0) {
-				/* clu = FAT_read(sb, clu); */
-				if (FAT_read(sb, clu, &clu) == -1)
-					return FFS_MEDIAERR;
-
-				clu_offset--;
-			}
-		}
-
-		/* hint information */
-		fid->hint_last_off = (s32)(fid->rwoffset >>
-					   p_fs->cluster_size_bits);
-		fid->hint_last_clu = clu;
-
-		/* byte offset in cluster */
-		offset = (s32)(fid->rwoffset & (p_fs->cluster_size - 1));
-
-		/* sector offset in cluster */
-		sec_offset = offset >> p_bd->sector_size_bits;
-
-		/* byte offset in sector */
-		offset &= p_bd->sector_size_mask;
-
-		LogSector = START_SECTOR(clu) + sec_offset;
-
-		oneblkread = (u64)(p_bd->sector_size - offset);
-		if (oneblkread > count)
-			oneblkread = count;
-
-		if ((offset == 0) && (oneblkread == p_bd->sector_size)) {
-			if (sector_read(sb, LogSector, &tmp_bh, 1) !=
-			    FFS_SUCCESS)
-				goto err_out;
-			memcpy((char *)buffer + read_bytes,
-			       (char *)tmp_bh->b_data, (s32)oneblkread);
-		} else {
-			if (sector_read(sb, LogSector, &tmp_bh, 1) !=
-			    FFS_SUCCESS)
-				goto err_out;
-			memcpy((char *)buffer + read_bytes,
-			       (char *)tmp_bh->b_data + offset,
-			       (s32)oneblkread);
-		}
-		count -= oneblkread;
-		read_bytes += oneblkread;
-		fid->rwoffset += oneblkread;
-	}
-	brelse(tmp_bh);
-
-/* How did this ever work and not leak a brlse()?? */
-err_out:
-	/* set the size of read bytes */
-	if (rcount)
-		*rcount = read_bytes;
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-
-out:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return ret;
-}
-
-static int ffsWriteFile(struct inode *inode, struct file_id_t *fid,
-			void *buffer, u64 count, u64 *wcount)
-{
-	bool modified = false;
-	s32 offset, sec_offset, clu_offset;
-	s32 num_clusters, num_alloc, num_alloced = (s32)~0;
-	int ret = 0;
-	u32 clu, last_clu;
-	sector_t LogSector, sector = 0;
-	u64 oneblkwrite, write_bytes;
-	struct chain_t new_clu;
-	struct timestamp_t tm;
-	struct dentry_t *ep, *ep2;
-	struct entry_set_cache_t *es = NULL;
-	struct buffer_head *tmp_bh = NULL;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-
-	/* check the validity of the given file id */
-	if (!fid)
-		return FFS_INVALIDFID;
-
-	/* check the validity of pointer parameters */
-	if (!buffer)
-		return FFS_ERROR;
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	/* check if the given file ID is opened */
-	if (fid->type != TYPE_FILE) {
-		ret = FFS_PERMISSIONERR;
-		goto out;
-	}
-
-	if (fid->rwoffset > fid->size)
-		fid->rwoffset = fid->size;
-
-	if (count == 0) {
-		if (wcount)
-			*wcount = 0;
-		ret = FFS_SUCCESS;
-		goto out;
-	}
-
-	fs_set_vol_flags(sb, VOL_DIRTY);
-
-	if (fid->size == 0)
-		num_clusters = 0;
-	else
-		num_clusters = (s32)((fid->size - 1) >>
-				     p_fs->cluster_size_bits) + 1;
-
-	write_bytes = 0;
-
-	while (count > 0) {
-		clu_offset = (s32)(fid->rwoffset >> p_fs->cluster_size_bits);
-		clu = last_clu = fid->start_clu;
-
-		if (fid->flags == 0x03) {
-			if ((clu_offset > 0) && (clu != CLUSTER_32(~0))) {
-				last_clu += clu_offset - 1;
-
-				if (clu_offset == num_clusters)
-					clu = CLUSTER_32(~0);
-				else
-					clu += clu_offset;
-			}
-		} else {
-			/* hint information */
-			if ((clu_offset > 0) && (fid->hint_last_off > 0) &&
-			    (clu_offset >= fid->hint_last_off)) {
-				clu_offset -= fid->hint_last_off;
-				clu = fid->hint_last_clu;
-			}
-
-			while ((clu_offset > 0) && (clu != CLUSTER_32(~0))) {
-				last_clu = clu;
-				/* clu = FAT_read(sb, clu); */
-				if (FAT_read(sb, clu, &clu) == -1) {
-					ret = FFS_MEDIAERR;
-					goto out;
-				}
-				clu_offset--;
-			}
-		}
-
-		if (clu == CLUSTER_32(~0)) {
-			num_alloc = (s32)((count - 1) >>
-					  p_fs->cluster_size_bits) + 1;
-			new_clu.dir = (last_clu == CLUSTER_32(~0)) ?
-					CLUSTER_32(~0) : last_clu + 1;
-			new_clu.size = 0;
-			new_clu.flags = fid->flags;
-
-			/* (1) allocate a chain of clusters */
-			num_alloced = p_fs->fs_func->alloc_cluster(sb,
-								   num_alloc,
-								   &new_clu);
-			if (num_alloced == 0)
-				break;
-			if (num_alloced < 0) {
-				ret = FFS_MEDIAERR;
-				goto out;
-			}
-
-			/* (2) append to the FAT chain */
-			if (last_clu == CLUSTER_32(~0)) {
-				if (new_clu.flags == 0x01)
-					fid->flags = 0x01;
-				fid->start_clu = new_clu.dir;
-				modified = true;
-			} else {
-				if (new_clu.flags != fid->flags) {
-					exfat_chain_cont_cluster(sb,
-								 fid->start_clu,
-								 num_clusters);
-					fid->flags = 0x01;
-					modified = true;
-				}
-				if (new_clu.flags == 0x01)
-					FAT_write(sb, last_clu, new_clu.dir);
-			}
-
-			num_clusters += num_alloced;
-			clu = new_clu.dir;
-		}
-
-		/* hint information */
-		fid->hint_last_off = (s32)(fid->rwoffset >>
-					   p_fs->cluster_size_bits);
-		fid->hint_last_clu = clu;
-
-		/* byte offset in cluster   */
-		offset = (s32)(fid->rwoffset & (p_fs->cluster_size - 1));
-
-		/* sector offset in cluster */
-		sec_offset = offset >> p_bd->sector_size_bits;
-
-		/* byte offset in sector    */
-		offset &= p_bd->sector_size_mask;
-
-		LogSector = START_SECTOR(clu) + sec_offset;
-
-		oneblkwrite = (u64)(p_bd->sector_size - offset);
-		if (oneblkwrite > count)
-			oneblkwrite = count;
-
-		if ((offset == 0) && (oneblkwrite == p_bd->sector_size)) {
-			if (sector_read(sb, LogSector, &tmp_bh, 0) !=
-			    FFS_SUCCESS)
-				goto err_out;
-			memcpy((char *)tmp_bh->b_data,
-			       (char *)buffer + write_bytes, (s32)oneblkwrite);
-			if (sector_write(sb, LogSector, tmp_bh, 0) !=
-			    FFS_SUCCESS) {
-				brelse(tmp_bh);
-				goto err_out;
-			}
-		} else {
-			if ((offset > 0) ||
-			    ((fid->rwoffset + oneblkwrite) < fid->size)) {
-				if (sector_read(sb, LogSector, &tmp_bh, 1) !=
-				    FFS_SUCCESS)
-					goto err_out;
-			} else {
-				if (sector_read(sb, LogSector, &tmp_bh, 0) !=
-				    FFS_SUCCESS)
-					goto err_out;
-			}
-
-			memcpy((char *)tmp_bh->b_data + offset,
-			       (char *)buffer + write_bytes, (s32)oneblkwrite);
-			if (sector_write(sb, LogSector, tmp_bh, 0) !=
-			    FFS_SUCCESS) {
-				brelse(tmp_bh);
-				goto err_out;
-			}
-		}
-
-		count -= oneblkwrite;
-		write_bytes += oneblkwrite;
-		fid->rwoffset += oneblkwrite;
-
-		fid->attr |= ATTR_ARCHIVE;
-
-		if (fid->size < fid->rwoffset) {
-			fid->size = fid->rwoffset;
-			modified = true;
-		}
-	}
-
-	brelse(tmp_bh);
-
-	/* (3) update the direcoty entry */
-	if (p_fs->vol_type == EXFAT) {
-		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
-					  ES_ALL_ENTRIES, &ep);
-		if (!es)
-			goto err_out;
-		ep2 = ep + 1;
-	} else {
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
-		if (!ep)
-			goto err_out;
-		ep2 = ep;
-	}
-
-	p_fs->fs_func->set_entry_time(ep, tm_current(&tm), TM_MODIFY);
-	p_fs->fs_func->set_entry_attr(ep, fid->attr);
-
-	if (p_fs->vol_type != EXFAT)
-		buf_modify(sb, sector);
-
-	if (modified) {
-		if (p_fs->fs_func->get_entry_flag(ep2) != fid->flags)
-			p_fs->fs_func->set_entry_flag(ep2, fid->flags);
-
-		if (p_fs->fs_func->get_entry_size(ep2) != fid->size)
-			p_fs->fs_func->set_entry_size(ep2, fid->size);
-
-		if (p_fs->fs_func->get_entry_clu0(ep2) != fid->start_clu)
-			p_fs->fs_func->set_entry_clu0(ep2, fid->start_clu);
-
-		if (p_fs->vol_type != EXFAT)
-			buf_modify(sb, sector);
-	}
-
-	if (p_fs->vol_type == EXFAT) {
-		update_dir_checksum_with_entry_set(sb, es);
-		release_entry_set(es);
-	}
-
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
-	fs_set_vol_flags(sb, VOL_CLEAN);
-#endif
-
-err_out:
-	/* set the size of written bytes */
-	if (wcount)
-		*wcount = write_bytes;
-
-	if (num_alloced == 0)
-		ret = FFS_FULL;
-
-	else if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-
-out:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return ret;
-}
-
-static int ffsTruncateFile(struct inode *inode, u64 old_size, u64 new_size)
-{
-	s32 num_clusters;
-	u32 last_clu = CLUSTER_32(0);
-	int ret = 0;
-	sector_t sector = 0;
-	struct chain_t clu;
-	struct timestamp_t tm;
-	struct dentry_t *ep, *ep2;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
-	struct entry_set_cache_t *es = NULL;
-
-	pr_debug("%s entered (inode %p size %llu)\n", __func__, inode,
-		 new_size);
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	/* check if the given file ID is opened */
-	if (fid->type != TYPE_FILE) {
-		ret = FFS_PERMISSIONERR;
-		goto out;
-	}
-
-	if (fid->size != old_size) {
-		pr_err("[EXFAT] truncate : can't skip it because of size-mismatch(old:%lld->fid:%lld).\n",
-		       old_size, fid->size);
-	}
-
-	if (old_size <= new_size) {
-		ret = FFS_SUCCESS;
-		goto out;
-	}
-
-	fs_set_vol_flags(sb, VOL_DIRTY);
-
-	clu.dir = fid->start_clu;
-	clu.size = (s32)((old_size - 1) >> p_fs->cluster_size_bits) + 1;
-	clu.flags = fid->flags;
-
-	if (new_size > 0) {
-		num_clusters = (s32)((new_size - 1) >>
-				     p_fs->cluster_size_bits) + 1;
-
-		if (clu.flags == 0x03) {
-			clu.dir += num_clusters;
-		} else {
-			while (num_clusters > 0) {
-				last_clu = clu.dir;
-				if (FAT_read(sb, clu.dir, &clu.dir) == -1) {
-					ret = FFS_MEDIAERR;
-					goto out;
-				}
-				num_clusters--;
-			}
-		}
-
-		clu.size -= num_clusters;
-	}
-
-	fid->size = new_size;
-	fid->attr |= ATTR_ARCHIVE;
-	if (new_size == 0) {
-		fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
-		fid->start_clu = CLUSTER_32(~0);
-	}
-
-	/* (1) update the directory entry */
-	if (p_fs->vol_type == EXFAT) {
-		es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
-					  ES_ALL_ENTRIES, &ep);
-		if (!es) {
-			ret = FFS_MEDIAERR;
-			goto out;
-			}
-		ep2 = ep + 1;
-	} else {
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
-		if (!ep) {
-			ret = FFS_MEDIAERR;
-			goto out;
-		}
-		ep2 = ep;
-	}
-
-	p_fs->fs_func->set_entry_time(ep, tm_current(&tm), TM_MODIFY);
-	p_fs->fs_func->set_entry_attr(ep, fid->attr);
-
-	p_fs->fs_func->set_entry_size(ep2, new_size);
-	if (new_size == 0) {
-		p_fs->fs_func->set_entry_flag(ep2, 0x01);
-		p_fs->fs_func->set_entry_clu0(ep2, CLUSTER_32(0));
-	}
-
-	if (p_fs->vol_type != EXFAT) {
-		buf_modify(sb, sector);
-	} else {
-		update_dir_checksum_with_entry_set(sb, es);
-		release_entry_set(es);
-	}
-
-	/* (2) cut off from the FAT chain */
-	if (last_clu != CLUSTER_32(0)) {
-		if (fid->flags == 0x01)
-			FAT_write(sb, last_clu, CLUSTER_32(~0));
-	}
-
-	/* (3) free the clusters */
-	p_fs->fs_func->free_cluster(sb, &clu, 0);
-
-	/* hint information */
-	fid->hint_last_off = -1;
-	if (fid->rwoffset > fid->size)
-		fid->rwoffset = fid->size;
-
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
-	fs_set_vol_flags(sb, VOL_CLEAN);
-#endif
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-
-out:
-	pr_debug("%s exited (%d)\n", __func__, ret);
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return ret;
-}
-
-static void update_parent_info(struct file_id_t *fid,
-			       struct inode *parent_inode)
-{
-	struct fs_info_t *p_fs = &(EXFAT_SB(parent_inode->i_sb)->fs_info);
-	struct file_id_t *parent_fid = &(EXFAT_I(parent_inode)->fid);
-
-	if (unlikely((parent_fid->flags != fid->dir.flags) ||
-		     (parent_fid->size !=
-		      (fid->dir.size << p_fs->cluster_size_bits)) ||
-		     (parent_fid->start_clu != fid->dir.dir))) {
-		fid->dir.dir = parent_fid->start_clu;
-		fid->dir.flags = parent_fid->flags;
-		fid->dir.size = ((parent_fid->size + (p_fs->cluster_size - 1))
-						>> p_fs->cluster_size_bits);
-	}
-}
-
-static int ffsMoveFile(struct inode *old_parent_inode, struct file_id_t *fid,
-		       struct inode *new_parent_inode, struct dentry *new_dentry)
-{
-	s32 ret;
-	s32 dentry;
-	struct chain_t olddir, newdir;
-	struct chain_t *p_dir = NULL;
-	struct uni_name_t uni_name;
-	struct dentry_t *ep;
-	struct super_block *sb = old_parent_inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	u8 *new_path = (u8 *)new_dentry->d_name.name;
-	struct inode *new_inode = new_dentry->d_inode;
-	int num_entries;
-	struct file_id_t *new_fid = NULL;
-	s32 new_entry = 0;
-
-	/* check the validity of the given file id */
-	if (!fid)
-		return FFS_INVALIDFID;
-
-	/* check the validity of pointer parameters */
-	if (!new_path || (*new_path == '\0'))
-		return FFS_ERROR;
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	update_parent_info(fid, old_parent_inode);
-
-	olddir.dir = fid->dir.dir;
-	olddir.size = fid->dir.size;
-	olddir.flags = fid->dir.flags;
-
-	dentry = fid->entry;
-
-	/* check if the old file is "." or ".." */
-	if (p_fs->vol_type != EXFAT) {
-		if ((olddir.dir != p_fs->root_dir) && (dentry < 2)) {
-			ret = FFS_PERMISSIONERR;
-			goto out2;
-		}
-	}
-
-	ep = get_entry_in_dir(sb, &olddir, dentry, NULL);
-	if (!ep) {
-		ret = FFS_MEDIAERR;
-		goto out2;
-	}
-
-	if (p_fs->fs_func->get_entry_attr(ep) & ATTR_READONLY) {
-		ret = FFS_PERMISSIONERR;
-		goto out2;
-	}
-
-	/* check whether new dir is existing directory and empty */
-	if (new_inode) {
-		u32 entry_type;
-
-		ret = FFS_MEDIAERR;
-		new_fid = &EXFAT_I(new_inode)->fid;
-
-		update_parent_info(new_fid, new_parent_inode);
-
-		p_dir = &(new_fid->dir);
-		new_entry = new_fid->entry;
-		ep = get_entry_in_dir(sb, p_dir, new_entry, NULL);
-		if (!ep)
-			goto out;
-
-		entry_type = p_fs->fs_func->get_entry_type(ep);
-
-		if (entry_type == TYPE_DIR) {
-			struct chain_t new_clu;
-
-			new_clu.dir = new_fid->start_clu;
-			new_clu.size = (s32)((new_fid->size - 1) >>
-					     p_fs->cluster_size_bits) + 1;
-			new_clu.flags = new_fid->flags;
-
-			if (!is_dir_empty(sb, &new_clu)) {
-				ret = FFS_FILEEXIST;
-				goto out;
-			}
-		}
-	}
-
-	/* check the validity of directory name in the given new pathname */
-	ret = resolve_path(new_parent_inode, new_path, &newdir, &uni_name);
-	if (ret)
-		goto out2;
-
-	fs_set_vol_flags(sb, VOL_DIRTY);
-
-	if (olddir.dir == newdir.dir)
-		ret = rename_file(new_parent_inode, &olddir, dentry, &uni_name,
-				  fid);
-	else
-		ret = move_file(new_parent_inode, &olddir, dentry, &newdir,
-				&uni_name, fid);
-
-	if ((ret == FFS_SUCCESS) && new_inode) {
-		/* delete entries of new_dir */
-		ep = get_entry_in_dir(sb, p_dir, new_entry, NULL);
-		if (!ep)
-			goto out;
-
-		num_entries = p_fs->fs_func->count_ext_entries(sb, p_dir,
-							       new_entry, ep);
-		if (num_entries < 0)
-			goto out;
-		p_fs->fs_func->delete_dir_entry(sb, p_dir, new_entry, 0,
-						num_entries + 1);
-	}
-out:
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
-	fs_set_vol_flags(sb, VOL_CLEAN);
-#endif
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-out2:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return ret;
-}
-
-static int ffsRemoveFile(struct inode *inode, struct file_id_t *fid)
-{
-	s32 dentry;
-	int ret = FFS_SUCCESS;
-	struct chain_t dir, clu_to_free;
-	struct dentry_t *ep;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	/* check the validity of the given file id */
-	if (!fid)
-		return FFS_INVALIDFID;
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	dir.dir = fid->dir.dir;
-	dir.size = fid->dir.size;
-	dir.flags = fid->dir.flags;
-
-	dentry = fid->entry;
-
-	ep = get_entry_in_dir(sb, &dir, dentry, NULL);
-	if (!ep) {
-		ret = FFS_MEDIAERR;
-		goto out;
-	}
-
-	if (p_fs->fs_func->get_entry_attr(ep) & ATTR_READONLY) {
-		ret = FFS_PERMISSIONERR;
-		goto out;
-	}
-	fs_set_vol_flags(sb, VOL_DIRTY);
-
-	/* (1) update the directory entry */
-	remove_file(inode, &dir, dentry);
-
-	clu_to_free.dir = fid->start_clu;
-	clu_to_free.size = (s32)((fid->size - 1) >> p_fs->cluster_size_bits) + 1;
-	clu_to_free.flags = fid->flags;
-
-	/* (2) free the clusters */
-	p_fs->fs_func->free_cluster(sb, &clu_to_free, 0);
-
-	fid->size = 0;
-	fid->start_clu = CLUSTER_32(~0);
-	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
-
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
-	fs_set_vol_flags(sb, VOL_CLEAN);
-#endif
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-out:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return ret;
-}
-
-#if 0
-/* Not currently wired up */
-static int ffsSetAttr(struct inode *inode, u32 attr)
-{
-	u32 type;
-	int ret = FFS_SUCCESS;
-	sector_t sector = 0;
-	struct dentry_t *ep;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
-	u8 is_dir = (fid->type == TYPE_DIR) ? 1 : 0;
-	struct entry_set_cache_t *es = NULL;
-
-	if (fid->attr == attr) {
-		if (p_fs->dev_ejected)
-			return FFS_MEDIAERR;
-		return FFS_SUCCESS;
-	}
-
-	if (is_dir) {
-		if ((fid->dir.dir == p_fs->root_dir) &&
-		    (fid->entry == -1)) {
-			if (p_fs->dev_ejected)
-				return FFS_MEDIAERR;
-			return FFS_SUCCESS;
-		}
-	}
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	/* get the directory entry of given file */
-	if (p_fs->vol_type == EXFAT) {
-		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
-					  ES_ALL_ENTRIES, &ep);
-		if (!es) {
-			ret = FFS_MEDIAERR;
-			goto out;
-		}
-	} else {
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
-		if (!ep) {
-			ret = FFS_MEDIAERR;
-			goto out;
-		}
-	}
-
-	type = p_fs->fs_func->get_entry_type(ep);
-
-	if (((type == TYPE_FILE) && (attr & ATTR_SUBDIR)) ||
-	    ((type == TYPE_DIR) && (!(attr & ATTR_SUBDIR)))) {
-		if (p_fs->dev_ejected)
-			ret = FFS_MEDIAERR;
-		else
-			ret = FFS_ERROR;
-
-		if (p_fs->vol_type == EXFAT)
-			release_entry_set(es);
-		goto out;
-	}
-
-	fs_set_vol_flags(sb, VOL_DIRTY);
-
-	/* set the file attribute */
-	fid->attr = attr;
-	p_fs->fs_func->set_entry_attr(ep, attr);
-
-	if (p_fs->vol_type != EXFAT) {
-		buf_modify(sb, sector);
-	} else {
-		update_dir_checksum_with_entry_set(sb, es);
-		release_entry_set(es);
-	}
-
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
-	fs_set_vol_flags(sb, VOL_CLEAN);
-#endif
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-out:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return ret;
-}
-#endif
-
-static int ffsReadStat(struct inode *inode, struct dir_entry_t *info)
-{
-	sector_t sector = 0;
-	s32 count;
-	int ret = FFS_SUCCESS;
-	struct chain_t dir;
-	struct uni_name_t uni_name;
-	struct timestamp_t tm;
-	struct dentry_t *ep, *ep2;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
-	struct entry_set_cache_t *es = NULL;
-	u8 is_dir = (fid->type == TYPE_DIR) ? 1 : 0;
-
-	pr_debug("%s entered\n", __func__);
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	if (is_dir) {
-		if ((fid->dir.dir == p_fs->root_dir) &&
-		    (fid->entry == -1)) {
-			info->Attr = ATTR_SUBDIR;
-			memset((char *)&info->CreateTimestamp, 0,
-			       sizeof(struct date_time_t));
-			memset((char *)&info->ModifyTimestamp, 0,
-			       sizeof(struct date_time_t));
-			memset((char *)&info->AccessTimestamp, 0,
-			       sizeof(struct date_time_t));
-			strcpy(info->ShortName, ".");
-			strcpy(info->Name, ".");
-
-			dir.dir = p_fs->root_dir;
-			dir.flags = 0x01;
-
-			if (p_fs->root_dir == CLUSTER_32(0)) {
-				/* FAT16 root_dir */
-				info->Size = p_fs->dentries_in_root <<
-						DENTRY_SIZE_BITS;
-			} else {
-				info->Size = count_num_clusters(sb, &dir) <<
-						p_fs->cluster_size_bits;
-			}
-
-			count = count_dos_name_entries(sb, &dir, TYPE_DIR);
-			if (count < 0) {
-				ret = FFS_MEDIAERR;
-				goto out;
-			}
-			info->NumSubdirs = count;
-
-			if (p_fs->dev_ejected)
-				ret = FFS_MEDIAERR;
-			goto out;
-		}
-	}
-
-	/* get the directory entry of given file or directory */
-	if (p_fs->vol_type == EXFAT) {
-		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
-					  ES_2_ENTRIES, &ep);
-		if (!es) {
-			ret = FFS_MEDIAERR;
-			goto out;
-		}
-		ep2 = ep + 1;
-	} else {
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
-		if (!ep) {
-			ret = FFS_MEDIAERR;
-			goto out;
-		}
-		ep2 = ep;
-		buf_lock(sb, sector);
-	}
-
-	/* set FILE_INFO structure using the acquired struct dentry_t */
-	info->Attr = p_fs->fs_func->get_entry_attr(ep);
-
-	p_fs->fs_func->get_entry_time(ep, &tm, TM_CREATE);
-	info->CreateTimestamp.Year = tm.year;
-	info->CreateTimestamp.Month = tm.mon;
-	info->CreateTimestamp.Day = tm.day;
-	info->CreateTimestamp.Hour = tm.hour;
-	info->CreateTimestamp.Minute = tm.min;
-	info->CreateTimestamp.Second = tm.sec;
-	info->CreateTimestamp.MilliSecond = 0;
-
-	p_fs->fs_func->get_entry_time(ep, &tm, TM_MODIFY);
-	info->ModifyTimestamp.Year = tm.year;
-	info->ModifyTimestamp.Month = tm.mon;
-	info->ModifyTimestamp.Day = tm.day;
-	info->ModifyTimestamp.Hour = tm.hour;
-	info->ModifyTimestamp.Minute = tm.min;
-	info->ModifyTimestamp.Second = tm.sec;
-	info->ModifyTimestamp.MilliSecond = 0;
-
-	memset((char *)&info->AccessTimestamp, 0, sizeof(struct date_time_t));
-
-	*(uni_name.name) = 0x0;
-	/* XXX this is very bad for exfat cuz name is already included in es.
-	 * API should be revised
-	 */
-	p_fs->fs_func->get_uni_name_from_ext_entry(sb, &(fid->dir), fid->entry,
-						   uni_name.name);
-	if (*uni_name.name == 0x0 && p_fs->vol_type != EXFAT)
-		get_uni_name_from_dos_entry(sb, (struct dos_dentry_t *)ep,
-					    &uni_name, 0x1);
-	nls_uniname_to_cstring(sb, info->Name, &uni_name);
-
-	if (p_fs->vol_type == EXFAT) {
-		info->NumSubdirs = 2;
-	} else {
-		buf_unlock(sb, sector);
-		get_uni_name_from_dos_entry(sb, (struct dos_dentry_t *)ep,
-					    &uni_name, 0x0);
-		nls_uniname_to_cstring(sb, info->ShortName, &uni_name);
-		info->NumSubdirs = 0;
-	}
-
-	info->Size = p_fs->fs_func->get_entry_size(ep2);
-
-	if (p_fs->vol_type == EXFAT)
-		release_entry_set(es);
-
-	if (is_dir) {
-		dir.dir = fid->start_clu;
-		dir.flags = 0x01;
-
-		if (info->Size == 0)
-			info->Size = (u64)count_num_clusters(sb, &dir) <<
-					p_fs->cluster_size_bits;
-
-		count = count_dos_name_entries(sb, &dir, TYPE_DIR);
-		if (count < 0) {
-			ret = FFS_MEDIAERR;
-			goto out;
-		}
-		info->NumSubdirs += count;
-	}
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-
-out:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	pr_debug("%s exited successfully\n", __func__);
-	return ret;
-}
-
-static int ffsWriteStat(struct inode *inode, struct dir_entry_t *info)
-{
-	sector_t sector = 0;
-	int ret = FFS_SUCCESS;
-	struct timestamp_t tm;
-	struct dentry_t *ep, *ep2;
-	struct entry_set_cache_t *es = NULL;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
-	u8 is_dir = (fid->type == TYPE_DIR) ? 1 : 0;
-
-	pr_debug("%s entered (inode %p info %p\n", __func__, inode, info);
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	if (is_dir) {
-		if ((fid->dir.dir == p_fs->root_dir) &&
-		    (fid->entry == -1)) {
-			if (p_fs->dev_ejected)
-				ret = FFS_MEDIAERR;
-			ret = FFS_SUCCESS;
-			goto out;
-		}
-	}
-
-	fs_set_vol_flags(sb, VOL_DIRTY);
-
-	/* get the directory entry of given file or directory */
-	if (p_fs->vol_type == EXFAT) {
-		es = get_entry_set_in_dir(sb, &(fid->dir), fid->entry,
-					  ES_ALL_ENTRIES, &ep);
-		if (!es) {
-			ret = FFS_MEDIAERR;
-			goto out;
-		}
-		ep2 = ep + 1;
-	} else {
-		/* for other than exfat */
-		ep = get_entry_in_dir(sb, &(fid->dir), fid->entry, &sector);
-		if (!ep) {
-			ret = FFS_MEDIAERR;
-			goto out;
-		}
-		ep2 = ep;
-	}
-
-	p_fs->fs_func->set_entry_attr(ep, info->Attr);
-
-	/* set FILE_INFO structure using the acquired struct dentry_t */
-	tm.sec  = info->CreateTimestamp.Second;
-	tm.min  = info->CreateTimestamp.Minute;
-	tm.hour = info->CreateTimestamp.Hour;
-	tm.day  = info->CreateTimestamp.Day;
-	tm.mon  = info->CreateTimestamp.Month;
-	tm.year = info->CreateTimestamp.Year;
-	p_fs->fs_func->set_entry_time(ep, &tm, TM_CREATE);
-
-	tm.sec  = info->ModifyTimestamp.Second;
-	tm.min  = info->ModifyTimestamp.Minute;
-	tm.hour = info->ModifyTimestamp.Hour;
-	tm.day  = info->ModifyTimestamp.Day;
-	tm.mon  = info->ModifyTimestamp.Month;
-	tm.year = info->ModifyTimestamp.Year;
-	p_fs->fs_func->set_entry_time(ep, &tm, TM_MODIFY);
-
-	p_fs->fs_func->set_entry_size(ep2, info->Size);
-
-	if (p_fs->vol_type != EXFAT) {
-		buf_modify(sb, sector);
-	} else {
-		update_dir_checksum_with_entry_set(sb, es);
-		release_entry_set(es);
-	}
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-
-out:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	pr_debug("%s exited (%d)\n", __func__, ret);
-
-	return ret;
-}
-
-static int ffsMapCluster(struct inode *inode, s32 clu_offset, u32 *clu)
-{
-	s32 num_clusters, num_alloced;
-	bool modified = false;
-	u32 last_clu;
-	int ret = FFS_SUCCESS;
-	sector_t sector = 0;
-	struct chain_t new_clu;
-	struct dentry_t *ep;
-	struct entry_set_cache_t *es = NULL;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
-
-	/* check the validity of pointer parameters */
-	if (!clu)
-		return FFS_ERROR;
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	fid->rwoffset = (s64)(clu_offset) << p_fs->cluster_size_bits;
-
-	if (EXFAT_I(inode)->mmu_private == 0)
-		num_clusters = 0;
-	else
-		num_clusters = (s32)((EXFAT_I(inode)->mmu_private - 1) >>
-				     p_fs->cluster_size_bits) + 1;
-
-	*clu = last_clu = fid->start_clu;
-
-	if (fid->flags == 0x03) {
-		if ((clu_offset > 0) && (*clu != CLUSTER_32(~0))) {
-			last_clu += clu_offset - 1;
-
-			if (clu_offset == num_clusters)
-				*clu = CLUSTER_32(~0);
-			else
-				*clu += clu_offset;
-		}
-	} else {
-		/* hint information */
-		if ((clu_offset > 0) && (fid->hint_last_off > 0) &&
-		    (clu_offset >= fid->hint_last_off)) {
-			clu_offset -= fid->hint_last_off;
-			*clu = fid->hint_last_clu;
-		}
-
-		while ((clu_offset > 0) && (*clu != CLUSTER_32(~0))) {
-			last_clu = *clu;
-			if (FAT_read(sb, *clu, clu) == -1) {
-				ret = FFS_MEDIAERR;
-				goto out;
-			}
-			clu_offset--;
-		}
-	}
-
-	if (*clu == CLUSTER_32(~0)) {
-		fs_set_vol_flags(sb, VOL_DIRTY);
-
-		new_clu.dir = (last_clu == CLUSTER_32(~0)) ? CLUSTER_32(~0) :
-					last_clu + 1;
-		new_clu.size = 0;
-		new_clu.flags = fid->flags;
-
-		/* (1) allocate a cluster */
-		num_alloced = p_fs->fs_func->alloc_cluster(sb, 1, &new_clu);
-		if (num_alloced < 0) {
-			ret = FFS_MEDIAERR;
-			goto out;
-		} else if (num_alloced == 0) {
-			ret = FFS_FULL;
-			goto out;
-		}
-
-		/* (2) append to the FAT chain */
-		if (last_clu == CLUSTER_32(~0)) {
-			if (new_clu.flags == 0x01)
-				fid->flags = 0x01;
-			fid->start_clu = new_clu.dir;
-			modified = true;
-		} else {
-			if (new_clu.flags != fid->flags) {
-				exfat_chain_cont_cluster(sb, fid->start_clu,
-							 num_clusters);
-				fid->flags = 0x01;
-				modified = true;
-			}
-			if (new_clu.flags == 0x01)
-				FAT_write(sb, last_clu, new_clu.dir);
-		}
-
-		num_clusters += num_alloced;
-		*clu = new_clu.dir;
-
-		if (p_fs->vol_type == EXFAT) {
-			es = get_entry_set_in_dir(sb, &fid->dir, fid->entry,
-						  ES_ALL_ENTRIES, &ep);
-			if (!es) {
-				ret = FFS_MEDIAERR;
-				goto out;
-			}
-			/* get stream entry */
-			ep++;
-		}
-
-		/* (3) update directory entry */
-		if (modified) {
-			if (p_fs->vol_type != EXFAT) {
-				ep = get_entry_in_dir(sb, &(fid->dir),
-						      fid->entry, &sector);
-				if (!ep) {
-					ret = FFS_MEDIAERR;
-					goto out;
-				}
-			}
-
-			if (p_fs->fs_func->get_entry_flag(ep) != fid->flags)
-				p_fs->fs_func->set_entry_flag(ep, fid->flags);
-
-			if (p_fs->fs_func->get_entry_clu0(ep) != fid->start_clu)
-				p_fs->fs_func->set_entry_clu0(ep,
-							      fid->start_clu);
-
-			if (p_fs->vol_type != EXFAT)
-				buf_modify(sb, sector);
-		}
-
-		if (p_fs->vol_type == EXFAT) {
-			update_dir_checksum_with_entry_set(sb, es);
-			release_entry_set(es);
-		}
-
-		/* add number of new blocks to inode */
-		inode->i_blocks += num_alloced << (p_fs->cluster_size_bits - 9);
-	}
-
-	/* hint information */
-	fid->hint_last_off = (s32)(fid->rwoffset >> p_fs->cluster_size_bits);
-	fid->hint_last_clu = *clu;
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-
-out:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return ret;
-}
-
-/*----------------------------------------------------------------------*/
-/*  Directory Operation Functions                                       */
-/*----------------------------------------------------------------------*/
-
-static int ffsCreateDir(struct inode *inode, char *path, struct file_id_t *fid)
-{
-	int ret = FFS_SUCCESS;
-	struct chain_t dir;
-	struct uni_name_t uni_name;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	pr_debug("%s entered\n", __func__);
-
-	/* check the validity of pointer parameters */
-	if (!fid || !path || (*path == '\0'))
-		return FFS_ERROR;
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	/* check the validity of directory name in the given old pathname */
-	ret = resolve_path(inode, path, &dir, &uni_name);
-	if (ret)
-		goto out;
-
-	fs_set_vol_flags(sb, VOL_DIRTY);
-
-	ret = create_dir(inode, &dir, &uni_name, fid);
-
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
-	fs_set_vol_flags(sb, VOL_CLEAN);
-#endif
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-out:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return ret;
-}
-
-static int ffsReadDir(struct inode *inode, struct dir_entry_t *dir_entry)
-{
-	int i, dentry, clu_offset;
-	int ret = FFS_SUCCESS;
-	s32 dentries_per_clu, dentries_per_clu_bits = 0;
-	u32 type;
-	sector_t sector;
-	struct chain_t dir, clu;
-	struct uni_name_t uni_name;
-	struct timestamp_t tm;
-	struct dentry_t *ep;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct fs_func *fs_func = p_fs->fs_func;
-	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
-
-	/* check the validity of pointer parameters */
-	if (!dir_entry)
-		return FFS_ERROR;
-
-	/* check if the given file ID is opened */
-	if (fid->type != TYPE_DIR)
-		return FFS_PERMISSIONERR;
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	if (fid->entry == -1) {
-		dir.dir = p_fs->root_dir;
-		dir.flags = 0x01;
-	} else {
-		dir.dir = fid->start_clu;
-		dir.size = (s32)(fid->size >> p_fs->cluster_size_bits);
-		dir.flags = fid->flags;
-	}
-
-	dentry = (s32)fid->rwoffset;
-
-	if (dir.dir == CLUSTER_32(0)) {
-		/* FAT16 root_dir */
-		dentries_per_clu = p_fs->dentries_in_root;
-
-		if (dentry == dentries_per_clu) {
-			clu.dir = CLUSTER_32(~0);
-		} else {
-			clu.dir = dir.dir;
-			clu.size = dir.size;
-			clu.flags = dir.flags;
-		}
-	} else {
-		dentries_per_clu = p_fs->dentries_per_clu;
-		dentries_per_clu_bits = ilog2(dentries_per_clu);
-
-		clu_offset = dentry >> dentries_per_clu_bits;
-		clu.dir = dir.dir;
-		clu.size = dir.size;
-		clu.flags = dir.flags;
-
-		if (clu.flags == 0x03) {
-			clu.dir += clu_offset;
-			clu.size -= clu_offset;
-		} else {
-			/* hint_information */
-			if ((clu_offset > 0) && (fid->hint_last_off > 0) &&
-			    (clu_offset >= fid->hint_last_off)) {
-				clu_offset -= fid->hint_last_off;
-				clu.dir = fid->hint_last_clu;
-			}
-
-			while (clu_offset > 0) {
-				/* clu.dir = FAT_read(sb, clu.dir); */
-				if (FAT_read(sb, clu.dir, &clu.dir) == -1) {
-					ret = FFS_MEDIAERR;
-					goto out;
-				}
-				clu_offset--;
-			}
-		}
-	}
-
-	while (clu.dir != CLUSTER_32(~0)) {
-		if (p_fs->dev_ejected)
-			break;
-
-		if (dir.dir == CLUSTER_32(0)) /* FAT16 root_dir */
-			i = dentry % dentries_per_clu;
-		else
-			i = dentry & (dentries_per_clu - 1);
-
-		for ( ; i < dentries_per_clu; i++, dentry++) {
-			ep = get_entry_in_dir(sb, &clu, i, &sector);
-			if (!ep) {
-				ret = FFS_MEDIAERR;
-				goto out;
-			}
-			type = fs_func->get_entry_type(ep);
-
-			if (type == TYPE_UNUSED)
-				break;
-
-			if ((type != TYPE_FILE) && (type != TYPE_DIR))
-				continue;
-
-			buf_lock(sb, sector);
-			dir_entry->Attr = fs_func->get_entry_attr(ep);
-
-			fs_func->get_entry_time(ep, &tm, TM_CREATE);
-			dir_entry->CreateTimestamp.Year = tm.year;
-			dir_entry->CreateTimestamp.Month = tm.mon;
-			dir_entry->CreateTimestamp.Day = tm.day;
-			dir_entry->CreateTimestamp.Hour = tm.hour;
-			dir_entry->CreateTimestamp.Minute = tm.min;
-			dir_entry->CreateTimestamp.Second = tm.sec;
-			dir_entry->CreateTimestamp.MilliSecond = 0;
-
-			fs_func->get_entry_time(ep, &tm, TM_MODIFY);
-			dir_entry->ModifyTimestamp.Year = tm.year;
-			dir_entry->ModifyTimestamp.Month = tm.mon;
-			dir_entry->ModifyTimestamp.Day = tm.day;
-			dir_entry->ModifyTimestamp.Hour = tm.hour;
-			dir_entry->ModifyTimestamp.Minute = tm.min;
-			dir_entry->ModifyTimestamp.Second = tm.sec;
-			dir_entry->ModifyTimestamp.MilliSecond = 0;
-
-			memset((char *)&dir_entry->AccessTimestamp, 0,
-			       sizeof(struct date_time_t));
-
-			*(uni_name.name) = 0x0;
-			fs_func->get_uni_name_from_ext_entry(sb, &dir, dentry,
-							     uni_name.name);
-			if (*uni_name.name == 0x0 && p_fs->vol_type != EXFAT)
-				get_uni_name_from_dos_entry(sb,
-						(struct dos_dentry_t *)ep,
-						&uni_name, 0x1);
-			nls_uniname_to_cstring(sb, dir_entry->Name, &uni_name);
-			buf_unlock(sb, sector);
-
-			if (p_fs->vol_type == EXFAT) {
-				ep = get_entry_in_dir(sb, &clu, i + 1, NULL);
-				if (!ep) {
-					ret = FFS_MEDIAERR;
-					goto out;
-				}
-			} else {
-				get_uni_name_from_dos_entry(sb,
-						(struct dos_dentry_t *)ep,
-						&uni_name, 0x0);
-				nls_uniname_to_cstring(sb, dir_entry->ShortName,
-						       &uni_name);
-			}
-
-			dir_entry->Size = fs_func->get_entry_size(ep);
-
-			/* hint information */
-			if (dir.dir == CLUSTER_32(0)) { /* FAT16 root_dir */
-			} else {
-				fid->hint_last_off = dentry >>
-							dentries_per_clu_bits;
-				fid->hint_last_clu = clu.dir;
-			}
-
-			fid->rwoffset = (s64)(++dentry);
-
-			if (p_fs->dev_ejected)
-				ret = FFS_MEDIAERR;
-			goto out;
-		}
-
-		if (dir.dir == CLUSTER_32(0))
-			break; /* FAT16 root_dir */
-
-		if (clu.flags == 0x03) {
-			if ((--clu.size) > 0)
-				clu.dir++;
-			else
-				clu.dir = CLUSTER_32(~0);
-		} else {
-			/* clu.dir = FAT_read(sb, clu.dir); */
-			if (FAT_read(sb, clu.dir, &clu.dir) == -1) {
-				ret = FFS_MEDIAERR;
-				goto out;
-			}
-		}
-	}
-
-	*(dir_entry->Name) = '\0';
-
-	fid->rwoffset = (s64)(++dentry);
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-
-out:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return ret;
-}
-
-static int ffsRemoveDir(struct inode *inode, struct file_id_t *fid)
-{
-	s32 dentry;
-	int ret = FFS_SUCCESS;
-	struct chain_t dir, clu_to_free;
-	struct super_block *sb = inode->i_sb;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	/* check the validity of the given file id */
-	if (!fid)
-		return FFS_INVALIDFID;
-
-	dir.dir = fid->dir.dir;
-	dir.size = fid->dir.size;
-	dir.flags = fid->dir.flags;
-
-	dentry = fid->entry;
-
-	/* check if the file is "." or ".." */
-	if (p_fs->vol_type != EXFAT) {
-		if ((dir.dir != p_fs->root_dir) && (dentry < 2))
-			return FFS_PERMISSIONERR;
-	}
-
-	/* acquire the lock for file system critical section */
-	down(&p_fs->v_sem);
-
-	clu_to_free.dir = fid->start_clu;
-	clu_to_free.size = (s32)((fid->size - 1) >> p_fs->cluster_size_bits) + 1;
-	clu_to_free.flags = fid->flags;
-
-	if (!is_dir_empty(sb, &clu_to_free)) {
-		ret = FFS_FILEEXIST;
-		goto out;
-	}
-
-	fs_set_vol_flags(sb, VOL_DIRTY);
-
-	/* (1) update the directory entry */
-	remove_file(inode, &dir, dentry);
-
-	/* (2) free the clusters */
-	p_fs->fs_func->free_cluster(sb, &clu_to_free, 1);
-
-	fid->size = 0;
-	fid->start_clu = CLUSTER_32(~0);
-	fid->flags = (p_fs->vol_type == EXFAT) ? 0x03 : 0x01;
-
-#ifdef CONFIG_EXFAT_DELAYED_SYNC
-	fs_sync(sb, false);
-	fs_set_vol_flags(sb, VOL_CLEAN);
-#endif
-
-	if (p_fs->dev_ejected)
-		ret = FFS_MEDIAERR;
-
-out:
-	/* release the lock for file system critical section */
-	up(&p_fs->v_sem);
-
-	return ret;
-}
-
-/*======================================================================*/
-/*  Directory Entry Operations                                          */
-/*======================================================================*/
-
-static int exfat_readdir(struct file *filp, struct dir_context *ctx)
-{
-	struct inode *inode = file_inode(filp);
-	struct super_block *sb = inode->i_sb;
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
-	struct bd_info_t *p_bd = &(EXFAT_SB(sb)->bd_info);
-	struct dir_entry_t de;
-	unsigned long inum;
-	loff_t cpos;
-	int err = 0;
-
-	__lock_super(sb);
-
-	cpos = ctx->pos;
-	/* Fake . and .. for the root directory. */
-	if ((p_fs->vol_type == EXFAT) || (inode->i_ino == EXFAT_ROOT_INO)) {
-		while (cpos < 2) {
-			if (inode->i_ino == EXFAT_ROOT_INO)
-				inum = EXFAT_ROOT_INO;
-			else if (cpos == 0)
-				inum = inode->i_ino;
-			else /* (cpos == 1) */
-				inum = parent_ino(filp->f_path.dentry);
-
-			if (!dir_emit_dots(filp, ctx))
-				goto out;
-			cpos++;
-			ctx->pos++;
-		}
-		if (cpos == 2)
-			cpos = 0;
-	}
-	if (cpos & (DENTRY_SIZE - 1)) {
-		err = -ENOENT;
-		goto out;
-	}
-
-get_new:
-	EXFAT_I(inode)->fid.size = i_size_read(inode);
-	EXFAT_I(inode)->fid.rwoffset = cpos >> DENTRY_SIZE_BITS;
-
-	err = ffsReadDir(inode, &de);
-	if (err) {
-		/* at least we tried to read a sector
-		 * move cpos to next sector position (should be aligned)
-		 */
-		if (err == FFS_MEDIAERR) {
-			cpos += 1 << p_bd->sector_size_bits;
-			cpos &= ~((1 << p_bd->sector_size_bits) - 1);
-		}
-
-		err = -EIO;
-		goto end_of_dir;
-	}
-
-	cpos = EXFAT_I(inode)->fid.rwoffset << DENTRY_SIZE_BITS;
-
-	if (!de.Name[0])
-		goto end_of_dir;
-
-	if (!memcmp(de.ShortName, DOS_CUR_DIR_NAME, DOS_NAME_LENGTH)) {
-		inum = inode->i_ino;
-	} else if (!memcmp(de.ShortName, DOS_PAR_DIR_NAME, DOS_NAME_LENGTH)) {
-		inum = parent_ino(filp->f_path.dentry);
-	} else {
-		loff_t i_pos = ((loff_t)EXFAT_I(inode)->fid.start_clu << 32) |
-				((EXFAT_I(inode)->fid.rwoffset - 1) & 0xffffffff);
-		struct inode *tmp = exfat_iget(sb, i_pos);
-
-		if (tmp) {
-			inum = tmp->i_ino;
-			iput(tmp);
-		} else {
-			inum = iunique(sb, EXFAT_ROOT_INO);
-		}
-	}
-
-	if (!dir_emit(ctx, de.Name, strlen(de.Name), inum,
-		      (de.Attr & ATTR_SUBDIR) ? DT_DIR : DT_REG))
-		goto out;
-
-	ctx->pos = cpos;
-	goto get_new;
-
-end_of_dir:
-	ctx->pos = cpos;
-out:
-	__unlock_super(sb);
-	return err;
-}
-
-static int exfat_ioctl_volume_id(struct inode *dir)
-{
-	struct super_block *sb = dir->i_sb;
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
-
-	return p_fs->vol_id;
-}
-
-static long exfat_generic_ioctl(struct file *filp, unsigned int cmd,
-				unsigned long arg)
-{
-struct inode *inode = filp->f_path.dentry->d_inode;
-#ifdef CONFIG_EXFAT_KERNEL_DEBUG
-	unsigned int flags;
-#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
-
-	switch (cmd) {
-	case EXFAT_IOCTL_GET_VOLUME_ID:
-		return exfat_ioctl_volume_id(inode);
-#ifdef CONFIG_EXFAT_KERNEL_DEBUG
-	case EXFAT_IOC_GET_DEBUGFLAGS: {
-		struct super_block *sb = inode->i_sb;
-		struct exfat_sb_info *sbi = EXFAT_SB(sb);
-
-		flags = sbi->debug_flags;
-		return put_user(flags, (int __user *)arg);
-	}
-	case EXFAT_IOC_SET_DEBUGFLAGS: {
-		struct super_block *sb = inode->i_sb;
-		struct exfat_sb_info *sbi = EXFAT_SB(sb);
-
-		if (!capable(CAP_SYS_ADMIN))
-			return -EPERM;
-
-		if (get_user(flags, (int __user *)arg))
-			return -EFAULT;
-
-		__lock_super(sb);
-		sbi->debug_flags = flags;
-		__unlock_super(sb);
-
-		return 0;
-	}
-#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
-	default:
-		return -ENOTTY; /* Inappropriate ioctl for device */
-	}
-}
-
-static const struct file_operations exfat_dir_operations = {
-	.llseek     = generic_file_llseek,
-	.read       = generic_read_dir,
-	.iterate    = exfat_readdir,
-	.unlocked_ioctl = exfat_generic_ioctl,
-	.fsync      = generic_file_fsync,
-};
-
-static int exfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
-			bool excl)
-{
-	struct super_block *sb = dir->i_sb;
-	struct inode *inode;
-	struct file_id_t fid;
-	loff_t i_pos;
-	int err;
-
-	__lock_super(sb);
-
-	pr_debug("%s entered\n", __func__);
-
-	err = ffsCreateFile(dir, (u8 *)dentry->d_name.name, FM_REGULAR, &fid);
-	if (err) {
-		if (err == FFS_INVALIDPATH)
-			err = -EINVAL;
-		else if (err == FFS_FILEEXIST)
-			err = -EEXIST;
-		else if (err == FFS_FULL)
-			err = -ENOSPC;
-		else if (err == FFS_NAMETOOLONG)
-			err = -ENAMETOOLONG;
-		else
-			err = -EIO;
-		goto out;
-	}
-	INC_IVERSION(dir);
-	dir->i_ctime = dir->i_mtime = dir->i_atime = current_time(dir);
-	if (IS_DIRSYNC(dir))
-		(void)exfat_sync_inode(dir);
-	else
-		mark_inode_dirty(dir);
-
-	i_pos = ((loff_t)fid.dir.dir << 32) | (fid.entry & 0xffffffff);
-
-	inode = exfat_build_inode(sb, &fid, i_pos);
-	if (IS_ERR(inode)) {
-		err = PTR_ERR(inode);
-		goto out;
-	}
-	INC_IVERSION(inode);
-	inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
-	/*
-	 * timestamp is already written, so mark_inode_dirty() is unnecessary.
-	 */
-
-	dentry->d_time = GET_IVERSION(dentry->d_parent->d_inode);
-	d_instantiate(dentry, inode);
-
-out:
-	__unlock_super(sb);
-	pr_debug("%s exited\n", __func__);
-	return err;
-}
-
-static int exfat_find(struct inode *dir, struct qstr *qname,
-		      struct file_id_t *fid)
-{
-	int err;
-
-	if (qname->len == 0)
-		return -ENOENT;
-
-	err = ffsLookupFile(dir, (u8 *)qname->name, fid);
-	if (err)
-		return -ENOENT;
-
-	return 0;
-}
-
-static int exfat_d_anon_disconn(struct dentry *dentry)
-{
-	return IS_ROOT(dentry) && (dentry->d_flags & DCACHE_DISCONNECTED);
-}
-
-static struct dentry *exfat_lookup(struct inode *dir, struct dentry *dentry,
-				   unsigned int flags)
-{
-	struct super_block *sb = dir->i_sb;
-	struct inode *inode;
-	struct dentry *alias;
-	int err;
-	struct file_id_t fid;
-	loff_t i_pos;
-	u64 ret;
-	mode_t i_mode;
-
-	__lock_super(sb);
-	pr_debug("%s entered\n", __func__);
-	err = exfat_find(dir, &dentry->d_name, &fid);
-	if (err) {
-		if (err == -ENOENT) {
-			inode = NULL;
-			goto out;
-		}
-		goto error;
-	}
-
-	i_pos = ((loff_t)fid.dir.dir << 32) | (fid.entry & 0xffffffff);
-	inode = exfat_build_inode(sb, &fid, i_pos);
-	if (IS_ERR(inode)) {
-		err = PTR_ERR(inode);
-		goto error;
-	}
-
-	i_mode = inode->i_mode;
-	if (S_ISLNK(i_mode) && !EXFAT_I(inode)->target) {
-		EXFAT_I(inode)->target = kmalloc(i_size_read(inode) + 1,
-						 GFP_KERNEL);
-		if (!EXFAT_I(inode)->target) {
-			err = -ENOMEM;
-			goto error;
-		}
-		ffsReadFile(dir, &fid, EXFAT_I(inode)->target,
-			    i_size_read(inode), &ret);
-		*(EXFAT_I(inode)->target + i_size_read(inode)) = '\0';
-	}
-
-	alias = d_find_alias(inode);
-	if (alias && !exfat_d_anon_disconn(alias)) {
-		BUG_ON(d_unhashed(alias));
-		if (!S_ISDIR(i_mode))
-			d_move(alias, dentry);
-		iput(inode);
-		__unlock_super(sb);
-		pr_debug("%s exited 1\n", __func__);
-		return alias;
-	}
-	dput(alias);
-out:
-	__unlock_super(sb);
-	dentry->d_time = GET_IVERSION(dentry->d_parent->d_inode);
-	dentry = d_splice_alias(inode, dentry);
-	if (dentry)
-		dentry->d_time = GET_IVERSION(dentry->d_parent->d_inode);
-	pr_debug("%s exited 2\n", __func__);
-	return dentry;
-
-error:
-	__unlock_super(sb);
-	pr_debug("%s exited 3\n", __func__);
-	return ERR_PTR(err);
-}
-
-static inline unsigned long exfat_hash(loff_t i_pos)
-{
-	return hash_32(i_pos, EXFAT_HASH_BITS);
-}
-
-static void exfat_attach(struct inode *inode, loff_t i_pos)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);
-	struct hlist_head *head = sbi->inode_hashtable + exfat_hash(i_pos);
-
-	spin_lock(&sbi->inode_hash_lock);
-	EXFAT_I(inode)->i_pos = i_pos;
-	hlist_add_head(&EXFAT_I(inode)->i_hash_fat, head);
-	spin_unlock(&sbi->inode_hash_lock);
-}
-
-static void exfat_detach(struct inode *inode)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);
-
-	spin_lock(&sbi->inode_hash_lock);
-	hlist_del_init(&EXFAT_I(inode)->i_hash_fat);
-	EXFAT_I(inode)->i_pos = 0;
-	spin_unlock(&sbi->inode_hash_lock);
-}
-
-static int exfat_unlink(struct inode *dir, struct dentry *dentry)
-{
-	struct inode *inode = dentry->d_inode;
-	struct super_block *sb = dir->i_sb;
-	int err;
-
-	__lock_super(sb);
-
-	pr_debug("%s entered\n", __func__);
-
-	EXFAT_I(inode)->fid.size = i_size_read(inode);
-
-	err = ffsRemoveFile(dir, &(EXFAT_I(inode)->fid));
-	if (err) {
-		if (err == FFS_PERMISSIONERR)
-			err = -EPERM;
-		else
-			err = -EIO;
-		goto out;
-	}
-	INC_IVERSION(dir);
-	dir->i_mtime = dir->i_atime = current_time(dir);
-	if (IS_DIRSYNC(dir))
-		(void)exfat_sync_inode(dir);
-	else
-		mark_inode_dirty(dir);
-
-	clear_nlink(inode);
-	inode->i_mtime = inode->i_atime = current_time(inode);
-	exfat_detach(inode);
-	remove_inode_hash(inode);
-
-out:
-	__unlock_super(sb);
-	pr_debug("%s exited\n", __func__);
-	return err;
-}
-
-static int exfat_symlink(struct inode *dir, struct dentry *dentry,
-			 const char *target)
-{
-	struct super_block *sb = dir->i_sb;
-	struct inode *inode;
-	struct file_id_t fid;
-	loff_t i_pos;
-	int err;
-	u64 len = (u64)strlen(target);
-	u64 ret;
-
-	__lock_super(sb);
-
-	pr_debug("%s entered\n", __func__);
-
-	err = ffsCreateFile(dir, (u8 *)dentry->d_name.name, FM_SYMLINK, &fid);
-	if (err) {
-		if (err == FFS_INVALIDPATH)
-			err = -EINVAL;
-		else if (err == FFS_FILEEXIST)
-			err = -EEXIST;
-		else if (err == FFS_FULL)
-			err = -ENOSPC;
-		else
-			err = -EIO;
-		goto out;
-	}
-
-	err = ffsWriteFile(dir, &fid, (char *)target, len, &ret);
-
-	if (err) {
-		ffsRemoveFile(dir, &fid);
-
-		if (err == FFS_FULL)
-			err = -ENOSPC;
-		else
-			err = -EIO;
-		goto out;
-	}
-
-	INC_IVERSION(dir);
-	dir->i_ctime = dir->i_mtime = dir->i_atime = current_time(dir);
-	if (IS_DIRSYNC(dir))
-		(void)exfat_sync_inode(dir);
-	else
-		mark_inode_dirty(dir);
-
-	i_pos = ((loff_t)fid.dir.dir << 32) | (fid.entry & 0xffffffff);
-
-	inode = exfat_build_inode(sb, &fid, i_pos);
-	if (IS_ERR(inode)) {
-		err = PTR_ERR(inode);
-		goto out;
-	}
-	INC_IVERSION(inode);
-	inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
-	/* timestamp is already written, so mark_inode_dirty() is unneeded. */
-
-	EXFAT_I(inode)->target = kmemdup(target, len + 1, GFP_KERNEL);
-	if (!EXFAT_I(inode)->target) {
-		err = -ENOMEM;
-		goto out;
-	}
-
-	dentry->d_time = GET_IVERSION(dentry->d_parent->d_inode);
-	d_instantiate(dentry, inode);
-
-out:
-	__unlock_super(sb);
-	pr_debug("%s exited\n", __func__);
-	return err;
-}
-
-static int exfat_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
-{
-	struct super_block *sb = dir->i_sb;
-	struct inode *inode;
-	struct file_id_t fid;
-	loff_t i_pos;
-	int err;
-
-	__lock_super(sb);
-
-	pr_debug("%s entered\n", __func__);
-
-	err = ffsCreateDir(dir, (u8 *)dentry->d_name.name, &fid);
-	if (err) {
-		if (err == FFS_INVALIDPATH)
-			err = -EINVAL;
-		else if (err == FFS_FILEEXIST)
-			err = -EEXIST;
-		else if (err == FFS_FULL)
-			err = -ENOSPC;
-		else if (err == FFS_NAMETOOLONG)
-			err = -ENAMETOOLONG;
-		else
-			err = -EIO;
-		goto out;
-	}
-	INC_IVERSION(dir);
-	dir->i_ctime = dir->i_mtime = dir->i_atime = current_time(dir);
-	if (IS_DIRSYNC(dir))
-		(void)exfat_sync_inode(dir);
-	else
-		mark_inode_dirty(dir);
-	inc_nlink(dir);
-
-	i_pos = ((loff_t)fid.dir.dir << 32) | (fid.entry & 0xffffffff);
-
-	inode = exfat_build_inode(sb, &fid, i_pos);
-	if (IS_ERR(inode)) {
-		err = PTR_ERR(inode);
-		goto out;
-	}
-	INC_IVERSION(inode);
-	inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
-	/* timestamp is already written, so mark_inode_dirty() is unneeded. */
-
-	dentry->d_time = GET_IVERSION(dentry->d_parent->d_inode);
-	d_instantiate(dentry, inode);
-
-out:
-	__unlock_super(sb);
-	pr_debug("%s exited\n", __func__);
-	return err;
-}
-
-static int exfat_rmdir(struct inode *dir, struct dentry *dentry)
-{
-	struct inode *inode = dentry->d_inode;
-	struct super_block *sb = dir->i_sb;
-	int err;
-
-	__lock_super(sb);
-
-	pr_debug("%s entered\n", __func__);
-
-	EXFAT_I(inode)->fid.size = i_size_read(inode);
-
-	err = ffsRemoveDir(dir, &(EXFAT_I(inode)->fid));
-	if (err) {
-		if (err == FFS_INVALIDPATH)
-			err = -EINVAL;
-		else if (err == FFS_FILEEXIST)
-			err = -ENOTEMPTY;
-		else if (err == FFS_NOTFOUND)
-			err = -ENOENT;
-		else if (err == FFS_DIRBUSY)
-			err = -EBUSY;
-		else
-			err = -EIO;
-		goto out;
-	}
-	INC_IVERSION(dir);
-	dir->i_mtime = dir->i_atime = current_time(dir);
-	if (IS_DIRSYNC(dir))
-		(void)exfat_sync_inode(dir);
-	else
-		mark_inode_dirty(dir);
-	drop_nlink(dir);
-
-	clear_nlink(inode);
-	inode->i_mtime = inode->i_atime = current_time(inode);
-	exfat_detach(inode);
-	remove_inode_hash(inode);
-
-out:
-	__unlock_super(sb);
-	pr_debug("%s exited\n", __func__);
-	return err;
-}
-
-static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
-			struct inode *new_dir, struct dentry *new_dentry,
-			unsigned int flags)
-{
-	struct inode *old_inode, *new_inode;
-	struct super_block *sb = old_dir->i_sb;
-	loff_t i_pos;
-	int err;
-
-	if (flags)
-		return -EINVAL;
-
-	__lock_super(sb);
-
-	pr_debug("%s entered\n", __func__);
-
-	old_inode = old_dentry->d_inode;
-	new_inode = new_dentry->d_inode;
-
-	EXFAT_I(old_inode)->fid.size = i_size_read(old_inode);
-
-	err = ffsMoveFile(old_dir, &(EXFAT_I(old_inode)->fid), new_dir,
-			  new_dentry);
-	if (err) {
-		if (err == FFS_PERMISSIONERR)
-			err = -EPERM;
-		else if (err == FFS_INVALIDPATH)
-			err = -EINVAL;
-		else if (err == FFS_FILEEXIST)
-			err = -EEXIST;
-		else if (err == FFS_NOTFOUND)
-			err = -ENOENT;
-		else if (err == FFS_FULL)
-			err = -ENOSPC;
-		else
-			err = -EIO;
-		goto out;
-	}
-	INC_IVERSION(new_dir);
-	new_dir->i_ctime = new_dir->i_mtime = new_dir->i_atime =
-				current_time(new_dir);
-	if (IS_DIRSYNC(new_dir))
-		(void)exfat_sync_inode(new_dir);
-	else
-		mark_inode_dirty(new_dir);
-
-	i_pos = ((loff_t)EXFAT_I(old_inode)->fid.dir.dir << 32) |
-			(EXFAT_I(old_inode)->fid.entry & 0xffffffff);
-
-	exfat_detach(old_inode);
-	exfat_attach(old_inode, i_pos);
-	if (IS_DIRSYNC(new_dir))
-		(void)exfat_sync_inode(old_inode);
-	else
-		mark_inode_dirty(old_inode);
-
-	if ((S_ISDIR(old_inode->i_mode)) && (old_dir != new_dir)) {
-		drop_nlink(old_dir);
-		if (!new_inode)
-			inc_nlink(new_dir);
-	}
-	INC_IVERSION(old_dir);
-	old_dir->i_ctime = old_dir->i_mtime = current_time(old_dir);
-	if (IS_DIRSYNC(old_dir))
-		(void)exfat_sync_inode(old_dir);
-	else
-		mark_inode_dirty(old_dir);
-
-	if (new_inode) {
-		exfat_detach(new_inode);
-		drop_nlink(new_inode);
-		if (S_ISDIR(new_inode->i_mode))
-			drop_nlink(new_inode);
-		new_inode->i_ctime = current_time(new_inode);
-	}
-
-out:
-	__unlock_super(sb);
-	pr_debug("%s exited\n", __func__);
-	return err;
-}
-
-static int exfat_cont_expand(struct inode *inode, loff_t size)
-{
-	struct address_space *mapping = inode->i_mapping;
-	loff_t start = i_size_read(inode), count = size - i_size_read(inode);
-	int err, err2;
-
-	err = generic_cont_expand_simple(inode, size);
-	if (err != 0)
-		return err;
-
-	inode->i_ctime = inode->i_mtime = current_time(inode);
-	mark_inode_dirty(inode);
-
-	if (IS_SYNC(inode)) {
-		err = filemap_fdatawrite_range(mapping, start,
-					       start + count - 1);
-		err2 = sync_mapping_buffers(mapping);
-		err = (err) ? (err) : (err2);
-		err2 = write_inode_now(inode, 1);
-		err = (err) ? (err) : (err2);
-		if (!err)
-			err =  filemap_fdatawait_range(mapping, start,
-						       start + count - 1);
-	}
-	return err;
-}
-
-static int exfat_allow_set_time(struct exfat_sb_info *sbi, struct inode *inode)
-{
-	mode_t allow_utime = sbi->options.allow_utime;
-
-	if (!uid_eq(current_fsuid(), inode->i_uid)) {
-		if (in_group_p(inode->i_gid))
-			allow_utime >>= 3;
-		if (allow_utime & MAY_WRITE)
-			return 1;
-	}
-
-	/* use a default check */
-	return 0;
-}
-
-static int exfat_sanitize_mode(const struct exfat_sb_info *sbi,
-			       struct inode *inode, umode_t *mode_ptr)
-{
-	mode_t i_mode, mask, perm;
-
-	i_mode = inode->i_mode;
-
-	if (S_ISREG(i_mode) || S_ISLNK(i_mode))
-		mask = sbi->options.fs_fmask;
-	else
-		mask = sbi->options.fs_dmask;
-
-	perm = *mode_ptr & ~(S_IFMT | mask);
-
-	/* Of the r and x bits, all (subject to umask) must be present.*/
-	if ((perm & 0555) != (i_mode & 0555))
-		return -EPERM;
-
-	if (exfat_mode_can_hold_ro(inode)) {
-		/*
-		 * Of the w bits, either all (subject to umask) or none must be
-		 * present.
-		 */
-		if ((perm & 0222) && ((perm & 0222) != (0222 & ~mask)))
-			return -EPERM;
-	} else {
-		/*
-		 * If exfat_mode_can_hold_ro(inode) is false, can't change w
-		 * bits.
-		 */
-		if ((perm & 0222) != (0222 & ~mask))
-			return -EPERM;
-	}
-
-	*mode_ptr &= S_IFMT | perm;
-
-	return 0;
-}
-
-static void exfat_truncate(struct inode *inode, loff_t old_size)
-{
-	struct super_block *sb = inode->i_sb;
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
-	int err;
-
-	__lock_super(sb);
-
-	/*
-	 * This protects against truncating a file bigger than it was then
-	 * trying to write into the hole.
-	 */
-	if (EXFAT_I(inode)->mmu_private > i_size_read(inode))
-		EXFAT_I(inode)->mmu_private = i_size_read(inode);
-
-	if (EXFAT_I(inode)->fid.start_clu == 0)
-		goto out;
-
-	err = ffsTruncateFile(inode, old_size, i_size_read(inode));
-	if (err)
-		goto out;
-
-	inode->i_ctime = inode->i_mtime = current_time(inode);
-	if (IS_DIRSYNC(inode))
-		(void)exfat_sync_inode(inode);
-	else
-		mark_inode_dirty(inode);
-
-	inode->i_blocks = ((i_size_read(inode) + (p_fs->cluster_size - 1)) &
-			   ~((loff_t)p_fs->cluster_size - 1)) >> 9;
-out:
-	__unlock_super(sb);
-}
-
-static int exfat_setattr(struct dentry *dentry, struct iattr *attr)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(dentry->d_sb);
-	struct inode *inode = dentry->d_inode;
-	unsigned int ia_valid;
-	int error;
-	loff_t old_size;
-
-	pr_debug("%s entered\n", __func__);
-
-	if ((attr->ia_valid & ATTR_SIZE)
-		&& (attr->ia_size > i_size_read(inode))) {
-		error = exfat_cont_expand(inode, attr->ia_size);
-		if (error || attr->ia_valid == ATTR_SIZE)
-			return error;
-		attr->ia_valid &= ~ATTR_SIZE;
-	}
-
-	ia_valid = attr->ia_valid;
-
-	if ((ia_valid & (ATTR_MTIME_SET | ATTR_ATIME_SET | ATTR_TIMES_SET))
-		&& exfat_allow_set_time(sbi, inode)) {
-		attr->ia_valid &= ~(ATTR_MTIME_SET |
-				    ATTR_ATIME_SET |
-				    ATTR_TIMES_SET);
-	}
-
-	error = setattr_prepare(dentry, attr);
-	attr->ia_valid = ia_valid;
-	if (error)
-		return error;
-
-	if (((attr->ia_valid & ATTR_UID) &&
-	     (!uid_eq(attr->ia_uid, sbi->options.fs_uid))) ||
-	    ((attr->ia_valid & ATTR_GID) &&
-	     (!gid_eq(attr->ia_gid, sbi->options.fs_gid))) ||
-	    ((attr->ia_valid & ATTR_MODE) &&
-	     (attr->ia_mode & ~(S_IFREG | S_IFLNK | S_IFDIR | 0777)))) {
-		return -EPERM;
-	}
-
-	/*
-	 * We don't return -EPERM here. Yes, strange, but this is too
-	 * old behavior.
-	 */
-	if (attr->ia_valid & ATTR_MODE) {
-		if (exfat_sanitize_mode(sbi, inode, &attr->ia_mode) < 0)
-			attr->ia_valid &= ~ATTR_MODE;
-	}
-
-	EXFAT_I(inode)->fid.size = i_size_read(inode);
-
-	if (attr->ia_valid & ATTR_SIZE) {
-		old_size = i_size_read(inode);
-		down_write(&EXFAT_I(inode)->truncate_lock);
-		truncate_setsize(inode, attr->ia_size);
-		exfat_truncate(inode, old_size);
-		up_write(&EXFAT_I(inode)->truncate_lock);
-	}
-	setattr_copy(inode, attr);
-	mark_inode_dirty(inode);
-
-	pr_debug("%s exited\n", __func__);
-	return error;
-}
-
-static int exfat_getattr(const struct path *path, struct kstat *stat,
-			 u32 request_mask, unsigned int flags)
-{
-	struct inode *inode = path->dentry->d_inode;
-
-	pr_debug("%s entered\n", __func__);
-
-	generic_fillattr(inode, stat);
-	stat->blksize = EXFAT_SB(inode->i_sb)->fs_info.cluster_size;
-
-	pr_debug("%s exited\n", __func__);
-	return 0;
-}
-
-static const struct inode_operations exfat_dir_inode_operations = {
-	.create        = exfat_create,
-	.lookup        = exfat_lookup,
-	.unlink        = exfat_unlink,
-	.symlink       = exfat_symlink,
-	.mkdir         = exfat_mkdir,
-	.rmdir         = exfat_rmdir,
-	.rename        = exfat_rename,
-	.setattr       = exfat_setattr,
-	.getattr       = exfat_getattr,
-};
-
-/*======================================================================*/
-/*  File Operations                                                     */
-/*======================================================================*/
-static const char *exfat_get_link(struct dentry *dentry, struct inode *inode,
-				  struct delayed_call *done)
-{
-	struct exfat_inode_info *ei = EXFAT_I(inode);
-
-	if (ei->target) {
-		char *cookie = ei->target;
-
-		if (cookie)
-			return (char *)(ei->target);
-	}
-	return NULL;
-}
-
-static const struct inode_operations exfat_symlink_inode_operations = {
-		.get_link = exfat_get_link,
-};
-
-static int exfat_file_release(struct inode *inode, struct file *filp)
-{
-	struct super_block *sb = inode->i_sb;
-
-	EXFAT_I(inode)->fid.size = i_size_read(inode);
-	ffsSyncVol(sb, false);
-	return 0;
-}
-
-static const struct file_operations exfat_file_operations = {
-	.llseek      = generic_file_llseek,
-	.read_iter   = generic_file_read_iter,
-	.write_iter  = generic_file_write_iter,
-	.mmap        = generic_file_mmap,
-	.release     = exfat_file_release,
-	.unlocked_ioctl  = exfat_generic_ioctl,
-	.fsync       = generic_file_fsync,
-	.splice_read = generic_file_splice_read,
-};
-
-static const struct inode_operations exfat_file_inode_operations = {
-	.setattr     = exfat_setattr,
-	.getattr     = exfat_getattr,
-};
-
-/*======================================================================*/
-/*  Address Space Operations                                            */
-/*======================================================================*/
-
-static int exfat_bmap(struct inode *inode, sector_t sector, sector_t *phys,
-		      unsigned long *mapped_blocks, int *create)
-{
-	struct super_block *sb = inode->i_sb;
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
-	struct bd_info_t *p_bd = &(sbi->bd_info);
-	const unsigned long blocksize = sb->s_blocksize;
-	const unsigned char blocksize_bits = sb->s_blocksize_bits;
-	sector_t last_block;
-	int err, clu_offset, sec_offset;
-	unsigned int cluster;
-
-	*phys = 0;
-	*mapped_blocks = 0;
-
-	if ((p_fs->vol_type == FAT12) || (p_fs->vol_type == FAT16)) {
-		if (inode->i_ino == EXFAT_ROOT_INO) {
-			if (sector <
-			    (p_fs->dentries_in_root >>
-			     (p_bd->sector_size_bits - DENTRY_SIZE_BITS))) {
-				*phys = sector + p_fs->root_start_sector;
-				*mapped_blocks = 1;
-			}
-			return 0;
-		}
-	}
-
-	last_block = (i_size_read(inode) + (blocksize - 1)) >> blocksize_bits;
-	if (sector >= last_block) {
-		if (*create == 0)
-			return 0;
-	} else {
-		*create = 0;
-	}
-
-	/* cluster offset */
-	clu_offset = sector >> p_fs->sectors_per_clu_bits;
-
-	/* sector offset in cluster */
-	sec_offset = sector & (p_fs->sectors_per_clu - 1);
-
-	EXFAT_I(inode)->fid.size = i_size_read(inode);
-
-	err = ffsMapCluster(inode, clu_offset, &cluster);
-
-	if (err) {
-		if (err == FFS_FULL)
-			return -ENOSPC;
-		else
-			return -EIO;
-	} else if (cluster != CLUSTER_32(~0)) {
-		*phys = START_SECTOR(cluster) + sec_offset;
-		*mapped_blocks = p_fs->sectors_per_clu - sec_offset;
-	}
-
-	return 0;
-}
-
-static int exfat_get_block(struct inode *inode, sector_t iblock,
-			   struct buffer_head *bh_result, int create)
-{
-	struct super_block *sb = inode->i_sb;
-	unsigned long max_blocks = bh_result->b_size >> inode->i_blkbits;
-	int err;
-	unsigned long mapped_blocks;
-	sector_t phys;
-
-	__lock_super(sb);
-
-	err = exfat_bmap(inode, iblock, &phys, &mapped_blocks, &create);
-	if (err) {
-		__unlock_super(sb);
-		return err;
-	}
-
-	if (phys) {
-		max_blocks = min(mapped_blocks, max_blocks);
-		if (create) {
-			EXFAT_I(inode)->mmu_private += max_blocks <<
-							sb->s_blocksize_bits;
-			set_buffer_new(bh_result);
-		}
-		map_bh(bh_result, sb, phys);
-	}
-
-	bh_result->b_size = max_blocks << sb->s_blocksize_bits;
-	__unlock_super(sb);
-
-	return 0;
-}
-
-static int exfat_readpage(struct file *file, struct page *page)
-{
-	return  mpage_readpage(page, exfat_get_block);
-}
-
-static int exfat_readpages(struct file *file, struct address_space *mapping,
-			   struct list_head *pages, unsigned int nr_pages)
-{
-	return  mpage_readpages(mapping, pages, nr_pages, exfat_get_block);
-}
-
-static int exfat_writepage(struct page *page, struct writeback_control *wbc)
-{
-	return block_write_full_page(page, exfat_get_block, wbc);
-}
-
-static int exfat_writepages(struct address_space *mapping,
-			    struct writeback_control *wbc)
-{
-	return mpage_writepages(mapping, wbc, exfat_get_block);
-}
-
-static void exfat_write_failed(struct address_space *mapping, loff_t to)
-{
-	struct inode *inode = mapping->host;
-
-	if (to > i_size_read(inode)) {
-		truncate_pagecache(inode, i_size_read(inode));
-		EXFAT_I(inode)->fid.size = i_size_read(inode);
-		exfat_truncate(inode, i_size_read(inode));
-	}
-}
-
-static int exfat_write_begin(struct file *file, struct address_space *mapping,
-			     loff_t pos, unsigned int len, unsigned int flags,
-			     struct page **pagep, void **fsdata)
-{
-	int ret;
-
-	*pagep = NULL;
-	ret = cont_write_begin(file, mapping, pos, len, flags, pagep, fsdata,
-			       exfat_get_block,
-			       &EXFAT_I(mapping->host)->mmu_private);
-
-	if (ret < 0)
-		exfat_write_failed(mapping, pos + len);
-	return ret;
-}
-
-static int exfat_write_end(struct file *file, struct address_space *mapping,
-			   loff_t pos, unsigned int len, unsigned int copied,
-			   struct page *pagep, void *fsdata)
-{
-	struct inode *inode = mapping->host;
-	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
-	int err;
-
-	err = generic_write_end(file, mapping, pos, len, copied, pagep, fsdata);
-
-	if (err < len)
-		exfat_write_failed(mapping, pos + len);
-
-	if (!(err < 0) && !(fid->attr & ATTR_ARCHIVE)) {
-		inode->i_mtime = inode->i_ctime = current_time(inode);
-		fid->attr |= ATTR_ARCHIVE;
-		mark_inode_dirty(inode);
-	}
-	return err;
-}
-
-static ssize_t exfat_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
-{
-	struct inode *inode = iocb->ki_filp->f_mapping->host;
-	struct address_space *mapping = iocb->ki_filp->f_mapping;
-	ssize_t ret;
-	int rw;
-
-	rw = iov_iter_rw(iter);
-
-	if (rw == WRITE) {
-		if (EXFAT_I(inode)->mmu_private < iov_iter_count(iter))
-			return 0;
-	}
-	ret = blockdev_direct_IO(iocb, inode, iter, exfat_get_block);
-
-	if ((ret < 0) && (rw & WRITE))
-		exfat_write_failed(mapping, iov_iter_count(iter));
-	return ret;
-}
-
-static sector_t _exfat_bmap(struct address_space *mapping, sector_t block)
-{
-	sector_t blocknr;
-
-	/* exfat_get_cluster() assumes the requested blocknr isn't truncated. */
-	down_read(&EXFAT_I(mapping->host)->truncate_lock);
-	blocknr = generic_block_bmap(mapping, block, exfat_get_block);
-	up_read(&EXFAT_I(mapping->host)->truncate_lock);
-
-	return blocknr;
-}
-
-static const struct address_space_operations exfat_aops = {
-	.readpage    = exfat_readpage,
-	.readpages   = exfat_readpages,
-	.writepage   = exfat_writepage,
-	.writepages  = exfat_writepages,
-	.write_begin = exfat_write_begin,
-	.write_end   = exfat_write_end,
-	.direct_IO   = exfat_direct_IO,
-	.bmap        = _exfat_bmap
-};
-
-/*======================================================================*/
-/*  Super Operations                                                    */
-/*======================================================================*/
-
-static struct inode *exfat_iget(struct super_block *sb, loff_t i_pos)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct exfat_inode_info *info;
-	struct hlist_head *head = sbi->inode_hashtable + exfat_hash(i_pos);
-	struct inode *inode = NULL;
-
-	spin_lock(&sbi->inode_hash_lock);
-	hlist_for_each_entry(info, head, i_hash_fat) {
-		BUG_ON(info->vfs_inode.i_sb != sb);
-
-		if (i_pos != info->i_pos)
-			continue;
-		inode = igrab(&info->vfs_inode);
-		if (inode)
-			break;
-	}
-	spin_unlock(&sbi->inode_hash_lock);
-	return inode;
-}
-
-/* doesn't deal with root inode */
-static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
-	struct dir_entry_t info;
-
-	memcpy(&(EXFAT_I(inode)->fid), fid, sizeof(struct file_id_t));
-
-	ffsReadStat(inode, &info);
-
-	EXFAT_I(inode)->i_pos = 0;
-	EXFAT_I(inode)->target = NULL;
-	inode->i_uid = sbi->options.fs_uid;
-	inode->i_gid = sbi->options.fs_gid;
-	INC_IVERSION(inode);
-	inode->i_generation = get_seconds();
-
-	if (info.Attr & ATTR_SUBDIR) { /* directory */
-		inode->i_generation &= ~1;
-		inode->i_mode = exfat_make_mode(sbi, info.Attr, 0777);
-		inode->i_op = &exfat_dir_inode_operations;
-		inode->i_fop = &exfat_dir_operations;
-
-		i_size_write(inode, info.Size);
-		EXFAT_I(inode)->mmu_private = i_size_read(inode);
-		set_nlink(inode, info.NumSubdirs);
-	} else if (info.Attr & ATTR_SYMLINK) { /* symbolic link */
-		inode->i_generation |= 1;
-		inode->i_mode = exfat_make_mode(sbi, info.Attr, 0777);
-		inode->i_op = &exfat_symlink_inode_operations;
-
-		i_size_write(inode, info.Size);
-		EXFAT_I(inode)->mmu_private = i_size_read(inode);
-	} else { /* regular file */
-		inode->i_generation |= 1;
-		inode->i_mode = exfat_make_mode(sbi, info.Attr, 0777);
-		inode->i_op = &exfat_file_inode_operations;
-		inode->i_fop = &exfat_file_operations;
-		inode->i_mapping->a_ops = &exfat_aops;
-		inode->i_mapping->nrpages = 0;
-
-		i_size_write(inode, info.Size);
-		EXFAT_I(inode)->mmu_private = i_size_read(inode);
-	}
-	exfat_save_attr(inode, info.Attr);
-
-	inode->i_blocks = ((i_size_read(inode) + (p_fs->cluster_size - 1))
-				& ~((loff_t)p_fs->cluster_size - 1)) >> 9;
-
-	exfat_time_fat2unix(&inode->i_mtime, &info.ModifyTimestamp);
-	exfat_time_fat2unix(&inode->i_ctime, &info.CreateTimestamp);
-	exfat_time_fat2unix(&inode->i_atime, &info.AccessTimestamp);
-
-	return 0;
-}
-
-static struct inode *exfat_build_inode(struct super_block *sb,
-				       struct file_id_t *fid, loff_t i_pos)
-{
-	struct inode *inode;
-	int err;
-
-	inode = exfat_iget(sb, i_pos);
-	if (inode)
-		goto out;
-	inode = new_inode(sb);
-	if (!inode) {
-		inode = ERR_PTR(-ENOMEM);
-		goto out;
-	}
-	inode->i_ino = iunique(sb, EXFAT_ROOT_INO);
-	SET_IVERSION(inode, 1);
-	err = exfat_fill_inode(inode, fid);
-	if (err) {
-		iput(inode);
-		inode = ERR_PTR(err);
-		goto out;
-	}
-	exfat_attach(inode, i_pos);
-	insert_inode_hash(inode);
-out:
-	return inode;
-}
-
-static int exfat_sync_inode(struct inode *inode)
-{
-	return exfat_write_inode(inode, NULL);
-}
-
-static struct inode *exfat_alloc_inode(struct super_block *sb)
-{
-	struct exfat_inode_info *ei;
-
-	ei = kmem_cache_alloc(exfat_inode_cachep, GFP_NOFS);
-	if (!ei)
-		return NULL;
-
-	init_rwsem(&ei->truncate_lock);
-
-	return &ei->vfs_inode;
-}
-
-static void exfat_destroy_inode(struct inode *inode)
-{
-	kfree(EXFAT_I(inode)->target);
-	EXFAT_I(inode)->target = NULL;
-
-	kmem_cache_free(exfat_inode_cachep, EXFAT_I(inode));
-}
-
-static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc)
-{
-	struct dir_entry_t info;
-
-	if (inode->i_ino == EXFAT_ROOT_INO)
-		return 0;
-
-	info.Attr = exfat_make_attr(inode);
-	info.Size = i_size_read(inode);
-
-	exfat_time_unix2fat(&inode->i_mtime, &info.ModifyTimestamp);
-	exfat_time_unix2fat(&inode->i_ctime, &info.CreateTimestamp);
-	exfat_time_unix2fat(&inode->i_atime, &info.AccessTimestamp);
-
-	ffsWriteStat(inode, &info);
-
-	return 0;
-}
-
-static void exfat_evict_inode(struct inode *inode)
-{
-	truncate_inode_pages(&inode->i_data, 0);
-
-	if (!inode->i_nlink)
-		i_size_write(inode, 0);
-	invalidate_inode_buffers(inode);
-	clear_inode(inode);
-	exfat_detach(inode);
-
-	remove_inode_hash(inode);
-}
-
-static void exfat_free_super(struct exfat_sb_info *sbi)
-{
-	if (sbi->nls_disk)
-		unload_nls(sbi->nls_disk);
-	if (sbi->nls_io)
-		unload_nls(sbi->nls_io);
-	if (sbi->options.iocharset != exfat_default_iocharset)
-		kfree(sbi->options.iocharset);
-	/* mutex_init is in exfat_fill_super function. only for 3.7+ */
-	mutex_destroy(&sbi->s_lock);
-	kfree(sbi);
-}
-
-static void exfat_put_super(struct super_block *sb)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-
-	if (__is_sb_dirty(sb))
-		exfat_write_super(sb);
-
-	ffsUmountVol(sb);
-
-	sb->s_fs_info = NULL;
-	exfat_free_super(sbi);
-}
-
-static void exfat_write_super(struct super_block *sb)
-{
-	__lock_super(sb);
-
-	__set_sb_clean(sb);
-
-	if (!sb_rdonly(sb))
-		ffsSyncVol(sb, true);
-
-	__unlock_super(sb);
-}
-
-static int exfat_sync_fs(struct super_block *sb, int wait)
-{
-	int err = 0;
-
-	if (__is_sb_dirty(sb)) {
-		__lock_super(sb);
-		__set_sb_clean(sb);
-		err = ffsSyncVol(sb, true);
-		__unlock_super(sb);
-	}
-
-	return err;
-}
-
-static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
-{
-	struct super_block *sb = dentry->d_sb;
-	u64 id = huge_encode_dev(sb->s_bdev->bd_dev);
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-	struct vol_info_t info;
-
-	if (p_fs->used_clusters == UINT_MAX) {
-		if (ffsGetVolInfo(sb, &info) == FFS_MEDIAERR)
-			return -EIO;
-
-	} else {
-		info.FatType = p_fs->vol_type;
-		info.ClusterSize = p_fs->cluster_size;
-		info.NumClusters = p_fs->num_clusters - 2;
-		info.UsedClusters = p_fs->used_clusters;
-		info.FreeClusters = info.NumClusters - info.UsedClusters;
-
-		if (p_fs->dev_ejected)
-			pr_info("[EXFAT] statfs on device that is ejected\n");
-	}
-
-	buf->f_type = sb->s_magic;
-	buf->f_bsize = info.ClusterSize;
-	buf->f_blocks = info.NumClusters;
-	buf->f_bfree = info.FreeClusters;
-	buf->f_bavail = info.FreeClusters;
-	buf->f_fsid.val[0] = (u32)id;
-	buf->f_fsid.val[1] = (u32)(id >> 32);
-	buf->f_namelen = 260;
-
-	return 0;
-}
-
-static int exfat_remount(struct super_block *sb, int *flags, char *data)
-{
-	*flags |= SB_NODIRATIME;
-	return 0;
-}
-
-static int exfat_show_options(struct seq_file *m, struct dentry *root)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(root->d_sb);
-	struct exfat_mount_options *opts = &sbi->options;
-
-	if (__kuid_val(opts->fs_uid))
-		seq_printf(m, ",uid=%u", __kuid_val(opts->fs_uid));
-	if (__kgid_val(opts->fs_gid))
-		seq_printf(m, ",gid=%u", __kgid_val(opts->fs_gid));
-	seq_printf(m, ",fmask=%04o", opts->fs_fmask);
-	seq_printf(m, ",dmask=%04o", opts->fs_dmask);
-	if (opts->allow_utime)
-		seq_printf(m, ",allow_utime=%04o", opts->allow_utime);
-	if (sbi->nls_disk)
-		seq_printf(m, ",codepage=%s", sbi->nls_disk->charset);
-	if (sbi->nls_io)
-		seq_printf(m, ",iocharset=%s", sbi->nls_io->charset);
-	seq_printf(m, ",namecase=%u", opts->casesensitive);
-	if (opts->errors == EXFAT_ERRORS_CONT)
-		seq_puts(m, ",errors=continue");
-	else if (opts->errors == EXFAT_ERRORS_PANIC)
-		seq_puts(m, ",errors=panic");
-	else
-		seq_puts(m, ",errors=remount-ro");
-#ifdef CONFIG_EXFAT_DISCARD
-	if (opts->discard)
-		seq_puts(m, ",discard");
-#endif
-	return 0;
-}
-
-static const struct super_operations exfat_sops = {
-	.alloc_inode   = exfat_alloc_inode,
-	.destroy_inode = exfat_destroy_inode,
-	.write_inode   = exfat_write_inode,
-	.evict_inode  = exfat_evict_inode,
-	.put_super     = exfat_put_super,
-	.sync_fs       = exfat_sync_fs,
-	.statfs        = exfat_statfs,
-	.remount_fs    = exfat_remount,
-	.show_options  = exfat_show_options,
-};
-
-/*======================================================================*/
-/*  Export Operations                                                   */
-/*======================================================================*/
-
-static struct inode *exfat_nfs_get_inode(struct super_block *sb, u64 ino,
-					 u32 generation)
-{
-	struct inode *inode = NULL;
-
-	if (ino < EXFAT_ROOT_INO)
-		return inode;
-	inode = ilookup(sb, ino);
-
-	if (inode && generation && (inode->i_generation != generation)) {
-		iput(inode);
-		inode = NULL;
-	}
-
-	return inode;
-}
-
-static struct dentry *exfat_fh_to_dentry(struct super_block *sb,
-					 struct fid *fid, int fh_len,
-					 int fh_type)
-{
-	return generic_fh_to_dentry(sb, fid, fh_len, fh_type,
-				exfat_nfs_get_inode);
-}
-
-static struct dentry *exfat_fh_to_parent(struct super_block *sb,
-					 struct fid *fid, int fh_len,
-					 int fh_type)
-{
-	return generic_fh_to_parent(sb, fid, fh_len, fh_type,
-				exfat_nfs_get_inode);
-}
-
-static const struct export_operations exfat_export_ops = {
-	.fh_to_dentry   = exfat_fh_to_dentry,
-	.fh_to_parent   = exfat_fh_to_parent,
-};
-
-/*======================================================================*/
-/*  Super Block Read Operations                                         */
-/*======================================================================*/
-
-enum {
-	Opt_uid,
-	Opt_gid,
-	Opt_umask,
-	Opt_dmask,
-	Opt_fmask,
-	Opt_allow_utime,
-	Opt_codepage,
-	Opt_charset,
-	Opt_namecase,
-	Opt_debug,
-	Opt_err_cont,
-	Opt_err_panic,
-	Opt_err_ro,
-	Opt_utf8_hack,
-	Opt_err,
-#ifdef CONFIG_EXFAT_DISCARD
-	Opt_discard,
-#endif /* EXFAT_CONFIG_DISCARD */
-};
-
-static const match_table_t exfat_tokens = {
-	{Opt_uid, "uid=%u"},
-	{Opt_gid, "gid=%u"},
-	{Opt_umask, "umask=%o"},
-	{Opt_dmask, "dmask=%o"},
-	{Opt_fmask, "fmask=%o"},
-	{Opt_allow_utime, "allow_utime=%o"},
-	{Opt_codepage, "codepage=%u"},
-	{Opt_charset, "iocharset=%s"},
-	{Opt_namecase, "namecase=%u"},
-	{Opt_debug, "debug"},
-	{Opt_err_cont, "errors=continue"},
-	{Opt_err_panic, "errors=panic"},
-	{Opt_err_ro, "errors=remount-ro"},
-	{Opt_utf8_hack, "utf8"},
-#ifdef CONFIG_EXFAT_DISCARD
-	{Opt_discard, "discard"},
-#endif /* CONFIG_EXFAT_DISCARD */
-	{Opt_err, NULL}
-};
-
-static int parse_options(char *options, int silent, int *debug,
-			 struct exfat_mount_options *opts)
-{
-	char *p;
-	substring_t args[MAX_OPT_ARGS];
-	int option;
-	char *iocharset;
-
-	opts->fs_uid = current_uid();
-	opts->fs_gid = current_gid();
-	opts->fs_fmask = opts->fs_dmask = current->fs->umask;
-	opts->allow_utime = U16_MAX;
-	opts->codepage = exfat_default_codepage;
-	opts->iocharset = exfat_default_iocharset;
-	opts->casesensitive = 0;
-	opts->errors = EXFAT_ERRORS_RO;
-#ifdef CONFIG_EXFAT_DISCARD
-	opts->discard = 0;
-#endif
-	*debug = 0;
-
-	if (!options)
-		goto out;
-
-	while ((p = strsep(&options, ","))) {
-		int token;
-
-		if (!*p)
-			continue;
-
-		token = match_token(p, exfat_tokens, args);
-		switch (token) {
-		case Opt_uid:
-			if (match_int(&args[0], &option))
-				return 0;
-			opts->fs_uid = KUIDT_INIT(option);
-			break;
-		case Opt_gid:
-			if (match_int(&args[0], &option))
-				return 0;
-			opts->fs_gid = KGIDT_INIT(option);
-			break;
-		case Opt_umask:
-		case Opt_dmask:
-		case Opt_fmask:
-			if (match_octal(&args[0], &option))
-				return 0;
-			if (token != Opt_dmask)
-				opts->fs_fmask = option;
-			if (token != Opt_fmask)
-				opts->fs_dmask = option;
-			break;
-		case Opt_allow_utime:
-			if (match_octal(&args[0], &option))
-				return 0;
-			opts->allow_utime = option & 0022;
-			break;
-		case Opt_codepage:
-			if (match_int(&args[0], &option))
-				return 0;
-			opts->codepage = option;
-			break;
-		case Opt_charset:
-			if (opts->iocharset != exfat_default_iocharset)
-				kfree(opts->iocharset);
-			iocharset = match_strdup(&args[0]);
-			if (!iocharset)
-				return -ENOMEM;
-			opts->iocharset = iocharset;
-			break;
-		case Opt_namecase:
-			if (match_int(&args[0], &option))
-				return 0;
-			opts->casesensitive = option;
-			break;
-		case Opt_err_cont:
-			opts->errors = EXFAT_ERRORS_CONT;
-			break;
-		case Opt_err_panic:
-			opts->errors = EXFAT_ERRORS_PANIC;
-			break;
-		case Opt_err_ro:
-			opts->errors = EXFAT_ERRORS_RO;
-			break;
-		case Opt_debug:
-			*debug = 1;
-			break;
-#ifdef CONFIG_EXFAT_DISCARD
-		case Opt_discard:
-			opts->discard = 1;
-			break;
-#endif /* CONFIG_EXFAT_DISCARD */
-		case Opt_utf8_hack:
-			break;
-		default:
-			if (!silent)
-				pr_err("[EXFAT] Unrecognized mount option %s or missing value\n",
-				       p);
-			return -EINVAL;
-		}
-	}
-
-out:
-	if (opts->allow_utime == U16_MAX)
-		opts->allow_utime = ~opts->fs_dmask & 0022;
-
-	return 0;
-}
-
-static void exfat_hash_init(struct super_block *sb)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	int i;
-
-	spin_lock_init(&sbi->inode_hash_lock);
-	for (i = 0; i < EXFAT_HASH_SIZE; i++)
-		INIT_HLIST_HEAD(&sbi->inode_hashtable[i]);
-}
-
-static int exfat_read_root(struct inode *inode)
-{
-	struct super_block *sb = inode->i_sb;
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct fs_info_t *p_fs = &(sbi->fs_info);
-	struct dir_entry_t info;
-
-	EXFAT_I(inode)->fid.dir.dir = p_fs->root_dir;
-	EXFAT_I(inode)->fid.dir.flags = 0x01;
-	EXFAT_I(inode)->fid.entry = -1;
-	EXFAT_I(inode)->fid.start_clu = p_fs->root_dir;
-	EXFAT_I(inode)->fid.flags = 0x01;
-	EXFAT_I(inode)->fid.type = TYPE_DIR;
-	EXFAT_I(inode)->fid.rwoffset = 0;
-	EXFAT_I(inode)->fid.hint_last_off = -1;
-
-	EXFAT_I(inode)->target = NULL;
-
-	ffsReadStat(inode, &info);
-
-	inode->i_uid = sbi->options.fs_uid;
-	inode->i_gid = sbi->options.fs_gid;
-	INC_IVERSION(inode);
-	inode->i_generation = 0;
-	inode->i_mode = exfat_make_mode(sbi, ATTR_SUBDIR, 0777);
-	inode->i_op = &exfat_dir_inode_operations;
-	inode->i_fop = &exfat_dir_operations;
-
-	i_size_write(inode, info.Size);
-	inode->i_blocks = ((i_size_read(inode) + (p_fs->cluster_size - 1))
-				& ~((loff_t)p_fs->cluster_size - 1)) >> 9;
-	EXFAT_I(inode)->i_pos = ((loff_t)p_fs->root_dir << 32) | 0xffffffff;
-	EXFAT_I(inode)->mmu_private = i_size_read(inode);
-
-	exfat_save_attr(inode, ATTR_SUBDIR);
-	inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
-	set_nlink(inode, info.NumSubdirs + 2);
-
-	return 0;
-}
-
-static void setup_dops(struct super_block *sb)
-{
-	if (EXFAT_SB(sb)->options.casesensitive == 0)
-		sb->s_d_op = &exfat_ci_dentry_ops;
-	else
-		sb->s_d_op = &exfat_dentry_ops;
-}
-
-static int exfat_fill_super(struct super_block *sb, void *data, int silent)
-{
-	struct inode *root_inode = NULL;
-	struct exfat_sb_info *sbi;
-	int debug, ret;
-	long error;
-	char buf[50];
-
-	/*
-	 * GFP_KERNEL is ok here, because while we do hold the
-	 * supeblock lock, memory pressure can't call back into
-	 * the filesystem, since we're only just about to mount
-	 * it and have no inodes etc active!
-	 */
-	sbi = kzalloc(sizeof(struct exfat_sb_info), GFP_KERNEL);
-	if (!sbi)
-		return -ENOMEM;
-	mutex_init(&sbi->s_lock);
-	sb->s_fs_info = sbi;
-	sb->s_flags |= SB_NODIRATIME;
-	sb->s_magic = EXFAT_SUPER_MAGIC;
-	sb->s_op = &exfat_sops;
-	sb->s_export_op = &exfat_export_ops;
-
-	error = parse_options(data, silent, &debug, &sbi->options);
-	if (error)
-		goto out_fail;
-
-	setup_dops(sb);
-
-	error = -EIO;
-	sb_min_blocksize(sb, 512);
-	sb->s_maxbytes = 0x7fffffffffffffffLL;    /* maximum file size */
-
-	ret = ffsMountVol(sb);
-	if (ret) {
-		if (!silent)
-			pr_err("[EXFAT] ffsMountVol failed\n");
-
-		goto out_fail;
-	}
-
-	/* set up enough so that it can read an inode */
-	exfat_hash_init(sb);
-
-	/*
-	 * The low byte of FAT's first entry must have same value with
-	 * media-field.  But in real world, too many devices is
-	 * writing wrong value.  So, removed that validity check.
-	 *
-	 * if (FAT_FIRST_ENT(sb, media) != first)
-	 */
-
-	/* codepage is not meaningful in exfat */
-	if (sbi->fs_info.vol_type != EXFAT) {
-		error = -EINVAL;
-		sprintf(buf, "cp%d", sbi->options.codepage);
-		sbi->nls_disk = load_nls(buf);
-		if (!sbi->nls_disk) {
-			pr_err("[EXFAT] Codepage %s not found\n", buf);
-			goto out_fail2;
-		}
-	}
-
-	sbi->nls_io = load_nls(sbi->options.iocharset);
-
-	error = -ENOMEM;
-	root_inode = new_inode(sb);
-	if (!root_inode)
-		goto out_fail2;
-	root_inode->i_ino = EXFAT_ROOT_INO;
-	SET_IVERSION(root_inode, 1);
-
-	error = exfat_read_root(root_inode);
-	if (error < 0)
-		goto out_fail2;
-	error = -ENOMEM;
-	exfat_attach(root_inode, EXFAT_I(root_inode)->i_pos);
-	insert_inode_hash(root_inode);
-	sb->s_root = d_make_root(root_inode);
-	if (!sb->s_root) {
-		pr_err("[EXFAT] Getting the root inode failed\n");
-		goto out_fail2;
-	}
-
-	return 0;
-
-out_fail2:
-	ffsUmountVol(sb);
-out_fail:
-	if (root_inode)
-		iput(root_inode);
-	sb->s_fs_info = NULL;
-	exfat_free_super(sbi);
-	return error;
-}
-
-static struct dentry *exfat_fs_mount(struct file_system_type *fs_type,
-				     int flags, const char *dev_name,
-				     void *data)
-{
-	return mount_bdev(fs_type, flags, dev_name, data, exfat_fill_super);
-}
-
-static void init_once(void *foo)
-{
-	struct exfat_inode_info *ei = (struct exfat_inode_info *)foo;
-
-	INIT_HLIST_NODE(&ei->i_hash_fat);
-	inode_init_once(&ei->vfs_inode);
-}
-
-static int __init exfat_init_inodecache(void)
-{
-	exfat_inode_cachep = kmem_cache_create("exfat_inode_cache",
-					       sizeof(struct exfat_inode_info),
-					       0,
-					       (SLAB_RECLAIM_ACCOUNT |
-						SLAB_MEM_SPREAD),
-					       init_once);
-	if (!exfat_inode_cachep)
-		return -ENOMEM;
-	return 0;
-}
-
-static void __exit exfat_destroy_inodecache(void)
-{
-	/*
-	 * Make sure all delayed rcu free inodes are flushed before we
-	 * destroy cache.
-	 */
-	rcu_barrier();
-	kmem_cache_destroy(exfat_inode_cachep);
-}
-
-#ifdef CONFIG_EXFAT_KERNEL_DEBUG
-static void exfat_debug_kill_sb(struct super_block *sb)
-{
-	struct exfat_sb_info *sbi = EXFAT_SB(sb);
-	struct block_device *bdev = sb->s_bdev;
-	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
-
-	long flags;
-
-	if (sbi) {
-		flags = sbi->debug_flags;
-
-		if (flags & EXFAT_DEBUGFLAGS_INVALID_UMOUNT) {
-			/*
-			 * invalidate_bdev drops all device cache include
-			 * dirty. We use this to simulate device removal.
-			 */
-			down(&p_fs->v_sem);
-			FAT_release_all(sb);
-			buf_release_all(sb);
-			up(&p_fs->v_sem);
-
-			invalidate_bdev(bdev);
-		}
-	}
-
-	kill_block_super(sb);
-}
-#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
-
-static struct file_system_type exfat_fs_type = {
-	.owner       = THIS_MODULE,
-	.name        = "exfat",
-	.mount       = exfat_fs_mount,
-#ifdef CONFIG_EXFAT_KERNEL_DEBUG
-	.kill_sb    = exfat_debug_kill_sb,
-#else
-	.kill_sb    = kill_block_super,
-#endif /* CONFIG_EXFAT_KERNEL_DEBUG */
-	.fs_flags    = FS_REQUIRES_DEV,
-};
-
-static int __init init_exfat(void)
-{
-	int err;
-
-	BUILD_BUG_ON(sizeof(struct dentry_t) != DENTRY_SIZE);
-	BUILD_BUG_ON(sizeof(struct dos_dentry_t) != DENTRY_SIZE);
-	BUILD_BUG_ON(sizeof(struct ext_dentry_t) != DENTRY_SIZE);
-	BUILD_BUG_ON(sizeof(struct file_dentry_t) != DENTRY_SIZE);
-	BUILD_BUG_ON(sizeof(struct strm_dentry_t) != DENTRY_SIZE);
-	BUILD_BUG_ON(sizeof(struct name_dentry_t) != DENTRY_SIZE);
-	BUILD_BUG_ON(sizeof(struct bmap_dentry_t) != DENTRY_SIZE);
-	BUILD_BUG_ON(sizeof(struct case_dentry_t) != DENTRY_SIZE);
-	BUILD_BUG_ON(sizeof(struct volm_dentry_t) != DENTRY_SIZE);
-
-	pr_info("exFAT: Version %s\n", EXFAT_VERSION);
-
-	err = exfat_init_inodecache();
-	if (err)
-		return err;
-
-	err = register_filesystem(&exfat_fs_type);
-	if (err)
-		return err;
-
-	return 0;
-}
-
-static void __exit exit_exfat(void)
-{
-	exfat_destroy_inodecache();
-	unregister_filesystem(&exfat_fs_type);
-}
-
-module_init(init_exfat);
-module_exit(exit_exfat);
-
-MODULE_LICENSE("GPL");
-MODULE_DESCRIPTION("exFAT Filesystem Driver");
-MODULE_ALIAS_FS("exfat");
diff --git a/drivers/staging/exfat/exfat_upcase.c b/drivers/staging/exfat/exfat_upcase.c
deleted file mode 100644
index 366082fb3dab..000000000000
--- a/drivers/staging/exfat/exfat_upcase.c
+++ /dev/null
@@ -1,740 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
- */
-
-#include <linux/types.h>
-#include "exfat.h"
-
-const u8 uni_upcase[NUM_UPCASE << 1] = {
-	0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00,
-	0x04, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00,
-	0x08, 0x00, 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00,
-	0x0C, 0x00, 0x0D, 0x00, 0x0E, 0x00, 0x0F, 0x00,
-	0x10, 0x00, 0x11, 0x00, 0x12, 0x00, 0x13, 0x00,
-	0x14, 0x00, 0x15, 0x00, 0x16, 0x00, 0x17, 0x00,
-	0x18, 0x00, 0x19, 0x00, 0x1A, 0x00, 0x1B, 0x00,
-	0x1C, 0x00, 0x1D, 0x00, 0x1E, 0x00, 0x1F, 0x00,
-	0x20, 0x00, 0x21, 0x00, 0x22, 0x00, 0x23, 0x00,
-	0x24, 0x00, 0x25, 0x00, 0x26, 0x00, 0x27, 0x00,
-	0x28, 0x00, 0x29, 0x00, 0x2A, 0x00, 0x2B, 0x00,
-	0x2C, 0x00, 0x2D, 0x00, 0x2E, 0x00, 0x2F, 0x00,
-	0x30, 0x00, 0x31, 0x00, 0x32, 0x00, 0x33, 0x00,
-	0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x37, 0x00,
-	0x38, 0x00, 0x39, 0x00, 0x3A, 0x00, 0x3B, 0x00,
-	0x3C, 0x00, 0x3D, 0x00, 0x3E, 0x00, 0x3F, 0x00,
-	0x40, 0x00, 0x41, 0x00, 0x42, 0x00, 0x43, 0x00,
-	0x44, 0x00, 0x45, 0x00, 0x46, 0x00, 0x47, 0x00,
-	0x48, 0x00, 0x49, 0x00, 0x4A, 0x00, 0x4B, 0x00,
-	0x4C, 0x00, 0x4D, 0x00, 0x4E, 0x00, 0x4F, 0x00,
-	0x50, 0x00, 0x51, 0x00, 0x52, 0x00, 0x53, 0x00,
-	0x54, 0x00, 0x55, 0x00, 0x56, 0x00, 0x57, 0x00,
-	0x58, 0x00, 0x59, 0x00, 0x5A, 0x00, 0x5B, 0x00,
-	0x5C, 0x00, 0x5D, 0x00, 0x5E, 0x00, 0x5F, 0x00,
-	0x60, 0x00, 0x41, 0x00, 0x42, 0x00, 0x43, 0x00,
-	0x44, 0x00, 0x45, 0x00, 0x46, 0x00, 0x47, 0x00,
-	0x48, 0x00, 0x49, 0x00, 0x4A, 0x00, 0x4B, 0x00,
-	0x4C, 0x00, 0x4D, 0x00, 0x4E, 0x00, 0x4F, 0x00,
-	0x50, 0x00, 0x51, 0x00, 0x52, 0x00, 0x53, 0x00,
-	0x54, 0x00, 0x55, 0x00, 0x56, 0x00, 0x57, 0x00,
-	0x58, 0x00, 0x59, 0x00, 0x5A, 0x00, 0x7B, 0x00,
-	0x7C, 0x00, 0x7D, 0x00, 0x7E, 0x00, 0x7F, 0x00,
-	0x80, 0x00, 0x81, 0x00, 0x82, 0x00, 0x83, 0x00,
-	0x84, 0x00, 0x85, 0x00, 0x86, 0x00, 0x87, 0x00,
-	0x88, 0x00, 0x89, 0x00, 0x8A, 0x00, 0x8B, 0x00,
-	0x8C, 0x00, 0x8D, 0x00, 0x8E, 0x00, 0x8F, 0x00,
-	0x90, 0x00, 0x91, 0x00, 0x92, 0x00, 0x93, 0x00,
-	0x94, 0x00, 0x95, 0x00, 0x96, 0x00, 0x97, 0x00,
-	0x98, 0x00, 0x99, 0x00, 0x9A, 0x00, 0x9B, 0x00,
-	0x9C, 0x00, 0x9D, 0x00, 0x9E, 0x00, 0x9F, 0x00,
-	0xA0, 0x00, 0xA1, 0x00, 0xA2, 0x00, 0xA3, 0x00,
-	0xA4, 0x00, 0xA5, 0x00, 0xA6, 0x00, 0xA7, 0x00,
-	0xA8, 0x00, 0xA9, 0x00, 0xAA, 0x00, 0xAB, 0x00,
-	0xAC, 0x00, 0xAD, 0x00, 0xAE, 0x00, 0xAF, 0x00,
-	0xB0, 0x00, 0xB1, 0x00, 0xB2, 0x00, 0xB3, 0x00,
-	0xB4, 0x00, 0xB5, 0x00, 0xB6, 0x00, 0xB7, 0x00,
-	0xB8, 0x00, 0xB9, 0x00, 0xBA, 0x00, 0xBB, 0x00,
-	0xBC, 0x00, 0xBD, 0x00, 0xBE, 0x00, 0xBF, 0x00,
-	0xC0, 0x00, 0xC1, 0x00, 0xC2, 0x00, 0xC3, 0x00,
-	0xC4, 0x00, 0xC5, 0x00, 0xC6, 0x00, 0xC7, 0x00,
-	0xC8, 0x00, 0xC9, 0x00, 0xCA, 0x00, 0xCB, 0x00,
-	0xCC, 0x00, 0xCD, 0x00, 0xCE, 0x00, 0xCF, 0x00,
-	0xD0, 0x00, 0xD1, 0x00, 0xD2, 0x00, 0xD3, 0x00,
-	0xD4, 0x00, 0xD5, 0x00, 0xD6, 0x00, 0xD7, 0x00,
-	0xD8, 0x00, 0xD9, 0x00, 0xDA, 0x00, 0xDB, 0x00,
-	0xDC, 0x00, 0xDD, 0x00, 0xDE, 0x00, 0xDF, 0x00,
-	0xC0, 0x00, 0xC1, 0x00, 0xC2, 0x00, 0xC3, 0x00,
-	0xC4, 0x00, 0xC5, 0x00, 0xC6, 0x00, 0xC7, 0x00,
-	0xC8, 0x00, 0xC9, 0x00, 0xCA, 0x00, 0xCB, 0x00,
-	0xCC, 0x00, 0xCD, 0x00, 0xCE, 0x00, 0xCF, 0x00,
-	0xD0, 0x00, 0xD1, 0x00, 0xD2, 0x00, 0xD3, 0x00,
-	0xD4, 0x00, 0xD5, 0x00, 0xD6, 0x00, 0xF7, 0x00,
-	0xD8, 0x00, 0xD9, 0x00, 0xDA, 0x00, 0xDB, 0x00,
-	0xDC, 0x00, 0xDD, 0x00, 0xDE, 0x00, 0x78, 0x01,
-	0x00, 0x01, 0x00, 0x01, 0x02, 0x01, 0x02, 0x01,
-	0x04, 0x01, 0x04, 0x01, 0x06, 0x01, 0x06, 0x01,
-	0x08, 0x01, 0x08, 0x01, 0x0A, 0x01, 0x0A, 0x01,
-	0x0C, 0x01, 0x0C, 0x01, 0x0E, 0x01, 0x0E, 0x01,
-	0x10, 0x01, 0x10, 0x01, 0x12, 0x01, 0x12, 0x01,
-	0x14, 0x01, 0x14, 0x01, 0x16, 0x01, 0x16, 0x01,
-	0x18, 0x01, 0x18, 0x01, 0x1A, 0x01, 0x1A, 0x01,
-	0x1C, 0x01, 0x1C, 0x01, 0x1E, 0x01, 0x1E, 0x01,
-	0x20, 0x01, 0x20, 0x01, 0x22, 0x01, 0x22, 0x01,
-	0x24, 0x01, 0x24, 0x01, 0x26, 0x01, 0x26, 0x01,
-	0x28, 0x01, 0x28, 0x01, 0x2A, 0x01, 0x2A, 0x01,
-	0x2C, 0x01, 0x2C, 0x01, 0x2E, 0x01, 0x2E, 0x01,
-	0x30, 0x01, 0x31, 0x01, 0x32, 0x01, 0x32, 0x01,
-	0x34, 0x01, 0x34, 0x01, 0x36, 0x01, 0x36, 0x01,
-	0x38, 0x01, 0x39, 0x01, 0x39, 0x01, 0x3B, 0x01,
-	0x3B, 0x01, 0x3D, 0x01, 0x3D, 0x01, 0x3F, 0x01,
-	0x3F, 0x01, 0x41, 0x01, 0x41, 0x01, 0x43, 0x01,
-	0x43, 0x01, 0x45, 0x01, 0x45, 0x01, 0x47, 0x01,
-	0x47, 0x01, 0x49, 0x01, 0x4A, 0x01, 0x4A, 0x01,
-	0x4C, 0x01, 0x4C, 0x01, 0x4E, 0x01, 0x4E, 0x01,
-	0x50, 0x01, 0x50, 0x01, 0x52, 0x01, 0x52, 0x01,
-	0x54, 0x01, 0x54, 0x01, 0x56, 0x01, 0x56, 0x01,
-	0x58, 0x01, 0x58, 0x01, 0x5A, 0x01, 0x5A, 0x01,
-	0x5C, 0x01, 0x5C, 0x01, 0x5E, 0x01, 0x5E, 0x01,
-	0x60, 0x01, 0x60, 0x01, 0x62, 0x01, 0x62, 0x01,
-	0x64, 0x01, 0x64, 0x01, 0x66, 0x01, 0x66, 0x01,
-	0x68, 0x01, 0x68, 0x01, 0x6A, 0x01, 0x6A, 0x01,
-	0x6C, 0x01, 0x6C, 0x01, 0x6E, 0x01, 0x6E, 0x01,
-	0x70, 0x01, 0x70, 0x01, 0x72, 0x01, 0x72, 0x01,
-	0x74, 0x01, 0x74, 0x01, 0x76, 0x01, 0x76, 0x01,
-	0x78, 0x01, 0x79, 0x01, 0x79, 0x01, 0x7B, 0x01,
-	0x7B, 0x01, 0x7D, 0x01, 0x7D, 0x01, 0x7F, 0x01,
-	0x43, 0x02, 0x81, 0x01, 0x82, 0x01, 0x82, 0x01,
-	0x84, 0x01, 0x84, 0x01, 0x86, 0x01, 0x87, 0x01,
-	0x87, 0x01, 0x89, 0x01, 0x8A, 0x01, 0x8B, 0x01,
-	0x8B, 0x01, 0x8D, 0x01, 0x8E, 0x01, 0x8F, 0x01,
-	0x90, 0x01, 0x91, 0x01, 0x91, 0x01, 0x93, 0x01,
-	0x94, 0x01, 0xF6, 0x01, 0x96, 0x01, 0x97, 0x01,
-	0x98, 0x01, 0x98, 0x01, 0x3D, 0x02, 0x9B, 0x01,
-	0x9C, 0x01, 0x9D, 0x01, 0x20, 0x02, 0x9F, 0x01,
-	0xA0, 0x01, 0xA0, 0x01, 0xA2, 0x01, 0xA2, 0x01,
-	0xA4, 0x01, 0xA4, 0x01, 0xA6, 0x01, 0xA7, 0x01,
-	0xA7, 0x01, 0xA9, 0x01, 0xAA, 0x01, 0xAB, 0x01,
-	0xAC, 0x01, 0xAC, 0x01, 0xAE, 0x01, 0xAF, 0x01,
-	0xAF, 0x01, 0xB1, 0x01, 0xB2, 0x01, 0xB3, 0x01,
-	0xB3, 0x01, 0xB5, 0x01, 0xB5, 0x01, 0xB7, 0x01,
-	0xB8, 0x01, 0xB8, 0x01, 0xBA, 0x01, 0xBB, 0x01,
-	0xBC, 0x01, 0xBC, 0x01, 0xBE, 0x01, 0xF7, 0x01,
-	0xC0, 0x01, 0xC1, 0x01, 0xC2, 0x01, 0xC3, 0x01,
-	0xC4, 0x01, 0xC5, 0x01, 0xC4, 0x01, 0xC7, 0x01,
-	0xC8, 0x01, 0xC7, 0x01, 0xCA, 0x01, 0xCB, 0x01,
-	0xCA, 0x01, 0xCD, 0x01, 0xCD, 0x01, 0xCF, 0x01,
-	0xCF, 0x01, 0xD1, 0x01, 0xD1, 0x01, 0xD3, 0x01,
-	0xD3, 0x01, 0xD5, 0x01, 0xD5, 0x01, 0xD7, 0x01,
-	0xD7, 0x01, 0xD9, 0x01, 0xD9, 0x01, 0xDB, 0x01,
-	0xDB, 0x01, 0x8E, 0x01, 0xDE, 0x01, 0xDE, 0x01,
-	0xE0, 0x01, 0xE0, 0x01, 0xE2, 0x01, 0xE2, 0x01,
-	0xE4, 0x01, 0xE4, 0x01, 0xE6, 0x01, 0xE6, 0x01,
-	0xE8, 0x01, 0xE8, 0x01, 0xEA, 0x01, 0xEA, 0x01,
-	0xEC, 0x01, 0xEC, 0x01, 0xEE, 0x01, 0xEE, 0x01,
-	0xF0, 0x01, 0xF1, 0x01, 0xF2, 0x01, 0xF1, 0x01,
-	0xF4, 0x01, 0xF4, 0x01, 0xF6, 0x01, 0xF7, 0x01,
-	0xF8, 0x01, 0xF8, 0x01, 0xFA, 0x01, 0xFA, 0x01,
-	0xFC, 0x01, 0xFC, 0x01, 0xFE, 0x01, 0xFE, 0x01,
-	0x00, 0x02, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02,
-	0x04, 0x02, 0x04, 0x02, 0x06, 0x02, 0x06, 0x02,
-	0x08, 0x02, 0x08, 0x02, 0x0A, 0x02, 0x0A, 0x02,
-	0x0C, 0x02, 0x0C, 0x02, 0x0E, 0x02, 0x0E, 0x02,
-	0x10, 0x02, 0x10, 0x02, 0x12, 0x02, 0x12, 0x02,
-	0x14, 0x02, 0x14, 0x02, 0x16, 0x02, 0x16, 0x02,
-	0x18, 0x02, 0x18, 0x02, 0x1A, 0x02, 0x1A, 0x02,
-	0x1C, 0x02, 0x1C, 0x02, 0x1E, 0x02, 0x1E, 0x02,
-	0x20, 0x02, 0x21, 0x02, 0x22, 0x02, 0x22, 0x02,
-	0x24, 0x02, 0x24, 0x02, 0x26, 0x02, 0x26, 0x02,
-	0x28, 0x02, 0x28, 0x02, 0x2A, 0x02, 0x2A, 0x02,
-	0x2C, 0x02, 0x2C, 0x02, 0x2E, 0x02, 0x2E, 0x02,
-	0x30, 0x02, 0x30, 0x02, 0x32, 0x02, 0x32, 0x02,
-	0x34, 0x02, 0x35, 0x02, 0x36, 0x02, 0x37, 0x02,
-	0x38, 0x02, 0x39, 0x02, 0x65, 0x2C, 0x3B, 0x02,
-	0x3B, 0x02, 0x3D, 0x02, 0x66, 0x2C, 0x3F, 0x02,
-	0x40, 0x02, 0x41, 0x02, 0x41, 0x02, 0x43, 0x02,
-	0x44, 0x02, 0x45, 0x02, 0x46, 0x02, 0x46, 0x02,
-	0x48, 0x02, 0x48, 0x02, 0x4A, 0x02, 0x4A, 0x02,
-	0x4C, 0x02, 0x4C, 0x02, 0x4E, 0x02, 0x4E, 0x02,
-	0x50, 0x02, 0x51, 0x02, 0x52, 0x02, 0x81, 0x01,
-	0x86, 0x01, 0x55, 0x02, 0x89, 0x01, 0x8A, 0x01,
-	0x58, 0x02, 0x8F, 0x01, 0x5A, 0x02, 0x90, 0x01,
-	0x5C, 0x02, 0x5D, 0x02, 0x5E, 0x02, 0x5F, 0x02,
-	0x93, 0x01, 0x61, 0x02, 0x62, 0x02, 0x94, 0x01,
-	0x64, 0x02, 0x65, 0x02, 0x66, 0x02, 0x67, 0x02,
-	0x97, 0x01, 0x96, 0x01, 0x6A, 0x02, 0x62, 0x2C,
-	0x6C, 0x02, 0x6D, 0x02, 0x6E, 0x02, 0x9C, 0x01,
-	0x70, 0x02, 0x71, 0x02, 0x9D, 0x01, 0x73, 0x02,
-	0x74, 0x02, 0x9F, 0x01, 0x76, 0x02, 0x77, 0x02,
-	0x78, 0x02, 0x79, 0x02, 0x7A, 0x02, 0x7B, 0x02,
-	0x7C, 0x02, 0x64, 0x2C, 0x7E, 0x02, 0x7F, 0x02,
-	0xA6, 0x01, 0x81, 0x02, 0x82, 0x02, 0xA9, 0x01,
-	0x84, 0x02, 0x85, 0x02, 0x86, 0x02, 0x87, 0x02,
-	0xAE, 0x01, 0x44, 0x02, 0xB1, 0x01, 0xB2, 0x01,
-	0x45, 0x02, 0x8D, 0x02, 0x8E, 0x02, 0x8F, 0x02,
-	0x90, 0x02, 0x91, 0x02, 0xB7, 0x01, 0x93, 0x02,
-	0x94, 0x02, 0x95, 0x02, 0x96, 0x02, 0x97, 0x02,
-	0x98, 0x02, 0x99, 0x02, 0x9A, 0x02, 0x9B, 0x02,
-	0x9C, 0x02, 0x9D, 0x02, 0x9E, 0x02, 0x9F, 0x02,
-	0xA0, 0x02, 0xA1, 0x02, 0xA2, 0x02, 0xA3, 0x02,
-	0xA4, 0x02, 0xA5, 0x02, 0xA6, 0x02, 0xA7, 0x02,
-	0xA8, 0x02, 0xA9, 0x02, 0xAA, 0x02, 0xAB, 0x02,
-	0xAC, 0x02, 0xAD, 0x02, 0xAE, 0x02, 0xAF, 0x02,
-	0xB0, 0x02, 0xB1, 0x02, 0xB2, 0x02, 0xB3, 0x02,
-	0xB4, 0x02, 0xB5, 0x02, 0xB6, 0x02, 0xB7, 0x02,
-	0xB8, 0x02, 0xB9, 0x02, 0xBA, 0x02, 0xBB, 0x02,
-	0xBC, 0x02, 0xBD, 0x02, 0xBE, 0x02, 0xBF, 0x02,
-	0xC0, 0x02, 0xC1, 0x02, 0xC2, 0x02, 0xC3, 0x02,
-	0xC4, 0x02, 0xC5, 0x02, 0xC6, 0x02, 0xC7, 0x02,
-	0xC8, 0x02, 0xC9, 0x02, 0xCA, 0x02, 0xCB, 0x02,
-	0xCC, 0x02, 0xCD, 0x02, 0xCE, 0x02, 0xCF, 0x02,
-	0xD0, 0x02, 0xD1, 0x02, 0xD2, 0x02, 0xD3, 0x02,
-	0xD4, 0x02, 0xD5, 0x02, 0xD6, 0x02, 0xD7, 0x02,
-	0xD8, 0x02, 0xD9, 0x02, 0xDA, 0x02, 0xDB, 0x02,
-	0xDC, 0x02, 0xDD, 0x02, 0xDE, 0x02, 0xDF, 0x02,
-	0xE0, 0x02, 0xE1, 0x02, 0xE2, 0x02, 0xE3, 0x02,
-	0xE4, 0x02, 0xE5, 0x02, 0xE6, 0x02, 0xE7, 0x02,
-	0xE8, 0x02, 0xE9, 0x02, 0xEA, 0x02, 0xEB, 0x02,
-	0xEC, 0x02, 0xED, 0x02, 0xEE, 0x02, 0xEF, 0x02,
-	0xF0, 0x02, 0xF1, 0x02, 0xF2, 0x02, 0xF3, 0x02,
-	0xF4, 0x02, 0xF5, 0x02, 0xF6, 0x02, 0xF7, 0x02,
-	0xF8, 0x02, 0xF9, 0x02, 0xFA, 0x02, 0xFB, 0x02,
-	0xFC, 0x02, 0xFD, 0x02, 0xFE, 0x02, 0xFF, 0x02,
-	0x00, 0x03, 0x01, 0x03, 0x02, 0x03, 0x03, 0x03,
-	0x04, 0x03, 0x05, 0x03, 0x06, 0x03, 0x07, 0x03,
-	0x08, 0x03, 0x09, 0x03, 0x0A, 0x03, 0x0B, 0x03,
-	0x0C, 0x03, 0x0D, 0x03, 0x0E, 0x03, 0x0F, 0x03,
-	0x10, 0x03, 0x11, 0x03, 0x12, 0x03, 0x13, 0x03,
-	0x14, 0x03, 0x15, 0x03, 0x16, 0x03, 0x17, 0x03,
-	0x18, 0x03, 0x19, 0x03, 0x1A, 0x03, 0x1B, 0x03,
-	0x1C, 0x03, 0x1D, 0x03, 0x1E, 0x03, 0x1F, 0x03,
-	0x20, 0x03, 0x21, 0x03, 0x22, 0x03, 0x23, 0x03,
-	0x24, 0x03, 0x25, 0x03, 0x26, 0x03, 0x27, 0x03,
-	0x28, 0x03, 0x29, 0x03, 0x2A, 0x03, 0x2B, 0x03,
-	0x2C, 0x03, 0x2D, 0x03, 0x2E, 0x03, 0x2F, 0x03,
-	0x30, 0x03, 0x31, 0x03, 0x32, 0x03, 0x33, 0x03,
-	0x34, 0x03, 0x35, 0x03, 0x36, 0x03, 0x37, 0x03,
-	0x38, 0x03, 0x39, 0x03, 0x3A, 0x03, 0x3B, 0x03,
-	0x3C, 0x03, 0x3D, 0x03, 0x3E, 0x03, 0x3F, 0x03,
-	0x40, 0x03, 0x41, 0x03, 0x42, 0x03, 0x43, 0x03,
-	0x44, 0x03, 0x45, 0x03, 0x46, 0x03, 0x47, 0x03,
-	0x48, 0x03, 0x49, 0x03, 0x4A, 0x03, 0x4B, 0x03,
-	0x4C, 0x03, 0x4D, 0x03, 0x4E, 0x03, 0x4F, 0x03,
-	0x50, 0x03, 0x51, 0x03, 0x52, 0x03, 0x53, 0x03,
-	0x54, 0x03, 0x55, 0x03, 0x56, 0x03, 0x57, 0x03,
-	0x58, 0x03, 0x59, 0x03, 0x5A, 0x03, 0x5B, 0x03,
-	0x5C, 0x03, 0x5D, 0x03, 0x5E, 0x03, 0x5F, 0x03,
-	0x60, 0x03, 0x61, 0x03, 0x62, 0x03, 0x63, 0x03,
-	0x64, 0x03, 0x65, 0x03, 0x66, 0x03, 0x67, 0x03,
-	0x68, 0x03, 0x69, 0x03, 0x6A, 0x03, 0x6B, 0x03,
-	0x6C, 0x03, 0x6D, 0x03, 0x6E, 0x03, 0x6F, 0x03,
-	0x70, 0x03, 0x71, 0x03, 0x72, 0x03, 0x73, 0x03,
-	0x74, 0x03, 0x75, 0x03, 0x76, 0x03, 0x77, 0x03,
-	0x78, 0x03, 0x79, 0x03, 0x7A, 0x03, 0xFD, 0x03,
-	0xFE, 0x03, 0xFF, 0x03, 0x7E, 0x03, 0x7F, 0x03,
-	0x80, 0x03, 0x81, 0x03, 0x82, 0x03, 0x83, 0x03,
-	0x84, 0x03, 0x85, 0x03, 0x86, 0x03, 0x87, 0x03,
-	0x88, 0x03, 0x89, 0x03, 0x8A, 0x03, 0x8B, 0x03,
-	0x8C, 0x03, 0x8D, 0x03, 0x8E, 0x03, 0x8F, 0x03,
-	0x90, 0x03, 0x91, 0x03, 0x92, 0x03, 0x93, 0x03,
-	0x94, 0x03, 0x95, 0x03, 0x96, 0x03, 0x97, 0x03,
-	0x98, 0x03, 0x99, 0x03, 0x9A, 0x03, 0x9B, 0x03,
-	0x9C, 0x03, 0x9D, 0x03, 0x9E, 0x03, 0x9F, 0x03,
-	0xA0, 0x03, 0xA1, 0x03, 0xA2, 0x03, 0xA3, 0x03,
-	0xA4, 0x03, 0xA5, 0x03, 0xA6, 0x03, 0xA7, 0x03,
-	0xA8, 0x03, 0xA9, 0x03, 0xAA, 0x03, 0xAB, 0x03,
-	0x86, 0x03, 0x88, 0x03, 0x89, 0x03, 0x8A, 0x03,
-	0xB0, 0x03, 0x91, 0x03, 0x92, 0x03, 0x93, 0x03,
-	0x94, 0x03, 0x95, 0x03, 0x96, 0x03, 0x97, 0x03,
-	0x98, 0x03, 0x99, 0x03, 0x9A, 0x03, 0x9B, 0x03,
-	0x9C, 0x03, 0x9D, 0x03, 0x9E, 0x03, 0x9F, 0x03,
-	0xA0, 0x03, 0xA1, 0x03, 0xA3, 0x03, 0xA3, 0x03,
-	0xA4, 0x03, 0xA5, 0x03, 0xA6, 0x03, 0xA7, 0x03,
-	0xA8, 0x03, 0xA9, 0x03, 0xAA, 0x03, 0xAB, 0x03,
-	0x8C, 0x03, 0x8E, 0x03, 0x8F, 0x03, 0xCF, 0x03,
-	0xD0, 0x03, 0xD1, 0x03, 0xD2, 0x03, 0xD3, 0x03,
-	0xD4, 0x03, 0xD5, 0x03, 0xD6, 0x03, 0xD7, 0x03,
-	0xD8, 0x03, 0xD8, 0x03, 0xDA, 0x03, 0xDA, 0x03,
-	0xDC, 0x03, 0xDC, 0x03, 0xDE, 0x03, 0xDE, 0x03,
-	0xE0, 0x03, 0xE0, 0x03, 0xE2, 0x03, 0xE2, 0x03,
-	0xE4, 0x03, 0xE4, 0x03, 0xE6, 0x03, 0xE6, 0x03,
-	0xE8, 0x03, 0xE8, 0x03, 0xEA, 0x03, 0xEA, 0x03,
-	0xEC, 0x03, 0xEC, 0x03, 0xEE, 0x03, 0xEE, 0x03,
-	0xF0, 0x03, 0xF1, 0x03, 0xF9, 0x03, 0xF3, 0x03,
-	0xF4, 0x03, 0xF5, 0x03, 0xF6, 0x03, 0xF7, 0x03,
-	0xF7, 0x03, 0xF9, 0x03, 0xFA, 0x03, 0xFA, 0x03,
-	0xFC, 0x03, 0xFD, 0x03, 0xFE, 0x03, 0xFF, 0x03,
-	0x00, 0x04, 0x01, 0x04, 0x02, 0x04, 0x03, 0x04,
-	0x04, 0x04, 0x05, 0x04, 0x06, 0x04, 0x07, 0x04,
-	0x08, 0x04, 0x09, 0x04, 0x0A, 0x04, 0x0B, 0x04,
-	0x0C, 0x04, 0x0D, 0x04, 0x0E, 0x04, 0x0F, 0x04,
-	0x10, 0x04, 0x11, 0x04, 0x12, 0x04, 0x13, 0x04,
-	0x14, 0x04, 0x15, 0x04, 0x16, 0x04, 0x17, 0x04,
-	0x18, 0x04, 0x19, 0x04, 0x1A, 0x04, 0x1B, 0x04,
-	0x1C, 0x04, 0x1D, 0x04, 0x1E, 0x04, 0x1F, 0x04,
-	0x20, 0x04, 0x21, 0x04, 0x22, 0x04, 0x23, 0x04,
-	0x24, 0x04, 0x25, 0x04, 0x26, 0x04, 0x27, 0x04,
-	0x28, 0x04, 0x29, 0x04, 0x2A, 0x04, 0x2B, 0x04,
-	0x2C, 0x04, 0x2D, 0x04, 0x2E, 0x04, 0x2F, 0x04,
-	0x10, 0x04, 0x11, 0x04, 0x12, 0x04, 0x13, 0x04,
-	0x14, 0x04, 0x15, 0x04, 0x16, 0x04, 0x17, 0x04,
-	0x18, 0x04, 0x19, 0x04, 0x1A, 0x04, 0x1B, 0x04,
-	0x1C, 0x04, 0x1D, 0x04, 0x1E, 0x04, 0x1F, 0x04,
-	0x20, 0x04, 0x21, 0x04, 0x22, 0x04, 0x23, 0x04,
-	0x24, 0x04, 0x25, 0x04, 0x26, 0x04, 0x27, 0x04,
-	0x28, 0x04, 0x29, 0x04, 0x2A, 0x04, 0x2B, 0x04,
-	0x2C, 0x04, 0x2D, 0x04, 0x2E, 0x04, 0x2F, 0x04,
-	0x00, 0x04, 0x01, 0x04, 0x02, 0x04, 0x03, 0x04,
-	0x04, 0x04, 0x05, 0x04, 0x06, 0x04, 0x07, 0x04,
-	0x08, 0x04, 0x09, 0x04, 0x0A, 0x04, 0x0B, 0x04,
-	0x0C, 0x04, 0x0D, 0x04, 0x0E, 0x04, 0x0F, 0x04,
-	0x60, 0x04, 0x60, 0x04, 0x62, 0x04, 0x62, 0x04,
-	0x64, 0x04, 0x64, 0x04, 0x66, 0x04, 0x66, 0x04,
-	0x68, 0x04, 0x68, 0x04, 0x6A, 0x04, 0x6A, 0x04,
-	0x6C, 0x04, 0x6C, 0x04, 0x6E, 0x04, 0x6E, 0x04,
-	0x70, 0x04, 0x70, 0x04, 0x72, 0x04, 0x72, 0x04,
-	0x74, 0x04, 0x74, 0x04, 0x76, 0x04, 0x76, 0x04,
-	0x78, 0x04, 0x78, 0x04, 0x7A, 0x04, 0x7A, 0x04,
-	0x7C, 0x04, 0x7C, 0x04, 0x7E, 0x04, 0x7E, 0x04,
-	0x80, 0x04, 0x80, 0x04, 0x82, 0x04, 0x83, 0x04,
-	0x84, 0x04, 0x85, 0x04, 0x86, 0x04, 0x87, 0x04,
-	0x88, 0x04, 0x89, 0x04, 0x8A, 0x04, 0x8A, 0x04,
-	0x8C, 0x04, 0x8C, 0x04, 0x8E, 0x04, 0x8E, 0x04,
-	0x90, 0x04, 0x90, 0x04, 0x92, 0x04, 0x92, 0x04,
-	0x94, 0x04, 0x94, 0x04, 0x96, 0x04, 0x96, 0x04,
-	0x98, 0x04, 0x98, 0x04, 0x9A, 0x04, 0x9A, 0x04,
-	0x9C, 0x04, 0x9C, 0x04, 0x9E, 0x04, 0x9E, 0x04,
-	0xA0, 0x04, 0xA0, 0x04, 0xA2, 0x04, 0xA2, 0x04,
-	0xA4, 0x04, 0xA4, 0x04, 0xA6, 0x04, 0xA6, 0x04,
-	0xA8, 0x04, 0xA8, 0x04, 0xAA, 0x04, 0xAA, 0x04,
-	0xAC, 0x04, 0xAC, 0x04, 0xAE, 0x04, 0xAE, 0x04,
-	0xB0, 0x04, 0xB0, 0x04, 0xB2, 0x04, 0xB2, 0x04,
-	0xB4, 0x04, 0xB4, 0x04, 0xB6, 0x04, 0xB6, 0x04,
-	0xB8, 0x04, 0xB8, 0x04, 0xBA, 0x04, 0xBA, 0x04,
-	0xBC, 0x04, 0xBC, 0x04, 0xBE, 0x04, 0xBE, 0x04,
-	0xC0, 0x04, 0xC1, 0x04, 0xC1, 0x04, 0xC3, 0x04,
-	0xC3, 0x04, 0xC5, 0x04, 0xC5, 0x04, 0xC7, 0x04,
-	0xC7, 0x04, 0xC9, 0x04, 0xC9, 0x04, 0xCB, 0x04,
-	0xCB, 0x04, 0xCD, 0x04, 0xCD, 0x04, 0xC0, 0x04,
-	0xD0, 0x04, 0xD0, 0x04, 0xD2, 0x04, 0xD2, 0x04,
-	0xD4, 0x04, 0xD4, 0x04, 0xD6, 0x04, 0xD6, 0x04,
-	0xD8, 0x04, 0xD8, 0x04, 0xDA, 0x04, 0xDA, 0x04,
-	0xDC, 0x04, 0xDC, 0x04, 0xDE, 0x04, 0xDE, 0x04,
-	0xE0, 0x04, 0xE0, 0x04, 0xE2, 0x04, 0xE2, 0x04,
-	0xE4, 0x04, 0xE4, 0x04, 0xE6, 0x04, 0xE6, 0x04,
-	0xE8, 0x04, 0xE8, 0x04, 0xEA, 0x04, 0xEA, 0x04,
-	0xEC, 0x04, 0xEC, 0x04, 0xEE, 0x04, 0xEE, 0x04,
-	0xF0, 0x04, 0xF0, 0x04, 0xF2, 0x04, 0xF2, 0x04,
-	0xF4, 0x04, 0xF4, 0x04, 0xF6, 0x04, 0xF6, 0x04,
-	0xF8, 0x04, 0xF8, 0x04, 0xFA, 0x04, 0xFA, 0x04,
-	0xFC, 0x04, 0xFC, 0x04, 0xFE, 0x04, 0xFE, 0x04,
-	0x00, 0x05, 0x00, 0x05, 0x02, 0x05, 0x02, 0x05,
-	0x04, 0x05, 0x04, 0x05, 0x06, 0x05, 0x06, 0x05,
-	0x08, 0x05, 0x08, 0x05, 0x0A, 0x05, 0x0A, 0x05,
-	0x0C, 0x05, 0x0C, 0x05, 0x0E, 0x05, 0x0E, 0x05,
-	0x10, 0x05, 0x10, 0x05, 0x12, 0x05, 0x12, 0x05,
-	0x14, 0x05, 0x15, 0x05, 0x16, 0x05, 0x17, 0x05,
-	0x18, 0x05, 0x19, 0x05, 0x1A, 0x05, 0x1B, 0x05,
-	0x1C, 0x05, 0x1D, 0x05, 0x1E, 0x05, 0x1F, 0x05,
-	0x20, 0x05, 0x21, 0x05, 0x22, 0x05, 0x23, 0x05,
-	0x24, 0x05, 0x25, 0x05, 0x26, 0x05, 0x27, 0x05,
-	0x28, 0x05, 0x29, 0x05, 0x2A, 0x05, 0x2B, 0x05,
-	0x2C, 0x05, 0x2D, 0x05, 0x2E, 0x05, 0x2F, 0x05,
-	0x30, 0x05, 0x31, 0x05, 0x32, 0x05, 0x33, 0x05,
-	0x34, 0x05, 0x35, 0x05, 0x36, 0x05, 0x37, 0x05,
-	0x38, 0x05, 0x39, 0x05, 0x3A, 0x05, 0x3B, 0x05,
-	0x3C, 0x05, 0x3D, 0x05, 0x3E, 0x05, 0x3F, 0x05,
-	0x40, 0x05, 0x41, 0x05, 0x42, 0x05, 0x43, 0x05,
-	0x44, 0x05, 0x45, 0x05, 0x46, 0x05, 0x47, 0x05,
-	0x48, 0x05, 0x49, 0x05, 0x4A, 0x05, 0x4B, 0x05,
-	0x4C, 0x05, 0x4D, 0x05, 0x4E, 0x05, 0x4F, 0x05,
-	0x50, 0x05, 0x51, 0x05, 0x52, 0x05, 0x53, 0x05,
-	0x54, 0x05, 0x55, 0x05, 0x56, 0x05, 0x57, 0x05,
-	0x58, 0x05, 0x59, 0x05, 0x5A, 0x05, 0x5B, 0x05,
-	0x5C, 0x05, 0x5D, 0x05, 0x5E, 0x05, 0x5F, 0x05,
-	0x60, 0x05, 0x31, 0x05, 0x32, 0x05, 0x33, 0x05,
-	0x34, 0x05, 0x35, 0x05, 0x36, 0x05, 0x37, 0x05,
-	0x38, 0x05, 0x39, 0x05, 0x3A, 0x05, 0x3B, 0x05,
-	0x3C, 0x05, 0x3D, 0x05, 0x3E, 0x05, 0x3F, 0x05,
-	0x40, 0x05, 0x41, 0x05, 0x42, 0x05, 0x43, 0x05,
-	0x44, 0x05, 0x45, 0x05, 0x46, 0x05, 0x47, 0x05,
-	0x48, 0x05, 0x49, 0x05, 0x4A, 0x05, 0x4B, 0x05,
-	0x4C, 0x05, 0x4D, 0x05, 0x4E, 0x05, 0x4F, 0x05,
-	0x50, 0x05, 0x51, 0x05, 0x52, 0x05, 0x53, 0x05,
-	0x54, 0x05, 0x55, 0x05, 0x56, 0x05, 0xFF, 0xFF,
-	0xF6, 0x17, 0x63, 0x2C, 0x7E, 0x1D, 0x7F, 0x1D,
-	0x80, 0x1D, 0x81, 0x1D, 0x82, 0x1D, 0x83, 0x1D,
-	0x84, 0x1D, 0x85, 0x1D, 0x86, 0x1D, 0x87, 0x1D,
-	0x88, 0x1D, 0x89, 0x1D, 0x8A, 0x1D, 0x8B, 0x1D,
-	0x8C, 0x1D, 0x8D, 0x1D, 0x8E, 0x1D, 0x8F, 0x1D,
-	0x90, 0x1D, 0x91, 0x1D, 0x92, 0x1D, 0x93, 0x1D,
-	0x94, 0x1D, 0x95, 0x1D, 0x96, 0x1D, 0x97, 0x1D,
-	0x98, 0x1D, 0x99, 0x1D, 0x9A, 0x1D, 0x9B, 0x1D,
-	0x9C, 0x1D, 0x9D, 0x1D, 0x9E, 0x1D, 0x9F, 0x1D,
-	0xA0, 0x1D, 0xA1, 0x1D, 0xA2, 0x1D, 0xA3, 0x1D,
-	0xA4, 0x1D, 0xA5, 0x1D, 0xA6, 0x1D, 0xA7, 0x1D,
-	0xA8, 0x1D, 0xA9, 0x1D, 0xAA, 0x1D, 0xAB, 0x1D,
-	0xAC, 0x1D, 0xAD, 0x1D, 0xAE, 0x1D, 0xAF, 0x1D,
-	0xB0, 0x1D, 0xB1, 0x1D, 0xB2, 0x1D, 0xB3, 0x1D,
-	0xB4, 0x1D, 0xB5, 0x1D, 0xB6, 0x1D, 0xB7, 0x1D,
-	0xB8, 0x1D, 0xB9, 0x1D, 0xBA, 0x1D, 0xBB, 0x1D,
-	0xBC, 0x1D, 0xBD, 0x1D, 0xBE, 0x1D, 0xBF, 0x1D,
-	0xC0, 0x1D, 0xC1, 0x1D, 0xC2, 0x1D, 0xC3, 0x1D,
-	0xC4, 0x1D, 0xC5, 0x1D, 0xC6, 0x1D, 0xC7, 0x1D,
-	0xC8, 0x1D, 0xC9, 0x1D, 0xCA, 0x1D, 0xCB, 0x1D,
-	0xCC, 0x1D, 0xCD, 0x1D, 0xCE, 0x1D, 0xCF, 0x1D,
-	0xD0, 0x1D, 0xD1, 0x1D, 0xD2, 0x1D, 0xD3, 0x1D,
-	0xD4, 0x1D, 0xD5, 0x1D, 0xD6, 0x1D, 0xD7, 0x1D,
-	0xD8, 0x1D, 0xD9, 0x1D, 0xDA, 0x1D, 0xDB, 0x1D,
-	0xDC, 0x1D, 0xDD, 0x1D, 0xDE, 0x1D, 0xDF, 0x1D,
-	0xE0, 0x1D, 0xE1, 0x1D, 0xE2, 0x1D, 0xE3, 0x1D,
-	0xE4, 0x1D, 0xE5, 0x1D, 0xE6, 0x1D, 0xE7, 0x1D,
-	0xE8, 0x1D, 0xE9, 0x1D, 0xEA, 0x1D, 0xEB, 0x1D,
-	0xEC, 0x1D, 0xED, 0x1D, 0xEE, 0x1D, 0xEF, 0x1D,
-	0xF0, 0x1D, 0xF1, 0x1D, 0xF2, 0x1D, 0xF3, 0x1D,
-	0xF4, 0x1D, 0xF5, 0x1D, 0xF6, 0x1D, 0xF7, 0x1D,
-	0xF8, 0x1D, 0xF9, 0x1D, 0xFA, 0x1D, 0xFB, 0x1D,
-	0xFC, 0x1D, 0xFD, 0x1D, 0xFE, 0x1D, 0xFF, 0x1D,
-	0x00, 0x1E, 0x00, 0x1E, 0x02, 0x1E, 0x02, 0x1E,
-	0x04, 0x1E, 0x04, 0x1E, 0x06, 0x1E, 0x06, 0x1E,
-	0x08, 0x1E, 0x08, 0x1E, 0x0A, 0x1E, 0x0A, 0x1E,
-	0x0C, 0x1E, 0x0C, 0x1E, 0x0E, 0x1E, 0x0E, 0x1E,
-	0x10, 0x1E, 0x10, 0x1E, 0x12, 0x1E, 0x12, 0x1E,
-	0x14, 0x1E, 0x14, 0x1E, 0x16, 0x1E, 0x16, 0x1E,
-	0x18, 0x1E, 0x18, 0x1E, 0x1A, 0x1E, 0x1A, 0x1E,
-	0x1C, 0x1E, 0x1C, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E,
-	0x20, 0x1E, 0x20, 0x1E, 0x22, 0x1E, 0x22, 0x1E,
-	0x24, 0x1E, 0x24, 0x1E, 0x26, 0x1E, 0x26, 0x1E,
-	0x28, 0x1E, 0x28, 0x1E, 0x2A, 0x1E, 0x2A, 0x1E,
-	0x2C, 0x1E, 0x2C, 0x1E, 0x2E, 0x1E, 0x2E, 0x1E,
-	0x30, 0x1E, 0x30, 0x1E, 0x32, 0x1E, 0x32, 0x1E,
-	0x34, 0x1E, 0x34, 0x1E, 0x36, 0x1E, 0x36, 0x1E,
-	0x38, 0x1E, 0x38, 0x1E, 0x3A, 0x1E, 0x3A, 0x1E,
-	0x3C, 0x1E, 0x3C, 0x1E, 0x3E, 0x1E, 0x3E, 0x1E,
-	0x40, 0x1E, 0x40, 0x1E, 0x42, 0x1E, 0x42, 0x1E,
-	0x44, 0x1E, 0x44, 0x1E, 0x46, 0x1E, 0x46, 0x1E,
-	0x48, 0x1E, 0x48, 0x1E, 0x4A, 0x1E, 0x4A, 0x1E,
-	0x4C, 0x1E, 0x4C, 0x1E, 0x4E, 0x1E, 0x4E, 0x1E,
-	0x50, 0x1E, 0x50, 0x1E, 0x52, 0x1E, 0x52, 0x1E,
-	0x54, 0x1E, 0x54, 0x1E, 0x56, 0x1E, 0x56, 0x1E,
-	0x58, 0x1E, 0x58, 0x1E, 0x5A, 0x1E, 0x5A, 0x1E,
-	0x5C, 0x1E, 0x5C, 0x1E, 0x5E, 0x1E, 0x5E, 0x1E,
-	0x60, 0x1E, 0x60, 0x1E, 0x62, 0x1E, 0x62, 0x1E,
-	0x64, 0x1E, 0x64, 0x1E, 0x66, 0x1E, 0x66, 0x1E,
-	0x68, 0x1E, 0x68, 0x1E, 0x6A, 0x1E, 0x6A, 0x1E,
-	0x6C, 0x1E, 0x6C, 0x1E, 0x6E, 0x1E, 0x6E, 0x1E,
-	0x70, 0x1E, 0x70, 0x1E, 0x72, 0x1E, 0x72, 0x1E,
-	0x74, 0x1E, 0x74, 0x1E, 0x76, 0x1E, 0x76, 0x1E,
-	0x78, 0x1E, 0x78, 0x1E, 0x7A, 0x1E, 0x7A, 0x1E,
-	0x7C, 0x1E, 0x7C, 0x1E, 0x7E, 0x1E, 0x7E, 0x1E,
-	0x80, 0x1E, 0x80, 0x1E, 0x82, 0x1E, 0x82, 0x1E,
-	0x84, 0x1E, 0x84, 0x1E, 0x86, 0x1E, 0x86, 0x1E,
-	0x88, 0x1E, 0x88, 0x1E, 0x8A, 0x1E, 0x8A, 0x1E,
-	0x8C, 0x1E, 0x8C, 0x1E, 0x8E, 0x1E, 0x8E, 0x1E,
-	0x90, 0x1E, 0x90, 0x1E, 0x92, 0x1E, 0x92, 0x1E,
-	0x94, 0x1E, 0x94, 0x1E, 0x96, 0x1E, 0x97, 0x1E,
-	0x98, 0x1E, 0x99, 0x1E, 0x9A, 0x1E, 0x9B, 0x1E,
-	0x9C, 0x1E, 0x9D, 0x1E, 0x9E, 0x1E, 0x9F, 0x1E,
-	0xA0, 0x1E, 0xA0, 0x1E, 0xA2, 0x1E, 0xA2, 0x1E,
-	0xA4, 0x1E, 0xA4, 0x1E, 0xA6, 0x1E, 0xA6, 0x1E,
-	0xA8, 0x1E, 0xA8, 0x1E, 0xAA, 0x1E, 0xAA, 0x1E,
-	0xAC, 0x1E, 0xAC, 0x1E, 0xAE, 0x1E, 0xAE, 0x1E,
-	0xB0, 0x1E, 0xB0, 0x1E, 0xB2, 0x1E, 0xB2, 0x1E,
-	0xB4, 0x1E, 0xB4, 0x1E, 0xB6, 0x1E, 0xB6, 0x1E,
-	0xB8, 0x1E, 0xB8, 0x1E, 0xBA, 0x1E, 0xBA, 0x1E,
-	0xBC, 0x1E, 0xBC, 0x1E, 0xBE, 0x1E, 0xBE, 0x1E,
-	0xC0, 0x1E, 0xC0, 0x1E, 0xC2, 0x1E, 0xC2, 0x1E,
-	0xC4, 0x1E, 0xC4, 0x1E, 0xC6, 0x1E, 0xC6, 0x1E,
-	0xC8, 0x1E, 0xC8, 0x1E, 0xCA, 0x1E, 0xCA, 0x1E,
-	0xCC, 0x1E, 0xCC, 0x1E, 0xCE, 0x1E, 0xCE, 0x1E,
-	0xD0, 0x1E, 0xD0, 0x1E, 0xD2, 0x1E, 0xD2, 0x1E,
-	0xD4, 0x1E, 0xD4, 0x1E, 0xD6, 0x1E, 0xD6, 0x1E,
-	0xD8, 0x1E, 0xD8, 0x1E, 0xDA, 0x1E, 0xDA, 0x1E,
-	0xDC, 0x1E, 0xDC, 0x1E, 0xDE, 0x1E, 0xDE, 0x1E,
-	0xE0, 0x1E, 0xE0, 0x1E, 0xE2, 0x1E, 0xE2, 0x1E,
-	0xE4, 0x1E, 0xE4, 0x1E, 0xE6, 0x1E, 0xE6, 0x1E,
-	0xE8, 0x1E, 0xE8, 0x1E, 0xEA, 0x1E, 0xEA, 0x1E,
-	0xEC, 0x1E, 0xEC, 0x1E, 0xEE, 0x1E, 0xEE, 0x1E,
-	0xF0, 0x1E, 0xF0, 0x1E, 0xF2, 0x1E, 0xF2, 0x1E,
-	0xF4, 0x1E, 0xF4, 0x1E, 0xF6, 0x1E, 0xF6, 0x1E,
-	0xF8, 0x1E, 0xF8, 0x1E, 0xFA, 0x1E, 0xFB, 0x1E,
-	0xFC, 0x1E, 0xFD, 0x1E, 0xFE, 0x1E, 0xFF, 0x1E,
-	0x08, 0x1F, 0x09, 0x1F, 0x0A, 0x1F, 0x0B, 0x1F,
-	0x0C, 0x1F, 0x0D, 0x1F, 0x0E, 0x1F, 0x0F, 0x1F,
-	0x08, 0x1F, 0x09, 0x1F, 0x0A, 0x1F, 0x0B, 0x1F,
-	0x0C, 0x1F, 0x0D, 0x1F, 0x0E, 0x1F, 0x0F, 0x1F,
-	0x18, 0x1F, 0x19, 0x1F, 0x1A, 0x1F, 0x1B, 0x1F,
-	0x1C, 0x1F, 0x1D, 0x1F, 0x16, 0x1F, 0x17, 0x1F,
-	0x18, 0x1F, 0x19, 0x1F, 0x1A, 0x1F, 0x1B, 0x1F,
-	0x1C, 0x1F, 0x1D, 0x1F, 0x1E, 0x1F, 0x1F, 0x1F,
-	0x28, 0x1F, 0x29, 0x1F, 0x2A, 0x1F, 0x2B, 0x1F,
-	0x2C, 0x1F, 0x2D, 0x1F, 0x2E, 0x1F, 0x2F, 0x1F,
-	0x28, 0x1F, 0x29, 0x1F, 0x2A, 0x1F, 0x2B, 0x1F,
-	0x2C, 0x1F, 0x2D, 0x1F, 0x2E, 0x1F, 0x2F, 0x1F,
-	0x38, 0x1F, 0x39, 0x1F, 0x3A, 0x1F, 0x3B, 0x1F,
-	0x3C, 0x1F, 0x3D, 0x1F, 0x3E, 0x1F, 0x3F, 0x1F,
-	0x38, 0x1F, 0x39, 0x1F, 0x3A, 0x1F, 0x3B, 0x1F,
-	0x3C, 0x1F, 0x3D, 0x1F, 0x3E, 0x1F, 0x3F, 0x1F,
-	0x48, 0x1F, 0x49, 0x1F, 0x4A, 0x1F, 0x4B, 0x1F,
-	0x4C, 0x1F, 0x4D, 0x1F, 0x46, 0x1F, 0x47, 0x1F,
-	0x48, 0x1F, 0x49, 0x1F, 0x4A, 0x1F, 0x4B, 0x1F,
-	0x4C, 0x1F, 0x4D, 0x1F, 0x4E, 0x1F, 0x4F, 0x1F,
-	0x50, 0x1F, 0x59, 0x1F, 0x52, 0x1F, 0x5B, 0x1F,
-	0x54, 0x1F, 0x5D, 0x1F, 0x56, 0x1F, 0x5F, 0x1F,
-	0x58, 0x1F, 0x59, 0x1F, 0x5A, 0x1F, 0x5B, 0x1F,
-	0x5C, 0x1F, 0x5D, 0x1F, 0x5E, 0x1F, 0x5F, 0x1F,
-	0x68, 0x1F, 0x69, 0x1F, 0x6A, 0x1F, 0x6B, 0x1F,
-	0x6C, 0x1F, 0x6D, 0x1F, 0x6E, 0x1F, 0x6F, 0x1F,
-	0x68, 0x1F, 0x69, 0x1F, 0x6A, 0x1F, 0x6B, 0x1F,
-	0x6C, 0x1F, 0x6D, 0x1F, 0x6E, 0x1F, 0x6F, 0x1F,
-	0xBA, 0x1F, 0xBB, 0x1F, 0xC8, 0x1F, 0xC9, 0x1F,
-	0xCA, 0x1F, 0xCB, 0x1F, 0xDA, 0x1F, 0xDB, 0x1F,
-	0xF8, 0x1F, 0xF9, 0x1F, 0xEA, 0x1F, 0xEB, 0x1F,
-	0xFA, 0x1F, 0xFB, 0x1F, 0x7E, 0x1F, 0x7F, 0x1F,
-	0x88, 0x1F, 0x89, 0x1F, 0x8A, 0x1F, 0x8B, 0x1F,
-	0x8C, 0x1F, 0x8D, 0x1F, 0x8E, 0x1F, 0x8F, 0x1F,
-	0x88, 0x1F, 0x89, 0x1F, 0x8A, 0x1F, 0x8B, 0x1F,
-	0x8C, 0x1F, 0x8D, 0x1F, 0x8E, 0x1F, 0x8F, 0x1F,
-	0x98, 0x1F, 0x99, 0x1F, 0x9A, 0x1F, 0x9B, 0x1F,
-	0x9C, 0x1F, 0x9D, 0x1F, 0x9E, 0x1F, 0x9F, 0x1F,
-	0x98, 0x1F, 0x99, 0x1F, 0x9A, 0x1F, 0x9B, 0x1F,
-	0x9C, 0x1F, 0x9D, 0x1F, 0x9E, 0x1F, 0x9F, 0x1F,
-	0xA8, 0x1F, 0xA9, 0x1F, 0xAA, 0x1F, 0xAB, 0x1F,
-	0xAC, 0x1F, 0xAD, 0x1F, 0xAE, 0x1F, 0xAF, 0x1F,
-	0xA8, 0x1F, 0xA9, 0x1F, 0xAA, 0x1F, 0xAB, 0x1F,
-	0xAC, 0x1F, 0xAD, 0x1F, 0xAE, 0x1F, 0xAF, 0x1F,
-	0xB8, 0x1F, 0xB9, 0x1F, 0xB2, 0x1F, 0xBC, 0x1F,
-	0xB4, 0x1F, 0xB5, 0x1F, 0xB6, 0x1F, 0xB7, 0x1F,
-	0xB8, 0x1F, 0xB9, 0x1F, 0xBA, 0x1F, 0xBB, 0x1F,
-	0xBC, 0x1F, 0xBD, 0x1F, 0xBE, 0x1F, 0xBF, 0x1F,
-	0xC0, 0x1F, 0xC1, 0x1F, 0xC2, 0x1F, 0xC3, 0x1F,
-	0xC4, 0x1F, 0xC5, 0x1F, 0xC6, 0x1F, 0xC7, 0x1F,
-	0xC8, 0x1F, 0xC9, 0x1F, 0xCA, 0x1F, 0xCB, 0x1F,
-	0xC3, 0x1F, 0xCD, 0x1F, 0xCE, 0x1F, 0xCF, 0x1F,
-	0xD8, 0x1F, 0xD9, 0x1F, 0xD2, 0x1F, 0xD3, 0x1F,
-	0xD4, 0x1F, 0xD5, 0x1F, 0xD6, 0x1F, 0xD7, 0x1F,
-	0xD8, 0x1F, 0xD9, 0x1F, 0xDA, 0x1F, 0xDB, 0x1F,
-	0xDC, 0x1F, 0xDD, 0x1F, 0xDE, 0x1F, 0xDF, 0x1F,
-	0xE8, 0x1F, 0xE9, 0x1F, 0xE2, 0x1F, 0xE3, 0x1F,
-	0xE4, 0x1F, 0xEC, 0x1F, 0xE6, 0x1F, 0xE7, 0x1F,
-	0xE8, 0x1F, 0xE9, 0x1F, 0xEA, 0x1F, 0xEB, 0x1F,
-	0xEC, 0x1F, 0xED, 0x1F, 0xEE, 0x1F, 0xEF, 0x1F,
-	0xF0, 0x1F, 0xF1, 0x1F, 0xF2, 0x1F, 0xF3, 0x1F,
-	0xF4, 0x1F, 0xF5, 0x1F, 0xF6, 0x1F, 0xF7, 0x1F,
-	0xF8, 0x1F, 0xF9, 0x1F, 0xFA, 0x1F, 0xFB, 0x1F,
-	0xF3, 0x1F, 0xFD, 0x1F, 0xFE, 0x1F, 0xFF, 0x1F,
-	0x00, 0x20, 0x01, 0x20, 0x02, 0x20, 0x03, 0x20,
-	0x04, 0x20, 0x05, 0x20, 0x06, 0x20, 0x07, 0x20,
-	0x08, 0x20, 0x09, 0x20, 0x0A, 0x20, 0x0B, 0x20,
-	0x0C, 0x20, 0x0D, 0x20, 0x0E, 0x20, 0x0F, 0x20,
-	0x10, 0x20, 0x11, 0x20, 0x12, 0x20, 0x13, 0x20,
-	0x14, 0x20, 0x15, 0x20, 0x16, 0x20, 0x17, 0x20,
-	0x18, 0x20, 0x19, 0x20, 0x1A, 0x20, 0x1B, 0x20,
-	0x1C, 0x20, 0x1D, 0x20, 0x1E, 0x20, 0x1F, 0x20,
-	0x20, 0x20, 0x21, 0x20, 0x22, 0x20, 0x23, 0x20,
-	0x24, 0x20, 0x25, 0x20, 0x26, 0x20, 0x27, 0x20,
-	0x28, 0x20, 0x29, 0x20, 0x2A, 0x20, 0x2B, 0x20,
-	0x2C, 0x20, 0x2D, 0x20, 0x2E, 0x20, 0x2F, 0x20,
-	0x30, 0x20, 0x31, 0x20, 0x32, 0x20, 0x33, 0x20,
-	0x34, 0x20, 0x35, 0x20, 0x36, 0x20, 0x37, 0x20,
-	0x38, 0x20, 0x39, 0x20, 0x3A, 0x20, 0x3B, 0x20,
-	0x3C, 0x20, 0x3D, 0x20, 0x3E, 0x20, 0x3F, 0x20,
-	0x40, 0x20, 0x41, 0x20, 0x42, 0x20, 0x43, 0x20,
-	0x44, 0x20, 0x45, 0x20, 0x46, 0x20, 0x47, 0x20,
-	0x48, 0x20, 0x49, 0x20, 0x4A, 0x20, 0x4B, 0x20,
-	0x4C, 0x20, 0x4D, 0x20, 0x4E, 0x20, 0x4F, 0x20,
-	0x50, 0x20, 0x51, 0x20, 0x52, 0x20, 0x53, 0x20,
-	0x54, 0x20, 0x55, 0x20, 0x56, 0x20, 0x57, 0x20,
-	0x58, 0x20, 0x59, 0x20, 0x5A, 0x20, 0x5B, 0x20,
-	0x5C, 0x20, 0x5D, 0x20, 0x5E, 0x20, 0x5F, 0x20,
-	0x60, 0x20, 0x61, 0x20, 0x62, 0x20, 0x63, 0x20,
-	0x64, 0x20, 0x65, 0x20, 0x66, 0x20, 0x67, 0x20,
-	0x68, 0x20, 0x69, 0x20, 0x6A, 0x20, 0x6B, 0x20,
-	0x6C, 0x20, 0x6D, 0x20, 0x6E, 0x20, 0x6F, 0x20,
-	0x70, 0x20, 0x71, 0x20, 0x72, 0x20, 0x73, 0x20,
-	0x74, 0x20, 0x75, 0x20, 0x76, 0x20, 0x77, 0x20,
-	0x78, 0x20, 0x79, 0x20, 0x7A, 0x20, 0x7B, 0x20,
-	0x7C, 0x20, 0x7D, 0x20, 0x7E, 0x20, 0x7F, 0x20,
-	0x80, 0x20, 0x81, 0x20, 0x82, 0x20, 0x83, 0x20,
-	0x84, 0x20, 0x85, 0x20, 0x86, 0x20, 0x87, 0x20,
-	0x88, 0x20, 0x89, 0x20, 0x8A, 0x20, 0x8B, 0x20,
-	0x8C, 0x20, 0x8D, 0x20, 0x8E, 0x20, 0x8F, 0x20,
-	0x90, 0x20, 0x91, 0x20, 0x92, 0x20, 0x93, 0x20,
-	0x94, 0x20, 0x95, 0x20, 0x96, 0x20, 0x97, 0x20,
-	0x98, 0x20, 0x99, 0x20, 0x9A, 0x20, 0x9B, 0x20,
-	0x9C, 0x20, 0x9D, 0x20, 0x9E, 0x20, 0x9F, 0x20,
-	0xA0, 0x20, 0xA1, 0x20, 0xA2, 0x20, 0xA3, 0x20,
-	0xA4, 0x20, 0xA5, 0x20, 0xA6, 0x20, 0xA7, 0x20,
-	0xA8, 0x20, 0xA9, 0x20, 0xAA, 0x20, 0xAB, 0x20,
-	0xAC, 0x20, 0xAD, 0x20, 0xAE, 0x20, 0xAF, 0x20,
-	0xB0, 0x20, 0xB1, 0x20, 0xB2, 0x20, 0xB3, 0x20,
-	0xB4, 0x20, 0xB5, 0x20, 0xB6, 0x20, 0xB7, 0x20,
-	0xB8, 0x20, 0xB9, 0x20, 0xBA, 0x20, 0xBB, 0x20,
-	0xBC, 0x20, 0xBD, 0x20, 0xBE, 0x20, 0xBF, 0x20,
-	0xC0, 0x20, 0xC1, 0x20, 0xC2, 0x20, 0xC3, 0x20,
-	0xC4, 0x20, 0xC5, 0x20, 0xC6, 0x20, 0xC7, 0x20,
-	0xC8, 0x20, 0xC9, 0x20, 0xCA, 0x20, 0xCB, 0x20,
-	0xCC, 0x20, 0xCD, 0x20, 0xCE, 0x20, 0xCF, 0x20,
-	0xD0, 0x20, 0xD1, 0x20, 0xD2, 0x20, 0xD3, 0x20,
-	0xD4, 0x20, 0xD5, 0x20, 0xD6, 0x20, 0xD7, 0x20,
-	0xD8, 0x20, 0xD9, 0x20, 0xDA, 0x20, 0xDB, 0x20,
-	0xDC, 0x20, 0xDD, 0x20, 0xDE, 0x20, 0xDF, 0x20,
-	0xE0, 0x20, 0xE1, 0x20, 0xE2, 0x20, 0xE3, 0x20,
-	0xE4, 0x20, 0xE5, 0x20, 0xE6, 0x20, 0xE7, 0x20,
-	0xE8, 0x20, 0xE9, 0x20, 0xEA, 0x20, 0xEB, 0x20,
-	0xEC, 0x20, 0xED, 0x20, 0xEE, 0x20, 0xEF, 0x20,
-	0xF0, 0x20, 0xF1, 0x20, 0xF2, 0x20, 0xF3, 0x20,
-	0xF4, 0x20, 0xF5, 0x20, 0xF6, 0x20, 0xF7, 0x20,
-	0xF8, 0x20, 0xF9, 0x20, 0xFA, 0x20, 0xFB, 0x20,
-	0xFC, 0x20, 0xFD, 0x20, 0xFE, 0x20, 0xFF, 0x20,
-	0x00, 0x21, 0x01, 0x21, 0x02, 0x21, 0x03, 0x21,
-	0x04, 0x21, 0x05, 0x21, 0x06, 0x21, 0x07, 0x21,
-	0x08, 0x21, 0x09, 0x21, 0x0A, 0x21, 0x0B, 0x21,
-	0x0C, 0x21, 0x0D, 0x21, 0x0E, 0x21, 0x0F, 0x21,
-	0x10, 0x21, 0x11, 0x21, 0x12, 0x21, 0x13, 0x21,
-	0x14, 0x21, 0x15, 0x21, 0x16, 0x21, 0x17, 0x21,
-	0x18, 0x21, 0x19, 0x21, 0x1A, 0x21, 0x1B, 0x21,
-	0x1C, 0x21, 0x1D, 0x21, 0x1E, 0x21, 0x1F, 0x21,
-	0x20, 0x21, 0x21, 0x21, 0x22, 0x21, 0x23, 0x21,
-	0x24, 0x21, 0x25, 0x21, 0x26, 0x21, 0x27, 0x21,
-	0x28, 0x21, 0x29, 0x21, 0x2A, 0x21, 0x2B, 0x21,
-	0x2C, 0x21, 0x2D, 0x21, 0x2E, 0x21, 0x2F, 0x21,
-	0x30, 0x21, 0x31, 0x21, 0x32, 0x21, 0x33, 0x21,
-	0x34, 0x21, 0x35, 0x21, 0x36, 0x21, 0x37, 0x21,
-	0x38, 0x21, 0x39, 0x21, 0x3A, 0x21, 0x3B, 0x21,
-	0x3C, 0x21, 0x3D, 0x21, 0x3E, 0x21, 0x3F, 0x21,
-	0x40, 0x21, 0x41, 0x21, 0x42, 0x21, 0x43, 0x21,
-	0x44, 0x21, 0x45, 0x21, 0x46, 0x21, 0x47, 0x21,
-	0x48, 0x21, 0x49, 0x21, 0x4A, 0x21, 0x4B, 0x21,
-	0x4C, 0x21, 0x4D, 0x21, 0x32, 0x21, 0x4F, 0x21,
-	0x50, 0x21, 0x51, 0x21, 0x52, 0x21, 0x53, 0x21,
-	0x54, 0x21, 0x55, 0x21, 0x56, 0x21, 0x57, 0x21,
-	0x58, 0x21, 0x59, 0x21, 0x5A, 0x21, 0x5B, 0x21,
-	0x5C, 0x21, 0x5D, 0x21, 0x5E, 0x21, 0x5F, 0x21,
-	0x60, 0x21, 0x61, 0x21, 0x62, 0x21, 0x63, 0x21,
-	0x64, 0x21, 0x65, 0x21, 0x66, 0x21, 0x67, 0x21,
-	0x68, 0x21, 0x69, 0x21, 0x6A, 0x21, 0x6B, 0x21,
-	0x6C, 0x21, 0x6D, 0x21, 0x6E, 0x21, 0x6F, 0x21,
-	0x60, 0x21, 0x61, 0x21, 0x62, 0x21, 0x63, 0x21,
-	0x64, 0x21, 0x65, 0x21, 0x66, 0x21, 0x67, 0x21,
-	0x68, 0x21, 0x69, 0x21, 0x6A, 0x21, 0x6B, 0x21,
-	0x6C, 0x21, 0x6D, 0x21, 0x6E, 0x21, 0x6F, 0x21,
-	0x80, 0x21, 0x81, 0x21, 0x82, 0x21, 0x83, 0x21,
-	0x83, 0x21, 0xFF, 0xFF, 0x4B, 0x03, 0xB6, 0x24,
-	0xB7, 0x24, 0xB8, 0x24, 0xB9, 0x24, 0xBA, 0x24,
-	0xBB, 0x24, 0xBC, 0x24, 0xBD, 0x24, 0xBE, 0x24,
-	0xBF, 0x24, 0xC0, 0x24, 0xC1, 0x24, 0xC2, 0x24,
-	0xC3, 0x24, 0xC4, 0x24, 0xC5, 0x24, 0xC6, 0x24,
-	0xC7, 0x24, 0xC8, 0x24, 0xC9, 0x24, 0xCA, 0x24,
-	0xCB, 0x24, 0xCC, 0x24, 0xCD, 0x24, 0xCE, 0x24,
-	0xCF, 0x24, 0xFF, 0xFF, 0x46, 0x07, 0x00, 0x2C,
-	0x01, 0x2C, 0x02, 0x2C, 0x03, 0x2C, 0x04, 0x2C,
-	0x05, 0x2C, 0x06, 0x2C, 0x07, 0x2C, 0x08, 0x2C,
-	0x09, 0x2C, 0x0A, 0x2C, 0x0B, 0x2C, 0x0C, 0x2C,
-	0x0D, 0x2C, 0x0E, 0x2C, 0x0F, 0x2C, 0x10, 0x2C,
-	0x11, 0x2C, 0x12, 0x2C, 0x13, 0x2C, 0x14, 0x2C,
-	0x15, 0x2C, 0x16, 0x2C, 0x17, 0x2C, 0x18, 0x2C,
-	0x19, 0x2C, 0x1A, 0x2C, 0x1B, 0x2C, 0x1C, 0x2C,
-	0x1D, 0x2C, 0x1E, 0x2C, 0x1F, 0x2C, 0x20, 0x2C,
-	0x21, 0x2C, 0x22, 0x2C, 0x23, 0x2C, 0x24, 0x2C,
-	0x25, 0x2C, 0x26, 0x2C, 0x27, 0x2C, 0x28, 0x2C,
-	0x29, 0x2C, 0x2A, 0x2C, 0x2B, 0x2C, 0x2C, 0x2C,
-	0x2D, 0x2C, 0x2E, 0x2C, 0x5F, 0x2C, 0x60, 0x2C,
-	0x60, 0x2C, 0x62, 0x2C, 0x63, 0x2C, 0x64, 0x2C,
-	0x65, 0x2C, 0x66, 0x2C, 0x67, 0x2C, 0x67, 0x2C,
-	0x69, 0x2C, 0x69, 0x2C, 0x6B, 0x2C, 0x6B, 0x2C,
-	0x6D, 0x2C, 0x6E, 0x2C, 0x6F, 0x2C, 0x70, 0x2C,
-	0x71, 0x2C, 0x72, 0x2C, 0x73, 0x2C, 0x74, 0x2C,
-	0x75, 0x2C, 0x75, 0x2C, 0x77, 0x2C, 0x78, 0x2C,
-	0x79, 0x2C, 0x7A, 0x2C, 0x7B, 0x2C, 0x7C, 0x2C,
-	0x7D, 0x2C, 0x7E, 0x2C, 0x7F, 0x2C, 0x80, 0x2C,
-	0x80, 0x2C, 0x82, 0x2C, 0x82, 0x2C, 0x84, 0x2C,
-	0x84, 0x2C, 0x86, 0x2C, 0x86, 0x2C, 0x88, 0x2C,
-	0x88, 0x2C, 0x8A, 0x2C, 0x8A, 0x2C, 0x8C, 0x2C,
-	0x8C, 0x2C, 0x8E, 0x2C, 0x8E, 0x2C, 0x90, 0x2C,
-	0x90, 0x2C, 0x92, 0x2C, 0x92, 0x2C, 0x94, 0x2C,
-	0x94, 0x2C, 0x96, 0x2C, 0x96, 0x2C, 0x98, 0x2C,
-	0x98, 0x2C, 0x9A, 0x2C, 0x9A, 0x2C, 0x9C, 0x2C,
-	0x9C, 0x2C, 0x9E, 0x2C, 0x9E, 0x2C, 0xA0, 0x2C,
-	0xA0, 0x2C, 0xA2, 0x2C, 0xA2, 0x2C, 0xA4, 0x2C,
-	0xA4, 0x2C, 0xA6, 0x2C, 0xA6, 0x2C, 0xA8, 0x2C,
-	0xA8, 0x2C, 0xAA, 0x2C, 0xAA, 0x2C, 0xAC, 0x2C,
-	0xAC, 0x2C, 0xAE, 0x2C, 0xAE, 0x2C, 0xB0, 0x2C,
-	0xB0, 0x2C, 0xB2, 0x2C, 0xB2, 0x2C, 0xB4, 0x2C,
-	0xB4, 0x2C, 0xB6, 0x2C, 0xB6, 0x2C, 0xB8, 0x2C,
-	0xB8, 0x2C, 0xBA, 0x2C, 0xBA, 0x2C, 0xBC, 0x2C,
-	0xBC, 0x2C, 0xBE, 0x2C, 0xBE, 0x2C, 0xC0, 0x2C,
-	0xC0, 0x2C, 0xC2, 0x2C, 0xC2, 0x2C, 0xC4, 0x2C,
-	0xC4, 0x2C, 0xC6, 0x2C, 0xC6, 0x2C, 0xC8, 0x2C,
-	0xC8, 0x2C, 0xCA, 0x2C, 0xCA, 0x2C, 0xCC, 0x2C,
-	0xCC, 0x2C, 0xCE, 0x2C, 0xCE, 0x2C, 0xD0, 0x2C,
-	0xD0, 0x2C, 0xD2, 0x2C, 0xD2, 0x2C, 0xD4, 0x2C,
-	0xD4, 0x2C, 0xD6, 0x2C, 0xD6, 0x2C, 0xD8, 0x2C,
-	0xD8, 0x2C, 0xDA, 0x2C, 0xDA, 0x2C, 0xDC, 0x2C,
-	0xDC, 0x2C, 0xDE, 0x2C, 0xDE, 0x2C, 0xE0, 0x2C,
-	0xE0, 0x2C, 0xE2, 0x2C, 0xE2, 0x2C, 0xE4, 0x2C,
-	0xE5, 0x2C, 0xE6, 0x2C, 0xE7, 0x2C, 0xE8, 0x2C,
-	0xE9, 0x2C, 0xEA, 0x2C, 0xEB, 0x2C, 0xEC, 0x2C,
-	0xED, 0x2C, 0xEE, 0x2C, 0xEF, 0x2C, 0xF0, 0x2C,
-	0xF1, 0x2C, 0xF2, 0x2C, 0xF3, 0x2C, 0xF4, 0x2C,
-	0xF5, 0x2C, 0xF6, 0x2C, 0xF7, 0x2C, 0xF8, 0x2C,
-	0xF9, 0x2C, 0xFA, 0x2C, 0xFB, 0x2C, 0xFC, 0x2C,
-	0xFD, 0x2C, 0xFE, 0x2C, 0xFF, 0x2C, 0xA0, 0x10,
-	0xA1, 0x10, 0xA2, 0x10, 0xA3, 0x10, 0xA4, 0x10,
-	0xA5, 0x10, 0xA6, 0x10, 0xA7, 0x10, 0xA8, 0x10,
-	0xA9, 0x10, 0xAA, 0x10, 0xAB, 0x10, 0xAC, 0x10,
-	0xAD, 0x10, 0xAE, 0x10, 0xAF, 0x10, 0xB0, 0x10,
-	0xB1, 0x10, 0xB2, 0x10, 0xB3, 0x10, 0xB4, 0x10,
-	0xB5, 0x10, 0xB6, 0x10, 0xB7, 0x10, 0xB8, 0x10,
-	0xB9, 0x10, 0xBA, 0x10, 0xBB, 0x10, 0xBC, 0x10,
-	0xBD, 0x10, 0xBE, 0x10, 0xBF, 0x10, 0xC0, 0x10,
-	0xC1, 0x10, 0xC2, 0x10, 0xC3, 0x10, 0xC4, 0x10,
-	0xC5, 0x10, 0xFF, 0xFF, 0x1B, 0xD2, 0x21, 0xFF,
-	0x22, 0xFF, 0x23, 0xFF, 0x24, 0xFF, 0x25, 0xFF,
-	0x26, 0xFF, 0x27, 0xFF, 0x28, 0xFF, 0x29, 0xFF,
-	0x2A, 0xFF, 0x2B, 0xFF, 0x2C, 0xFF, 0x2D, 0xFF,
-	0x2E, 0xFF, 0x2F, 0xFF, 0x30, 0xFF, 0x31, 0xFF,
-	0x32, 0xFF, 0x33, 0xFF, 0x34, 0xFF, 0x35, 0xFF,
-	0x36, 0xFF, 0x37, 0xFF, 0x38, 0xFF, 0x39, 0xFF,
-	0x3A, 0xFF, 0x5B, 0xFF, 0x5C, 0xFF, 0x5D, 0xFF,
-	0x5E, 0xFF, 0x5F, 0xFF, 0x60, 0xFF, 0x61, 0xFF,
-	0x62, 0xFF, 0x63, 0xFF, 0x64, 0xFF, 0x65, 0xFF,
-	0x66, 0xFF, 0x67, 0xFF, 0x68, 0xFF, 0x69, 0xFF,
-	0x6A, 0xFF, 0x6B, 0xFF, 0x6C, 0xFF, 0x6D, 0xFF,
-	0x6E, 0xFF, 0x6F, 0xFF, 0x70, 0xFF, 0x71, 0xFF,
-	0x72, 0xFF, 0x73, 0xFF, 0x74, 0xFF, 0x75, 0xFF,
-	0x76, 0xFF, 0x77, 0xFF, 0x78, 0xFF, 0x79, 0xFF,
-	0x7A, 0xFF, 0x7B, 0xFF, 0x7C, 0xFF, 0x7D, 0xFF,
-	0x7E, 0xFF, 0x7F, 0xFF, 0x80, 0xFF, 0x81, 0xFF,
-	0x82, 0xFF, 0x83, 0xFF, 0x84, 0xFF, 0x85, 0xFF,
-	0x86, 0xFF, 0x87, 0xFF, 0x88, 0xFF, 0x89, 0xFF,
-	0x8A, 0xFF, 0x8B, 0xFF, 0x8C, 0xFF, 0x8D, 0xFF,
-	0x8E, 0xFF, 0x8F, 0xFF, 0x90, 0xFF, 0x91, 0xFF,
-	0x92, 0xFF, 0x93, 0xFF, 0x94, 0xFF, 0x95, 0xFF,
-	0x96, 0xFF, 0x97, 0xFF, 0x98, 0xFF, 0x99, 0xFF,
-	0x9A, 0xFF, 0x9B, 0xFF, 0x9C, 0xFF, 0x9D, 0xFF,
-	0x9E, 0xFF, 0x9F, 0xFF, 0xA0, 0xFF, 0xA1, 0xFF,
-	0xA2, 0xFF, 0xA3, 0xFF, 0xA4, 0xFF, 0xA5, 0xFF,
-	0xA6, 0xFF, 0xA7, 0xFF, 0xA8, 0xFF, 0xA9, 0xFF,
-	0xAA, 0xFF, 0xAB, 0xFF, 0xAC, 0xFF, 0xAD, 0xFF,
-	0xAE, 0xFF, 0xAF, 0xFF, 0xB0, 0xFF, 0xB1, 0xFF,
-	0xB2, 0xFF, 0xB3, 0xFF, 0xB4, 0xFF, 0xB5, 0xFF,
-	0xB6, 0xFF, 0xB7, 0xFF, 0xB8, 0xFF, 0xB9, 0xFF,
-	0xBA, 0xFF, 0xBB, 0xFF, 0xBC, 0xFF, 0xBD, 0xFF,
-	0xBE, 0xFF, 0xBF, 0xFF, 0xC0, 0xFF, 0xC1, 0xFF,
-	0xC2, 0xFF, 0xC3, 0xFF, 0xC4, 0xFF, 0xC5, 0xFF,
-	0xC6, 0xFF, 0xC7, 0xFF, 0xC8, 0xFF, 0xC9, 0xFF,
-	0xCA, 0xFF, 0xCB, 0xFF, 0xCC, 0xFF, 0xCD, 0xFF,
-	0xCE, 0xFF, 0xCF, 0xFF, 0xD0, 0xFF, 0xD1, 0xFF,
-	0xD2, 0xFF, 0xD3, 0xFF, 0xD4, 0xFF, 0xD5, 0xFF,
-	0xD6, 0xFF, 0xD7, 0xFF, 0xD8, 0xFF, 0xD9, 0xFF,
-	0xDA, 0xFF, 0xDB, 0xFF, 0xDC, 0xFF, 0xDD, 0xFF,
-	0xDE, 0xFF, 0xDF, 0xFF, 0xE0, 0xFF, 0xE1, 0xFF,
-	0xE2, 0xFF, 0xE3, 0xFF, 0xE4, 0xFF, 0xE5, 0xFF,
-	0xE6, 0xFF, 0xE7, 0xFF, 0xE8, 0xFF, 0xE9, 0xFF,
-	0xEA, 0xFF, 0xEB, 0xFF, 0xEC, 0xFF, 0xED, 0xFF,
-	0xEE, 0xFF, 0xEF, 0xFF, 0xF0, 0xFF, 0xF1, 0xFF,
-	0xF2, 0xFF, 0xF3, 0xFF, 0xF4, 0xFF, 0xF5, 0xFF,
-	0xF6, 0xFF, 0xF7, 0xFF, 0xF8, 0xFF, 0xF9, 0xFF,
-	0xFA, 0xFF, 0xFB, 0xFF, 0xFC, 0xFF, 0xFD, 0xFF,
-	0xFE, 0xFF, 0xFF, 0xFF
-};
diff --git a/drivers/staging/exfat/extent.c b/drivers/staging/exfat/extent.c
new file mode 100644
index 000000000000..99d116cb09bb
--- /dev/null
+++ b/drivers/staging/exfat/extent.c
@@ -0,0 +1,329 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ *
+ *  extent.c: Improve the performance of traversing fat chain
+ */
+
+/*
+ *  linux/fs/fat/cache.c
+ *
+ *  Written 1992,1993 by Werner Almesberger
+ *
+ *  Mar 1999. AV. Changed cache, so that it uses the starting cluster instead
+ *	of inode number.
+ *  May 1999. AV. Fixed the bogosity with FAT32 (read "FAT28"). Fscking lusers.
+ */
+
+#include <linux/slab.h>
+#include "exfat.h"
+#include "core.h"
+
+#define EXTENT_CACHE_VALID	0
+/* this must be > 0. */
+#define EXTENT_MAX_CACHE	16
+
+struct extent_cache {
+	struct list_head cache_list;
+	u32 nr_contig;	/* number of contiguous clusters */
+	u32 fcluster;	/* cluster number in the file. */
+	u32 dcluster;	/* cluster number on disk. */
+};
+
+struct extent_cache_id {
+	u32 id;
+	u32 nr_contig;
+	u32 fcluster;
+	u32 dcluster;
+};
+
+static struct kmem_cache *extent_cache_cachep;
+
+static void init_once(void *c)
+{
+	struct extent_cache *cache = (struct extent_cache *)c;
+
+	INIT_LIST_HEAD(&cache->cache_list);
+}
+
+s32 exfat_extent_cache_init(void)
+{
+	extent_cache_cachep = kmem_cache_create("exfat_extent_cache",
+				sizeof(struct extent_cache),
+				0, SLAB_RECLAIM_ACCOUNT|SLAB_MEM_SPREAD,
+				init_once);
+	if (!extent_cache_cachep)
+		return -ENOMEM;
+	return 0;
+}
+
+void exfat_extent_cache_shutdown(void)
+{
+	if (!extent_cache_cachep)
+		return;
+	kmem_cache_destroy(extent_cache_cachep);
+}
+
+void exfat_extent_cache_init_inode(struct inode *inode)
+{
+	EXTENT_T *extent = &(EXFAT_I(inode)->fid.extent);
+
+	spin_lock_init(&extent->cache_lru_lock);
+	extent->nr_caches = 0;
+	extent->cache_valid_id = EXTENT_CACHE_VALID + 1;
+	INIT_LIST_HEAD(&extent->cache_lru);
+}
+
+static inline struct extent_cache *extent_cache_alloc(void)
+{
+	return kmem_cache_alloc(extent_cache_cachep, GFP_NOFS);
+}
+
+static inline void extent_cache_free(struct extent_cache *cache)
+{
+	BUG_ON(!list_empty(&cache->cache_list));
+	kmem_cache_free(extent_cache_cachep, cache);
+}
+
+static inline void extent_cache_update_lru(struct inode *inode,
+					struct extent_cache *cache)
+{
+	EXTENT_T *extent = &(EXFAT_I(inode)->fid.extent);
+
+	if (extent->cache_lru.next != &cache->cache_list)
+		list_move(&cache->cache_list, &extent->cache_lru);
+}
+
+static u32 extent_cache_lookup(struct inode *inode, u32 fclus,
+			    struct extent_cache_id *cid,
+			    u32 *cached_fclus, u32 *cached_dclus)
+{
+	EXTENT_T *extent = &(EXFAT_I(inode)->fid.extent);
+
+	static struct extent_cache nohit = { .fcluster = 0, };
+
+	struct extent_cache *hit = &nohit, *p;
+	u32 offset = CLUS_EOF;
+
+	spin_lock(&extent->cache_lru_lock);
+	list_for_each_entry(p, &extent->cache_lru, cache_list) {
+		/* Find the cache of "fclus" or nearest cache. */
+		if (p->fcluster <= fclus && hit->fcluster < p->fcluster) {
+			hit = p;
+			if ((hit->fcluster + hit->nr_contig) < fclus) {
+				offset = hit->nr_contig;
+			} else {
+				offset = fclus - hit->fcluster;
+				break;
+			}
+		}
+	}
+	if (hit != &nohit) {
+		extent_cache_update_lru(inode, hit);
+
+		cid->id = extent->cache_valid_id;
+		cid->nr_contig = hit->nr_contig;
+		cid->fcluster = hit->fcluster;
+		cid->dcluster = hit->dcluster;
+		*cached_fclus = cid->fcluster + offset;
+		*cached_dclus = cid->dcluster + offset;
+	}
+	spin_unlock(&extent->cache_lru_lock);
+
+	return offset;
+}
+
+static struct extent_cache *extent_cache_merge(struct inode *inode,
+					 struct extent_cache_id *new)
+{
+	EXTENT_T *extent = &(EXFAT_I(inode)->fid.extent);
+
+	struct extent_cache *p;
+
+	list_for_each_entry(p, &extent->cache_lru, cache_list) {
+		/* Find the same part as "new" in cluster-chain. */
+		if (p->fcluster == new->fcluster) {
+			ASSERT(p->dcluster == new->dcluster);
+			if (new->nr_contig > p->nr_contig)
+				p->nr_contig = new->nr_contig;
+			return p;
+		}
+	}
+	return NULL;
+}
+
+static void extent_cache_add(struct inode *inode, struct extent_cache_id *new)
+{
+	EXTENT_T *extent = &(EXFAT_I(inode)->fid.extent);
+
+	struct extent_cache *cache, *tmp;
+
+	if (new->fcluster == -1) /* dummy cache */
+		return;
+
+	spin_lock(&extent->cache_lru_lock);
+	if (new->id != EXTENT_CACHE_VALID &&
+	    new->id != extent->cache_valid_id)
+		goto out;	/* this cache was invalidated */
+
+	cache = extent_cache_merge(inode, new);
+	if (cache == NULL) {
+		if (extent->nr_caches < EXTENT_MAX_CACHE) {
+			extent->nr_caches++;
+			spin_unlock(&extent->cache_lru_lock);
+
+			tmp = extent_cache_alloc();
+			if (!tmp) {
+				spin_lock(&extent->cache_lru_lock);
+				extent->nr_caches--;
+				spin_unlock(&extent->cache_lru_lock);
+				return;
+			}
+
+			spin_lock(&extent->cache_lru_lock);
+			cache = extent_cache_merge(inode, new);
+			if (cache != NULL) {
+				extent->nr_caches--;
+				extent_cache_free(tmp);
+				goto out_update_lru;
+			}
+			cache = tmp;
+		} else {
+			struct list_head *p = extent->cache_lru.prev;
+			cache = list_entry(p, struct extent_cache, cache_list);
+		}
+		cache->fcluster = new->fcluster;
+		cache->dcluster = new->dcluster;
+		cache->nr_contig = new->nr_contig;
+	}
+out_update_lru:
+	extent_cache_update_lru(inode, cache);
+out:
+	spin_unlock(&extent->cache_lru_lock);
+}
+
+/*
+ * Cache invalidation occurs rarely, thus the LRU chain is not updated. It
+ * fixes itself after a while.
+ */
+static void __exfat_extent_cache_inval_inode(struct inode *inode)
+{
+	EXTENT_T *extent = &(EXFAT_I(inode)->fid.extent);
+	struct extent_cache *cache;
+
+	while (!list_empty(&extent->cache_lru)) {
+		cache = list_entry(extent->cache_lru.next,
+				   struct extent_cache, cache_list);
+		list_del_init(&cache->cache_list);
+		extent->nr_caches--;
+		extent_cache_free(cache);
+	}
+	/* Update. The copy of caches before this id is discarded. */
+	extent->cache_valid_id++;
+	if (extent->cache_valid_id == EXTENT_CACHE_VALID)
+		extent->cache_valid_id++;
+}
+
+void exfat_extent_cache_inval_inode(struct inode *inode)
+{
+	EXTENT_T *extent = &(EXFAT_I(inode)->fid.extent);
+
+	spin_lock(&extent->cache_lru_lock);
+	__exfat_extent_cache_inval_inode(inode);
+	spin_unlock(&extent->cache_lru_lock);
+}
+
+static inline s32 cache_contiguous(struct extent_cache_id *cid, u32 dclus)
+{
+	cid->nr_contig++;
+	return ((cid->dcluster + cid->nr_contig) == dclus);
+}
+
+static inline void cache_init(struct extent_cache_id *cid, u32 fclus, u32 dclus)
+{
+	cid->id = EXTENT_CACHE_VALID;
+	cid->fcluster = fclus;
+	cid->dcluster = dclus;
+	cid->nr_contig = 0;
+}
+
+s32 exfat_extent_get_clus(struct inode *inode, u32 cluster, u32 *fclus,
+		u32 *dclus, u32 *last_dclus, s32 allow_eof)
+{
+	struct super_block *sb = inode->i_sb;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	u32 limit = fsi->num_clusters;
+	FILE_ID_T *fid = &(EXFAT_I(inode)->fid);
+	struct extent_cache_id cid;
+	u32 content;
+
+	/* FOR GRACEFUL ERROR HANDLING */
+	if (IS_CLUS_FREE(fid->start_clu)) {
+		exfat_fs_error(sb, "invalid access to "
+			"extent cache (entry 0x%08x)", fid->start_clu);
+		ASSERT(0);
+		return -EIO;
+	}
+
+	*fclus = 0;
+	*dclus = fid->start_clu;
+	*last_dclus = *dclus;
+
+	/*
+	 * Don`t use extent_cache if zero offset or non-cluster allocation
+	 */
+	if ((cluster == 0) || IS_CLUS_EOF(*dclus))
+		return 0;
+
+	cache_init(&cid, CLUS_EOF, CLUS_EOF);
+
+	if (extent_cache_lookup(inode, cluster, &cid, fclus, dclus) == CLUS_EOF) {
+		/*
+		 * dummy, always not contiguous
+		 * This is reinitialized by cache_init(), later.
+		 */
+		ASSERT((cid.id == EXTENT_CACHE_VALID)
+			&& (cid.fcluster == CLUS_EOF)
+			&& (cid.dcluster == CLUS_EOF)
+			&& (cid.nr_contig == 0));
+	}
+
+	if (*fclus == cluster)
+		return 0;
+
+	while (*fclus < cluster) {
+		/* prevent the infinite loop of cluster chain */
+		if (*fclus > limit) {
+			exfat_fs_error(sb,
+				"%s: detected the cluster chain loop"
+				" (i_pos %u)", __func__,
+				(*fclus));
+			return -EIO;
+		}
+
+		if (exfat_ent_get_safe(sb, *dclus, &content))
+			return -EIO;
+
+		*last_dclus = *dclus;
+		*dclus = content;
+		(*fclus)++;
+
+		if (IS_CLUS_EOF(content)) {
+			if (!allow_eof) {
+				exfat_fs_error(sb,
+				       "%s: invalid cluster chain (i_pos %u,"
+				       "last_clus 0x%08x is EOF)",
+				       __func__, *fclus, (*last_dclus));
+				return -EIO;
+			}
+
+			break;
+		}
+
+		if (!cache_contiguous(&cid, *dclus))
+			cache_init(&cid, *fclus, *dclus);
+	}
+
+	extent_cache_add(inode, &cid);
+	return 0;
+}
diff --git a/drivers/staging/exfat/fatent.c b/drivers/staging/exfat/fatent.c
new file mode 100644
index 000000000000..8b87d03c5569
--- /dev/null
+++ b/drivers/staging/exfat/fatent.c
@@ -0,0 +1,113 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ *
+ *  fatent.c: exFAT FAT entry manager
+ */
+
+#include <asm/unaligned.h>
+
+#include "exfat.h"
+#include "core.h"
+
+/* All buffer structures are protected w/ fsi->v_sem */
+
+static inline bool is_reserved_clus(u32 clus)
+{
+	if (IS_CLUS_FREE(clus))
+		return true;
+	if (IS_CLUS_EOF(clus))
+		return true;
+	if (IS_CLUS_BAD(clus))
+		return true;
+	return false;
+}
+
+static inline bool is_valid_clus(FS_INFO_T *fsi, u32 clus)
+{
+	if (clus < CLUS_BASE || fsi->num_clusters <= clus)
+		return false;
+	return true;
+}
+
+s32 exfat_ent_get(struct super_block *sb, u32 loc, u32 *content)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	u32 off, _content;
+	u64 sec;
+	u8 *fat_sector;
+
+	if (!is_valid_clus(fsi, loc)) {
+		exfat_fs_error(sb, "invalid access to FAT (entry 0x%08x)", loc);
+		return -EIO;
+	}
+
+	sec = fsi->FAT1_start_sector + (loc >> (sb->s_blocksize_bits-2));
+	off = (loc << 2) & (u32)(sb->s_blocksize - 1);
+
+	fat_sector = exfat_fcache_getblk(sb, sec);
+	if (!fat_sector) {
+		exfat_fs_error(sb, "failed to access to FAT "
+				"(entry 0x%08x)", loc);
+		return -EIO;
+	}
+
+	_content = le32_to_cpu(*(__le32 *)(&fat_sector[off]));
+
+	/* remap reserved clusters to simplify code */
+	if (_content >= CLUSTER_32(0xFFFFFFF8))
+		_content = CLUS_EOF;
+
+	*content = CLUSTER_32(_content);
+
+	if (!is_reserved_clus(*content) && !is_valid_clus(fsi, *content)) {
+		exfat_fs_error(sb, "invalid access to FAT (entry 0x%08x) "
+			"bogus content (0x%08x)", loc, *content);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+s32 exfat_ent_set(struct super_block *sb, u32 loc, u32 content)
+{
+	u32 off;
+	u64 sec;
+	u8 *fat_sector;
+	__le32 *fat_entry;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	sec = fsi->FAT1_start_sector + (loc >> (sb->s_blocksize_bits-2));
+	off = (loc << 2) & (u32)(sb->s_blocksize - 1);
+
+	fat_sector = exfat_fcache_getblk(sb, sec);
+	if (!fat_sector)
+		return -EIO;
+
+	fat_entry = (__le32 *)&(fat_sector[off]);
+	*fat_entry = cpu_to_le32(content);
+
+	return exfat_fcache_modify(sb, sec);
+}
+
+s32 exfat_ent_get_safe(struct super_block *sb, u32 loc, u32 *content)
+{
+	s32 err = exfat_ent_get(sb, loc, content);
+
+	if (err)
+		return err;
+
+	if (IS_CLUS_FREE(*content)) {
+		exfat_fs_error(sb, "invalid access to FAT free cluster "
+				"(entry 0x%08x)", loc);
+		return -EIO;
+	}
+
+	if (IS_CLUS_BAD(*content)) {
+		exfat_fs_error(sb, "invalid access to FAT bad cluster "
+				"(entry 0x%08x)", loc);
+		return -EIO;
+	}
+
+	return 0;
+}
diff --git a/drivers/staging/exfat/misc.c b/drivers/staging/exfat/misc.c
new file mode 100644
index 000000000000..b4e41197bd1c
--- /dev/null
+++ b/drivers/staging/exfat/misc.c
@@ -0,0 +1,356 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ *
+ *  misc.c: Helper function for checksum and handling exFAT errors
+ */
+
+/*
+ *  linux/fs/fat/misc.c
+ *
+ *  Written 1992,1993 by Werner Almesberger
+ *  22/11/2000 - Fixed fat_date_unix2dos for dates earlier than 01/01/1980
+ *		 and date_dos2unix for date==0 by Igor Zhbanov(bsg@uniyar.ac.ru)
+ */
+
+#include <linux/module.h>
+#include <linux/fs.h>
+#include <linux/buffer_head.h>
+#include <linux/time.h>
+#include "exfat.h"
+
+#ifdef CONFIG_EXFAT_UEVENT
+static struct kobject exfat_uevent_kobj;
+
+int exfat_uevent_init(struct kset *exfat_kset)
+{
+	int err;
+	struct kobj_type *ktype = get_ktype(&exfat_kset->kobj);
+
+	exfat_uevent_kobj.kset = exfat_kset;
+	err = kobject_init_and_add(&exfat_uevent_kobj, ktype, NULL, "uevent");
+	if (err)
+		pr_err("[EXFAT] Unable to create exfat uevent kobj\n");
+
+	return err;
+}
+
+void exfat_uevent_uninit(void)
+{
+	kobject_del(&exfat_uevent_kobj);
+	memset(&exfat_uevent_kobj, 0, sizeof(struct kobject));
+}
+
+void exfat_uevent_ro_remount(struct super_block *sb)
+{
+	struct block_device *bdev = sb->s_bdev;
+	dev_t bd_dev = bdev ? bdev->bd_dev : 0;
+
+	char major[16], minor[16];
+	char *envp[] = { major, minor, NULL };
+
+	snprintf(major, sizeof(major), "MAJOR=%d", MAJOR(bd_dev));
+	snprintf(minor, sizeof(minor), "MINOR=%d", MINOR(bd_dev));
+
+	kobject_uevent_env(&exfat_uevent_kobj, KOBJ_CHANGE, envp);
+
+	ST_LOG("[EXFAT](%s[%d:%d]): Uevent triggered\n",
+			sb->s_id, MAJOR(bd_dev), MINOR(bd_dev));
+}
+#endif
+
+/*
+ * exfat_fs_error reports a file system problem that might indicate fa data
+ * corruption/inconsistency. Depending on 'errors' mount option the
+ * panic() is called, or error message is printed FAT and nothing is done,
+ * or filesystem is remounted read-only (default behavior).
+ * In case the file system is remounted read-only, it can be made writable
+ * again by remounting it.
+ */
+void __exfat_fs_error(struct super_block *sb, int report, const char *fmt, ...)
+{
+	struct exfat_mount_options *opts = &EXFAT_SB(sb)->options;
+	va_list args;
+	struct va_format vaf;
+	struct block_device *bdev = sb->s_bdev;
+	dev_t bd_dev = bdev ? bdev->bd_dev : 0;
+
+	if (report) {
+		va_start(args, fmt);
+		vaf.fmt = fmt;
+		vaf.va = &args;
+		pr_err("exFAT-fs (%s[%d:%d]): ERR: %pV\n",
+			sb->s_id, MAJOR(bd_dev), MINOR(bd_dev), &vaf);
+		va_end(args);
+	}
+
+	if (opts->errors == EXFAT_ERRORS_PANIC) {
+		panic("exFAT-fs (%s[%d:%d]): fs panic from previous error\n",
+			sb->s_id, MAJOR(bd_dev), MINOR(bd_dev));
+	} else if (opts->errors == EXFAT_ERRORS_RO && !EXFAT_IS_SB_RDONLY(sb)) {
+		sb->s_flags |= SB_RDONLY;
+		pr_err("exFAT-fs (%s[%d:%d]): file-system has been set to "
+			"read-only\n", sb->s_id, MAJOR(bd_dev), MINOR(bd_dev));
+		exfat_uevent_ro_remount(sb);
+	}
+}
+EXPORT_SYMBOL(__exfat_fs_error);
+
+/**
+ * __exfat_msg() - print preformated EXFAT specific messages.
+ * All logs except what uses exfat_fs_error() should be written by __exfat_msg()
+ */
+void __exfat_msg(struct super_block *sb, const char *level, int st, const char *fmt, ...)
+{
+	struct va_format vaf;
+	va_list args;
+	struct block_device *bdev = sb->s_bdev;
+	dev_t bd_dev = bdev ? bdev->bd_dev : 0;
+
+	va_start(args, fmt);
+	vaf.fmt = fmt;
+	vaf.va = &args;
+	/* level means KERN_ pacility level */
+	printk("%sexFAT-fs (%s[%d:%d]): %pV\n", level,
+			sb->s_id, MAJOR(bd_dev), MINOR(bd_dev), &vaf);
+	va_end(args);
+}
+EXPORT_SYMBOL(__exfat_msg);
+
+/* <linux/time.h> externs sys_tz
+ * extern struct timezone sys_tz;
+ */
+#define UNIX_SECS_1980    315532800L
+
+#if BITS_PER_LONG == 64
+#define UNIX_SECS_2108    4354819200L
+#endif
+
+/* days between 1970/01/01 and 1980/01/01 (2 leap days) */
+#define DAYS_DELTA_DECADE    (365 * 10 + 2)
+/* 120 (2100 - 1980) isn't leap year */
+#define NO_LEAP_YEAR_2100    (120)
+#define IS_LEAP_YEAR(y)    (!((y) & 0x3) && (y) != NO_LEAP_YEAR_2100)
+
+#define SECS_PER_MIN    (60)
+#define SECS_PER_HOUR   (60 * SECS_PER_MIN)
+#define SECS_PER_DAY    (24 * SECS_PER_HOUR)
+
+#define MAKE_LEAP_YEAR(leap_year, year)                         \
+	do {                                                    \
+		/* 2100 isn't leap year */                      \
+		if (unlikely(year > NO_LEAP_YEAR_2100))         \
+			leap_year = ((year + 3) / 4) - 1;       \
+		else                                            \
+			leap_year = ((year + 3) / 4);           \
+	} while (0)
+
+/* Linear day numbers of the respective 1sts in non-leap years. */
+static time_t accum_days_in_year[] = {
+	/* Month : N 01  02  03  04  05  06  07  08  09  10  11  12 */
+	0, 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 0, 0, 0,
+};
+
+/* Convert a FAT time/date pair to a UNIX date (seconds since 1 1 70). */
+void exfat_time_fat2unix(struct exfat_sb_info *sbi, struct timespec64 *ts,
+		DATE_TIME_T *tp)
+{
+	time_t year = tp->Year;
+	time_t ld; /* leap day */
+
+	MAKE_LEAP_YEAR(ld, year);
+
+	if (IS_LEAP_YEAR(year) && (tp->Month) > 2)
+		ld++;
+
+	ts->tv_sec =  tp->Second  + tp->Minute * SECS_PER_MIN
+			+ tp->Hour * SECS_PER_HOUR
+			+ (year * 365 + ld + accum_days_in_year[tp->Month]
+			+ (tp->Day - 1) + DAYS_DELTA_DECADE) * SECS_PER_DAY;
+
+	if (!sbi->options.tz_utc)
+		ts->tv_sec += sys_tz.tz_minuteswest * SECS_PER_MIN;
+
+	ts->tv_nsec = 0;
+}
+
+/* Convert linear UNIX date to a FAT time/date pair. */
+void exfat_time_unix2fat(struct exfat_sb_info *sbi, struct timespec64 *ts,
+		DATE_TIME_T *tp)
+{
+	time_t second = ts->tv_sec;
+	time_t day, month, year;
+	time_t ld; /* leap day */
+
+	if (!sbi->options.tz_utc)
+		second -= sys_tz.tz_minuteswest * SECS_PER_MIN;
+
+	/* Jan 1 GMT 00:00:00 1980. But what about another time zone? */
+	if (second < UNIX_SECS_1980) {
+		tp->Second  = 0;
+		tp->Minute  = 0;
+		tp->Hour = 0;
+		tp->Day  = 1;
+		tp->Month  = 1;
+		tp->Year = 0;
+		return;
+	}
+#if (BITS_PER_LONG == 64)
+	if (second >= UNIX_SECS_2108) {
+		tp->Second  = 59;
+		tp->Minute  = 59;
+		tp->Hour = 23;
+		tp->Day  = 31;
+		tp->Month  = 12;
+		tp->Year = 127;
+		return;
+	}
+#endif
+
+	day = second / SECS_PER_DAY - DAYS_DELTA_DECADE;
+	year = day / 365;
+
+	MAKE_LEAP_YEAR(ld, year);
+	if (year * 365 + ld > day)
+		year--;
+
+	MAKE_LEAP_YEAR(ld, year);
+	day -= year * 365 + ld;
+
+	if (IS_LEAP_YEAR(year) && day == accum_days_in_year[3]) {
+		month = 2;
+	} else {
+		if (IS_LEAP_YEAR(year) && day > accum_days_in_year[3])
+			day--;
+		for (month = 1; month < 12; month++) {
+			if (accum_days_in_year[month + 1] > day)
+				break;
+		}
+	}
+	day -= accum_days_in_year[month];
+
+	tp->Second  = second % SECS_PER_MIN;
+	tp->Minute  = (second / SECS_PER_MIN) % 60;
+	tp->Hour = (second / SECS_PER_HOUR) % 24;
+	tp->Day  = day + 1;
+	tp->Month  = month;
+	tp->Year = year;
+}
+
+TIMESTAMP_T *exfat_tm_now(struct exfat_sb_info *sbi, TIMESTAMP_T *tp)
+{
+	struct timespec64 ts;
+	DATE_TIME_T dt;
+
+	ktime_get_real_ts64(&ts);
+	exfat_time_unix2fat(sbi, &ts, &dt);
+
+	tp->year = dt.Year;
+	tp->mon = dt.Month;
+	tp->day = dt.Day;
+	tp->hour = dt.Hour;
+	tp->min = dt.Minute;
+	tp->sec = dt.Second;
+
+	return tp;
+}
+
+u16 exfat_calc_chksum_2byte(void *data, s32 len, u16 chksum, s32 type)
+{
+	s32 i;
+	u8 *c = (u8 *) data;
+
+	for (i = 0; i < len; i++, c++) {
+		if (((i == 2) || (i == 3)) && (type == CS_DIR_ENTRY))
+			continue;
+		chksum = (((chksum & 1) << 15) | ((chksum & 0xFFFE) >> 1)) + (u16) *c;
+	}
+	return chksum;
+}
+
+#ifdef CONFIG_EXFAT_TRACE_ELAPSED_TIME
+struct timeval __t1, __t2;
+u32 exfat_time_current_usec(struct timeval *tv)
+{
+	do_gettimeofday(tv);
+	return (u32)(tv->tv_sec*1000000 + tv->tv_usec);
+}
+#endif /* CONFIG_EXFAT_TRACE_ELAPSED_TIME */
+
+#ifdef CONFIG_EXFAT_DBG_CAREFUL
+/* Check the consistency of i_size_ondisk (FAT32, or flags 0x01 only) */
+void exfat_debug_check_clusters(struct inode *inode)
+{
+	unsigned int num_clusters;
+	volatile uint32_t tmp_fat_chain[50];
+	volatile int tmp_i = 0;
+	volatile unsigned int num_clusters_org, tmp_i = 0;
+	CHAIN_T clu;
+	FILE_ID_T *fid = &(EXFAT_I(inode)->fid);
+	FS_INFO_T *fsi = &(EXFAT_SB(inode->i_sb)->fsi);
+
+	if (EXFAT_I(inode)->i_size_ondisk == 0)
+		num_clusters = 0;
+	else
+		num_clusters = ((EXFAT_I(inode)->i_size_ondisk-1) >> fsi->cluster_size_bits) + 1;
+
+	clu.dir = fid->start_clu;
+	clu.size = num_clusters;
+	clu.flags = fid->flags;
+
+	num_clusters_org = num_clusters;
+
+	if (clu.flags == 0x03)
+		return;
+
+	while (num_clusters > 0) {
+		/* FAT chain logging */
+		tmp_fat_chain[tmp_i] = clu.dir;
+		tmp_i++;
+		if (tmp_i >= 50)
+			tmp_i = 0;
+
+		BUG_ON(IS_CLUS_EOF(clu.dir) || IS_CLUS_FREE(clu.dir));
+
+		if (get_next_clus_safe(inode->i_sb, &(clu.dir)))
+			EMSG("%s: failed to access to FAT\n");
+
+		num_clusters--;
+	}
+
+	BUG_ON(!IS_CLUS_EOF(clu.dir));
+}
+
+#endif /* CONFIG_EXFAT_DBG_CAREFUL */
+
+#ifdef CONFIG_EXFAT_DBG_MSG
+void __exfat_dmsg(int level, const char *fmt, ...)
+{
+#ifdef CONFIG_EXFAT_DBG_SHOW_PID
+	struct va_format vaf;
+	va_list args;
+
+	/* should check type */
+	if (level > EXFAT_MSG_LEVEL)
+		return;
+
+	va_start(args, fmt);
+	vaf.fmt = fmt;
+	vaf.va = &args;
+	/* fmt already includes KERN_ pacility level */
+	printk("[%u] %pV", current->pid,  &vaf);
+	va_end(args);
+#else
+	va_list args;
+
+	/* should check type */
+	if (level > EXFAT_MSG_LEVEL)
+		return;
+
+	va_start(args, fmt);
+	/* fmt already includes KERN_ pacility level */
+	vprintk(fmt, args);
+	va_end(args);
+#endif
+}
+#endif
diff --git a/drivers/staging/exfat/nls.c b/drivers/staging/exfat/nls.c
new file mode 100644
index 000000000000..b367b4d902a7
--- /dev/null
+++ b/drivers/staging/exfat/nls.c
@@ -0,0 +1,323 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ *
+ *  nls.c: exFAT NLS manager
+ */
+
+#include <linux/string.h>
+#include <linux/nls.h>
+
+#include "exfat.h"
+#include "core.h"
+
+/*
+ * Allow full-width illegal characters :
+ * "MS windows 7" supports full-width-invalid-name-characters.
+ * So we should check half-width-invalid-name-characters(ASCII) only
+ * for compatibility.
+ *
+ * " * / : < > ? \ |
+ *
+ * patch 1.2.0
+ */
+static u16 bad_uni_chars[] = {
+	0x0022,         0x002A, 0x002F, 0x003A,
+	0x003C, 0x003E, 0x003F, 0x005C, 0x007C,
+#if 0 /* allow full-width characters */
+	0x201C, 0x201D, 0xFF0A, 0xFF0F, 0xFF1A,
+	0xFF1C, 0xFF1E, 0xFF1F, 0xFF3C, 0xFF5C,
+#endif
+	0
+};
+
+static s32  convert_uni_to_ch(struct nls_table *nls, u16 uni, u8 *ch, s32 *lossy);
+static s32  convert_ch_to_uni(struct nls_table *nls, u8 *ch, u16 *uni, s32 *lossy);
+
+static u16 nls_upper(struct super_block *sb, u16 a)
+{
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+
+	if (EXFAT_SB(sb)->options.casesensitive)
+		return a;
+	if ((fsi->vol_utbl)[exfat_get_col_index(a)] != NULL)
+		return (fsi->vol_utbl)[exfat_get_col_index(a)][exfat_get_row_index(a)];
+	else
+		return a;
+}
+
+u16 *nls_wstrchr(u16 *str, u16 wchar)
+{
+	while (*str) {
+		if (*(str++) == wchar)
+			return str;
+	}
+
+	return 0;
+}
+
+s32 exfat_nls_cmp_uniname(struct super_block *sb, u16 *a, u16 *b)
+{
+	s32 i;
+
+	for (i = 0; i < MAX_NAME_LENGTH; i++, a++, b++) {
+		if (nls_upper(sb, *a) != nls_upper(sb, *b))
+			return 1;
+		if (*a == 0x0)
+			return 0;
+	}
+	return 0;
+}
+
+#define CASE_LOWER_BASE (0x08)	/* base is lower case */
+#define CASE_LOWER_EXT  (0x10)	/* extension is lower case */
+
+s32 exfat_nls_sfn_to_uni16s(struct super_block *sb, DOS_NAME_T *p_dosname, UNI_NAME_T *p_uniname)
+{
+	s32 i = 0, j, n = 0;
+	u8 buf[MAX_DOSNAME_BUF_SIZE];
+	u8 *dosname = p_dosname->name;
+	u16 *uniname = p_uniname->name;
+	struct nls_table *nls = EXFAT_SB(sb)->nls_disk;
+
+	if (*dosname == 0x05) {
+		*buf = 0xE5;
+		i++;
+		n++;
+	}
+
+	for ( ; i < 8; i++, n++) {
+		if (*(dosname+i) == ' ')
+			break;
+
+		if ((*(dosname+i) >= 'A') && (*(dosname+i) <= 'Z') &&
+				(p_dosname->name_case & CASE_LOWER_BASE))
+			*(buf+n) = *(dosname+i) + ('a' - 'A');
+		else
+			*(buf+n) = *(dosname+i);
+	}
+	if (*(dosname+8) != ' ') {
+		*(buf+n) = '.';
+		n++;
+	}
+
+	for (i = 8; i < DOS_NAME_LENGTH; i++, n++) {
+		if (*(dosname+i) == ' ')
+			break;
+
+		if ((*(dosname+i) >= 'A') && (*(dosname+i) <= 'Z') &&
+			       (p_dosname->name_case & CASE_LOWER_EXT))
+			*(buf+n) = *(dosname+i) + ('a' - 'A');
+		else
+			*(buf+n) = *(dosname+i);
+	}
+	*(buf+n) = '\0';
+
+	i = j = 0;
+	while (j < MAX_NAME_LENGTH) {
+		if (*(buf+i) == '\0')
+			break;
+
+		i += convert_ch_to_uni(nls, (buf+i), uniname, NULL);
+
+		uniname++;
+		j++;
+	}
+
+	*uniname = (u16) '\0';
+	return j;
+}
+
+static s32 __nls_utf16s_to_vfsname(struct super_block *sb, UNI_NAME_T *p_uniname, u8 *p_cstring, s32 buflen)
+{
+	s32 len;
+	const u16 *uniname = p_uniname->name;
+
+	/* always len >= 0 */
+	len = utf16s_to_utf8s(uniname, MAX_NAME_LENGTH, UTF16_HOST_ENDIAN,
+		p_cstring, buflen);
+	p_cstring[len] = '\0';
+	return len;
+}
+
+static s32 __nls_vfsname_to_utf16s(struct super_block *sb, const u8 *p_cstring,
+		const s32 len, UNI_NAME_T *p_uniname, s32 *p_lossy)
+{
+	s32 i, unilen, lossy = NLS_NAME_NO_LOSSY;
+	u16 upname[MAX_NAME_LENGTH+1];
+	u16 *uniname = p_uniname->name;
+
+	BUG_ON(!len);
+
+	unilen = utf8s_to_utf16s(p_cstring, len, UTF16_HOST_ENDIAN,
+			(wchar_t *)uniname, MAX_NAME_LENGTH+2);
+	if (unilen < 0) {
+		MMSG("%s: failed to vfsname_to_utf16(err:%d) "
+			"vfsnamelen:%d", __func__, unilen, len);
+		return unilen;
+	}
+
+	if (unilen > MAX_NAME_LENGTH) {
+		MMSG("%s: failed to vfsname_to_utf16(estr:ENAMETOOLONG) "
+			"vfsnamelen:%d, unilen:%d>%d",
+			__func__, len, unilen, MAX_NAME_LENGTH);
+		return -ENAMETOOLONG;
+	}
+
+	p_uniname->name_len = (u8)(unilen & 0xFF);
+
+	for (i = 0; i < unilen; i++) {
+		if ((*uniname < 0x0020) || nls_wstrchr(bad_uni_chars, *uniname))
+			lossy |= NLS_NAME_LOSSY;
+
+		*(upname+i) = nls_upper(sb, *uniname);
+		uniname++;
+	}
+
+	*uniname = (u16)'\0';
+	p_uniname->name_len = unilen;
+	p_uniname->name_hash = exfat_calc_chksum_2byte((void *) upname,
+				unilen << 1, 0, CS_DEFAULT);
+
+	if (p_lossy)
+		*p_lossy = lossy;
+
+	return unilen;
+}
+
+static s32 __exfat_nls_uni16s_to_vfsname(struct super_block *sb, UNI_NAME_T *p_uniname, u8 *p_cstring, s32 buflen)
+{
+	s32 i, j, len, out_len = 0;
+	u8 buf[MAX_CHARSET_SIZE];
+	const u16 *uniname = p_uniname->name;
+	struct nls_table *nls = EXFAT_SB(sb)->nls_io;
+
+	i = 0;
+	while ((i < MAX_NAME_LENGTH) && (out_len < (buflen-1))) {
+		if (*uniname == (u16)'\0')
+			break;
+
+		len = convert_uni_to_ch(nls, *uniname, buf, NULL);
+
+		if (out_len + len >= buflen)
+			len = (buflen - 1) - out_len;
+
+		out_len += len;
+
+		if (len > 1) {
+			for (j = 0; j < len; j++)
+				*p_cstring++ = (s8) *(buf+j);
+		} else { /* len == 1 */
+			*p_cstring++ = (s8) *buf;
+		}
+
+		uniname++;
+		i++;
+	}
+
+	*p_cstring = '\0';
+	return out_len;
+}
+
+static s32 __exfat_nls_vfsname_to_uni16s(struct super_block *sb, const u8 *p_cstring,
+		const s32 len, UNI_NAME_T *p_uniname, s32 *p_lossy)
+{
+	s32 i, unilen, lossy = NLS_NAME_NO_LOSSY;
+	u16 upname[MAX_NAME_LENGTH+1];
+	u16 *uniname = p_uniname->name;
+	struct nls_table *nls = EXFAT_SB(sb)->nls_io;
+
+	BUG_ON(!len);
+
+	i = unilen = 0;
+	while ((unilen < MAX_NAME_LENGTH) && (i < len)) {
+		i += convert_ch_to_uni(nls, (u8 *)(p_cstring+i), uniname, &lossy);
+
+		if ((*uniname < 0x0020) || nls_wstrchr(bad_uni_chars, *uniname))
+			lossy |= NLS_NAME_LOSSY;
+
+		*(upname+unilen) = nls_upper(sb, *uniname);
+
+		uniname++;
+		unilen++;
+	}
+
+	if (*(p_cstring+i) != '\0')
+		lossy |= NLS_NAME_OVERLEN;
+
+	*uniname = (u16)'\0';
+	p_uniname->name_len = unilen;
+	p_uniname->name_hash =
+		exfat_calc_chksum_2byte((void *) upname, unilen<<1, 0, CS_DEFAULT);
+
+	if (p_lossy)
+		*p_lossy = lossy;
+
+	return unilen;
+}
+
+s32 exfat_nls_uni16s_to_vfsname(struct super_block *sb, UNI_NAME_T *uniname, u8 *p_cstring, s32 buflen)
+{
+	if (EXFAT_SB(sb)->options.utf8)
+		return __nls_utf16s_to_vfsname(sb, uniname, p_cstring, buflen);
+
+	return __exfat_nls_uni16s_to_vfsname(sb, uniname, p_cstring, buflen);
+}
+
+s32 exfat_nls_vfsname_to_uni16s(struct super_block *sb, const u8 *p_cstring, const s32 len, UNI_NAME_T *uniname, s32 *p_lossy)
+{
+	if (EXFAT_SB(sb)->options.utf8)
+		return __nls_vfsname_to_utf16s(sb, p_cstring, len, uniname, p_lossy);
+	return __exfat_nls_vfsname_to_uni16s(sb, p_cstring, len, uniname, p_lossy);
+}
+
+static s32 convert_ch_to_uni(struct nls_table *nls, u8 *ch, u16 *uni, s32 *lossy)
+{
+	int len;
+
+	*uni = 0x0;
+
+	if (ch[0] < 0x80) {
+		*uni = (u16) ch[0];
+		return 1;
+	}
+
+	len = nls->char2uni(ch, MAX_CHARSET_SIZE, uni);
+	if (len < 0) {
+		/* conversion failed */
+		DMSG("%s: fail to use nls\n", __func__);
+		if (lossy != NULL)
+			*lossy |= NLS_NAME_LOSSY;
+		*uni = (u16) '_';
+		if (!strcmp(nls->charset, "utf8"))
+			return 1;
+		return 2;
+	}
+
+	return len;
+}
+
+static s32 convert_uni_to_ch(struct nls_table *nls, u16 uni, u8 *ch, s32 *lossy)
+{
+	int len;
+
+	ch[0] = 0x0;
+
+	if (uni < 0x0080) {
+		ch[0] = (u8) uni;
+		return 1;
+	}
+
+	len = nls->uni2char(uni, ch, MAX_CHARSET_SIZE);
+	if (len < 0) {
+		/* conversion failed */
+		DMSG("%s: fail to use nls\n", __func__);
+		if (lossy != NULL)
+			*lossy |= NLS_NAME_LOSSY;
+		ch[0] = '_';
+		return 1;
+	}
+
+	return len;
+
+}
diff --git a/drivers/staging/exfat/super.c b/drivers/staging/exfat/super.c
new file mode 100644
index 000000000000..06675992b000
--- /dev/null
+++ b/drivers/staging/exfat/super.c
@@ -0,0 +1,3168 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ *
+ *  super.c: exFAT glue layer for supporting VFS
+ */
+
+#include <linux/version.h>
+#include <linux/module.h>
+#include <linux/init.h>
+#include <linux/time.h>
+#include <linux/slab.h>
+#include <linux/seq_file.h>
+#include <linux/pagemap.h>
+#include <linux/mpage.h>
+#include <linux/buffer_head.h>
+#include <linux/exportfs.h>
+#include <linux/mount.h>
+#include <linux/vfs.h>
+#include <linux/parser.h>
+#include <linux/uio.h>
+#include <linux/writeback.h>
+#include <linux/log2.h>
+#include <linux/hash.h>
+#include <linux/backing-dev.h>
+#include <linux/sched.h>
+#include <linux/fs_struct.h>
+#include <linux/namei.h>
+#include <linux/bio.h>
+#include <linux/blkdev.h>
+#include <linux/swap.h> /* for mark_page_accessed() */
+#include <linux/vmalloc.h>
+#include <linux/mutex.h>
+#include <asm/current.h>
+#include <asm/unaligned.h>
+#include <linux/aio.h>
+
+#include "config.h"
+
+#include "exfat.h"
+#include "core.h"
+
+/* skip iterating emit_dots when dir is empty */
+#define ITER_POS_FILLED_DOTS	(2)
+
+static struct kset *exfat_kset;
+static struct kmem_cache *exfat_inode_cachep;
+
+static DEFINE_MUTEX(_lock_core);
+
+static int exfat_default_codepage = CONFIG_EXFAT_DEFAULT_CODEPAGE;
+static char exfat_default_iocharset[] = CONFIG_EXFAT_DEFAULT_IOCHARSET;
+static const char exfat_iocharset_with_utf8[] = "iso8859-1";
+
+#ifdef CONFIG_EXFAT_TRACE_SB_LOCK
+static unsigned long __lock_jiffies;
+#endif
+
+static void exfat_truncate(struct inode *inode, loff_t old_size);
+static int exfat_get_block(struct inode *inode, sector_t iblock,
+				   struct buffer_head *bh_result, int create);
+
+static struct inode *exfat_iget(struct super_block *sb, loff_t i_pos);
+static struct inode *exfat_build_inode(struct super_block *sb, const FILE_ID_T *fid, loff_t i_pos);
+static void exfat_detach(struct inode *inode);
+static void exfat_attach(struct inode *inode, loff_t i_pos);
+static inline unsigned long exfat_hash(loff_t i_pos);
+static s32 __exfat_sync_fs(struct super_block *sb, s32 do_sync);
+static int __exfat_write_inode(struct inode *inode, int sync);
+static int exfat_sync_inode(struct inode *inode);
+static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc);
+static void exfat_write_super(struct super_block *sb);
+static void exfat_write_failed(struct address_space *mapping, loff_t to);
+
+static void exfat_init_namebuf(DENTRY_NAMEBUF_T *nb);
+static int exfat_alloc_namebuf(DENTRY_NAMEBUF_T *nb);
+static void exfat_free_namebuf(DENTRY_NAMEBUF_T *nb);
+
+static inline void __lock_super(struct super_block *sb);
+static inline void __unlock_super(struct super_block *sb);
+
+static inline loff_t exfat_make_i_pos(FILE_ID_T *fid)
+{
+	return ((loff_t) fid->dir.dir << 32) | (fid->entry & 0xffffffff);
+}
+
+#define EXFAT_DSTATE_LOCKED	(void *)(0xCAFE2016)
+#define EXFAT_DSTATE_UNLOCKED	(void *)(0x00000000)
+
+static inline void __lock_d_revalidate(struct dentry *dentry)
+{
+	spin_lock(&dentry->d_lock);
+	dentry->d_fsdata = EXFAT_DSTATE_LOCKED;
+	spin_unlock(&dentry->d_lock);
+}
+
+static inline void __unlock_d_revalidate(struct dentry *dentry)
+{
+	spin_lock(&dentry->d_lock);
+	dentry->d_fsdata = EXFAT_DSTATE_UNLOCKED;
+	spin_unlock(&dentry->d_lock);
+}
+
+/* __check_dstate_locked requires dentry->d_lock */
+static inline int __check_dstate_locked(struct dentry *dentry)
+{
+	if (dentry->d_fsdata == EXFAT_DSTATE_LOCKED)
+		return 1;
+
+	return 0;
+}
+
+/* mount the file system volume */
+static s32 exfat_mount(struct super_block *sb)
+{
+	s32 err;
+
+	/* acquire the core lock for file system ccritical section */
+	mutex_lock(&_lock_core);
+
+	err = exfat_meta_cache_init(sb);
+	if (err)
+		goto out;
+
+	err = exfat_fscore_mount(sb);
+out:
+	if (err)
+		exfat_meta_cache_shutdown(sb);
+
+	/* release the core lock for file system critical section */
+	mutex_unlock(&_lock_core);
+
+	return err;
+}
+
+/* unmount the file system volume */
+static s32 exfat_umount(struct super_block *sb)
+{
+	s32 err;
+
+	/* acquire the core lock for file system ccritical section */
+	mutex_lock(&_lock_core);
+
+	mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+	err = exfat_fscore_umount(sb);
+	exfat_meta_cache_shutdown(sb);
+	mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+
+	/* release the core lock for file system critical section */
+	mutex_unlock(&_lock_core);
+
+	return err;
+}
+
+static s32 exfat_set_vol_flags(struct super_block *sb, u16 new_flag, s32 always_sync)
+{
+	s32 err;
+
+	mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+	err = exfat_fscore_set_vol_flags(sb, new_flag, always_sync);
+	mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+	return err;
+}
+
+/* read the target string of symlink */
+static s32 exfat_read_link(struct inode *inode, FILE_ID_T *fid, void *buffer, u64 count, u64 *rcount)
+{
+	s32 err;
+	struct super_block *sb = inode->i_sb;
+
+	/* check the validity of pointer parameters */
+	ASSERT(fid && buffer);
+
+	mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+	err = exfat_fscore_read_link(inode, fid, buffer, count, rcount);
+	mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+	return err;
+}
+
+/* write the target string of symlink */
+static s32 exfat_write_link(struct inode *inode, FILE_ID_T *fid, void *buffer, u64 count, u64 *wcount)
+{
+	s32 err;
+	struct super_block *sb = inode->i_sb;
+
+	/* check the validity of pointer parameters */
+	ASSERT(fid && buffer);
+
+	mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+	err = exfat_fscore_write_link(inode, fid, buffer, count, wcount);
+	mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+	return err;
+}
+
+/* remove a file */
+static s32 exfat_remove(struct inode *inode, FILE_ID_T *fid)
+{
+	s32 err;
+	struct super_block *sb = inode->i_sb;
+
+	/* check the validity of pointer parameters */
+	ASSERT(fid);
+
+	mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+	err = exfat_fscore_remove(inode, fid);
+	mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+	return err;
+}
+
+/* get the information of a given file */
+static s32 exfat_read_inode(struct inode *inode, DIR_ENTRY_T *info)
+{
+	s32 err;
+	struct super_block *sb = inode->i_sb;
+
+	mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+	err = exfat_fscore_read_inode(inode, info);
+	mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+	return err;
+}
+
+/* return the cluster number in the given cluster offset */
+static s32 exfat_map_clus(struct inode *inode, u32 clu_offset, u32 *clu, int dest)
+{
+	s32 err;
+	struct super_block *sb = inode->i_sb;
+
+	/* check the validity of pointer parameters */
+	ASSERT(clu);
+
+	mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+	err = exfat_fscore_map_clus(inode, clu_offset, clu, dest);
+	mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+	return err;
+}
+
+/* read a directory entry from the opened directory */
+static s32 exfat_readdir(struct inode *inode, DIR_ENTRY_T *dir_entry)
+{
+	s32 err;
+	struct super_block *sb = inode->i_sb;
+
+	/* check the validity of pointer parameters */
+	ASSERT(dir_entry);
+
+	mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+	err = exfat_fscore_readdir(inode, dir_entry);
+	mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+	return err;
+}
+
+/* reflect the internal dirty flags to VFS bh dirty flags */
+static s32 exfat_cache_flush(struct super_block *sb, int do_sync)
+{
+	mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+	exfat_fcache_flush(sb, do_sync);
+	exfat_dcache_flush(sb, do_sync);
+	mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+	return 0;
+}
+
+static int exfat_getattr(const struct path *path, struct kstat *stat,
+			u32 request_mask, unsigned int query_flags)
+{
+	struct inode *inode = d_backing_inode(path->dentry);
+
+	generic_fillattr(inode, stat);
+	stat->blksize = EXFAT_SB(inode->i_sb)->fsi.cluster_size;
+
+	return 0;
+}
+
+static int exfat_rename(struct inode *old_dir, struct dentry *old_dentry,
+		struct inode *new_dir, struct dentry *new_dentry,
+		unsigned int flags)
+{
+	struct inode *old_inode, *new_inode;
+	struct super_block *sb = old_dir->i_sb;
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	loff_t i_pos;
+	int err;
+
+	/*
+	 * The VFS already checks for existence, so for local filesystems
+	 * the RENAME_NOREPLACE implementation is equivalent to plain rename.
+	 * Don't support any other flags
+	 */
+	if (flags & ~RENAME_NOREPLACE)
+		return -EINVAL;
+
+	__lock_super(sb);
+
+	old_inode = old_dentry->d_inode;
+	new_inode = new_dentry->d_inode;
+
+	EXFAT_I(old_inode)->fid.size = i_size_read(old_inode);
+
+	/* check the validity of pointer parameters */
+	ASSERT(&(EXFAT_I(old_inode)->fid));
+
+	mutex_lock(&(sbi->s_vlock));
+	err = exfat_fscore_rename(old_dir, &(EXFAT_I(old_inode)->fid),
+				new_dir, new_dentry);
+	mutex_unlock(&(sbi->s_vlock));
+	if (err)
+		goto out;
+
+	__lock_d_revalidate(old_dentry);
+	__lock_d_revalidate(new_dentry);
+
+	inode_inc_iversion(new_dir);
+	new_dir->i_ctime = new_dir->i_mtime = new_dir->i_atime = current_time(new_dir);
+	if (IS_DIRSYNC(new_dir))
+		(void) exfat_sync_inode(new_dir);
+	else
+		mark_inode_dirty(new_dir);
+
+	i_pos = exfat_make_i_pos(&(EXFAT_I(old_inode)->fid));
+	exfat_detach(old_inode);
+	exfat_attach(old_inode, i_pos);
+	if (IS_DIRSYNC(new_dir))
+		(void) exfat_sync_inode(old_inode);
+	else
+		mark_inode_dirty(old_inode);
+
+	if ((S_ISDIR(old_inode->i_mode)) && (old_dir != new_dir)) {
+		drop_nlink(old_dir);
+		if (!new_inode)
+			inc_nlink(new_dir);
+	}
+
+	inode_inc_iversion(old_dir);
+	old_dir->i_ctime = old_dir->i_mtime = current_time(old_dir);
+	if (IS_DIRSYNC(old_dir))
+		(void) exfat_sync_inode(old_dir);
+	else
+		mark_inode_dirty(old_dir);
+
+	if (new_inode) {
+		exfat_detach(new_inode);
+
+		/* skip drop_nlink if new_inode already has been dropped */
+		if (new_inode->i_nlink) {
+			drop_nlink(new_inode);
+			if (S_ISDIR(new_inode->i_mode))
+				drop_nlink(new_inode);
+		} else {
+			EMSG("%s : abnormal access to an inode dropped\n",
+				__func__);
+			WARN_ON(new_inode->i_nlink == 0);
+		}
+		new_inode->i_ctime = current_time(new_inode);
+#if 0
+		(void) exfat_sync_inode(new_inode);
+#endif
+	}
+
+out:
+	__unlock_d_revalidate(old_dentry);
+	__unlock_d_revalidate(new_dentry);
+	__unlock_super(sb);
+	return err;
+}
+
+//instead of exfat_readdir
+static int exfat_iterate(struct file *filp, struct dir_context *ctx)
+{
+	struct inode *inode = filp->f_path.dentry->d_inode;
+	struct super_block *sb = inode->i_sb;
+	DIR_ENTRY_T de;
+	DENTRY_NAMEBUF_T *nb = &(de.NameBuf);
+	unsigned long inum;
+	loff_t cpos;
+	int err = 0, fake_offset = 0;
+
+	exfat_init_namebuf(nb);
+	__lock_super(sb);
+
+	cpos = ctx->pos;
+	if (!dir_emit_dots(filp, ctx))
+		goto out;
+	if (ctx->pos == ITER_POS_FILLED_DOTS) {
+		cpos = 0;
+		fake_offset = 1;
+	}
+	if (cpos & (DENTRY_SIZE - 1)) {
+		err = -ENOENT;
+		goto out;
+	}
+
+	/* name buffer should be allocated before use */
+	err = exfat_alloc_namebuf(nb);
+	if (err)
+		goto out;
+get_new:
+	EXFAT_I(inode)->fid.size = i_size_read(inode);
+	EXFAT_I(inode)->fid.rwoffset = cpos >> DENTRY_SIZE_BITS;
+
+	if (cpos >= EXFAT_I(inode)->fid.size)
+		goto end_of_dir;
+
+	err = exfat_readdir(inode, &de);
+	if (err) {
+		// at least we tried to read a sector
+		// move cpos to next sector position (should be aligned)
+		if (err == -EIO) {
+			cpos += 1 << (sb->s_blocksize_bits);
+			cpos &= ~((u32)sb->s_blocksize-1);
+		}
+
+		err = -EIO;
+		goto end_of_dir;
+	}
+
+	cpos = EXFAT_I(inode)->fid.rwoffset << DENTRY_SIZE_BITS;
+
+	if (!nb->lfn[0])
+		goto end_of_dir;
+
+	if (!memcmp(nb->sfn, DOS_CUR_DIR_NAME, DOS_NAME_LENGTH)) {
+		inum = inode->i_ino;
+	} else if (!memcmp(nb->sfn, DOS_PAR_DIR_NAME, DOS_NAME_LENGTH)) {
+		inum = parent_ino(filp->f_path.dentry);
+	} else {
+		loff_t i_pos = ((loff_t) EXFAT_I(inode)->fid.start_clu << 32) |
+			((EXFAT_I(inode)->fid.rwoffset-1) & 0xffffffff);
+		struct inode *tmp = exfat_iget(sb, i_pos);
+
+		if (tmp) {
+			inum = tmp->i_ino;
+			iput(tmp);
+		} else {
+			inum = iunique(sb, EXFAT_ROOT_INO);
+		}
+	}
+
+	/* Before calling dir_emit(), sb_lock should be released.
+	 * Because page fault can occur in dir_emit() when the size of buffer given
+	 * from user is larger than one page size
+	 */
+	__unlock_super(sb);
+	if (!dir_emit(ctx, nb->lfn, strlen(nb->lfn), inum,
+			(de.Attr & ATTR_SUBDIR) ? DT_DIR : DT_REG))
+		goto out_unlocked;
+	__lock_super(sb);
+
+	ctx->pos = cpos;
+	goto get_new;
+
+end_of_dir:
+	if (!cpos && fake_offset)
+		cpos = ITER_POS_FILLED_DOTS;
+	ctx->pos = cpos;
+out:
+	__unlock_super(sb);
+out_unlocked:
+	/*
+	 * To improve performance, free namebuf after unlock sb_lock.
+	 * If namebuf is not allocated, this function do nothing
+	 */
+	exfat_free_namebuf(nb);
+	return err;
+}
+
+static inline int __is_sb_dirty(struct super_block *sb)
+{
+	return EXFAT_SB(sb)->s_dirt;
+}
+
+static inline void __set_sb_clean(struct super_block *sb)
+{
+	EXFAT_SB(sb)->s_dirt = 0;
+}
+
+/* Workqueue wrapper for exfat_write_super () */
+static void __write_super_delayed(struct work_struct *work)
+{
+	struct exfat_sb_info *sbi;
+	struct super_block *sb;
+
+	sbi = container_of(work, struct exfat_sb_info, write_super_work.work);
+	sb = sbi->host_sb;
+
+	/* XXX: Is this needed? */
+	if (!sb || !down_read_trylock(&sb->s_umount)) {
+		DMSG("%s: skip delayed work(write_super).\n", __func__);
+		return;
+	}
+
+	DMSG("%s: do delayed_work(write_super).\n", __func__);
+
+	spin_lock(&sbi->work_lock);
+	sbi->write_super_queued = 0;
+	spin_unlock(&sbi->work_lock);
+
+	exfat_write_super(sb);
+
+	up_read(&sb->s_umount);
+}
+
+static void setup_exfat_sync_super_wq(struct super_block *sb)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+
+	mutex_init(&sbi->s_lock);
+	spin_lock_init(&sbi->work_lock);
+	INIT_DELAYED_WORK(&sbi->write_super_work, __write_super_delayed);
+	sbi->host_sb = sb;
+}
+
+static inline bool __cancel_delayed_work_sync(struct exfat_sb_info *sbi)
+{
+	return cancel_delayed_work_sync(&sbi->write_super_work);
+}
+
+static inline void lock_super(struct super_block *sb)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+
+	mutex_lock(&sbi->s_lock);
+}
+
+static inline void unlock_super(struct super_block *sb)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+
+	mutex_unlock(&sbi->s_lock);
+}
+
+static struct inode *exfat_iget(struct super_block *sb, loff_t i_pos)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	struct exfat_inode_info *info;
+	struct hlist_head *head = sbi->inode_hashtable + exfat_hash(i_pos);
+	struct inode *inode = NULL;
+
+	spin_lock(&sbi->inode_hash_lock);
+	hlist_for_each_entry(info, head, i_hash_fat) {
+		BUG_ON(info->vfs_inode.i_sb != sb);
+
+		if (i_pos != info->i_pos)
+			continue;
+		inode = igrab(&info->vfs_inode);
+		if (inode)
+			break;
+	}
+	spin_unlock(&sbi->inode_hash_lock);
+	return inode;
+}
+
+static struct dentry *__d_make_root(struct inode *root_inode)
+{
+	return d_make_root(root_inode);
+}
+
+static void __exfat_do_truncate(struct inode *inode, loff_t old, loff_t new)
+{
+	down_write(&EXFAT_I(inode)->truncate_lock);
+	truncate_setsize(inode, new);
+	exfat_truncate(inode, old);
+	up_write(&EXFAT_I(inode)->truncate_lock);
+}
+
+static sector_t exfat_aop_bmap(struct address_space *mapping, sector_t block)
+{
+	sector_t blocknr;
+
+	/* exfat_get_cluster() assumes the requested blocknr isn't truncated. */
+	down_read(&EXFAT_I(mapping->host)->truncate_lock);
+	blocknr = generic_block_bmap(mapping, block, exfat_get_block);
+	up_read(&EXFAT_I(mapping->host)->truncate_lock);
+	return blocknr;
+}
+
+static const char *exfat_follow_link(struct dentry *dentry, struct inode *inode, struct delayed_call *done)
+{
+	struct exfat_inode_info *ei = EXFAT_I(inode);
+
+	return (char *)(ei->target);
+}
+
+#ifdef CONFIG_EXFAT_TRACE_SB_LOCK
+static inline void __lock_super(struct super_block *sb)
+{
+	lock_super(sb);
+	__lock_jiffies = jiffies;
+}
+
+static inline void __unlock_super(struct super_block *sb)
+{
+	int time = ((jiffies - __lock_jiffies) * 1000 / HZ);
+	/* FIXME : error message should be modified */
+	if (time > 10)
+		EMSG("lock_super in %s (%d ms)\n", __func__, time);
+
+	unlock_super(sb);
+}
+#else /* CONFIG_EXFAT_TRACE_SB_LOCK */
+static inline void __lock_super(struct super_block *sb)
+{
+	lock_super(sb);
+}
+
+static inline void __unlock_super(struct super_block *sb)
+{
+	unlock_super(sb);
+}
+#endif /* CONFIG_EXFAT_TRACE_SB_LOCK */
+
+static void exfat_init_namebuf(DENTRY_NAMEBUF_T *nb)
+{
+	nb->lfn = NULL;
+	nb->sfn = NULL;
+	nb->lfnbuf_len = 0;
+	nb->sfnbuf_len = 0;
+}
+
+static int exfat_alloc_namebuf(DENTRY_NAMEBUF_T *nb)
+{
+	nb->lfn = __getname();
+	if (!nb->lfn)
+		return -ENOMEM;
+	nb->sfn = nb->lfn + MAX_VFSNAME_BUF_SIZE;
+	nb->lfnbuf_len = MAX_VFSNAME_BUF_SIZE;
+	nb->sfnbuf_len = MAX_VFSNAME_BUF_SIZE;
+	return 0;
+}
+
+static void exfat_free_namebuf(DENTRY_NAMEBUF_T *nb)
+{
+	if (!nb->lfn)
+		return;
+
+	__putname(nb->lfn);
+	exfat_init_namebuf(nb);
+}
+
+/*
+ * If new entry was created in the parent, it could create the 8.3
+ * alias (the shortname of logname).  So, the parent may have the
+ * negative-dentry which matches the created 8.3 alias.
+ *
+ * If it happened, the negative dentry isn't actually negative
+ * anymore.  So, drop it.
+ */
+static int __exfat_revalidate_common(struct dentry *dentry)
+{
+	int ret = 1;
+
+	spin_lock(&dentry->d_lock);
+	if ((!dentry->d_inode) && (!__check_dstate_locked(dentry) &&
+		(dentry->d_time != inode_peek_iversion_raw(dentry->d_parent->d_inode)))) {
+		ret = 0;
+	}
+	spin_unlock(&dentry->d_lock);
+	return ret;
+}
+
+static int __exfat_revalidate(struct dentry *dentry)
+{
+	/* This is not negative dentry. Always valid. */
+	if (dentry->d_inode)
+		return 1;
+	return __exfat_revalidate_common(dentry);
+}
+
+static int __exfat_revalidate_ci(struct dentry *dentry, unsigned int flags)
+{
+	/*
+	 * This is not negative dentry. Always valid.
+	 *
+	 * Note, rename() to existing directory entry will have ->d_inode,
+	 * and will use existing name which isn't specified name by user.
+	 *
+	 * We may be able to drop this positive dentry here. But dropping
+	 * positive dentry isn't good idea. So it's unsupported like
+	 * rename("filename", "FILENAME") for now.
+	 */
+	if (dentry->d_inode)
+		return 1;
+#if 0	/* Blocked below code for lookup_one_len() called by stackable FS */
+	/*
+	 * This may be nfsd (or something), anyway, we can't see the
+	 * intent of this. So, since this can be for creation, drop it.
+	 */
+	if (!flags)
+		return 0;
+#endif
+	/*
+	 * Drop the negative dentry, in order to make sure to use the
+	 * case sensitive name which is specified by user if this is
+	 * for creation.
+	 */
+	if (flags & (LOOKUP_CREATE | LOOKUP_RENAME_TARGET))
+		return 0;
+	return __exfat_revalidate_common(dentry);
+}
+
+
+/* returns the length of a struct qstr, ignoring trailing dots */
+static unsigned int __exfat_striptail_len(unsigned int len, const char *name)
+{
+	while (len && name[len - 1] == '.')
+		len--;
+	return len;
+}
+
+static unsigned int exfat_striptail_len(const struct qstr *qstr)
+{
+	return __exfat_striptail_len(qstr->len, qstr->name);
+}
+
+/*
+ * Compute the hash for the exfat name corresponding to the dentry.
+ * Note: if the name is invalid, we leave the hash code unchanged so
+ * that the existing dentry can be used. The exfat fs routines will
+ * return ENOENT or EINVAL as appropriate.
+ */
+static int exfat_d_hash(const struct dentry *dentry, struct qstr *qstr)
+{
+	unsigned int len = exfat_striptail_len(qstr);
+
+	qstr->hash = full_name_hash(dentry, qstr->name, len);
+	return 0;
+}
+
+/*
+ * Compute the hash for the exfat name corresponding to the dentry.
+ * Note: if the name is invalid, we leave the hash code unchanged so
+ * that the existing dentry can be used. The exfat fs routines will
+ * return ENOENT or EINVAL as appropriate.
+ */
+static int exfat_d_hashi(const struct dentry *dentry, struct qstr *qstr)
+{
+	struct nls_table *t = EXFAT_SB(dentry->d_sb)->nls_io;
+	const unsigned char *name;
+	unsigned int len;
+	unsigned long hash;
+
+	name = qstr->name;
+	len = exfat_striptail_len(qstr);
+
+	hash = init_name_hash(dentry);
+	while (len--)
+		hash = partial_name_hash(nls_tolower(t, *name++), hash);
+	qstr->hash = end_name_hash(hash);
+
+	return 0;
+}
+
+/*
+ * Case sensitive compare of two exfat names.
+ */
+static int exfat_cmp(const struct dentry *dentry, unsigned int len,
+		const char *str, const struct qstr *name)
+{
+	unsigned int alen, blen;
+
+	/* A filename cannot end in '.' or we treat it like it has none */
+	alen = exfat_striptail_len(name);
+	blen = __exfat_striptail_len(len, str);
+	if (alen == blen) {
+		if (strncmp(name->name, str, alen) == 0)
+			return 0;
+	}
+	return 1;
+}
+
+/*
+ * Case insensitive compare of two exfat names.
+ */
+static int exfat_cmpi(const struct dentry *dentry, unsigned int len,
+		const char *str, const struct qstr *name)
+{
+	struct nls_table *t = EXFAT_SB(dentry->d_sb)->nls_io;
+	unsigned int alen, blen;
+
+	/* A filename cannot end in '.' or we treat it like it has none */
+	alen = exfat_striptail_len(name);
+	blen = __exfat_striptail_len(len, str);
+	if (alen == blen) {
+		if (nls_strnicmp(t, name->name, str, alen) == 0)
+			return 0;
+	}
+	return 1;
+}
+
+static int exfat_revalidate(struct dentry *dentry, unsigned int flags)
+{
+	if (flags & LOOKUP_RCU)
+		return -ECHILD;
+
+	return __exfat_revalidate(dentry);
+}
+
+static int exfat_revalidate_ci(struct dentry *dentry, unsigned int flags)
+{
+	if (flags & LOOKUP_RCU)
+		return -ECHILD;
+
+	return __exfat_revalidate_ci(dentry, flags);
+}
+
+static const struct dentry_operations exfat_dentry_ops = {
+	.d_revalidate   = exfat_revalidate,
+	.d_hash         = exfat_d_hash,
+	.d_compare      = exfat_cmp,
+};
+
+static const struct dentry_operations exfat_ci_dentry_ops = {
+	.d_revalidate   = exfat_revalidate_ci,
+	.d_hash         = exfat_d_hashi,
+	.d_compare      = exfat_cmpi,
+};
+
+static int exfat_file_mmap(struct file *file, struct vm_area_struct *vm_struct)
+{
+	return generic_file_mmap(file, vm_struct);
+}
+
+static int exfat_ioctl_volume_id(struct inode *dir)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(dir->i_sb);
+	FS_INFO_T *fsi = &(sbi->fsi);
+
+	return fsi->vol_id;
+}
+
+static int exfat_dbg_ioctl(struct inode *inode, struct file *filp,
+					unsigned int cmd, unsigned long arg)
+{
+#ifdef CONFIG_EXFAT_DBG_IOCTL
+	struct super_block *sb = inode->i_sb;
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	unsigned int flags;
+
+	switch (cmd) {
+	case EXFAT_IOC_GET_DEBUGFLAGS:
+		flags = sbi->debug_flags;
+		return put_user(flags, (int __user *)arg);
+	case EXFAT_IOC_SET_DEBUGFLAGS:
+		flags = 0;
+		if (!capable(CAP_SYS_ADMIN))
+			return -EPERM;
+
+		if (get_user(flags, (int __user *) arg))
+			return -EFAULT;
+
+		__lock_super(sb);
+		sbi->debug_flags = flags;
+		__unlock_super(sb);
+		return 0;
+	case EXFAT_IOCTL_PANIC:
+		panic("ioctl panic for test");
+
+		/* COULD NOT REACH HEAR */
+		return 0;
+	}
+#endif /* CONFIG_EXFAT_DBG_IOCTL */
+	return -ENOTTY;
+}
+
+static long exfat_generic_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
+{
+	struct inode *inode = file_inode(filp);
+
+	if (cmd == EXFAT_IOCTL_GET_VOLUME_ID)
+		return exfat_ioctl_volume_id(inode);
+
+	return exfat_dbg_ioctl(inode, filp, cmd, arg);
+}
+
+static void exfat_writepage_end_io(struct bio *bio)
+{
+	struct page *page = bio->bi_io_vec->bv_page;
+	struct super_block *sb = page->mapping->host->i_sb;
+	int err = blk_status_to_errno(bio->bi_status);
+
+	ASSERT(bio->bi_vcnt == 1); /* Single page endio */
+	ASSERT(bio_data_dir(bio)); /* Write */
+
+	if (err) {
+		SetPageError(page);
+		mapping_set_error(page->mapping, err);
+	}
+
+#ifdef CONFIG_EXFAT_TRACE_IO
+	{
+		//struct exfat_sb_info *sbi = EXFAT_SB(bio->bi_bdev->bd_super);
+		struct exfat_sb_info *sbi = EXFAT_SB(sb);
+
+		sbi->stat_n_pages_written++;
+		if (page->mapping->host == sb->s_bdev->bd_inode)
+			sbi->stat_n_bdev_pages_written++;
+
+		/* 4 MB = 1024 pages => 0.4 sec (approx.)
+		 * 32 KB =  64 pages => 0.025 sec
+		 * Min. average latency b/w msgs. ~= 0.025 sec
+		 */
+		if ((sbi->stat_n_pages_written & 63) == 0) {
+			DMSG("STAT:%u, %u, %u, %u (Sector #: %u)\n",
+			sbi->stat_n_pages_added, sbi->stat_n_pages_written,
+			sbi->stat_n_bdev_pages_witten,
+			sbi->stat_n_pages_confused,
+			(unsigned int)bio->bi_iter.bi_sector);
+		}
+	}
+#endif
+	end_page_writeback(page);
+	bio_put(bio);
+
+	// Update trace info.
+	atomic_dec(&EXFAT_SB(sb)->stat_n_pages_queued);
+}
+
+static const struct file_operations exfat_dir_operations = {
+	.llseek     = generic_file_llseek,
+	.read       = generic_read_dir,
+	.iterate    = exfat_iterate,
+	.fsync      = generic_file_fsync,
+	.unlocked_ioctl = exfat_generic_ioctl,
+};
+
+/* create a file */
+static s32 __exfat_create(struct inode *inode, u8 *path, u8 mode, FILE_ID_T *fid)
+{
+	s32 err;
+	struct super_block *sb = inode->i_sb;
+
+	/* check the validity of pointer parameters */
+	ASSERT(fid && path);
+
+	if (unlikely(!strlen(path)))
+		return -EINVAL;
+
+	mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+	err = exfat_fscore_create(inode, path, mode, fid);
+	mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+	return err;
+}
+
+static int exfat_create(struct inode *dir, struct dentry *dentry, umode_t mode,
+			 bool excl)
+{
+	struct super_block *sb = dir->i_sb;
+	struct inode *inode;
+	FILE_ID_T fid;
+	loff_t i_pos;
+	int err;
+
+	__lock_super(sb);
+
+	err = __exfat_create(dir, (u8 *) dentry->d_name.name, FM_REGULAR, &fid);
+	if (err)
+		goto out;
+
+	__lock_d_revalidate(dentry);
+
+	inode_inc_iversion(dir);
+	dir->i_ctime = dir->i_mtime = dir->i_atime = current_time(dir);
+	if (IS_DIRSYNC(dir))
+		(void) exfat_sync_inode(dir);
+	else
+		mark_inode_dirty(dir);
+
+	i_pos = exfat_make_i_pos(&fid);
+	inode = exfat_build_inode(sb, &fid, i_pos);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		goto out;
+	}
+	inode_inc_iversion(inode);
+	inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
+	/* timestamp is already written, so mark_inode_dirty() is unneeded. */
+
+	d_instantiate(dentry, inode);
+out:
+	__unlock_d_revalidate(dentry);
+	__unlock_super(sb);
+
+	return err;
+}
+
+
+static int exfat_find(struct inode *dir, struct qstr *qname, FILE_ID_T *fid)
+{
+	struct super_block *sb = dir->i_sb;
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	u8 *path = (u8 *)qname->name;
+	int err;
+
+	if (qname->len == 0)
+		return -ENOENT;
+
+	/* check the validity of pointer parameters */
+	ASSERT(fid && path);
+
+	if (unlikely(!strlen(path)))
+		return -EINVAL;
+
+	mutex_lock(&(sbi->s_vlock));
+	err = exfat_fscore_lookup(dir, path, fid);
+	mutex_unlock(&(sbi->s_vlock));
+	if (err)
+		return -ENOENT;
+
+	return 0;
+}
+
+static int exfat_d_anon_disconn(struct dentry *dentry)
+{
+	return IS_ROOT(dentry) && (dentry->d_flags & DCACHE_DISCONNECTED);
+}
+
+static struct dentry *exfat_lookup(struct inode *dir, struct dentry *dentry,
+						   unsigned int flags)
+{
+	struct super_block *sb = dir->i_sb;
+	struct inode *inode;
+	struct dentry *alias;
+	int err;
+	FILE_ID_T fid;
+	loff_t i_pos;
+	u64 ret;
+	mode_t i_mode;
+
+	__lock_super(sb);
+	err = exfat_find(dir, &dentry->d_name, &fid);
+	if (err) {
+		if (err == -ENOENT) {
+			inode = NULL;
+			goto out;
+		}
+		goto error;
+	}
+
+	i_pos = exfat_make_i_pos(&fid);
+	inode = exfat_build_inode(sb, &fid, i_pos);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		goto error;
+	}
+
+	i_mode = inode->i_mode;
+	if (S_ISLNK(i_mode) && !EXFAT_I(inode)->target) {
+		EXFAT_I(inode)->target = kmalloc((i_size_read(inode)+1), GFP_KERNEL);
+		if (!EXFAT_I(inode)->target) {
+			err = -ENOMEM;
+			goto error;
+		}
+		exfat_read_link(dir, &fid, EXFAT_I(inode)->target, i_size_read(inode), &ret);
+		*(EXFAT_I(inode)->target + i_size_read(inode)) = '\0';
+	}
+
+	alias = d_find_alias(inode);
+
+	/*
+	 * Checking "alias->d_parent == dentry->d_parent" to make sure
+	 * FS is not corrupted (especially double linked dir).
+	 */
+	if (alias && alias->d_parent == dentry->d_parent &&
+	    !exfat_d_anon_disconn(alias)) {
+
+		/*
+		 * Unhashed alias is able to exist because of revalidate()
+		 * called by lookup_fast. You can easily make this status
+		 * by calling create and lookup concurrently
+		 * In such case, we reuse an alias instead of new dentry
+		 */
+		if (d_unhashed(alias)) {
+			exfat_msg(sb, KERN_INFO, "rehashed a dentry(%p) "
+				"in read lookup", alias);
+			d_drop(dentry);
+			d_rehash(alias);
+		} else if (!S_ISDIR(i_mode)) {
+			/*
+			 * This inode has non anonymous-DCACHE_DISCONNECTED
+			 * dentry. This means, the user did ->lookup() by an
+			 * another name (longname vs 8.3 alias of it) in past.
+			 *
+			 * Switch to new one for reason of locality if possible.
+			 */
+			d_move(alias, dentry);
+		}
+		iput(inode);
+		__unlock_super(sb);
+		return alias;
+	}
+	dput(alias);
+out:
+	/* initialize d_time even though it is positive dentry */
+	dentry->d_time = inode_peek_iversion_raw(dir);
+	__unlock_super(sb);
+
+	dentry = d_splice_alias(inode, dentry);
+
+	return dentry;
+
+error:
+	__unlock_super(sb);
+	return ERR_PTR(err);
+}
+
+
+static int exfat_unlink(struct inode *dir, struct dentry *dentry)
+{
+	struct inode *inode = dentry->d_inode;
+	struct super_block *sb = dir->i_sb;
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	FILE_ID_T *fid = &(EXFAT_I(inode)->fid);
+	int err;
+
+	__lock_super(sb);
+
+	EXFAT_I(inode)->fid.size = i_size_read(inode);
+
+	/* check the validity of pointer parameters */
+	ASSERT(fid);
+
+	mutex_lock(&(sbi->s_vlock));
+	err = exfat_fscore_unlink(dir, fid);
+	mutex_unlock(&(sbi->s_vlock));
+	if (err)
+		goto out;
+
+	__lock_d_revalidate(dentry);
+
+	inode_inc_iversion(dir);
+	dir->i_mtime = dir->i_atime = current_time(dir);
+	if (IS_DIRSYNC(dir))
+		(void) exfat_sync_inode(dir);
+	else
+		mark_inode_dirty(dir);
+
+	clear_nlink(inode);
+	inode->i_mtime = inode->i_atime = current_time(inode);
+	exfat_detach(inode);
+	dentry->d_time = inode_peek_iversion_raw(dir);
+out:
+	__unlock_d_revalidate(dentry);
+	__unlock_super(sb);
+	return err;
+}
+
+static int exfat_symlink(struct inode *dir, struct dentry *dentry, const char *target)
+{
+	struct super_block *sb = dir->i_sb;
+	struct inode *inode;
+	FILE_ID_T fid;
+	loff_t i_pos;
+	int err;
+	u64 len = (u64) strlen(target);
+	u64 ret;
+
+	/* symlink option check */
+	if (!EXFAT_SB(sb)->options.symlink)
+		return -ENOTSUPP;
+
+	__lock_super(sb);
+
+	err = __exfat_create(dir, (u8 *) dentry->d_name.name, FM_SYMLINK, &fid);
+	if (err)
+		goto out;
+
+	err = exfat_write_link(dir, &fid, (char *) target, len, &ret);
+
+	if (err) {
+		exfat_remove(dir, &fid);
+		goto out;
+	}
+
+	__lock_d_revalidate(dentry);
+
+	inode_inc_iversion(dir);
+	dir->i_ctime = dir->i_mtime = dir->i_atime = current_time(dir);
+	if (IS_DIRSYNC(dir))
+		(void) exfat_sync_inode(dir);
+	else
+		mark_inode_dirty(dir);
+
+	i_pos = exfat_make_i_pos(&fid);
+	inode = exfat_build_inode(sb, &fid, i_pos);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		goto out;
+	}
+	inode_inc_iversion(inode);
+	inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
+	/* timestamp is already written, so mark_inode_dirty() is unneeded. */
+
+	EXFAT_I(inode)->target = kmemdup(target, len + 1, GFP_KERNEL);
+	if (!EXFAT_I(inode)->target) {
+		err = -ENOMEM;
+		goto out;
+	}
+
+	d_instantiate(dentry, inode);
+out:
+	__unlock_d_revalidate(dentry);
+	__unlock_super(sb);
+	return err;
+}
+
+static int exfat_mkdir(struct inode *dir, struct dentry *dentry, umode_t mode)
+{
+	struct super_block *sb = dir->i_sb;
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	struct inode *inode;
+	FILE_ID_T fid;
+	loff_t i_pos;
+	u8 *path;
+	int err;
+
+	__lock_super(sb);
+
+	path = (u8 *) dentry->d_name.name;
+
+	/* check the validity of pointer parameters */
+	ASSERT(path);
+
+	if (unlikely(!strlen(path))) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	mutex_lock(&(sbi->s_vlock));
+	err = exfat_fscore_mkdir(dir, path, &fid);
+	mutex_unlock(&(sbi->s_vlock));
+	if (err)
+		goto out;
+
+	__lock_d_revalidate(dentry);
+
+	inode_inc_iversion(dir);
+	dir->i_ctime = dir->i_mtime = dir->i_atime = current_time(dir);
+	if (IS_DIRSYNC(dir))
+		(void) exfat_sync_inode(dir);
+	else
+		mark_inode_dirty(dir);
+	inc_nlink(dir);
+
+	i_pos = exfat_make_i_pos(&fid);
+	inode = exfat_build_inode(sb, &fid, i_pos);
+	if (IS_ERR(inode)) {
+		err = PTR_ERR(inode);
+		goto out;
+	}
+	inode_inc_iversion(inode);
+	inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
+	/* timestamp is already written, so mark_inode_dirty() is unneeded. */
+
+	d_instantiate(dentry, inode);
+
+out:
+	__unlock_d_revalidate(dentry);
+	__unlock_super(sb);
+
+	return err;
+}
+
+
+static int exfat_rmdir(struct inode *dir, struct dentry *dentry)
+{
+	struct inode *inode = dentry->d_inode;
+	struct super_block *sb = dir->i_sb;
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	FILE_ID_T *fid = &(EXFAT_I(inode)->fid);
+	int err;
+
+	__lock_super(sb);
+
+	EXFAT_I(inode)->fid.size = i_size_read(inode);
+
+	/* check the validity of pointer parameters */
+	ASSERT(fid);
+
+	mutex_lock(&(sbi->s_vlock));
+	err = exfat_fscore_rmdir(inode, fid);
+	mutex_unlock(&(sbi->s_vlock));
+	if (err)
+		goto out;
+
+	__lock_d_revalidate(dentry);
+
+	inode_inc_iversion(dir);
+	dir->i_mtime = dir->i_atime = current_time(dir);
+	if (IS_DIRSYNC(dir))
+		(void) exfat_sync_inode(dir);
+	else
+		mark_inode_dirty(dir);
+	drop_nlink(dir);
+
+	clear_nlink(inode);
+	inode->i_mtime = inode->i_atime = current_time(inode);
+	exfat_detach(inode);
+	dentry->d_time = inode_peek_iversion_raw(dir);
+out:
+	__unlock_d_revalidate(dentry);
+	__unlock_super(sb);
+	return err;
+}
+
+static int exfat_cont_expand(struct inode *inode, loff_t size)
+{
+	struct address_space *mapping = inode->i_mapping;
+	loff_t start = i_size_read(inode), count = size - i_size_read(inode);
+	int err, err2;
+
+	err = generic_cont_expand_simple(inode, size);
+	if (err)
+		return err;
+
+	inode->i_ctime = inode->i_mtime = current_time(inode);
+	mark_inode_dirty(inode);
+
+	if (!IS_SYNC(inode))
+		return 0;
+
+	err = filemap_fdatawrite_range(mapping, start, start + count - 1);
+	err2 = sync_mapping_buffers(mapping);
+	err = (err)?(err):(err2);
+	err2 = write_inode_now(inode, 1);
+	err = (err)?(err):(err2);
+	if (err)
+		return err;
+
+	return filemap_fdatawait_range(mapping, start, start + count - 1);
+}
+
+static int exfat_allow_set_time(struct exfat_sb_info *sbi, struct inode *inode)
+{
+	mode_t allow_utime = sbi->options.allow_utime;
+
+	if (!uid_eq(current_fsuid(), inode->i_uid)) {
+		if (in_group_p(inode->i_gid))
+			allow_utime >>= 3;
+		if (allow_utime & MAY_WRITE)
+			return 1;
+	}
+
+	/* use a default check */
+	return 0;
+}
+
+static int exfat_sanitize_mode(const struct exfat_sb_info *sbi,
+				   struct inode *inode, umode_t *mode_ptr)
+{
+	mode_t i_mode, mask, perm;
+
+	i_mode = inode->i_mode;
+
+	if (S_ISREG(i_mode) || S_ISLNK(i_mode))
+		mask = sbi->options.fs_fmask;
+	else
+		mask = sbi->options.fs_dmask;
+
+	perm = *mode_ptr & ~(S_IFMT | mask);
+
+	/* Of the r and x bits, all (subject to umask) must be present.*/
+	if ((perm & (S_IRUGO | S_IXUGO)) != (i_mode & (S_IRUGO | S_IXUGO)))
+		return -EPERM;
+
+	if (exfat_mode_can_hold_ro(inode)) {
+		/* Of the w bits, either all (subject to umask) or none must be present. */
+		if ((perm & S_IWUGO) && ((perm & S_IWUGO) != (S_IWUGO & ~mask)))
+			return -EPERM;
+	} else {
+		/* If exfat_mode_can_hold_ro(inode) is false, can't change w bits. */
+		if ((perm & S_IWUGO) != (S_IWUGO & ~mask))
+			return -EPERM;
+	}
+
+	*mode_ptr &= S_IFMT | perm;
+
+	return 0;
+}
+
+static int exfat_setattr(struct dentry *dentry, struct iattr *attr)
+{
+
+	struct exfat_sb_info *sbi = EXFAT_SB(dentry->d_sb);
+	struct inode *inode = dentry->d_inode;
+	unsigned int ia_valid;
+	int error;
+	loff_t old_size;
+
+	if ((attr->ia_valid & ATTR_SIZE)
+		&& (attr->ia_size > i_size_read(inode))) {
+		error = exfat_cont_expand(inode, attr->ia_size);
+		if (error || attr->ia_valid == ATTR_SIZE)
+			return error;
+		attr->ia_valid &= ~ATTR_SIZE;
+	}
+
+	/* Check for setting the inode time. */
+	ia_valid = attr->ia_valid;
+	if ((ia_valid & (ATTR_MTIME_SET | ATTR_ATIME_SET | ATTR_TIMES_SET))
+		&& exfat_allow_set_time(sbi, inode)) {
+		attr->ia_valid &= ~(ATTR_MTIME_SET | ATTR_ATIME_SET | ATTR_TIMES_SET);
+	}
+
+	error = setattr_prepare(dentry, attr);
+	attr->ia_valid = ia_valid;
+	if (error)
+		return error;
+
+	if (((attr->ia_valid & ATTR_UID) &&
+		 (!uid_eq(attr->ia_uid, sbi->options.fs_uid))) ||
+		((attr->ia_valid & ATTR_GID) &&
+		 (!gid_eq(attr->ia_gid, sbi->options.fs_gid))) ||
+		((attr->ia_valid & ATTR_MODE) &&
+		 (attr->ia_mode & ~(S_IFREG | S_IFLNK | S_IFDIR | S_IRWXUGO)))) {
+		return -EPERM;
+	}
+
+	/*
+	 * We don't return -EPERM here. Yes, strange, but this is too
+	 * old behavior.
+	 */
+	if (attr->ia_valid & ATTR_MODE) {
+		if (exfat_sanitize_mode(sbi, inode, &attr->ia_mode) < 0)
+			attr->ia_valid &= ~ATTR_MODE;
+	}
+
+	EXFAT_I(inode)->fid.size = i_size_read(inode);
+
+	/* patch 1.2.0 : fixed the problem of size mismatch. */
+	if (attr->ia_valid & ATTR_SIZE) {
+		old_size = i_size_read(inode);
+
+		/* TO CHECK evicting directory works correctly */
+		MMSG("%s: inode(%p) truncate size (%llu->%llu)\n", __func__,
+			inode, (u64)old_size, (u64)attr->ia_size);
+		__exfat_do_truncate(inode, old_size, attr->ia_size);
+	}
+	setattr_copy(inode, attr);
+	mark_inode_dirty(inode);
+
+	return error;
+}
+
+static const struct inode_operations exfat_dir_inode_operations = {
+	.create        = exfat_create,
+	.lookup        = exfat_lookup,
+	.unlink        = exfat_unlink,
+	.symlink       = exfat_symlink,
+	.mkdir         = exfat_mkdir,
+	.rmdir         = exfat_rmdir,
+	.rename        = exfat_rename,
+	.setattr       = exfat_setattr,
+	.getattr       = exfat_getattr,
+#ifdef CONFIG_EXFAT_VIRTUAL_XATTR
+	.listxattr      = exfat_listxattr,
+#endif
+};
+
+static const struct inode_operations exfat_symlink_inode_operations = {
+	.get_link = exfat_follow_link,
+#ifdef CONFIG_EXFAT_VIRTUAL_XATTR
+	.listxattr      = exfat_listxattr,
+#endif
+};
+
+static int exfat_file_release(struct inode *inode, struct file *filp)
+{
+	struct super_block *sb = inode->i_sb;
+
+	/* Moved below code from exfat_write_inode
+	 * TO FIX size-mismatch problem.
+	 */
+	/* FIXME : Added bug_on to confirm that there is no size mismatch */
+	exfat_debug_bug_on(EXFAT_I(inode)->fid.size != i_size_read(inode));
+	EXFAT_I(inode)->fid.size = i_size_read(inode);
+	__exfat_sync_fs(sb, 0);
+	return 0;
+}
+
+static const struct file_operations exfat_file_operations = {
+	.llseek      = generic_file_llseek,
+	.read_iter   = generic_file_read_iter,
+	.write_iter  = generic_file_write_iter,
+	.mmap        = exfat_file_mmap,
+	.release     = exfat_file_release,
+	.unlocked_ioctl  = exfat_generic_ioctl,
+	.fsync       = generic_file_fsync,
+	.splice_read = generic_file_splice_read,
+};
+
+static const struct address_space_operations exfat_aops;
+
+/* resize the file length */
+static s32 __exfat_truncate(struct inode *inode, u64 old_size, u64 new_size)
+{
+	s32 err;
+	struct super_block *sb = inode->i_sb;
+
+	mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+	err = exfat_fscore_truncate(inode, old_size, new_size);
+	mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+	return err;
+}
+
+static void exfat_truncate(struct inode *inode, loff_t old_size)
+{
+	struct super_block *sb = inode->i_sb;
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	FS_INFO_T *fsi = &(sbi->fsi);
+	unsigned int blocksize = 1 << inode->i_blkbits;
+	loff_t aligned_size;
+	int err;
+
+	__lock_super(sb);
+
+	if (EXFAT_I(inode)->fid.start_clu == 0) {
+		/* Stange statement:
+		 * Empty start_clu != ~0 (not allocated)
+		 */
+		exfat_fs_error(sb, "tried to truncate zeroed cluster.");
+		goto out;
+	}
+
+	exfat_debug_check_clusters(inode);
+
+	err = __exfat_truncate(inode, old_size, i_size_read(inode));
+	if (err)
+		goto out;
+
+	inode->i_ctime = inode->i_mtime = current_time(inode);
+	if (IS_DIRSYNC(inode))
+		(void) exfat_sync_inode(inode);
+	else
+		mark_inode_dirty(inode);
+
+	// FIXME: Please check
+	// inode->i_blocks = ((EXFAT_I(inode)->i_size_ondisk + (fsi->cluster_size - 1))
+	inode->i_blocks = ((i_size_read(inode) + (fsi->cluster_size - 1)) &
+			~((loff_t)fsi->cluster_size - 1)) >> inode->i_blkbits;
+out:
+	/*
+	 * This protects against truncating a file bigger than it was then
+	 * trying to write into the hole.
+	 *
+	 * comment by sh.hong:
+	 * This seems to mean 'intra page/block' truncate and writing.
+	 * I couldn't find a reason to change the values prior to __exfat_truncate
+	 * Therefore, I switched the order of operations
+	 * so that it's possible to utilize i_size_ondisk in __exfat_truncate
+	 */
+
+	aligned_size = i_size_read(inode);
+	if (aligned_size & (blocksize - 1)) {
+		aligned_size |= (blocksize - 1);
+		aligned_size++;
+	}
+
+	if (EXFAT_I(inode)->i_size_ondisk > i_size_read(inode))
+		EXFAT_I(inode)->i_size_ondisk = aligned_size;
+
+	exfat_debug_check_clusters(inode);
+
+	if (EXFAT_I(inode)->i_size_aligned > i_size_read(inode))
+		EXFAT_I(inode)->i_size_aligned = aligned_size;
+
+	/* After truncation :
+	 * 1) Delayed allocation is OFF
+	 *    i_size = i_size_ondisk <= i_size_aligned
+	 *    (useless size var.)
+	 *    (block-aligned)
+	 * 2) Delayed allocation is ON
+	 *    i_size = i_size_ondisk = i_size_aligned
+	 *    (will be block-aligned after write)
+	 *    or
+	 *    i_size_ondisk < i_size <= i_size_aligned (block_aligned)
+	 *    (will be block-aligned after write)
+	 */
+
+	__unlock_super(sb);
+}
+
+static const struct inode_operations exfat_file_inode_operations = {
+	.setattr     = exfat_setattr,
+	.getattr     = exfat_getattr,
+#ifdef CONFIG_EXFAT_VIRTUAL_XATTR
+	.listxattr      = exfat_listxattr,
+#endif
+};
+
+/* 2-level option flag */
+#define BMAP_NOT_CREATE				0
+#define BMAP_ADD_BLOCK				1
+#define BMAP_ADD_CLUSTER			2
+#define BLOCK_ADDED(bmap_ops)	(bmap_ops)
+static int exfat_bmap(struct inode *inode, sector_t sector, sector_t *phys,
+				  unsigned long *mapped_blocks, int *create)
+{
+	struct super_block *sb = inode->i_sb;
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	FS_INFO_T *fsi = &(sbi->fsi);
+	const unsigned long blocksize = sb->s_blocksize;
+	const unsigned char blocksize_bits = sb->s_blocksize_bits;
+	sector_t last_block;
+	unsigned int cluster, clu_offset, sec_offset;
+	int err = 0;
+
+	*phys = 0;
+	*mapped_blocks = 0;
+
+	/* core code should handle EIO */
+#if 0
+	if (fsi->prev_eio && BLOCK_ADDED(*create))
+		return -EIO;
+#endif
+
+	last_block = (i_size_read(inode) + (blocksize - 1)) >> blocksize_bits;
+	if ((sector >= last_block) && (*create == BMAP_NOT_CREATE))
+		return 0;
+
+	/* Is this block already allocated? */
+	clu_offset = sector >> fsi->sect_per_clus_bits;  /* cluster offset */
+
+	EXFAT_I(inode)->fid.size = i_size_read(inode);
+
+	if (*create & BMAP_ADD_CLUSTER)
+		err = exfat_map_clus(inode, clu_offset, &cluster, 1);
+	else
+		err = exfat_map_clus(inode, clu_offset, &cluster, ALLOC_NOWHERE);
+
+	if (err) {
+		if (err != -ENOSPC)
+			return -EIO;
+		return err;
+	}
+
+	if (!IS_CLUS_EOF(cluster)) {
+		/* sector offset in cluster */
+		sec_offset = sector & (fsi->sect_per_clus - 1);
+
+		*phys = CLUS_TO_SECT(fsi, cluster) + sec_offset;
+		*mapped_blocks = fsi->sect_per_clus - sec_offset;
+	}
+#if 0
+	else {
+		/* Debug purpose (new clu needed) */
+		ASSERT((*create & BMAP_ADD_CLUSTER) == 0);
+		ASSERT(sector >= last_block);
+	}
+#endif
+
+	if (sector < last_block)
+		*create = BMAP_NOT_CREATE;
+#if 0
+	else if (sector >= last_block)
+		*create = non-zero;
+
+	if (iblock <= last mapped-block)
+		*phys != 0
+		*create = BMAP_NOT_CREATE
+	else if (iblock <= last cluster)
+		*phys != 0
+		*create = non-zero
+#endif
+	return 0;
+}
+
+static int exfat_get_block(struct inode *inode, sector_t iblock,
+				   struct buffer_head *bh_result, int create)
+{
+	struct super_block *sb = inode->i_sb;
+	unsigned long max_blocks = bh_result->b_size >> inode->i_blkbits;
+	int err = 0;
+	unsigned long mapped_blocks;
+	sector_t phys;
+	loff_t pos;
+	int bmap_create = create ? BMAP_ADD_CLUSTER : BMAP_NOT_CREATE;
+
+	__lock_super(sb);
+	err = exfat_bmap(inode, iblock, &phys, &mapped_blocks, &bmap_create);
+	if (err) {
+		if (err != -ENOSPC)
+			exfat_fs_error_ratelimit(sb, "%s: failed to bmap "
+					"(inode:%p iblock:%u, err:%d)",
+					__func__, inode, (u32)iblock, err);
+		goto unlock_ret;
+	}
+
+	if (phys) {
+		max_blocks = min(mapped_blocks, max_blocks);
+
+		/* Treat newly added block / cluster */
+		if (BLOCK_ADDED(bmap_create) || buffer_delay(bh_result)) {
+
+			/* Update i_size_ondisk */
+			pos = (iblock + 1) << sb->s_blocksize_bits;
+			if (EXFAT_I(inode)->i_size_ondisk < pos) {
+				/* Debug purpose */
+				if ((pos - EXFAT_I(inode)->i_size_ondisk) > bh_result->b_size) {
+					/* This never happens without DA */
+					MMSG("Jumping get_block\n");
+				}
+
+				EXFAT_I(inode)->i_size_ondisk = pos;
+				exfat_debug_check_clusters(inode);
+			}
+
+			if (BLOCK_ADDED(bmap_create)) {
+				/* Old way (w/o DA)
+				 * create == 1 only if iblock > i_size
+				 * (in block unit)
+				 */
+
+				/* 20130723 CHECK
+				 * If happened concurrently with truncation,
+				 * buffer_delay() can be left on whilst
+				 * i_size < (position of i_block).
+				 *
+				 * It's not a big deal as we're re-writing
+				 * previously allocated blocks, but in such cases,
+				 * it has to be an area with i_size_aligned expanded
+				 * beforehand.
+				 */
+
+				/* FOR GRACEFUL ERROR HANDLING */
+				if (buffer_delay(bh_result) &&
+					(pos > EXFAT_I(inode)->i_size_aligned)) {
+					exfat_fs_error(sb, "requested for bmap "
+						"out of range(pos:(%llu)>i_size_aligned(%llu)\n",
+						pos, EXFAT_I(inode)->i_size_aligned);
+					exfat_debug_bug_on(1);
+					err = -EIO;
+					goto unlock_ret;
+				}
+				set_buffer_new(bh_result);
+
+				/*
+				 * adjust i_size_aligned if i_size_ondisk is
+				 * bigger than it. (i.e. non-DA)
+				 */
+				if (EXFAT_I(inode)->i_size_ondisk >
+					EXFAT_I(inode)->i_size_aligned) {
+					EXFAT_I(inode)->i_size_aligned =
+						EXFAT_I(inode)->i_size_ondisk;
+				}
+			}
+
+			if (buffer_delay(bh_result))
+				clear_buffer_delay(bh_result);
+
+#if 0
+			/* Debug purpose */
+			if (EXFAT_I(inode)->i_size_ondisk >
+					EXFAT_I(inode)->i_size_aligned) {
+				/* Only after truncate
+				 * and the two size variables should indicate
+				 * same i_block
+				 */
+				unsigned int blocksize = 1 << inode->i_blkbits;
+				BUG_ON(EXFAT_I(inode)->i_size_ondisk -
+					EXFAT_I(inode)->i_size_aligned >= blocksize);
+			}
+#endif
+		}
+		map_bh(bh_result, sb, phys);
+	}
+
+	bh_result->b_size = max_blocks << sb->s_blocksize_bits;
+unlock_ret:
+	__unlock_super(sb);
+	return err;
+}
+
+static int exfat_readpage(struct file *file, struct page *page)
+{
+	int ret;
+
+	ret =  mpage_readpage(page, exfat_get_block);
+	return ret;
+}
+
+static int exfat_readpages(struct file *file, struct address_space *mapping,
+			   struct list_head *pages, unsigned int nr_pages)
+{
+	int ret;
+
+	ret =  mpage_readpages(mapping, pages, nr_pages, exfat_get_block);
+	return ret;
+}
+
+static inline void exfat_submit_fullpage_bio(struct block_device *bdev,
+			sector_t sector, unsigned int length, struct page *page)
+{
+	/* Single page bio submit */
+	struct bio *bio;
+	struct bvec_iter *iter;
+
+	BUG_ON((length > PAGE_SIZE) || (length == 0));
+
+	/*
+	 * If __GFP_WAIT is set, then bio_alloc will always be able to allocate
+	 * a bio. This is due to the mempool guarantees. To make this work, callers
+	 * must never allocate more than 1 bio at a time from this pool.
+	 *
+	 * #define GFP_NOIO	(__GFP_WAIT)
+	 */
+	bio = bio_alloc(GFP_NOIO, 1);
+
+	bio_set_dev(bio, bdev);
+	bio->bi_vcnt = 1;
+	bio->bi_io_vec[0].bv_page = page;	/* Inline vec */
+	bio->bi_io_vec[0].bv_len = length;	/* PAGE_SIZE */
+	bio->bi_io_vec[0].bv_offset = 0;
+
+	iter = &(bio->bi_iter);
+	iter->bi_sector = sector;
+	iter->bi_size = length;
+	iter->bi_idx = 0;
+	iter->bi_bvec_done = 0;
+
+	bio->bi_end_io = exfat_writepage_end_io;
+	bio_set_op_attrs(bio, REQ_OP_WRITE, 0);
+	submit_bio(bio);
+}
+
+static int exfat_writepage(struct page *page, struct writeback_control *wbc)
+{
+	struct inode * const inode = page->mapping->host;
+	struct super_block *sb = inode->i_sb;
+	loff_t i_size = i_size_read(inode);
+	const pgoff_t end_index = i_size >> PAGE_SHIFT;
+	const unsigned int blocks_per_page = PAGE_SIZE >> inode->i_blkbits;
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	struct buffer_head *bh, *head;
+	sector_t block, block_0, last_phys;
+	int ret;
+	unsigned int nr_blocks_towrite = blocks_per_page;
+
+	/* Don't distinguish 0-filled/clean block.
+	 * Just write back the whole page
+	 */
+	if (fsi->cluster_size < PAGE_SIZE)
+		goto confused;
+
+	if (!PageUptodate(page)) {
+		MMSG("%s: Not up-to-date page -> block_write_full_page\n",
+				__func__);
+		goto confused;
+	}
+
+	if (page->index >= end_index) {
+		/* last page or outside i_size */
+		unsigned int offset = i_size & (PAGE_SIZE-1);
+
+		/* If a truncation is in progress */
+		if (page->index > end_index || !offset)
+			goto confused;
+
+		/* 0-fill after i_size */
+		zero_user_segment(page, offset, PAGE_SIZE);
+	}
+
+	if (!page_has_buffers(page)) {
+		MMSG("WP: No buffers -> block_write_full_page\n");
+		goto confused;
+	}
+
+	block = (sector_t)page->index << (PAGE_SHIFT - inode->i_blkbits);
+	block_0 = block; /* first block */
+	head = page_buffers(page);
+	bh = head;
+
+	last_phys = 0;
+	do {
+		BUG_ON(buffer_locked(bh));
+
+		if (!buffer_dirty(bh) || !buffer_uptodate(bh)) {
+			if (nr_blocks_towrite == blocks_per_page)
+				nr_blocks_towrite = (unsigned int) (block - block_0);
+
+			BUG_ON(nr_blocks_towrite >= blocks_per_page);
+
+			// !uptodate but dirty??
+			if (buffer_dirty(bh))
+				goto confused;
+
+			// Nothing to writeback in this block
+			bh = bh->b_this_page;
+			block++;
+			continue;
+		}
+
+		if (nr_blocks_towrite != blocks_per_page)
+			// Dirty -> Non-dirty -> Dirty again case
+			goto confused;
+
+		/* Map if needed */
+		if (!buffer_mapped(bh) || buffer_delay(bh)) {
+			BUG_ON(bh->b_size != (1 << (inode->i_blkbits)));
+			ret = exfat_get_block(inode, block, bh, 1);
+			if (ret)
+				goto confused;
+
+			if (buffer_new(bh)) {
+				clear_buffer_new(bh);
+				clean_bdev_aliases(bh->b_bdev, bh->b_blocknr, 1);
+			}
+		}
+
+		/* continuity check */
+		if (((last_phys + 1) != bh->b_blocknr) && (last_phys != 0)) {
+			DMSG("Non-contiguous block mapping in single page");
+			goto confused;
+		}
+
+		last_phys = bh->b_blocknr;
+		bh = bh->b_this_page;
+		block++;
+	} while (bh != head);
+
+	if (nr_blocks_towrite == 0) {
+		DMSG("Page dirty but no dirty bh? alloc_208\n");
+		goto confused;
+	}
+
+
+	/* Write-back */
+	do {
+		clear_buffer_dirty(bh);
+		bh = bh->b_this_page;
+	} while (bh != head);
+
+	BUG_ON(PageWriteback(page));
+	set_page_writeback(page);
+
+	// Trace # of pages queued (Approx.)
+	atomic_inc(&EXFAT_SB(sb)->stat_n_pages_queued);
+
+	exfat_submit_fullpage_bio(head->b_bdev,
+		head->b_blocknr << (sb->s_blocksize_bits - SECTOR_SIZE_BITS),
+		nr_blocks_towrite << inode->i_blkbits,
+		page);
+
+	unlock_page(page);
+
+	return 0;
+
+confused:
+#ifdef CONFIG_EXFAT_TRACE_IO
+	EXFAT_SB(sb)->stat_n_pages_confused++;
+#endif
+	ret = block_write_full_page(page, exfat_get_block, wbc);
+	return ret;
+}
+
+static int exfat_writepages(struct address_space *mapping,
+				struct writeback_control *wbc)
+{
+	MMSG("%s(inode:%p) with nr_to_write = 0x%08lx "
+		"(ku %d, bg %d, tag %d, rc %d )\n",
+		__func__, mapping->host, wbc->nr_to_write,
+		wbc->for_kupdate, wbc->for_background, wbc->tagged_writepages,
+		wbc->for_reclaim);
+
+	ASSERT(mapping->a_ops == &exfat_aops);
+
+	return mpage_writepages(mapping, wbc, exfat_get_block);
+}
+
+static void exfat_write_failed(struct address_space *mapping, loff_t to)
+{
+	struct inode *inode = mapping->host;
+
+	if (to > i_size_read(inode)) {
+		truncate_pagecache(inode, i_size_read(inode));
+		exfat_truncate(inode, EXFAT_I(inode)->i_size_aligned);
+	}
+}
+
+static int exfat_check_writable(struct super_block *sb)
+{
+	if (exfat_fscore_check_bdi_valid(sb))
+		return -EIO;
+
+	if (EXFAT_IS_SB_RDONLY(sb))
+		return -EROFS;
+
+	return 0;
+}
+
+static int __exfat_write_begin(struct file *file, struct address_space *mapping,
+				 loff_t pos, unsigned int len,
+				 unsigned int flags, struct page **pagep,
+				 void **fsdata, get_block_t *get_block,
+				 loff_t *bytes, const char *fname)
+{
+	struct super_block *sb = mapping->host->i_sb;
+	int ret;
+
+	ret = exfat_check_writable(sb);
+	if (unlikely(ret < 0))
+		return ret;
+
+	*pagep = NULL;
+	ret = cont_write_begin(file, mapping, pos, len, flags, pagep, fsdata,
+					get_block, bytes);
+
+	if (ret < 0)
+		exfat_write_failed(mapping, pos+len);
+
+	return ret;
+}
+
+static int exfat_write_begin(struct file *file, struct address_space *mapping,
+				 loff_t pos, unsigned int len, unsigned int flags,
+				 struct page **pagep, void **fsdata)
+{
+	return __exfat_write_begin(file, mapping, pos, len, flags,
+				pagep, fsdata, exfat_get_block,
+				&EXFAT_I(mapping->host)->i_size_ondisk,
+				__func__);
+}
+
+static int exfat_write_end(struct file *file, struct address_space *mapping,
+				   loff_t pos, unsigned int len, unsigned int copied,
+				   struct page *pagep, void *fsdata)
+{
+	struct inode *inode = mapping->host;
+	FILE_ID_T *fid = &(EXFAT_I(inode)->fid);
+	int err;
+
+	err = generic_write_end(file, mapping, pos, len, copied, pagep, fsdata);
+
+	/* FOR GRACEFUL ERROR HANDLING */
+	if (EXFAT_I(inode)->i_size_aligned < i_size_read(inode)) {
+		exfat_fs_error(inode->i_sb, "invalid size(size(%llu) "
+			"> aligned(%llu)\n", i_size_read(inode),
+			EXFAT_I(inode)->i_size_aligned);
+		exfat_debug_bug_on(1);
+	}
+
+	if (err < len)
+		exfat_write_failed(mapping, pos+len);
+
+	if (!(err < 0) && !(fid->attr & ATTR_ARCHIVE)) {
+		inode->i_mtime = inode->i_ctime = current_time(inode);
+		fid->attr |= ATTR_ARCHIVE;
+		mark_inode_dirty(inode);
+	}
+
+	return err;
+}
+
+static ssize_t exfat_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
+{
+	struct file *file = iocb->ki_filp;
+	struct inode *inode = file->f_mapping->host;
+	size_t count = iov_iter_count(iter);
+	int rw = iov_iter_rw(iter);
+	struct address_space *mapping = inode->i_mapping;
+	loff_t size = iocb->ki_pos + count;
+	ssize_t ret;
+
+	if (rw == WRITE) {
+		/*
+		 * FIXME: blockdev_direct_IO() doesn't use ->write_begin(),
+		 * so we need to update the ->i_size_aligned to block boundary.
+		 *
+		 * But we must fill the remaining area or hole by nul for
+		 * updating ->i_size_aligned
+		 *
+		 * Return 0, and fallback to normal buffered write.
+		 */
+		if (EXFAT_I(inode)->i_size_aligned < size)
+			return 0;
+	}
+
+	/*
+	 * exFAT need to use the DIO_LOCKING for avoiding the race
+	 * condition of exfat_get_block() and ->truncate().
+	 */
+	ret = blockdev_direct_IO(iocb, inode, iter, exfat_get_block);
+	if (ret < 0 && (rw & WRITE))
+		exfat_write_failed(mapping, size);
+
+	return ret;
+}
+
+static const struct address_space_operations exfat_aops = {
+	.readpage    = exfat_readpage,
+	.readpages   = exfat_readpages,
+	.writepage   = exfat_writepage,
+	.writepages  = exfat_writepages,
+	.write_begin = exfat_write_begin,
+	.write_end   = exfat_write_end,
+	.direct_IO   = exfat_direct_IO,
+	.bmap        = exfat_aop_bmap
+};
+
+static inline unsigned long exfat_hash(loff_t i_pos)
+{
+	return hash_32(i_pos, EXFAT_HASH_BITS);
+}
+
+static void exfat_attach(struct inode *inode, loff_t i_pos)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);
+	struct hlist_head *head = sbi->inode_hashtable + exfat_hash(i_pos);
+
+	spin_lock(&sbi->inode_hash_lock);
+	EXFAT_I(inode)->i_pos = i_pos;
+	hlist_add_head(&EXFAT_I(inode)->i_hash_fat, head);
+	spin_unlock(&sbi->inode_hash_lock);
+}
+
+static void exfat_detach(struct inode *inode)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);
+
+	spin_lock(&sbi->inode_hash_lock);
+	hlist_del_init(&EXFAT_I(inode)->i_hash_fat);
+	EXFAT_I(inode)->i_pos = 0;
+	spin_unlock(&sbi->inode_hash_lock);
+}
+
+
+/* doesn't deal with root inode */
+static int exfat_fill_inode(struct inode *inode, const FILE_ID_T *fid)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(inode->i_sb);
+	FS_INFO_T *fsi = &(sbi->fsi);
+	DIR_ENTRY_T info;
+	u64 size = fid->size;
+
+	memcpy(&(EXFAT_I(inode)->fid), fid, sizeof(FILE_ID_T));
+
+	EXFAT_I(inode)->i_pos = 0;
+	EXFAT_I(inode)->target = NULL;
+	inode->i_uid = sbi->options.fs_uid;
+	inode->i_gid = sbi->options.fs_gid;
+	inode_inc_iversion(inode);
+	inode->i_generation = get_seconds();
+
+	if (exfat_read_inode(inode, &info) < 0) {
+		MMSG("%s: failed to read stat!\n", __func__);
+		return -EIO;
+	}
+
+	if (info.Attr & ATTR_SUBDIR) { /* directory */
+		inode->i_generation &= ~1;
+		inode->i_mode = exfat_make_mode(sbi, info.Attr, S_IRWXUGO);
+		inode->i_op = &exfat_dir_inode_operations;
+		inode->i_fop = &exfat_dir_operations;
+
+		set_nlink(inode, info.NumSubdirs);
+	} else if (info.Attr & ATTR_SYMLINK) { /* symbolic link */
+		inode->i_op = &exfat_symlink_inode_operations;
+		inode->i_generation |= 1;
+		inode->i_mode = exfat_make_mode(sbi, info.Attr, S_IRWXUGO);
+	} else { /* regular file */
+		inode->i_generation |= 1;
+		inode->i_mode = exfat_make_mode(sbi, info.Attr, S_IRWXUGO);
+		inode->i_op = &exfat_file_inode_operations;
+		inode->i_fop = &exfat_file_operations;
+		inode->i_mapping->a_ops = &exfat_aops;
+
+		inode->i_mapping->nrpages = 0;
+
+	}
+
+	/*
+	 * Use fid->size instead of info.Size
+	 * because info.Size means the value saved on disk
+	 */
+	i_size_write(inode, size);
+
+	/* ondisk and aligned size should be aligned with block size */
+	if (size & (inode->i_sb->s_blocksize - 1)) {
+		size |= (inode->i_sb->s_blocksize - 1);
+		size++;
+	}
+
+	EXFAT_I(inode)->i_size_aligned = size;
+	EXFAT_I(inode)->i_size_ondisk = size;
+	exfat_debug_check_clusters(inode);
+
+	exfat_save_attr(inode, info.Attr);
+
+	inode->i_blocks = ((i_size_read(inode) + (fsi->cluster_size - 1))
+		   & ~((loff_t)fsi->cluster_size - 1)) >> inode->i_blkbits;
+
+	exfat_time_fat2unix(sbi, &inode->i_mtime, &info.ModifyTimestamp);
+	exfat_time_fat2unix(sbi, &inode->i_ctime, &info.CreateTimestamp);
+	exfat_time_fat2unix(sbi, &inode->i_atime, &info.AccessTimestamp);
+
+	return 0;
+}
+
+static struct inode *exfat_build_inode(struct super_block *sb,
+				   const FILE_ID_T *fid, loff_t i_pos)
+{
+	struct inode *inode;
+	int err;
+
+	inode = exfat_iget(sb, i_pos);
+	if (inode)
+		goto out;
+	inode = new_inode(sb);
+	if (!inode) {
+		inode = ERR_PTR(-ENOMEM);
+		goto out;
+	}
+	inode->i_ino = iunique(sb, EXFAT_ROOT_INO);
+	inode_set_iversion(inode, 1);
+	err = exfat_fill_inode(inode, fid);
+	if (err) {
+		iput(inode);
+		inode = ERR_PTR(err);
+		goto out;
+	}
+	exfat_attach(inode, i_pos);
+	insert_inode_hash(inode);
+out:
+	return inode;
+}
+
+static struct inode *exfat_alloc_inode(struct super_block *sb)
+{
+	struct exfat_inode_info *ei;
+
+	ei = kmem_cache_alloc(exfat_inode_cachep, GFP_NOFS);
+	if (!ei)
+		return NULL;
+	init_rwsem(&ei->truncate_lock);
+
+	return &ei->vfs_inode;
+}
+
+static void exfat_destroy_inode(struct inode *inode)
+{
+	kfree(EXFAT_I(inode)->target);
+	EXFAT_I(inode)->target = NULL;
+
+	kmem_cache_free(exfat_inode_cachep, EXFAT_I(inode));
+}
+
+static int __exfat_write_inode(struct inode *inode, int sync)
+{
+	struct super_block *sb = inode->i_sb;
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	DIR_ENTRY_T info;
+	s32 err;
+
+	if (inode->i_ino == EXFAT_ROOT_INO)
+		return 0;
+
+	info.Attr = exfat_make_attr(inode);
+	info.Size = i_size_read(inode);
+
+	exfat_time_unix2fat(sbi, &inode->i_mtime, &info.ModifyTimestamp);
+	exfat_time_unix2fat(sbi, &inode->i_ctime, &info.CreateTimestamp);
+	exfat_time_unix2fat(sbi, &inode->i_atime, &info.AccessTimestamp);
+
+	/* FIXME : Do we need handling error? */
+	mutex_lock(&(sbi->s_vlock));
+	err = exfat_fscore_write_inode(inode, &info, sync);
+	mutex_unlock(&(sbi->s_vlock));
+
+	return err;
+}
+
+static int exfat_sync_inode(struct inode *inode)
+{
+	return __exfat_write_inode(inode, 1);
+}
+
+static int exfat_write_inode(struct inode *inode, struct writeback_control *wbc)
+{
+	return __exfat_write_inode(inode, wbc->sync_mode == WB_SYNC_ALL);
+}
+
+static void exfat_evict_inode(struct inode *inode)
+{
+	truncate_inode_pages(&inode->i_data, 0);
+
+	if (!inode->i_nlink) {
+		loff_t old_size = i_size_read(inode);
+
+		i_size_write(inode, 0);
+
+		EXFAT_I(inode)->fid.size = old_size;
+
+		/* TO CHECK evicting directory works correctly */
+		MMSG("%s: inode(%p) evict %s (size(%llu) to zero)\n",
+				__func__, inode,
+				S_ISDIR(inode->i_mode) ? "directory" : "file",
+				(u64)old_size);
+		__exfat_truncate(inode, old_size, 0);
+	}
+
+	invalidate_inode_buffers(inode);
+	clear_inode(inode);
+	exfat_extent_cache_inval_inode(inode);
+	exfat_detach(inode);
+
+	/* after end of this function, caller will remove inode hash */
+	/* remove_inode_hash(inode); */
+}
+
+
+
+static void exfat_put_super(struct super_block *sb)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	int err;
+
+	exfat_log_msg(sb, KERN_INFO, "trying to unmount...");
+
+	__cancel_delayed_work_sync(sbi);
+
+	if (__is_sb_dirty(sb))
+		exfat_write_super(sb);
+
+	err = exfat_umount(sb);
+
+	if (sbi->nls_disk) {
+		unload_nls(sbi->nls_disk);
+		sbi->nls_disk = NULL;
+		sbi->options.codepage = exfat_default_codepage;
+	}
+	if (sbi->nls_io) {
+		unload_nls(sbi->nls_io);
+		sbi->nls_io = NULL;
+	}
+	if (sbi->options.iocharset != exfat_default_iocharset) {
+		kfree(sbi->options.iocharset);
+		sbi->options.iocharset = exfat_default_iocharset;
+	}
+
+	sb->s_fs_info = NULL;
+
+	kobject_del(&sbi->sb_kobj);
+	kobject_put(&sbi->sb_kobj);
+	if (!sbi->use_vmalloc)
+		kfree(sbi);
+	else
+		vfree(sbi);
+
+	exfat_log_msg(sb, KERN_INFO, "unmounted successfully! %s",
+				err ? "(with previous I/O errors)" : "");
+}
+
+static inline void __flush_delayed_meta(struct super_block *sb, s32 sync)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+
+	if (sbi->options.delayed_meta)
+		exfat_cache_flush(sb, sync);
+}
+
+static void exfat_write_super(struct super_block *sb)
+{
+	int time = 0;
+
+	__lock_super(sb);
+
+	__set_sb_clean(sb);
+
+	/* flush delayed FAT/DIR dirty */
+	__flush_delayed_meta(sb, 0);
+
+	if (!EXFAT_IS_SB_RDONLY(sb))
+		__exfat_sync_fs(sb, 0);
+
+	__unlock_super(sb);
+
+	time = jiffies;
+
+	/* Issuing bdev requests is needed
+	 * to guarantee DIR updates in time
+	 * whether w/ or w/o delayed DIR dirty feature.
+	 * (otherwise DIR updates could be delayed for 5 + 5 secs at max.)
+	 */
+	sync_blockdev(sb->s_bdev);
+
+	MMSG("BD: exfat_write_super (bdev_sync for %ld ms)\n",
+			(jiffies - time) * 1000 / HZ);
+}
+
+/* synchronize a file system volume */
+static s32 __exfat_sync_fs(struct super_block *sb, s32 do_sync)
+{
+	s32 err;
+
+	mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+	err = exfat_fscore_sync_fs(sb, do_sync);
+	mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+	return err;
+}
+
+static int exfat_sync_fs(struct super_block *sb, int wait)
+{
+	int err = 0;
+
+	/* If there are some dirty buffers in the bdev inode */
+	if (__is_sb_dirty(sb)) {
+		__lock_super(sb);
+		__set_sb_clean(sb);
+
+		err = __exfat_sync_fs(sb, 1);
+
+		__unlock_super(sb);
+	}
+
+	return err;
+}
+
+static int exfat_statfs(struct dentry *dentry, struct kstatfs *buf)
+{
+	/*
+	 * patch 1.2.2 :
+	 * fixed the slow-call problem because of volume-lock contention.
+	 */
+	struct super_block *sb = dentry->d_sb;
+	u64 id = huge_encode_dev(sb->s_bdev->bd_dev);
+	FS_INFO_T *fsi = &(EXFAT_SB(sb)->fsi);
+	VOL_INFO_T info;
+
+	/* exfat_statfs will try to get a volume lock if needed */
+	if (fsi->used_clusters == UINT_MAX) {
+		s32 err;
+
+		mutex_lock(&(EXFAT_SB(sb)->s_vlock));
+		err = exfat_fscore_statfs(sb, &info);
+		mutex_unlock(&(EXFAT_SB(sb)->s_vlock));
+
+		return -EIO;
+	}
+
+	info.ClusterSize = fsi->cluster_size;
+	info.NumClusters = fsi->num_clusters - 2; /* clu 0 & 1 */
+	info.UsedClusters = fsi->used_clusters + fsi->reserved_clusters;
+	info.FreeClusters = info.NumClusters - info.UsedClusters;
+
+	if (fsi->prev_eio)
+		exfat_msg(sb, KERN_INFO, "called statfs with previous"
+				" I/O error(0x%02X).", fsi->prev_eio);
+
+	buf->f_type = sb->s_magic;
+	buf->f_bsize = info.ClusterSize;
+	buf->f_blocks = info.NumClusters;
+	buf->f_bfree = info.FreeClusters;
+	buf->f_bavail = info.FreeClusters;
+	buf->f_fsid.val[0] = (u32)id;
+	buf->f_fsid.val[1] = (u32)(id >> 32);
+	buf->f_namelen = 260;
+
+	return 0;
+}
+
+static int exfat_remount(struct super_block *sb, int *flags, char *data)
+{
+	unsigned long prev_sb_flags;
+	char *orig_data = kstrdup(data, GFP_KERNEL);
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	FS_INFO_T *fsi = &(sbi->fsi);
+
+	*flags |= SB_NODIRATIME;
+	prev_sb_flags = sb->s_flags;
+
+	sync_filesystem(sb);
+
+	exfat_set_vol_flags(sb, VOL_CLEAN, 1);
+
+	exfat_log_msg(sb, KERN_INFO, "re-mounted(%s->%s), eio=0x%x, Opts: %s",
+		(prev_sb_flags & SB_RDONLY) ? "ro" : "rw",
+		(*flags & SB_RDONLY) ? "ro" : "rw",
+		fsi->prev_eio, orig_data);
+	kfree(orig_data);
+	return 0;
+}
+
+static int exfat_show_options(struct seq_file *m, struct dentry *root)
+{
+	struct super_block *sb = root->d_sb;
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	struct exfat_mount_options *opts = &sbi->options;
+	FS_INFO_T *fsi = &(sbi->fsi);
+
+	/* Show partition info */
+	if (fsi->prev_eio)
+		seq_printf(m, ",eio=0x%x", fsi->prev_eio);
+	if (!uid_eq(opts->fs_uid, GLOBAL_ROOT_UID))
+		seq_printf(m, ",uid=%u",
+				from_kuid_munged(&init_user_ns, opts->fs_uid));
+	if (!gid_eq(opts->fs_gid, GLOBAL_ROOT_GID))
+		seq_printf(m, ",gid=%u",
+				from_kgid_munged(&init_user_ns, opts->fs_gid));
+	seq_printf(m, ",fmask=%04o", opts->fs_fmask);
+	seq_printf(m, ",dmask=%04o", opts->fs_dmask);
+	if (opts->allow_utime)
+		seq_printf(m, ",allow_utime=%04o", opts->allow_utime);
+	if (sbi->nls_disk)
+		seq_printf(m, ",codepage=%s", sbi->nls_disk->charset);
+	if (sbi->nls_io)
+		seq_printf(m, ",iocharset=%s", sbi->nls_io->charset);
+	if (opts->utf8)
+		seq_puts(m, ",utf8");
+	seq_printf(m, ",namecase=%u", opts->casesensitive);
+	if (opts->tz_utc)
+		seq_puts(m, ",tz=UTC");
+	seq_printf(m, ",symlink=%u", opts->symlink);
+	seq_printf(m, ",bps=%ld", sb->s_blocksize);
+	if (opts->errors == EXFAT_ERRORS_CONT)
+		seq_puts(m, ",errors=continue");
+	else if (opts->errors == EXFAT_ERRORS_PANIC)
+		seq_puts(m, ",errors=panic");
+	else
+		seq_puts(m, ",errors=remount-ro");
+	if (opts->discard)
+		seq_puts(m, ",discard");
+	if (opts->delayed_meta)
+		seq_puts(m, ",delayed_meta");
+
+	return 0;
+}
+
+static const struct super_operations exfat_sops = {
+	.alloc_inode   = exfat_alloc_inode,
+	.destroy_inode = exfat_destroy_inode,
+	.write_inode   = exfat_write_inode,
+	.evict_inode  = exfat_evict_inode,
+	.put_super     = exfat_put_super,
+	.sync_fs       = exfat_sync_fs,
+	.statfs        = exfat_statfs,
+	.remount_fs    = exfat_remount,
+	.show_options  = exfat_show_options,
+};
+
+#define EXFAT_ATTR(name, mode, show, store) \
+static struct exfat_attr exfat_attr_##name = __ATTR(name, mode, show, store)
+
+struct exfat_attr {
+	struct attribute attr;
+	ssize_t (*show)(struct exfat_sb_info *, char *);
+	ssize_t (*store)(struct exfat_sb_info *, const char *, size_t);
+};
+
+static ssize_t exfat_attr_show(struct kobject *kobj, struct attribute *attr, char *buf)
+{
+	struct exfat_sb_info *sbi = container_of(kobj, struct exfat_sb_info, sb_kobj);
+	struct exfat_attr *a = container_of(attr, struct exfat_attr, attr);
+
+	return a->show ? a->show(sbi, buf) : 0;
+}
+
+static ssize_t exfat_attr_store(struct kobject *kobj, struct attribute *attr,
+				const char *buf, size_t len)
+{
+	struct exfat_sb_info *sbi = container_of(kobj, struct exfat_sb_info, sb_kobj);
+	struct exfat_attr *a = container_of(attr, struct exfat_attr, attr);
+
+	return a->store ? a->store(sbi, buf, len) : len;
+}
+
+static const struct sysfs_ops exfat_attr_ops = {
+	.show  = exfat_attr_show,
+	.store = exfat_attr_store,
+};
+
+static ssize_t eio_show(struct exfat_sb_info *sbi, char *buf)
+{
+	FS_INFO_T *fsi = &(sbi->fsi);
+
+	return snprintf(buf, PAGE_SIZE, "0x%x\n", fsi->prev_eio);
+}
+EXFAT_ATTR(eio, 0444, eio_show, NULL);
+
+static ssize_t fratio_show(struct exfat_sb_info *sbi, char *buf)
+{
+	unsigned int n_total_au = 0;
+	unsigned int n_clean_au = 0;
+	unsigned int n_full_au = 0;
+	unsigned int n_dirty_au = 0;
+	unsigned int fr = 0;
+
+	n_total_au = exfat_fscore_get_au_stat(sbi->host_sb, VOL_AU_STAT_TOTAL);
+	n_clean_au = exfat_fscore_get_au_stat(sbi->host_sb, VOL_AU_STAT_CLEAN);
+	n_full_au = exfat_fscore_get_au_stat(sbi->host_sb, VOL_AU_STAT_FULL);
+	n_dirty_au = n_total_au - (n_full_au + n_clean_au);
+
+	if (!n_dirty_au)
+		fr = 0;
+	else if (!n_clean_au)
+		fr = 100;
+	else
+		fr = (n_dirty_au * 100) / (n_clean_au + n_dirty_au);
+
+	return snprintf(buf, PAGE_SIZE, "%u\n", fr);
+}
+EXFAT_ATTR(fratio, 0444, fratio_show, NULL);
+
+static ssize_t totalau_show(struct exfat_sb_info *sbi, char *buf)
+{
+	unsigned int n_au = 0;
+
+	n_au = exfat_fscore_get_au_stat(sbi->host_sb, VOL_AU_STAT_TOTAL);
+	return snprintf(buf, PAGE_SIZE, "%u\n", n_au);
+}
+EXFAT_ATTR(totalau, 0444, totalau_show, NULL);
+
+static ssize_t cleanau_show(struct exfat_sb_info *sbi, char *buf)
+{
+	unsigned int n_clean_au = 0;
+
+	n_clean_au = exfat_fscore_get_au_stat(sbi->host_sb, VOL_AU_STAT_CLEAN);
+	return snprintf(buf, PAGE_SIZE, "%u\n", n_clean_au);
+}
+EXFAT_ATTR(cleanau, 0444, cleanau_show, NULL);
+
+static ssize_t fullau_show(struct exfat_sb_info *sbi, char *buf)
+{
+	unsigned int n_full_au = 0;
+
+	n_full_au = exfat_fscore_get_au_stat(sbi->host_sb, VOL_AU_STAT_FULL);
+	return snprintf(buf, PAGE_SIZE, "%u\n", n_full_au);
+}
+EXFAT_ATTR(fullau, 0444, fullau_show, NULL);
+
+static struct attribute *exfat_attrs[] = {
+	&exfat_attr_eio.attr,
+	&exfat_attr_fratio.attr,
+	&exfat_attr_totalau.attr,
+	&exfat_attr_cleanau.attr,
+	&exfat_attr_fullau.attr,
+	NULL,
+};
+
+static struct kobj_type exfat_ktype = {
+	.default_attrs = exfat_attrs,
+	.sysfs_ops     = &exfat_attr_ops,
+};
+
+enum {
+	Opt_uid,
+	Opt_gid,
+	Opt_umask,
+	Opt_dmask,
+	Opt_fmask,
+	Opt_allow_utime,
+	Opt_codepage,
+	Opt_charset,
+	Opt_utf8,
+	Opt_namecase,
+	Opt_tz_utc,
+	Opt_symlink,
+	Opt_err_cont,
+	Opt_err_panic,
+	Opt_err_ro,
+	Opt_err,
+	Opt_discard,
+	Opt_delayed_meta,
+	Opt_nodelayed_meta,
+};
+
+static const match_table_t exfat_tokens = {
+	{Opt_uid, "uid=%u"},
+	{Opt_gid, "gid=%u"},
+	{Opt_umask, "umask=%o"},
+	{Opt_dmask, "dmask=%o"},
+	{Opt_fmask, "fmask=%o"},
+	{Opt_allow_utime, "allow_utime=%o"},
+	{Opt_codepage, "codepage=%u"},
+	{Opt_charset, "iocharset=%s"},
+	{Opt_utf8, "utf8"},
+	{Opt_namecase, "namecase=%u"},
+	{Opt_tz_utc, "tz=UTC"},
+	{Opt_symlink, "symlink=%u"},
+	{Opt_err_cont, "errors=continue"},
+	{Opt_err_panic, "errors=panic"},
+	{Opt_err_ro, "errors=remount-ro"},
+	{Opt_discard, "discard"},
+	{Opt_delayed_meta, "delayed_meta"},
+	{Opt_nodelayed_meta, "nodelayed_meta"},
+	{Opt_err, NULL}
+};
+
+static int parse_options(struct super_block *sb, char *options, int silent,
+			 struct exfat_mount_options *opts)
+{
+	char *p;
+	substring_t args[MAX_OPT_ARGS];
+	int option;
+	char *tmpstr;
+
+	opts->fs_uid = current_uid();
+	opts->fs_gid = current_gid();
+	opts->fs_fmask = opts->fs_dmask = current->fs->umask;
+	opts->allow_utime = U16_MAX;
+	opts->codepage = exfat_default_codepage;
+	opts->iocharset = exfat_default_iocharset;
+	opts->casesensitive = 0;
+	opts->utf8 = 0;
+	opts->tz_utc = 0;
+	opts->symlink = 0;
+	opts->errors = EXFAT_ERRORS_RO;
+	opts->discard = 0;
+	opts->delayed_meta = 1;
+
+	if (!options)
+		goto out;
+
+	while ((p = strsep(&options, ",")) != NULL) {
+		int token;
+
+		if (!*p)
+			continue;
+		token = match_token(p, exfat_tokens, args);
+		switch (token) {
+		case Opt_uid:
+			if (match_int(&args[0], &option))
+				return 0;
+			opts->fs_uid = make_kuid(current_user_ns(), option);
+			break;
+		case Opt_gid:
+			if (match_int(&args[0], &option))
+				return 0;
+			opts->fs_gid = make_kgid(current_user_ns(), option);
+			break;
+		case Opt_umask:
+		case Opt_dmask:
+		case Opt_fmask:
+			if (match_octal(&args[0], &option))
+				return 0;
+			if (token != Opt_dmask)
+				opts->fs_fmask = option;
+			if (token != Opt_fmask)
+				opts->fs_dmask = option;
+			break;
+		case Opt_allow_utime:
+			if (match_octal(&args[0], &option))
+				return 0;
+			opts->allow_utime = option & (S_IWGRP | S_IWOTH);
+			break;
+		case Opt_codepage:
+			if (match_int(&args[0], &option))
+				return 0;
+			opts->codepage = option;
+			break;
+		case Opt_charset:
+			if (opts->iocharset != exfat_default_iocharset)
+				kfree(opts->iocharset);
+			tmpstr = match_strdup(&args[0]);
+			if (!tmpstr)
+				return -ENOMEM;
+			opts->iocharset = tmpstr;
+			break;
+		case Opt_namecase:
+			if (match_int(&args[0], &option))
+				return 0;
+			opts->casesensitive = (option > 0) ? 1:0;
+			break;
+		case Opt_utf8:
+			opts->utf8 = 1;
+			break;
+		case Opt_tz_utc:
+			opts->tz_utc = 1;
+			break;
+		case Opt_symlink:
+			if (match_int(&args[0], &option))
+				return 0;
+			opts->symlink = option > 0 ? 1 : 0;
+			break;
+		case Opt_err_cont:
+			opts->errors = EXFAT_ERRORS_CONT;
+			break;
+		case Opt_err_panic:
+			opts->errors = EXFAT_ERRORS_PANIC;
+			break;
+		case Opt_err_ro:
+			opts->errors = EXFAT_ERRORS_RO;
+			break;
+		case Opt_discard:
+			opts->discard = 1;
+			break;
+		case Opt_nodelayed_meta:
+			opts->delayed_meta = 0;
+			break;
+		default:
+			if (!silent) {
+				exfat_msg(sb, KERN_ERR,
+					"unrecognized mount option \"%s\" "
+					"or missing value", p);
+			}
+			return -EINVAL;
+		}
+	}
+
+out:
+	if (opts->allow_utime == U16_MAX)
+		opts->allow_utime = ~opts->fs_dmask & (S_IWGRP | S_IWOTH);
+
+	if (opts->utf8 && strcmp(opts->iocharset,  exfat_iocharset_with_utf8)) {
+		exfat_msg(sb, KERN_WARNING,
+			"utf8 enabled, \"iocharset=%s\" is recommended",
+			exfat_iocharset_with_utf8);
+	}
+
+	if (opts->discard) {
+		struct request_queue *q = bdev_get_queue(sb->s_bdev);
+
+		if (!blk_queue_discard(q))
+			exfat_msg(sb, KERN_WARNING,
+				"mounting with \"discard\" option, but "
+				"the device does not support discard");
+		opts->discard = 0;
+	}
+
+	return 0;
+}
+
+static void exfat_hash_init(struct super_block *sb)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	int i;
+
+	spin_lock_init(&sbi->inode_hash_lock);
+	for (i = 0; i < EXFAT_HASH_SIZE; i++)
+		INIT_HLIST_HEAD(&sbi->inode_hashtable[i]);
+}
+
+static int exfat_read_root(struct inode *inode)
+{
+	struct super_block *sb = inode->i_sb;
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	FS_INFO_T *fsi = &(sbi->fsi);
+	DIR_ENTRY_T info;
+
+	EXFAT_I(inode)->fid.dir.dir = fsi->root_dir;
+	EXFAT_I(inode)->fid.dir.flags = 0x01;
+	EXFAT_I(inode)->fid.entry = -1;
+	EXFAT_I(inode)->fid.start_clu = fsi->root_dir;
+	EXFAT_I(inode)->fid.flags = 0x01;
+	EXFAT_I(inode)->fid.type = TYPE_DIR;
+	EXFAT_I(inode)->fid.version = 0;
+	EXFAT_I(inode)->fid.rwoffset = 0;
+	EXFAT_I(inode)->fid.hint_bmap.off = CLUS_EOF;
+	EXFAT_I(inode)->fid.hint_stat.eidx = 0;
+	EXFAT_I(inode)->fid.hint_stat.clu = fsi->root_dir;
+	EXFAT_I(inode)->fid.hint_femp.eidx = -1;
+
+	EXFAT_I(inode)->target = NULL;
+
+	if (exfat_read_inode(inode, &info) < 0)
+		return -EIO;
+
+	inode->i_uid = sbi->options.fs_uid;
+	inode->i_gid = sbi->options.fs_gid;
+	inode_inc_iversion(inode);
+	inode->i_generation = 0;
+	inode->i_mode = exfat_make_mode(sbi, ATTR_SUBDIR, S_IRWXUGO);
+	inode->i_op = &exfat_dir_inode_operations;
+	inode->i_fop = &exfat_dir_operations;
+
+	i_size_write(inode, info.Size);
+	EXFAT_I(inode)->fid.size = info.Size;
+	inode->i_blocks = ((i_size_read(inode) + (fsi->cluster_size - 1))
+		& ~((loff_t)fsi->cluster_size - 1)) >> inode->i_blkbits;
+	EXFAT_I(inode)->i_pos = ((loff_t) fsi->root_dir << 32) | 0xffffffff;
+	EXFAT_I(inode)->i_size_aligned = i_size_read(inode);
+	EXFAT_I(inode)->i_size_ondisk = i_size_read(inode);
+
+	exfat_save_attr(inode, ATTR_SUBDIR);
+	inode->i_mtime = inode->i_atime = inode->i_ctime = current_time(inode);
+	set_nlink(inode, info.NumSubdirs + 2);
+	return 0;
+}
+
+static void setup_dops(struct super_block *sb)
+{
+	if (EXFAT_SB(sb)->options.casesensitive == 0)
+		sb->s_d_op = &exfat_ci_dentry_ops;
+	else
+		sb->s_d_op = &exfat_dentry_ops;
+}
+
+static int exfat_fill_super(struct super_block *sb, void *data, int silent)
+{
+	struct inode *root_inode = NULL;
+	struct exfat_sb_info *sbi;
+	int err;
+	char buf[50];
+	struct block_device *bdev = sb->s_bdev;
+	dev_t bd_dev = bdev ? bdev->bd_dev : 0;
+
+	exfat_log_msg(sb, KERN_INFO, "trying to mount...");
+
+	/*
+	 * GFP_KERNEL is ok here, because while we do hold the
+	 * supeblock lock, memory pressure can't call back into
+	 * the filesystem, since we're only just about to mount
+	 * it and have no inodes etc active!
+	 */
+	sbi = kzalloc(sizeof(struct exfat_sb_info), GFP_KERNEL);
+	if (!sbi) {
+		exfat_log_msg(sb, KERN_INFO,
+			"trying to alloc sbi with vzalloc()");
+		sbi = vzalloc(sizeof(struct exfat_sb_info));
+		if (!sbi) {
+			exfat_log_msg(sb, KERN_ERR, "failed to mount! (ENOMEM)");
+			return -ENOMEM;
+		}
+		sbi->use_vmalloc = 1;
+	}
+
+	mutex_init(&sbi->s_vlock);
+	sb->s_fs_info = sbi;
+	sb->s_flags |= SB_NODIRATIME;
+	sb->s_magic = EXFAT_SUPER_MAGIC;
+	sb->s_op = &exfat_sops;
+	ratelimit_state_init(&sbi->ratelimit, DEFAULT_RATELIMIT_INTERVAL,
+						DEFAULT_RATELIMIT_BURST);
+	err = parse_options(sb, data, silent, &sbi->options);
+	if (err) {
+		exfat_log_msg(sb, KERN_ERR, "failed to parse options");
+		goto failed_mount;
+	}
+
+	setup_exfat_xattr_handler(sb);
+	setup_exfat_sync_super_wq(sb);
+	setup_dops(sb);
+
+	err = exfat_mount(sb);
+	if (err) {
+		exfat_log_msg(sb, KERN_ERR, "failed to recognize fat type");
+		goto failed_mount;
+	}
+
+	/* set up enough so that it can read an inode */
+	exfat_hash_init(sb);
+
+	/*
+	 * The low byte of FAT's first entry must have same value with
+	 * media-field.  But in real world, too many devices is
+	 * writing wrong value.  So, removed that validity check.
+	 *
+	 * if (FAT_FIRST_ENT(sb, media) != first)
+	 */
+
+	err = -EINVAL;
+	sprintf(buf, "cp%d", sbi->options.codepage);
+	sbi->nls_disk = load_nls(buf);
+	if (!sbi->nls_disk) {
+		exfat_log_msg(sb, KERN_ERR, "codepage %s not found", buf);
+		goto failed_mount2;
+	}
+
+	sbi->nls_io = load_nls(sbi->options.iocharset);
+	if (!sbi->nls_io) {
+		exfat_log_msg(sb, KERN_ERR, "IO charset %s not found",
+				sbi->options.iocharset);
+		goto failed_mount2;
+	}
+
+	err = -ENOMEM;
+	root_inode = new_inode(sb);
+	if (!root_inode) {
+		exfat_log_msg(sb, KERN_ERR, "failed to allocate root inode.");
+		goto failed_mount2;
+	}
+
+	root_inode->i_ino = EXFAT_ROOT_INO;
+	inode_set_iversion(root_inode, 1);
+
+	err = exfat_read_root(root_inode);
+	if (err) {
+		exfat_log_msg(sb, KERN_ERR, "failed to initialize root inode.");
+		goto failed_mount2;
+	}
+
+	exfat_attach(root_inode, EXFAT_I(root_inode)->i_pos);
+	insert_inode_hash(root_inode);
+
+	err = -ENOMEM;
+	sb->s_root = __d_make_root(root_inode);
+	if (!sb->s_root) {
+		exfat_msg(sb, KERN_ERR, "failed to get the root dentry");
+		goto failed_mount2;
+	}
+
+	/*
+	 * Initialize filesystem attributes (for sysfs)
+	 * ex: /sys/fs/exfat/mmcblk1[179:17]
+	 */
+	sbi->sb_kobj.kset = exfat_kset;
+	err = kobject_init_and_add(&sbi->sb_kobj, &exfat_ktype, NULL,
+			"%s[%d:%d]", sb->s_id, MAJOR(bd_dev), MINOR(bd_dev));
+	if (err) {
+		exfat_msg(sb, KERN_ERR, "Unable to create exfat attributes for"
+					" %s[%d:%d](%d)", sb->s_id,
+					MAJOR(bd_dev), MINOR(bd_dev), err);
+		goto failed_mount2;
+	}
+
+	exfat_log_msg(sb, KERN_INFO, "mounted successfully!");
+
+	return 0;
+
+failed_mount2:
+	exfat_umount(sb);
+failed_mount:
+	exfat_log_msg(sb, KERN_INFO, "failed to mount! (%d)", err);
+
+	if (root_inode)
+		iput(root_inode);
+	sb->s_root = NULL;
+
+	if (sbi->nls_io)
+		unload_nls(sbi->nls_io);
+	if (sbi->nls_disk)
+		unload_nls(sbi->nls_disk);
+	if (sbi->options.iocharset != exfat_default_iocharset)
+		kfree(sbi->options.iocharset);
+	sb->s_fs_info = NULL;
+	if (!sbi->use_vmalloc)
+		kfree(sbi);
+	else
+		vfree(sbi);
+	return err;
+}
+
+static struct dentry *exfat_fs_mount(struct file_system_type *fs_type,
+				 int flags, const char *dev_name, void *data)
+{
+	return mount_bdev(fs_type, flags, dev_name, data, exfat_fill_super);
+}
+
+static void init_once(void *foo)
+{
+	struct exfat_inode_info *ei = (struct exfat_inode_info *)foo;
+
+	INIT_HLIST_NODE(&ei->i_hash_fat);
+	inode_init_once(&ei->vfs_inode);
+}
+
+static int __init exfat_init_inodecache(void)
+{
+	exfat_inode_cachep = kmem_cache_create("exfat_inode_cache",
+				sizeof(struct exfat_inode_info),
+				0, (SLAB_RECLAIM_ACCOUNT|SLAB_MEM_SPREAD),
+				init_once);
+	if (!exfat_inode_cachep)
+		return -ENOMEM;
+	return 0;
+}
+
+static void exfat_destroy_inodecache(void)
+{
+	/*
+	 * Make sure all delayed rcu free inodes are flushed before we
+	 * destroy cache.
+	 */
+	rcu_barrier();
+	kmem_cache_destroy(exfat_inode_cachep);
+}
+
+#ifdef CONFIG_EXFAT_DBG_IOCTL
+static void exfat_debug_kill_sb(struct super_block *sb)
+{
+	struct exfat_sb_info *sbi = EXFAT_SB(sb);
+	struct block_device *bdev = sb->s_bdev;
+
+	long flags;
+
+	if (sbi) {
+		flags = sbi->debug_flags;
+
+		if (flags & EXFAT_DEBUGFLAGS_INVALID_UMOUNT) {
+			/* invalidate_bdev drops all device cache include dirty.
+			 * we use this to simulate device removal
+			 */
+			exfat_cache_release(sb);
+			invalidate_bdev(bdev);
+		}
+	}
+
+	kill_block_super(sb);
+}
+#endif /* CONFIG_EXFAT_DBG_IOCTL */
+
+static struct file_system_type exfat_fs_type = {
+	.owner       = THIS_MODULE,
+	.name        = "exfat",
+	.mount       = exfat_fs_mount,
+#ifdef CONFIG_EXFAT_DBG_IOCTL
+	.kill_sb    = exfat_debug_kill_sb,
+#else
+	.kill_sb    = kill_block_super,
+#endif /* CONFIG_EXFAT_DBG_IOCTL */
+	.fs_flags    = FS_REQUIRES_DEV,
+};
+
+static int __init init_exfat_fs(void)
+{
+	int err;
+
+	err = exfat_fscore_init();
+	if (err)
+		goto error;
+
+	exfat_kset = kset_create_and_add("exfat", NULL, fs_kobj);
+	if (!exfat_kset) {
+		pr_err("exFAT: failed to create fs_kobj\n");
+		err = -ENOMEM;
+		goto error;
+	}
+
+	err = exfat_uevent_init(exfat_kset);
+	if (err)
+		goto error;
+
+	err = exfat_init_inodecache();
+	if (err) {
+		pr_err("exFAT: failed to initialize inode cache\n");
+		goto error;
+	}
+
+	err = register_filesystem(&exfat_fs_type);
+	if (err) {
+		pr_err("exFAT: failed to register filesystem\n");
+		goto error;
+	}
+
+	return 0;
+error:
+	exfat_uevent_uninit();
+
+	if (exfat_kset) {
+		kset_unregister(exfat_kset);
+		exfat_kset = NULL;
+	}
+
+	exfat_destroy_inodecache();
+	exfat_fscore_shutdown();
+
+	pr_err("exFAT: failed to initialize FS driver(err:%d)\n", err);
+	return err;
+}
+
+static void __exit exit_exfat_fs(void)
+{
+	exfat_uevent_uninit();
+
+	if (exfat_kset) {
+		kset_unregister(exfat_kset);
+		exfat_kset = NULL;
+	}
+
+	exfat_destroy_inodecache();
+	unregister_filesystem(&exfat_fs_type);
+
+	exfat_fscore_shutdown();
+}
+
+module_init(init_exfat_fs);
+module_exit(exit_exfat_fs);
+
+MODULE_ALIAS_FS("exfat");
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("FAT/exFAT filesystem support");
+MODULE_AUTHOR("Samsung Electronics Co., Ltd.");
diff --git a/drivers/staging/exfat/upcase.h b/drivers/staging/exfat/upcase.h
new file mode 100644
index 000000000000..f86356329ca5
--- /dev/null
+++ b/drivers/staging/exfat/upcase.h
@@ -0,0 +1,394 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ */
+
+#ifndef _UPCASE_H
+#define _UPCASE_H
+
+/* Upcase tabel macro */
+#define EXFAT_NUM_UPCASE              2918
+#define HIGH_INDEX_BIT (8)
+#define HIGH_INDEX_MASK (0xFF00)
+#define LOW_INDEX_BIT (16-HIGH_INDEX_BIT)
+#define UTBL_ROW_COUNT (1<<LOW_INDEX_BIT)
+#define UTBL_COL_COUNT (1<<HIGH_INDEX_BIT)
+
+static inline u16 exfat_get_col_index(u16 i)
+{
+	return i >> LOW_INDEX_BIT;
+}
+static inline u16 exfat_get_row_index(u16 i)
+{
+	return i & ~HIGH_INDEX_MASK;
+}
+
+static const u8 uni_def_upcase[EXFAT_NUM_UPCASE<<1] = {
+	0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00,
+	0x08, 0x00, 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x0C, 0x00, 0x0D, 0x00, 0x0E, 0x00, 0x0F, 0x00,
+	0x10, 0x00, 0x11, 0x00, 0x12, 0x00, 0x13, 0x00, 0x14, 0x00, 0x15, 0x00, 0x16, 0x00, 0x17, 0x00,
+	0x18, 0x00, 0x19, 0x00, 0x1A, 0x00, 0x1B, 0x00, 0x1C, 0x00, 0x1D, 0x00, 0x1E, 0x00, 0x1F, 0x00,
+	0x20, 0x00, 0x21, 0x00, 0x22, 0x00, 0x23, 0x00, 0x24, 0x00, 0x25, 0x00, 0x26, 0x00, 0x27, 0x00,
+	0x28, 0x00, 0x29, 0x00, 0x2A, 0x00, 0x2B, 0x00, 0x2C, 0x00, 0x2D, 0x00, 0x2E, 0x00, 0x2F, 0x00,
+	0x30, 0x00, 0x31, 0x00, 0x32, 0x00, 0x33, 0x00, 0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x37, 0x00,
+	0x38, 0x00, 0x39, 0x00, 0x3A, 0x00, 0x3B, 0x00, 0x3C, 0x00, 0x3D, 0x00, 0x3E, 0x00, 0x3F, 0x00,
+	0x40, 0x00, 0x41, 0x00, 0x42, 0x00, 0x43, 0x00, 0x44, 0x00, 0x45, 0x00, 0x46, 0x00, 0x47, 0x00,
+	0x48, 0x00, 0x49, 0x00, 0x4A, 0x00, 0x4B, 0x00, 0x4C, 0x00, 0x4D, 0x00, 0x4E, 0x00, 0x4F, 0x00,
+	0x50, 0x00, 0x51, 0x00, 0x52, 0x00, 0x53, 0x00, 0x54, 0x00, 0x55, 0x00, 0x56, 0x00, 0x57, 0x00,
+	0x58, 0x00, 0x59, 0x00, 0x5A, 0x00, 0x5B, 0x00, 0x5C, 0x00, 0x5D, 0x00, 0x5E, 0x00, 0x5F, 0x00,
+	0x60, 0x00, 0x41, 0x00, 0x42, 0x00, 0x43, 0x00, 0x44, 0x00, 0x45, 0x00, 0x46, 0x00, 0x47, 0x00,
+	0x48, 0x00, 0x49, 0x00, 0x4A, 0x00, 0x4B, 0x00, 0x4C, 0x00, 0x4D, 0x00, 0x4E, 0x00, 0x4F, 0x00,
+	0x50, 0x00, 0x51, 0x00, 0x52, 0x00, 0x53, 0x00, 0x54, 0x00, 0x55, 0x00, 0x56, 0x00, 0x57, 0x00,
+	0x58, 0x00, 0x59, 0x00, 0x5A, 0x00, 0x7B, 0x00, 0x7C, 0x00, 0x7D, 0x00, 0x7E, 0x00, 0x7F, 0x00,
+	0x80, 0x00, 0x81, 0x00, 0x82, 0x00, 0x83, 0x00, 0x84, 0x00, 0x85, 0x00, 0x86, 0x00, 0x87, 0x00,
+	0x88, 0x00, 0x89, 0x00, 0x8A, 0x00, 0x8B, 0x00, 0x8C, 0x00, 0x8D, 0x00, 0x8E, 0x00, 0x8F, 0x00,
+	0x90, 0x00, 0x91, 0x00, 0x92, 0x00, 0x93, 0x00, 0x94, 0x00, 0x95, 0x00, 0x96, 0x00, 0x97, 0x00,
+	0x98, 0x00, 0x99, 0x00, 0x9A, 0x00, 0x9B, 0x00, 0x9C, 0x00, 0x9D, 0x00, 0x9E, 0x00, 0x9F, 0x00,
+	0xA0, 0x00, 0xA1, 0x00, 0xA2, 0x00, 0xA3, 0x00, 0xA4, 0x00, 0xA5, 0x00, 0xA6, 0x00, 0xA7, 0x00,
+	0xA8, 0x00, 0xA9, 0x00, 0xAA, 0x00, 0xAB, 0x00, 0xAC, 0x00, 0xAD, 0x00, 0xAE, 0x00, 0xAF, 0x00,
+	0xB0, 0x00, 0xB1, 0x00, 0xB2, 0x00, 0xB3, 0x00, 0xB4, 0x00, 0xB5, 0x00, 0xB6, 0x00, 0xB7, 0x00,
+	0xB8, 0x00, 0xB9, 0x00, 0xBA, 0x00, 0xBB, 0x00, 0xBC, 0x00, 0xBD, 0x00, 0xBE, 0x00, 0xBF, 0x00,
+	0xC0, 0x00, 0xC1, 0x00, 0xC2, 0x00, 0xC3, 0x00, 0xC4, 0x00, 0xC5, 0x00, 0xC6, 0x00, 0xC7, 0x00,
+	0xC8, 0x00, 0xC9, 0x00, 0xCA, 0x00, 0xCB, 0x00, 0xCC, 0x00, 0xCD, 0x00, 0xCE, 0x00, 0xCF, 0x00,
+	0xD0, 0x00, 0xD1, 0x00, 0xD2, 0x00, 0xD3, 0x00, 0xD4, 0x00, 0xD5, 0x00, 0xD6, 0x00, 0xD7, 0x00,
+	0xD8, 0x00, 0xD9, 0x00, 0xDA, 0x00, 0xDB, 0x00, 0xDC, 0x00, 0xDD, 0x00, 0xDE, 0x00, 0xDF, 0x00,
+	0xC0, 0x00, 0xC1, 0x00, 0xC2, 0x00, 0xC3, 0x00, 0xC4, 0x00, 0xC5, 0x00, 0xC6, 0x00, 0xC7, 0x00,
+	0xC8, 0x00, 0xC9, 0x00, 0xCA, 0x00, 0xCB, 0x00, 0xCC, 0x00, 0xCD, 0x00, 0xCE, 0x00, 0xCF, 0x00,
+	0xD0, 0x00, 0xD1, 0x00, 0xD2, 0x00, 0xD3, 0x00, 0xD4, 0x00, 0xD5, 0x00, 0xD6, 0x00, 0xF7, 0x00,
+	0xD8, 0x00, 0xD9, 0x00, 0xDA, 0x00, 0xDB, 0x00, 0xDC, 0x00, 0xDD, 0x00, 0xDE, 0x00, 0x78, 0x01,
+	0x00, 0x01, 0x00, 0x01, 0x02, 0x01, 0x02, 0x01, 0x04, 0x01, 0x04, 0x01, 0x06, 0x01, 0x06, 0x01,
+	0x08, 0x01, 0x08, 0x01, 0x0A, 0x01, 0x0A, 0x01, 0x0C, 0x01, 0x0C, 0x01, 0x0E, 0x01, 0x0E, 0x01,
+	0x10, 0x01, 0x10, 0x01, 0x12, 0x01, 0x12, 0x01, 0x14, 0x01, 0x14, 0x01, 0x16, 0x01, 0x16, 0x01,
+	0x18, 0x01, 0x18, 0x01, 0x1A, 0x01, 0x1A, 0x01, 0x1C, 0x01, 0x1C, 0x01, 0x1E, 0x01, 0x1E, 0x01,
+	0x20, 0x01, 0x20, 0x01, 0x22, 0x01, 0x22, 0x01, 0x24, 0x01, 0x24, 0x01, 0x26, 0x01, 0x26, 0x01,
+	0x28, 0x01, 0x28, 0x01, 0x2A, 0x01, 0x2A, 0x01, 0x2C, 0x01, 0x2C, 0x01, 0x2E, 0x01, 0x2E, 0x01,
+	0x30, 0x01, 0x31, 0x01, 0x32, 0x01, 0x32, 0x01, 0x34, 0x01, 0x34, 0x01, 0x36, 0x01, 0x36, 0x01,
+	0x38, 0x01, 0x39, 0x01, 0x39, 0x01, 0x3B, 0x01, 0x3B, 0x01, 0x3D, 0x01, 0x3D, 0x01, 0x3F, 0x01,
+	0x3F, 0x01, 0x41, 0x01, 0x41, 0x01, 0x43, 0x01, 0x43, 0x01, 0x45, 0x01, 0x45, 0x01, 0x47, 0x01,
+	0x47, 0x01, 0x49, 0x01, 0x4A, 0x01, 0x4A, 0x01, 0x4C, 0x01, 0x4C, 0x01, 0x4E, 0x01, 0x4E, 0x01,
+	0x50, 0x01, 0x50, 0x01, 0x52, 0x01, 0x52, 0x01, 0x54, 0x01, 0x54, 0x01, 0x56, 0x01, 0x56, 0x01,
+	0x58, 0x01, 0x58, 0x01, 0x5A, 0x01, 0x5A, 0x01, 0x5C, 0x01, 0x5C, 0x01, 0x5E, 0x01, 0x5E, 0x01,
+	0x60, 0x01, 0x60, 0x01, 0x62, 0x01, 0x62, 0x01, 0x64, 0x01, 0x64, 0x01, 0x66, 0x01, 0x66, 0x01,
+	0x68, 0x01, 0x68, 0x01, 0x6A, 0x01, 0x6A, 0x01, 0x6C, 0x01, 0x6C, 0x01, 0x6E, 0x01, 0x6E, 0x01,
+	0x70, 0x01, 0x70, 0x01, 0x72, 0x01, 0x72, 0x01, 0x74, 0x01, 0x74, 0x01, 0x76, 0x01, 0x76, 0x01,
+	0x78, 0x01, 0x79, 0x01, 0x79, 0x01, 0x7B, 0x01, 0x7B, 0x01, 0x7D, 0x01, 0x7D, 0x01, 0x7F, 0x01,
+	0x43, 0x02, 0x81, 0x01, 0x82, 0x01, 0x82, 0x01, 0x84, 0x01, 0x84, 0x01, 0x86, 0x01, 0x87, 0x01,
+	0x87, 0x01, 0x89, 0x01, 0x8A, 0x01, 0x8B, 0x01, 0x8B, 0x01, 0x8D, 0x01, 0x8E, 0x01, 0x8F, 0x01,
+	0x90, 0x01, 0x91, 0x01, 0x91, 0x01, 0x93, 0x01, 0x94, 0x01, 0xF6, 0x01, 0x96, 0x01, 0x97, 0x01,
+	0x98, 0x01, 0x98, 0x01, 0x3D, 0x02, 0x9B, 0x01, 0x9C, 0x01, 0x9D, 0x01, 0x20, 0x02, 0x9F, 0x01,
+	0xA0, 0x01, 0xA0, 0x01, 0xA2, 0x01, 0xA2, 0x01, 0xA4, 0x01, 0xA4, 0x01, 0xA6, 0x01, 0xA7, 0x01,
+	0xA7, 0x01, 0xA9, 0x01, 0xAA, 0x01, 0xAB, 0x01, 0xAC, 0x01, 0xAC, 0x01, 0xAE, 0x01, 0xAF, 0x01,
+	0xAF, 0x01, 0xB1, 0x01, 0xB2, 0x01, 0xB3, 0x01, 0xB3, 0x01, 0xB5, 0x01, 0xB5, 0x01, 0xB7, 0x01,
+	0xB8, 0x01, 0xB8, 0x01, 0xBA, 0x01, 0xBB, 0x01, 0xBC, 0x01, 0xBC, 0x01, 0xBE, 0x01, 0xF7, 0x01,
+	0xC0, 0x01, 0xC1, 0x01, 0xC2, 0x01, 0xC3, 0x01, 0xC4, 0x01, 0xC5, 0x01, 0xC4, 0x01, 0xC7, 0x01,
+	0xC8, 0x01, 0xC7, 0x01, 0xCA, 0x01, 0xCB, 0x01, 0xCA, 0x01, 0xCD, 0x01, 0xCD, 0x01, 0xCF, 0x01,
+	0xCF, 0x01, 0xD1, 0x01, 0xD1, 0x01, 0xD3, 0x01, 0xD3, 0x01, 0xD5, 0x01, 0xD5, 0x01, 0xD7, 0x01,
+	0xD7, 0x01, 0xD9, 0x01, 0xD9, 0x01, 0xDB, 0x01, 0xDB, 0x01, 0x8E, 0x01, 0xDE, 0x01, 0xDE, 0x01,
+	0xE0, 0x01, 0xE0, 0x01, 0xE2, 0x01, 0xE2, 0x01, 0xE4, 0x01, 0xE4, 0x01, 0xE6, 0x01, 0xE6, 0x01,
+	0xE8, 0x01, 0xE8, 0x01, 0xEA, 0x01, 0xEA, 0x01, 0xEC, 0x01, 0xEC, 0x01, 0xEE, 0x01, 0xEE, 0x01,
+	0xF0, 0x01, 0xF1, 0x01, 0xF2, 0x01, 0xF1, 0x01, 0xF4, 0x01, 0xF4, 0x01, 0xF6, 0x01, 0xF7, 0x01,
+	0xF8, 0x01, 0xF8, 0x01, 0xFA, 0x01, 0xFA, 0x01, 0xFC, 0x01, 0xFC, 0x01, 0xFE, 0x01, 0xFE, 0x01,
+	0x00, 0x02, 0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x04, 0x02, 0x04, 0x02, 0x06, 0x02, 0x06, 0x02,
+	0x08, 0x02, 0x08, 0x02, 0x0A, 0x02, 0x0A, 0x02, 0x0C, 0x02, 0x0C, 0x02, 0x0E, 0x02, 0x0E, 0x02,
+	0x10, 0x02, 0x10, 0x02, 0x12, 0x02, 0x12, 0x02, 0x14, 0x02, 0x14, 0x02, 0x16, 0x02, 0x16, 0x02,
+	0x18, 0x02, 0x18, 0x02, 0x1A, 0x02, 0x1A, 0x02, 0x1C, 0x02, 0x1C, 0x02, 0x1E, 0x02, 0x1E, 0x02,
+	0x20, 0x02, 0x21, 0x02, 0x22, 0x02, 0x22, 0x02, 0x24, 0x02, 0x24, 0x02, 0x26, 0x02, 0x26, 0x02,
+	0x28, 0x02, 0x28, 0x02, 0x2A, 0x02, 0x2A, 0x02, 0x2C, 0x02, 0x2C, 0x02, 0x2E, 0x02, 0x2E, 0x02,
+	0x30, 0x02, 0x30, 0x02, 0x32, 0x02, 0x32, 0x02, 0x34, 0x02, 0x35, 0x02, 0x36, 0x02, 0x37, 0x02,
+	0x38, 0x02, 0x39, 0x02, 0x65, 0x2C, 0x3B, 0x02, 0x3B, 0x02, 0x3D, 0x02, 0x66, 0x2C, 0x3F, 0x02,
+	0x40, 0x02, 0x41, 0x02, 0x41, 0x02, 0x43, 0x02, 0x44, 0x02, 0x45, 0x02, 0x46, 0x02, 0x46, 0x02,
+	0x48, 0x02, 0x48, 0x02, 0x4A, 0x02, 0x4A, 0x02, 0x4C, 0x02, 0x4C, 0x02, 0x4E, 0x02, 0x4E, 0x02,
+	0x50, 0x02, 0x51, 0x02, 0x52, 0x02, 0x81, 0x01, 0x86, 0x01, 0x55, 0x02, 0x89, 0x01, 0x8A, 0x01,
+	0x58, 0x02, 0x8F, 0x01, 0x5A, 0x02, 0x90, 0x01, 0x5C, 0x02, 0x5D, 0x02, 0x5E, 0x02, 0x5F, 0x02,
+	0x93, 0x01, 0x61, 0x02, 0x62, 0x02, 0x94, 0x01, 0x64, 0x02, 0x65, 0x02, 0x66, 0x02, 0x67, 0x02,
+	0x97, 0x01, 0x96, 0x01, 0x6A, 0x02, 0x62, 0x2C, 0x6C, 0x02, 0x6D, 0x02, 0x6E, 0x02, 0x9C, 0x01,
+	0x70, 0x02, 0x71, 0x02, 0x9D, 0x01, 0x73, 0x02, 0x74, 0x02, 0x9F, 0x01, 0x76, 0x02, 0x77, 0x02,
+	0x78, 0x02, 0x79, 0x02, 0x7A, 0x02, 0x7B, 0x02, 0x7C, 0x02, 0x64, 0x2C, 0x7E, 0x02, 0x7F, 0x02,
+	0xA6, 0x01, 0x81, 0x02, 0x82, 0x02, 0xA9, 0x01, 0x84, 0x02, 0x85, 0x02, 0x86, 0x02, 0x87, 0x02,
+	0xAE, 0x01, 0x44, 0x02, 0xB1, 0x01, 0xB2, 0x01, 0x45, 0x02, 0x8D, 0x02, 0x8E, 0x02, 0x8F, 0x02,
+	0x90, 0x02, 0x91, 0x02, 0xB7, 0x01, 0x93, 0x02, 0x94, 0x02, 0x95, 0x02, 0x96, 0x02, 0x97, 0x02,
+	0x98, 0x02, 0x99, 0x02, 0x9A, 0x02, 0x9B, 0x02, 0x9C, 0x02, 0x9D, 0x02, 0x9E, 0x02, 0x9F, 0x02,
+	0xA0, 0x02, 0xA1, 0x02, 0xA2, 0x02, 0xA3, 0x02, 0xA4, 0x02, 0xA5, 0x02, 0xA6, 0x02, 0xA7, 0x02,
+	0xA8, 0x02, 0xA9, 0x02, 0xAA, 0x02, 0xAB, 0x02, 0xAC, 0x02, 0xAD, 0x02, 0xAE, 0x02, 0xAF, 0x02,
+	0xB0, 0x02, 0xB1, 0x02, 0xB2, 0x02, 0xB3, 0x02, 0xB4, 0x02, 0xB5, 0x02, 0xB6, 0x02, 0xB7, 0x02,
+	0xB8, 0x02, 0xB9, 0x02, 0xBA, 0x02, 0xBB, 0x02, 0xBC, 0x02, 0xBD, 0x02, 0xBE, 0x02, 0xBF, 0x02,
+	0xC0, 0x02, 0xC1, 0x02, 0xC2, 0x02, 0xC3, 0x02, 0xC4, 0x02, 0xC5, 0x02, 0xC6, 0x02, 0xC7, 0x02,
+	0xC8, 0x02, 0xC9, 0x02, 0xCA, 0x02, 0xCB, 0x02, 0xCC, 0x02, 0xCD, 0x02, 0xCE, 0x02, 0xCF, 0x02,
+	0xD0, 0x02, 0xD1, 0x02, 0xD2, 0x02, 0xD3, 0x02, 0xD4, 0x02, 0xD5, 0x02, 0xD6, 0x02, 0xD7, 0x02,
+	0xD8, 0x02, 0xD9, 0x02, 0xDA, 0x02, 0xDB, 0x02, 0xDC, 0x02, 0xDD, 0x02, 0xDE, 0x02, 0xDF, 0x02,
+	0xE0, 0x02, 0xE1, 0x02, 0xE2, 0x02, 0xE3, 0x02, 0xE4, 0x02, 0xE5, 0x02, 0xE6, 0x02, 0xE7, 0x02,
+	0xE8, 0x02, 0xE9, 0x02, 0xEA, 0x02, 0xEB, 0x02, 0xEC, 0x02, 0xED, 0x02, 0xEE, 0x02, 0xEF, 0x02,
+	0xF0, 0x02, 0xF1, 0x02, 0xF2, 0x02, 0xF3, 0x02, 0xF4, 0x02, 0xF5, 0x02, 0xF6, 0x02, 0xF7, 0x02,
+	0xF8, 0x02, 0xF9, 0x02, 0xFA, 0x02, 0xFB, 0x02, 0xFC, 0x02, 0xFD, 0x02, 0xFE, 0x02, 0xFF, 0x02,
+	0x00, 0x03, 0x01, 0x03, 0x02, 0x03, 0x03, 0x03, 0x04, 0x03, 0x05, 0x03, 0x06, 0x03, 0x07, 0x03,
+	0x08, 0x03, 0x09, 0x03, 0x0A, 0x03, 0x0B, 0x03, 0x0C, 0x03, 0x0D, 0x03, 0x0E, 0x03, 0x0F, 0x03,
+	0x10, 0x03, 0x11, 0x03, 0x12, 0x03, 0x13, 0x03, 0x14, 0x03, 0x15, 0x03, 0x16, 0x03, 0x17, 0x03,
+	0x18, 0x03, 0x19, 0x03, 0x1A, 0x03, 0x1B, 0x03, 0x1C, 0x03, 0x1D, 0x03, 0x1E, 0x03, 0x1F, 0x03,
+	0x20, 0x03, 0x21, 0x03, 0x22, 0x03, 0x23, 0x03, 0x24, 0x03, 0x25, 0x03, 0x26, 0x03, 0x27, 0x03,
+	0x28, 0x03, 0x29, 0x03, 0x2A, 0x03, 0x2B, 0x03, 0x2C, 0x03, 0x2D, 0x03, 0x2E, 0x03, 0x2F, 0x03,
+	0x30, 0x03, 0x31, 0x03, 0x32, 0x03, 0x33, 0x03, 0x34, 0x03, 0x35, 0x03, 0x36, 0x03, 0x37, 0x03,
+	0x38, 0x03, 0x39, 0x03, 0x3A, 0x03, 0x3B, 0x03, 0x3C, 0x03, 0x3D, 0x03, 0x3E, 0x03, 0x3F, 0x03,
+	0x40, 0x03, 0x41, 0x03, 0x42, 0x03, 0x43, 0x03, 0x44, 0x03, 0x45, 0x03, 0x46, 0x03, 0x47, 0x03,
+	0x48, 0x03, 0x49, 0x03, 0x4A, 0x03, 0x4B, 0x03, 0x4C, 0x03, 0x4D, 0x03, 0x4E, 0x03, 0x4F, 0x03,
+	0x50, 0x03, 0x51, 0x03, 0x52, 0x03, 0x53, 0x03, 0x54, 0x03, 0x55, 0x03, 0x56, 0x03, 0x57, 0x03,
+	0x58, 0x03, 0x59, 0x03, 0x5A, 0x03, 0x5B, 0x03, 0x5C, 0x03, 0x5D, 0x03, 0x5E, 0x03, 0x5F, 0x03,
+	0x60, 0x03, 0x61, 0x03, 0x62, 0x03, 0x63, 0x03, 0x64, 0x03, 0x65, 0x03, 0x66, 0x03, 0x67, 0x03,
+	0x68, 0x03, 0x69, 0x03, 0x6A, 0x03, 0x6B, 0x03, 0x6C, 0x03, 0x6D, 0x03, 0x6E, 0x03, 0x6F, 0x03,
+	0x70, 0x03, 0x71, 0x03, 0x72, 0x03, 0x73, 0x03, 0x74, 0x03, 0x75, 0x03, 0x76, 0x03, 0x77, 0x03,
+	0x78, 0x03, 0x79, 0x03, 0x7A, 0x03, 0xFD, 0x03, 0xFE, 0x03, 0xFF, 0x03, 0x7E, 0x03, 0x7F, 0x03,
+	0x80, 0x03, 0x81, 0x03, 0x82, 0x03, 0x83, 0x03, 0x84, 0x03, 0x85, 0x03, 0x86, 0x03, 0x87, 0x03,
+	0x88, 0x03, 0x89, 0x03, 0x8A, 0x03, 0x8B, 0x03, 0x8C, 0x03, 0x8D, 0x03, 0x8E, 0x03, 0x8F, 0x03,
+	0x90, 0x03, 0x91, 0x03, 0x92, 0x03, 0x93, 0x03, 0x94, 0x03, 0x95, 0x03, 0x96, 0x03, 0x97, 0x03,
+	0x98, 0x03, 0x99, 0x03, 0x9A, 0x03, 0x9B, 0x03, 0x9C, 0x03, 0x9D, 0x03, 0x9E, 0x03, 0x9F, 0x03,
+	0xA0, 0x03, 0xA1, 0x03, 0xA2, 0x03, 0xA3, 0x03, 0xA4, 0x03, 0xA5, 0x03, 0xA6, 0x03, 0xA7, 0x03,
+	0xA8, 0x03, 0xA9, 0x03, 0xAA, 0x03, 0xAB, 0x03, 0x86, 0x03, 0x88, 0x03, 0x89, 0x03, 0x8A, 0x03,
+	0xB0, 0x03, 0x91, 0x03, 0x92, 0x03, 0x93, 0x03, 0x94, 0x03, 0x95, 0x03, 0x96, 0x03, 0x97, 0x03,
+	0x98, 0x03, 0x99, 0x03, 0x9A, 0x03, 0x9B, 0x03, 0x9C, 0x03, 0x9D, 0x03, 0x9E, 0x03, 0x9F, 0x03,
+	0xA0, 0x03, 0xA1, 0x03, 0xA3, 0x03, 0xA3, 0x03, 0xA4, 0x03, 0xA5, 0x03, 0xA6, 0x03, 0xA7, 0x03,
+	0xA8, 0x03, 0xA9, 0x03, 0xAA, 0x03, 0xAB, 0x03, 0x8C, 0x03, 0x8E, 0x03, 0x8F, 0x03, 0xCF, 0x03,
+	0xD0, 0x03, 0xD1, 0x03, 0xD2, 0x03, 0xD3, 0x03, 0xD4, 0x03, 0xD5, 0x03, 0xD6, 0x03, 0xD7, 0x03,
+	0xD8, 0x03, 0xD8, 0x03, 0xDA, 0x03, 0xDA, 0x03, 0xDC, 0x03, 0xDC, 0x03, 0xDE, 0x03, 0xDE, 0x03,
+	0xE0, 0x03, 0xE0, 0x03, 0xE2, 0x03, 0xE2, 0x03, 0xE4, 0x03, 0xE4, 0x03, 0xE6, 0x03, 0xE6, 0x03,
+	0xE8, 0x03, 0xE8, 0x03, 0xEA, 0x03, 0xEA, 0x03, 0xEC, 0x03, 0xEC, 0x03, 0xEE, 0x03, 0xEE, 0x03,
+	0xF0, 0x03, 0xF1, 0x03, 0xF9, 0x03, 0xF3, 0x03, 0xF4, 0x03, 0xF5, 0x03, 0xF6, 0x03, 0xF7, 0x03,
+	0xF7, 0x03, 0xF9, 0x03, 0xFA, 0x03, 0xFA, 0x03, 0xFC, 0x03, 0xFD, 0x03, 0xFE, 0x03, 0xFF, 0x03,
+	0x00, 0x04, 0x01, 0x04, 0x02, 0x04, 0x03, 0x04, 0x04, 0x04, 0x05, 0x04, 0x06, 0x04, 0x07, 0x04,
+	0x08, 0x04, 0x09, 0x04, 0x0A, 0x04, 0x0B, 0x04, 0x0C, 0x04, 0x0D, 0x04, 0x0E, 0x04, 0x0F, 0x04,
+	0x10, 0x04, 0x11, 0x04, 0x12, 0x04, 0x13, 0x04, 0x14, 0x04, 0x15, 0x04, 0x16, 0x04, 0x17, 0x04,
+	0x18, 0x04, 0x19, 0x04, 0x1A, 0x04, 0x1B, 0x04, 0x1C, 0x04, 0x1D, 0x04, 0x1E, 0x04, 0x1F, 0x04,
+	0x20, 0x04, 0x21, 0x04, 0x22, 0x04, 0x23, 0x04, 0x24, 0x04, 0x25, 0x04, 0x26, 0x04, 0x27, 0x04,
+	0x28, 0x04, 0x29, 0x04, 0x2A, 0x04, 0x2B, 0x04, 0x2C, 0x04, 0x2D, 0x04, 0x2E, 0x04, 0x2F, 0x04,
+	0x10, 0x04, 0x11, 0x04, 0x12, 0x04, 0x13, 0x04, 0x14, 0x04, 0x15, 0x04, 0x16, 0x04, 0x17, 0x04,
+	0x18, 0x04, 0x19, 0x04, 0x1A, 0x04, 0x1B, 0x04, 0x1C, 0x04, 0x1D, 0x04, 0x1E, 0x04, 0x1F, 0x04,
+	0x20, 0x04, 0x21, 0x04, 0x22, 0x04, 0x23, 0x04, 0x24, 0x04, 0x25, 0x04, 0x26, 0x04, 0x27, 0x04,
+	0x28, 0x04, 0x29, 0x04, 0x2A, 0x04, 0x2B, 0x04, 0x2C, 0x04, 0x2D, 0x04, 0x2E, 0x04, 0x2F, 0x04,
+	0x00, 0x04, 0x01, 0x04, 0x02, 0x04, 0x03, 0x04, 0x04, 0x04, 0x05, 0x04, 0x06, 0x04, 0x07, 0x04,
+	0x08, 0x04, 0x09, 0x04, 0x0A, 0x04, 0x0B, 0x04, 0x0C, 0x04, 0x0D, 0x04, 0x0E, 0x04, 0x0F, 0x04,
+	0x60, 0x04, 0x60, 0x04, 0x62, 0x04, 0x62, 0x04, 0x64, 0x04, 0x64, 0x04, 0x66, 0x04, 0x66, 0x04,
+	0x68, 0x04, 0x68, 0x04, 0x6A, 0x04, 0x6A, 0x04, 0x6C, 0x04, 0x6C, 0x04, 0x6E, 0x04, 0x6E, 0x04,
+	0x70, 0x04, 0x70, 0x04, 0x72, 0x04, 0x72, 0x04, 0x74, 0x04, 0x74, 0x04, 0x76, 0x04, 0x76, 0x04,
+	0x78, 0x04, 0x78, 0x04, 0x7A, 0x04, 0x7A, 0x04, 0x7C, 0x04, 0x7C, 0x04, 0x7E, 0x04, 0x7E, 0x04,
+	0x80, 0x04, 0x80, 0x04, 0x82, 0x04, 0x83, 0x04, 0x84, 0x04, 0x85, 0x04, 0x86, 0x04, 0x87, 0x04,
+	0x88, 0x04, 0x89, 0x04, 0x8A, 0x04, 0x8A, 0x04, 0x8C, 0x04, 0x8C, 0x04, 0x8E, 0x04, 0x8E, 0x04,
+	0x90, 0x04, 0x90, 0x04, 0x92, 0x04, 0x92, 0x04, 0x94, 0x04, 0x94, 0x04, 0x96, 0x04, 0x96, 0x04,
+	0x98, 0x04, 0x98, 0x04, 0x9A, 0x04, 0x9A, 0x04, 0x9C, 0x04, 0x9C, 0x04, 0x9E, 0x04, 0x9E, 0x04,
+	0xA0, 0x04, 0xA0, 0x04, 0xA2, 0x04, 0xA2, 0x04, 0xA4, 0x04, 0xA4, 0x04, 0xA6, 0x04, 0xA6, 0x04,
+	0xA8, 0x04, 0xA8, 0x04, 0xAA, 0x04, 0xAA, 0x04, 0xAC, 0x04, 0xAC, 0x04, 0xAE, 0x04, 0xAE, 0x04,
+	0xB0, 0x04, 0xB0, 0x04, 0xB2, 0x04, 0xB2, 0x04, 0xB4, 0x04, 0xB4, 0x04, 0xB6, 0x04, 0xB6, 0x04,
+	0xB8, 0x04, 0xB8, 0x04, 0xBA, 0x04, 0xBA, 0x04, 0xBC, 0x04, 0xBC, 0x04, 0xBE, 0x04, 0xBE, 0x04,
+	0xC0, 0x04, 0xC1, 0x04, 0xC1, 0x04, 0xC3, 0x04, 0xC3, 0x04, 0xC5, 0x04, 0xC5, 0x04, 0xC7, 0x04,
+	0xC7, 0x04, 0xC9, 0x04, 0xC9, 0x04, 0xCB, 0x04, 0xCB, 0x04, 0xCD, 0x04, 0xCD, 0x04, 0xC0, 0x04,
+	0xD0, 0x04, 0xD0, 0x04, 0xD2, 0x04, 0xD2, 0x04, 0xD4, 0x04, 0xD4, 0x04, 0xD6, 0x04, 0xD6, 0x04,
+	0xD8, 0x04, 0xD8, 0x04, 0xDA, 0x04, 0xDA, 0x04, 0xDC, 0x04, 0xDC, 0x04, 0xDE, 0x04, 0xDE, 0x04,
+	0xE0, 0x04, 0xE0, 0x04, 0xE2, 0x04, 0xE2, 0x04, 0xE4, 0x04, 0xE4, 0x04, 0xE6, 0x04, 0xE6, 0x04,
+	0xE8, 0x04, 0xE8, 0x04, 0xEA, 0x04, 0xEA, 0x04, 0xEC, 0x04, 0xEC, 0x04, 0xEE, 0x04, 0xEE, 0x04,
+	0xF0, 0x04, 0xF0, 0x04, 0xF2, 0x04, 0xF2, 0x04, 0xF4, 0x04, 0xF4, 0x04, 0xF6, 0x04, 0xF6, 0x04,
+	0xF8, 0x04, 0xF8, 0x04, 0xFA, 0x04, 0xFA, 0x04, 0xFC, 0x04, 0xFC, 0x04, 0xFE, 0x04, 0xFE, 0x04,
+	0x00, 0x05, 0x00, 0x05, 0x02, 0x05, 0x02, 0x05, 0x04, 0x05, 0x04, 0x05, 0x06, 0x05, 0x06, 0x05,
+	0x08, 0x05, 0x08, 0x05, 0x0A, 0x05, 0x0A, 0x05, 0x0C, 0x05, 0x0C, 0x05, 0x0E, 0x05, 0x0E, 0x05,
+	0x10, 0x05, 0x10, 0x05, 0x12, 0x05, 0x12, 0x05, 0x14, 0x05, 0x15, 0x05, 0x16, 0x05, 0x17, 0x05,
+	0x18, 0x05, 0x19, 0x05, 0x1A, 0x05, 0x1B, 0x05, 0x1C, 0x05, 0x1D, 0x05, 0x1E, 0x05, 0x1F, 0x05,
+	0x20, 0x05, 0x21, 0x05, 0x22, 0x05, 0x23, 0x05, 0x24, 0x05, 0x25, 0x05, 0x26, 0x05, 0x27, 0x05,
+	0x28, 0x05, 0x29, 0x05, 0x2A, 0x05, 0x2B, 0x05, 0x2C, 0x05, 0x2D, 0x05, 0x2E, 0x05, 0x2F, 0x05,
+	0x30, 0x05, 0x31, 0x05, 0x32, 0x05, 0x33, 0x05, 0x34, 0x05, 0x35, 0x05, 0x36, 0x05, 0x37, 0x05,
+	0x38, 0x05, 0x39, 0x05, 0x3A, 0x05, 0x3B, 0x05, 0x3C, 0x05, 0x3D, 0x05, 0x3E, 0x05, 0x3F, 0x05,
+	0x40, 0x05, 0x41, 0x05, 0x42, 0x05, 0x43, 0x05, 0x44, 0x05, 0x45, 0x05, 0x46, 0x05, 0x47, 0x05,
+	0x48, 0x05, 0x49, 0x05, 0x4A, 0x05, 0x4B, 0x05, 0x4C, 0x05, 0x4D, 0x05, 0x4E, 0x05, 0x4F, 0x05,
+	0x50, 0x05, 0x51, 0x05, 0x52, 0x05, 0x53, 0x05, 0x54, 0x05, 0x55, 0x05, 0x56, 0x05, 0x57, 0x05,
+	0x58, 0x05, 0x59, 0x05, 0x5A, 0x05, 0x5B, 0x05, 0x5C, 0x05, 0x5D, 0x05, 0x5E, 0x05, 0x5F, 0x05,
+	0x60, 0x05, 0x31, 0x05, 0x32, 0x05, 0x33, 0x05, 0x34, 0x05, 0x35, 0x05, 0x36, 0x05, 0x37, 0x05,
+	0x38, 0x05, 0x39, 0x05, 0x3A, 0x05, 0x3B, 0x05, 0x3C, 0x05, 0x3D, 0x05, 0x3E, 0x05, 0x3F, 0x05,
+	0x40, 0x05, 0x41, 0x05, 0x42, 0x05, 0x43, 0x05, 0x44, 0x05, 0x45, 0x05, 0x46, 0x05, 0x47, 0x05,
+	0x48, 0x05, 0x49, 0x05, 0x4A, 0x05, 0x4B, 0x05, 0x4C, 0x05, 0x4D, 0x05, 0x4E, 0x05, 0x4F, 0x05,
+	0x50, 0x05, 0x51, 0x05, 0x52, 0x05, 0x53, 0x05, 0x54, 0x05, 0x55, 0x05, 0x56, 0x05, 0xFF, 0xFF,
+	0xF6, 0x17, 0x63, 0x2C, 0x7E, 0x1D, 0x7F, 0x1D, 0x80, 0x1D, 0x81, 0x1D, 0x82, 0x1D, 0x83, 0x1D,
+	0x84, 0x1D, 0x85, 0x1D, 0x86, 0x1D, 0x87, 0x1D, 0x88, 0x1D, 0x89, 0x1D, 0x8A, 0x1D, 0x8B, 0x1D,
+	0x8C, 0x1D, 0x8D, 0x1D, 0x8E, 0x1D, 0x8F, 0x1D, 0x90, 0x1D, 0x91, 0x1D, 0x92, 0x1D, 0x93, 0x1D,
+	0x94, 0x1D, 0x95, 0x1D, 0x96, 0x1D, 0x97, 0x1D, 0x98, 0x1D, 0x99, 0x1D, 0x9A, 0x1D, 0x9B, 0x1D,
+	0x9C, 0x1D, 0x9D, 0x1D, 0x9E, 0x1D, 0x9F, 0x1D, 0xA0, 0x1D, 0xA1, 0x1D, 0xA2, 0x1D, 0xA3, 0x1D,
+	0xA4, 0x1D, 0xA5, 0x1D, 0xA6, 0x1D, 0xA7, 0x1D, 0xA8, 0x1D, 0xA9, 0x1D, 0xAA, 0x1D, 0xAB, 0x1D,
+	0xAC, 0x1D, 0xAD, 0x1D, 0xAE, 0x1D, 0xAF, 0x1D, 0xB0, 0x1D, 0xB1, 0x1D, 0xB2, 0x1D, 0xB3, 0x1D,
+	0xB4, 0x1D, 0xB5, 0x1D, 0xB6, 0x1D, 0xB7, 0x1D, 0xB8, 0x1D, 0xB9, 0x1D, 0xBA, 0x1D, 0xBB, 0x1D,
+	0xBC, 0x1D, 0xBD, 0x1D, 0xBE, 0x1D, 0xBF, 0x1D, 0xC0, 0x1D, 0xC1, 0x1D, 0xC2, 0x1D, 0xC3, 0x1D,
+	0xC4, 0x1D, 0xC5, 0x1D, 0xC6, 0x1D, 0xC7, 0x1D, 0xC8, 0x1D, 0xC9, 0x1D, 0xCA, 0x1D, 0xCB, 0x1D,
+	0xCC, 0x1D, 0xCD, 0x1D, 0xCE, 0x1D, 0xCF, 0x1D, 0xD0, 0x1D, 0xD1, 0x1D, 0xD2, 0x1D, 0xD3, 0x1D,
+	0xD4, 0x1D, 0xD5, 0x1D, 0xD6, 0x1D, 0xD7, 0x1D, 0xD8, 0x1D, 0xD9, 0x1D, 0xDA, 0x1D, 0xDB, 0x1D,
+	0xDC, 0x1D, 0xDD, 0x1D, 0xDE, 0x1D, 0xDF, 0x1D, 0xE0, 0x1D, 0xE1, 0x1D, 0xE2, 0x1D, 0xE3, 0x1D,
+	0xE4, 0x1D, 0xE5, 0x1D, 0xE6, 0x1D, 0xE7, 0x1D, 0xE8, 0x1D, 0xE9, 0x1D, 0xEA, 0x1D, 0xEB, 0x1D,
+	0xEC, 0x1D, 0xED, 0x1D, 0xEE, 0x1D, 0xEF, 0x1D, 0xF0, 0x1D, 0xF1, 0x1D, 0xF2, 0x1D, 0xF3, 0x1D,
+	0xF4, 0x1D, 0xF5, 0x1D, 0xF6, 0x1D, 0xF7, 0x1D, 0xF8, 0x1D, 0xF9, 0x1D, 0xFA, 0x1D, 0xFB, 0x1D,
+	0xFC, 0x1D, 0xFD, 0x1D, 0xFE, 0x1D, 0xFF, 0x1D, 0x00, 0x1E, 0x00, 0x1E, 0x02, 0x1E, 0x02, 0x1E,
+	0x04, 0x1E, 0x04, 0x1E, 0x06, 0x1E, 0x06, 0x1E, 0x08, 0x1E, 0x08, 0x1E, 0x0A, 0x1E, 0x0A, 0x1E,
+	0x0C, 0x1E, 0x0C, 0x1E, 0x0E, 0x1E, 0x0E, 0x1E, 0x10, 0x1E, 0x10, 0x1E, 0x12, 0x1E, 0x12, 0x1E,
+	0x14, 0x1E, 0x14, 0x1E, 0x16, 0x1E, 0x16, 0x1E, 0x18, 0x1E, 0x18, 0x1E, 0x1A, 0x1E, 0x1A, 0x1E,
+	0x1C, 0x1E, 0x1C, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E, 0x20, 0x1E, 0x20, 0x1E, 0x22, 0x1E, 0x22, 0x1E,
+	0x24, 0x1E, 0x24, 0x1E, 0x26, 0x1E, 0x26, 0x1E, 0x28, 0x1E, 0x28, 0x1E, 0x2A, 0x1E, 0x2A, 0x1E,
+	0x2C, 0x1E, 0x2C, 0x1E, 0x2E, 0x1E, 0x2E, 0x1E, 0x30, 0x1E, 0x30, 0x1E, 0x32, 0x1E, 0x32, 0x1E,
+	0x34, 0x1E, 0x34, 0x1E, 0x36, 0x1E, 0x36, 0x1E, 0x38, 0x1E, 0x38, 0x1E, 0x3A, 0x1E, 0x3A, 0x1E,
+	0x3C, 0x1E, 0x3C, 0x1E, 0x3E, 0x1E, 0x3E, 0x1E, 0x40, 0x1E, 0x40, 0x1E, 0x42, 0x1E, 0x42, 0x1E,
+	0x44, 0x1E, 0x44, 0x1E, 0x46, 0x1E, 0x46, 0x1E, 0x48, 0x1E, 0x48, 0x1E, 0x4A, 0x1E, 0x4A, 0x1E,
+	0x4C, 0x1E, 0x4C, 0x1E, 0x4E, 0x1E, 0x4E, 0x1E, 0x50, 0x1E, 0x50, 0x1E, 0x52, 0x1E, 0x52, 0x1E,
+	0x54, 0x1E, 0x54, 0x1E, 0x56, 0x1E, 0x56, 0x1E, 0x58, 0x1E, 0x58, 0x1E, 0x5A, 0x1E, 0x5A, 0x1E,
+	0x5C, 0x1E, 0x5C, 0x1E, 0x5E, 0x1E, 0x5E, 0x1E, 0x60, 0x1E, 0x60, 0x1E, 0x62, 0x1E, 0x62, 0x1E,
+	0x64, 0x1E, 0x64, 0x1E, 0x66, 0x1E, 0x66, 0x1E, 0x68, 0x1E, 0x68, 0x1E, 0x6A, 0x1E, 0x6A, 0x1E,
+	0x6C, 0x1E, 0x6C, 0x1E, 0x6E, 0x1E, 0x6E, 0x1E, 0x70, 0x1E, 0x70, 0x1E, 0x72, 0x1E, 0x72, 0x1E,
+	0x74, 0x1E, 0x74, 0x1E, 0x76, 0x1E, 0x76, 0x1E, 0x78, 0x1E, 0x78, 0x1E, 0x7A, 0x1E, 0x7A, 0x1E,
+	0x7C, 0x1E, 0x7C, 0x1E, 0x7E, 0x1E, 0x7E, 0x1E, 0x80, 0x1E, 0x80, 0x1E, 0x82, 0x1E, 0x82, 0x1E,
+	0x84, 0x1E, 0x84, 0x1E, 0x86, 0x1E, 0x86, 0x1E, 0x88, 0x1E, 0x88, 0x1E, 0x8A, 0x1E, 0x8A, 0x1E,
+	0x8C, 0x1E, 0x8C, 0x1E, 0x8E, 0x1E, 0x8E, 0x1E, 0x90, 0x1E, 0x90, 0x1E, 0x92, 0x1E, 0x92, 0x1E,
+	0x94, 0x1E, 0x94, 0x1E, 0x96, 0x1E, 0x97, 0x1E, 0x98, 0x1E, 0x99, 0x1E, 0x9A, 0x1E, 0x9B, 0x1E,
+	0x9C, 0x1E, 0x9D, 0x1E, 0x9E, 0x1E, 0x9F, 0x1E, 0xA0, 0x1E, 0xA0, 0x1E, 0xA2, 0x1E, 0xA2, 0x1E,
+	0xA4, 0x1E, 0xA4, 0x1E, 0xA6, 0x1E, 0xA6, 0x1E, 0xA8, 0x1E, 0xA8, 0x1E, 0xAA, 0x1E, 0xAA, 0x1E,
+	0xAC, 0x1E, 0xAC, 0x1E, 0xAE, 0x1E, 0xAE, 0x1E, 0xB0, 0x1E, 0xB0, 0x1E, 0xB2, 0x1E, 0xB2, 0x1E,
+	0xB4, 0x1E, 0xB4, 0x1E, 0xB6, 0x1E, 0xB6, 0x1E, 0xB8, 0x1E, 0xB8, 0x1E, 0xBA, 0x1E, 0xBA, 0x1E,
+	0xBC, 0x1E, 0xBC, 0x1E, 0xBE, 0x1E, 0xBE, 0x1E, 0xC0, 0x1E, 0xC0, 0x1E, 0xC2, 0x1E, 0xC2, 0x1E,
+	0xC4, 0x1E, 0xC4, 0x1E, 0xC6, 0x1E, 0xC6, 0x1E, 0xC8, 0x1E, 0xC8, 0x1E, 0xCA, 0x1E, 0xCA, 0x1E,
+	0xCC, 0x1E, 0xCC, 0x1E, 0xCE, 0x1E, 0xCE, 0x1E, 0xD0, 0x1E, 0xD0, 0x1E, 0xD2, 0x1E, 0xD2, 0x1E,
+	0xD4, 0x1E, 0xD4, 0x1E, 0xD6, 0x1E, 0xD6, 0x1E, 0xD8, 0x1E, 0xD8, 0x1E, 0xDA, 0x1E, 0xDA, 0x1E,
+	0xDC, 0x1E, 0xDC, 0x1E, 0xDE, 0x1E, 0xDE, 0x1E, 0xE0, 0x1E, 0xE0, 0x1E, 0xE2, 0x1E, 0xE2, 0x1E,
+	0xE4, 0x1E, 0xE4, 0x1E, 0xE6, 0x1E, 0xE6, 0x1E, 0xE8, 0x1E, 0xE8, 0x1E, 0xEA, 0x1E, 0xEA, 0x1E,
+	0xEC, 0x1E, 0xEC, 0x1E, 0xEE, 0x1E, 0xEE, 0x1E, 0xF0, 0x1E, 0xF0, 0x1E, 0xF2, 0x1E, 0xF2, 0x1E,
+	0xF4, 0x1E, 0xF4, 0x1E, 0xF6, 0x1E, 0xF6, 0x1E, 0xF8, 0x1E, 0xF8, 0x1E, 0xFA, 0x1E, 0xFB, 0x1E,
+	0xFC, 0x1E, 0xFD, 0x1E, 0xFE, 0x1E, 0xFF, 0x1E, 0x08, 0x1F, 0x09, 0x1F, 0x0A, 0x1F, 0x0B, 0x1F,
+	0x0C, 0x1F, 0x0D, 0x1F, 0x0E, 0x1F, 0x0F, 0x1F, 0x08, 0x1F, 0x09, 0x1F, 0x0A, 0x1F, 0x0B, 0x1F,
+	0x0C, 0x1F, 0x0D, 0x1F, 0x0E, 0x1F, 0x0F, 0x1F, 0x18, 0x1F, 0x19, 0x1F, 0x1A, 0x1F, 0x1B, 0x1F,
+	0x1C, 0x1F, 0x1D, 0x1F, 0x16, 0x1F, 0x17, 0x1F, 0x18, 0x1F, 0x19, 0x1F, 0x1A, 0x1F, 0x1B, 0x1F,
+	0x1C, 0x1F, 0x1D, 0x1F, 0x1E, 0x1F, 0x1F, 0x1F, 0x28, 0x1F, 0x29, 0x1F, 0x2A, 0x1F, 0x2B, 0x1F,
+	0x2C, 0x1F, 0x2D, 0x1F, 0x2E, 0x1F, 0x2F, 0x1F, 0x28, 0x1F, 0x29, 0x1F, 0x2A, 0x1F, 0x2B, 0x1F,
+	0x2C, 0x1F, 0x2D, 0x1F, 0x2E, 0x1F, 0x2F, 0x1F, 0x38, 0x1F, 0x39, 0x1F, 0x3A, 0x1F, 0x3B, 0x1F,
+	0x3C, 0x1F, 0x3D, 0x1F, 0x3E, 0x1F, 0x3F, 0x1F, 0x38, 0x1F, 0x39, 0x1F, 0x3A, 0x1F, 0x3B, 0x1F,
+	0x3C, 0x1F, 0x3D, 0x1F, 0x3E, 0x1F, 0x3F, 0x1F, 0x48, 0x1F, 0x49, 0x1F, 0x4A, 0x1F, 0x4B, 0x1F,
+	0x4C, 0x1F, 0x4D, 0x1F, 0x46, 0x1F, 0x47, 0x1F, 0x48, 0x1F, 0x49, 0x1F, 0x4A, 0x1F, 0x4B, 0x1F,
+	0x4C, 0x1F, 0x4D, 0x1F, 0x4E, 0x1F, 0x4F, 0x1F, 0x50, 0x1F, 0x59, 0x1F, 0x52, 0x1F, 0x5B, 0x1F,
+	0x54, 0x1F, 0x5D, 0x1F, 0x56, 0x1F, 0x5F, 0x1F, 0x58, 0x1F, 0x59, 0x1F, 0x5A, 0x1F, 0x5B, 0x1F,
+	0x5C, 0x1F, 0x5D, 0x1F, 0x5E, 0x1F, 0x5F, 0x1F, 0x68, 0x1F, 0x69, 0x1F, 0x6A, 0x1F, 0x6B, 0x1F,
+	0x6C, 0x1F, 0x6D, 0x1F, 0x6E, 0x1F, 0x6F, 0x1F, 0x68, 0x1F, 0x69, 0x1F, 0x6A, 0x1F, 0x6B, 0x1F,
+	0x6C, 0x1F, 0x6D, 0x1F, 0x6E, 0x1F, 0x6F, 0x1F, 0xBA, 0x1F, 0xBB, 0x1F, 0xC8, 0x1F, 0xC9, 0x1F,
+	0xCA, 0x1F, 0xCB, 0x1F, 0xDA, 0x1F, 0xDB, 0x1F, 0xF8, 0x1F, 0xF9, 0x1F, 0xEA, 0x1F, 0xEB, 0x1F,
+	0xFA, 0x1F, 0xFB, 0x1F, 0x7E, 0x1F, 0x7F, 0x1F, 0x88, 0x1F, 0x89, 0x1F, 0x8A, 0x1F, 0x8B, 0x1F,
+	0x8C, 0x1F, 0x8D, 0x1F, 0x8E, 0x1F, 0x8F, 0x1F, 0x88, 0x1F, 0x89, 0x1F, 0x8A, 0x1F, 0x8B, 0x1F,
+	0x8C, 0x1F, 0x8D, 0x1F, 0x8E, 0x1F, 0x8F, 0x1F, 0x98, 0x1F, 0x99, 0x1F, 0x9A, 0x1F, 0x9B, 0x1F,
+	0x9C, 0x1F, 0x9D, 0x1F, 0x9E, 0x1F, 0x9F, 0x1F, 0x98, 0x1F, 0x99, 0x1F, 0x9A, 0x1F, 0x9B, 0x1F,
+	0x9C, 0x1F, 0x9D, 0x1F, 0x9E, 0x1F, 0x9F, 0x1F, 0xA8, 0x1F, 0xA9, 0x1F, 0xAA, 0x1F, 0xAB, 0x1F,
+	0xAC, 0x1F, 0xAD, 0x1F, 0xAE, 0x1F, 0xAF, 0x1F, 0xA8, 0x1F, 0xA9, 0x1F, 0xAA, 0x1F, 0xAB, 0x1F,
+	0xAC, 0x1F, 0xAD, 0x1F, 0xAE, 0x1F, 0xAF, 0x1F, 0xB8, 0x1F, 0xB9, 0x1F, 0xB2, 0x1F, 0xBC, 0x1F,
+	0xB4, 0x1F, 0xB5, 0x1F, 0xB6, 0x1F, 0xB7, 0x1F, 0xB8, 0x1F, 0xB9, 0x1F, 0xBA, 0x1F, 0xBB, 0x1F,
+	0xBC, 0x1F, 0xBD, 0x1F, 0xBE, 0x1F, 0xBF, 0x1F, 0xC0, 0x1F, 0xC1, 0x1F, 0xC2, 0x1F, 0xC3, 0x1F,
+	0xC4, 0x1F, 0xC5, 0x1F, 0xC6, 0x1F, 0xC7, 0x1F, 0xC8, 0x1F, 0xC9, 0x1F, 0xCA, 0x1F, 0xCB, 0x1F,
+	0xC3, 0x1F, 0xCD, 0x1F, 0xCE, 0x1F, 0xCF, 0x1F, 0xD8, 0x1F, 0xD9, 0x1F, 0xD2, 0x1F, 0xD3, 0x1F,
+	0xD4, 0x1F, 0xD5, 0x1F, 0xD6, 0x1F, 0xD7, 0x1F, 0xD8, 0x1F, 0xD9, 0x1F, 0xDA, 0x1F, 0xDB, 0x1F,
+	0xDC, 0x1F, 0xDD, 0x1F, 0xDE, 0x1F, 0xDF, 0x1F, 0xE8, 0x1F, 0xE9, 0x1F, 0xE2, 0x1F, 0xE3, 0x1F,
+	0xE4, 0x1F, 0xEC, 0x1F, 0xE6, 0x1F, 0xE7, 0x1F, 0xE8, 0x1F, 0xE9, 0x1F, 0xEA, 0x1F, 0xEB, 0x1F,
+	0xEC, 0x1F, 0xED, 0x1F, 0xEE, 0x1F, 0xEF, 0x1F, 0xF0, 0x1F, 0xF1, 0x1F, 0xF2, 0x1F, 0xF3, 0x1F,
+	0xF4, 0x1F, 0xF5, 0x1F, 0xF6, 0x1F, 0xF7, 0x1F, 0xF8, 0x1F, 0xF9, 0x1F, 0xFA, 0x1F, 0xFB, 0x1F,
+	0xF3, 0x1F, 0xFD, 0x1F, 0xFE, 0x1F, 0xFF, 0x1F, 0x00, 0x20, 0x01, 0x20, 0x02, 0x20, 0x03, 0x20,
+	0x04, 0x20, 0x05, 0x20, 0x06, 0x20, 0x07, 0x20, 0x08, 0x20, 0x09, 0x20, 0x0A, 0x20, 0x0B, 0x20,
+	0x0C, 0x20, 0x0D, 0x20, 0x0E, 0x20, 0x0F, 0x20, 0x10, 0x20, 0x11, 0x20, 0x12, 0x20, 0x13, 0x20,
+	0x14, 0x20, 0x15, 0x20, 0x16, 0x20, 0x17, 0x20, 0x18, 0x20, 0x19, 0x20, 0x1A, 0x20, 0x1B, 0x20,
+	0x1C, 0x20, 0x1D, 0x20, 0x1E, 0x20, 0x1F, 0x20, 0x20, 0x20, 0x21, 0x20, 0x22, 0x20, 0x23, 0x20,
+	0x24, 0x20, 0x25, 0x20, 0x26, 0x20, 0x27, 0x20, 0x28, 0x20, 0x29, 0x20, 0x2A, 0x20, 0x2B, 0x20,
+	0x2C, 0x20, 0x2D, 0x20, 0x2E, 0x20, 0x2F, 0x20, 0x30, 0x20, 0x31, 0x20, 0x32, 0x20, 0x33, 0x20,
+	0x34, 0x20, 0x35, 0x20, 0x36, 0x20, 0x37, 0x20, 0x38, 0x20, 0x39, 0x20, 0x3A, 0x20, 0x3B, 0x20,
+	0x3C, 0x20, 0x3D, 0x20, 0x3E, 0x20, 0x3F, 0x20, 0x40, 0x20, 0x41, 0x20, 0x42, 0x20, 0x43, 0x20,
+	0x44, 0x20, 0x45, 0x20, 0x46, 0x20, 0x47, 0x20, 0x48, 0x20, 0x49, 0x20, 0x4A, 0x20, 0x4B, 0x20,
+	0x4C, 0x20, 0x4D, 0x20, 0x4E, 0x20, 0x4F, 0x20, 0x50, 0x20, 0x51, 0x20, 0x52, 0x20, 0x53, 0x20,
+	0x54, 0x20, 0x55, 0x20, 0x56, 0x20, 0x57, 0x20, 0x58, 0x20, 0x59, 0x20, 0x5A, 0x20, 0x5B, 0x20,
+	0x5C, 0x20, 0x5D, 0x20, 0x5E, 0x20, 0x5F, 0x20, 0x60, 0x20, 0x61, 0x20, 0x62, 0x20, 0x63, 0x20,
+	0x64, 0x20, 0x65, 0x20, 0x66, 0x20, 0x67, 0x20, 0x68, 0x20, 0x69, 0x20, 0x6A, 0x20, 0x6B, 0x20,
+	0x6C, 0x20, 0x6D, 0x20, 0x6E, 0x20, 0x6F, 0x20, 0x70, 0x20, 0x71, 0x20, 0x72, 0x20, 0x73, 0x20,
+	0x74, 0x20, 0x75, 0x20, 0x76, 0x20, 0x77, 0x20, 0x78, 0x20, 0x79, 0x20, 0x7A, 0x20, 0x7B, 0x20,
+	0x7C, 0x20, 0x7D, 0x20, 0x7E, 0x20, 0x7F, 0x20, 0x80, 0x20, 0x81, 0x20, 0x82, 0x20, 0x83, 0x20,
+	0x84, 0x20, 0x85, 0x20, 0x86, 0x20, 0x87, 0x20, 0x88, 0x20, 0x89, 0x20, 0x8A, 0x20, 0x8B, 0x20,
+	0x8C, 0x20, 0x8D, 0x20, 0x8E, 0x20, 0x8F, 0x20, 0x90, 0x20, 0x91, 0x20, 0x92, 0x20, 0x93, 0x20,
+	0x94, 0x20, 0x95, 0x20, 0x96, 0x20, 0x97, 0x20, 0x98, 0x20, 0x99, 0x20, 0x9A, 0x20, 0x9B, 0x20,
+	0x9C, 0x20, 0x9D, 0x20, 0x9E, 0x20, 0x9F, 0x20, 0xA0, 0x20, 0xA1, 0x20, 0xA2, 0x20, 0xA3, 0x20,
+	0xA4, 0x20, 0xA5, 0x20, 0xA6, 0x20, 0xA7, 0x20, 0xA8, 0x20, 0xA9, 0x20, 0xAA, 0x20, 0xAB, 0x20,
+	0xAC, 0x20, 0xAD, 0x20, 0xAE, 0x20, 0xAF, 0x20, 0xB0, 0x20, 0xB1, 0x20, 0xB2, 0x20, 0xB3, 0x20,
+	0xB4, 0x20, 0xB5, 0x20, 0xB6, 0x20, 0xB7, 0x20, 0xB8, 0x20, 0xB9, 0x20, 0xBA, 0x20, 0xBB, 0x20,
+	0xBC, 0x20, 0xBD, 0x20, 0xBE, 0x20, 0xBF, 0x20, 0xC0, 0x20, 0xC1, 0x20, 0xC2, 0x20, 0xC3, 0x20,
+	0xC4, 0x20, 0xC5, 0x20, 0xC6, 0x20, 0xC7, 0x20, 0xC8, 0x20, 0xC9, 0x20, 0xCA, 0x20, 0xCB, 0x20,
+	0xCC, 0x20, 0xCD, 0x20, 0xCE, 0x20, 0xCF, 0x20, 0xD0, 0x20, 0xD1, 0x20, 0xD2, 0x20, 0xD3, 0x20,
+	0xD4, 0x20, 0xD5, 0x20, 0xD6, 0x20, 0xD7, 0x20, 0xD8, 0x20, 0xD9, 0x20, 0xDA, 0x20, 0xDB, 0x20,
+	0xDC, 0x20, 0xDD, 0x20, 0xDE, 0x20, 0xDF, 0x20, 0xE0, 0x20, 0xE1, 0x20, 0xE2, 0x20, 0xE3, 0x20,
+	0xE4, 0x20, 0xE5, 0x20, 0xE6, 0x20, 0xE7, 0x20, 0xE8, 0x20, 0xE9, 0x20, 0xEA, 0x20, 0xEB, 0x20,
+	0xEC, 0x20, 0xED, 0x20, 0xEE, 0x20, 0xEF, 0x20, 0xF0, 0x20, 0xF1, 0x20, 0xF2, 0x20, 0xF3, 0x20,
+	0xF4, 0x20, 0xF5, 0x20, 0xF6, 0x20, 0xF7, 0x20, 0xF8, 0x20, 0xF9, 0x20, 0xFA, 0x20, 0xFB, 0x20,
+	0xFC, 0x20, 0xFD, 0x20, 0xFE, 0x20, 0xFF, 0x20, 0x00, 0x21, 0x01, 0x21, 0x02, 0x21, 0x03, 0x21,
+	0x04, 0x21, 0x05, 0x21, 0x06, 0x21, 0x07, 0x21, 0x08, 0x21, 0x09, 0x21, 0x0A, 0x21, 0x0B, 0x21,
+	0x0C, 0x21, 0x0D, 0x21, 0x0E, 0x21, 0x0F, 0x21, 0x10, 0x21, 0x11, 0x21, 0x12, 0x21, 0x13, 0x21,
+	0x14, 0x21, 0x15, 0x21, 0x16, 0x21, 0x17, 0x21, 0x18, 0x21, 0x19, 0x21, 0x1A, 0x21, 0x1B, 0x21,
+	0x1C, 0x21, 0x1D, 0x21, 0x1E, 0x21, 0x1F, 0x21, 0x20, 0x21, 0x21, 0x21, 0x22, 0x21, 0x23, 0x21,
+	0x24, 0x21, 0x25, 0x21, 0x26, 0x21, 0x27, 0x21, 0x28, 0x21, 0x29, 0x21, 0x2A, 0x21, 0x2B, 0x21,
+	0x2C, 0x21, 0x2D, 0x21, 0x2E, 0x21, 0x2F, 0x21, 0x30, 0x21, 0x31, 0x21, 0x32, 0x21, 0x33, 0x21,
+	0x34, 0x21, 0x35, 0x21, 0x36, 0x21, 0x37, 0x21, 0x38, 0x21, 0x39, 0x21, 0x3A, 0x21, 0x3B, 0x21,
+	0x3C, 0x21, 0x3D, 0x21, 0x3E, 0x21, 0x3F, 0x21, 0x40, 0x21, 0x41, 0x21, 0x42, 0x21, 0x43, 0x21,
+	0x44, 0x21, 0x45, 0x21, 0x46, 0x21, 0x47, 0x21, 0x48, 0x21, 0x49, 0x21, 0x4A, 0x21, 0x4B, 0x21,
+	0x4C, 0x21, 0x4D, 0x21, 0x32, 0x21, 0x4F, 0x21, 0x50, 0x21, 0x51, 0x21, 0x52, 0x21, 0x53, 0x21,
+	0x54, 0x21, 0x55, 0x21, 0x56, 0x21, 0x57, 0x21, 0x58, 0x21, 0x59, 0x21, 0x5A, 0x21, 0x5B, 0x21,
+	0x5C, 0x21, 0x5D, 0x21, 0x5E, 0x21, 0x5F, 0x21, 0x60, 0x21, 0x61, 0x21, 0x62, 0x21, 0x63, 0x21,
+	0x64, 0x21, 0x65, 0x21, 0x66, 0x21, 0x67, 0x21, 0x68, 0x21, 0x69, 0x21, 0x6A, 0x21, 0x6B, 0x21,
+	0x6C, 0x21, 0x6D, 0x21, 0x6E, 0x21, 0x6F, 0x21, 0x60, 0x21, 0x61, 0x21, 0x62, 0x21, 0x63, 0x21,
+	0x64, 0x21, 0x65, 0x21, 0x66, 0x21, 0x67, 0x21, 0x68, 0x21, 0x69, 0x21, 0x6A, 0x21, 0x6B, 0x21,
+	0x6C, 0x21, 0x6D, 0x21, 0x6E, 0x21, 0x6F, 0x21, 0x80, 0x21, 0x81, 0x21, 0x82, 0x21, 0x83, 0x21,
+	0x83, 0x21, 0xFF, 0xFF, 0x4B, 0x03, 0xB6, 0x24, 0xB7, 0x24, 0xB8, 0x24, 0xB9, 0x24, 0xBA, 0x24,
+	0xBB, 0x24, 0xBC, 0x24, 0xBD, 0x24, 0xBE, 0x24, 0xBF, 0x24, 0xC0, 0x24, 0xC1, 0x24, 0xC2, 0x24,
+	0xC3, 0x24, 0xC4, 0x24, 0xC5, 0x24, 0xC6, 0x24, 0xC7, 0x24, 0xC8, 0x24, 0xC9, 0x24, 0xCA, 0x24,
+	0xCB, 0x24, 0xCC, 0x24, 0xCD, 0x24, 0xCE, 0x24, 0xCF, 0x24, 0xFF, 0xFF, 0x46, 0x07, 0x00, 0x2C,
+	0x01, 0x2C, 0x02, 0x2C, 0x03, 0x2C, 0x04, 0x2C, 0x05, 0x2C, 0x06, 0x2C, 0x07, 0x2C, 0x08, 0x2C,
+	0x09, 0x2C, 0x0A, 0x2C, 0x0B, 0x2C, 0x0C, 0x2C, 0x0D, 0x2C, 0x0E, 0x2C, 0x0F, 0x2C, 0x10, 0x2C,
+	0x11, 0x2C, 0x12, 0x2C, 0x13, 0x2C, 0x14, 0x2C, 0x15, 0x2C, 0x16, 0x2C, 0x17, 0x2C, 0x18, 0x2C,
+	0x19, 0x2C, 0x1A, 0x2C, 0x1B, 0x2C, 0x1C, 0x2C, 0x1D, 0x2C, 0x1E, 0x2C, 0x1F, 0x2C, 0x20, 0x2C,
+	0x21, 0x2C, 0x22, 0x2C, 0x23, 0x2C, 0x24, 0x2C, 0x25, 0x2C, 0x26, 0x2C, 0x27, 0x2C, 0x28, 0x2C,
+	0x29, 0x2C, 0x2A, 0x2C, 0x2B, 0x2C, 0x2C, 0x2C, 0x2D, 0x2C, 0x2E, 0x2C, 0x5F, 0x2C, 0x60, 0x2C,
+	0x60, 0x2C, 0x62, 0x2C, 0x63, 0x2C, 0x64, 0x2C, 0x65, 0x2C, 0x66, 0x2C, 0x67, 0x2C, 0x67, 0x2C,
+	0x69, 0x2C, 0x69, 0x2C, 0x6B, 0x2C, 0x6B, 0x2C, 0x6D, 0x2C, 0x6E, 0x2C, 0x6F, 0x2C, 0x70, 0x2C,
+	0x71, 0x2C, 0x72, 0x2C, 0x73, 0x2C, 0x74, 0x2C, 0x75, 0x2C, 0x75, 0x2C, 0x77, 0x2C, 0x78, 0x2C,
+	0x79, 0x2C, 0x7A, 0x2C, 0x7B, 0x2C, 0x7C, 0x2C, 0x7D, 0x2C, 0x7E, 0x2C, 0x7F, 0x2C, 0x80, 0x2C,
+	0x80, 0x2C, 0x82, 0x2C, 0x82, 0x2C, 0x84, 0x2C, 0x84, 0x2C, 0x86, 0x2C, 0x86, 0x2C, 0x88, 0x2C,
+	0x88, 0x2C, 0x8A, 0x2C, 0x8A, 0x2C, 0x8C, 0x2C, 0x8C, 0x2C, 0x8E, 0x2C, 0x8E, 0x2C, 0x90, 0x2C,
+	0x90, 0x2C, 0x92, 0x2C, 0x92, 0x2C, 0x94, 0x2C, 0x94, 0x2C, 0x96, 0x2C, 0x96, 0x2C, 0x98, 0x2C,
+	0x98, 0x2C, 0x9A, 0x2C, 0x9A, 0x2C, 0x9C, 0x2C, 0x9C, 0x2C, 0x9E, 0x2C, 0x9E, 0x2C, 0xA0, 0x2C,
+	0xA0, 0x2C, 0xA2, 0x2C, 0xA2, 0x2C, 0xA4, 0x2C, 0xA4, 0x2C, 0xA6, 0x2C, 0xA6, 0x2C, 0xA8, 0x2C,
+	0xA8, 0x2C, 0xAA, 0x2C, 0xAA, 0x2C, 0xAC, 0x2C, 0xAC, 0x2C, 0xAE, 0x2C, 0xAE, 0x2C, 0xB0, 0x2C,
+	0xB0, 0x2C, 0xB2, 0x2C, 0xB2, 0x2C, 0xB4, 0x2C, 0xB4, 0x2C, 0xB6, 0x2C, 0xB6, 0x2C, 0xB8, 0x2C,
+	0xB8, 0x2C, 0xBA, 0x2C, 0xBA, 0x2C, 0xBC, 0x2C, 0xBC, 0x2C, 0xBE, 0x2C, 0xBE, 0x2C, 0xC0, 0x2C,
+	0xC0, 0x2C, 0xC2, 0x2C, 0xC2, 0x2C, 0xC4, 0x2C, 0xC4, 0x2C, 0xC6, 0x2C, 0xC6, 0x2C, 0xC8, 0x2C,
+	0xC8, 0x2C, 0xCA, 0x2C, 0xCA, 0x2C, 0xCC, 0x2C, 0xCC, 0x2C, 0xCE, 0x2C, 0xCE, 0x2C, 0xD0, 0x2C,
+	0xD0, 0x2C, 0xD2, 0x2C, 0xD2, 0x2C, 0xD4, 0x2C, 0xD4, 0x2C, 0xD6, 0x2C, 0xD6, 0x2C, 0xD8, 0x2C,
+	0xD8, 0x2C, 0xDA, 0x2C, 0xDA, 0x2C, 0xDC, 0x2C, 0xDC, 0x2C, 0xDE, 0x2C, 0xDE, 0x2C, 0xE0, 0x2C,
+	0xE0, 0x2C, 0xE2, 0x2C, 0xE2, 0x2C, 0xE4, 0x2C, 0xE5, 0x2C, 0xE6, 0x2C, 0xE7, 0x2C, 0xE8, 0x2C,
+	0xE9, 0x2C, 0xEA, 0x2C, 0xEB, 0x2C, 0xEC, 0x2C, 0xED, 0x2C, 0xEE, 0x2C, 0xEF, 0x2C, 0xF0, 0x2C,
+	0xF1, 0x2C, 0xF2, 0x2C, 0xF3, 0x2C, 0xF4, 0x2C, 0xF5, 0x2C, 0xF6, 0x2C, 0xF7, 0x2C, 0xF8, 0x2C,
+	0xF9, 0x2C, 0xFA, 0x2C, 0xFB, 0x2C, 0xFC, 0x2C, 0xFD, 0x2C, 0xFE, 0x2C, 0xFF, 0x2C, 0xA0, 0x10,
+	0xA1, 0x10, 0xA2, 0x10, 0xA3, 0x10, 0xA4, 0x10, 0xA5, 0x10, 0xA6, 0x10, 0xA7, 0x10, 0xA8, 0x10,
+	0xA9, 0x10, 0xAA, 0x10, 0xAB, 0x10, 0xAC, 0x10, 0xAD, 0x10, 0xAE, 0x10, 0xAF, 0x10, 0xB0, 0x10,
+	0xB1, 0x10, 0xB2, 0x10, 0xB3, 0x10, 0xB4, 0x10, 0xB5, 0x10, 0xB6, 0x10, 0xB7, 0x10, 0xB8, 0x10,
+	0xB9, 0x10, 0xBA, 0x10, 0xBB, 0x10, 0xBC, 0x10, 0xBD, 0x10, 0xBE, 0x10, 0xBF, 0x10, 0xC0, 0x10,
+	0xC1, 0x10, 0xC2, 0x10, 0xC3, 0x10, 0xC4, 0x10, 0xC5, 0x10, 0xFF, 0xFF, 0x1B, 0xD2, 0x21, 0xFF,
+	0x22, 0xFF, 0x23, 0xFF, 0x24, 0xFF, 0x25, 0xFF, 0x26, 0xFF, 0x27, 0xFF, 0x28, 0xFF, 0x29, 0xFF,
+	0x2A, 0xFF, 0x2B, 0xFF, 0x2C, 0xFF, 0x2D, 0xFF, 0x2E, 0xFF, 0x2F, 0xFF, 0x30, 0xFF, 0x31, 0xFF,
+	0x32, 0xFF, 0x33, 0xFF, 0x34, 0xFF, 0x35, 0xFF, 0x36, 0xFF, 0x37, 0xFF, 0x38, 0xFF, 0x39, 0xFF,
+	0x3A, 0xFF, 0x5B, 0xFF, 0x5C, 0xFF, 0x5D, 0xFF, 0x5E, 0xFF, 0x5F, 0xFF, 0x60, 0xFF, 0x61, 0xFF,
+	0x62, 0xFF, 0x63, 0xFF, 0x64, 0xFF, 0x65, 0xFF, 0x66, 0xFF, 0x67, 0xFF, 0x68, 0xFF, 0x69, 0xFF,
+	0x6A, 0xFF, 0x6B, 0xFF, 0x6C, 0xFF, 0x6D, 0xFF, 0x6E, 0xFF, 0x6F, 0xFF, 0x70, 0xFF, 0x71, 0xFF,
+	0x72, 0xFF, 0x73, 0xFF, 0x74, 0xFF, 0x75, 0xFF, 0x76, 0xFF, 0x77, 0xFF, 0x78, 0xFF, 0x79, 0xFF,
+	0x7A, 0xFF, 0x7B, 0xFF, 0x7C, 0xFF, 0x7D, 0xFF, 0x7E, 0xFF, 0x7F, 0xFF, 0x80, 0xFF, 0x81, 0xFF,
+	0x82, 0xFF, 0x83, 0xFF, 0x84, 0xFF, 0x85, 0xFF, 0x86, 0xFF, 0x87, 0xFF, 0x88, 0xFF, 0x89, 0xFF,
+	0x8A, 0xFF, 0x8B, 0xFF, 0x8C, 0xFF, 0x8D, 0xFF, 0x8E, 0xFF, 0x8F, 0xFF, 0x90, 0xFF, 0x91, 0xFF,
+	0x92, 0xFF, 0x93, 0xFF, 0x94, 0xFF, 0x95, 0xFF, 0x96, 0xFF, 0x97, 0xFF, 0x98, 0xFF, 0x99, 0xFF,
+	0x9A, 0xFF, 0x9B, 0xFF, 0x9C, 0xFF, 0x9D, 0xFF, 0x9E, 0xFF, 0x9F, 0xFF, 0xA0, 0xFF, 0xA1, 0xFF,
+	0xA2, 0xFF, 0xA3, 0xFF, 0xA4, 0xFF, 0xA5, 0xFF, 0xA6, 0xFF, 0xA7, 0xFF, 0xA8, 0xFF, 0xA9, 0xFF,
+	0xAA, 0xFF, 0xAB, 0xFF, 0xAC, 0xFF, 0xAD, 0xFF, 0xAE, 0xFF, 0xAF, 0xFF, 0xB0, 0xFF, 0xB1, 0xFF,
+	0xB2, 0xFF, 0xB3, 0xFF, 0xB4, 0xFF, 0xB5, 0xFF, 0xB6, 0xFF, 0xB7, 0xFF, 0xB8, 0xFF, 0xB9, 0xFF,
+	0xBA, 0xFF, 0xBB, 0xFF, 0xBC, 0xFF, 0xBD, 0xFF, 0xBE, 0xFF, 0xBF, 0xFF, 0xC0, 0xFF, 0xC1, 0xFF,
+	0xC2, 0xFF, 0xC3, 0xFF, 0xC4, 0xFF, 0xC5, 0xFF, 0xC6, 0xFF, 0xC7, 0xFF, 0xC8, 0xFF, 0xC9, 0xFF,
+	0xCA, 0xFF, 0xCB, 0xFF, 0xCC, 0xFF, 0xCD, 0xFF, 0xCE, 0xFF, 0xCF, 0xFF, 0xD0, 0xFF, 0xD1, 0xFF,
+	0xD2, 0xFF, 0xD3, 0xFF, 0xD4, 0xFF, 0xD5, 0xFF, 0xD6, 0xFF, 0xD7, 0xFF, 0xD8, 0xFF, 0xD9, 0xFF,
+	0xDA, 0xFF, 0xDB, 0xFF, 0xDC, 0xFF, 0xDD, 0xFF, 0xDE, 0xFF, 0xDF, 0xFF, 0xE0, 0xFF, 0xE1, 0xFF,
+	0xE2, 0xFF, 0xE3, 0xFF, 0xE4, 0xFF, 0xE5, 0xFF, 0xE6, 0xFF, 0xE7, 0xFF, 0xE8, 0xFF, 0xE9, 0xFF,
+	0xEA, 0xFF, 0xEB, 0xFF, 0xEC, 0xFF, 0xED, 0xFF, 0xEE, 0xFF, 0xEF, 0xFF, 0xF0, 0xFF, 0xF1, 0xFF,
+	0xF2, 0xFF, 0xF3, 0xFF, 0xF4, 0xFF, 0xF5, 0xFF, 0xF6, 0xFF, 0xF7, 0xFF, 0xF8, 0xFF, 0xF9, 0xFF,
+	0xFA, 0xFF, 0xFB, 0xFF, 0xFC, 0xFF, 0xFD, 0xFF, 0xFE, 0xFF, 0xFF, 0xFF
+};
+
+#endif /* _UPCASE_H */
diff --git a/drivers/staging/exfat/xattr.c b/drivers/staging/exfat/xattr.c
new file mode 100644
index 000000000000..101877dfa27a
--- /dev/null
+++ b/drivers/staging/exfat/xattr.c
@@ -0,0 +1,76 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2012-2013 Samsung Electronics Co., Ltd.
+ *
+ *  xattr.c: exFAT code for supporting xattr(Extended File Attributes)
+ */
+
+#include "config.h"
+
+#ifdef CONFIG_EXFAT_VIRTUAL_XATTR
+
+#include <linux/file.h>
+#include <linux/fs.h>
+#include <linux/xattr.h>
+#include <linux/dcache.h>
+#include "exfat.h"
+
+#ifndef CONFIG_EXFAT_VIRTUAL_XATTR_SELINUX_LABEL
+#define CONFIG_EXFAT_VIRTUAL_XATTR_SELINUX_LABEL	("undefined")
+#endif
+
+static const char default_xattr[] = CONFIG_EXFAT_VIRTUAL_XATTR_SELINUX_LABEL;
+
+static int can_support(const char *name)
+{
+	if (!name || strcmp(name, "security.selinux"))
+		return -1;
+	return 0;
+}
+
+ssize_t exfat_listxattr(struct dentry *dentry, char *list, size_t size)
+{
+	return 0;
+}
+
+static int exfat_xattr_get(const struct xattr_handler *handler,
+		struct dentry *dentry, struct inode *inode,
+		const char *name, void *buffer, size_t size)
+{
+	if (can_support(name))
+		return -EOPNOTSUPP;
+
+	if ((size > strlen(default_xattr)+1) && buffer)
+		strcpy(buffer, default_xattr);
+
+	return strlen(default_xattr);
+}
+
+static int exfat_xattr_set(const struct xattr_handler *handler,
+		struct dentry *dentry, struct inode *inode,
+		const char *name, const void *value, size_t size,
+		int flags)
+{
+	if (can_support(name))
+		return -EOPNOTSUPP;
+
+	return 0;
+}
+
+const struct xattr_handler exfat_xattr_handler = {
+	.prefix = "",  /* match anything */
+	.get = exfat_xattr_get,
+	.set = exfat_xattr_set,
+};
+
+const struct xattr_handler *exfat_xattr_handlers[] = {
+	&exfat_xattr_handler,
+	NULL
+};
+
+void setup_exfat_xattr_handler(struct super_block *sb)
+{
+	sb->s_xattr = exfat_xattr_handlers;
+}
+
+#endif /* CONFIG_EXFAT_VIRTUAL_XATTR */
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

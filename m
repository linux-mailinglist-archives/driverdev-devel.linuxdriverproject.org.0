Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7E37854F
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 08:52:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C103A86A36;
	Mon, 29 Jul 2019 06:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X-35WjqBAkbj; Mon, 29 Jul 2019 06:52:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FB6B86978;
	Mon, 29 Jul 2019 06:52:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 770471BF40D
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F836878A5
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WBpHrgRrBG6n for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 06:52:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5212D878A1
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 06:52:30 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 16BD23741BC7E5CDB2FA;
 Mon, 29 Jul 2019 14:52:25 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 14:52:14 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 01/22] staging: erofs: update source file headers
Date: Mon, 29 Jul 2019 14:51:38 +0800
Message-ID: <20190729065159.62378-2-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190729065159.62378-1-gaoxiang25@huawei.com>
References: <20190729065159.62378-1-gaoxiang25@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.140.130.215]
X-CFilter-Loop: Reflected
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
Cc: linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

- Use the correct style for all SPDX License Identifiers;
- Get rid of the unnecessary license boilerplate;
- Use "GPL-2.0-only" instead of "GPL-2.0" suggested-by Stephen.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/Kconfig                      | 2 +-
 drivers/staging/erofs/Makefile                     | 2 +-
 drivers/staging/erofs/compress.h                   | 2 +-
 drivers/staging/erofs/data.c                       | 6 +-----
 drivers/staging/erofs/decompressor.c               | 2 +-
 drivers/staging/erofs/dir.c                        | 6 +-----
 drivers/staging/erofs/erofs_fs.h                   | 8 ++------
 drivers/staging/erofs/include/linux/tagptr.h       | 6 +++---
 drivers/staging/erofs/include/trace/events/erofs.h | 2 +-
 drivers/staging/erofs/inode.c                      | 6 +-----
 drivers/staging/erofs/internal.h                   | 8 ++------
 drivers/staging/erofs/namei.c                      | 6 +-----
 drivers/staging/erofs/super.c                      | 6 +-----
 drivers/staging/erofs/unzip_pagevec.h              | 8 ++------
 drivers/staging/erofs/unzip_vle.c                  | 6 +-----
 drivers/staging/erofs/unzip_vle.h                  | 8 ++------
 drivers/staging/erofs/utils.c                      | 7 +------
 drivers/staging/erofs/xattr.c                      | 6 +-----
 drivers/staging/erofs/xattr.h                      | 8 ++------
 drivers/staging/erofs/zmap.c                       | 2 +-
 20 files changed, 27 insertions(+), 80 deletions(-)

diff --git a/drivers/staging/erofs/Kconfig b/drivers/staging/erofs/Kconfig
index d04b798a8efb..2577cbb46a5b 100644
--- a/drivers/staging/erofs/Kconfig
+++ b/drivers/staging/erofs/Kconfig
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: GPL-2.0-only
 
 config EROFS_FS
 	tristate "EROFS filesystem support"
diff --git a/drivers/staging/erofs/Makefile b/drivers/staging/erofs/Makefile
index e704d9e51514..3ade87e78d06 100644
--- a/drivers/staging/erofs/Makefile
+++ b/drivers/staging/erofs/Makefile
@@ -1,4 +1,4 @@
-# SPDX-License-Identifier: GPL-2.0
+# SPDX-License-Identifier: GPL-2.0-only
 
 EROFS_VERSION = "1.0pre1"
 
diff --git a/drivers/staging/erofs/compress.h b/drivers/staging/erofs/compress.h
index c43aa3374d28..043013f9ef1b 100644
--- a/drivers/staging/erofs/compress.h
+++ b/drivers/staging/erofs/compress.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0 */
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * linux/drivers/staging/erofs/compress.h
  *
diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
index f73e4720cd3e..75b859e48084 100644
--- a/drivers/staging/erofs/data.c
+++ b/drivers/staging/erofs/data.c
@@ -1,14 +1,10 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * linux/drivers/staging/erofs/data.c
  *
  * Copyright (C) 2017-2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of the Linux
- * distribution for more details.
  */
 #include "internal.h"
 #include <linux/prefetch.h>
diff --git a/drivers/staging/erofs/decompressor.c b/drivers/staging/erofs/decompressor.c
index 1fb0abb98dff..b75524d0b322 100644
--- a/drivers/staging/erofs/decompressor.c
+++ b/drivers/staging/erofs/decompressor.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * linux/drivers/staging/erofs/decompressor.c
  *
diff --git a/drivers/staging/erofs/dir.c b/drivers/staging/erofs/dir.c
index dbf6a151886c..2fbfc4935077 100644
--- a/drivers/staging/erofs/dir.c
+++ b/drivers/staging/erofs/dir.c
@@ -1,14 +1,10 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * linux/drivers/staging/erofs/dir.c
  *
  * Copyright (C) 2017-2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of the Linux
- * distribution for more details.
  */
 #include "internal.h"
 
diff --git a/drivers/staging/erofs/erofs_fs.h b/drivers/staging/erofs/erofs_fs.h
index 9f61abb7c1ca..9cd749d56920 100644
--- a/drivers/staging/erofs/erofs_fs.h
+++ b/drivers/staging/erofs/erofs_fs.h
@@ -1,14 +1,10 @@
-/* SPDX-License-Identifier: GPL-2.0 OR Apache-2.0
- *
+/* SPDX-License-Identifier: GPL-2.0-only OR Apache-2.0 */
+/*
  * linux/drivers/staging/erofs/erofs_fs.h
  *
  * Copyright (C) 2017-2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is dual-licensed; you may select either the GNU General Public
- * License version 2 or Apache License, Version 2.0. See the file COPYING
- * in the main directory of the Linux distribution for more details.
  */
 #ifndef __EROFS_FS_H
 #define __EROFS_FS_H
diff --git a/drivers/staging/erofs/include/linux/tagptr.h b/drivers/staging/erofs/include/linux/tagptr.h
index ccd106dbd48e..b3f13773fb99 100644
--- a/drivers/staging/erofs/include/linux/tagptr.h
+++ b/drivers/staging/erofs/include/linux/tagptr.h
@@ -1,6 +1,6 @@
-/* SPDX-License-Identifier: GPL-2.0
- *
- * Tagged pointer implementation
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * A tagged pointer implementation
  *
  * Copyright (C) 2018 Gao Xiang <gaoxiang25@huawei.com>
  */
diff --git a/drivers/staging/erofs/include/trace/events/erofs.h b/drivers/staging/erofs/include/trace/events/erofs.h
index 660c92fc1803..bfb2da9c4eee 100644
--- a/drivers/staging/erofs/include/trace/events/erofs.h
+++ b/drivers/staging/erofs/include/trace/events/erofs.h
@@ -1,4 +1,4 @@
-/* SPDX-License-Identifier: GPL-2.0 */
+/* SPDX-License-Identifier: GPL-2.0-only */
 #undef TRACE_SYSTEM
 #define TRACE_SYSTEM erofs
 
diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index 4c3d8bf8d249..c13d66ccc74a 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -1,14 +1,10 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * linux/drivers/staging/erofs/inode.c
  *
  * Copyright (C) 2017-2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of the Linux
- * distribution for more details.
  */
 #include "xattr.h"
 
diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index 0ebc294120c2..501429ec0f91 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -1,14 +1,10 @@
-/* SPDX-License-Identifier: GPL-2.0
- *
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
  * linux/drivers/staging/erofs/internal.h
  *
  * Copyright (C) 2017-2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of the Linux
- * distribution for more details.
  */
 #ifndef __INTERNAL_H
 #define __INTERNAL_H
diff --git a/drivers/staging/erofs/namei.c b/drivers/staging/erofs/namei.c
index fd3ae78d0ba5..50816b4c05fc 100644
--- a/drivers/staging/erofs/namei.c
+++ b/drivers/staging/erofs/namei.c
@@ -1,14 +1,10 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * linux/drivers/staging/erofs/namei.c
  *
  * Copyright (C) 2017-2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of the Linux
- * distribution for more details.
  */
 #include "internal.h"
 #include "xattr.h"
diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
index 3e2a65ba1945..38cd7a59750a 100644
--- a/drivers/staging/erofs/super.c
+++ b/drivers/staging/erofs/super.c
@@ -1,14 +1,10 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * linux/drivers/staging/erofs/super.c
  *
  * Copyright (C) 2017-2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of the Linux
- * distribution for more details.
  */
 #include <linux/module.h>
 #include <linux/buffer_head.h>
diff --git a/drivers/staging/erofs/unzip_pagevec.h b/drivers/staging/erofs/unzip_pagevec.h
index e65dbca93ae8..f07302c3c3f5 100644
--- a/drivers/staging/erofs/unzip_pagevec.h
+++ b/drivers/staging/erofs/unzip_pagevec.h
@@ -1,14 +1,10 @@
-/* SPDX-License-Identifier: GPL-2.0
- *
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
  * linux/drivers/staging/erofs/unzip_pagevec.h
  *
  * Copyright (C) 2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of the Linux
- * distribution for more details.
  */
 #ifndef __EROFS_UNZIP_PAGEVEC_H
 #define __EROFS_UNZIP_PAGEVEC_H
diff --git a/drivers/staging/erofs/unzip_vle.c b/drivers/staging/erofs/unzip_vle.c
index 56c009cf611e..28a98e79c1e9 100644
--- a/drivers/staging/erofs/unzip_vle.c
+++ b/drivers/staging/erofs/unzip_vle.c
@@ -1,14 +1,10 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * linux/drivers/staging/erofs/unzip_vle.c
  *
  * Copyright (C) 2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of the Linux
- * distribution for more details.
  */
 #include "unzip_vle.h"
 #include "compress.h"
diff --git a/drivers/staging/erofs/unzip_vle.h b/drivers/staging/erofs/unzip_vle.h
index df91ad149439..d92515cd1c06 100644
--- a/drivers/staging/erofs/unzip_vle.h
+++ b/drivers/staging/erofs/unzip_vle.h
@@ -1,14 +1,10 @@
-/* SPDX-License-Identifier: GPL-2.0
- *
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
  * linux/drivers/staging/erofs/unzip_vle.h
  *
  * Copyright (C) 2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of the Linux
- * distribution for more details.
  */
 #ifndef __EROFS_FS_UNZIP_VLE_H
 #define __EROFS_FS_UNZIP_VLE_H
diff --git a/drivers/staging/erofs/utils.c b/drivers/staging/erofs/utils.c
index 4bbd3bf34acd..a68dbe375fa0 100644
--- a/drivers/staging/erofs/utils.c
+++ b/drivers/staging/erofs/utils.c
@@ -1,16 +1,11 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * linux/drivers/staging/erofs/utils.c
  *
  * Copyright (C) 2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of the Linux
- * distribution for more details.
  */
-
 #include "internal.h"
 #include <linux/pagevec.h>
 
diff --git a/drivers/staging/erofs/xattr.c b/drivers/staging/erofs/xattr.c
index df40654b9fbb..b29177a17347 100644
--- a/drivers/staging/erofs/xattr.c
+++ b/drivers/staging/erofs/xattr.c
@@ -1,14 +1,10 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * linux/drivers/staging/erofs/xattr.c
  *
  * Copyright (C) 2017-2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of the Linux
- * distribution for more details.
  */
 #include <linux/security.h>
 #include "xattr.h"
diff --git a/drivers/staging/erofs/xattr.h b/drivers/staging/erofs/xattr.h
index 3990805dfc6c..fbcd57bdf886 100644
--- a/drivers/staging/erofs/xattr.h
+++ b/drivers/staging/erofs/xattr.h
@@ -1,14 +1,10 @@
-/* SPDX-License-Identifier: GPL-2.0
- *
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
  * linux/drivers/staging/erofs/xattr.h
  *
  * Copyright (C) 2017-2018 HUAWEI, Inc.
  *             http://www.huawei.com/
  * Created by Gao Xiang <gaoxiang25@huawei.com>
- *
- * This file is subject to the terms and conditions of the GNU General Public
- * License.  See the file COPYING in the main directory of the Linux
- * distribution for more details.
  */
 #ifndef __EROFS_XATTR_H
 #define __EROFS_XATTR_H
diff --git a/drivers/staging/erofs/zmap.c b/drivers/staging/erofs/zmap.c
index 9c0bd65c46bf..205e884ca4e0 100644
--- a/drivers/staging/erofs/zmap.c
+++ b/drivers/staging/erofs/zmap.c
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+// SPDX-License-Identifier: GPL-2.0-only
 /*
  * linux/drivers/staging/erofs/zmap.c
  *
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

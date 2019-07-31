Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA047C7DA
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 17:59:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EED0485F45;
	Wed, 31 Jul 2019 15:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9bgfT1ClYF_1; Wed, 31 Jul 2019 15:59:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6F8F85F08;
	Wed, 31 Jul 2019 15:59:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A8861BF844
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 15:58:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8D12B855E1
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 15:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EMmQHeXR3aua for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 15:58:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 136E786970
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 15:58:45 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2481227EAE3666F9148E;
 Wed, 31 Jul 2019 23:58:41 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 31 Jul
 2019 23:58:35 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu
 <yuchao0@huawei.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 22/22] staging: erofs: update Kconfig
Date: Wed, 31 Jul 2019 23:57:52 +0800
Message-ID: <20190731155752.210602-23-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731155752.210602-1-gaoxiang25@huawei.com>
References: <20190731155752.210602-1-gaoxiang25@huawei.com>
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

Keep in line with erofs-outofstaging patchset:
 - turn on CONFIG_EROFS_FS_ZIP by default;
 - turn on CONFIG_EROFS_FS_SECURITY by default suggested by David;
 - update Kconfig description.

Reviewed-by: Chao Yu <yuchao0@huawei.com>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/Kconfig | 54 ++++++++++++++++++-----------------
 1 file changed, 28 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/erofs/Kconfig b/drivers/staging/erofs/Kconfig
index 1a8e48943e50..16316d1adca3 100644
--- a/drivers/staging/erofs/Kconfig
+++ b/drivers/staging/erofs/Kconfig
@@ -4,16 +4,16 @@ config EROFS_FS
 	tristate "EROFS filesystem support"
 	depends on BLOCK
 	help
-	  EROFS(Enhanced Read-Only File System) is a lightweight
+	  EROFS (Enhanced Read-Only File System) is a lightweight
 	  read-only file system with modern designs (eg. page-sized
 	  blocks, inline xattrs/data, etc.) for scenarios which need
-	  high-performance read-only requirements, eg. firmwares in
-	  mobile phone or LIVECDs.
+	  high-performance read-only requirements, e.g. Android OS
+	  for mobile phones and LIVECDs.
 
-	  It also provides VLE compression support, focusing on
-	  random read improvements, keeping relatively lower
-	  compression ratios, which is useful for high-performance
-	  devices with limited memory and ROM space.
+	  It also provides fixed-sized output compression support,
+	  which improves storage density, keeps relatively higher
+	  compression ratios, which is more useful to achieve high
+	  performance for embedded devices with limited memory.
 
 	  If unsure, say N.
 
@@ -21,11 +21,19 @@ config EROFS_FS_DEBUG
 	bool "EROFS debugging feature"
 	depends on EROFS_FS
 	help
-	  Print EROFS debugging messages and enable more BUG_ONs
-	  which check the filesystem consistency aggressively.
+	  Print debugging messages and enable more BUG_ONs which check
+	  filesystem consistency and find potential issues aggressively,
+	  which can be used for Android eng build, for example.
 
 	  For daily use, say N.
 
+config EROFS_FAULT_INJECTION
+	bool "EROFS fault injection facility"
+	depends on EROFS_FS
+	help
+	  Test EROFS to inject faults such as ENOMEM, EIO, and so on.
+	  If unsure, say N.
+
 config EROFS_FS_XATTR
 	bool "EROFS extended attributes"
 	depends on EROFS_FS
@@ -54,6 +62,7 @@ config EROFS_FS_POSIX_ACL
 config EROFS_FS_SECURITY
 	bool "EROFS Security Labels"
 	depends on EROFS_FS_XATTR
+	default y
 	help
 	  Security labels provide an access control facility to support Linux
 	  Security Models (LSMs) accepted by AppArmor, SELinux, Smack and TOMOYO
@@ -63,22 +72,15 @@ config EROFS_FS_SECURITY
 
 	  If you are not using a security module, say N.
 
-config EROFS_FAULT_INJECTION
-	bool "EROFS fault injection facility"
-	depends on EROFS_FS
-	help
-	  Test EROFS to inject faults such as ENOMEM, EIO, and so on.
-	  If unsure, say N.
-
 config EROFS_FS_ZIP
-	bool "EROFS Data Compresssion Support"
+	bool "EROFS Data Compression Support"
 	depends on EROFS_FS
 	select LZ4_DECOMPRESS
+	default y
 	help
-	  Currently we support LZ4 VLE Compression only.
-	  Play at your own risk.
+	  Enable fixed-sized output compression for EROFS.
 
-	  If you don't want to use compression feature, say N.
+	  If you don't want to enable compression feature, say N.
 
 config EROFS_FS_CLUSTER_PAGE_LIMIT
 	int "EROFS Cluster Pages Hard Limit"
@@ -86,11 +88,11 @@ config EROFS_FS_CLUSTER_PAGE_LIMIT
 	range 1 256
 	default "1"
 	help
-	  Indicates VLE compressed pages hard limit of a
-	  compressed cluster.
+	  Indicates maximum # of pages of a compressed
+	  physical cluster.
 
-	  For example, if files of a image are compressed
-	  into 8k-unit, the hard limit should not be less
-	  than 2. Otherwise, the image cannot be mounted
-	  correctly on this kernel.
+	  For example, if files in a image were compressed
+	  into 8k-unit, hard limit should not be configured
+	  less than 2. Otherwise, the image will be refused
+	  to mount on this kernel.
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

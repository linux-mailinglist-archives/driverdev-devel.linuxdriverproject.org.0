Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA0078562
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 08:53:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D3603879B1;
	Mon, 29 Jul 2019 06:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fDUZFnZqL7Kl; Mon, 29 Jul 2019 06:53:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A81CC878A1;
	Mon, 29 Jul 2019 06:52:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5514F1BF40D
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4E5B2879AE
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ULCIj98ai327 for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 06:52:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 78481878BA
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 06:52:37 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 3FD84C4E9EABCCEBC1A6;
 Mon, 29 Jul 2019 14:52:35 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 14:52:28 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 13/22] staging: erofs: kill CONFIG_EROFS_FS_USE_VM_MAP_RAM
Date: Mon, 29 Jul 2019 14:51:50 +0800
Message-ID: <20190729065159.62378-14-gaoxiang25@huawei.com>
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

Turn into a module parameter ("use_vmap") as it
can be set at runtime.

Suggested-by: David Sterba <dsterba@suse.cz>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/Kconfig        |  8 ------
 drivers/staging/erofs/decompressor.c | 37 +++++++++++++++-------------
 2 files changed, 20 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/erofs/Kconfig b/drivers/staging/erofs/Kconfig
index 747e9eebfaa5..788beebf3f7d 100644
--- a/drivers/staging/erofs/Kconfig
+++ b/drivers/staging/erofs/Kconfig
@@ -63,14 +63,6 @@ config EROFS_FS_SECURITY
 
 	  If you are not using a security module, say N.
 
-config EROFS_FS_USE_VM_MAP_RAM
-	bool "EROFS VM_MAP_RAM Support"
-	depends on EROFS_FS
-	help
-	  use vm_map_ram/vm_unmap_ram instead of vmap/vunmap.
-
-	  If you don't know what these are, say N.
-
 config EROFS_FAULT_INJECTION
 	bool "EROFS fault injection facility"
 	depends on EROFS_FS
diff --git a/drivers/staging/erofs/decompressor.c b/drivers/staging/erofs/decompressor.c
index 744c43a456e9..5352a50981cb 100644
--- a/drivers/staging/erofs/decompressor.c
+++ b/drivers/staging/erofs/decompressor.c
@@ -7,6 +7,7 @@
  * Created by Gao Xiang <gaoxiang25@huawei.com>
  */
 #include "compress.h"
+#include <linux/module.h>
 #include <linux/lz4.h>
 
 #ifndef LZ4_DISTANCE_MAX	/* history window size */
@@ -29,6 +30,10 @@ struct z_erofs_decompressor {
 	char *name;
 };
 
+static bool use_vmap;
+module_param(use_vmap, bool, 0444);
+MODULE_PARM_DESC(use_vmap, "Use vmap() instead of vm_map_ram() (default 0)");
+
 static int lz4_prepare_destpages(struct z_erofs_decompress_req *rq,
 				 struct list_head *pagepool)
 {
@@ -219,29 +224,27 @@ static void copy_from_pcpubuf(struct page **out, const char *dst,
 
 static void *erofs_vmap(struct page **pages, unsigned int count)
 {
-#ifdef CONFIG_EROFS_FS_USE_VM_MAP_RAM
-	int i = 0;
-
-	while (1) {
-		void *addr = vm_map_ram(pages, count, -1, PAGE_KERNEL);
-		/* retry two more times (totally 3 times) */
-		if (addr || ++i >= 3)
-			return addr;
-		vm_unmap_aliases();
+	if (!use_vmap) {
+		int i = 0;
+
+		while (1) {
+			void *addr = vm_map_ram(pages, count, -1, PAGE_KERNEL);
+			/* retry two more times (totally 3 times) */
+			if (addr || ++i >= 3)
+				return addr;
+			vm_unmap_aliases();
+		}
+		return NULL;
 	}
-	return NULL;
-#else
 	return vmap(pages, count, VM_MAP, PAGE_KERNEL);
-#endif
 }
 
 static void erofs_vunmap(const void *mem, unsigned int count)
 {
-#ifdef CONFIG_EROFS_FS_USE_VM_MAP_RAM
-	vm_unmap_ram(mem, count);
-#else
-	vunmap(mem);
-#endif
+	if (!use_vmap)
+		vm_unmap_ram(mem, count);
+	else
+		vunmap(mem);
 }
 
 static int decompress_generic(struct z_erofs_decompress_req *rq,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

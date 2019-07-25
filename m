Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8A674ABC
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 11:58:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B090220C4;
	Thu, 25 Jul 2019 09:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YFyunSffnYMC; Thu, 25 Jul 2019 09:58:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF2AE220DA;
	Thu, 25 Jul 2019 09:58:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 411141BF577
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 09:57:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3B8EA87E5D
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 09:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZijZQlVmoMrZ for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 09:57:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9AFB786727
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 09:57:54 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id E8E17950D09272F859AF;
 Thu, 25 Jul 2019 17:57:51 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 25 Jul
 2019 17:57:45 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Alexander Viro <viro@zeniv.linux.org.uk>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Theodore Ts'o <tytso@mit.edu>,
 "David Sterba" <dsterba@suse.cz>, Amir Goldstein <amir73il@gmail.com>, Linus
 Torvalds <torvalds@linux-foundation.org>
Subject: [PATCH v4 17/24] erofs: introduce per-CPU buffers implementation
Date: Thu, 25 Jul 2019 17:56:51 +0800
Message-ID: <20190725095658.155779-18-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190725095658.155779-1-gaoxiang25@huawei.com>
References: <20190725095658.155779-1-gaoxiang25@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-erofs@lists.ozlabs.org,
 Chao Yu <yuchao0@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 Li Guifu <bluce.liguifu@huawei.com>, Fang Wei <fangwei1@huawei.com>,
 linux-fsdevel@vger.kernel.org, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch introduces per-CPU buffers in order for
the upcoming generic decompression framework to use.

Note that I tried to use in-kernel per-CPU buffer or
per-CPU page approaches to clean up further, however
noticeable performanace regression (about 2% for
sequential read) was observed.

Let's leave it as-is for now.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/Kconfig    | 14 ++++++++++++++
 fs/erofs/internal.h | 25 +++++++++++++++++++++++++
 fs/erofs/utils.c    | 12 ++++++++++++
 3 files changed, 51 insertions(+)

diff --git a/fs/erofs/Kconfig b/fs/erofs/Kconfig
index a475fbebb831..5f8787c0cf89 100644
--- a/fs/erofs/Kconfig
+++ b/fs/erofs/Kconfig
@@ -81,3 +81,17 @@ config EROFS_FS_ZIP
 
 	  If you don't want to enable compression feature, say N.
 
+config EROFS_FS_CLUSTER_PAGE_LIMIT
+	int "EROFS Cluster Pages Hard Limit"
+	depends on EROFS_FS_ZIP
+	range 1 256
+	default "1"
+	help
+	  Indicates maximum # of pages of a compressed
+	  physical cluster.
+
+	  For example, if files in a image were compressed
+	  into 8k-unit, hard limit should not be configured
+	  less than 2. Otherwise, the image will be refused
+	  to mount on this kernel.
+
diff --git a/fs/erofs/internal.h b/fs/erofs/internal.h
index 3d908dcaadad..410e1b7ef82e 100644
--- a/fs/erofs/internal.h
+++ b/fs/erofs/internal.h
@@ -224,6 +224,16 @@ static inline int erofs_wait_on_workgroup_freezed(struct erofs_workgroup *grp)
 	return v;
 }
 #endif	/* !CONFIG_SMP */
+
+#ifdef CONFIG_EROFS_FS_CLUSTER_PAGE_LIMIT
+#define Z_EROFS_CLUSTER_MAX_PAGES       (CONFIG_EROFS_FS_CLUSTER_PAGE_LIMIT)
+#else
+#define Z_EROFS_CLUSTER_MAX_PAGES       1
+#endif	/* !CONFIG_EROFS_FS_CLUSTER_PAGE_LIMIT */
+
+#define EROFS_PCPUBUF_NR_PAGES          Z_EROFS_CLUSTER_MAX_PAGES
+#else
+#define EROFS_PCPUBUF_NR_PAGES          0
 #endif	/* !CONFIG_EROFS_FS_ZIP */
 
 /* we strictly follow PAGE_SIZE and no buffer head yet */
@@ -482,6 +492,21 @@ int erofs_namei(struct inode *dir, struct qstr *name,
 extern const struct file_operations erofs_dir_fops;
 
 /* utils.c */
+#if (EROFS_PCPUBUF_NR_PAGES > 0)
+void *erofs_get_pcpubuf(unsigned int pagenr);
+#define erofs_put_pcpubuf(buf) do { \
+	(void)&(buf);	\
+	preempt_enable();	\
+} while (0)
+#else
+static inline void *erofs_get_pcpubuf(unsigned int pagenr)
+{
+	return ERR_PTR(-ENOTSUPP);
+}
+
+#define erofs_put_pcpubuf(buf) do {} while (0)
+#endif
+
 #ifdef CONFIG_EROFS_FS_ZIP
 int erofs_workgroup_put(struct erofs_workgroup *grp);
 struct erofs_workgroup *erofs_find_workgroup(struct super_block *sb,
diff --git a/fs/erofs/utils.c b/fs/erofs/utils.c
index 56f27fe901b7..ffaa226746b8 100644
--- a/fs/erofs/utils.c
+++ b/fs/erofs/utils.c
@@ -9,6 +9,18 @@
 #include "internal.h"
 #include <linux/pagevec.h>
 
+#if (EROFS_PCPUBUF_NR_PAGES > 0)
+static struct {
+	u8 data[PAGE_SIZE * EROFS_PCPUBUF_NR_PAGES];
+} ____cacheline_aligned_in_smp erofs_pcpubuf[NR_CPUS];
+
+void *erofs_get_pcpubuf(unsigned int pagenr)
+{
+	preempt_disable();
+	return &erofs_pcpubuf[smp_processor_id()].data[pagenr * PAGE_SIZE];
+}
+#endif
+
 #ifdef CONFIG_EROFS_FS_ZIP
 /* global shrink count (for all mounted EROFS instances) */
 static atomic_long_t erofs_global_shrink_cnt;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

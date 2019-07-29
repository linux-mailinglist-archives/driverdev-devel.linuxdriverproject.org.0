Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EA878556
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 08:52:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2079388505;
	Mon, 29 Jul 2019 06:52:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fIrNEpuveDPI; Mon, 29 Jul 2019 06:52:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E9AB88389;
	Mon, 29 Jul 2019 06:52:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0A0E1BF40D
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CC2048847C
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6S12vY8p7oCy for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 06:52:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1EC9C883F0
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 06:52:43 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 6F2D288DC2A750AB21F0;
 Mon, 29 Jul 2019 14:52:40 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 14:52:33 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 18/22] staging: erofs: turn cache strategies into mount options
Date: Mon, 29 Jul 2019 14:51:55 +0800
Message-ID: <20190729065159.62378-19-gaoxiang25@huawei.com>
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

Kill all kconfig cache strategies and turn them into mount options
"cache_strategy={disable|readahead|readaround}".

As the first step, cached pages can still be usable after cache
is disabled by remounting, and these pages will be fallen out
over time, which can be refined in the later version if some
requirement is needed. Update related document as well.

Suggested-by: Theodore Ts'o <tytso@mit.edu>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 .../erofs/Documentation/filesystems/erofs.txt | 10 +++
 drivers/staging/erofs/Kconfig                 | 38 -----------
 drivers/staging/erofs/internal.h              | 25 +++-----
 drivers/staging/erofs/super.c                 | 64 +++++++++++++++++--
 drivers/staging/erofs/utils.c                 | 26 --------
 drivers/staging/erofs/zdata.c                 | 56 +++-------------
 drivers/staging/erofs/zdata.h                 |  6 --
 7 files changed, 85 insertions(+), 140 deletions(-)

diff --git a/drivers/staging/erofs/Documentation/filesystems/erofs.txt b/drivers/staging/erofs/Documentation/filesystems/erofs.txt
index 74cf84ac48a3..14a0e489345a 100644
--- a/drivers/staging/erofs/Documentation/filesystems/erofs.txt
+++ b/drivers/staging/erofs/Documentation/filesystems/erofs.txt
@@ -65,6 +65,16 @@ fault_injection=%d     Enable fault injection in all supported types with
                        by default if CONFIG_EROFS_FS_XATTR is selected.
 (no)acl                Setup POSIX Access Control List. Note: acl is enabled
                        by default if CONFIG_EROFS_FS_POSIX_ACL is selected.
+cache_strategy=%s      Select a strategy for cached decompression from now on:
+                         disabled: In-place I/O decompression only;
+                        readahead: Cache the last incomplete compressed physical
+                                   cluster for further reading. It still does
+                                   in-place I/O decompression for the rest
+                                   compressed physical clusters;
+                       readaround: Cache the both ends of incomplete compressed
+                                   physical clusters for further reading.
+                                   It still does in-place I/O decompression
+                                   for the rest compressed physical clusters.
 
 On-disk details
 ===============
diff --git a/drivers/staging/erofs/Kconfig b/drivers/staging/erofs/Kconfig
index 788beebf3f7d..1a8e48943e50 100644
--- a/drivers/staging/erofs/Kconfig
+++ b/drivers/staging/erofs/Kconfig
@@ -94,41 +94,3 @@ config EROFS_FS_CLUSTER_PAGE_LIMIT
 	  than 2. Otherwise, the image cannot be mounted
 	  correctly on this kernel.
 
-choice
-	prompt "EROFS VLE Data Decompression mode"
-	depends on EROFS_FS_ZIP
-	default EROFS_FS_ZIP_CACHE_BIPOLAR
-	help
-	  EROFS supports three options for VLE decompression.
-	  "In-place Decompression Only" consumes the minimum memory
-	  with lowest random read.
-
-	  "Bipolar Cached Decompression" consumes the maximum memory
-	  with highest random read.
-
-	  If unsure, select "Bipolar Cached Decompression"
-
-config EROFS_FS_ZIP_NO_CACHE
-	bool "In-place Decompression Only"
-	help
-	  Read compressed data into page cache and do in-place
-	  decompression directly.
-
-config EROFS_FS_ZIP_CACHE_UNIPOLAR
-	bool "Unipolar Cached Decompression"
-	help
-	  For each request, it caches the last compressed page
-	  for further reading.
-	  It still decompresses in place for the rest compressed pages.
-
-config EROFS_FS_ZIP_CACHE_BIPOLAR
-	bool "Bipolar Cached Decompression"
-	help
-	  For each request, it caches the both end compressed pages
-	  for further reading.
-	  It still decompresses in place for the rest compressed pages.
-
-	  Recommended for performance priority.
-
-endchoice
-
diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index be856c9facd1..43f9d90195bc 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -51,18 +51,6 @@ struct erofs_fault_info {
 };
 #endif
 
-#ifdef CONFIG_EROFS_FS_ZIP_CACHE_BIPOLAR
-#define EROFS_FS_ZIP_CACHE_LVL	(2)
-#elif defined(EROFS_FS_ZIP_CACHE_UNIPOLAR)
-#define EROFS_FS_ZIP_CACHE_LVL	(1)
-#else
-#define EROFS_FS_ZIP_CACHE_LVL	(0)
-#endif
-
-#if (!defined(EROFS_FS_HAS_MANAGED_CACHE) && (EROFS_FS_ZIP_CACHE_LVL > 0))
-#define EROFS_FS_HAS_MANAGED_CACHE
-#endif
-
 /* EROFS_SUPER_MAGIC_V1 to represent the whole file system */
 #define EROFS_SUPER_MAGIC   EROFS_SUPER_MAGIC_V1
 
@@ -85,10 +73,11 @@ struct erofs_sb_info {
 
 	unsigned int shrinker_run_no;
 
-#ifdef EROFS_FS_HAS_MANAGED_CACHE
-	struct inode *managed_cache;
-#endif
+	/* current strategy of how to use managed cache */
+	unsigned char cache_strategy;
 
+	/* pseudo inode to manage cached pages */
+	struct inode *managed_cache;
 #endif	/* CONFIG_EROFS_FS_ZIP */
 	u32 blocks;
 	u32 meta_blkaddr;
@@ -174,6 +163,12 @@ static inline void *erofs_kmalloc(struct erofs_sb_info *sbi,
 #define test_opt(sbi, option)	((sbi)->mount_opt & EROFS_MOUNT_##option)
 
 #ifdef CONFIG_EROFS_FS_ZIP
+enum {
+	EROFS_ZIP_CACHE_DISABLED,
+	EROFS_ZIP_CACHE_READAHEAD,
+	EROFS_ZIP_CACHE_READAROUND
+};
+
 #define EROFS_LOCKED_MAGIC     (INT_MIN | 0xE0F510CCL)
 
 /* basic unit of the workstation of a super_block */
diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
index dad5a3137988..a14fa5228bca 100644
--- a/drivers/staging/erofs/super.c
+++ b/drivers/staging/erofs/super.c
@@ -197,17 +197,50 @@ static unsigned int erofs_get_fault_rate(struct erofs_sb_info *sbi)
 }
 #endif
 
+#ifdef CONFIG_EROFS_FS_ZIP
+static int erofs_build_cache_strategy(struct erofs_sb_info *sbi,
+				      substring_t *args)
+{
+	const char *cs = match_strdup(args);
+	int err = 0;
+
+	if (!cs) {
+		errln("Not enough memory to store cache strategy");
+		return -ENOMEM;
+	}
+
+	if (!strcmp(cs, "disabled")) {
+		sbi->cache_strategy = EROFS_ZIP_CACHE_DISABLED;
+	} else if (!strcmp(cs, "readahead")) {
+		sbi->cache_strategy = EROFS_ZIP_CACHE_READAHEAD;
+	} else if (!strcmp(cs, "readaround")) {
+		sbi->cache_strategy = EROFS_ZIP_CACHE_READAROUND;
+	} else {
+		errln("Unrecognized cache strategy \"%s\"", cs);
+		err = -EINVAL;
+	}
+	kfree(cs);
+	return err;
+}
+#else
+static int erofs_build_cache_strategy(struct erofs_sb_info *sbi,
+				      substring_t *args)
+{
+	infoln("EROFS compression is disabled, so cache strategy is ignored");
+	return 0;
+}
+#endif
+
+/* set up default EROFS parameters */
 static void default_options(struct erofs_sb_info *sbi)
 {
-	/* set up some FS parameters */
 #ifdef CONFIG_EROFS_FS_ZIP
+	sbi->cache_strategy = EROFS_ZIP_CACHE_READAROUND;
 	sbi->max_sync_decompress_pages = 3;
 #endif
-
 #ifdef CONFIG_EROFS_FS_XATTR
 	set_opt(sbi, XATTR_USER);
 #endif
-
 #ifdef CONFIG_EROFS_FS_POSIX_ACL
 	set_opt(sbi, POSIX_ACL);
 #endif
@@ -219,6 +252,7 @@ enum {
 	Opt_acl,
 	Opt_noacl,
 	Opt_fault_injection,
+	Opt_cache_strategy,
 	Opt_err
 };
 
@@ -228,6 +262,7 @@ static match_table_t erofs_tokens = {
 	{Opt_acl, "acl"},
 	{Opt_noacl, "noacl"},
 	{Opt_fault_injection, "fault_injection=%u"},
+	{Opt_cache_strategy, "cache_strategy=%s"},
 	{Opt_err, NULL}
 };
 
@@ -285,7 +320,11 @@ static int parse_options(struct super_block *sb, char *options)
 			if (err)
 				return err;
 			break;
-
+		case Opt_cache_strategy:
+			err = erofs_build_cache_strategy(EROFS_SB(sb), args);
+			if (err)
+				return err;
+			break;
 		default:
 			errln("Unrecognized mount option \"%s\" "
 					"or missing value", p);
@@ -295,8 +334,7 @@ static int parse_options(struct super_block *sb, char *options)
 	return 0;
 }
 
-#ifdef EROFS_FS_HAS_MANAGED_CACHE
-
+#ifdef CONFIG_EROFS_FS_ZIP
 static const struct address_space_operations managed_cache_aops;
 
 static int managed_cache_releasepage(struct page *page, gfp_t gfp_mask)
@@ -469,7 +507,7 @@ static void erofs_put_super(struct super_block *sb)
 	DBG_BUGON(!sbi);
 
 	erofs_shrinker_unregister(sb);
-#ifdef EROFS_FS_HAS_MANAGED_CACHE
+#ifdef CONFIG_EROFS_FS_ZIP
 	iput(sbi->managed_cache);
 	sbi->managed_cache = NULL;
 #endif
@@ -570,6 +608,18 @@ static int erofs_show_options(struct seq_file *seq, struct dentry *root)
 	if (test_opt(sbi, FAULT_INJECTION))
 		seq_printf(seq, ",fault_injection=%u",
 			   erofs_get_fault_rate(sbi));
+#ifdef CONFIG_EROFS_FS_ZIP
+	if (sbi->cache_strategy == EROFS_ZIP_CACHE_DISABLED) {
+		seq_puts(seq, ",cache_strategy=disabled");
+	} else if (sbi->cache_strategy == EROFS_ZIP_CACHE_READAHEAD) {
+		seq_puts(seq, ",cache_strategy=readahead");
+	} else if (sbi->cache_strategy == EROFS_ZIP_CACHE_READAROUND) {
+		seq_puts(seq, ",cache_strategy=readaround");
+	} else {
+		seq_puts(seq, ",cache_strategy=(unknown)");
+		DBG_BUGON(1);
+	}
+#endif
 	return 0;
 }
 
diff --git a/drivers/staging/erofs/utils.c b/drivers/staging/erofs/utils.c
index 260ea2970b4b..0e6308b15717 100644
--- a/drivers/staging/erofs/utils.c
+++ b/drivers/staging/erofs/utils.c
@@ -145,8 +145,6 @@ int erofs_workgroup_put(struct erofs_workgroup *grp)
 	return count;
 }
 
-#ifdef EROFS_FS_HAS_MANAGED_CACHE
-/* for cache-managed case, customized reclaim paths exist */
 static void erofs_workgroup_unfreeze_final(struct erofs_workgroup *grp)
 {
 	erofs_workgroup_unfreeze(grp, 0);
@@ -192,30 +190,6 @@ static bool erofs_try_to_release_workgroup(struct erofs_sb_info *sbi,
 	return true;
 }
 
-#else
-/* for nocache case, no customized reclaim path at all */
-static bool erofs_try_to_release_workgroup(struct erofs_sb_info *sbi,
-					   struct erofs_workgroup *grp,
-					   bool cleanup)
-{
-	int cnt = atomic_read(&grp->refcount);
-
-	DBG_BUGON(cnt <= 0);
-	DBG_BUGON(cleanup && cnt != 1);
-
-	if (cnt > 1)
-		return false;
-
-	DBG_BUGON(xa_untag_pointer(radix_tree_delete(&sbi->workstn_tree,
-						     grp->index)) != grp);
-
-	/* (rarely) could be grabbed again when freeing */
-	erofs_workgroup_put(grp);
-	return true;
-}
-
-#endif
-
 static unsigned long erofs_shrink_workstation(struct erofs_sb_info *sbi,
 					      unsigned long nr_shrink,
 					      bool cleanup)
diff --git a/drivers/staging/erofs/zdata.c b/drivers/staging/erofs/zdata.c
index 34ee19b4721d..709c7ba8e255 100644
--- a/drivers/staging/erofs/zdata.c
+++ b/drivers/staging/erofs/zdata.c
@@ -162,7 +162,6 @@ struct z_erofs_decompress_frontend {
 static struct page *z_pagemap_global[Z_EROFS_VMAP_GLOBAL_PAGES];
 static DEFINE_MUTEX(z_pagemap_global_lock);
 
-#ifdef EROFS_FS_HAS_MANAGED_CACHE
 static void preload_compressed_pages(struct z_erofs_collector *clt,
 				     struct address_space *mc,
 				     enum z_erofs_cache_alloctype type,
@@ -273,15 +272,6 @@ int erofs_try_to_free_cached_page(struct address_space *mapping,
 	}
 	return ret;
 }
-#else
-static void preload_compressed_pages(struct z_erofs_collector *clt,
-				     struct address_space *mc,
-				     enum z_erofs_cache_alloctype type,
-				     struct list_head *pagepool)
-{
-	/* nowhere to load compressed pages from */
-}
-#endif
 
 /* page_type must be Z_EROFS_PAGE_TYPE_EXCLUSIVE */
 static inline bool try_inplace_io(struct z_erofs_collector *clt,
@@ -550,25 +540,19 @@ static inline struct page *__stagingpage_alloc(struct list_head *pagepool,
 	return page;
 }
 
-#ifdef EROFS_FS_HAS_MANAGED_CACHE
 static bool should_alloc_managed_pages(struct z_erofs_decompress_frontend *fe,
+				       unsigned int cachestrategy,
 				       erofs_off_t la)
 {
+	if (cachestrategy <= EROFS_ZIP_CACHE_DISABLED)
+		return false;
+
 	if (fe->backmost)
 		return true;
 
-	if (EROFS_FS_ZIP_CACHE_LVL >= 2)
-		return la < fe->headoffset;
-
-	return false;
-}
-#else
-static bool should_alloc_managed_pages(struct z_erofs_decompress_frontend *fe,
-				       erofs_off_t la)
-{
-	return false;
+	return cachestrategy >= EROFS_ZIP_CACHE_READAROUND &&
+		la < fe->headoffset;
 }
-#endif
 
 static int z_erofs_do_read_page(struct z_erofs_decompress_frontend *fe,
 				struct page *page,
@@ -624,7 +608,7 @@ static int z_erofs_do_read_page(struct z_erofs_decompress_frontend *fe,
 		goto err_out;
 
 	/* preload all compressed pages (maybe downgrade role if necessary) */
-	if (should_alloc_managed_pages(fe, map->m_la))
+	if (should_alloc_managed_pages(fe, sbi->cache_strategy, map->m_la))
 		cache_strategy = DELAYEDALLOC;
 	else
 		cache_strategy = DONTALLOC;
@@ -1129,9 +1113,7 @@ static struct z_erofs_unzip_io *jobqueue_init(struct super_block *sb,
 
 /* define decompression jobqueue types */
 enum {
-#ifdef EROFS_FS_HAS_MANAGED_CACHE
 	JQ_BYPASS,
-#endif
 	JQ_SUBMIT,
 	NR_JOBQUEUES,
 };
@@ -1142,14 +1124,12 @@ static void *jobqueueset_init(struct super_block *sb,
 			      struct z_erofs_unzip_io *fgq,
 			      bool forcefg)
 {
-#ifdef EROFS_FS_HAS_MANAGED_CACHE
 	/*
 	 * if managed cache is enabled, bypass jobqueue is needed,
 	 * no need to read from device for all pclusters in this queue.
 	 */
 	q[JQ_BYPASS] = jobqueue_init(sb, fgq + JQ_BYPASS, true);
 	qtail[JQ_BYPASS] = &q[JQ_BYPASS]->head;
-#endif
 
 	q[JQ_SUBMIT] = jobqueue_init(sb, fgq + JQ_SUBMIT, forcefg);
 	qtail[JQ_SUBMIT] = &q[JQ_SUBMIT]->head;
@@ -1157,7 +1137,6 @@ static void *jobqueueset_init(struct super_block *sb,
 	return tagptr_cast_ptr(tagptr_fold(tagptr1_t, q[JQ_SUBMIT], !forcefg));
 }
 
-#ifdef EROFS_FS_HAS_MANAGED_CACHE
 static void move_to_bypass_jobqueue(struct z_erofs_pcluster *pcl,
 				    z_erofs_next_pcluster_t qtail[],
 				    z_erofs_next_pcluster_t owned_head)
@@ -1191,24 +1170,6 @@ static bool postsubmit_is_all_bypassed(struct z_erofs_unzip_io *q[],
 	kvfree(container_of(q[JQ_SUBMIT], struct z_erofs_unzip_io_sb, io));
 	return true;
 }
-#else
-static void move_to_bypass_jobqueue(struct z_erofs_pcluster *pcl,
-				    z_erofs_next_pcluster_t qtail[],
-				    z_erofs_next_pcluster_t owned_head)
-{
-	/* impossible to bypass submission for managed cache disabled */
-	DBG_BUGON(1);
-}
-
-static bool postsubmit_is_all_bypassed(struct z_erofs_unzip_io *q[],
-				       unsigned int nr_bios,
-				       bool force_fg)
-{
-	/* bios should be >0 if managed cache is disabled */
-	DBG_BUGON(!nr_bios);
-	return false;
-}
-#endif
 
 static bool z_erofs_vle_submit_all(struct super_block *sb,
 				   z_erofs_next_pcluster_t owned_head,
@@ -1320,10 +1281,9 @@ static void z_erofs_submit_and_unzip(struct super_block *sb,
 				    pagepool, io, force_fg))
 		return;
 
-#ifdef EROFS_FS_HAS_MANAGED_CACHE
 	/* decompress no I/O pclusters immediately */
 	z_erofs_vle_unzip_all(sb, &io[JQ_BYPASS], pagepool);
-#endif
+
 	if (!force_fg)
 		return;
 
diff --git a/drivers/staging/erofs/zdata.h b/drivers/staging/erofs/zdata.h
index 1f51d80fa89f..e11fe1959ca2 100644
--- a/drivers/staging/erofs/zdata.h
+++ b/drivers/staging/erofs/zdata.h
@@ -101,18 +101,12 @@ struct z_erofs_unzip_io_sb {
 	struct super_block *sb;
 };
 
-#ifdef EROFS_FS_HAS_MANAGED_CACHE
 #define MNGD_MAPPING(sbi)	((sbi)->managed_cache->i_mapping)
 static inline bool erofs_page_is_managed(const struct erofs_sb_info *sbi,
 					 struct page *page)
 {
 	return page->mapping == MNGD_MAPPING(sbi);
 }
-#else
-#define MNGD_MAPPING(sbi)	(NULL)
-static inline bool erofs_page_is_managed(const struct erofs_sb_info *sbi,
-					 struct page *page) { return false; }
-#endif	/* !EROFS_FS_HAS_MANAGED_CACHE */
 
 #define Z_EROFS_ONLINEPAGE_COUNT_BITS   2
 #define Z_EROFS_ONLINEPAGE_COUNT_MASK   ((1 << Z_EROFS_ONLINEPAGE_COUNT_BITS) - 1)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

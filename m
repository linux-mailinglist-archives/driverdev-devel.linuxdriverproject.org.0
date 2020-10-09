Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5D928942F
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 21:53:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 892A42E2E9;
	Fri,  9 Oct 2020 19:53:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qL88pQEEqfZQ; Fri,  9 Oct 2020 19:53:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C16292E314;
	Fri,  9 Oct 2020 19:52:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C95661BF2F3
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 19:52:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C331B8789F
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 19:52:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iXjmB7ktHyBN for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 19:52:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F1CC6878C3
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 19:52:26 +0000 (UTC)
IronPort-SDR: t1VPTbq8MDNkU4MZoz5Cen3l5oIU/RDW3tGIjIx98ZNHQLwEYRfWYyDiL5KOpZjWpMe3dSIHrz
 ac9VcfqvWzVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="153363605"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="153363605"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:52:26 -0700
IronPort-SDR: enOwdrUvox960YRmC5C0rYPH71vGkXRrRSf++MkJJnBOIwe1z1BLjEriaudfjb7SF8F3v1X02a
 epHq/DZLuLjw==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="355863002"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:52:25 -0700
From: ira.weiny@intel.com
To: Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH RFC PKS/PMEM 27/58] fs/ubifs: Utilize new kmap_thread()
Date: Fri,  9 Oct 2020 12:50:02 -0700
Message-Id: <20201009195033.3208459-28-ira.weiny@intel.com>
X-Mailer: git-send-email 2.28.0.rc0.12.gb6a658bd00c9
In-Reply-To: <20201009195033.3208459-1-ira.weiny@intel.com>
References: <20201009195033.3208459-1-ira.weiny@intel.com>
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
Cc: linux-aio@kvack.org, linux-efi@vger.kernel.org, kvm@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-mmc@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-kselftest@vger.kernel.org,
 samba-technical@lists.samba.org, ceph-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-nvdimm@lists.01.org,
 linux-rdma@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 x86@kernel.org, amd-gfx@lists.freedesktop.org, linux-afs@lists.infradead.org,
 cluster-devel@redhat.com, linux-cachefs@redhat.com,
 intel-wired-lan@lists.osuosl.org, xen-devel@lists.xenproject.org,
 linux-ext4@vger.kernel.org, Fenghua Yu <fenghua.yu@intel.com>,
 linux-um@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 ecryptfs@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 reiserfs-devel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-bcache@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 io-uring@vger.kernel.org, linux-nfs@vger.kernel.org,
 linux-ntfs-dev@lists.sourceforge.net, netdev@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ira Weiny <ira.weiny@intel.com>

The kmap() calls in this FS are localized to a single thread.  To avoid
the over head of global PKRS updates use the new kmap_thread() call.

Cc: Richard Weinberger <richard@nod.at>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 fs/ubifs/file.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/fs/ubifs/file.c b/fs/ubifs/file.c
index b77d1637bbbc..a3537447a885 100644
--- a/fs/ubifs/file.c
+++ b/fs/ubifs/file.c
@@ -111,7 +111,7 @@ static int do_readpage(struct page *page)
 	ubifs_assert(c, !PageChecked(page));
 	ubifs_assert(c, !PagePrivate(page));
 
-	addr = kmap(page);
+	addr = kmap_thread(page);
 
 	block = page->index << UBIFS_BLOCKS_PER_PAGE_SHIFT;
 	beyond = (i_size + UBIFS_BLOCK_SIZE - 1) >> UBIFS_BLOCK_SHIFT;
@@ -174,7 +174,7 @@ static int do_readpage(struct page *page)
 	SetPageUptodate(page);
 	ClearPageError(page);
 	flush_dcache_page(page);
-	kunmap(page);
+	kunmap_thread(page);
 	return 0;
 
 error:
@@ -182,7 +182,7 @@ static int do_readpage(struct page *page)
 	ClearPageUptodate(page);
 	SetPageError(page);
 	flush_dcache_page(page);
-	kunmap(page);
+	kunmap_thread(page);
 	return err;
 }
 
@@ -616,7 +616,7 @@ static int populate_page(struct ubifs_info *c, struct page *page,
 	dbg_gen("ino %lu, pg %lu, i_size %lld, flags %#lx",
 		inode->i_ino, page->index, i_size, page->flags);
 
-	addr = zaddr = kmap(page);
+	addr = zaddr = kmap_thread(page);
 
 	end_index = (i_size - 1) >> PAGE_SHIFT;
 	if (!i_size || page->index > end_index) {
@@ -692,7 +692,7 @@ static int populate_page(struct ubifs_info *c, struct page *page,
 	SetPageUptodate(page);
 	ClearPageError(page);
 	flush_dcache_page(page);
-	kunmap(page);
+	kunmap_thread(page);
 	*n = nn;
 	return 0;
 
@@ -700,7 +700,7 @@ static int populate_page(struct ubifs_info *c, struct page *page,
 	ClearPageUptodate(page);
 	SetPageError(page);
 	flush_dcache_page(page);
-	kunmap(page);
+	kunmap_thread(page);
 	ubifs_err(c, "bad data node (block %u, inode %lu)",
 		  page_block, inode->i_ino);
 	return -EINVAL;
@@ -918,7 +918,7 @@ static int do_writepage(struct page *page, int len)
 	/* Update radix tree tags */
 	set_page_writeback(page);
 
-	addr = kmap(page);
+	addr = kmap_thread(page);
 	block = page->index << UBIFS_BLOCKS_PER_PAGE_SHIFT;
 	i = 0;
 	while (len) {
@@ -950,7 +950,7 @@ static int do_writepage(struct page *page, int len)
 	ClearPagePrivate(page);
 	ClearPageChecked(page);
 
-	kunmap(page);
+	kunmap_thread(page);
 	unlock_page(page);
 	end_page_writeback(page);
 	return err;
-- 
2.28.0.rc0.12.gb6a658bd00c9

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

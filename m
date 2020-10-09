Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7876B289456
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 21:54:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39648871E2;
	Fri,  9 Oct 2020 19:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ly5zVwNOQWWG; Fri,  9 Oct 2020 19:53:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67078871EA;
	Fri,  9 Oct 2020 19:53:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5AD901BF2F3
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 19:53:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3C88C2E2E0
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 19:53:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tXDEUROLfQ8G for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 19:53:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 341962E2CE
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 19:52:48 +0000 (UTC)
IronPort-SDR: cRtDQwYfyhx8sBK2WGNXP6eUfQesRiZP5uIEO1ACl6jBJ7pHt+AEqlbokq9Pt94YII26TyfER2
 ZHxh5oLCCNaw==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="250226197"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="250226197"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:52:47 -0700
IronPort-SDR: 0rzHuL4N+KM4WVW+vmL+eEj1y192PC4ThPKt2jdycOAoxaq6uEUOpoOJAuFDFbsfnCMTEcEeiF
 lMErav9d18Iw==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="419537108"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:52:47 -0700
From: ira.weiny@intel.com
To: Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH RFC PKS/PMEM 33/58] fs/cramfs: Utilize new kmap_thread()
Date: Fri,  9 Oct 2020 12:50:08 -0700
Message-Id: <20201009195033.3208459-34-ira.weiny@intel.com>
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
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 linux-afs@lists.infradead.org, cluster-devel@redhat.com,
 linux-cachefs@redhat.com, intel-wired-lan@lists.osuosl.org,
 xen-devel@lists.xenproject.org, linux-ext4@vger.kernel.org,
 Fenghua Yu <fenghua.yu@intel.com>, linux-um@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, ecryptfs@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, reiserfs-devel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, io-uring@vger.kernel.org,
 linux-nfs@vger.kernel.org, Nicolas Pitre <nico@fluxnic.net>,
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

Cc: Nicolas Pitre <nico@fluxnic.net>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 fs/cramfs/inode.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/fs/cramfs/inode.c b/fs/cramfs/inode.c
index 912308600d39..003c014a42ed 100644
--- a/fs/cramfs/inode.c
+++ b/fs/cramfs/inode.c
@@ -247,8 +247,8 @@ static void *cramfs_blkdev_read(struct super_block *sb, unsigned int offset,
 		struct page *page = pages[i];
 
 		if (page) {
-			memcpy(data, kmap(page), PAGE_SIZE);
-			kunmap(page);
+			memcpy(data, kmap_thread(page), PAGE_SIZE);
+			kunmap_thread(page);
 			put_page(page);
 		} else
 			memset(data, 0, PAGE_SIZE);
@@ -826,7 +826,7 @@ static int cramfs_readpage(struct file *file, struct page *page)
 
 	maxblock = (inode->i_size + PAGE_SIZE - 1) >> PAGE_SHIFT;
 	bytes_filled = 0;
-	pgdata = kmap(page);
+	pgdata = kmap_thread(page);
 
 	if (page->index < maxblock) {
 		struct super_block *sb = inode->i_sb;
@@ -914,13 +914,13 @@ static int cramfs_readpage(struct file *file, struct page *page)
 
 	memset(pgdata + bytes_filled, 0, PAGE_SIZE - bytes_filled);
 	flush_dcache_page(page);
-	kunmap(page);
+	kunmap_thread(page);
 	SetPageUptodate(page);
 	unlock_page(page);
 	return 0;
 
 err:
-	kunmap(page);
+	kunmap_thread(page);
 	ClearPageUptodate(page);
 	SetPageError(page);
 	unlock_page(page);
-- 
2.28.0.rc0.12.gb6a658bd00c9

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

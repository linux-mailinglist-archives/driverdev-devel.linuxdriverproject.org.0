Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D11BA28932C
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 21:52:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8137F878B0;
	Fri,  9 Oct 2020 19:52:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id At8ee6GKLHn2; Fri,  9 Oct 2020 19:52:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5692287908;
	Fri,  9 Oct 2020 19:52:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B71B71BF2F3
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 19:52:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B31AA877A6
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 19:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RfY76PZKssUt for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 19:52:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 41B3487792
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 19:52:11 +0000 (UTC)
IronPort-SDR: ULuvCGfY7Z7eNjSdcIhT5T6tA57vpt75Z2WDq0JOU9MJ4TkuWOm+1F/2NILKI9q4kXAtPAeKHt
 imwhJN5X+p+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="145397379"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="145397379"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:51:59 -0700
IronPort-SDR: eWSKFRksQmWHvS1j4lFouXjU/VQ78asIZFlodYo3aryNHFOArT/TLAMBqja15iBonRYEaVT+Tm
 vvSyZvytK3gg==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="462300719"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:51:57 -0700
From: ira.weiny@intel.com
To: Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH RFC PKS/PMEM 20/58] fs/jffs2: Utilize new kmap_thread()
Date: Fri,  9 Oct 2020 12:49:55 -0700
Message-Id: <20201009195033.3208459-21-ira.weiny@intel.com>
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
 linux-ext4@vger.kernel.org, David Woodhouse <dwmw2@infradead.org>,
 Fenghua Yu <fenghua.yu@intel.com>, linux-um@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, ecryptfs@vger.kernel.org,
 linux-erofs@lists.ozlabs.org, reiserfs-devel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, io-uring@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-ntfs-dev@lists.sourceforge.net,
 netdev@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ira Weiny <ira.weiny@intel.com>

The kmap() calls in this FS are localized to a single thread.  To avoid
the over head of global PKRS updates use the new kmap_thread() call.

Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Richard Weinberger <richard@nod.at>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 fs/jffs2/file.c | 4 ++--
 fs/jffs2/gc.c   | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/jffs2/file.c b/fs/jffs2/file.c
index f8fb89b10227..3e6d54f9b011 100644
--- a/fs/jffs2/file.c
+++ b/fs/jffs2/file.c
@@ -88,7 +88,7 @@ static int jffs2_do_readpage_nolock (struct inode *inode, struct page *pg)
 
 	BUG_ON(!PageLocked(pg));
 
-	pg_buf = kmap(pg);
+	pg_buf = kmap_thread(pg);
 	/* FIXME: Can kmap fail? */
 
 	ret = jffs2_read_inode_range(c, f, pg_buf, pg->index << PAGE_SHIFT,
@@ -103,7 +103,7 @@ static int jffs2_do_readpage_nolock (struct inode *inode, struct page *pg)
 	}
 
 	flush_dcache_page(pg);
-	kunmap(pg);
+	kunmap_thread(pg);
 
 	jffs2_dbg(2, "readpage finished\n");
 	return ret;
diff --git a/fs/jffs2/gc.c b/fs/jffs2/gc.c
index 373b3b7c9f44..a7259783ab84 100644
--- a/fs/jffs2/gc.c
+++ b/fs/jffs2/gc.c
@@ -1335,7 +1335,7 @@ static int jffs2_garbage_collect_dnode(struct jffs2_sb_info *c, struct jffs2_era
 		return PTR_ERR(page);
 	}
 
-	pg_ptr = kmap(page);
+	pg_ptr = kmap_thread(page);
 	mutex_lock(&f->sem);
 
 	offset = start;
@@ -1400,7 +1400,7 @@ static int jffs2_garbage_collect_dnode(struct jffs2_sb_info *c, struct jffs2_era
 		}
 	}
 
-	kunmap(page);
+	kunmap_thread(page);
 	put_page(page);
 	return ret;
 }
-- 
2.28.0.rc0.12.gb6a658bd00c9

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

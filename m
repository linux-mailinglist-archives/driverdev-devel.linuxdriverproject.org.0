Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9B228943E
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 21:53:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 68DAF878C3;
	Fri,  9 Oct 2020 19:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6PoBIseCmJ-p; Fri,  9 Oct 2020 19:53:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EABF5878BA;
	Fri,  9 Oct 2020 19:53:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 24DE21BF2F3
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 19:53:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1A5CB2E2DB
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 19:53:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N+V8DDDPp37i for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 19:53:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id A2CF22E2E0
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 19:52:41 +0000 (UTC)
IronPort-SDR: eYLL2andQa0tkwNYS+f4yfEaszUZWh3/gnJjKi3d34kIFXJRpgMmB8SRhdXH9QGYyGtiVmanOz
 bBiEixoLI8zA==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="227179058"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="227179058"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:52:41 -0700
IronPort-SDR: L0Vefok2A93xih84zuFNBu3LKLwMRamDsDkR1F4Gust5uwQPsEktlHxFcxfQt1U0vxS4VptD4d
 rIp50GoBaQKg==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="345148048"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:52:40 -0700
From: ira.weiny@intel.com
To: Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH RFC PKS/PMEM 31/58] fs/vboxsf: Utilize new kmap_thread()
Date: Fri,  9 Oct 2020 12:50:06 -0700
Message-Id: <20201009195033.3208459-32-ira.weiny@intel.com>
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
 linux-block@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
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

Cc: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 fs/vboxsf/file.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/fs/vboxsf/file.c b/fs/vboxsf/file.c
index c4ab5996d97a..d9c7e6b7b4cc 100644
--- a/fs/vboxsf/file.c
+++ b/fs/vboxsf/file.c
@@ -216,7 +216,7 @@ static int vboxsf_readpage(struct file *file, struct page *page)
 	u8 *buf;
 	int err;
 
-	buf = kmap(page);
+	buf = kmap_thread(page);
 
 	err = vboxsf_read(sf_handle->root, sf_handle->handle, off, &nread, buf);
 	if (err == 0) {
@@ -227,7 +227,7 @@ static int vboxsf_readpage(struct file *file, struct page *page)
 		SetPageError(page);
 	}
 
-	kunmap(page);
+	kunmap_thread(page);
 	unlock_page(page);
 	return err;
 }
@@ -268,10 +268,10 @@ static int vboxsf_writepage(struct page *page, struct writeback_control *wbc)
 	if (!sf_handle)
 		return -EBADF;
 
-	buf = kmap(page);
+	buf = kmap_thread(page);
 	err = vboxsf_write(sf_handle->root, sf_handle->handle,
 			   off, &nwrite, buf);
-	kunmap(page);
+	kunmap_thread(page);
 
 	kref_put(&sf_handle->refcount, vboxsf_handle_release);
 
@@ -302,10 +302,10 @@ static int vboxsf_write_end(struct file *file, struct address_space *mapping,
 	if (!PageUptodate(page) && copied < len)
 		zero_user(page, from + copied, len - copied);
 
-	buf = kmap(page);
+	buf = kmap_thread(page);
 	err = vboxsf_write(sf_handle->root, sf_handle->handle,
 			   pos, &nwritten, buf + from);
-	kunmap(page);
+	kunmap_thread(page);
 
 	if (err) {
 		nwritten = 0;
-- 
2.28.0.rc0.12.gb6a658bd00c9

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

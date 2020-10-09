Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6199F2894F6
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 21:55:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EC7132E2D2;
	Fri,  9 Oct 2020 19:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MGKWHfPuKjHd; Fri,  9 Oct 2020 19:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F18672E2E6;
	Fri,  9 Oct 2020 19:54:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 95A561BF2F3
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 19:54:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 83DED2E2E1
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 19:54:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zWiNKd7qHS5t for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 19:54:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 8FD3F2E30A
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 19:53:23 +0000 (UTC)
IronPort-SDR: cIIkKfQHA8vbcHCcTR9+PwaulCWxHoaZrdT4V2wLFtmkg1EvZJ7tTI9gHYxU+r1rnV2fWim0Y2
 s3HQLQkO7akA==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="165643287"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="165643287"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:53:23 -0700
IronPort-SDR: 1WKybDcesSB1sLOn62ClPw5Oz5roBPmtIQsa1XcymP/Rm5On5MJ4hIzRHLHnwze0O/9dY0G7BT
 oI/HBaoknNhQ==
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="355863255"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:53:21 -0700
From: ira.weiny@intel.com
To: Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH RFC PKS/PMEM 43/58] drivers/mmc: Utilize new kmap_thread()
Date: Fri,  9 Oct 2020 12:50:18 -0700
Message-Id: <20201009195033.3208459-44-ira.weiny@intel.com>
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
Cc: linux-aio@kvack.org, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-efi@vger.kernel.org, kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-mmc@vger.kernel.org, Dave Hansen <dave.hansen@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Sascha Sommer <saschasommer@freenet.de>, linux-mtd@lists.infradead.org,
 linux-kselftest@vger.kernel.org, samba-technical@lists.samba.org,
 ceph-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-nvdimm@lists.01.org, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, linux-afs@lists.infradead.org,
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
 linux-f2fs-devel@lists.sourceforge.net, target-devel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ira Weiny <ira.weiny@intel.com>

These kmap() calls are localized to a single thread.  To avoid the over
head of global PKRS updates use the new kmap_thread() call.

Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Sascha Sommer <saschasommer@freenet.de>
Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 drivers/mmc/host/mmc_spi.c    | 4 ++--
 drivers/mmc/host/sdricoh_cs.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/mmc_spi.c b/drivers/mmc/host/mmc_spi.c
index 18a850f37ddc..ab28e7103b8d 100644
--- a/drivers/mmc/host/mmc_spi.c
+++ b/drivers/mmc/host/mmc_spi.c
@@ -918,7 +918,7 @@ mmc_spi_data_do(struct mmc_spi_host *host, struct mmc_command *cmd,
 		}
 
 		/* allow pio too; we don't allow highmem */
-		kmap_addr = kmap(sg_page(sg));
+		kmap_addr = kmap_thread(sg_page(sg));
 		if (direction == DMA_TO_DEVICE)
 			t->tx_buf = kmap_addr + sg->offset;
 		else
@@ -950,7 +950,7 @@ mmc_spi_data_do(struct mmc_spi_host *host, struct mmc_command *cmd,
 		/* discard mappings */
 		if (direction == DMA_FROM_DEVICE)
 			flush_kernel_dcache_page(sg_page(sg));
-		kunmap(sg_page(sg));
+		kunmap_thread(sg_page(sg));
 		if (dma_dev)
 			dma_unmap_page(dma_dev, dma_addr, PAGE_SIZE, dir);
 
diff --git a/drivers/mmc/host/sdricoh_cs.c b/drivers/mmc/host/sdricoh_cs.c
index 76a8cd3a186f..7806bc69c4f1 100644
--- a/drivers/mmc/host/sdricoh_cs.c
+++ b/drivers/mmc/host/sdricoh_cs.c
@@ -312,11 +312,11 @@ static void sdricoh_request(struct mmc_host *mmc, struct mmc_request *mrq)
 			int result;
 			page = sg_page(data->sg);
 
-			buf = kmap(page) + data->sg->offset + (len * i);
+			buf = kmap_thread(page) + data->sg->offset + (len * i);
 			result =
 				sdricoh_blockio(host,
 					data->flags & MMC_DATA_READ, buf, len);
-			kunmap(page);
+			kunmap_thread(page);
 			flush_dcache_page(page);
 			if (result) {
 				dev_err(dev, "sdricoh_request: cmd %i "
-- 
2.28.0.rc0.12.gb6a658bd00c9

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

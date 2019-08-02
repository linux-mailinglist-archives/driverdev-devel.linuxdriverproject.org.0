Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 885DC7E80A
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 04:20:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06B448844C;
	Fri,  2 Aug 2019 02:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id USToOsD3ydar; Fri,  2 Aug 2019 02:20:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFA3B883F0;
	Fri,  2 Aug 2019 02:20:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A9671BF29C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 608BB883C1
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gj7dQuRPHi0R for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 02:20:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A4C8F883C0
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 02:20:29 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id w10so35239631pgj.7
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 19:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=34zW6BJN89MycamN6XZc+aPi3iIpUXsyW4mngm2d11Q=;
 b=t5NAqE3Vka8KgkTsGoLz9ngltlH4Rvcpb6lwK1UP3GX3tIbQ8zi6/BtK7Yp4TzERha
 wSeLot/t6ZWJImnvKBZhoEDQI6w3o5UiMaJgEpqqKVxcZT34GhcoUwN2IZVyDwqCPKlC
 a7Buv+1Wht5mLnbtK6+0hFPG1gydiYPwhnLgxc7zgGLfQhg2ssESYfy+n2RPvUdztRim
 jUlI8gdPL0+PZqp56ewu9yAP9JBceuh2IC1TKvQK+F/6hCHCM/byLJfkcX1hvyboPVI9
 xbVnybXy2ozmgwqFr15PYWmG4HhsZR295UWof1NeRQ0AKr4kLzhdz4MTCgaGRcNk5CYS
 eE0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=34zW6BJN89MycamN6XZc+aPi3iIpUXsyW4mngm2d11Q=;
 b=hOI9aln7GxRRlvqiuBMsJkirmu8WmO2jzuOcPMMaYc9g381xco0x3i76qi2gVQDjnm
 i4Q+xpx19hX3KF09pu6C7F85wGKvIPgpjShKfatCOA0EvuHhXvo8av+TxzPM2yC1ViVp
 zAIddpNvWhji7bDjAVyQ7aCGL0HFY3fF0890BJCa/oewmRELkpfgzojH3vYbf6CMbwBp
 9IXWT6hD8SOoV7nSxBG6tDZ12dYnNAmciGaEpfBxbaYKUvKOsdN0is5TS/UECTrKXcBS
 m19IE4wNcxemKcb7FDHq7j1KlRI8ko/lFeHdPcH371fLyv0sbOegt4xy+dVHf1fWKpHe
 1HFg==
X-Gm-Message-State: APjAAAXGms392QIlEqYFI7PETUrtvM5CnwLpCI1pPPCXFQQw0MoeCnlk
 ANHfqVTs4bUNO9AcstFEMvo=
X-Google-Smtp-Source: APXvYqzeCy+7cVID+Rr3XWOFQDSekWzD7T6/ZvL7pRVEGXoHJuKXgEeLRZGzPIVKoEslJMD2nH6qbg==
X-Received: by 2002:a65:6454:: with SMTP id s20mr122064853pgv.15.1564712429240; 
 Thu, 01 Aug 2019 19:20:29 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:28 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 11/34] scif: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:42 -0700
Message-Id: <20190802022005.5117-12-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 Sudeep Dutt <sudeep.dutt@intel.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, Ashutosh Dixit <ashutosh.dixit@intel.com>,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Joerg Roedel <jroedel@suse.de>, Arnd Bergmann <arnd@arndb.de>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Zhen Lei <thunder.leizhen@huawei.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: John Hubbard <jhubbard@nvidia.com>

For pages that were retained via get_user_pages*(), release those pages
via the new put_user_page*() routines, instead of via put_page() or
release_pages().

This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
("mm: introduce put_user_page*(), placeholder versions").

Cc: Sudeep Dutt <sudeep.dutt@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Joerg Roedel <jroedel@suse.de>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Zhen Lei <thunder.leizhen@huawei.com>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/misc/mic/scif/scif_rma.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/misc/mic/scif/scif_rma.c b/drivers/misc/mic/scif/scif_rma.c
index 01e27682ea30..d84ed9466920 100644
--- a/drivers/misc/mic/scif/scif_rma.c
+++ b/drivers/misc/mic/scif/scif_rma.c
@@ -113,13 +113,14 @@ static int scif_destroy_pinned_pages(struct scif_pinned_pages *pin)
 	int writeable = pin->prot & SCIF_PROT_WRITE;
 	int kernel = SCIF_MAP_KERNEL & pin->map_flags;
 
-	for (j = 0; j < pin->nr_pages; j++) {
-		if (pin->pages[j] && !kernel) {
+	if (kernel) {
+		for (j = 0; j < pin->nr_pages; j++) {
 			if (writeable)
-				SetPageDirty(pin->pages[j]);
+				set_page_dirty_lock(pin->pages[j]);
 			put_page(pin->pages[j]);
 		}
-	}
+	} else
+		put_user_pages_dirty_lock(pin->pages, pin->nr_pages, writeable);
 
 	scif_free(pin->pages,
 		  pin->nr_pages * sizeof(*pin->pages));
@@ -1385,11 +1386,9 @@ int __scif_pin_pages(void *addr, size_t len, int *out_prot,
 				if (ulimit)
 					__scif_dec_pinned_vm_lock(mm, nr_pages);
 				/* Roll back any pinned pages */
-				for (i = 0; i < pinned_pages->nr_pages; i++) {
-					if (pinned_pages->pages[i])
-						put_page(
-						pinned_pages->pages[i]);
-				}
+				put_user_pages(pinned_pages->pages,
+					       pinned_pages->nr_pages);
+
 				prot &= ~SCIF_PROT_WRITE;
 				try_upgrade = false;
 				goto retry;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

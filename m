Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B52D47E821
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 04:20:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 53D51878FE;
	Fri,  2 Aug 2019 02:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z88Z4YCn+Uu8; Fri,  2 Aug 2019 02:20:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58392878B7;
	Fri,  2 Aug 2019 02:20:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5A16E1BF29C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4349A23067
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N8jv-LH9T+T4 for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 02:20:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 4D0FE23119
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 02:20:39 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id s1so28936652pgr.2
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 19:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0y5rJgolnpdx1vwnOpLTxW7O4fuw+3wJL+gU2Q7/qgc=;
 b=XcvG9OtyU86jk5JnQKO48GBJW89xfPHHxg+Ne0d0GJwSK2IuihtMCJFR8pabDqBzEF
 DuPSfNePU528rZ6hBUi+QFYoZILMY8tdggEmTr3mN7PzDRJ7a6OmrfV2tsrS8kf2+6HI
 Zo6kU0MY4gjn6C4vTTeXk9IHVKARwawE7INoHfJ5sfq56uo1gVj3e8g1oiz6b7OI/wgS
 KnIyWK9Z49VV7ULXr41yNDN0bWyja3EYTBz6mLtPsaZCe7aB+yHXvCTEBAOwbU3wp1bf
 uiomAHYjSX4K0Tach88phQCyk3zfRucll/enDp2U+3MmHAZ/atNajIitsMHfeEHfycq9
 ft2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0y5rJgolnpdx1vwnOpLTxW7O4fuw+3wJL+gU2Q7/qgc=;
 b=VXlqqXycaWJYDBiuuFCXI/H6DNDhLrsYQ06iWyayWHjejWxZjL9OHUPClwBguoZVT1
 Vve79IxCC9W5gO/WNlw9gcJRzck63wY2kvYbp8F+5FSn7v+B17Q1fU+ERLPFjZeT4VVO
 mxPxOMPKx6X5j8az4f8lfYBluFXnrsbwMCM8lLUtAuFwCI8BQRgiQx6fUwUtkHN7TIhP
 MIir8SxaS09sNvXeMYXWq9DydE8Btbfcr7VqJivDbVkwuJaZ+Xid+gsDlMcCliLY565x
 LuFt1JgcKYOVjCQj6ZRdFrkY7d39WBdDXV0PhDDD2rfUvH6HfLlJE34+Ywq5uPDwit22
 D9Ww==
X-Gm-Message-State: APjAAAUc2RQqe17JYv5z7RdNkHXKiy9+tMDhugVsWCAaHwavwhEEpeFG
 40euX1b+yWyYPTfk62U8FoE=
X-Google-Smtp-Source: APXvYqwl6c8l8akPJ/a0xk+3KepmeSM3zSOQCzHQzAg87pSWv9yrqkhky05R7WwjG4AiAw2gALdPbw==
X-Received: by 2002:a17:90a:b908:: with SMTP id
 p8mr1903028pjr.94.1564712438974; 
 Thu, 01 Aug 2019 19:20:38 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:38 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 17/34] vfio: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:48 -0700
Message-Id: <20190802022005.5117-18-jhubbard@nvidia.com>
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
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 Alex Williamson <alex.williamson@redhat.com>, linux-rdma@vger.kernel.org,
 x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
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

Note that this effectively changes the code's behavior in
qp_release_pages(): it now ultimately calls set_page_dirty_lock(),
instead of set_page_dirty(). This is probably more accurate.

As Christophe Hellwig put it, "set_page_dirty() is only safe if we are
dealing with a file backed page where we have reference on the inode it
hangs off." [1]

[1] https://lore.kernel.org/r/20190723153640.GB720@lst.de

Cc: Alex Williamson <alex.williamson@redhat.com>
Cc: kvm@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/vfio/vfio_iommu_type1.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
index 054391f30fa8..5a5461a14299 100644
--- a/drivers/vfio/vfio_iommu_type1.c
+++ b/drivers/vfio/vfio_iommu_type1.c
@@ -320,9 +320,9 @@ static int put_pfn(unsigned long pfn, int prot)
 {
 	if (!is_invalid_reserved_pfn(pfn)) {
 		struct page *page = pfn_to_page(pfn);
-		if (prot & IOMMU_WRITE)
-			SetPageDirty(page);
-		put_page(page);
+		bool dirty = prot & IOMMU_WRITE;
+
+		put_user_pages_dirty_lock(&page, 1, dirty);
 		return 1;
 	}
 	return 0;
@@ -356,7 +356,7 @@ static int vaddr_get_pfn(struct mm_struct *mm, unsigned long vaddr,
 		 */
 		if (ret > 0 && vma_is_fsdax(vmas[0])) {
 			ret = -EOPNOTSUPP;
-			put_page(page[0]);
+			put_user_page(page[0]);
 		}
 	}
 	up_read(&mm->mmap_sem);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

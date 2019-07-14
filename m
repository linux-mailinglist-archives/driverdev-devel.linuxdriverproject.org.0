Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B457680F0
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 21:11:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4081B82066;
	Sun, 14 Jul 2019 19:11:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vdBzqDeEOSyJ; Sun, 14 Jul 2019 19:11:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 862EF81EFD;
	Sun, 14 Jul 2019 19:11:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0FD871BF5A6
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 19:11:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C18081F0A
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 19:11:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y0Up1AxQqo2w for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 19:11:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 44E0181EFD
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 19:11:25 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id i8so6657156pgm.13
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 12:11:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=wTnR4jFSZHgDyQlzGAnxJLHPwWt9ff7eR4/YXCAXskI=;
 b=J6HG5WoHErAl5v76PYLUAOefrG8S1mG5ji2ajAmi5iUq3zdhofWNi8R7FD/ZClvCkS
 YZRIbPxD9g4+z4/DKU3BnFzdBGd4B6hqacPQJCYiMAyTsjeQD0VnMRdVjMwT5iXX3Wf8
 K+dbgDP1QPuW9rFsXWNsx8mrnpo7er2XDn6BWvY/4l765HNnJzRdfTLFd1FC4ox/btui
 ANCUJV2jLkQANmaHn5GDebVXYHTnQ3iJntGgl9m+NUdNzEI4foq7AImezy1e0F0aWScj
 VTeFTRsX3XhDhFo4Vbx8wmcHarhMhRhIWCsne9M3/awdd48pqQRhjBDTphYabLqRYTaO
 N99A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=wTnR4jFSZHgDyQlzGAnxJLHPwWt9ff7eR4/YXCAXskI=;
 b=OefXUqxLlsz0lZVP53AOyyVLppOph1si3EnGP4ZbX4ek892MG4gt1IBtMrxhnnHDhs
 Xg75mZYWBy/+6qnQ5VVm821o8tyEsFlmpGaFMyM7kSQHoUSv2FuFYNpNlC2xI/jXqSTk
 1bSolIs7EI3B/iZEbpEsxzf2AQ6olyyqtOex2IzwVhBMX2ENpJKBxcuHz2SD4PlW7rum
 3UXVH9q78AKV/XE4/Vo20AGd5kG4lDK1Y+Gg7UasORE+kZHsdWsOBDhoiDbIAS9QuXru
 c/BI5TzrlqRMxs5DexKze9PSU049qC8/MEQs0Dz4XcX6QWIwDHSFHLaYFyJ6p6oRL8mY
 x4wQ==
X-Gm-Message-State: APjAAAVJ8Yhi/QSuj2c7549q3vjHjlyzJTL1b8Zx2upuwDZAJQiw+QqG
 20XfqOgzQOxyIMyeSHVzT6Q=
X-Google-Smtp-Source: APXvYqyoHwB+daqurf2TSePudMpL8bWbCxyh/0egoU2EbeU8TkfMkMtKnPM0Ke06j90ArJCf2o75Kg==
X-Received: by 2002:a63:bf01:: with SMTP id v1mr22482786pgf.278.1563131484751; 
 Sun, 14 Jul 2019 12:11:24 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.34])
 by smtp.gmail.com with ESMTPSA id m6sm15239358pfb.151.2019.07.14.12.11.22
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 14 Jul 2019 12:11:24 -0700 (PDT)
From: Bharath Vedartham <linux.bhar@gmail.com>
To: akpm@linux-foundation.org,
	ira.weiny@intel.com,
	jhubbard@nvidia.com
Subject: [PATCH] mm/gup: Use put_user_page*() instead of put_page*()
Date: Mon, 15 Jul 2019 00:38:34 +0530
Message-Id: <1563131456-11488-1-git-send-email-linux.bhar@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>, kvm@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, Alexei Starovoitov <ast@kernel.org>,
 Keith Busch <keith.busch@intel.com>, Max Filippov <jcmvbkbc@gmail.com>,
 devel@driverdev.osuosl.org, Dimitri Sivanich <sivanich@sgi.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
 Bharath Vedartham <linux.bhar@gmail.com>, xdp-newbies@vger.kernel.org,
 Jesper Dangaard Brouer <hawk@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-block@vger.kernel.org, Alexios Zavras <alexios.zavras@intel.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Magnus Karlsson <magnus.karlsson@intel.com>, Jens Axboe <axboe@kernel.dk>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, "David S. Miller" <davem@davemloft.net>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch converts all call sites of get_user_pages
to use put_user_page*() instead of put_page*() functions to
release reference to gup pinned pages.

This is a bunch of trivial conversions which is a part of an effort
by John Hubbard to solve issues with gup pinned pages and 
filesystem writeback.

The issue is more clearly described in John Hubbard's patch[1] where
put_user_page*() functions are introduced.

Currently put_user_page*() simply does put_page but future implementations
look to change that once treewide change of put_page callsites to 
put_user_page*() is finished.

The lwn article describing the issue with gup pinned pages and filesystem 
writeback [2].

This patch has been tested by building and booting the kernel as I don't
have the required hardware to test the device drivers.

I did not modify gpu/drm drivers which use release_pages instead of
put_page() to release reference of gup pinned pages as I am not clear
whether release_pages and put_page are interchangable. 

[1] https://lkml.org/lkml/2019/3/26/1396

[2] https://lwn.net/Articles/784574/

Signed-off-by: Bharath Vedartham <linux.bhar@gmail.com>
---
 drivers/media/v4l2-core/videobuf-dma-sg.c | 3 +--
 drivers/misc/sgi-gru/grufault.c           | 2 +-
 drivers/staging/kpc2000/kpc_dma/fileops.c | 4 +---
 drivers/vfio/vfio_iommu_type1.c           | 2 +-
 fs/io_uring.c                             | 7 +++----
 mm/gup_benchmark.c                        | 6 +-----
 net/xdp/xdp_umem.c                        | 7 +------
 7 files changed, 9 insertions(+), 22 deletions(-)

diff --git a/drivers/media/v4l2-core/videobuf-dma-sg.c b/drivers/media/v4l2-core/videobuf-dma-sg.c
index 66a6c6c..d6eeb43 100644
--- a/drivers/media/v4l2-core/videobuf-dma-sg.c
+++ b/drivers/media/v4l2-core/videobuf-dma-sg.c
@@ -349,8 +349,7 @@ int videobuf_dma_free(struct videobuf_dmabuf *dma)
 	BUG_ON(dma->sglen);
 
 	if (dma->pages) {
-		for (i = 0; i < dma->nr_pages; i++)
-			put_page(dma->pages[i]);
+		put_user_pages(dma->pages, dma->nr_pages);
 		kfree(dma->pages);
 		dma->pages = NULL;
 	}
diff --git a/drivers/misc/sgi-gru/grufault.c b/drivers/misc/sgi-gru/grufault.c
index 4b713a8..61b3447 100644
--- a/drivers/misc/sgi-gru/grufault.c
+++ b/drivers/misc/sgi-gru/grufault.c
@@ -188,7 +188,7 @@ static int non_atomic_pte_lookup(struct vm_area_struct *vma,
 	if (get_user_pages(vaddr, 1, write ? FOLL_WRITE : 0, &page, NULL) <= 0)
 		return -EFAULT;
 	*paddr = page_to_phys(page);
-	put_page(page);
+	put_user_page(page);
 	return 0;
 }
 
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 6166587..26dceed 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -198,9 +198,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	sg_free_table(&acd->sgt);
  err_dma_map_sg:
  err_alloc_sg_table:
-	for (i = 0 ; i < acd->page_count ; i++){
-		put_page(acd->user_pages[i]);
-	}
+	put_user_pages(acd->user_pages, acd->page_count);
  err_get_user_pages:
 	kfree(acd->user_pages);
  err_alloc_userpages:
diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
index add34ad..c491524 100644
--- a/drivers/vfio/vfio_iommu_type1.c
+++ b/drivers/vfio/vfio_iommu_type1.c
@@ -369,7 +369,7 @@ static int vaddr_get_pfn(struct mm_struct *mm, unsigned long vaddr,
 		 */
 		if (ret > 0 && vma_is_fsdax(vmas[0])) {
 			ret = -EOPNOTSUPP;
-			put_page(page[0]);
+			put_user_page(page[0]);
 		}
 	}
 	up_read(&mm->mmap_sem);
diff --git a/fs/io_uring.c b/fs/io_uring.c
index 4ef62a4..b4a4549 100644
--- a/fs/io_uring.c
+++ b/fs/io_uring.c
@@ -2694,10 +2694,9 @@ static int io_sqe_buffer_register(struct io_ring_ctx *ctx, void __user *arg,
 			 * if we did partial map, or found file backed vmas,
 			 * release any pages we did get
 			 */
-			if (pret > 0) {
-				for (j = 0; j < pret; j++)
-					put_page(pages[j]);
-			}
+			if (pret > 0)
+				put_user_pages(pages, pret);
+
 			if (ctx->account_mem)
 				io_unaccount_mem(ctx->user, nr_pages);
 			kvfree(imu->bvec);
diff --git a/mm/gup_benchmark.c b/mm/gup_benchmark.c
index 7dd602d..15fc7a2 100644
--- a/mm/gup_benchmark.c
+++ b/mm/gup_benchmark.c
@@ -76,11 +76,7 @@ static int __gup_benchmark_ioctl(unsigned int cmd,
 	gup->size = addr - gup->addr;
 
 	start_time = ktime_get();
-	for (i = 0; i < nr_pages; i++) {
-		if (!pages[i])
-			break;
-		put_page(pages[i]);
-	}
+	put_user_pages(pages, nr_pages);
 	end_time = ktime_get();
 	gup->put_delta_usec = ktime_us_delta(end_time, start_time);
 
diff --git a/net/xdp/xdp_umem.c b/net/xdp/xdp_umem.c
index 9c6de4f..6103e19 100644
--- a/net/xdp/xdp_umem.c
+++ b/net/xdp/xdp_umem.c
@@ -173,12 +173,7 @@ static void xdp_umem_unpin_pages(struct xdp_umem *umem)
 {
 	unsigned int i;
 
-	for (i = 0; i < umem->npgs; i++) {
-		struct page *page = umem->pgs[i];
-
-		set_page_dirty_lock(page);
-		put_page(page);
-	}
+	put_user_pages_dirty_lock(umem->pgs, umem->npgs);
 
 	kfree(umem->pgs);
 	umem->pgs = NULL;
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

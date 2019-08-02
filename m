Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E7B7E853
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 04:21:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A0CA323307;
	Fri,  2 Aug 2019 02:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7FcMf0ilhg-j; Fri,  2 Aug 2019 02:21:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F40C223143;
	Fri,  2 Aug 2019 02:21:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE8211BF29C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A781122D33
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zoRheHtbyy5u for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 02:20:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id AE4722302C
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 02:20:43 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id p184so35148478pfp.7
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 19:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NpCZQ4VK8hzAbP37Qxye6UhXG/4cH2zDttwN2tDhLJk=;
 b=hA+dHc1dKtzF01UNAT1GCb910It9M6OYeo1UwisVEiPximZ0Uizqhd58Gx7EN+cwqG
 oOXAC9GpXS9cMgyPAFeZsWw6yiG5HTsH6dTfrkzHKXhkxbTehvYO/DkXd3o8uGT1hUxz
 8W3I7PS2I6VpD8By/LG/APt7ortKYREWRihQ/MahJgv1XZqDU9aXSO+0f9WVFU4wcOzF
 PifhANph7r1h1aR2sJtcNbzpatSVDPr8LOmoCCwtkUnv/6xTTuq0KjPRlt5jI5AQn0Bo
 qGRQZk7nx9WeapKs5M+9pdwyKPbEullYlAI/CW2M7lTdWIAU5bo5Tw/OmRhRr64X9QFj
 r+xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NpCZQ4VK8hzAbP37Qxye6UhXG/4cH2zDttwN2tDhLJk=;
 b=diiPzoqFEQOg3JfzV0j17BdzbLw9doywyQ4dwgb+4GRqEzFdwj0vL+qT7XB/Q8jcYV
 O1FnJ5cGx4CH9R5IQGL2z/Mk2fG2xrtJxsA4DFniprLnpiorrgPwKhUhJFwGgtHbBPyM
 1DrdByHatzi5TK2h+/8nFJp6ufZRJxqukyylybALBH7Qthov+WWd26/VIZk0k5i/cuaK
 hPPkK0hD9A7JAKrRqE6OOEFoj1dFSTRkGS7z4OyPsNqj2HhblUrwMdA4WRkuYon8wTW2
 eFOUM7g7z0dBBdOdLE/zoZ3Ad5BlIUmYIoypHEWEeCC1ZstPYcF/PbbYmlW7weUgccal
 kjbQ==
X-Gm-Message-State: APjAAAWX/ZxNRCUMKvaaXF/u6n4WzOTQTmoxIzrQmCv6XY0rd/s521EM
 s1yRiW58XF2b3ptTvFGG0cM=
X-Google-Smtp-Source: APXvYqwoCf/Pdnvn5s1n1tJ64nDODMRXeExgk7vpJhyWgRCwW2Xl8gxjUqSaBtscPD/0WWSuL29y+g==
X-Received: by 2002:a62:fb18:: with SMTP id x24mr55563811pfm.231.1564712443423; 
 Thu, 01 Aug 2019 19:20:43 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:42 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 20/34] xen: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:51 -0700
Message-Id: <20190802022005.5117-21-jhubbard@nvidia.com>
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
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Juergen Gross <jgross@suse.com>,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org
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

Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
Cc: xen-devel@lists.xenproject.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/xen/gntdev.c  | 5 +----
 drivers/xen/privcmd.c | 7 +------
 2 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/xen/gntdev.c b/drivers/xen/gntdev.c
index 4c339c7e66e5..2586b3df2bb6 100644
--- a/drivers/xen/gntdev.c
+++ b/drivers/xen/gntdev.c
@@ -864,10 +864,7 @@ static int gntdev_get_page(struct gntdev_copy_batch *batch, void __user *virt,
 
 static void gntdev_put_pages(struct gntdev_copy_batch *batch)
 {
-	unsigned int i;
-
-	for (i = 0; i < batch->nr_pages; i++)
-		put_page(batch->pages[i]);
+	put_user_pages(batch->pages, batch->nr_pages);
 	batch->nr_pages = 0;
 }
 
diff --git a/drivers/xen/privcmd.c b/drivers/xen/privcmd.c
index 2f5ce7230a43..29e461dbee2d 100644
--- a/drivers/xen/privcmd.c
+++ b/drivers/xen/privcmd.c
@@ -611,15 +611,10 @@ static int lock_pages(
 
 static void unlock_pages(struct page *pages[], unsigned int nr_pages)
 {
-	unsigned int i;
-
 	if (!pages)
 		return;
 
-	for (i = 0; i < nr_pages; i++) {
-		if (pages[i])
-			put_page(pages[i]);
-	}
+	put_user_pages(pages, nr_pages);
 }
 
 static long privcmd_ioctl_dm_op(struct file *file, void __user *udata)
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

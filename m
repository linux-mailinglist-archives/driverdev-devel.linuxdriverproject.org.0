Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC4D80D0A
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:49:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3DCD87B82;
	Sun,  4 Aug 2019 22:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0GfEQ2Im5ncy; Sun,  4 Aug 2019 22:49:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4717187B18;
	Sun,  4 Aug 2019 22:49:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB5DE1BF591
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:49:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D793587B0F
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id du3hN0S-mhaj for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:49:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4EFCD87AE7
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:49:35 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id w3so1455021pgt.13
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wKnEf1dGeTf0vHOLp5WCTJvqak8NT8hcLNnzrVdQpMI=;
 b=UAVd4mr7vGvTBL1keSKDuwOUviwbBqcp6QKy80u93848ZN8eU6de8F8i32424yePdd
 zhJ1O4RduGczBUBLeccU6nytEoiOUUwRkUsjuEyue319dSQS2bud/HybqSeEP9UaizKY
 00ht31Ehoc2cMo40WzQ9rGK2yX18fybqCo7t+dG1vWpDgDbdQz/Q1YLF3bcEr/VsNC/+
 VEsECPXiobaIgfjOirKP1fhQQn2wJJKwgSQoEP5vN1KZqZSBZAcxorwveJr5kCfvgpyC
 h19lHwiz4dU7jiPcnb0kWz/BIQhyT1yRrfBg3wROHEiu6fO26e4X5u3gRUvcijrb3cqf
 EWfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wKnEf1dGeTf0vHOLp5WCTJvqak8NT8hcLNnzrVdQpMI=;
 b=HkZtLdP82+/d6rwrzas32R2bip4Jr0NWyQsS74UP4noE3cfz6X/HnZr2ZwwbCnwBGY
 k3zaChBeYU7r4yWL5kuvI/VEPj3WRwf5s/61MTF7BBIPjDt0PBkLZ5tV1wjukr+LAwnC
 lVKZji3pV080dSR67X3N4mGX4M6JAjI6zoAF+JJTLmlhE+NvdQXvhXmjlMvE+qLHbIr9
 xSwPvXL866ATi6EYc+vT62hqepTYbnt1S4DZgp7K9IYCTL7GBvgIpaGuZKzvRMOqTlJj
 EZnL1GwaLYTNQmjvhVzZzTeBPr54eVVYxxP28GzakBGNSQfyDfp6WLWGbswIGxNTf67Z
 wHQA==
X-Gm-Message-State: APjAAAXAEZbISjGJMIg8Mg0M0zZM0vDsOjaqWAviKEOygh7OoEQJ5YZf
 xzx+DvxOpKOUDCW5Z/XMMHE=
X-Google-Smtp-Source: APXvYqzq3Lz+VjHUVJbOvV+K9KYqaCKO4VLPyE3SqnlHZP1nl3CDkSu6mPMA16qqbAvOmUhc3KYfTA==
X-Received: by 2002:a17:90a:1c1:: with SMTP id 1mr15255619pjd.72.1564958975035; 
 Sun, 04 Aug 2019 15:49:35 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:34 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 10/34] genwqe: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:48:51 -0700
Message-Id: <20190804224915.28669-11-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
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
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 "Guilherme G . Piccoli" <gpiccoli@linux.vnet.ibm.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Frank Haverkamp <haver@linux.vnet.ibm.com>
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

This changes the release code slightly, because each page slot in the
page_list[] array is no longer checked for NULL. However, that check
was wrong anyway, because the get_user_pages() pattern of usage here
never allowed for NULL entries within a range of pinned pages.

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Cc: Frank Haverkamp <haver@linux.vnet.ibm.com>
Cc: Guilherme G. Piccoli <gpiccoli@linux.vnet.ibm.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/misc/genwqe/card_utils.c | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/misc/genwqe/card_utils.c b/drivers/misc/genwqe/card_utils.c
index 2e1c4d2905e8..2a888f31d2c5 100644
--- a/drivers/misc/genwqe/card_utils.c
+++ b/drivers/misc/genwqe/card_utils.c
@@ -517,24 +517,13 @@ int genwqe_free_sync_sgl(struct genwqe_dev *cd, struct genwqe_sgl *sgl)
 /**
  * genwqe_free_user_pages() - Give pinned pages back
  *
- * Documentation of get_user_pages is in mm/gup.c:
- *
- * If the page is written to, set_page_dirty (or set_page_dirty_lock,
- * as appropriate) must be called after the page is finished with, and
- * before put_page is called.
+ * The pages may have been written to, so we call put_user_pages_dirty_lock(),
+ * rather than put_user_pages().
  */
 static int genwqe_free_user_pages(struct page **page_list,
 			unsigned int nr_pages, int dirty)
 {
-	unsigned int i;
-
-	for (i = 0; i < nr_pages; i++) {
-		if (page_list[i] != NULL) {
-			if (dirty)
-				set_page_dirty_lock(page_list[i]);
-			put_page(page_list[i]);
-		}
-	}
+	put_user_pages_dirty_lock(page_list, nr_pages, dirty);
 	return 0;
 }
 
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

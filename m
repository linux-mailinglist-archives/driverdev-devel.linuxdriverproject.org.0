Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0067E85B
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 04:21:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F05878794F;
	Fri,  2 Aug 2019 02:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3gGAlBNqVKNG; Fri,  2 Aug 2019 02:21:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCA39878BB;
	Fri,  2 Aug 2019 02:21:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C4AB1BF29C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:21:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3243D22C1A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:21:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3SnRPAgBWqqN for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 02:21:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 4E48322E1C
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 02:21:02 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id k8so33033810plt.3
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 19:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t4E5L+nteFApbv8x9BTzZhAA9CrCHyfc4N+4wDD55sE=;
 b=hrmJ0pEUxxlEVbmnkJiCuXB+z0obVkpM5OAxcIB8ex62qKsRGc8GrJbesoMFhr0ezJ
 BB7gqJEvJ/0j1sMNBYjptk6WEDqh/SuRhAh3YnXCDA+D03E9VD/w0ZTpWsRp/gFtvqDb
 GPSJBQRO2YGZ2n4ciW9tAFCe3EDjB9OuDXHwxqBfuLFzCDYC5sbEZNesZN0XL0xy/T+d
 A/rrSMYh6KaPOeAYQGAhhvKvLVo5NyuQKSBc7dnWcPrp/sW9C+D3tHmYcyJ9WgLD0vU4
 zE+pn4brWMiLPK0lo9h6ZHMbPaOqGStN6e8qWC9iDeImsGRohVaoMFw5HAYT+EunHz7d
 Gu7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t4E5L+nteFApbv8x9BTzZhAA9CrCHyfc4N+4wDD55sE=;
 b=qMFAZZe56ze5GaZXHZJ7nkfsmp885ce18lp+ElACf5/6jwDdbFc4lntomaUJXYfNnW
 Pft7OD34/o0rL1jdhsu2P3jrAtLuSkyxr53fJc2wVUZwC1JJ75YSxEm+sks+sO5+Cb61
 iccxdL/H+GjGb1gGUBEfpsdqCo6m1trvoAAWbrRhBcmv4bQwRDlh5OuxKyLsx4jY/X2x
 8Bw3KMh/Zj/Ia/ZqEp70ciMH/I5aKjvU+Co9noByfTo4ZNBplEsqKpwl8/K+rsYP6oxQ
 IhrYUSu0X+W6113dpKdJ1SJCu6f5q29XHUWIUZJhoFutcKBmlr0gxzfFMNfD3PF7zk5z
 nteg==
X-Gm-Message-State: APjAAAUVybpAp7tIwbRC/lC1nncZnvnwqCVE22U1YGFjDNGBJAtyntbq
 /rlSduq/HYiraxQV9aebDhE=
X-Google-Smtp-Source: APXvYqwMLKf8AGC5hDWCQUPLqudyxsaLfy2JXIWmRI5mzRP+HqysSD+VYVGt/11B9bnV5geCVBXglQ==
X-Received: by 2002:a17:902:20ec:: with SMTP id
 v41mr122012162plg.142.1564712462015; 
 Thu, 01 Aug 2019 19:21:02 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.21.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:21:01 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 32/34] goldfish_pipe: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:20:03 -0700
Message-Id: <20190802022005.5117-33-jhubbard@nvidia.com>
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
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Roman Kiryanov <rkir@google.com>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org
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

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Roman Kiryanov <rkir@google.com>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/platform/goldfish/goldfish_pipe.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/platform/goldfish/goldfish_pipe.c b/drivers/platform/goldfish/goldfish_pipe.c
index cef0133aa47a..2bd21020e288 100644
--- a/drivers/platform/goldfish/goldfish_pipe.c
+++ b/drivers/platform/goldfish/goldfish_pipe.c
@@ -288,15 +288,12 @@ static int pin_user_pages(unsigned long first_page,
 static void release_user_pages(struct page **pages, int pages_count,
 			       int is_write, s32 consumed_size)
 {
-	int i;
+	bool dirty = !is_write && consumed_size > 0;
 
-	for (i = 0; i < pages_count; i++) {
-		if (!is_write && consumed_size > 0)
-			set_page_dirty(pages[i]);
-		put_page(pages[i]);
-	}
+	put_user_pages_dirty_lock(pages, pages_count, dirty);
 }
 
+
 /* Populate the call parameters, merging adjacent pages together */
 static void populate_rw_params(struct page **pages,
 			       int pages_count,
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

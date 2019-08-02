Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E11937E824
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 04:20:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7238B22CD4;
	Fri,  2 Aug 2019 02:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id haWD5HfFfibo; Fri,  2 Aug 2019 02:20:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A4A5422DC7;
	Fri,  2 Aug 2019 02:20:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 847471BF29C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 71475883DA
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:20:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UGpecBTDG3kY for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 02:20:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4DC59883C1
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 02:20:31 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id ay6so33057917plb.9
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 19:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qtbgyNHZ/W16Wsr49ObVlGXNsYs5Ix8cECAWpHw8QNg=;
 b=RO5t4Ioq4WOEkql+z1BxTA9XpQ5l0uBsUNJdBVpEbEdDpylZNAFokBSBfkt63Vmsnw
 KKnFnDLW2SLxaXe4yEcd4Uwphs0F9rh9yrBF7wrtI6jX7Smsup4E8B+OCU5PAghiuPUe
 n/rru2nRkN4fBDLxv0E5LWIc3+ez3bVuBV4gRzIu0YbbR7/jG/nHlqRg4ui2ABpoKbbs
 zzA9SmSgidMvseL2Kb+bN8XRYc2qyorbmCL2eKn81WG2j5TabLu8TlIG3hp8Y7Gq/i02
 vYgsWfOu94xgHEddrADmlOmkGGALS2TQwhC3ZfS61Jjz+jw13+1q5hfNRcQVjxbv88fI
 6ULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qtbgyNHZ/W16Wsr49ObVlGXNsYs5Ix8cECAWpHw8QNg=;
 b=sLvEPMThiJtm2q9k86CKBQGb0ufnWwhAeZRHcfQWwl1Ech7BHastJA2AWPx/e5IJQn
 BdEBGzybmXKDiPNqAHDVV39Dl7N4Lxlq6qfr1ZEPelIUQUgDFpg7xaDOhnCzWFYiL3ri
 n1vtc0Wsc2sv/jyw5hv1LK1pZ836PPbh7gH6rkk8kmYjKmEP096EmSiIRvRdHsn0IgvF
 EAwamv6qTLGDdEI92IPjFJZ4/wPkMNouO3Dy9J9JMep1zaoXAsxplPhSLTOkksuJ528n
 VTrm+RD/J5b/LQjBQB+PTVJ6VY4guN/h1nTM6mNPOIbwOptjKUblUsibQ6Ycf7O2ISfU
 A9aA==
X-Gm-Message-State: APjAAAUGESz8iAMMs/NszAF4iR08yK3YkIwYxj6wgCcUn18cSLD9R4BX
 sZ2TvNsED4F5Zvc/MdlcSWc=
X-Google-Smtp-Source: APXvYqwKrOY4Kztkj41s0a6oi7zayzaXd8LpjaiCIksbrU4wJsvnJgU6mF0Bb9Hw/Pj5xfTEZIafcQ==
X-Received: by 2002:a17:902:5ac4:: with SMTP id
 g4mr131986648plm.80.1564712430821; 
 Thu, 01 Aug 2019 19:20:30 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:30 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 12/34] vmci: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:43 -0700
Message-Id: <20190802022005.5117-13-jhubbard@nvidia.com>
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
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>
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

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Al Viro <viro@zeniv.linux.org.uk>
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Kees Cook <keescook@chromium.org>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/misc/vmw_vmci/vmci_context.c    |  2 +-
 drivers/misc/vmw_vmci/vmci_queue_pair.c | 11 ++---------
 2 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/misc/vmw_vmci/vmci_context.c b/drivers/misc/vmw_vmci/vmci_context.c
index 16695366ec92..9daa52ee63b7 100644
--- a/drivers/misc/vmw_vmci/vmci_context.c
+++ b/drivers/misc/vmw_vmci/vmci_context.c
@@ -587,7 +587,7 @@ void vmci_ctx_unset_notify(struct vmci_ctx *context)
 
 	if (notify_page) {
 		kunmap(notify_page);
-		put_page(notify_page);
+		put_user_page(notify_page);
 	}
 }
 
diff --git a/drivers/misc/vmw_vmci/vmci_queue_pair.c b/drivers/misc/vmw_vmci/vmci_queue_pair.c
index 8531ae781195..e5434551d0ef 100644
--- a/drivers/misc/vmw_vmci/vmci_queue_pair.c
+++ b/drivers/misc/vmw_vmci/vmci_queue_pair.c
@@ -626,15 +626,8 @@ static void qp_release_queue_mutex(struct vmci_queue *queue)
 static void qp_release_pages(struct page **pages,
 			     u64 num_pages, bool dirty)
 {
-	int i;
-
-	for (i = 0; i < num_pages; i++) {
-		if (dirty)
-			set_page_dirty(pages[i]);
-
-		put_page(pages[i]);
-		pages[i] = NULL;
-	}
+	put_user_pages_dirty_lock(pages, num_pages, dirty);
+	memset(pages, 0, num_pages * sizeof(struct page *));
 }
 
 /*
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

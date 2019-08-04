Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 246F180D18
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:49:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BFEF085BAE;
	Sun,  4 Aug 2019 22:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RggCbILZMkTk; Sun,  4 Aug 2019 22:49:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 585CF83FF4;
	Sun,  4 Aug 2019 22:49:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 599631BF591
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 55FCE87AA1
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d0JbMFzQZGhR for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:49:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D8E9387B0A
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:49:41 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id n190so3535713pgn.0
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6zqhiQUR/t5HSZML/x55nFGZKGW5GK1LULKEmO0k7kA=;
 b=hu5YrExV2sbaBMNc30Tq7LBcjGDWN6fA4XsdWSIq37Gwal4TYkzXoLBSc1aN7i+AE1
 bVIm03I7zSnUPoNc0DrhbAQOAdTqkzN/WZ5+3xyT5kplICRjLk7gnM7AiECUFxJQtYf8
 l/vpyueUrdUTa6ElP3ExxKx8ue3ogMcet3zTMrly4eFXGYC31urxAGlYkrOSMCRCSnIc
 Arzc564JY6ON2HabMEPBcS/dFGMN4ODa4koUgN5YXXQfy4c5GL3kiXmJTl6qra2xMUY4
 X0U+ntdMZNCalKgfycF+64XZ+c1uJzhUDj8x9G9dxye9pgPlZzglleDcPGTS1gL3JdjR
 +zXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6zqhiQUR/t5HSZML/x55nFGZKGW5GK1LULKEmO0k7kA=;
 b=sDlDB7mKqY9xaLxPc2hHFWyfK41qkUHDwjhSTGfQE7QIvRKkEntGg0TkC676obfN5B
 3KlhQjWR0OMWsk5dCag0GQqCHS5kN60YRKGCW5jHkGYYmdmdVTUXO7bTo/wsnVAAarJJ
 dS4wROCFqRPanDl2iRs1Ecvltz0md3qOBOBHY4CxBJFxfh4w7QZjKeza//jQdnBxCA73
 VCo7dq54nTmVO2WhpoKH6U1cEaDbdP3L+mSH1uhLzWM/TIfBKChj7WuT5CevXDObMe2z
 9/ImiPhLnKzaTSmJ3vpK+cxKSbHGitZrq62D2TCGW8C6dpZu8WqOt1aXTSMnpA9bsYJc
 Q/aA==
X-Gm-Message-State: APjAAAWjIvj5otx+WHZDgJ9vXHsscvOLywaZ3SubWEC/NLb/cQH7yRn7
 U43qal0iejxy1oKHtG7vUUs=
X-Google-Smtp-Source: APXvYqzKlxaRYSDqTrQ5Buu3RAMAQLfm5nyXOzRFCQZdRK9SX2nPkzOnWKnTtQrduQ4tH9q8VfqmlA==
X-Received: by 2002:a62:b408:: with SMTP id h8mr68625605pfn.46.1564958981600; 
 Sun, 04 Aug 2019 15:49:41 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:41 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 14/34] oradax: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:48:55 -0700
Message-Id: <20190804224915.28669-15-jhubbard@nvidia.com>
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
Cc: linux-fbdev@vger.kernel.org, Rob Gardner <rob.gardner@oracle.com>,
 Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Wei Yongjun <weiyongjun1@huawei.com>, sparclinux@vger.kernel.org,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, Jonathan Corbet <corbet@lwn.net>,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Jonathan Helman <jonathan.helman@oracle.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
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

Cc: David S. Miller <davem@davemloft.net>
Cc: Jonathan Helman <jonathan.helman@oracle.com>
Cc: Rob Gardner <rob.gardner@oracle.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Wei Yongjun <weiyongjun1@huawei.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: sparclinux@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/sbus/char/oradax.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/sbus/char/oradax.c b/drivers/sbus/char/oradax.c
index 8af216287a84..029e619992fc 100644
--- a/drivers/sbus/char/oradax.c
+++ b/drivers/sbus/char/oradax.c
@@ -412,7 +412,7 @@ static void dax_unlock_pages(struct dax_ctx *ctx, int ccb_index, int nelem)
 				dax_dbg("freeing page %p", p);
 				if (j == OUT)
 					set_page_dirty(p);
-				put_page(p);
+				put_user_page(p);
 				ctx->pages[i][j] = NULL;
 			}
 		}
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

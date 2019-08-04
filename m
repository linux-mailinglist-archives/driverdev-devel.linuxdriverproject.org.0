Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F7C80CFF
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:49:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F05F864D4;
	Sun,  4 Aug 2019 22:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pe5Vq-bSnWfE; Sun,  4 Aug 2019 22:49:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F08886473;
	Sun,  4 Aug 2019 22:49:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A831D1BF591
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:49:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A4D6785C00
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:49:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qw6Ilt_7sEBK for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:49:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DD5C285AE9
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:49:23 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id w3so1454905pgt.13
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WGaquJbd5n3vWHVjzVcVo6+uSZsjc3dg9cLGAnxVc2E=;
 b=S3jwFjBv5vti4GSNOLl7usS2vDqH0Q9mdQIeQBRHCABbXZXQSp9OsVY/w2xyL7nTP8
 ZYecNdZYrgO7L+BkQcVPzicUza9nsgbAymJTn56ppaJJ1MbzTKSlKgcZSuVPBHENjv96
 hkgFAzqYxwazXKgNX9N/DjLopqfptr24zOfeivm8zYWH/Y75M1kPiFzhZPYTKsRYejq8
 i/m0sGMLE0jqJ3DENlV+rsSfWOzYUSK0mHJPDAK/WyMC/O+T7ek80SstkS2+jwGF+2aN
 2FgMJxAUKbEXaB1QNjEZ05NRrBMlTBOCQS3Bubk6f7+zHMTxlbMDQcuH/aK8PZQ95vOe
 ii3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WGaquJbd5n3vWHVjzVcVo6+uSZsjc3dg9cLGAnxVc2E=;
 b=qmYmYG9jCv4vuy3KPNqTs/dUluSyhPjJkiP+lVqDhiUP3JfdwpKhf0xA9y/+nczE54
 URIjL1DtFJxw/n5u1xRbi4a7/zop6FQeh10jXpGVy1yUSuz/7531JYxKH80Nat8G0VJw
 8dM9ScBfPSdcxXm8H9jH1TQV6Hbodg2CRq9mtpZ+qHwh2/VKGW34GnRqwhNhEYyEv6L0
 T3MeAeVuSBjCYpxo/tYMqPV4okTZWOgIGhG7vAispNWwTCap1/Wt4KkoKZMN3H+LRrew
 +dgNPdlkb1EGWTUwtr7lU36yYF87nCq4Yt+GrpxhBRUv96cwRJUtyFZ3XLHtN/jaeKU1
 W/4g==
X-Gm-Message-State: APjAAAVYuCixTeouGr9MFP90MMppPmUlWamqpH3Sj/oo1x9vHFUts8PD
 4EFscxiKmcSRhPlJBujnBB0=
X-Google-Smtp-Source: APXvYqzMm6zKD1x+1cfVe8U+T090I2azs0Ee52Xlzl7grLFlv9DOqy91TsDRd0lMc4ZI9h+s7gPOKQ==
X-Received: by 2002:a65:41c6:: with SMTP id b6mr76655023pgq.269.1564958963508; 
 Sun, 04 Aug 2019 15:49:23 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:23 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 03/34] net/ceph: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:48:44 -0700
Message-Id: <20190804224915.28669-4-jhubbard@nvidia.com>
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
 Sage Weil <sage@redhat.com>, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 Ilya Dryomov <idryomov@gmail.com>, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>
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

Acked-by: Jeff Layton <jlayton@kernel.org>

Cc: Ilya Dryomov <idryomov@gmail.com>
Cc: Sage Weil <sage@redhat.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: ceph-devel@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 net/ceph/pagevec.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/net/ceph/pagevec.c b/net/ceph/pagevec.c
index 64305e7056a1..c88fff2ab9bd 100644
--- a/net/ceph/pagevec.c
+++ b/net/ceph/pagevec.c
@@ -12,13 +12,7 @@
 
 void ceph_put_page_vector(struct page **pages, int num_pages, bool dirty)
 {
-	int i;
-
-	for (i = 0; i < num_pages; i++) {
-		if (dirty)
-			set_page_dirty_lock(pages[i]);
-		put_page(pages[i]);
-	}
+	put_user_pages_dirty_lock(pages, num_pages, dirty);
 	kvfree(pages);
 }
 EXPORT_SYMBOL(ceph_put_page_vector);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

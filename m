Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEE680DB3
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:51:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 11D4485D90;
	Sun,  4 Aug 2019 22:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NpGOa6ceJ01I; Sun,  4 Aug 2019 22:51:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9876D85D41;
	Sun,  4 Aug 2019 22:51:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF7911BF591
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EBF0A865C4
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id itjh3E0Fjdxr for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:50:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 61BC88672C
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:50:10 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id a93so35624461pla.7
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=46lxAY1z81U+mrrESVpVIrQ+fWJc6iHl4OExj8KwBEA=;
 b=TnoFvHk+U9GlniOKiXvWmHaHCeiVRyFhspf1Ucco3Opb6Zsra5EKt4aW1VdCEHOoOL
 B19ZrZSjdl4XOLjhMd/tz/suTkdRby0Q/hj5CJZSGF/pCKAPl5af/u3ds9o4NJugQJUH
 wah7eFEy+LBD8ieXrf5M4ghNwdqYF47d1zgnqfS2OWPzozoT/nJvTGXUM3ZYObcV1Nod
 /B+8RZc6MysuCMtgdDFKXIhBZ1vxh5KoYsW/S+ERZyza2fEF3JOhoez0XL3hqg3QsNHf
 A2vrE2EWhCkc/+2Bi4Qkus+K6o78OOjPZC/JIdc8d4G2oWHuj6EfQ91Jku0EJ0FsNSHa
 w9qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=46lxAY1z81U+mrrESVpVIrQ+fWJc6iHl4OExj8KwBEA=;
 b=C2BCS8bV6wOCGcrLv1l7g/LY28byhX/L91bXnVcX8rR86s8wnm+izr/cI8te0CU089
 zFjtcipqpTYvF4l6ZAIsX5og4YySgIaHl7IZXbV6XQJs3rOpQ+jnC9ACfvF2ibwkx9cn
 4mp2vRM1SPkZGr5dQpgH2SMEH2LaUjyUPCTLONfj09sFVo2N4CVBjbyvQESNLj8+E3kD
 2tNYITHKPP2bRqV2ingOm+h5y3Y2oX9egzNDuj0B421aMHh2ZJ5DWy+vYNmOzfR6J49P
 D//bQPHs7bccnjduw0aMViX4NtyVrUh1P/a7lufhAKIBx0+AEKvtpuA9m15PTsJIYwh0
 FEtQ==
X-Gm-Message-State: APjAAAUkjW04fygVpa9psNDf2l9/IktXYkbPVPZb131kS3r1nEQVEmIQ
 Al2yrr8fOB7Ta4eKKL7ee5Q=
X-Google-Smtp-Source: APXvYqzB7V+habp3I96Q8m7XMJqRYvky1QL0M1s1kWUjAVtyhhVWp0HvJtmcLDTq9kGGDNeFtLuO/Q==
X-Received: by 2002:a17:902:9a84:: with SMTP id
 w4mr21647219plp.160.1564959010056; 
 Sun, 04 Aug 2019 15:50:10 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.50.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:50:09 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 32/34] goldfish_pipe: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:49:13 -0700
Message-Id: <20190804224915.28669-33-jhubbard@nvidia.com>
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

As Christoph Hellwig put it, "set_page_dirty() is only safe if we are
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

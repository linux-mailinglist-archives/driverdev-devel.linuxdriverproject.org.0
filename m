Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F0483F2B
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:34:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5230087F50;
	Wed,  7 Aug 2019 01:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e-F2bHHqdvJy; Wed,  7 Aug 2019 01:34:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77D1687D8B;
	Wed,  7 Aug 2019 01:34:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A6EC1BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8683D87D75
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QMFdkA0wlOlI for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:34:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8FA0387D8B
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:34:39 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id t14so38561160plr.11
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=46lxAY1z81U+mrrESVpVIrQ+fWJc6iHl4OExj8KwBEA=;
 b=WuyyNqtpvvlvZwulsOSyl6jjDfFZFL7/Zx5rMnqGOdxDRsEuGcdgN1IewvAvlX+Ui3
 X7btLnm2F40F8RrpBhgVrMU3HOKje9DtE5nK+fpNzyjny+e0S7JZDS2kjkLoxOZDXhQl
 8/grXg9y3uP/GW5F5PAwd4bWzrVFH3BCp78Eig9BKFd6aIXye5gDuBBhD5viuX1OApXQ
 9VIP+L4AUKM2VFr2nldHjLjmSVNA49QX09uR5xAkxNN9xQUujG5Q/Q0AKTjDZbsxdlOq
 g4tQx0EnIYd52Zy5p9V4faNYnaj9xyaWhFJDGaxmSVhObIkgzad4uex02Ars3KOUlzef
 YWIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=46lxAY1z81U+mrrESVpVIrQ+fWJc6iHl4OExj8KwBEA=;
 b=UB8vpnPq3i5xoCeIKssOy77VgXMTaPtG/JOysBGAq4fbtclH/HWUueOMm2RaFz06R1
 HtgMmx+A13VhD5Vsub1WMQYqRxNXcEdSAG31OCUlB5SnWPBFL1o+6Qj8n72590mQA1QW
 qN5CcRI45gCpnh4LeQfonQdybEUFMNnyGHFZlkDPpYY6YYQrqMIeD+RQ53ymDjI4hYN/
 OUovygxYglL6ibKyzNUQx+DejiWPjoCh7MU8RS50gBOWVeaFOtAPA0HQySFYSbKsw27q
 YdRp6iDZlnTeHJ0r/3Kvishx30O5R/49LR0HKTZujEF8rqD9Mrz9diPdRgH9d8DnttU/
 WUmg==
X-Gm-Message-State: APjAAAWDNJlvWwjb8802E48uoyXtrbrROgOsm2mUdxWqGjIgt8c26agw
 t6TkYKY0/BkYeN0RfpZuUYo=
X-Google-Smtp-Source: APXvYqxeu3U+gXlTZOXb8hdX/T/5F9QSVWlhZwpRfNn+ISG+GmBUrBJWAvgFajanndvmV9JUd/JHZg==
X-Received: by 2002:a17:902:a606:: with SMTP id
 u6mr5434497plq.275.1565141679262; 
 Tue, 06 Aug 2019 18:34:39 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:38 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 34/41] goldfish_pipe: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:33 -0700
Message-Id: <20190807013340.9706-35-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
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

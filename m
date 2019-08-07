Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4B883F0A
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:34:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B8DE84476;
	Wed,  7 Aug 2019 01:34:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OXSjq9-_fRaJ; Wed,  7 Aug 2019 01:34:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4116C81A11;
	Wed,  7 Aug 2019 01:34:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AEE511BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9F1498612E
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PBulEj6XS3HS for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:34:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7045286130
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:34:12 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w3so5333428pgt.13
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:34:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JsaN0a6ImilSblrGqgWWjtVL4aaUVqoBD3LMggUShuU=;
 b=GqUNc3X3RUD+fMQ/tQov0eVptsX6vtpAZn07Fz7EwuEqRFmPs6eCUIqWfymN9U5tJQ
 Hp7GWk6oPhSKnPDc9mTSSc0b1ETtX6WZgNyVT9i/ZAc9DVX2wgidQTYQD678snuo6Uld
 OC0AxpA2rwU9kzsgxg4J7222NtI9nwWIQ3kKBxRvKJz1x31XBYs72NYIFgvDtQhOtH6x
 c30ljXQcc0npojtfiU8d5Zil2HhFRjkicdzBOPLsXrn4hkS7yUXDhahjzIOv/1HcFIxR
 8vAP8M1yLlIpgKytXt/GLUCaDmX+n+gX0JAtjCLQsjpUrzEN6iMEgLfOxOdX4VT9I1MD
 gqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JsaN0a6ImilSblrGqgWWjtVL4aaUVqoBD3LMggUShuU=;
 b=M1A/Evrnhq9M/Wh6t6NhLa7XzctBKiuF662Uge2gPeDT90j7aHmXf3Ny7EQQGonnsd
 HIUcm4oS93qysz2uXEZILHQQeOv7xolo0I+nvD5D1ZDP6ncVohVv1H/P5vaD5Yx4l5jQ
 JOMv4JhjAvPQWTREKa6unV985i7VuBf67xKEdU1D8YrXUfgF0g8mRM7h5tZZcXZ0YuWv
 V9nLZNNlbebOcclRW7YjWeLe6Lu+9N40nMfRVFQCt4TSKynDKZFLUyghPvQCr7cWiYTC
 KfeQjoTaBTYo5tAUktDRpBagljpiX0B1Ffe6PwO0IFQMV/I7t3tVXfoCbpYA2XBfyp5u
 bhOA==
X-Gm-Message-State: APjAAAUq1Gy2XvQWCgsfg4HSOvuYlU6jfh/4hwRiFdS76ZC77VAP5+Oj
 mdc34ckLvOXsxEanfY7knLE=
X-Google-Smtp-Source: APXvYqxA3xyoDOQ03wz3+MrAsxUgDjCiiP1q/97dVlMDAvCMqLwWlj7LgNPejGHFGrv69vRcUlGBpA==
X-Received: by 2002:a63:3112:: with SMTP id x18mr5571166pgx.385.1565141652072; 
 Tue, 06 Aug 2019 18:34:12 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:11 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 17/41] staging/vc04_services: convert put_page() to
 put_user_page*()
Date: Tue,  6 Aug 2019 18:33:16 -0700
Message-Id: <20190807013340.9706-18-jhubbard@nvidia.com>
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
 linux-rdma@vger.kernel.org, Suniel Mahesh <sunil.m@techveda.org>,
 x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Mihaela Muraru <mihaela.muraru21@gmail.com>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Stefan Wahren <stefan.wahren@i2se.com>, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, Kishore KP <kishore.p@techveda.org>,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 Sidong Yang <realwakka@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>
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

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Cc: Eric Anholt <eric@anholt.net>
Cc: Stefan Wahren <stefan.wahren@i2se.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Mihaela Muraru <mihaela.muraru21@gmail.com>
Cc: Suniel Mahesh <sunil.m@techveda.org>
Cc: Al Viro <viro@zeniv.linux.org.uk>
Cc: Sidong Yang <realwakka@gmail.com>
Cc: Kishore KP <kishore.p@techveda.org>
Cc: linux-rpi-kernel@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 61c69f353cdb..ec92b4c50e95 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -336,10 +336,7 @@ cleanup_pagelistinfo(struct vchiq_pagelist_info *pagelistinfo)
 	}
 
 	if (pagelistinfo->pages_need_release) {
-		unsigned int i;
-
-		for (i = 0; i < pagelistinfo->num_pages; i++)
-			put_page(pagelistinfo->pages[i]);
+		put_user_pages(pagelistinfo->pages, pagelistinfo->num_pages);
 	}
 
 	dma_free_coherent(g_dev, pagelistinfo->pagelist_buffer_size,
@@ -454,10 +451,7 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
 				       __func__, actual_pages, num_pages);
 
 			/* This is probably due to the process being killed */
-			while (actual_pages > 0) {
-				actual_pages--;
-				put_page(pages[actual_pages]);
-			}
+			put_user_pages(pages, actual_pages);
 			cleanup_pagelistinfo(pagelistinfo);
 			return NULL;
 		}
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

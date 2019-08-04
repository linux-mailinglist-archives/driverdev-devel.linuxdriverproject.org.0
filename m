Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 077D780D51
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:50:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8736A86804;
	Sun,  4 Aug 2019 22:50:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o07xGpEFsOkr; Sun,  4 Aug 2019 22:50:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B211D864F4;
	Sun,  4 Aug 2019 22:50:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 945D61BF868
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8FB5E85BAE
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wyd43Zr-AZhH for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:50:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F116085A5A
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:50:00 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id y8so35696364plr.12
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uQGOdku7Vl3REPvOJ8nTMNJxS9zoi9IIquO7PYdcYIA=;
 b=oIs58MXEzvjiKDUeW9Xx92JohiWAGomnLQHItXPj3gpTBXaBLirgbU7J3jjvMstF5d
 BR9zwxRQqnHrZHmC+32LB+Dm9++A3dYw7Z2gJLbUoT9k9Up7ZxFGUG2x0WkDD/8qau+X
 8ICuV69VxIrVLbwg5iBoAnxA83TGhAb0DJKf1XP2ErlJJVcbhXrO4o1FNI28ciyGEPgV
 qFlJ/47uB+ONPIryHewnPf7OnXpaPBMbJVHPddHFRguTyQ/cP/UdMYVUDXMppTee+whc
 a4C30SWihk27rz0hGEMgPT9159ZIY9uL4Q4yGaDE4CFFho6QVBfddU7eeA74Zc4mT+ns
 u84Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uQGOdku7Vl3REPvOJ8nTMNJxS9zoi9IIquO7PYdcYIA=;
 b=KRDzk5nr02ARrjHoTiN7M9sd0JjNZtfR5oT3L0na+fbR1t29gRLvAz6x6haCUx7eIV
 vQ+AyjeZxEGvi9ReuzV6xCh+dpWTsT2lmj1JipffV+Kt4OBh+lea0hXXfvA7p0Jl6d8Z
 4YbKE9pkChvYt+KkVI17re0tsXnCmA8Z/ClYeu9OtatPT7G++TI9gm8IKRhabcA/dYjf
 Q5r0IaimFtko0tyZQfHv+vNCU4Sj6LDBF0amkzsikopcTfOmu52TeY1mTx/Sr9/O/RHg
 FT7L6DZ1BBbU3Axst1ahmTbuesSYMfvG/S43GW8KMe1ws445r8HyO0MHWy9QyJhqUAzI
 aVvQ==
X-Gm-Message-State: APjAAAWEjneEQ1ogIXzVtNpDAJrLLW9DSliFxQX3jmSxVoUcSr4ZeZwu
 rUcs6XDPvOj1deHJ/l6mr7s=
X-Google-Smtp-Source: APXvYqw3vCtbIdRevAqGeALSRYvYtlE73TuMq0puGfIkY6Ze8a3qg+Hme5vTx4BKBMgk8zaLu9jyhw==
X-Received: by 2002:a17:902:2b8a:: with SMTP id
 l10mr141386929plb.283.1564959000721; 
 Sun, 04 Aug 2019 15:50:00 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:50:00 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 26/34] mm/gup_benchmark.c: convert put_page() to
 put_user_page*()
Date: Sun,  4 Aug 2019 15:49:07 -0700
Message-Id: <20190804224915.28669-27-jhubbard@nvidia.com>
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
 "Michael S . Tsirkin" <mst@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, Keith Busch <keith.busch@intel.com>,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, YueHaibing <yuehaibing@huawei.com>,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
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

Reviewed-by: Keith Busch <keith.busch@intel.com>

Cc: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
Cc: Michael S. Tsirkin <mst@redhat.com>
Cc: YueHaibing <yuehaibing@huawei.com>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 mm/gup_benchmark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/gup_benchmark.c b/mm/gup_benchmark.c
index 7dd602d7f8db..515ac8eeb6ee 100644
--- a/mm/gup_benchmark.c
+++ b/mm/gup_benchmark.c
@@ -79,7 +79,7 @@ static int __gup_benchmark_ioctl(unsigned int cmd,
 	for (i = 0; i < nr_pages; i++) {
 		if (!pages[i])
 			break;
-		put_page(pages[i]);
+		put_user_page(pages[i]);
 	}
 	end_time = ktime_get();
 	gup->put_delta_usec = ktime_us_delta(end_time, start_time);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

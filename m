Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C7C83FA0
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:35:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1F1C0221FB;
	Wed,  7 Aug 2019 01:35:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f8vVlIlPcHS6; Wed,  7 Aug 2019 01:35:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E7637221B1;
	Wed,  7 Aug 2019 01:34:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6B14A1BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 566B722193
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r85pwSaeT7lW for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:34:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A7FA221FB
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:34:30 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w3so5333794pgt.13
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uQGOdku7Vl3REPvOJ8nTMNJxS9zoi9IIquO7PYdcYIA=;
 b=L6PrjOsrS6boUIN/DOymS83vV7YlAKPpT9Xdrfk7ax1OcCgE7PAsCiB8I3wTJde6P0
 jWSZSVN0MQGqPFzlI9I6nQdqRL1oXS8MVgrMBG2RUC/9SCRR/2JXuxH0Bc1AbFhAasOV
 xWwwBWKfNUqmzHZ9usEoeFIoZA0TFhsqfa1vxdEBmkB+UHsGh6j98UqgUEfpOkZ8azEw
 XctfU3/I30ArTXSEYH2C9KRaAbt0v2hqFYnx8WGIkLVSjGqesnYt/lo+Nif4WusFAWAo
 kwn89YnMjOOYX9/SsgW6zCkgnnE6VjyidKN7erx1BI5f02v6uid8cXohhKk4FwCmi1FI
 cYgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uQGOdku7Vl3REPvOJ8nTMNJxS9zoi9IIquO7PYdcYIA=;
 b=YjveKNYSEgYfGTEL7eWvRdJPXJd5Vate/OtdSnpfPmgMlEUOgzGzA8uOfNgrUNYPvR
 WJukjysMJbZC1dsOUMovIh8jIBUaZbO79sQeUh4HU/0pjKaMN8BVizvrNORvXVaOnSPI
 QtB8DXYH87utH2K0FQt0ZMxsiW+n/1ziF9rj0RhjJYnmfLxsdolb3y/l/S5dRPIfmAX0
 Nxeyxbg2RVKaVAOymMiAwVbYwnOFrzSVPPAGGp3ZUmXYUp4I7O7QKtQY2PjqeLyajxDB
 bsLwSY4cHJ9j1SAbtwRrSYYwzZgYNeTd0jXKkLhWsbgkGZLtuB6HhP722kvvG5HFt0sL
 TCaQ==
X-Gm-Message-State: APjAAAWHmImrRWF8GcklRcsoNqmR60c5cW0e0jhZXZ045KILUa0uEdxR
 SCngW5jUqM2WWPE5qRdzwDs=
X-Google-Smtp-Source: APXvYqyaoKmDNdUJQD7xvZFSQjCmYuVY+zKJwqcOsFMJXKJ76CQxjmhpKXdBBVyw94JCP/lkY4QWYw==
X-Received: by 2002:aa7:8f2c:: with SMTP id y12mr6988234pfr.38.1565141669837; 
 Tue, 06 Aug 2019 18:34:29 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:29 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 28/41] mm/gup_benchmark.c: convert put_page() to
 put_user_page*()
Date: Tue,  6 Aug 2019 18:33:27 -0700
Message-Id: <20190807013340.9706-29-jhubbard@nvidia.com>
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

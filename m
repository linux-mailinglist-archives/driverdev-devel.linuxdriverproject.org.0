Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A95BA83EF1
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:34:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3221281424;
	Wed,  7 Aug 2019 01:34:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dUK-7cfg9muz; Wed,  7 Aug 2019 01:34:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1827E863F4;
	Wed,  7 Aug 2019 01:34:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E82D1BF9B0
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:33:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 596D0203AA
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:33:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TWrwl3iKC2mD for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:33:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id CA24920131
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:33:52 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id t14so38560409plr.11
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WGaquJbd5n3vWHVjzVcVo6+uSZsjc3dg9cLGAnxVc2E=;
 b=D48he9iwy4Ni5qMxjRsQe5pMA51Ifn5pyuXezWFqJsv4KqB2UjEmI492A+H3zjBozl
 z4vxBXelaWALb4vc9TiVQD3xffg2JpycIgMryRj7DdNlQnLoLTJRT2Pr6AqdUldNm96s
 mYxTY6jOTBKy5nq3H5sJhLnHjju1CLRU8H+bKZdHFr7DowwoqkFP2M9FXdH0qDJ2nJJ/
 ss8voK0KQx4e801oBm16bmWlzeZbPR02TnPcDNJm+WHvvx9pL8SRfhdK+3B1hDFHty8B
 eCloTAbKTVyukUiotzfMnjDTWGmB31ermFBDzmeDTGPpsb9KGnZpeSIajIf3hrjzGw2F
 MknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WGaquJbd5n3vWHVjzVcVo6+uSZsjc3dg9cLGAnxVc2E=;
 b=MGCrjTZQ5XScNULTks19bO/DWSVi5cBtEXj71X3lTHk41rlW/iSrwCAIYMp+DOSVFv
 HVFcpTDHhyc456YCuPwZzEw3vIhvukjV/5sf/80HlR91UXvO75SucuormXclNOT3YykI
 5AohYUYmDVKgL9MCj62Omeu/LL4RZ8pnODBQRx/xovKBprnQpRwQd1fCGfusAU5U+rTh
 qr39zInAmCB1Q1S9JT5ZrqBS6Ifp2Dc9x/6wMa89ndnd3qP9vj5d+vKFOp3U26MPUPqY
 Br6aPjmDxFoOE1ZtQbYkzjTn5HIP2hnT5RF6CZWE4wtjn1OW7rr/z6eG7HQ0Sbfc0VdY
 AKCQ==
X-Gm-Message-State: APjAAAU11g0lirLqbY170vV+R0zP3vy1+ZZAcm4JjsG4IK+TSzpWNo3M
 yqrpX46ppwwwXrd8IGRNGzs=
X-Google-Smtp-Source: APXvYqyUH791dwLub9+aSF5x8hGs1SuLVkdyMKqfaB808Vqluqgizufg0qdY3/pJKJrf/LUH7OWf8Q==
X-Received: by 2002:a17:902:29e6:: with SMTP id
 h93mr5591074plb.297.1565141632504; 
 Tue, 06 Aug 2019 18:33:52 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.33.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:33:52 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 05/41] net/ceph: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:04 -0700
Message-Id: <20190807013340.9706-6-jhubbard@nvidia.com>
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

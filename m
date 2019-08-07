Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8505383F1F
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:34:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 369C586149;
	Wed,  7 Aug 2019 01:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IufqcGe6bKJe; Wed,  7 Aug 2019 01:34:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 231B786153;
	Wed,  7 Aug 2019 01:34:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0261E1BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF394221FB
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F9aCa9j6TkGW for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:34:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 6EC1C22005
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:34:22 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id o13so42524368pgp.12
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6GC3vp7Kgk6wrS2t1aIFSliRmKpmpPmHRVTf1Sq+2hE=;
 b=NDRrGTHqLYH0GVc6uMIRr4mVyV40WfAqYn7w+X7B2+KxadDpBkUoDH1692sptrKq4y
 C2b84L9+UrVSHeZfQfv6N2zieXkMMjWSuutP0ntWCNqq+OA3nS79IQYMOR/Bean1Ukkm
 w7u/RLKab4ibriFSyZKOgsWuNa5tCFv8C2bD6EQGHf8xo4i0ZMfxDnYEz3SYXrEQ1CAQ
 ph6xeZb31fEX0ILajRxBkvT5tnY8c7uU4gyqYPRAJWZF0hsMvVjXdHAtEuwcqejfTPc4
 Etr29q0fUGsdTj13fryfrujh6CCSRKTL9s9VWAxoxYETeOz9px/+oFZuuGBV9dnVGiqV
 vySQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6GC3vp7Kgk6wrS2t1aIFSliRmKpmpPmHRVTf1Sq+2hE=;
 b=ApQNULA1UbG4HTnQLMvoj6SHsSAM/26GZaF/7IZ3bBk40M7xR+8muFLhnEu+TvDqA1
 ZOm7oKXXUwWLZyRRBnKXaROl8D31mT9ujgnVT6AchWJcml+6w+KzHBe3+M4BtJl/Mmiv
 phMlvfvBR44Tr3LiLaMBi3tNcExZHLm/FAOjkXfK8GNMFX/e3YOrAOMxEUnh2Jp8PbrX
 JOjEzxIWJAuE0Gtr4EV9g8ty5Lt4bkfHP6jMZueKIgFGCYgp6TnmutRZIef/XhproYKm
 UmNZ9Z8pVy5EBlvbzKej4MgXnyKfEAp5h8jji/tVXhPo6Eds1edjRSvPLYXmFXBrN5gI
 CmAQ==
X-Gm-Message-State: APjAAAWPtBRcpvM4Uvmx2iXaWbEcqCZ65Y3yFU9PprPvY8pMfl4HxPmL
 E3uuC4GEZAoT7Sw6fUZPzUM=
X-Google-Smtp-Source: APXvYqwBJlH3d0L/1BSxFnL+vLT8aQU3g2pJmlFcXlcqO/GjIhh0NRs5+pZNe4h8FrEWDwW4ivgjRA==
X-Received: by 2002:a63:124a:: with SMTP id 10mr5554258pgs.254.1565141661706; 
 Tue, 06 Aug 2019 18:34:21 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:21 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 23/41] fs/exec.c: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:22 -0700
Message-Id: <20190807013340.9706-24-jhubbard@nvidia.com>
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
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
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

Cc: Alexander Viro <viro@zeniv.linux.org.uk>
Cc: linux-fsdevel@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 fs/exec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/exec.c b/fs/exec.c
index f7f6a140856a..ee442151582f 100644
--- a/fs/exec.c
+++ b/fs/exec.c
@@ -227,7 +227,7 @@ static struct page *get_arg_page(struct linux_binprm *bprm, unsigned long pos,
 
 static void put_arg_page(struct page *page)
 {
-	put_page(page);
+	put_user_page(page);
 }
 
 static void free_arg_pages(struct linux_binprm *bprm)
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

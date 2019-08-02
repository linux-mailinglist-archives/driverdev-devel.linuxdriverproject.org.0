Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 522FB7E841
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 04:21:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0184F88496;
	Fri,  2 Aug 2019 02:21:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jsQiulFr4ZO2; Fri,  2 Aug 2019 02:21:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 794CA883DC;
	Fri,  2 Aug 2019 02:21:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A1B91BF29C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:21:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3127A8798A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:21:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GZ+q163H00TV for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 02:21:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D0E5C878F1
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 02:21:00 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id r1so35144814pfq.12
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 19:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b/YV2nCBRUvj+JHalhe5VKLnhqnMLLZTxEiSQrNBGLQ=;
 b=LoaCL2H2RUJBCIOglYnaArkmIVWTYlGIsKjGOYisZuAUApfhu5gEmc6qkNjj0+H7tu
 P+8Dh9t16ihvD6gplnd7Tc9AK6ZGCZeLjxm8tt5yZaZLJjevhgAQKR5u0bAClFOVBiw3
 mudk+AK8dwI6nYLVBSSjbYQjnEo/x77kPGPgsQFzLk0mY0MTwpLYueBrrkls4g4lNcFE
 23WeAWQvuXbP3ljk10sU7SrPFsFGjeRWLbXNTJO4ixgqQlxC9gc1Tv3tUxDQgjI0BYi3
 8BhTJVYtfR/r0jUz//rNUXMcepW6CTlPDrLR0cTlbj3o8jhk3sRuBiigNZ2CjgqdDsZo
 Ctuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b/YV2nCBRUvj+JHalhe5VKLnhqnMLLZTxEiSQrNBGLQ=;
 b=N6acPnFkUJ5Ef+WCW8oE0POogDSlaHYILvjJFXcoYfM2P7H4I0GDyR+uSO9yF3LhLU
 d5Z/m85ImVRo25v9uzbRqPOHG6aggBAalXnJYmIaxSR4/ElIPXdfOJj9TotvXpivcS4t
 wmzO2/vh9imjNXHVlGwLPLSSxYOoq9BXz7fOLa6RL2pYD3VF6yMgK02Rl/NpZuhrXb0c
 MyY5EsLOdekqVVUflrKGlYCa+Balh35H/9247eLOLiwcOI/UhPBQ3kv6WcIMdjDhCjlK
 8qkwZId34olAyj/RHcm6TCHWVRkX4LqgQr+ErPuWc5FW7b9rqa6AskEYeO177uAIUQZV
 6Osw==
X-Gm-Message-State: APjAAAVVXzb29vB5NQjcS0SId3gffI9x2tBhkAxKBvlXQBTa2Bt/tEIi
 D3USwB3cXbNgYjaymAUscRo=
X-Google-Smtp-Source: APXvYqwGNmSeCqbGUwEK1nMIVRCwdEn4NOX6aNf7I9lvnteHEiZ+Pa2UbMiy7LcaaaYIQGQbOjX2Vg==
X-Received: by 2002:a17:90a:3086:: with SMTP id
 h6mr1977670pjb.14.1564712460540; 
 Thu, 01 Aug 2019 19:21:00 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:21:00 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 31/34] nfs: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:20:02 -0700
Message-Id: <20190802022005.5117-32-jhubbard@nvidia.com>
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
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
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

Cc: Trond Myklebust <trond.myklebust@hammerspace.com>
Cc: Anna Schumaker <anna.schumaker@netapp.com>
Cc: linux-nfs@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 fs/nfs/direct.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/fs/nfs/direct.c b/fs/nfs/direct.c
index 0cb442406168..b00b89dda3c5 100644
--- a/fs/nfs/direct.c
+++ b/fs/nfs/direct.c
@@ -278,9 +278,7 @@ ssize_t nfs_direct_IO(struct kiocb *iocb, struct iov_iter *iter)
 
 static void nfs_direct_release_pages(struct page **pages, unsigned int npages)
 {
-	unsigned int i;
-	for (i = 0; i < npages; i++)
-		put_page(pages[i]);
+	put_user_pages(pages, npages);
 }
 
 void nfs_init_cinfo_from_dreq(struct nfs_commit_info *cinfo,
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C0C83EEF
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:34:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3DC9F81388;
	Wed,  7 Aug 2019 01:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tuQtFkj5iPwP; Wed,  7 Aug 2019 01:34:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3BBC281438;
	Wed,  7 Aug 2019 01:34:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0B661BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 909B186141
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:33:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H9kjwlmMdyby for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:33:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4BA288614E
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:33:51 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id k8so38605060plt.3
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qSYlns3rxzw4u/DyjG2ivKH4pSlvpz3tTvNpv+Vzl0A=;
 b=o6mo9l1jaXg+eMDFKaNMa2tg/rxLBBKYWlvcPGnYqTLJ6EWvSYsiRghX6j47/q9rMr
 84j8e3Yul6LQ7lHeoCZqaOtV1Y4Gv5o9K0/EGcQDxw/gR6R/7t0gQcvoTpKrmjd3fG8g
 hiqPFCS5vJa1Qj7lCZhoWWL6yOXq4is+EBT1hKsXYnV7zaRUazBHi3BtdYNpYAe5CRju
 z7Dmd9KsYgKv//T3YZfMHcVWWju6h+mXkz/E9tEKZv46K/hHidNAqz7F/GmH0YADDlhE
 liPbKMnwOVxubOeskSFOatlavAAiM6+YdZhWA6YXMMK8L2WunUwM4F+csPpaCLsukLQY
 QFvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qSYlns3rxzw4u/DyjG2ivKH4pSlvpz3tTvNpv+Vzl0A=;
 b=TWk7229Xm/ooZMuPgHGd5y7ytncgfhyhFgLcflL7ayO6V47kShXuBlCrYu5vjcVJPY
 mO/EIMr/syvDh2o+Qv/tc6d+2NjnxLXJlF+l/A/QcswfsDK1Gc7hDQNLTMY/BxFDPgBS
 WwPDYQcf6zbr0UrZmKxeiUJLPi5VMvhI5DRecKSOKMtyprs6hVxBJzXDoT9MkEGZ1Wxx
 mZ6PS1bmCCFOhUnbZU8hb+1wT5rLHhqfvyBhr8WriryKZGlYWBv6wO9fGbNVzVctRoBM
 Gz6KGeiB/SdmX+SkF5Ie7VC2/aIUJStdp2rWUb3CqJVAycAYRPBrL1Fwb9jfjiqBsFPX
 m2RQ==
X-Gm-Message-State: APjAAAWJczYcFtQyRoblJAQu+ezs+BFWRlJ/qE1AmdaNvXAMPaSlVicX
 JmjJaBCfBzR6iC5ABv+EQck=
X-Google-Smtp-Source: APXvYqxrQ92FJ5fnVrv9nCzHJjd2+LbhtkGZjTJsccqKC5giOi/hDrrdS9iR/bRMrAzgu/a8QFmu2Q==
X-Received: by 2002:a17:902:bc83:: with SMTP id
 bb3mr6081534plb.56.1565141630984; 
 Tue, 06 Aug 2019 18:33:50 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.33.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:33:50 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 04/41] net/rds: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:03 -0700
Message-Id: <20190807013340.9706-5-jhubbard@nvidia.com>
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
 intel-gfx@lists.freedesktop.org,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>, linux-block@vger.kernel.org,
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

Cc: Santosh Shilimkar <santosh.shilimkar@oracle.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: netdev@vger.kernel.org
Cc: linux-rdma@vger.kernel.org
Cc: rds-devel@oss.oracle.com
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 net/rds/info.c    |  5 ++---
 net/rds/message.c |  2 +-
 net/rds/rdma.c    | 15 +++++++--------
 3 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/net/rds/info.c b/net/rds/info.c
index 03f6fd56d237..ca6af2889adf 100644
--- a/net/rds/info.c
+++ b/net/rds/info.c
@@ -162,7 +162,6 @@ int rds_info_getsockopt(struct socket *sock, int optname, char __user *optval,
 	struct rds_info_lengths lens;
 	unsigned long nr_pages = 0;
 	unsigned long start;
-	unsigned long i;
 	rds_info_func func;
 	struct page **pages = NULL;
 	int ret;
@@ -235,8 +234,8 @@ int rds_info_getsockopt(struct socket *sock, int optname, char __user *optval,
 		ret = -EFAULT;
 
 out:
-	for (i = 0; pages && i < nr_pages; i++)
-		put_page(pages[i]);
+	if (pages)
+		put_user_pages(pages, nr_pages);
 	kfree(pages);
 
 	return ret;
diff --git a/net/rds/message.c b/net/rds/message.c
index 50f13f1d4ae0..d7b0d266c437 100644
--- a/net/rds/message.c
+++ b/net/rds/message.c
@@ -404,7 +404,7 @@ static int rds_message_zcopy_from_user(struct rds_message *rm, struct iov_iter *
 			int i;
 
 			for (i = 0; i < rm->data.op_nents; i++)
-				put_page(sg_page(&rm->data.op_sg[i]));
+				put_user_page(sg_page(&rm->data.op_sg[i]));
 			mmp = &rm->data.op_mmp_znotifier->z_mmp;
 			mm_unaccount_pinned_pages(mmp);
 			ret = -EFAULT;
diff --git a/net/rds/rdma.c b/net/rds/rdma.c
index 916f5ec373d8..6762e8696b99 100644
--- a/net/rds/rdma.c
+++ b/net/rds/rdma.c
@@ -162,8 +162,7 @@ static int rds_pin_pages(unsigned long user_addr, unsigned int nr_pages,
 				  pages);
 
 	if (ret >= 0 && ret < nr_pages) {
-		while (ret--)
-			put_page(pages[ret]);
+		put_user_pages(pages, ret);
 		ret = -EFAULT;
 	}
 
@@ -276,7 +275,7 @@ static int __rds_rdma_map(struct rds_sock *rs, struct rds_get_mr_args *args,
 
 	if (IS_ERR(trans_private)) {
 		for (i = 0 ; i < nents; i++)
-			put_page(sg_page(&sg[i]));
+			put_user_page(sg_page(&sg[i]));
 		kfree(sg);
 		ret = PTR_ERR(trans_private);
 		goto out;
@@ -464,9 +463,10 @@ void rds_rdma_free_op(struct rm_rdma_op *ro)
 		 * to local memory */
 		if (!ro->op_write) {
 			WARN_ON(!page->mapping && irqs_disabled());
-			set_page_dirty(page);
+			put_user_pages_dirty_lock(&page, 1, true);
+		} else {
+			put_user_page(page);
 		}
-		put_page(page);
 	}
 
 	kfree(ro->op_notifier);
@@ -481,8 +481,7 @@ void rds_atomic_free_op(struct rm_atomic_op *ao)
 	/* Mark page dirty if it was possibly modified, which
 	 * is the case for a RDMA_READ which copies from remote
 	 * to local memory */
-	set_page_dirty(page);
-	put_page(page);
+	put_user_pages_dirty_lock(&page, 1, true);
 
 	kfree(ao->op_notifier);
 	ao->op_notifier = NULL;
@@ -867,7 +866,7 @@ int rds_cmsg_atomic(struct rds_sock *rs, struct rds_message *rm,
 	return ret;
 err:
 	if (page)
-		put_page(page);
+		put_user_page(page);
 	rm->atomic.op_active = 0;
 	kfree(rm->atomic.op_notifier);
 
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C19F80D73
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:50:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9AECF204C2;
	Sun,  4 Aug 2019 22:50:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lTm8Yd1U43e2; Sun,  4 Aug 2019 22:50:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9B9ED2049A;
	Sun,  4 Aug 2019 22:50:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C1941BF591
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 03557865E2
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6jvlZnbqLtqe for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:50:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CF959864E5
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:50:05 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id a93so35624401pla.7
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:50:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P44t64b1Yt2CczJo6SOAPYnnEfAXhRMhGjbg0YSdFKY=;
 b=M2L6YAdxRG9wjsRrCe6Hi1BWSuOg3nnT/7fZiBi9EPm8FKwRKPZG/qe2iVkh5HnVN4
 aOY3UbjkBBnyU76TUmUntE+kZe6hTFiJw358fIRHno09JT1X6eXkCbDzppqL0p2wk4as
 lvnBxcaafGoFzaHDQmz1tjx1PupzVr+3Bwm67hS0uZ1vXhGSeRklj059Ttpi/TbXqeOB
 q+Wl+DhD48e6x3JgIGWaWg109om0eB6fx6VWuDjwbuhJAY9G+Qx7/vpxnkVUdLKuN2o0
 4E0MKgE+4sHPl7NeWK7fjvH31HAT3/QXcQRRRT0MdjjRb3hC4ZkOnyD0xdYCwRJ/SF1P
 5dnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P44t64b1Yt2CczJo6SOAPYnnEfAXhRMhGjbg0YSdFKY=;
 b=aGiJ6OO8lq9pjz1f5IFDC3e7rxmi7U2+xsASHaE1cIKedM2vOm6RRWNK/RN2eLCrV6
 ObqO1CIPNnBTnvpAReI72zxU9d6UHdv37Tdb/KTJhPHcJ+LsEJOhGJTBB+1ItcTiaMSg
 U6xHPt6FDBXWaUoVE+wS8sFMoQJSAKYoQ9IrOaw0KmSZzwvcCjmo02rjpspxw5gU5bDb
 6vs8XCd2ITTPJep03yzVSyHZXuNYAiRaBtxtcaNZXYGEo9OcGv6ZDsqnZI8+Nn08osOg
 C/TWGdv4BBYElo6TmcSFPhJZhoFhXHtTe4pYMbBWnxttimNxND1NYj0iFf+BsPOQFH70
 i2Fw==
X-Gm-Message-State: APjAAAXFUBOfzsnT4rL++N9zv5N5vFSlJMSEr8khG3UAs+CdHkjqW7Tm
 tH1xbOgvQOOkRNHJF+kx2WE=
X-Google-Smtp-Source: APXvYqwAR1ooAm+K3YiNJXFD4tuydWLDFWaO0CLJ4VvvN+1W/RZGreelHnJEnGprjIniv/pPljEZRw==
X-Received: by 2002:a17:902:7202:: with SMTP id
 ba2mr144069047plb.266.1564959005550; 
 Sun, 04 Aug 2019 15:50:05 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.50.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:50:05 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 29/34] mm/process_vm_access.c: convert put_page() to
 put_user_page*()
Date: Sun,  4 Aug 2019 15:49:10 -0700
Message-Id: <20190804224915.28669-30-jhubbard@nvidia.com>
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
 Ingo Molnar <mingo@kernel.org>, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Rashika Kheria <rashika.kheria@gmail.com>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Andrea Arcangeli <aarcange@redhat.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 linux-rpi-kernel@lists.infradead.org, Jann Horn <jann@thejh.net>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 Christopher Yeoh <cyeoh@au1.ibm.com>, linux-fsdevel@vger.kernel.org,
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

Cc: Al Viro <viro@zeniv.linux.org.uk>
Cc: Andrea Arcangeli <aarcange@redhat.com>
Cc: Christopher Yeoh <cyeoh@au1.ibm.com>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Jann Horn <jann@thejh.net>
Cc: Lorenzo Stoakes <lstoakes@gmail.com>
Cc: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc: Mike Rapoport <rppt@linux.vnet.ibm.com>
Cc: Rashika Kheria <rashika.kheria@gmail.com>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 mm/process_vm_access.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/mm/process_vm_access.c b/mm/process_vm_access.c
index 357aa7bef6c0..4d29d54ec93f 100644
--- a/mm/process_vm_access.c
+++ b/mm/process_vm_access.c
@@ -96,7 +96,7 @@ static int process_vm_rw_single_vec(unsigned long addr,
 		flags |= FOLL_WRITE;
 
 	while (!rc && nr_pages && iov_iter_count(iter)) {
-		int pages = min(nr_pages, max_pages_per_loop);
+		int pinned_pages = min(nr_pages, max_pages_per_loop);
 		int locked = 1;
 		size_t bytes;
 
@@ -106,14 +106,15 @@ static int process_vm_rw_single_vec(unsigned long addr,
 		 * current/current->mm
 		 */
 		down_read(&mm->mmap_sem);
-		pages = get_user_pages_remote(task, mm, pa, pages, flags,
-					      process_pages, NULL, &locked);
+		pinned_pages = get_user_pages_remote(task, mm, pa, pinned_pages,
+						     flags, process_pages, NULL,
+						     &locked);
 		if (locked)
 			up_read(&mm->mmap_sem);
-		if (pages <= 0)
+		if (pinned_pages <= 0)
 			return -EFAULT;
 
-		bytes = pages * PAGE_SIZE - start_offset;
+		bytes = pinned_pages * PAGE_SIZE - start_offset;
 		if (bytes > len)
 			bytes = len;
 
@@ -122,10 +123,9 @@ static int process_vm_rw_single_vec(unsigned long addr,
 					 vm_write);
 		len -= bytes;
 		start_offset = 0;
-		nr_pages -= pages;
-		pa += pages * PAGE_SIZE;
-		while (pages)
-			put_page(process_pages[--pages]);
+		nr_pages -= pinned_pages;
+		pa += pinned_pages * PAGE_SIZE;
+		put_user_pages(process_pages, pinned_pages);
 	}
 
 	return rc;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

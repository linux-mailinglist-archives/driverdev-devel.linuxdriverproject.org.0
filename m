Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 130B580D48
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:50:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 90B0D204CB;
	Sun,  4 Aug 2019 22:50:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F7aWx9ZAYc9b; Sun,  4 Aug 2019 22:50:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 07E43204C6;
	Sun,  4 Aug 2019 22:50:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 159C81BF8B4
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B898E864E0
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cNaNLFrpydvl for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:50:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9E1B2863D9
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:49:57 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id i189so38600753pfg.10
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rRiJNzkH0bRoPJKYXoQcsROADD9YH4USeXVLEsmAa1E=;
 b=AV7uFQE9YUuDd+D7n/raE3+Vd4+M3WfHMpSGBy7Po/eVbcIBoj8uNAj9DUgT5bKiPy
 NOFpz/m3dZOdwDIxZQeVlxsCTnZ92dZxKMNJ/rR2X1bMUek0j8TGq+u0eAdIPX6nv7Xg
 3xla0EEXNbB0lWncn+d/ABroqlg3T2U7E2b5B9Xg8cDDZKP8nXSMimiXqXtFe+tBDXhV
 ARezJERjiP3GeR4zOW6+cUq9Pz5Hkpr43jELcaC0lfmmiiWVj3OueADfK4ODHerMWl3x
 WKZ0WyFn5raZ50oDfnPOKa2jV6SJBQSgxKSa9LR9P0FGYWA2KC5auYEx1XvMz/0dUJhq
 D/Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rRiJNzkH0bRoPJKYXoQcsROADD9YH4USeXVLEsmAa1E=;
 b=kJsjyBM+Y2NThFL1KL3KhiT0cbuz9ZxG+rV0RdEryPcC3J8iStGSOKdE1/tRcsybhD
 3XrKSJe1IAyh6yFM0c4ddpDY69Tgv7siVbqzHlDv6gYBE6WUFlmGpL4KWygeitMGny3+
 NrbAEC3c7IOzgS2mdNDbKkTGOR52Uvc8DJXDiMW5ocmGrT+dzuoDheQaEf0qBq341Bqs
 RmNXaEGYzyED1Sldmtwc0x1XL1+t/iGhytU9vWj3HosSPz2lcHLAuOlEHs1jztI6Nilj
 /LbWbAe0FrkG7qliNmxGv71XNDK0id+B7ph91F4KQSgFNCzOaqZ2j1jF0L8VTkv0ky0P
 ekLA==
X-Gm-Message-State: APjAAAVF6EYZqxrzZtijHGnrmWC9TGSGxj9sXTw7WWgVkJr+m9NBBpIR
 eFm/njZ5VRvXlvj4mms3cOA=
X-Google-Smtp-Source: APXvYqxM1jqqH644LscYZh1fOmR6SQroZ5U0oF421RZK6m1nNZ1H1tDwWIOHK+9da6OAru/hIya3FA==
X-Received: by 2002:a63:61cf:: with SMTP id
 v198mr17505607pgb.217.1564958997274; 
 Sun, 04 Aug 2019 15:49:57 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:56 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 24/34] futex: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:49:05 -0700
Message-Id: <20190804224915.28669-25-jhubbard@nvidia.com>
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
 Peter Zijlstra <peterz@infradead.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Ingo Molnar <mingo@redhat.com>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Darren Hart <dvhart@infradead.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
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

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Darren Hart <dvhart@infradead.org>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 kernel/futex.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/kernel/futex.c b/kernel/futex.c
index 6d50728ef2e7..4b4cae58ec57 100644
--- a/kernel/futex.c
+++ b/kernel/futex.c
@@ -623,7 +623,7 @@ get_futex_key(u32 __user *uaddr, int fshared, union futex_key *key, enum futex_a
 		lock_page(page);
 		shmem_swizzled = PageSwapCache(page) || page->mapping;
 		unlock_page(page);
-		put_page(page);
+		put_user_page(page);
 
 		if (shmem_swizzled)
 			goto again;
@@ -675,7 +675,7 @@ get_futex_key(u32 __user *uaddr, int fshared, union futex_key *key, enum futex_a
 
 		if (READ_ONCE(page->mapping) != mapping) {
 			rcu_read_unlock();
-			put_page(page);
+			put_user_page(page);
 
 			goto again;
 		}
@@ -683,7 +683,7 @@ get_futex_key(u32 __user *uaddr, int fshared, union futex_key *key, enum futex_a
 		inode = READ_ONCE(mapping->host);
 		if (!inode) {
 			rcu_read_unlock();
-			put_page(page);
+			put_user_page(page);
 
 			goto again;
 		}
@@ -702,7 +702,7 @@ get_futex_key(u32 __user *uaddr, int fshared, union futex_key *key, enum futex_a
 		 */
 		if (!atomic_inc_not_zero(&inode->i_count)) {
 			rcu_read_unlock();
-			put_page(page);
+			put_user_page(page);
 
 			goto again;
 		}
@@ -723,7 +723,7 @@ get_futex_key(u32 __user *uaddr, int fshared, union futex_key *key, enum futex_a
 	}
 
 out:
-	put_page(page);
+	put_user_page(page);
 	return err;
 }
 
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

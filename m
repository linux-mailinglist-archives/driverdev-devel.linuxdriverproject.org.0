Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C5780D98
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 00:51:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4528980D45;
	Sun,  4 Aug 2019 22:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DfUgcwWFsN1o; Sun,  4 Aug 2019 22:51:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2363285BAE;
	Sun,  4 Aug 2019 22:51:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B0631BF591
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 876DF865AB
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 22:50:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vOwN1Y0RWwiC for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 22:50:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CBA8586704
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 22:50:11 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id t16so38568857pfe.11
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 15:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rv0dCo+fqAQ13SgPxACDlFOa16RsKjSPlFe+eBoZNRU=;
 b=YPOY1YFdr7iX/mwZQqcGNXlBs0EVKoyeBFEUqInEu6rA0ndI8Mif+0ZPJeKKJ5iFwE
 NKOF3uvUa5VJ+UGiH9nbc87NqjJWsSl0scr9GeK88ydFUly3DCHseKqxTpEd0IfXvu5q
 jcaFXkdAdHJL26lkS0kDgmBvj/6IRTs5wSna3kfRs+vwcKzTL9APp6Wsc+o3ppVF+IRl
 wjQCOTSjcDQ7GQjBBXsLdt+Iue6eXN2thWrje4Rt9XoDAoEpWZdNECCtZUxO8cwujSm4
 fowCwuwgU3C+BFfj4zTJJ1Y4PbaxN4OhvtwxUy9pYDnCK6XNpmRXg/q/Jb/Qj5fLadYM
 mSpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rv0dCo+fqAQ13SgPxACDlFOa16RsKjSPlFe+eBoZNRU=;
 b=EMnCe/vFNwBxJ6/xUB20p469yTkHX/hwXnGZQ1tlvy+xCEzUzxDmDMQDQihPevgSMd
 5jQwbr+UOFH8xOIyOyoX//amw4kof2IkMijW0TdBeD8V8ac2JgdS3f/PZoiHgzlSoqph
 yGxA0OiTiaGXvf3FklA/Rl7sc1Fi6nnLAMJ/4IUbqeZ0qnKy/kCfbYAkqAMc8U/l7IOg
 UKM2LSLuxa68fL2FsQG8MQPL9+8eMZCEuYCtzr86SHa+fSJBWLdeLpH9Wx/oqrlJg7Dm
 MyOBSGtVVSiFRSZXHqr7SAK/qKSjlkVp+aImQRzNev+F0D7SasULbq7NGYPWAJJTNVKO
 qY2A==
X-Gm-Message-State: APjAAAWVT58FB9EkTIN77AAZLG+Rf/BxzULdfQ0R3IbfBhfgYF2u14Ko
 7M7734W/lqsLpeEq0H5UJFo=
X-Google-Smtp-Source: APXvYqxvM1qX7vPDXvngph7SDjRt5A72CS0QHjJHMrDwzL+npYmbY1LXNKjG2Jciqo+k4AO5Wz8/Mw==
X-Received: by 2002:a17:90a:b883:: with SMTP id
 o3mr15076411pjr.50.1564959011569; 
 Sun, 04 Aug 2019 15:50:11 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.50.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:50:11 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 33/34] kernel/events/core.c: convert put_page() to
 put_user_page*()
Date: Sun,  4 Aug 2019 15:49:14 -0700
Message-Id: <20190804224915.28669-34-jhubbard@nvidia.com>
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
 linux-rdma@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Ingo Molnar <mingo@redhat.com>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Namhyung Kim <namhyung@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
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

Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Namhyung Kim <namhyung@kernel.org>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 kernel/events/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/events/core.c b/kernel/events/core.c
index 0463c1151bae..7be52bbbfe87 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -6426,7 +6426,7 @@ static u64 perf_virt_to_phys(u64 virt)
 			phys_addr = page_to_phys(p) + virt % PAGE_SIZE;
 
 		if (p)
-			put_page(p);
+			put_user_page(p);
 	}
 
 	return phys_addr;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

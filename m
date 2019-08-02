Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4107E84C
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 04:21:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA1D88843B;
	Fri,  2 Aug 2019 02:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UP0akJIJvOjO; Fri,  2 Aug 2019 02:21:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4BA6488427;
	Fri,  2 Aug 2019 02:21:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C3D3B1BF29C
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BB330878E9
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 02:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XsXOD38jshxa for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 02:21:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 122E78796A
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 02:21:04 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id f17so31162219pfn.6
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 19:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rv0dCo+fqAQ13SgPxACDlFOa16RsKjSPlFe+eBoZNRU=;
 b=FnXZWigmXks7P7vrWF7fKqdJ1mEC+gV48nu3UaSpxK4YL8v+ZyKfQNiGbSuus211Io
 +fy2JCOQXe0u+yVyht7IUnGNiz1ytce226/iQ1Wda7n+sWhgorrLFCh54sw2yd22N9l0
 AXL2/cPWN7xjLjU338yB5B7ZEpAB76ymwzaqr46s48M64gK8WOGJ87UIWJj0TMsT00ZG
 rYH/3SCw5LcEELiN57lLCnYUd8Lx6hylUyDzZKFYq9GvzONQ8cx9AYXJHJgmouhXLCeg
 1q2sn/m6YtRZPuqIGm/1JYTBARn6QQkL/1+apRqX4+bW7vcNXDLWp8NZbJWw7fVf637Q
 Jc5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rv0dCo+fqAQ13SgPxACDlFOa16RsKjSPlFe+eBoZNRU=;
 b=T+0On88E8rUBKcBClR99OBcCb5+ct1+FCTGoN6uEmwpG4yrPDMXwJ8LzBnCputcTRa
 gteYGyYCPBrH2zfN/UQu+4hrOFSRs9oKErpyg4e2s4K8Z+grtkcmpSMIh8XNEWqZ8ZA8
 s6dygpd+ynRdhCoVRkCIoBpV6yGR2LTEeV/uEIRrPs9k0Mqi8vvHjWbbGGJ0WO6je70J
 4NX94e0P0C5EcUh+j1Ar39BDupyY+bpIBrse02AkwvuUZhx+4d+NRHMAOpUIvEIQa9vR
 +s4J4lqlzSCffRD6ZivwKuU4qj1Uirl50S4nV5DkDeoykc86C3uTus3HNgEV1yecEMHv
 lfrA==
X-Gm-Message-State: APjAAAUEjFRHogNY8ibyfVLK/PEqZhRJgig+KaKVyNTll6KiL6MDTWHs
 NC9GgTtv0ALmfDjLUzvr1mI=
X-Google-Smtp-Source: APXvYqw6pZRI02L0RsJ0l51BCisQWQi/OHFOULF/U1jaQbwym1DWFopp5ASpqFdR23hpYNhrKVILMg==
X-Received: by 2002:a17:90a:bf92:: with SMTP id
 d18mr1939362pjs.128.1564712463758; 
 Thu, 01 Aug 2019 19:21:03 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.21.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:21:03 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 33/34] kernel/events/core.c: convert put_page() to
 put_user_page*()
Date: Thu,  1 Aug 2019 19:20:04 -0700
Message-Id: <20190802022005.5117-34-jhubbard@nvidia.com>
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C6F83FAA
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:36:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6AB2D221AF;
	Wed,  7 Aug 2019 01:36:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ugp5F-yyKln6; Wed,  7 Aug 2019 01:35:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2EF0422219;
	Wed,  7 Aug 2019 01:35:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 644C81BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:35:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 48873221AF
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:35:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nwX3EpoFYo-9 for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:35:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 8EB8220131
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:34:42 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id d1so9724855pgp.4
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cegKTIaYJ+tSle0YiC1yJpybmvJrVZXG5Xryw9OToL0=;
 b=gZINIBPpiSlkU+80KFQT2S/tbeKnfN8Fqd69WGW6s9PoHlp7eF6XztSLcUxuW4oRoZ
 aif7qo6403jD2jU7LBsHpubuYdPGQryF8kiw1ZTc3iFqoyXR++oshdcjJ7vxHU3SStmv
 hRrnv/6QnmfU9YFS9vFfR/LY5o8S7tCbaokKkpmJCmaCQPMpBAUHfIH7veXkFUWyuI/D
 QxXzz4jXTjDqbca8hg8XrnqAJ/u2yXOWeQAohMq1NTArxvWPC4Z+YJ1UfdhghSe68uD6
 jg98gaM28Wf1Jgr/YOooV8Oz8uSBvPGIEINpe+ifSuk1KD3Z7HL09IvdAtxhoavy3yVQ
 XT/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cegKTIaYJ+tSle0YiC1yJpybmvJrVZXG5Xryw9OToL0=;
 b=GDSxbWRvE8r+sBXaw+t2+lp7nBk/sbhDHp81XXOj4EHg+XV0JkRQriZbY81JXRptrx
 7H85dx3bRQ3Fw2GzZDwaBe/0nNoRaNyexUARFVNlFH5p14j1c4njKF45JFHWUR4LSXr3
 8J+o5I3gjNCSDBE/Y2HVTI6zCPNyUfouuHHGizZL0zl2g2GNDap6liWORmgCGHW+2K5d
 B7TPrTzqMnu90cC4oKmx9RdwlN5hT2GOLuE4vdzqb6BFL20/CoW0tuYOiFDP+WwyxeT4
 g4W/ubL8+BhCRtGPO/78LfpuRCChVKoaUiviC/Dn78Xl9CyyWGUBQBg5FUiFEmLmyaCA
 Hbmg==
X-Gm-Message-State: APjAAAW1Nd9jMzs2v9IDoUxhTASTsxJCFQ9pCbfbMdnmZbLVNHB4Z0yQ
 PkhFfprcA/4YdQYeqPgcIgI=
X-Google-Smtp-Source: APXvYqzSNe/bSKcNensRQ/IJ84TBXlUJvFYUKsvrq7/hKNH55OC+L+xYYWdqI5nDZFgfOlgeKmaOXw==
X-Received: by 2002:a65:6256:: with SMTP id q22mr5554856pgv.408.1565141682238; 
 Tue, 06 Aug 2019 18:34:42 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:41 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 36/41] fs/binfmt_elf: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:35 -0700
Message-Id: <20190807013340.9706-37-jhubbard@nvidia.com>
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
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Ira Weiny <ira.weiny@intel.com>

For pages that were retained via get_user_pages*(), release those pages
via the new put_user_page*() routines, instead of via put_page() or
release_pages().

This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
("mm: introduce put_user_page*(), placeholder versions").

get_dump_page calls get_user_page so put_user_page must be used
to match.

Signed-off-by: Ira Weiny <ira.weiny@intel.com>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 fs/binfmt_elf.c       | 2 +-
 fs/binfmt_elf_fdpic.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/binfmt_elf.c b/fs/binfmt_elf.c
index d4e11b2e04f6..92e4a5ca99d8 100644
--- a/fs/binfmt_elf.c
+++ b/fs/binfmt_elf.c
@@ -2377,7 +2377,7 @@ static int elf_core_dump(struct coredump_params *cprm)
 				void *kaddr = kmap(page);
 				stop = !dump_emit(cprm, kaddr, PAGE_SIZE);
 				kunmap(page);
-				put_page(page);
+				put_user_page(page);
 			} else
 				stop = !dump_skip(cprm, PAGE_SIZE);
 			if (stop)
diff --git a/fs/binfmt_elf_fdpic.c b/fs/binfmt_elf_fdpic.c
index d86ebd0dcc3d..321724b3be22 100644
--- a/fs/binfmt_elf_fdpic.c
+++ b/fs/binfmt_elf_fdpic.c
@@ -1511,7 +1511,7 @@ static bool elf_fdpic_dump_segments(struct coredump_params *cprm)
 				void *kaddr = kmap(page);
 				res = dump_emit(cprm, kaddr, PAGE_SIZE);
 				kunmap(page);
-				put_page(page);
+				put_user_page(page);
 			} else {
 				res = dump_skip(cprm, PAGE_SIZE);
 			}
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

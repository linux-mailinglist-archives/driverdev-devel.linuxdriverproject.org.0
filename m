Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB0D83F3B
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:35:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A77386B6B;
	Wed,  7 Aug 2019 01:34:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2KHcLgxGktxs; Wed,  7 Aug 2019 01:34:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB47781FAA;
	Wed,  7 Aug 2019 01:34:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8F8D1BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E5FA481386
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J0Fw8peIn6wQ for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:34:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1DA0E81425
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:34:44 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id t14so38561223plr.11
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S+0IdzDd5LiY8AHwrYdqvSEMzcb9gWZ2lznukLTa4fI=;
 b=TH7xsIR8mdN6BLY7JG8/eF6RsdDCkk2cRD3dBopErpIToembDlJ6DvjPGThWxgNDHN
 izZnY8v+rrCTqbMQXBbwMmFJJ4/nvmF6zRWW4Xs6qUrfZ8o0czAW/fGIDrwD7Q1ygI7M
 9Zf8Re7QredxsFLkJT7ZLJf014g9dC9bvOiPKF2NgNaHSnsjvFjfZ4bBzwffrRrGp9/v
 vlT+JVAmAuL0sqc4zONRKIioMJS5mLcrWMkUTsb2T5dvyeXECRBNXvR++1qedsjna65N
 Bpeio/uU7dJ/a25yv6b3onr0A5BIr5z5tUmsUB0sHub+eppjPv5sJ1ZexYmVLUXkgvRa
 bJaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S+0IdzDd5LiY8AHwrYdqvSEMzcb9gWZ2lznukLTa4fI=;
 b=lm7MPndgLAVHNshVbDE7LmeS1o/48tBetz5JjgzR042cZQjXGtQ9OYqTXIqYU2okV3
 liF/0RaiXrkHwOfDmlKVLG/bZOq1XYnkuiiHB8f2Fk5vUcL3UMxHC9UAbBxZjK2e9/D9
 EqzScqTvFlWFnCXvEBYwvon56WAVOg99etsZNR29PSEx1YETHwZ+jDm+hbfv9umax15I
 9hPFTvKV4yA6uMRu486MhIWboSYW0ls0OPu9sExYEFqE7gQROOojzYL92ZK2WaU3Rkcj
 w286ahuw321OV7RcArbjA3wcypoglzlZmUVrNVRt83NZn9GdBoGZAV87sfN2xUb6CGZ4
 vysw==
X-Gm-Message-State: APjAAAV+ri663I4gTNBNwxe/GXq9zhVBRQcSkcstM65qSOn+aa4c9p27
 9Mvm5FrltAKZlXYXD1d/QSU=
X-Google-Smtp-Source: APXvYqwBIISXTWf4C+eZPMoIO/o34tgUz/S5eMQixOLDQAsdZlLcpYV/uzVG2wEPWDAc94LDsKhJ9w==
X-Received: by 2002:a17:902:9a49:: with SMTP id
 x9mr5953327plv.282.1565141683818; 
 Tue, 06 Aug 2019 18:34:43 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:43 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 37/41] security/tomoyo: convert put_page() to
 put_user_page*()
Date: Tue,  6 Aug 2019 18:33:36 -0700
Message-Id: <20190807013340.9706-38-jhubbard@nvidia.com>
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
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, ceph-devel@vger.kernel.org,
 Kentaro Takeda <takedakn@nttdata.co.jp>, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-security-module@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org
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

Acked-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>

Cc: Kentaro Takeda <takedakn@nttdata.co.jp>
Cc: linux-security-module@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 security/tomoyo/domain.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/security/tomoyo/domain.c b/security/tomoyo/domain.c
index 8526a0a74023..6887beecfb6e 100644
--- a/security/tomoyo/domain.c
+++ b/security/tomoyo/domain.c
@@ -931,7 +931,7 @@ bool tomoyo_dump_page(struct linux_binprm *bprm, unsigned long pos,
 	}
 	/* Same with put_arg_page(page) in fs/exec.c */
 #ifdef CONFIG_MMU
-	put_page(page);
+	put_user_page(page);
 #endif
 	return true;
 }
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

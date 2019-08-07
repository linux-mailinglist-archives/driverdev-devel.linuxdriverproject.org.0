Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A2783F11
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 03:34:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C62A186166;
	Wed,  7 Aug 2019 01:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pqkY9y8lkRFu; Wed,  7 Aug 2019 01:34:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3C05836D6;
	Wed,  7 Aug 2019 01:34:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7CD711BF389
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 773FB86130
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 01:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HF5eHX892j_b for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 01:34:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 051A48612E
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 01:34:14 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id c14so38505066plo.0
 for <devel@driverdev.osuosl.org>; Tue, 06 Aug 2019 18:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kTcRkfjdEL9HxbTfItIV90QFm+wmUvO1k55I5bm4do4=;
 b=KDwx8fQCZQ/Suzu3VWi1DDiS9f3wTi5qeR5KhjjsQerQ6jWb9Bppmpi69n/V7tCxcC
 9V2HGmZDwg97QSRgi6Hzl0GWRBp4H3fcCqkNmUDvJ7PxDk1fQHC9lxTEdaxbxQEHg95+
 fmJWsxqnzJxJ030LBsGzIkf3pk8sgU5o1+lx7X7ZwO38eZaDsEUDZZ+Gf9yjWoGjqdBb
 oE7CxyrW2H4Sq40LC5GKmO3wadn0xgnPrP2IQTLB/VxU0JkFqP6vTrlLsm15L7ZnAf7Z
 6nnOQfF4c4+DtdbQKQz7daub11+4pw4UtoY7fINHO6b6C0kllebTtI7UQsSaNXpquZs/
 z2sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kTcRkfjdEL9HxbTfItIV90QFm+wmUvO1k55I5bm4do4=;
 b=P/WfbRnbDVu0K3u6DuZUEHCa3pOqql2zLstAalWPC7dgvfIvycr9xIIADSr1VLOJnc
 Zpyb775tmZEfWrIahAKjoi8ZpCeJFz7WxXK2c7rnycHUfEZ7f2P/jG9Q4vjImBGFIjeS
 IZQrRyZzRaE7rywJ2VAKJLWaJ/+vvlXhR+IeEKKGtWZimCGrZMMi2vl79BcEF0IYIbt8
 se2i5RpzBkIdqtdIsmAxalnnTJ1WAhUWLBU4eFKkU7L0J/lQ2R58+Ke+6zFVg2GlFfld
 E+dAFt5lOk54lKcyeVhOSbm7S1jrG53SkRSype/3Uj43mYdWyikRkgL0ZMJALthe7IJ9
 lgPA==
X-Gm-Message-State: APjAAAXa0s5Kgs5pofVXJzyTiDlTi0GOCVbyJ7srBPVtDbBkuMwR0hNu
 C50QWw0TcMv5T8Ab39kHr90=
X-Google-Smtp-Source: APXvYqzTT0+13248qiTrSGNvS1mzJ345uGp41Ak44ir6kC277kEDTytzqOp0Yto6oZ69oylCJdvvLQ==
X-Received: by 2002:a17:902:f204:: with SMTP id
 gn4mr5916565plb.3.1565141653735; 
 Tue, 06 Aug 2019 18:34:13 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:13 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 18/41] drivers/tee: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:17 -0700
Message-Id: <20190807013340.9706-19-jhubbard@nvidia.com>
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
 linux-fsdevel@vger.kernel.org, Jens Wiklander <jens.wiklander@linaro.org>
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

Acked-by: Jens Wiklander <jens.wiklander@linaro.org>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/tee/tee_shm.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/tee/tee_shm.c b/drivers/tee/tee_shm.c
index 2da026fd12c9..c967d0420b67 100644
--- a/drivers/tee/tee_shm.c
+++ b/drivers/tee/tee_shm.c
@@ -31,16 +31,13 @@ static void tee_shm_release(struct tee_shm *shm)
 
 		poolm->ops->free(poolm, shm);
 	} else if (shm->flags & TEE_SHM_REGISTER) {
-		size_t n;
 		int rc = teedev->desc->ops->shm_unregister(shm->ctx, shm);
 
 		if (rc)
 			dev_err(teedev->dev.parent,
 				"unregister shm %p failed: %d", shm, rc);
 
-		for (n = 0; n < shm->num_pages; n++)
-			put_page(shm->pages[n]);
-
+		put_user_pages(shm->pages, shm->num_pages);
 		kfree(shm->pages);
 	}
 
@@ -313,16 +310,13 @@ struct tee_shm *tee_shm_register(struct tee_context *ctx, unsigned long addr,
 	return shm;
 err:
 	if (shm) {
-		size_t n;
-
 		if (shm->id >= 0) {
 			mutex_lock(&teedev->mutex);
 			idr_remove(&teedev->idr, shm->id);
 			mutex_unlock(&teedev->mutex);
 		}
 		if (shm->pages) {
-			for (n = 0; n < shm->num_pages; n++)
-				put_page(shm->pages[n]);
+			put_user_pages(shm->pages, shm->num_pages);
 			kfree(shm->pages);
 		}
 	}
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

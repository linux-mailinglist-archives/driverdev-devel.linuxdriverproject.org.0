Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B141019B9DC
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 03:25:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 327A686FD3;
	Thu,  2 Apr 2020 01:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LWFnwwPNNs1p; Thu,  2 Apr 2020 01:25:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3D1C86FCE;
	Thu,  2 Apr 2020 01:25:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 773CC1BF473
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 01:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 73B3688216
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 01:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JIzHda5wZAa9 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 01:25:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DC17B88185
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 01:25:20 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id w9so887625pjh.1
 for <devel@driverdev.osuosl.org>; Wed, 01 Apr 2020 18:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ECaKk1XEhaLeQWM1QY7b2cbJfc2H+NtdzI3cEs6W3bc=;
 b=e0Y8bY0Qfsg7n02ddZ8uiswipY9fuSgKm6X1sbnDAv/lfkxMia058WZBkqhK1Shm17
 rbhURDSsKfGqJjKOlUlUV1hPqO/r5cxIWXuo9ebuaF40Cwx1NIv7hgfZMYswHlnED/uy
 laXWmR2WR+D2bLl2xpsyRKvB0q1LRWQVbwujyCMO2IHN7v2HyE4eonQeMS3SafncKKi9
 a5LEam9Ct4DCAiN63J2BaN5vV43vEQlKajNeDrT0wioFYYpGMIJpTJQ8+Z2XAvX1LnzC
 wY/Y10MjzbOx4iwbFW0KTzL8oVlYWuoOPNiEIHLJXBzBwB4He1uIlnNFMg7OraR5KX3D
 xWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ECaKk1XEhaLeQWM1QY7b2cbJfc2H+NtdzI3cEs6W3bc=;
 b=U2E7Rw7Gu0IVunJSjql9VYfhrdlcVq9YnzWkYcbc1Y/k9ARCVRaL8RJMVMYaQFr7su
 LG9z7Zec8wAlxxG48t/Sx1sJ578OhgOsCdVpg04eVlyb6EDUpy0dU98XYREQGtnVC4i5
 NPE/2Kx8L9/iVAzIELt6Xhh3EfCVKEIBy7sleaH8I//V1/JynFKK410+nC+KQ6qi9xMC
 /G/3VLniJE+V1LcBcEpRbch5qG018EW/eWqFT2wGyluD9UoVBssRpI0/Wy9wNE3c+Bxd
 BXfdsH7G6vmoZmr1r09b/tzWJBiYdz+KMmrJ44T7Ir7ejB7yt79LNuYnMxmvF1Ugghgq
 zPJA==
X-Gm-Message-State: AGi0PuaikMaSHKsMwYWKhelPYQcCCG3x0LcJPESJXIPtH0510A4Nvght
 X6OfxCCBW9nKeMg2GNx0hcc=
X-Google-Smtp-Source: APiQypLOFU9FlGJw8iOOANTLu4h97F20JAA88jZyZ5O8imCDYlYaifG5zMltxu9kuj6+J1fWyc7dAQ==
X-Received: by 2002:a17:90a:36c7:: with SMTP id
 t65mr946992pjb.182.1585790720459; 
 Wed, 01 Apr 2020 18:25:20 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id q71sm2516633pfc.92.2020.04.01.18.25.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 18:25:19 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, devel@driverdev.osuosl.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: android: ion: Fix parenthesis alignment
Date: Wed,  1 Apr 2020 18:25:15 -0700
Message-Id: <20200402012515.429329-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix 2 parenthesis alignment issues.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/android/ion/ion_page_pool.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/android/ion/ion_page_pool.c b/drivers/staging/android/ion/ion_page_pool.c
index f85ec5b16b65..0198b886d906 100644
--- a/drivers/staging/android/ion/ion_page_pool.c
+++ b/drivers/staging/android/ion/ion_page_pool.c
@@ -37,7 +37,7 @@ static void ion_page_pool_add(struct ion_page_pool *pool, struct page *page)
 	}
 
 	mod_node_page_state(page_pgdat(page), NR_KERNEL_MISC_RECLAIMABLE,
-							1 << pool->order);
+			    1 << pool->order);
 	mutex_unlock(&pool->mutex);
 }
 
@@ -57,7 +57,7 @@ static struct page *ion_page_pool_remove(struct ion_page_pool *pool, bool high)
 
 	list_del(&page->lru);
 	mod_node_page_state(page_pgdat(page), NR_KERNEL_MISC_RECLAIMABLE,
-							-(1 << pool->order));
+			    -(1 << pool->order));
 	return page;
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

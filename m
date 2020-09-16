Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E61726BCDD
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 08:24:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0AF5B27236;
	Wed, 16 Sep 2020 06:23:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TWR2KRuFw82L; Wed, 16 Sep 2020 06:23:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 987DF23730;
	Wed, 16 Sep 2020 06:23:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9307D1BF866
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:23:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 900EE8535D
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:23:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R_waXK4e6Qth for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 06:23:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 13EC085572
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 06:23:51 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id bg9so2635939plb.2
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 23:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7hdPXyg7gunKkKWuHIx+Z39jmOlnKqdirBJqLXnODOw=;
 b=VgKRUi/YNAyaF44AKUMBOYlehnrfhobM0f+XqEP84IlZmZDbpL//6CJXMXb3SCuyH4
 Os8ZwBRg3T3/ec0HHk61ImLtIbSSA3/BDtWZToDxnzEWy12M4EV9jq6qisHn+OB7Amvn
 QrsLbJm2sxNGJ1uKH4nR5xRBHpvKShggRHA8Nep/7n6EwEjPHDwWOO7kFJyvlO6Dcuh9
 ddec2OAzF775UHrQLZPbSGW6gIaYYEVy+5qB7V1+YcEEF4d4avHa56fcFJhmO5eomrQu
 wEWOVn9mhHDL4u0rDa3CAx8dYVGLG+maqLuSRfGnLt3o9MOf0L6KiYIL0YkFIhIq3plH
 91xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7hdPXyg7gunKkKWuHIx+Z39jmOlnKqdirBJqLXnODOw=;
 b=jiWo6VLIu+VpY4H7Ygcf80N+Q1+O/68IV8ZVBoUBPUz0QWBoV40mz+0uhFJqxAAWeL
 tj6E9PhBp5dkhRBOfgUhUbyBH8yRRUDKMXySBTdmgOIe4qnB3jYAW8o+RKN5sw69HSGF
 4QWgmAOBnEPQJVP3OtDwFBr9tVfnh74be6Ec2Dn7iyIYf2EQUYP3hTZlZ+GrvSvekyOe
 tq/SdebpQb/pxzq2JbvheKYSWYlJaf1m5N/aocZk5Bjr1b+K4NIeQp9jcFOaPhbg6lsc
 a2w+RocQKGqCKc22BFIJrlbqBzpXrhQTpgvZqu9OyYF3AinuX5GXmfgfwb9OQNP0gxb/
 GUiw==
X-Gm-Message-State: AOAM531PecG86GKnPYAB44M+k9FU4ZWIHczMnEdK4h7tqtY6o1H6ii3B
 RzpKj9yzpaq1wHJBaKAFBVA=
X-Google-Smtp-Source: ABdhPJzf/nBB3juUB2amX/P0pHOjNXcapQ4UNisdM+Xqj1rZ2FSeuYahWnCVFdn2rF9ASC7HW/znPg==
X-Received: by 2002:a17:90a:c288:: with SMTP id
 f8mr2595693pjt.123.1600237430751; 
 Tue, 15 Sep 2020 23:23:50 -0700 (PDT)
Received: from localhost.localdomain ([49.207.195.121])
 by smtp.gmail.com with ESMTPSA id d8sm1313521pjs.47.2020.09.15.23.23.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 23:23:50 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: ralink-gdma: convert tasklets to use new
 tasklet_setup() API
Date: Wed, 16 Sep 2020 11:53:41 +0530
Message-Id: <20200916062341.58322-1-allen.lkml@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Romain Perier <romain.perier@gmail.com>,
 Allen Pais <apais@linux.microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Allen Pais <apais@linux.microsoft.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <apais@linux.microsoft.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index eabf1093328e..655df317d0ee 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -701,9 +701,9 @@ static void gdma_dma_desc_free(struct virt_dma_desc *vdesc)
 	kfree(container_of(vdesc, struct gdma_dma_desc, vdesc));
 }
 
-static void gdma_dma_tasklet(unsigned long arg)
+static void gdma_dma_tasklet(struct tasklet_struct *t)
 {
-	struct gdma_dma_dev *dma_dev = (struct gdma_dma_dev *)arg;
+	struct gdma_dma_dev *dma_dev = from_tasklet(dma_dev, t, task);
 	struct gdma_dmaengine_chan *chan;
 	static unsigned int last_chan;
 	unsigned int i, chan_mask;
@@ -821,7 +821,7 @@ static int gdma_dma_probe(struct platform_device *pdev)
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 	dma_dev->base = base;
-	tasklet_init(&dma_dev->task, gdma_dma_tasklet, (unsigned long)dma_dev);
+	tasklet_setup(&dma_dev->task, gdma_dma_tasklet);
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

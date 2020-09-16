Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AB526BCEA
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Sep 2020 08:25:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F22CF86DD9;
	Wed, 16 Sep 2020 06:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P38Pcv35RfNS; Wed, 16 Sep 2020 06:25:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B187F86E00;
	Wed, 16 Sep 2020 06:25:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C0241BF866
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:25:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 279D8872F1
 for <devel@linuxdriverproject.org>; Wed, 16 Sep 2020 06:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tqPb1BMvmwGp for <devel@linuxdriverproject.org>;
 Wed, 16 Sep 2020 06:25:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A3273872D6
 for <devel@driverdev.osuosl.org>; Wed, 16 Sep 2020 06:25:08 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id f18so3350469pfa.10
 for <devel@driverdev.osuosl.org>; Tue, 15 Sep 2020 23:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZNSr8kArHomwEmXyQMZ8m2wVVOEsXmtflZVah/U22eA=;
 b=XjbEXwi7kWo8ksL/KYztc3gtwyGg6clfqey2SnFF36xYfa9Ba6FCE7EAQ+5x08N3RJ
 yfNklFfK2rJBrhaUP4XLJ0LlVK1YI80n7hTz9vG5ffwvQohWLztZYlAVrRtHQh7nM2Pt
 8dgKex8IZhmRh/1ZZLbXq7LuWmgNoGDJ7sDmnWwKi7TmcazFmU8MFlkz8mraF0gIcxF8
 pszCnYn0NINI+HsUIPTnDc6enj7OjARyBycwofsmP4fBLEfhab2968mSOliCWbR9caVA
 S3KLET1+dvhj32EHPMA94tM+cxZ3K2kUUn9nm8Jo7pRXG4J2NStQ5qr5wToYwaIrO1kO
 +nEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZNSr8kArHomwEmXyQMZ8m2wVVOEsXmtflZVah/U22eA=;
 b=Gg2DSdzxD1pL5WVDCKDo9uAv52a+V4MGboOVGCxKBMK3chXADTJILZhosKyXelNwpo
 glcZRf87lUsADqLaDd+FC+2KxWSVCvzU5IajDtSVGm0DnjhW1uhnISI0JoqdgOgiqXfy
 sviFJcxkWa9cQKr7wnKXdDGGZT1sucN3KJKtm5umkLW5lJW3iyBVEphQ8NdqknSYjP3+
 MdmLheubbKfnBKI1lXB6381coOxsnVhwV4sngMDnHZ75yVJpcgx3W0zjoOrFbU7e0lbf
 KN8WL3SqxdqbR2YnXtw99vtgWrzYSTAtNXXio9NF8lxEnaWKQ6IGqHIpS2vIduaKkRjx
 4ZZw==
X-Gm-Message-State: AOAM532OYSRsZUZopo4o9rLXgi1n+oxKJzs8pl3c8KzM8ihNFIxVon5r
 WXnHNygCdxboeTJUxXFM7dA=
X-Google-Smtp-Source: ABdhPJyLlS29g13+SWOBJJTJlwldIQ/BSnedz73ejOv0l6QSwRc+FYcJ3NBK7P4auBAyC2dUsTIkwA==
X-Received: by 2002:a63:4656:: with SMTP id v22mr1389454pgk.116.1600237508280; 
 Tue, 15 Sep 2020 23:25:08 -0700 (PDT)
Received: from localhost.localdomain ([49.207.195.121])
 by smtp.gmail.com with ESMTPSA id l188sm12875352pfl.200.2020.09.15.23.25.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Sep 2020 23:25:07 -0700 (PDT)
From: Allen Pais <allen.lkml@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-dma: convert tasklets to use new
 tasklet_setup() API
Date: Wed, 16 Sep 2020 11:54:59 +0530
Message-Id: <20200916062459.58426-1-allen.lkml@gmail.com>
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
Cc: devel@driverdev.osuosl.org, matthias.bgg@gmail.com,
 Romain Perier <romain.perier@gmail.com>,
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
 drivers/staging/mt7621-dma/mtk-hsdma.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 14592ed9ce98..354536783e1c 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -533,9 +533,9 @@ static void mtk_hsdma_rx(struct mtk_hsdam_engine *hsdma)
 	mtk_hsdma_chan_done(hsdma, chan);
 }
 
-static void mtk_hsdma_tasklet(unsigned long arg)
+static void mtk_hsdma_tasklet(struct tasklet_struct *t)
 {
-	struct mtk_hsdam_engine *hsdma = (struct mtk_hsdam_engine *)arg;
+	struct mtk_hsdam_engine *hsdma = from_tasklet(hsdma, t, task);
 
 	mtk_hsdma_rx(hsdma);
 	mtk_hsdma_tx(hsdma);
@@ -670,7 +670,7 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 	hsdma->base = base + HSDMA_BASE_OFFSET;
-	tasklet_init(&hsdma->task, mtk_hsdma_tasklet, (unsigned long)hsdma);
+	tasklet_setup(&hsdma->task, mtk_hsdma_tasklet);
 
 	irq = platform_get_irq(pdev, 0);
 	if (irq < 0)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

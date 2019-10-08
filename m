Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A36CF2BB
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 08:26:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9EB1F86144;
	Tue,  8 Oct 2019 06:26:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IzNdwkCSOvCd; Tue,  8 Oct 2019 06:26:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1CEF88609D;
	Tue,  8 Oct 2019 06:26:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5FE831BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:26:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5A0B48733E
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:26:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uPDUVdsR0h3W for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 06:26:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB7A18731C
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 06:26:50 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id x127so10188482pfb.7
 for <devel@driverdev.osuosl.org>; Mon, 07 Oct 2019 23:26:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=awyEfhyaq63wvVz5I0sxNAE9uktN0QVZaydkatImrz8=;
 b=shrczhnR9hE95QHZkFCwGcENwTh7jbWCPaoUcLU544LT3HiykzAaHSr4p0z81zUFUz
 f3g+Q3tUlbgFLUn/Sv81iPi6ZnK8hb7SnN5J4TsdCtwfVFjB1E0nJqNcTPS8fB1eGm1h
 oyxlr9/ch/W6NdsJ//IAE6Ey4gHv+qG3W2MPKk5pFti3NahVtMOprJfL+v4xxEGSzbwM
 hqa5HDEC81dwCfyM7Az82kR/m7I4weJBD92Gu4roA4+CcIYlPOiEGamvQPuqGH1VTGWp
 5s+do0V7X8R8DsR2/AOJEsqV+olIrZwpe/H6umBg/65aNMakz4nlcbG09lzdr4xrt97B
 VQng==
X-Gm-Message-State: APjAAAV8i4FlMxtwZAaQIb+dde2b4YNuq+Smfztjcd0UrVtCDZti+Fz5
 WGV/adjck/JIOh2+o64mz6k=
X-Google-Smtp-Source: APXvYqyNLWvRvgmI15AzOJSmgXp3hk58s4ObxghcBNN6p0H2NsmlpDmAiJzKFSqNLbv06FTYYomheA==
X-Received: by 2002:a62:7a94:: with SMTP id
 v142mr38316836pfc.121.1570516010601; 
 Mon, 07 Oct 2019 23:26:50 -0700 (PDT)
Received: from localhost.localdomain ([183.83.78.173])
 by smtp.gmail.com with ESMTPSA id h4sm16020793pgg.81.2019.10.07.23.26.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Oct 2019 23:26:50 -0700 (PDT)
From: hariprasad@osuosl.org, Kelam@osuosl.org,
	hariprasad.kelam@gmail.com
To: 
Subject: [PATCH] staging: mt7621-dma: make use of
 devm_platform_ioremap_resource
Date: Tue,  8 Oct 2019 11:55:51 +0530
Message-Id: <1570515959-26572-1-git-send-email-hariprasad.kelam@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Benjamin Sherman <benjamin@bensherman.io>, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jules Irenge <jbi.octave@gmail.com>, Stephen Boyd <swboyd@chromium.org>,
 Armando Miraglia <arma2ff0@gmail.com>, linux-mediatek@lists.infradead.org,
 Bhanusree Pola <bhanusreemahesh@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hariprasad Kelam <hariprasad.kelam@gmail.com>

fix below issue reported by coccicheck
rivers/staging//mt7621-dma/mtk-hsdma.c:671:1-5: WARNING: Use
devm_platform_ioremap_resource for base

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index d964642..03c8937 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -650,7 +650,6 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 	struct mtk_hsdma_chan *chan;
 	struct mtk_hsdam_engine *hsdma;
 	struct dma_device *dd;
-	struct resource *res;
 	int ret;
 	int irq;
 	void __iomem *base;
@@ -667,8 +666,7 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 	if (!hsdma)
 		return -EINVAL;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 	hsdma->base = base + HSDMA_BASE_OFFSET;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

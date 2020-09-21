Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE349272030
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6746B86856;
	Mon, 21 Sep 2020 10:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vlWSBz0zhIhr; Mon, 21 Sep 2020 10:21:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EEE68868CC;
	Mon, 21 Sep 2020 10:21:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 011751BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F07D785FC1
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jv_vPqiy9Lci for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0D07285F9B
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:04 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id c18so12124671wrm.9
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UDXBjt8jfu/oMGNat+F4S9FWffFRkNYldF9fojbA7xU=;
 b=o+JBpv0kgXUgHSjx+7mwoy9hBdUZxyTnq88Z4pn5acM1mUZcgFy3Vf49rvzEVzeR4t
 6PCl/uBUIYl3AXto4vLB4dnsY09c7oLxzwJa05cAqiugtodeTRdbHyhXSAGrGIHsiESP
 +lysMoTF/HyZGBxFAxsCjZvAuEvLXviGGJPXj2vxaOsxJbj71NQVEs5CuXXacXv0PV2B
 FTF6+MefhdS9Ro5JYYxpp+xjWlc7NWxow8mE3GGbdMej/DFhO5RFQCRIhDGzt9pnKSxV
 gS42EYx7MYaNVgUEGs4XkVeFH5FnE5oRtC5dvsvuW9GnHOK1jN2VfLMJX/UuuoGpTiOo
 kmjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UDXBjt8jfu/oMGNat+F4S9FWffFRkNYldF9fojbA7xU=;
 b=EHlOYzcPy+X13D2xz7Ql5/Zg99ovCqy7V90GoWe8BibezH0AE8ontlVRopqRMx97qF
 iTWa6h3zNj8lhBUg2kjZsiQbQxUGRcPlTQsr9VuYCxbNSrh/s1qrUn+n0Q+erBHD7Pns
 jsDnqmpf14X7vxthJkD/9wicoENoVtwd5Z+sXkZsOVVGzlsd6JJ4MAh9tmnCjUQpSxwp
 y6qJ01zX75V83fRQ+31LPVj1IBiVe+f5HE0quCq2sTP+nX5a36Ui0J8bM28yTNyzAiR/
 F3PtQoaRTnTEsLiIvVeEPWXXL/xq12rwggd9b3TnzKKyLL8nqxh4IJ237eU7Q9VTThBR
 CDrg==
X-Gm-Message-State: AOAM532zSOYw/+jufT8uaMHyjB28mcqUy2nGsSNZr/2om52/GSLSf0LS
 CNBdiOsAmZ9aalo68MWCwFMEfh0eOEbnHQ==
X-Google-Smtp-Source: ABdhPJyERdYp2AsyAKmPFvJF44cYROI3W+/g17UZsOuGZCzLex69SCmZaq065/gaT2X6isrvK4RBOA==
X-Received: by 2002:a5d:56cd:: with SMTP id m13mr50724441wrw.261.1600683662637; 
 Mon, 21 Sep 2020 03:21:02 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.01
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:02 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 32/49] staging: media: zoran: use devm_ioremap
Date: Mon, 21 Sep 2020 10:20:07 +0000
Message-Id: <1600683624-5863-33-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Using devm_ioremap simplify code.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index ed4ecf92c040..36305aaabd7d 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1003,7 +1003,6 @@ static void zoran_remove(struct pci_dev *pdev)
 	pci_free_irq(zr->pci_dev, 0, zr);
 	/* unmap and free memory */
 	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
-	iounmap(zr->zr36057_mem);
 	pci_release_regions(pdev);
 	pci_disable_device(zr->pci_dev);
 	video_unregister_device(zr->video_dev);
@@ -1156,7 +1155,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto zr_unreg;
 
-	zr->zr36057_mem = pci_ioremap_bar(zr->pci_dev, 0);
+	zr->zr36057_mem = devm_ioremap(&pdev->dev, pci_resource_start(pdev, 0), pci_resource_len(pdev, 0));
 	if (!zr->zr36057_mem) {
 		pci_err(pdev, "%s() - ioremap failed\n", __func__);
 		goto zr_pci_release;
@@ -1172,7 +1171,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		} else {
 			pci_err(pdev, "%s - cannot assign IRQ, error code %d\n", __func__, result);
 		}
-		goto zr_unmap;
+		goto zr_pci_release;
 	}
 
 	/* set PCI latency timer */
@@ -1273,8 +1272,6 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 zr_free_irq:
 	btwrite(0, ZR36057_SPGPPCR);
 	pci_free_irq(zr->pci_dev, 0, zr);
-zr_unmap:
-	iounmap(zr->zr36057_mem);
 zr_pci_release:
 	pci_release_regions(pdev);
 zr_unreg:
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

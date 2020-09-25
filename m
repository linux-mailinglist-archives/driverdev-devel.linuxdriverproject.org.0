Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A35F6279139
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:58:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BB7C92E184;
	Fri, 25 Sep 2020 18:58:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SkkHzzEDHl6B; Fri, 25 Sep 2020 18:58:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ADDA62E17B;
	Fri, 25 Sep 2020 18:57:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EF0C1BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:57:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B53186D22
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yQSl7vDwFPs1 for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:57:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E68E486D02
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:57:56 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id b13so1926990qvl.2
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=33lB1n6MsJA8y1Cur/ULNq8jI1FuG8FB/2UR30PG+gU=;
 b=v+by3Sm5hf9KgoKt1yqOfMTlq/YrLRAqeJhU+akW0/r2L1rNqiRJAVaUTKe152bhlE
 6OnECoDtIUrh7Ty1RWqmfUIhUWT8qXlOA4YMuE/3Is4K0hG6C76rSi0f/pw8dp7BEBgU
 vshjZeheMuC3hi/tAn2CQnu4g2Q5MFyDnNvbS5jerKvV+UrBBmFmToBxuLe1iy7eNi4D
 0pETojEd3cUqmtrNGs6aQpLp/w7SA7K8lcJxZ4LsqvSiC5nh5k60JVH+COTF57I51T34
 MmmcOyr4rryjwXKnhfoQ8lig06k2DaFGIWoSpDWs3iMMaix0ZT2e15QQYzSDmkIuLX5A
 agvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=33lB1n6MsJA8y1Cur/ULNq8jI1FuG8FB/2UR30PG+gU=;
 b=MpaTS1ndkuIHmZyYJ5VFceV23OAiKBwyEhUQ5SmyQYCV+C6J6YFjGdQd35IOEqq7+N
 rv+gTmf8rMFb7KvEkysJt8DTD9HMnPWcw1KQhwvBs87hyppQ/opEmcD15DB5el46Rhob
 70gIeKx0ZWPb/adsS4bGlVoxHkJAkrcjV6MJ8NsQqNFLTNNP8kJzj8HYy3nRpagE3XZ0
 N0X3Y/XxtYO4WuJGZOvZ/77ybUAfvabX97SP26OYThcCZfOGyrOqmxcKYTjiRAOcIWt9
 vJIdI6wZ3ygfUViHw2TzpQ/um/3HV5DjwVwyK7LFGEZobJjHD+RBc5yz8suJmfw4ezUk
 goLA==
X-Gm-Message-State: AOAM5326CckCsJtpliYaeM7sdeW8SH59iRKwMt1tExJUpNiJFYaIok65
 PggJVznA8A4UutrC1x5qQKZ35NQ0fhDUzA==
X-Google-Smtp-Source: ABdhPJzI8D0FfG2yohm1Szf25h+WuVFA8LA4/tvF6/4fOPFUmOPwPsOyyMAX31jksGcEIHQWbNVIAQ==
X-Received: by 2002:a17:902:e9d1:b029:d2:221f:9970 with SMTP id
 17-20020a170902e9d1b02900d2221f9970mr688729plk.5.1601058860325; 
 Fri, 25 Sep 2020 11:34:20 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.34.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:34:19 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 31/47] staging: media: zoran: use devm_ioremap
Date: Fri, 25 Sep 2020 18:30:41 +0000
Message-Id: <1601058657-14042-32-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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
index f4639324bace..147bef1df33c 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1010,7 +1010,6 @@ static void zoran_remove(struct pci_dev *pdev)
 	pci_free_irq(zr->pci_dev, 0, zr);
 	/* unmap and free memory */
 	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
-	iounmap(zr->zr36057_mem);
 	pci_release_regions(pdev);
 	pci_disable_device(zr->pci_dev);
 	video_unregister_device(zr->video_dev);
@@ -1165,7 +1164,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (err)
 		goto zr_unreg;
 
-	zr->zr36057_mem = pci_ioremap_bar(zr->pci_dev, 0);
+	zr->zr36057_mem = devm_ioremap(&pdev->dev, pci_resource_start(pdev, 0), pci_resource_len(pdev, 0));
 	if (!zr->zr36057_mem) {
 		pci_err(pdev, "%s() - ioremap failed\n", __func__);
 		goto zr_pci_release;
@@ -1181,7 +1180,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		} else {
 			pci_err(pdev, "%s - cannot assign IRQ, error code %d\n", __func__, result);
 		}
-		goto zr_unmap;
+		goto zr_pci_release;
 	}
 
 	/* set PCI latency timer */
@@ -1284,8 +1283,6 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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

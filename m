Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A67572790E4
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:40:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5120086E65;
	Fri, 25 Sep 2020 18:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I3jIEFGjdIGG; Fri, 25 Sep 2020 18:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 52DEA86E56;
	Fri, 25 Sep 2020 18:40:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 10C571BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0D83186D84
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Rvv8h3_StpU for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D20B086D8D
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:39:59 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id z5so3301441ilq.5
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=P7qkSkJYzDAlxMBmU/NPbl2KeJOU3g6WtyY+La0RA/4=;
 b=w+GhivlpXfTDhwn3vPYTmh2OA1kk2Sfja5xfWOST1L4zhQdO5NmjEo+zwi5hqcE03m
 sW80MG9dqqqH1e8AgXuoBQsBU4XnZCNnbX/oHzFmCiajo8yvTYrZ+RzFAvRF0rOP/ohA
 Oq+wbWHXX2anjvZ3bela+IrPODD2ZE+5nfBD84l8JmfYXjg1Wj3OjoPnqBqHf0Yrmzfm
 hfTuGtMYnILI4UCqLRJCtlYyhGerAQvlH/YXlRJDJeaIrC+1OsmumIwn7ZZFZ/7at2n9
 e2s5HWhjZb2GS8LI7N1h44oSGEwO+uCDHMTKot1tZzm2TWMffUxwaAB8SiDqDxlXmUbi
 FImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=P7qkSkJYzDAlxMBmU/NPbl2KeJOU3g6WtyY+La0RA/4=;
 b=QzuLjdWwQj2jG4i43WPS10x4NSl/0rSJUcp01TmL6EUOkzaNV0laWRSTkOpbjzGAAW
 ROACOTt0zJaBcEtUN0x7uIu/Me3SGUsrhy6E1jRjfBCee37OFabs+fmLe+YGY/KqPXPy
 YS5FjziSdfCn9j3yicyGgtiv/DF9qBuTCdkRfmcw3GasO4mjpJ4JSq+oT96B+fCpOmg9
 U7EsfuBPSeSzy0EcFSwVEX4l7gHd03UYYULLb3mLuBKqEI2HbiwRtUONfVYrdFFlj5FO
 4UT6NMCsh6aCYuLWLe/YQ+fz1z1e90sr4+oGa0/EDSIdGlrVJQ7OOb32VBPW6D0lzYha
 jJ8A==
X-Gm-Message-State: AOAM532oJyohmZeblS6+Oxf03ijaNDw2ZMA1GrBHt4LgOOmIcKSA5Lgv
 9wKxnt74dn+lW6dPtyZTPXXmFB8x9zkzGQ==
X-Google-Smtp-Source: ABdhPJyZwzYc8iEvhjhcYe9XSf/hc3p3lgjmIh4hvWoOn/1fBt1JX1mueOh8rrQ5ElDNmmOw58LVAw==
X-Received: by 2002:a63:4c4e:: with SMTP id m14mr202944pgl.199.1601058831197; 
 Fri, 25 Sep 2020 11:33:51 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.33.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:33:50 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 26/47] staging: media: zoran: convert irq to pci irq
Date: Fri, 25 Sep 2020 18:30:36 +0000
Message-Id: <1601058657-14042-27-git-send-email-clabbe@baylibre.com>
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

This patch convert zoran to pci_irq functions.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 8be7f8f0a020..706b040f5baa 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1015,7 +1015,7 @@ static void zoran_remove(struct pci_dev *pdev)
 	zoran_set_pci_master(zr, 0);
 	/* put chip into reset */
 	btwrite(0, ZR36057_SPGPPCR);
-	free_irq(zr->pci_dev->irq, zr);
+	pci_free_irq(zr->pci_dev, 0, zr);
 	/* unmap and free memory */
 	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
 	iounmap(zr->zr36057_mem);
@@ -1175,8 +1175,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto zr_unreg;
 	}
 
-	result = request_irq(zr->pci_dev->irq, zoran_irq,
-			     IRQF_SHARED, ZR_DEVNAME(zr), zr);
+	result = pci_request_irq(pdev, 0, zoran_irq, NULL, zr, ZR_DEVNAME(zr));
 	if (result < 0) {
 		if (result == -EINVAL) {
 			pci_err(pdev, "%s - bad IRQ number or handler\n", __func__);
@@ -1292,7 +1291,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	zoran_unregister_i2c(zr);
 zr_free_irq:
 	btwrite(0, ZR36057_SPGPPCR);
-	free_irq(zr->pci_dev->irq, zr);
+	pci_free_irq(zr->pci_dev, 0, zr);
 zr_unmap:
 	iounmap(zr->zr36057_mem);
 zr_unreg:
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

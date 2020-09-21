Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C762272035
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB43185FD5;
	Mon, 21 Sep 2020 10:21:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VDJP-6S2nw7F; Mon, 21 Sep 2020 10:21:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 605E785FC6;
	Mon, 21 Sep 2020 10:21:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D6F551BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D3CA2871CA
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JFHMgKgLyWxM for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A1A0B871C6
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:59 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id e17so11564960wme.0
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=14WJj/RqQjb5y9fKAYpp9xKxfwW/Mh3U1gqbae/yMEI=;
 b=OLmZzc/r2Nu25RC4agP9sFqGyGE70U4vF6jpgeTe/Ld9FCKI9UNwkO38fJLJpnZ1aT
 FCuiWAZQldH0H9H4eu33pQfeCK9MCtMtlQWhCWnWnB8wVDF+c3MNEupsagEPgbtYXDGt
 AOCBnJ7YKYP+Ed+Put7CP4VxKa0/l9MZaoJu94G23aW6gCRaY/wfw2obNAKsxpVXqAkY
 yq161oDjhmqwoRa0Frx1xjgajGOtn/IoFgdh4OVkXJ8DE9Vuc8TfMMwKIW06d6KwjPNL
 XFV2lOzn/RhtqaZ/CYpyLbt42ZFLL4f17M0TrKTSlEHOnmNe+2ZA4PkmVDmyVcJ0IwzU
 NW3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=14WJj/RqQjb5y9fKAYpp9xKxfwW/Mh3U1gqbae/yMEI=;
 b=tbLc1hIqk9V+/LcEh5TQayYqXJFjpGBH68X6PovbYeLJnCgL6w7bRxCszV9YssHLHD
 ZmmJEt2JvWel4lDg2mD5cx06IDrmSbcI4MUDOiRMuuZjB8llOEYJPA9LcrdJ4TuFHo6d
 GpZUVgb7eC7r/V5Yk0HqsTaveg55c6V+2RVNe1dlR63+dWJNKxuq4Ik35/fwDgwukvgp
 D2A0a5uIQBXBxwe3Hkwvq8NAnXrBNsH7cV6cu6zzSOj8DoaofHKYv+MaejEuyRG3N/JV
 XASEGEaE7pUA4+ew1fKM+AkBTkpLhsZf36ZtSR2cPA55Bg/g/4gs6b49tKauaRuhKDv1
 +K/g==
X-Gm-Message-State: AOAM531BvGRfyhsDHW4elEoGt4v/oBJPk1w4VZtuRr1l0DLPBElmAUdy
 rIBZE3n83/+SBpZFiNVWP4Ovyg==
X-Google-Smtp-Source: ABdhPJx1Ryc9pfX4wBErhIyfQ0T8KkhSO1BIqse9FMAU5+1kMZdMdiuOXHzz3wNhtql/XUvTWjWShw==
X-Received: by 2002:a1c:7508:: with SMTP id o8mr28218460wmc.127.1600683658224; 
 Mon, 21 Sep 2020 03:20:58 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:57 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 27/49] staging: media: zoran: convert irq to pci irq
Date: Mon, 21 Sep 2020 10:20:02 +0000
Message-Id: <1600683624-5863-28-git-send-email-clabbe@baylibre.com>
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

This patch convert zoran to pci_irq functions.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 1c587ce0d8c0..fe4d34e388b4 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1008,7 +1008,7 @@ static void zoran_remove(struct pci_dev *pdev)
 	zoran_set_pci_master(zr, 0);
 	/* put chip into reset */
 	btwrite(0, ZR36057_SPGPPCR);
-	free_irq(zr->pci_dev->irq, zr);
+	pci_free_irq(zr->pci_dev, 0, zr);
 	/* unmap and free memory */
 	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
 	iounmap(zr->zr36057_mem);
@@ -1166,8 +1166,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto zr_unreg;
 	}
 
-	result = request_irq(zr->pci_dev->irq, zoran_irq,
-			     IRQF_SHARED, ZR_DEVNAME(zr), zr);
+	result = pci_request_irq(pdev, 0, zoran_irq, NULL, zr, ZR_DEVNAME(zr));
 	if (result < 0) {
 		if (result == -EINVAL) {
 			pci_err(pdev, "%s - bad IRQ number or handler\n", __func__);
@@ -1281,7 +1280,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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

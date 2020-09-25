Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E92279133
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:56:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D78D875CF;
	Fri, 25 Sep 2020 18:56:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LG46JUzykL0Z; Fri, 25 Sep 2020 18:56:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CBEA873AB;
	Fri, 25 Sep 2020 18:56:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20C8C1BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:56:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1D78A874DF
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:56:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dlvT9buOB3k3 for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:56:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com
 [209.85.219.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 84268873C2
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:56:48 +0000 (UTC)
Received: by mail-qv1-f68.google.com with SMTP id z18so1905548qvp.6
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TTUQIRv6cRZ2oO4d9wlkIu2psEWIyambmB7I1qwTrKw=;
 b=h/a7y78qfs4B7da7cpMR0TFIkKT/2JEzA7h7fAQus8i50nJzOCzVPFliGAmKBdCPgQ
 ULmVUsKFK4lVbsIG+Z16DHq803p8zGK/xnwkGLTW2xEgdCeSESTSZJ8U0lKYTX59vL1p
 KnLims2LJh16VYbJF8K+ZKlBRQ5eOtuoQ7YZ0MxbMIeKhwYUwBexuaVytpMeahpwnrIk
 glrN1LzjRJyqm9d0977LjywMxk1a+ViYc66YWZleDfnG4U22134+NwxD24YkGCw5wNNq
 59Ws8SnE8OxF09P9zYOY0sty88HIjJUIQYRxe9v7P6WMBpr4MOIUKImgmLcHxCqrv4g+
 uieQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TTUQIRv6cRZ2oO4d9wlkIu2psEWIyambmB7I1qwTrKw=;
 b=Z50b6F9SoClblTHBok+NZ5BgYgzwBykczZWzw9ydkr8L8mm+Bf7g8cyK2O4luDhxt3
 JAPluvWIfXbK1aTqBFOLTs151niCeOIjehbxteu0Cyc07i9IRcWM6GnHF1HQ1lF6B5PV
 x6tjFOal7vuqcgk1PLKbFsmFUMFndxnjyLAAaDXNjX6m/mCd06x6S+c97hH0HqTtIpae
 ggIlY7YHHMDE6t9R5GLZr0KEiFWYk7rnwVJuzngTDQZWyzxm+Gf0p+mmMZwCJ1jHrTN0
 T32BoKcp7nsZJ5itkSKIocs3MM/r4Ln2pWTqjDPMrtRe3U0DAQhwE0FNy4aBUdU7Ifpk
 3Udw==
X-Gm-Message-State: AOAM531syvQxfPIvwu3O+GQOtFX/p5zUzBqKvT0PlxOPizJsST5HVbJZ
 Lw5GweyHArO+LtFHVwGFFOzL3prg3xB4Zw==
X-Google-Smtp-Source: ABdhPJwKA9v5+82Lq4ws7oQxn5M/2efFOFbHRxTkPOy4ueaQvNb13A/q06iJUFjL8oFfKz5SwttyfA==
X-Received: by 2002:a17:902:7281:b029:d2:2a0b:f050 with SMTP id
 d1-20020a1709027281b02900d22a0bf050mr738515pll.42.1601058854524; 
 Fri, 25 Sep 2020 11:34:14 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.34.09
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:34:14 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 30/47] staging: media: zoran: use
 pci_request_regions
Date: Fri, 25 Sep 2020 18:30:40 +0000
Message-Id: <1601058657-14042-31-git-send-email-clabbe@baylibre.com>
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

Use pci_request_regions so now we can see zoran in /proc/iomem.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index a3e7b0027d69..f4639324bace 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1011,6 +1011,7 @@ static void zoran_remove(struct pci_dev *pdev)
 	/* unmap and free memory */
 	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
 	iounmap(zr->zr36057_mem);
+	pci_release_regions(pdev);
 	pci_disable_device(zr->pci_dev);
 	video_unregister_device(zr->video_dev);
 exit_free:
@@ -1160,10 +1161,14 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	snprintf(ZR_DEVNAME(zr), sizeof(ZR_DEVNAME(zr)), "%s[%u]",
 		 zr->card.name, zr->id);
 
+	err = pci_request_regions(pdev, ZR_DEVNAME(zr));
+	if (err)
+		goto zr_unreg;
+
 	zr->zr36057_mem = pci_ioremap_bar(zr->pci_dev, 0);
 	if (!zr->zr36057_mem) {
 		pci_err(pdev, "%s() - ioremap failed\n", __func__);
-		goto zr_unreg;
+		goto zr_pci_release;
 	}
 
 	result = pci_request_irq(pdev, 0, zoran_irq, NULL, zr, ZR_DEVNAME(zr));
@@ -1281,6 +1286,8 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	pci_free_irq(zr->pci_dev, 0, zr);
 zr_unmap:
 	iounmap(zr->zr36057_mem);
+zr_pci_release:
+	pci_release_regions(pdev);
 zr_unreg:
 	v4l2_ctrl_handler_free(&zr->hdl);
 	v4l2_device_unregister(&zr->v4l2_dev);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

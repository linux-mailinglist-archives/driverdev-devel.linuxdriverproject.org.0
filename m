Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B6027203B
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4838A85FC3;
	Mon, 21 Sep 2020 10:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UnXUbh8uQQTX; Mon, 21 Sep 2020 10:21:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 41BAA85FAE;
	Mon, 21 Sep 2020 10:21:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8BB0E1BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8631A85F9C
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wrNXC-ms_oMq for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4066D85FC3
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:03 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id k15so12116564wrn.10
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r85oKelmSxCT/ytNZb+5lrzckUj7jOhmVdpf8jChvhQ=;
 b=aTvoD3hFXs3POFwDeGWyKdJ5WNaRfIUoDo3FLhNdWtwLbIgWIC+y8D//me7P05cZBL
 mfqi8yRRUNP+A+ONA5XfI1lgHoVeBeNXWHk5SSAMd16oikUA9+mXSWxN59qqQFpaay5b
 E4OMN3iLZWjyBf5dDc10VlinaR7+6JQxh70cO0U67K2ebbOl7dnA8Sclvv8pVR/DrUSE
 7pKvEwaEZIJVn6INdPJJUaRGV/EfIBQbc9iDoi9dOsvxPbeJ2wL1Gg5kVd4ygIYDcDll
 h0SUVJSqhd5JcaZbo1RzpE0k3mDwR0oj2gFfoDKAEIVWFUMG+I1JHA0TrocC9yg4/yIs
 RbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r85oKelmSxCT/ytNZb+5lrzckUj7jOhmVdpf8jChvhQ=;
 b=KTXyWRmV1qfavtbAHjpxgDHAZR6WxwP9mMbRrxN5zE3pj3uS1LSma7AagS5Y065dEh
 RBi2RrF5ZLODFxUA6VTcrjib43QrVpH/YKtH9iK8XaqkMIljPKGiVsgyfQnvVbBzNIXm
 f/8srBydtlPbwVZkdMI8wwC1ubHHcSjdeTD5/TBdCkzJT7ARV24qSPNmPpwPwH/qy11u
 jnaE4//M1cDxdqGaebtNUMl2RdFN3JBPPc5d7yHOcoTuzcb2zHgimc68ZHF2N4bzrEux
 ktIKUBeSgZonGXzDjk1Im6u1mWgD1sYoK9/9wPHPgPqtJz6JUuQxPdN1XsaQch8JkYq5
 rHyg==
X-Gm-Message-State: AOAM5317ChkfB0FYbnJnMZstvZWVVoz3OjLfAXSLygFfxdIPR/FZMJSo
 ySyz85OkyymBv5ti9DPcAE7RVluE6FOtjw==
X-Google-Smtp-Source: ABdhPJx3vSrvmd5LQMjT6ohRvSlIA6LBabrT+xHJ+GrgKpx5lmH4iadrY/KQb8lY1YMKMr3HjkoCDw==
X-Received: by 2002:a5d:6291:: with SMTP id k17mr51139822wru.130.1600683661822; 
 Mon, 21 Sep 2020 03:21:01 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:01 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 31/49] staging: media: zoran: use pci_request_regions
Date: Mon, 21 Sep 2020 10:20:06 +0000
Message-Id: <1600683624-5863-32-git-send-email-clabbe@baylibre.com>
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

Use pci_request_regions so now we can see zoran in /proc/iomem.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 756b9a339f7e..ed4ecf92c040 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1004,6 +1004,7 @@ static void zoran_remove(struct pci_dev *pdev)
 	/* unmap and free memory */
 	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
 	iounmap(zr->zr36057_mem);
+	pci_release_regions(pdev);
 	pci_disable_device(zr->pci_dev);
 	video_unregister_device(zr->video_dev);
 exit_free:
@@ -1151,10 +1152,14 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	zr->card = zoran_cards[card_num];
 	snprintf(ZR_DEVNAME(zr), sizeof(ZR_DEVNAME(zr)), "%s[%u]", zr->card.name, zr->id);
 
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
@@ -1270,6 +1275,8 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
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

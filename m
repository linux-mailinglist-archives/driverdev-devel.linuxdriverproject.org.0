Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E5427202C
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 488E3868D7;
	Mon, 21 Sep 2020 10:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vr86wYpGn03O; Mon, 21 Sep 2020 10:21:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8FA5E86852;
	Mon, 21 Sep 2020 10:21:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B48A1BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3798586818
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q-2uxf+SuQDO for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5B5DB86819
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:02 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id c18so12124585wrm.9
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1urHh7daH3LoOqNIcatz+V8D8QIxpgJB7hMXIZZ34x8=;
 b=YjR+2ZxADZaysP7sw04FPhYP3YPw21PgBstXPTe3UwIIsIvxSdaRgWBLUKrGCbw56r
 KSmiVKdsOVv0Z9mDW82UCgPiG8NptXiVwiymXb+AEp7VChMnFw8+uo2GanEjEhXIZSu9
 AVdIcAPCng8oQxUttO4d0ogtZ32GGoyueYSG11AHhkpx94Ij4JrMlGEjxHwJu/G0POdK
 DGHzJ8X8OyWo3mgdsN/donCalFVhbAISMXlqC3dS0+ZNTyRMhi8mR6rJGTkcsFPaEBUo
 lUpa50VSd70ObhfzKgtAUjCX1Pqcj8jBfKzQQDx34YlFyJwYzKEbN6E6CiVN5yi7NBer
 9xkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1urHh7daH3LoOqNIcatz+V8D8QIxpgJB7hMXIZZ34x8=;
 b=HYL9SDHVA11Nq6PLwZp9MyDpOMtg0CD4/Yj7cDEGIxySjhqhkQw95bmbHslS5jjr6+
 OUVh8yBcCIGP3vsJYffDsPYGlU7N9ttN5uA189hnni58B13g5960RBIWsVeEA4F/zC4g
 aOaiUz5oMzWGro0Hb1iz8Rt9ZaxjiP/aYFJjvPYdD7FmhO7ZIp6wZHfG/WKwDckpxu87
 XLZjUuDhOREnyjv1yBjcGKQ348eDws1LysgTsdg1c3ZXQKw+Wd74J7bqroz82VVlApCz
 FtyNJLcfgK8bdRXrub9xGKgSxkRJ6cQgyPQBIoFL96k/6MhH6sEE7CZpDjqq56Gc5VUd
 DTNw==
X-Gm-Message-State: AOAM532GU5dOUNhuuHrcKJ+AmL9S5fJzyheJeUYswi7zzy+fDBuI6Qvo
 HmKJLlm7lKDDo7Gb9dX20Pn/8g==
X-Google-Smtp-Source: ABdhPJw4Md6NhAxXg8ikwFgPuyNgrFboC/5yIDUW7lgrPEHwO6yzae/wCh2FO6LosU8a+MYU2KltVA==
X-Received: by 2002:adf:f984:: with SMTP id f4mr51635137wrr.102.1600683660854; 
 Mon, 21 Sep 2020 03:21:00 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:00 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 30/49] staging: media: zoran: use devm for
 videocodec_master alloc
Date: Mon, 21 Sep 2020 10:20:05 +0000
Message-Id: <1600683624-5863-31-git-send-email-clabbe@baylibre.com>
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

Let's use devm allocations for videocodec, this simplify code.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 22 +++++-----------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 62e63804ae14..756b9a339f7e 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -989,18 +989,10 @@ static void zoran_remove(struct pci_dev *pdev)
 		goto exit_free;
 
 	/* unregister videocodec bus */
-	if (zr->codec) {
-		struct videocodec_master *master = zr->codec->master_data;
-
+	if (zr->codec)
 		videocodec_detach(zr->codec);
-		kfree(master);
-	}
-	if (zr->vfe) {
-		struct videocodec_master *master = zr->vfe->master_data;
-
+	if (zr->vfe)
 		videocodec_detach(zr->vfe);
-		kfree(master);
-	}
 
 	/* unregister i2c bus */
 	zoran_unregister_i2c(zr);
@@ -1028,7 +1020,7 @@ static struct videocodec_master *zoran_setup_videocodec(struct zoran *zr, int ty
 {
 	struct videocodec_master *m = NULL;
 
-	m = kmalloc(sizeof(*m), GFP_KERNEL);
+	m = devm_kmalloc(&zr->pci_dev->dev, sizeof(*m), GFP_KERNEL);
 	if (!m)
 		return m;
 
@@ -1234,7 +1226,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		zr->codec = videocodec_attach(master_codec);
 		if (!zr->codec) {
 			pci_err(pdev, "%s - no codec found\n", __func__);
-			goto zr_free_codec;
+			goto zr_unreg_i2c;
 		}
 		if (zr->codec->type != zr->card.video_codec) {
 			pci_err(pdev, "%s - wrong codec\n", __func__);
@@ -1248,7 +1240,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		zr->vfe = videocodec_attach(master_vfe);
 		if (!zr->vfe) {
 			pci_err(pdev, "%s - no VFE found\n", __func__);
-			goto zr_free_vfe;
+			goto zr_detach_codec;
 		}
 		if (zr->vfe->type != zr->card.video_vfe) {
 			pci_err(pdev, "%s = wrong VFE\n", __func__);
@@ -1269,12 +1261,8 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
 zr_detach_vfe:
 	videocodec_detach(zr->vfe);
-zr_free_vfe:
-	kfree(master_vfe);
 zr_detach_codec:
 	videocodec_detach(zr->codec);
-zr_free_codec:
-	kfree(master_codec);
 zr_unreg_i2c:
 	zoran_unregister_i2c(zr);
 zr_free_irq:
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

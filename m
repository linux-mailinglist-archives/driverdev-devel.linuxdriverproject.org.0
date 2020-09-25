Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D7830279145
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 21:01:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 19D1186D77;
	Fri, 25 Sep 2020 19:01:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QJOFDd1iX4zU; Fri, 25 Sep 2020 19:01:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E317486D2E;
	Fri, 25 Sep 2020 19:01:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BE2A1BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:01:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 280A886D2E
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DMCFDqUDRfFU for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 19:01:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5B4F986D22
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 19:01:24 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id m34so3355702pgl.9
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 12:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y4t9XD5GcXO3lFZ+ybjaf1F+Annig7SwGk+A/Y+pjdk=;
 b=ps5alxjCCkw3sEZk28BUPykUXqpAofgGVKU9pyPIjeI0A6G8AFZm4MK610NXSwkTWc
 9h9DteIGcYZi8GsWRQty6IUxGO233CrA66oS+Ezdb5VzLnvvxGqfGpFp+XOidIdvnEEu
 1A50cXL0gCgdAIoxKfE0fRxFxRMygwpVs07dyQFR7qgdvzoflwImMBf8v+dByU0huFoc
 Fei/kr3Ap0BWSNYLNuoDOYs4tsucvJChyZpuBib2Utn/z1dwI1bl3WszECgPdbCNm4CR
 XH+4adj29Q/OV1Va87/bn9e0gSAmodEt6I2SBQJjdfwVJFbuaSDsmFYBrI+Kiy7Kc4XT
 lKgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y4t9XD5GcXO3lFZ+ybjaf1F+Annig7SwGk+A/Y+pjdk=;
 b=A9m9okcb+MMTTKt+QKH73GgHHbWarycKWkw69Kay/r7O3/2A/ln4lrt+k5DHFAnkPW
 6UhUby+IicIG7iDqXV7+iEgfV8kT7hi7MD1JE1DB0pKwKYbafltXnA6UlVZLkGYs3Bj6
 MtQF4nDoRS75MgKvtVtppSxnhuMTiS19AeHgQlhv5t6y/UFMU5kWqsCWyYMY3tbF3p9B
 gjpHGyUlFaBUXnXOb1Pak4Q1zfdXJuO+AGlPbgyxhV2zWtUnng7K9xY/TxFbRQHEl40A
 E0sL/Lq+jkma/uYUgZbqKWT7ha5yhDF0be0+EWbzWV9a45u4eQgKAHkwsM8m3K4MAwBI
 jEwQ==
X-Gm-Message-State: AOAM530hRtAyeGlywA418QJ6QFkR8W20cnuADx4GAQcfBJUhE3oi/1to
 R1N9znClbHyjG0bjEwgjZ9baqeelR688iw==
X-Google-Smtp-Source: ABdhPJwGh6WhUaRPZeBEB30oZcLZHt/4f9bqH965SBGS+elOhvhyhnQUmkeJ3DxULfyHwBpeLld0NQ==
X-Received: by 2002:aa7:869a:0:b029:142:2501:34d1 with SMTP id
 d26-20020aa7869a0000b0290142250134d1mr582877pfo.42.1601058848735; 
 Fri, 25 Sep 2020 11:34:08 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.34.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:34:08 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 29/47] staging: media: zoran: use devm for
 videocodec_master alloc
Date: Fri, 25 Sep 2020 18:30:39 +0000
Message-Id: <1601058657-14042-30-git-send-email-clabbe@baylibre.com>
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

Let's use devm allocations for videocodec, this simplify code.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c | 22 +++++-----------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index fe0c5a7c967c..a3e7b0027d69 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -996,18 +996,10 @@ static void zoran_remove(struct pci_dev *pdev)
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
@@ -1036,7 +1028,7 @@ static struct videocodec_master *zoran_setup_videocodec(struct zoran *zr,
 {
 	struct videocodec_master *m = NULL;
 
-	m = kmalloc(sizeof(*m), GFP_KERNEL);
+	m = devm_kmalloc(&zr->pci_dev->dev, sizeof(*m), GFP_KERNEL);
 	if (!m)
 		return m;
 
@@ -1245,7 +1237,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		zr->codec = videocodec_attach(master_codec);
 		if (!zr->codec) {
 			pci_err(pdev, "%s - no codec found\n", __func__);
-			goto zr_free_codec;
+			goto zr_unreg_i2c;
 		}
 		if (zr->codec->type != zr->card.video_codec) {
 			pci_err(pdev, "%s - wrong codec\n", __func__);
@@ -1259,7 +1251,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		zr->vfe = videocodec_attach(master_vfe);
 		if (!zr->vfe) {
 			pci_err(pdev, "%s - no VFE found\n", __func__);
-			goto zr_free_vfe;
+			goto zr_detach_codec;
 		}
 		if (zr->vfe->type != zr->card.video_vfe) {
 			pci_err(pdev, "%s = wrong VFE\n", __func__);
@@ -1280,12 +1272,8 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 
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

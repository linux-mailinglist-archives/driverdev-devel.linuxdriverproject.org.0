Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ECFD272029
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 29F608683A;
	Mon, 21 Sep 2020 10:21:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o33ZSbsSgEas; Mon, 21 Sep 2020 10:21:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 202B58685D;
	Mon, 21 Sep 2020 10:21:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB25D1BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A3F1285FA1
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hU7y_nTslY2Z for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D77CF85F92
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:57 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id q9so11566921wmj.2
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QA8TCJgASc+mrJ6x1w1qH0mxGnf3/+EHhd8oJ9n9Jp0=;
 b=C49J6LS6XfHTVMcifSQO4pi1K9ZW9D7UvLHUiB3vlE5YDmLRE6XCicTJFZeih3qMiq
 BLB0ftBYrr04EnXsTgApYt4tOimQeoYnG1bOebAFzBO+2wQviRTK71qzXFDYWl4Pm6Lv
 c+hd8TRTBZNJofb8UxyuI2Xw5A0q584ibUaVrMv0QIRIFBsSLmkuIwccyGP5Mu+bFrjY
 TZp/Y1BVn1tIn2pWLV8wDVWA+nCVQUZC2Vx6PMn5cVtKdMdSQfkBClQZrntGsz6IbiO7
 LNCmO5eyyY1fCl1MuERF1NavuTRMX0Y0VRCzqPH/t4Us8I06UE3sarvSjpV2c4MNy1Jj
 QRyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QA8TCJgASc+mrJ6x1w1qH0mxGnf3/+EHhd8oJ9n9Jp0=;
 b=sRJfOqgOUA3kqYLbgswTWWlcsSBqvZGTeHuorvmnNAF63wV1oGZb3zj162NoA9Aobj
 AzJuowJf7JLKvDPyBx2MPyqJgE9pbwIzkBkB4sbsF/5rfCcrmg8tzjetquRvVfRXkQ/l
 4EzEzY8pTXUVYVYA10IDxaYg1qiJLT65RsWKG7RpPbMfTYAgQwY20mXhW6B4RfgoR9nB
 ynMIjUW7QJRrkG9FCBDNkSlexP8+hIFi0fuWY0VZvzhj0sK+nUN3ZkAueFiEjDRuyru1
 FW8fNOiE+8qb+DTJ3BmAn9OMxk/1GoVnTi+PuqWelLp+lnoXwtrVedSQ+ktuXXhtVAVY
 iLKw==
X-Gm-Message-State: AOAM5339h//EOzi63U6+7XQLWWJJvL4slo2PbRD4+ghs5FgHGSStRRRa
 gzzXJb5oTEJa01RZoZx9pWE2aQ==
X-Google-Smtp-Source: ABdhPJwM+LQagXIvdSHxKOsRPII3JPsY7uqMRc4MbUi63rKYiqCH7XGQ4PGXad4MX8gvOEA5Pbta0Q==
X-Received: by 2002:a05:600c:2146:: with SMTP id
 v6mr28742891wml.159.1600683656401; 
 Mon, 21 Sep 2020 03:20:56 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:55 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 25/49] staging: media: zoran: use ZR_NORM
Date: Mon, 21 Sep 2020 10:20:00 +0000
Message-Id: <1600683624-5863-26-git-send-email-clabbe@baylibre.com>
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

Instead of using hardcoded numbers, let's use some define for ZR NORM.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran.h        | 4 ++++
 drivers/staging/media/zoran/zoran_card.c   | 8 ++++----
 drivers/staging/media/zoran/zoran_driver.c | 6 +++---
 3 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 8f3faa4eb60f..87ca324f6ec2 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -22,6 +22,10 @@
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-fh.h>
 
+#define ZR_NORM_PAL 0
+#define ZR_NORM_NTSC 1
+#define ZR_NORM_SECAM 2
+
 struct zoran_sync {
 	unsigned long frame;	/* number of buffer that has been free'd */
 	unsigned long length;	/* number of code bytes in buffer (capture only) */
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index a8d23bf126c3..1c587ce0d8c0 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -906,18 +906,18 @@ static int zr36057_init(struct zoran *zr)
 		default_norm = 0;
 	if (default_norm == 0) {
 		zr->norm = V4L2_STD_PAL;
-		zr->timing = zr->card.tvn[0];
+		zr->timing = zr->card.tvn[ZR_NORM_PAL];
 	} else if (default_norm == 1) {
 		zr->norm = V4L2_STD_NTSC;
-		zr->timing = zr->card.tvn[1];
+		zr->timing = zr->card.tvn[ZR_NORM_NTSC];
 	} else {
 		zr->norm = V4L2_STD_SECAM;
-		zr->timing = zr->card.tvn[2];
+		zr->timing = zr->card.tvn[ZR_NORM_SECAM];
 	}
 	if (!zr->timing) {
 		pci_warn(zr->pci_dev, "%s - default TV standard not supported by hardware. PAL will be used.\n", __func__);
 		zr->norm = V4L2_STD_PAL;
-		zr->timing = zr->card.tvn[0];
+		zr->timing = zr->card.tvn[ZR_NORM_PAL];
 	}
 
 	if (default_input > zr->card.inputs - 1) {
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 8724b0ad855e..b1351455690f 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1033,11 +1033,11 @@ static int zoran_set_norm(struct zoran *zr, v4l2_std_id norm)
 	}
 
 	if (norm & V4L2_STD_SECAM)
-		zr->timing = zr->card.tvn[2];
+		zr->timing = zr->card.tvn[ZR_NORM_SECAM];
 	else if (norm & V4L2_STD_NTSC)
-		zr->timing = zr->card.tvn[1];
+		zr->timing = zr->card.tvn[ZR_NORM_NTSC];
 	else
-		zr->timing = zr->card.tvn[0];
+		zr->timing = zr->card.tvn[ZR_NORM_PAL];
 
 	decoder_call(zr, video, s_std, norm);
 	encoder_call(zr, video, s_std_output, norm);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

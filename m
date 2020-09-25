Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 57022279143
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 21:01:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4400A2E190;
	Fri, 25 Sep 2020 19:00:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k8bSeafujbWC; Fri, 25 Sep 2020 19:00:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AFEE02E181;
	Fri, 25 Sep 2020 19:00:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 029DE1BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F3E9986DCC
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:00:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EZO+dGU9fHau for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 19:00:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4E37A86DC8
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 19:00:48 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id 26so3847573ois.5
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 12:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=67XUEXRCBbTegcwWQw/QiZzWAGtuLdAQbmq+caL+6RE=;
 b=s+AHGb3nlYV0VlfG+KkOscxHEcQODnOMWW5adUl29T9itRp8SkHDLG/4otOB3NuhIn
 NrKXRBSm2/JT33lpq3F0yXZWWGGQ1A8vQVk+YQexJt+PYI3cSzZNVO7mJ2H2Uf4u4ibV
 m0gg1KQ0wjlPWN4GqxvHyeb1xziSMbuI2bFW7CcbWL8/bNIBCvyVdqeBXXfaBuJi+OF9
 5vSS5/+AwUZhNJ+v59H/g+DTt5QdF7czUEc44UZpG8v/tzpjaIiV9BzoFTrQqaS1Lv5R
 AXKnc3gmTHHeExMv6EhvYxKeRUWvUoyDsuu+MHu8bFtegvpwEXrgCVv29I5T15uEzeB2
 Zrug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=67XUEXRCBbTegcwWQw/QiZzWAGtuLdAQbmq+caL+6RE=;
 b=KB6piulb7DNJSbzaIRV0pcewzy41HjbbId2rKVH5DzGA5BvSS0Zs5ghbf1LLt2KWFO
 VTD9AyooLg0lvYxS1altrFoLqljMQsSQOON6R7WcegsUHNpgDddfSZmeNBT7RNMOBH+O
 08JlOt09wvWX97JNIaLVwmfkbvWJrvQdptav/IRQm+Ow4YtnLG1HQFy75eJ34XbxClAF
 /9eINo9TpVbhCMR+rYujZH4MoS68SPKXnB/0PlxL/q7DREWYjwbcIvu0qqZbCI9dKvx7
 vrlSM4JtHK8fO5gqjHMEfwgXMk0gD3t01cJLym3inzzCnbNXO8+um78ALlgzleypnU3A
 xyXQ==
X-Gm-Message-State: AOAM530iKZQDprhs1P/NkbNSyRdDktpTQfWjfyp8VJCAKpMUg3wYV8l1
 4O9j62DFijQxJHCVqTyvJAVsbEsOJHMKbw==
X-Google-Smtp-Source: ABdhPJz0ablFEIyth3H5fFmPU2YUstaBRnmVvNI+rscF448UcL4nefAnQqyzTBUSXEqpKOLbFthz1w==
X-Received: by 2002:a17:90a:474c:: with SMTP id
 y12mr774202pjg.150.1601058819583; 
 Fri, 25 Sep 2020 11:33:39 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.33.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:33:39 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 24/47] staging: media: zoran: use ZR_NORM
Date: Fri, 25 Sep 2020 18:30:34 +0000
Message-Id: <1601058657-14042-25-git-send-email-clabbe@baylibre.com>
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
index 9fe2bc2b036a..8be7f8f0a020 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -911,18 +911,18 @@ static int zr36057_init(struct zoran *zr)
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
index b910ad136b84..858e0910884c 100644
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

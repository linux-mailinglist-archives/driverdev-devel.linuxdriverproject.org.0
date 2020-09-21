Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B7427202B
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB0D0871DD;
	Mon, 21 Sep 2020 10:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8uKN13tGsGJV; Mon, 21 Sep 2020 10:21:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 431E2871E6;
	Mon, 21 Sep 2020 10:21:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 155DD1BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0CEFC85F90
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kbE_ISSlTS-W for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1941485FAD
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:06 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id l9so12024618wme.3
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OuktUbzogSgMnm6tl68bM64IlyF+ws6MaXPokPAQRHg=;
 b=JCcu8rOSnPInqXXKrkjuF8aGuowsFaGAbtpYyb+vQHU7NqPENDa9PW1qv8sAfKG1f3
 7ntQVJJZGoBUND9z+U/AAht1eWh5G/xaHd+Ojy86mTkXkHqGrfpq7cQIUJHHomFT7ait
 tQhT432OntImygVT+KMUCebXRrIC9w2Ex4czSug9xHx6W3wOUR4Ef7v3Q+7KZVsJJVQw
 whoqxIl+7pkUT/u242X0EMAD1q4tcn6lHU5Uoh+PWv4P0ZhaV9iJ9lZ2XHdY3BJoTpDY
 G0O6Ocfbz+qG86kxfAb2iXxcQs+zspSw5+4QSCm5c8SIZiGLBT/rd2BjisiuKUO605hA
 OZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OuktUbzogSgMnm6tl68bM64IlyF+ws6MaXPokPAQRHg=;
 b=csRnhUaDeV3lSQ/THkU7zcRhPzhXSN6/QU2FhsKIk5znIhMFQ8688wdNOiebJM24xa
 YYRQUdnagmL2xkmWKIlDr6LU9LZijK5lyO15oxIA2EGk7JmXrctlmpfQv+PMGT791DwQ
 YLGShnucNGjbWT/pRmPbB0jOLHo+2X3mz6P7O5GwrkZOIaw3mzn6BjYt8P72JlQJjKHS
 YQ9pzidrdrFW9/20jgscdKit8o0kOns0TCEd2eyjfsEOEE2tRblro7BBVAaEDPstJSJl
 oQ4fy1AhHK0JFjgJJcPOfdhu/bRd6x+HJHh4AFxI9/ZmstXAOAODrOl5wkMi2l6S1smC
 R+TQ==
X-Gm-Message-State: AOAM5331chFnDUvE7NQsR1bAuMT2sA4cfXhbhyOcdRkFL8JwytU6B3kL
 Ya+xruRmY46Ecl1pCABXv/3ECBlCa5wexA==
X-Google-Smtp-Source: ABdhPJz9qluklEwv8ciov73f9EFAyhxDpwQwXye4ZaFDhhVRjgzehOstV5sBL1dsX8CAEJIsF5SddQ==
X-Received: by 2002:a05:600c:220f:: with SMTP id
 z15mr16339258wml.87.1600683664607; 
 Mon, 21 Sep 2020 03:21:04 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:03 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 34/49] staging: media: zoran: constify struct tvnorm
Date: Mon, 21 Sep 2020 10:20:09 +0000
Message-Id: <1600683624-5863-35-git-send-email-clabbe@baylibre.com>
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

The structure tvnorm could be consified.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/videocodec.h   |  2 +-
 drivers/staging/media/zoran/zoran.h        |  4 ++--
 drivers/staging/media/zoran/zoran_card.c   | 24 +++++++++++-----------
 drivers/staging/media/zoran/zoran_device.c |  4 ++--
 drivers/staging/media/zoran/zr36016.c      |  4 ++--
 drivers/staging/media/zoran/zr36050.c      |  4 ++--
 drivers/staging/media/zoran/zr36060.c      |  2 +-
 7 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/media/zoran/videocodec.h b/drivers/staging/media/zoran/videocodec.h
index 553af4ad431e..a049f3c2c68a 100644
--- a/drivers/staging/media/zoran/videocodec.h
+++ b/drivers/staging/media/zoran/videocodec.h
@@ -256,7 +256,7 @@ struct videocodec {
 	// set compression or decompression (or freeze, stop, standby, etc)
 	int (*set_mode)(struct videocodec *codec, int mode);
 	// setup picture size and norm (for the codec's video frontend)
-	int (*set_video)(struct videocodec *codec, struct tvnorm *norm,
+	int (*set_video)(struct videocodec *codec, const struct tvnorm *norm,
 			 struct vfe_settings *cap, struct vfe_polarity *pol);
 	// other control commands, also mmap setup etc.
 	int (*control)(struct videocodec *codec, int type, int size, void *data);
diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index c73b7e7fd5e1..727ba67afd56 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -227,7 +227,7 @@ struct card_info {
 	} input[BUZ_MAX_INPUT];
 
 	v4l2_std_id norms;
-	struct tvnorm *tvn[3];	/* supported TV norms */
+	const struct tvnorm *tvn[3];	/* supported TV norms */
 
 	u32 jpeg_int;		/* JPEG interrupt */
 	u32 vsync_int;		/* VSYNC interrupt */
@@ -266,7 +266,7 @@ struct zoran {
 	u8 initialized;		/* flag if zoran has been correctly initialized */
 	int user;		/* number of current users */
 	struct card_info card;
-	struct tvnorm *timing;
+	const struct tvnorm *timing;
 
 	unsigned short id;	/* number of this device */
 	char name[32];		/* name of this device */
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index b841f532e6bb..176ce8a355ba 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -277,24 +277,24 @@ static char *codecid_to_modulename(u16 codecid)
 //      u16 Wt, Wa, HStart, HSyncStart, Ht, Ha, VStart;
 // };
 
-static struct tvnorm f50sqpixel = { 944, 768, 83, 880, 625, 576, 16 };
-static struct tvnorm f60sqpixel = { 780, 640, 51, 716, 525, 480, 12 };
-static struct tvnorm f50ccir601 = { 864, 720, 75, 804, 625, 576, 18 };
-static struct tvnorm f60ccir601 = { 858, 720, 57, 788, 525, 480, 16 };
+static const struct tvnorm f50sqpixel = { 944, 768, 83, 880, 625, 576, 16 };
+static const struct tvnorm f60sqpixel = { 780, 640, 51, 716, 525, 480, 12 };
+static const struct tvnorm f50ccir601 = { 864, 720, 75, 804, 625, 576, 18 };
+static const struct tvnorm f60ccir601 = { 858, 720, 57, 788, 525, 480, 16 };
 
-static struct tvnorm f50ccir601_lml33 = { 864, 720, 75 + 34, 804, 625, 576, 18 };
-static struct tvnorm f60ccir601_lml33 = { 858, 720, 57 + 34, 788, 525, 480, 16 };
+static const struct tvnorm f50ccir601_lml33 = { 864, 720, 75 + 34, 804, 625, 576, 18 };
+static const struct tvnorm f60ccir601_lml33 = { 858, 720, 57 + 34, 788, 525, 480, 16 };
 
 /* The DC10 (57/16/50) uses VActive as HSync, so HStart must be 0 */
-static struct tvnorm f50sqpixel_dc10 = { 944, 768, 0, 880, 625, 576, 0 };
-static struct tvnorm f60sqpixel_dc10 = { 780, 640, 0, 716, 525, 480, 12 };
+static const struct tvnorm f50sqpixel_dc10 = { 944, 768, 0, 880, 625, 576, 0 };
+static const struct tvnorm f60sqpixel_dc10 = { 780, 640, 0, 716, 525, 480, 12 };
 
 /*
  * FIXME: I cannot swap U and V in saa7114, so i do one pixel left shift in zoran (75 -> 74)
  * (Maxim Yevtyushkin <max@linuxmedialabs.com>)
  */
-static struct tvnorm f50ccir601_lm33r10 = { 864, 720, 74 + 54, 804, 625, 576, 18 };
-static struct tvnorm f60ccir601_lm33r10 = { 858, 720, 56 + 54, 788, 525, 480, 16 };
+static const struct tvnorm f50ccir601_lm33r10 = { 864, 720, 74 + 54, 804, 625, 576, 18 };
+static const struct tvnorm f60ccir601_lm33r10 = { 858, 720, 56 + 54, 788, 525, 480, 16 };
 
 /*
  * FIXME: The ks0127 seem incapable of swapping U and V, too, which is why I copy Maxim's left
@@ -303,8 +303,8 @@ static struct tvnorm f60ccir601_lm33r10 = { 858, 720, 56 + 54, 788, 525, 480, 16
  * Christer's driver used the unshifted norms, though...
  * /Sam
  */
-static struct tvnorm f50ccir601_avs6eyes = { 864, 720, 74, 804, 625, 576, 18 };
-static struct tvnorm f60ccir601_avs6eyes = { 858, 720, 56, 788, 525, 480, 16 };
+static const struct tvnorm f50ccir601_avs6eyes = { 864, 720, 74, 804, 625, 576, 18 };
+static const struct tvnorm f60ccir601_avs6eyes = { 858, 720, 56, 788, 525, 480, 16 };
 
 static const unsigned short vpx3220_addrs[] = { 0x43, 0x47, I2C_CLIENT_END };
 static const unsigned short saa7110_addrs[] = { 0x4e, 0x4f, I2C_CLIENT_END };
diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 82d522c1a528..9558bafdde7d 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -292,7 +292,7 @@ static void zr36057_adjust_vfe(struct zoran *zr, enum zoran_codec_mode mode)
 static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 			    const struct zoran_format *format)
 {
-	struct tvnorm *tvn;
+	const struct tvnorm *tvn;
 	unsigned int HStart, HEnd, VStart, VEnd;
 	unsigned int DispMode;
 	unsigned int VidWinWid, VidWinHt;
@@ -510,7 +510,7 @@ static void init_jpeg_queue(struct zoran *zr)
 
 static void zr36057_set_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 {
-	struct tvnorm *tvn;
+	const struct tvnorm *tvn;
 	u32 reg;
 
 	tvn = zr->timing;
diff --git a/drivers/staging/media/zoran/zr36016.c b/drivers/staging/media/zoran/zr36016.c
index a8190005bc4d..046cffb92f5f 100644
--- a/drivers/staging/media/zoran/zr36016.c
+++ b/drivers/staging/media/zoran/zr36016.c
@@ -238,8 +238,8 @@ static int zr36016_set_mode(struct videocodec *codec, int mode)
 }
 
 /* set picture size */
-static int zr36016_set_video(struct videocodec *codec, struct tvnorm *norm,
-		   struct vfe_settings *cap, struct vfe_polarity *pol)
+static int zr36016_set_video(struct videocodec *codec, const struct tvnorm *norm,
+			     struct vfe_settings *cap, struct vfe_polarity *pol)
 {
 	struct zr36016 *ptr = (struct zr36016 *)codec->data;
 
diff --git a/drivers/staging/media/zoran/zr36050.c b/drivers/staging/media/zoran/zr36050.c
index f551631c18cd..348b9f0ab74c 100644
--- a/drivers/staging/media/zoran/zr36050.c
+++ b/drivers/staging/media/zoran/zr36050.c
@@ -554,8 +554,8 @@ static int zr36050_set_mode(struct videocodec *codec, int mode)
 }
 
 /* set picture size (norm is ignored as the codec doesn't know about it) */
-static int zr36050_set_video(struct videocodec *codec, struct tvnorm *norm,
-		   struct vfe_settings *cap, struct vfe_polarity *pol)
+static int zr36050_set_video(struct videocodec *codec, const struct tvnorm *norm,
+			     struct vfe_settings *cap, struct vfe_polarity *pol)
 {
 	struct zr36050 *ptr = (struct zr36050 *)codec->data;
 	int size;
diff --git a/drivers/staging/media/zoran/zr36060.c b/drivers/staging/media/zoran/zr36060.c
index 0a0916f5f8cd..773de0e64daf 100644
--- a/drivers/staging/media/zoran/zr36060.c
+++ b/drivers/staging/media/zoran/zr36060.c
@@ -477,7 +477,7 @@ static int zr36060_set_mode(struct videocodec *codec, int mode)
 }
 
 /* set picture size (norm is ignored as the codec doesn't know about it) */
-static int zr36060_set_video(struct videocodec *codec, struct tvnorm *norm,
+static int zr36060_set_video(struct videocodec *codec, const struct tvnorm *norm,
 			     struct vfe_settings *cap, struct vfe_polarity *pol)
 {
 	struct zr36060 *ptr = (struct zr36060 *)codec->data;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

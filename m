Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C0C272034
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5BD2868C0;
	Mon, 21 Sep 2020 10:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eGgWpCQszoO9; Mon, 21 Sep 2020 10:21:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1EB72868CA;
	Mon, 21 Sep 2020 10:21:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D8BA1BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 79B33871ED
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FNuqmR7a87Go for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D9681871DF
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:08 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id x23so11545513wmi.3
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=V00Hnz28PjN932GfSBJm8Se5vmkXoiml45tpc3tFwpc=;
 b=HaZ/lnL8xJwtzBDX7pkXbgDeboSMizBazK0gCzI0dHsYPLpLlyswsfVyhdQp3u2Jmz
 9l1oYpu73SdXGgeI4g5u5+/oH8VBWUwqUjhlwCmw43vV7kCJ16lsrIXzuFOOZt46QCY9
 TVfzlCIcadcAg1/roRpMneGR78Okpyu4AwGgfBgUGxru63ojmPPGxpmO+JT8GfnOWCx3
 jRx0CV/A+wlAK+xxdGWEitQgZLe4Mjontmac8ve/2H3v2ZXKqYmqUNpiA2lAMLOqLHfK
 XWablPnh2HrJbQB/rPMfrEKiuajAd0h1jZtfQcLhD47NNA8MQm945AS/Ttxlu7gbGzCT
 wupA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=V00Hnz28PjN932GfSBJm8Se5vmkXoiml45tpc3tFwpc=;
 b=rrM8fgzin2zgBd7Wj9Vnf7UzQenSN04xAdnyyzo69uZOIwxQODuA3/wb1mXzW4VSBi
 1fWe7F5t4L6dEVJKIR2GtHwdgKpyosnbfeUpbvf7SLfe9KIVYQF92tDarTnJEl/A+Lv8
 0EI/KEojud6nyzWLrCjWBdlaGPFyu+T4tyllk50flOl2US8so1Oz3U1hNQyt2XLcp50j
 EdsEGkAUhYJEG/2dpjgXclsdFfk7DSLx5gtt4ZlcR5h6qSsXCvrl+A4Syy5oPZ6Xwvcr
 P6od3ZnCn82htMnFH33yPla4DtvT00OfjYxKqqgwES4I/3L+V8PjG+HKFYZHGttu1fVQ
 87uw==
X-Gm-Message-State: AOAM531TblTyiuGiRz43SdMoLkwGIusgKV9obOn9ZbpAY+KCBCcPFh9d
 K54oEMN3qlY+BhC0W2svStKLgA==
X-Google-Smtp-Source: ABdhPJwgbOyt3t2adMreBLWgBuOoAAdmy21xZ4x6cRhVH9rCZOfEVvotb2s8zR7J8LnaMYhvehXlog==
X-Received: by 2002:a7b:c317:: with SMTP id k23mr28412728wmj.44.1600683667440; 
 Mon, 21 Sep 2020 03:21:07 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:06 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 37/49] staging: media: zoran: add fallthrough keyword
Date: Mon, 21 Sep 2020 10:20:12 +0000
Message-Id: <1600683624-5863-38-git-send-email-clabbe@baylibre.com>
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

This patch adds fallthrough keyword where appropriate.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_device.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 9558bafdde7d..7634d94f9359 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -268,7 +268,9 @@ static void zr36057_adjust_vfe(struct zoran *zr, enum zoran_codec_mode mode)
 		btwrite(reg, ZR36057_VFEHCR);
 		break;
 	case BUZ_MODE_MOTION_COMPRESS:
+		fallthrough;
 	case BUZ_MODE_IDLE:
+		fallthrough;
 	default:
 		if ((zr->norm & V4L2_STD_NTSC) ||
 		    (zr->card.type == LML33R10 &&
@@ -521,6 +523,7 @@ static void zr36057_set_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 	/* MJPEG compression mode */
 	switch (mode) {
 	case BUZ_MODE_MOTION_COMPRESS:
+		fallthrough;
 	default:
 		reg = ZR36057_JMC_MJPGCmpMode;
 		break;
@@ -582,6 +585,7 @@ static void zr36057_set_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 	/* NOTE: decimal values here */
 	switch (mode) {
 	case BUZ_MODE_STILL_COMPRESS:
+		fallthrough;
 	case BUZ_MODE_MOTION_COMPRESS:
 		if (zr->card.type != BUZ)
 			reg = 140;
@@ -590,6 +594,7 @@ static void zr36057_set_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 		break;
 
 	case BUZ_MODE_STILL_DECOMPRESS:
+		fallthrough;
 	case BUZ_MODE_MOTION_DECOMPRESS:
 		reg = 20;
 		break;
@@ -827,6 +832,7 @@ void zr36057_enable_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 		break;
 
 	case BUZ_MODE_IDLE:
+		fallthrough;
 	default:
 		/* shut down processing */
 		btand(~(zr->card.jpeg_int | ZR36057_ICR_JPEGRepIRQ), ZR36057_ICR);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

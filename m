Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8ADA27201C
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:20:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 487A5871F3;
	Mon, 21 Sep 2020 10:20:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fYDOtLJfaiyO; Mon, 21 Sep 2020 10:20:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A8009871DF;
	Mon, 21 Sep 2020 10:20:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 128191BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0F5F885F98
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OfZfzelFOrWP for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A220485F90
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:37 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id s12so12107432wrw.11
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0BzTczQmHpS8t1I+BEXhbnRvatw/mGTEVui5t5Npsm8=;
 b=MaGfrgp7PHlwm0A3ZkZ8h7GGR0RRi37Yiy+yOd5x5uXY0+HcDxdjSml1+xef0vvkdj
 tS3sXina++U+mHFVDNOpo4FxR+MKEuxMpMHJCiPfbi1M9UFYsGR2tGbxTmGawX8YfVhT
 nKo7z8pNaOdCKG8B5Pn2VUl1tuxJoxxgNGxHZwnWbKtFj7m98v8TJRBs8RYcvOAKLS4p
 ZnFF3w70EHp62lTH+unebW+knQa6DFB/0HfzeJgPprU7N5ZJ4dLwia0vADFLPrzISADS
 v+H8iUci900i8d5403aBVru8s47NLPmFzKenxG9h0uSNpOTIPTAGXRKSOvcH4eFpMICM
 bhmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0BzTczQmHpS8t1I+BEXhbnRvatw/mGTEVui5t5Npsm8=;
 b=V8dIAvQOwIr0Gu5WfScYdyD/Ye/MTbI1qLGIBAZLAthDXGw39Yb1ZNPiztQaeTuW0h
 BulHgqM37VUC3v/4qHTnck5uS49w9ZFcMJum3L3unuA6aeY/rpiWO8d7NwsYYIw3F1B/
 LJNGsviaA6XEopce20koQfY29infi72XGZl6FelMSgVa9jls94SnlKIGt5Ulf6tvhQLf
 kNX9VG0hMR4335235ex8dXmsEREKq38Xx1EHolzFtNjl1XXOWktteQV7oD0e0zEKqS6G
 oCZpzLqCedkZ6uj6pb7vAiiA9hSzVrlW1WqTLCWOEKVBwz4vu0ackWK567wLrlJ/4o7U
 JG0w==
X-Gm-Message-State: AOAM532mwh9wMRaPO5Qt2tmoi61fgoM7pGS6EXuH5AKl+pojXhkV6l3n
 ojYnDTLMZNkUrgFwQh2dkwH2YUVNTnM1Zg==
X-Google-Smtp-Source: ABdhPJxO38VZN2Eb0UXu4Mfek/wdnnRWiA/oi1U24WVDHA8DvtyjmmeYlDpoZllXQtDhZEg5Bs/1qQ==
X-Received: by 2002:adf:f508:: with SMTP id q8mr49455553wro.233.1600683635970; 
 Mon, 21 Sep 2020 03:20:35 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:35 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 04/49] staging: media: zoran: Documentation: fix typo
Date: Mon, 21 Sep 2020 10:19:39 +0000
Message-Id: <1600683624-5863-5-git-send-email-clabbe@baylibre.com>
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

Fix some typo in doc.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 Documentation/media/v4l-drivers/zoran.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/media/v4l-drivers/zoran.rst b/Documentation/media/v4l-drivers/zoran.rst
index a0586514cd8a..2b82b9a47a71 100644
--- a/Documentation/media/v4l-drivers/zoran.rst
+++ b/Documentation/media/v4l-drivers/zoran.rst
@@ -119,7 +119,7 @@ Pinnacle/Miro DC10+
 * Analog Devices adv7176 TV encoder
 
 Drivers to use: videodev, i2c-core, i2c-algo-bit,
-videocodec, sa7110, adv7175, zr36060, zr36067
+videocodec, saa7110, adv7175, zr36060, zr36067
 
 Inputs/outputs: Composite, S-video and Internal
 
@@ -280,7 +280,7 @@ Samsung ks0127 TV decoder
 What the TV encoder can do an what not
 --------------------------------------
 
-The TV encoder are doing the "same" as the decoder, but in the oder direction.
+The TV encoder are doing the "same" as the decoder, but in the other direction.
 You feed them digital data and the generate a Composite or SVHS signal.
 For information about the colorsystems and TV norm take a look in the
 TV decoder section.
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

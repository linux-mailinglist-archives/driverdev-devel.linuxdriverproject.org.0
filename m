Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 643AF27912B
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:54:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3153287653;
	Fri, 25 Sep 2020 18:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LIGbhxU3neaj; Fri, 25 Sep 2020 18:54:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A4F2C87640;
	Fri, 25 Sep 2020 18:54:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BE651BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:54:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0886E86D23
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:54:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AaunMduOxNGj for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:54:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 156C286D22
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:54:36 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id a3so3839727oib.4
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0BzTczQmHpS8t1I+BEXhbnRvatw/mGTEVui5t5Npsm8=;
 b=N6H+th0biKog1jTa2+v9iPZsN7GgH5ExsPbdxWxyvojQJCyOhGHNOldZZZlOnzFhsS
 +jPC5GKxu1sLszhaLV4IXCUa4lk+3SJYQVTfmXaTgwqNwDItBmQys2ql0OamwR366CHk
 dUxeYKw/4PTxhHycDyiuGNqUTaFcSCJ4kgLiC7/HNSQHl21zmE52qqH/ePs/PEWBBGD6
 9YhRFy5ALtTOXBKJ3vKCVncnweXMuU1RVdSaa39AHV/w/3yqoavs7T0omAYvS/QsQ8Pe
 P2KsQI2cX3mMWZ30cvqtm53gI2HVBSEocpxIl0YaGw6jpEd2kdErwynkUTCq1arKAJ2f
 6PrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0BzTczQmHpS8t1I+BEXhbnRvatw/mGTEVui5t5Npsm8=;
 b=Vd1p2dN9KLUzzOjgfL1mMVXVobqs3Fxuq0pR7KjPltk5gFytpBNbcuuVk+0wYujsFl
 YwjbVLKe7oJwOSsrOpae3KEndcGgb94cl0zwnXjXx0N/jyG+It8dcu3FfIFL98XpI1bl
 s0K+T0JDr2dYNebEXEcvsNKdoh3qvNIonA2eIjRI/jOSypgqeAZpp4RdsmlqfyoADBRV
 rxkBX6O7YGYrUL5rInQS8542pp0UTXZsZaPdOx1F8oluxVqBSbeZm3+I+rt+17KOMsKu
 04O8+5x5kLk7xyMyUPLPAE0Lk8F1guzMD4qU8If6kk6a4weHDszpcJvqfTtso+dgfEzK
 x17A==
X-Gm-Message-State: AOAM533D/qVlGHTyEtdSqe1Uy1w6vAvGLUAMqXfBB2RghTeHPMNqXsTq
 t1GEe4vZFLktoFkQx6FIsJFSJ38g8aJn+g==
X-Google-Smtp-Source: ABdhPJz4yB46vJZ55e8SdDGabTx8iLhxyUZ31qRsNTsuVgUULeN3fknL7bfoRi7h7j8vZfaJ/1Izfg==
X-Received: by 2002:a17:90a:474c:: with SMTP id
 y12mr768032pjg.150.1601058701069; 
 Fri, 25 Sep 2020 11:31:41 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.31.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:31:40 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 04/47] staging: media: zoran: Documentation: fix
 typo
Date: Fri, 25 Sep 2020 18:30:14 +0000
Message-Id: <1601058657-14042-5-git-send-email-clabbe@baylibre.com>
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

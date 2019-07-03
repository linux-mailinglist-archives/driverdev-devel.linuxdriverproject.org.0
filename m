Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 404AB5DF5B
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jul 2019 10:13:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A02938693D;
	Wed,  3 Jul 2019 08:13:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ahYdlKSYzwD7; Wed,  3 Jul 2019 08:13:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50A4A86742;
	Wed,  3 Jul 2019 08:13:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8CE9B1BF5A4
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 08:13:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7588B85F4B
 for <devel@linuxdriverproject.org>; Wed,  3 Jul 2019 08:13:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ilxaa5IN5-X4 for <devel@linuxdriverproject.org>;
 Wed,  3 Jul 2019 08:13:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EADDB85F10
 for <devel@driverdev.osuosl.org>; Wed,  3 Jul 2019 08:13:30 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id b7so802558pls.6
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 01:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BvJNwkPS9MfNl5cMsC1QP7QkMzi/DuELy2LvBnmsMXs=;
 b=lVKLv9ep+x4cUvfF60e2j506ilKkHO6GJ9kMGHlE16ajbL+aUPEEM5VQAC6ea0Bldg
 JELTiHoLc+YIjPM+QPlPf3s6whkUv9WCjVkrb9BjMPoiXgeiwiQ1nTMFlgaks4IDjskG
 0fgyOsK2vtV9xEHR7ZT0fOL/B2opBXSj2h5l+UdEpM1YuBjWJa0wPoV7ob8l3qqIAOTr
 vFuyiv9yqqiITs5cpwC3l380edGBtpIjt3jVRO9ocbLYjW4xtkfe8V8K4+hlo8UCt1pt
 7cv0tjmysRqss+du9MGt7dKW2lha1blcf4PAFNaJg4ObAmXj5Ld+TPmEAFnwdAc7oBYs
 jc1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BvJNwkPS9MfNl5cMsC1QP7QkMzi/DuELy2LvBnmsMXs=;
 b=bk63OMUw5Gfz5nhlz7lVYqJXMQIBTog/p/3k7lAa4smhzNCG5yZEpv24DNxKDpOxKf
 x/y53w4uo8blgeH2gv3w/NzDB0Fq7MAx6le6KdYPoqlleHbmcmAqYMDJZRUcUGDHbmA6
 TAP8GNiVIkSe9WSDH2UTDxFhrvQ2+eUnMybXzK6mTZAri1gPshJuqoJY28Xce6vJZ0uY
 aSMFcREAeFq1zPB7n2i/lq0LHZnao+6RQWB3FouslnNBxsaHKbY5+Rn6OhxTrC1EXF0Y
 JKuo85sbjZQiuTjxQAPcvP2ernR72LZZ5sx1VU5cqVTBjR6xhVvWLCsQ5g6rWXGNGb8A
 1acA==
X-Gm-Message-State: APjAAAUu0pgNx9GfCelRlhNmv7t3WmKYy00NIlRbfM3QNwVTgtVHXFV2
 Y2fVt64/HGGnDB3joiJnCQU=
X-Google-Smtp-Source: APXvYqyU1k/W96dJNhLR99ByjoiAJ5wVF3nwNApkKn61Qi1jDrfWmGEXDoi1IdFinLjkKK+4fQ8R1Q==
X-Received: by 2002:a17:902:b284:: with SMTP id
 u4mr42218344plr.36.1562141610635; 
 Wed, 03 Jul 2019 01:13:30 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id m6sm1176450pjl.18.2019.07.03.01.13.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 03 Jul 2019 01:13:30 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: maxime.ripard@bootlin.com, paul.kocialkowski@bootlin.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, wens@csie.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] staging: media: sunxi: Change return type of
 cedrus_find_format()
Date: Wed,  3 Jul 2019 13:43:16 +0530
Message-Id: <20190703081317.22795-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return type of cedrus_find_format to bool as it is only called
once, by a function whose return value is bool, and the return value of
cedrus_find_format is returned as-is at the call-site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 9673874ece10..0ec31b9e0aea 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -55,8 +55,8 @@ static inline struct cedrus_ctx *cedrus_file2ctx(struct file *file)
 	return container_of(file->private_data, struct cedrus_ctx, fh);
 }
 
-static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
-						unsigned int capabilities)
+static bool cedrus_find_format(u32 pixelformat, u32 directions,
+			       unsigned int capabilities)
 {
 	struct cedrus_format *fmt;
 	unsigned int i;
@@ -70,13 +70,10 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
 
 		if (fmt->pixelformat == pixelformat &&
 		    (fmt->directions & directions) != 0)
-			break;
+			return true;
 	}
 
-	if (i == CEDRUS_FORMATS_COUNT)
-		return NULL;
-
-	return &cedrus_formats[i];
+	return false;
 }
 
 static bool cedrus_check_format(u32 pixelformat, u32 directions,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

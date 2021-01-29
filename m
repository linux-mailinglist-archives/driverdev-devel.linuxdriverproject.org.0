Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C54D6308E5B
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 21:25:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 23174874B7;
	Fri, 29 Jan 2021 20:25:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mJiu5WaZUSes; Fri, 29 Jan 2021 20:25:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A05B98748C;
	Fri, 29 Jan 2021 20:25:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C78B51BF3AE
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 20:25:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BA906204D5
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 20:25:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JUYjhN-rKslj for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 20:25:02 +0000 (UTC)
X-Greylist: delayed 00:15:29 by SQLgrey-1.7.6
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
 [209.85.160.175])
 by silver.osuosl.org (Postfix) with ESMTPS id 52D6320401
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 20:25:02 +0000 (UTC)
Received: by mail-qt1-f175.google.com with SMTP id o18so7647102qtp.10
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 12:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=yaerobi-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=NnmLK0QuYK5q1OECi1UZh+ESlr4Q56eYy5OG4YOB2mc=;
 b=ruPtmf70+Wnc1fDId6zF7H0AVczBl7ht4P6pxI6F2R65F+ax3UTM59zz06WrgiZJiG
 guQO5GqCQqCluBwwLcGI2+7CSRR+wlpok4/W9/rOrPkJHKm1aGSwXVSseNHcleQr/s2n
 qndH5Q2mZLRaG/718TD1vuCkPYWBerOtAfo5vI1EJzJRjv9DpTvJw6suQXzdaBX1CJFs
 1s9J7+4AQmsFw4vVz5oN9M5Ml1Kqc2R3QunVSzHc4q5UfYy7LXwDHySU14tKTpmDedeH
 vNp5af3Q4l5jkFrDsFcKwLQciEvqRJPLUs5CSUqN/MTKjEGvlCErx4CExykZVljuX0m/
 VZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=NnmLK0QuYK5q1OECi1UZh+ESlr4Q56eYy5OG4YOB2mc=;
 b=EP0tJHynSEsWXCcUha297uX9r89bCbIXrjNZBfrU6PXCZmyXeioGXZl2TLRNep+IqE
 STRJNmXfrypFfUQ42ZDrA4nIDNudrooDt6MIRwz6V2vcOFaunwdbzkMpTo2jNosIWml0
 BpTTBV48waVAaQAliAQ4zrKr0Ny1SZyr8mHknkqUQn8AEs/I91gS4rDg9xL1FApAmt+G
 Vp1QKJilUfaJRqLW1iFkc/R/ApE5bUxTXspN/DzC1XMZXzQ1G0wHUQqmznjDjxRAFfkd
 ZJyZCRF+K7ysQuQ/uvBDUoAb5hMZVMMVoY2tHrqYuga9PLumegsGWtBfPsBcCGKxd16F
 p2qg==
X-Gm-Message-State: AOAM533D0VLX0W5YyLpx66cPhpuQacWjKbrmON6xRsyfJ9SZWsc0l85n
 rDjBWB4YqL2wH/UaqTPGu3E3PWMabZVgIw==
X-Google-Smtp-Source: ABdhPJxXwVBULwXtR+LUfGxqk26ZRE2SqzkeI4itlU4ZtUJvtmiPPbeicq+RbGwkrVH5kIjB4uAgrw==
X-Received: by 2002:a37:688e:: with SMTP id d136mr5362234qkc.213.1611950520577; 
 Fri, 29 Jan 2021 12:02:00 -0800 (PST)
Received: from debian (host15.190-136-155.telecom.net.ar. [190.136.155.15])
 by smtp.gmail.com with ESMTPSA id p22sm6710082qkk.128.2021.01.29.12.01.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 12:02:00 -0800 (PST)
Date: Fri, 29 Jan 2021 17:01:54 -0300
From: Emmanuel Arias <eamanu@yaerobi.com>
To: m.tretter@pengutronix.de, kernel@pengutronix.de, mchehab@kernel.org
Subject: [PATCH] media: allegro-dvt: Use __packed sentence
Message-ID: <YBRpstkOi685uHef@debian>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix coding style using __packed sentece instead of
__attribute__((__packed__)).

Signed-off-by: Emmanuel Arias <eamanu@yaerobi.com>
---
 drivers/staging/media/allegro-dvt/allegro-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
index 9f718f43282b..cee624dac61a 100644
--- a/drivers/staging/media/allegro-dvt/allegro-core.c
+++ b/drivers/staging/media/allegro-dvt/allegro-core.c
@@ -670,7 +670,7 @@ static ssize_t allegro_mbox_read(struct allegro_mbox *mbox,
 	struct {
 		u16 length;
 		u16 type;
-	} __attribute__ ((__packed__)) *header;
+	} __packed *header;
 	struct regmap *sram = mbox->dev->sram;
 	unsigned int head;
 	ssize_t size;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

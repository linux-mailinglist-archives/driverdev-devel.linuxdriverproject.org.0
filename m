Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E49376BE1E
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jul 2019 16:23:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 604F6863E0;
	Wed, 17 Jul 2019 14:23:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8SYGLYxg5W14; Wed, 17 Jul 2019 14:23:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 21F378638F;
	Wed, 17 Jul 2019 14:23:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7A721BF342
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 14:23:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E462F220FB
 for <devel@linuxdriverproject.org>; Wed, 17 Jul 2019 14:23:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 30Tv7-uWQWPi for <devel@linuxdriverproject.org>;
 Wed, 17 Jul 2019 14:23:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 848412045F
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 14:23:28 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id r7so10926525pfl.3
 for <devel@driverdev.osuosl.org>; Wed, 17 Jul 2019 07:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XpT+hyHQLrqTrk2x0mHRYSE52sz59GDyA66hoyA5DA8=;
 b=cR9ZpfCpxkVPqyp15+rlsfv0Uo19LMdW46Mtd25oPGRpue1omqQnENfn4j2eRm9ude
 skJnLsFyEw3cyE/jFOdpetpR8xKckZyVQpYuGkbOMelnKMLFFxPmWrC/bYDw5WKzqsw+
 bjYAZk8DOU5BKHGZZ1RfX2dzKqyBfSX7CF97Yu9uuYX9L3gAuehEkm0jD5F6H3wAbxKF
 Esy/Nfe6owVBjicH1/ZRvt525HyUXAuQtA/BpebfvNzQ5fGjRWNp2DynMWeYqI4P+dE5
 lcAvHd8VxlZH7qpQvdPGkP63uKHcEjFXLj15q1BPmiXpenaKKjFXrKL+vDtkw8TBYDor
 363A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XpT+hyHQLrqTrk2x0mHRYSE52sz59GDyA66hoyA5DA8=;
 b=spa0qJCrcFZr0HqhsHJ8TwsHg/3P5J9J1xPoDpIbha36Rd/6IpnGd1C8aMqHEZh2aS
 8A9X8zf1pKJ7eF5WJIqm3rYVz11TukRZgPlgVWBksTLED8F3oo+jb2FluTfbv2W2LxYO
 PG/dNOkOxZs05tZF4YsUjDQS6pxSapqnGSGPNFd+PFm4F51iYMn33JM4Iob8Emo+fVJa
 cwJ5c08BcRImqaBS3YcYUjXA35QE12Xf5PKtPJM0NrmuFxto1RYKQ+LY0RhuK83TB6kp
 hwexllKcCiRV9UIX1iGOQZA1jip2Yt9SIQdOX3RaASdXaS3kafVIboEZlDf/beU5cDbP
 gtZw==
X-Gm-Message-State: APjAAAW3iKwXBScVehTLQcHDHcy+pp/FUfmWItXXpGxxGNHgwoUtCbhu
 fy2XQhfphYNyKpOFpbw5Ksw=
X-Google-Smtp-Source: APXvYqzMGbB7T5JbwWo8Ni2OiTookhu2ITf9hLjDGQPrn3tlis2UqVAOlnIZx35dPi6C0KPX3tPMiA==
X-Received: by 2002:a17:90a:9b08:: with SMTP id
 f8mr44498517pjp.103.1563373408094; 
 Wed, 17 Jul 2019 07:23:28 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id l27sm2324253pgn.19.2019.07.17.07.23.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 17 Jul 2019 07:23:27 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: paul.kocialkowski@bootlin.com, maxime.ripard@bootlin.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, wens@csie.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] staging: media: sunxi: Add bool cast to value
Date: Wed, 17 Jul 2019 19:53:15 +0530
Message-Id: <20190717142315.3119-1-nishkadg.linux@gmail.com>
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

Typecast as bool the return value of cedrus_find_format in
cedrus_check_format as the return value of cedrus_check_format is always
treated like a boolean value.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/media/sunxi/cedrus/cedrus_video.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index e2b530b1a956..f00a048a0a01 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -86,7 +86,7 @@ static struct cedrus_format *cedrus_find_format(u32 pixelformat, u32 directions,
 static bool cedrus_check_format(u32 pixelformat, u32 directions,
 				unsigned int capabilities)
 {
-	return cedrus_find_format(pixelformat, directions, capabilities);
+	return (bool)cedrus_find_format(pixelformat, directions, capabilities);
 }
 
 static void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEBC314F7D
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 13:51:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 791CB87327;
	Tue,  9 Feb 2021 12:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RIwycdHOGSXH; Tue,  9 Feb 2021 12:51:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03BB8870B9;
	Tue,  9 Feb 2021 12:51:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14C061BF232
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 12:51:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 09C5D87376
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 12:51:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5cAjFsbnePht for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 12:51:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 44F9A87358
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 12:51:06 +0000 (UTC)
Received: by mail-pj1-f49.google.com with SMTP id fa16so1510670pjb.1
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 04:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yZxg6dXXFoEHvIAudV0HbB2Heq7jrncVjx+BrvchARk=;
 b=vN1p/bIFWtuthuQZ71jOzLeqNOLOqGDcGBoIDb3IEA5/3ZNXz9Cq7OnrPQQaO2yyU5
 5riH8BxKfGT2XVzdEoLgY/6uctN7fXm1VT06jvNoNLZPyxqoN2c7Frs9TWIVEPr+szka
 dXuhbBtQffXbMSiN6tDn/dSbdqJE7YqMPUYPnp7dlFxqOpi3zh2gEDrwyYUcvZChlsK1
 raZ+oEO/N8wjOS2PjvMNsF1stesZGTNqoHu4BZqq7w4EyxkppLd4MD6gAWdGQ97SEBg4
 R4BGXloH58gOkOCz9Qx8PrIfOFxaIFuI1OHyXKkHeWNQ+IcT2GSrb0okI/zXWLuyxOgL
 khKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yZxg6dXXFoEHvIAudV0HbB2Heq7jrncVjx+BrvchARk=;
 b=j1VgTFY899utWkzlu67D+Y2Bpc4xIlPdgLv5vezhxKCn+BzS3gcORJy7sCOqgYYFc8
 s2STaZOVvY379jIQuWW5PGOT0oy6eDgeFUr/SyVdy0oMqGc3njaJV3FjZcg/PVhe9u71
 XbZjI3q2P0qZKTLhK3XDB1g5xt8hjzzZgX/KpLWBZaux4nuIYZPJyNVE3aeqWsZuRDxE
 WaPmnJTIWw7ncvJr8dxiWSDN7SgO17GoBcukGBA7zfFA3u58Flr0VBCqy1Ss4b16eXqx
 +c9FcfkqMAWj62eEU+tkpDktpTytatA3di+oBwIVLCQiK7Vflr0G4JDBmzLw8R+OqXOO
 +mZA==
X-Gm-Message-State: AOAM530dpPkZQERmU23gVMJ+XxdjQiT72AVn1iTY7oyR6IjE4L4YmL6L
 CwpSn/v78yzmYyst/PevXZ4=
X-Google-Smtp-Source: ABdhPJzAw96fBfEmrET2VUlhLYjKmuFAhEyapFm4b5wI0ZAZHaB2YN4R8RmOVMs9kEp67GAr7KsNaA==
X-Received: by 2002:a17:90b:23d4:: with SMTP id
 md20mr3777029pjb.220.1612875065925; 
 Tue, 09 Feb 2021 04:51:05 -0800 (PST)
Received: from localhost.localdomain ([2405:201:5c0a:f013:997:8903:ccd:f31])
 by smtp.gmail.com with ESMTPSA id t21sm21310609pfc.92.2021.02.09.04.51.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 04:51:05 -0800 (PST)
From: Mukul Mehar <mukulmehar02@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Drivers: staging: most: sound: Fixed styling issue.
Date: Tue,  9 Feb 2021 18:20:37 +0530
Message-Id: <20210209125036.17197-1-mukulmehar02@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Mukul Mehar <mukulmehar02@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes a warning, of the line ending with a '(',
generated by checkpatch.pl.

Signed-off-by: Mukul Mehar <mukulmehar02@gmail.com>
---
 drivers/staging/most/sound/sound.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 3a1a59058042..4dd1bf95d1ce 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -228,12 +228,12 @@ static int playback_thread(void *data)
 		struct mbo *mbo = NULL;
 		bool period_elapsed = false;
 
-		wait_event_interruptible(
-			channel->playback_waitq,
-			kthread_should_stop() ||
-			(channel->is_stream_running &&
-			 (mbo = most_get_mbo(channel->iface, channel->id,
-					     &comp))));
+		wait_event_interruptible(channel->playback_waitq,
+					 kthread_should_stop() ||
+					 (channel->is_stream_running &&
+					 (mbo = most_get_mbo(channel->iface,
+					 channel->id,
+					 &comp))));
 		if (!mbo)
 			continue;
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

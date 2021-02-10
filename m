Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71388315BCE
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 02:01:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F098F869A9;
	Wed, 10 Feb 2021 01:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JeEbnxgZO8Hf; Wed, 10 Feb 2021 01:01:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CFF38696D;
	Wed, 10 Feb 2021 01:01:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B57CF1BF2B7
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 01:01:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B1D5586132
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 01:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GlihbJVcM2s8 for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 01:01:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F116C86090
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 01:01:31 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id d2so180304pjs.4
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 17:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z9pd8U8xG5/S4aYV08rhas2DbNUJIVvsM0Bax6mL0fU=;
 b=fw76ls4VnRbtA4EIKuNQq37UBgP0g9+GSKOqEacRxeh0uEJDVQv6/1mn0YLT1LYybG
 M6xRexHC0W1FiPdKg6JpMLhnDIEuNeitFvsNw7j/QZHx6Q8RYtv7D1gO3HgTWD+Yw2uT
 pja3w9j8MVg0qIeoYWJjbQSnH8ksNqvcT9ExjJsej/Jek0OrVPGfI8xw2ONtvoQuGHTw
 Z3lqhoJaiM30YsqnrmBF4NC3AsiHKhI3ri4xjLBcgE4lQ2NQWAXX+CeYvmXvQ5098bxn
 ED2aLkuRTTzBkz+QX+1clF62/2b18H8iYh5L81wJ5nWZccT1Qq36PWYS5GxRgfMqTL0j
 mPjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z9pd8U8xG5/S4aYV08rhas2DbNUJIVvsM0Bax6mL0fU=;
 b=sST+Ib6Fv/qqC8wHE6sz8OpUm4BUDMPLsrCreVrLlHP3ULRC5WgWQNUXWKiMmrv0V1
 WJS/2Un/eEqKcC1RNL8P/s5orXiAQJ+aYF8DtVNWTFyKHSjFFFHlunkEAMx5wBifYDIR
 yiLn2mVMpDUGcKfSsTRbSC+xFbFdv8Y8lgrG69h+B54mWjFBZjH+ABZOVK7pG1QlPdBS
 sTEKTsvPK/aGhY+ubuysPWNu/khKGtFhR6DBUCEjhMF9BNXT78dwm5ouqJquVkjcL0jO
 IKviu7icDItzr84i/Z7/9Nfa/9YHofzC3+f6sWOgMqF8PMntd/RVwNWENOcUxSO8PTFf
 RZcw==
X-Gm-Message-State: AOAM531UDeQD7Jyya6T36MBhkYOt0HMA4ULoAfKlJEYFR0wR615f0I1x
 HshPMPBReofjk6qDHnDBJgw=
X-Google-Smtp-Source: ABdhPJxUBJEN53PV/5SO8BtqZ+6n9CebqWzpY++26jN7l0WWLQA2tti2CTIGc7RfQwEqVzIcDs5SiQ==
X-Received: by 2002:a17:90a:9f94:: with SMTP id
 o20mr561046pjp.209.1612918891546; 
 Tue, 09 Feb 2021 17:01:31 -0800 (PST)
Received: from localhost.localdomain ([2405:201:5c0a:f013:8473:55a:6750:dd3e])
 by smtp.gmail.com with ESMTPSA id
 z15sm222334pjz.41.2021.02.09.17.01.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 17:01:31 -0800 (PST)
From: Mukul Mehar <mukulmehar02@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] Drivers: staging: most: sound: Fixed styling issue.
Date: Wed, 10 Feb 2021 06:30:45 +0530
Message-Id: <20210210010044.695996-1-mukulmehar02@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <YCLF57aXZY8dooUH@kroah.com>
References: <YCLF57aXZY8dooUH@kroah.com>
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
Cc: devel@driverdev.osuosl.org, christian.gromm@microchip.com,
 linux-kernel@vger.kernel.org, Mukul Mehar <mukulmehar02@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes a warning, of the line ending with a '(',
generated by checkpatch.pl.

Signed-off-by: Mukul Mehar <mukulmehar02@gmail.com>
---
Changes since v1:
 - Fixed indentation.
---
 drivers/staging/most/sound/sound.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 4dd1bf95d1ce..4d497ce6d7b8 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -231,9 +231,9 @@ static int playback_thread(void *data)
 		wait_event_interruptible(channel->playback_waitq,
 					 kthread_should_stop() ||
 					 (channel->is_stream_running &&
-					 (mbo = most_get_mbo(channel->iface,
-					 channel->id,
-					 &comp))));
+					  (mbo = most_get_mbo(channel->iface,
+							      channel->id,
+							      &comp))));
 		if (!mbo)
 			continue;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

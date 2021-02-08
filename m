Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 359A9313D74
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 19:28:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C82A86A07;
	Mon,  8 Feb 2021 18:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p1YK685q6fq9; Mon,  8 Feb 2021 18:28:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D9BC86A5E;
	Mon,  8 Feb 2021 18:28:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C0F171BF2A9
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 18:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD4D887097
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 18:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u8Ma+I7HpFRh for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 18:28:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2CA7387096
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 18:28:09 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id l18so47970pji.3
 for <devel@driverdev.osuosl.org>; Mon, 08 Feb 2021 10:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=T1lBSmog2ErDkyy3t3Ofy8oyE79pCrEOP2fZ4VqEsp0=;
 b=Z61fU20ZM2Zjn3C2H6+Sf9tIEMwPqa8wYfAsoE7GtC+4RtsmKa8g/0UpzEJOxJ8ezY
 hVBPeLbmS6PJOchkY1iRycqcf/fGythw/UtyOQimMemHJF9INso65thoJanAqLGUPEpl
 xall50+H2yAuJu0A9s7CDDHhaGn655EdQzH4+mQN/7r7hHmx5AOlmEOPBW/HK83jk+n0
 Yq4vljXNt+J6WOjwGEh1imVvxxp49QJxVdc1W35sBLrssbP7AQAFojBeFjErzASmxm/A
 bRPux46VsCU776OHoT2bPW4/ODYT6HjUR/A7U86qaBjp+j2KVmcvpXge5KBaFbPkflR8
 SRlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=T1lBSmog2ErDkyy3t3Ofy8oyE79pCrEOP2fZ4VqEsp0=;
 b=BIeE208iNA5NBzpfb3kH1bdGHFg1TajiUNztGXG29cI4/auMgHRcmRhTTkxbdRxDOX
 zjOEW6Sxzh8Dt8AVZ5aQgQNIGcmQn61LVJ2NaX7faYYWcIj833VqVxbu4ZhUzxvZ6bh0
 DE/DcqzKyhCMxyPe1B4Njuo0m4iQ40fn763bbz6pEj0dygAg4g1lHos/B/iJa2UfZBpC
 uXKcbA4YkLaYRe+MfFjnwSroZlrkZR4pkN3HcE8x+rAPwVRk4h10OWm3zQSrvSMPI0si
 jXfeP9+mbXP0+rl0tmfxfReMSaFQbHZt2rX2S5qSWsreDT/IVuWpAjzioVVkQUlI5G6M
 iDFw==
X-Gm-Message-State: AOAM5323EoybW/sqdMm0ppuY/S2IujhbzXHQVHsJgvTg8meETvqrN/Pn
 yEnvHJaBxXbZN6JSS63SGxNFzzmQ/fGBPAMe
X-Google-Smtp-Source: ABdhPJzjsOz+fWl6oKD95MbSH+Oeb2jQYAkHrEEj0OULQHsPOpAFjEqphzNtaQnvIWK0e0eDxp1hXw==
X-Received: by 2002:a17:90a:a597:: with SMTP id
 b23mr89456pjq.216.1612808888808; 
 Mon, 08 Feb 2021 10:28:08 -0800 (PST)
Received: from gmail.com ([2405:201:5c0a:f013:d397:a5d5:ecd3:3bbe])
 by smtp.gmail.com with ESMTPSA id v23sm17414982pgo.43.2021.02.08.10.28.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 10:28:08 -0800 (PST)
Date: Mon, 8 Feb 2021 23:58:02 +0530
From: Mukul Mehar <mukulmehar02@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH]: checkpatch: Fixed styling issue
Message-ID: <20210208182802.GA17753@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1yeeQ81UyVL57Vl7"
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
Cc: devel@driverdev.osuosl.org, christian.gromm@microchip.com,
 linux-kernel@vger.kernel.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


--1yeeQ81UyVL57Vl7
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="first_patch.patch"

From 29bcaf0066003983da29b1e026b985c0727b091a Mon Sep 17 00:00:00 2001
From: Mukul Mehar <mukulmehar02@gmail.com>
Date: Mon, 8 Feb 2021 01:03:06 +0530
Subject: [PATCH] Drivers: staging: most: sound: Fixed style issue.

This patch fixes a warning, of the line ending with a '(',
generated by checkpatch.pl.
This is my first patch.

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


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--1yeeQ81UyVL57Vl7--

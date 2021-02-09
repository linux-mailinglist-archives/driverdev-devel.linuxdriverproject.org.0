Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C193148AE
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 07:23:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA1756F884
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 06:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2ynjH0s-1U7J for <lists+driverdev-devel@lfdr.de>;
	Tue,  9 Feb 2021 06:23:54 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id CB5F56F61E; Tue,  9 Feb 2021 06:23:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D4BF6F675;
	Tue,  9 Feb 2021 06:23:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 71B411BF29D
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 06:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6DFDB86FB9
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 06:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3AyDTrkO-2eK for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 06:23:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C92A486F9E
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 06:23:17 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id x136so4686629pfc.2
 for <devel@driverdev.osuosl.org>; Mon, 08 Feb 2021 22:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=FwDUrtEdOuIcoL5Igin5mNt9ZMqE9CmodwIOH49NTT4=;
 b=OGTKaXTfWKQ4mCqdcsKtC4EIf2Txf/VUio5Ke4kxNxNKKud7Y+TrsRWYQd6pAdDq6/
 F5Z4f+kaxeOGP+QN32WnsQRglJj+r7R0sRNTMBKxtMCD0lVQ1ZP/bF/2v49+3H2CQQQf
 RL9pydrRIpWoLyMJRcDC7FDfqdl+p47C66OupvFB+Jj474CBod0SvC4/HhtF4iNKz8Fi
 dq3PKquIbPAFD1BwLXf7f33XGrxLf/dqhjJTiCBEkOa0Oge8beIMBLGJsUZXd8tBPOz3
 TyqCSiZw6LIGEdvNQ4QdOeLMm8l0qBnhuiFGtaCk3ieJhT9zf2lSVCHkOTcoMhIrhfY+
 od8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=FwDUrtEdOuIcoL5Igin5mNt9ZMqE9CmodwIOH49NTT4=;
 b=jgo4mH4UUmkqPMPSvff4ZPAPNJm2B8NhBuFNiioBMLK2mmJ5+UePEgAqjL/CA8D8Xr
 xepjv1WsXg/XviL8L2JWxwReGju2/u1wN17UwpFuDEHnYkfkHW+F2EsMZfZXc3EggNa+
 S8957C6U25prY1USrixL+G4nRxk8NP7P39kpDVIjEOj7dhWPYDnZp2Bhe1P4MJbxiXqj
 1sLOM7bGRkA3KKLvEzv0LqXBg/DZyHKW6CGd6ViaAsf9RhGFLD0bQ86FACjV7zEbGa6C
 n6Y7Qo/cEuvPafmmbGOTipFqVTiJsp+jEl38nFW5w8sY6vTTA60C5sCFhyEaMYfVBDZl
 fPtA==
X-Gm-Message-State: AOAM531bxHfh/USaUQTV0CfqbawN/cfL0lmnTIJXzYSB1o/3CuDXgu52
 c3WDNlg5wjl6HjHUa1iiRJ4=
X-Google-Smtp-Source: ABdhPJzhITGiWlP2fgks0EdEF3lQI6v9gxm3CleZBywzJY16FI4BZswH8uGEQ4VgMB/vuluyPwDXzQ==
X-Received: by 2002:a65:5b0c:: with SMTP id y12mr21147464pgq.407.1612851797259; 
 Mon, 08 Feb 2021 22:23:17 -0800 (PST)
Received: from gmail.com ([2405:201:5c0a:f013:d622:5b80:d6cc:e0d])
 by smtp.gmail.com with ESMTPSA id k10sm21437409pfk.0.2021.02.08.22.23.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 22:23:16 -0800 (PST)
Date: Tue, 9 Feb 2021 11:53:11 +0530
From: Mukul Mehar <mukulmehar02@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH]: drivers: staging: most: Fixed styling issue.
Message-ID: <20210209062311.GA10016@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="h31gzZEtNLTqOjlF"
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


--h31gzZEtNLTqOjlF
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="first_patch.patch"

From 29bcaf0066003983da29b1e026b985c0727b091a Mon Sep 17 00:00:00 2001
From: Mukul Mehar <mukulmehar02@gmail.com>
Date: Mon, 8 Feb 2021 01:03:06 +0530
Subject: [PATCH] Drivers: staging: most: sound: Fixed style issue.

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

--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--h31gzZEtNLTqOjlF--

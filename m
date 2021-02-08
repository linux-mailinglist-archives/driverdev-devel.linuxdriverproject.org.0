Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A92313F8A
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 20:51:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9CD6586FB7;
	Mon,  8 Feb 2021 19:51:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWttLc1txv7h; Mon,  8 Feb 2021 19:51:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A55C286F92;
	Mon,  8 Feb 2021 19:51:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 067A31BF317
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 19:51:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 02E7285F5D
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 19:51:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ANQH0Gfr7SV7 for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 19:51:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com
 [209.85.216.51])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9370485F58
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 19:51:22 +0000 (UTC)
Received: by mail-pj1-f51.google.com with SMTP id nm1so175478pjb.3
 for <devel@driverdev.osuosl.org>; Mon, 08 Feb 2021 11:51:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=z7235IYrakBb6fWLOTNBUn6GDzbQ4d/+zMoc7KivaN0=;
 b=gcyUeLri2O6xxsqIVv8E/ak26CnmsYD6amccPp3Q9zvgKMo9Vv7yjQAYIdPfzoRqk1
 OYaqy5AEsw+aXIhsQZ1BZFORUlWv90ewFWIf8D8XhtAH74tHes+pYTMm2VOluxmvuLBx
 bSqiFqmPJ16to5Yjk5x6esEP5YeU1whd+HumP/iuC8f9w62iaBVSvEi8z+OK55lkIMYa
 J2My+Fyz3K8teJ0bIxp/J/N+c3d6HCDdpchfWMn1KD+Pq2gOsg0YEg9zBFid9+54RIZ3
 pE3wkWgOHg7hMg7opxuZX8NVfAbdANkTdcL0a5piq9ZqPcQWQKjYWqQ/2Q9Nusfuue77
 6DHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=z7235IYrakBb6fWLOTNBUn6GDzbQ4d/+zMoc7KivaN0=;
 b=K3GAWftfGFo4UvcmEbNgUhjyCMk+0NdR7tOQ+WqiR9E3pqwTWndTDfDxfE84XTP9h8
 n82Jc9bJnImsZJit7b5P1Ed6Y3pRxDMt8BHijH8K1SKRFdUxgv0TR2+XJkTQ6QSNHklm
 aYtQD3RAbFy5q6dlxYcHmhd/skOoi7Hq1IqFBSrKaVD5Edg1qIWtfUu5gkraPB8zllo8
 yW5XO+54pkGBkDPUKL4iMn3yXE9rfiOGFUscciPGm4SQ4EbUfq3y8Z8vFC8wfohvkOTF
 TLli/XB3d15EIbOFTt9G00v5Aia2OJ4ooHZHSH2KQ2Q32fkPZjH0mWn0VnvgiU5Gd1T4
 Bdnw==
X-Gm-Message-State: AOAM532J4MThanbuMfS8HA/UsTPIs3D93TxYgvnbvLbfrz8jnQ+L/Xiy
 6RAuIgtIk7nBQCeSlfQoIsY=
X-Google-Smtp-Source: ABdhPJw7Uc19LTmFovJWF/BJcNO3fZQEzrl+tZDJiYJQgGsky1QT3m7LQrth+Kc84xnMRg+M7ECBHA==
X-Received: by 2002:a17:90a:4e1:: with SMTP id g88mr395729pjg.7.1612813882094; 
 Mon, 08 Feb 2021 11:51:22 -0800 (PST)
Received: from gmail.com ([2405:201:5c0a:f013:d397:a5d5:ecd3:3bbe])
 by smtp.gmail.com with ESMTPSA id v19sm103359pjg.50.2021.02.08.11.51.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 11:51:21 -0800 (PST)
Date: Tue, 9 Feb 2021 01:21:16 +0530
From: Mukul Mehar <mukulmehar02@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH]: checkpatch: Fixed styling issue
Message-ID: <20210208195116.GA19781@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="FL5UXtIhxfXey3p5"
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


--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


--FL5UXtIhxfXey3p5
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

--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--FL5UXtIhxfXey3p5--

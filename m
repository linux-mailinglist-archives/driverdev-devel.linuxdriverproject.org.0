Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC5B2E2136
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 21:23:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1406F86945;
	Wed, 23 Dec 2020 20:23:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VjalNdaqRE7G; Wed, 23 Dec 2020 20:23:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 222FA867E0;
	Wed, 23 Dec 2020 20:23:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9FF171BF86B
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 20:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8CC162E102
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 20:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hKqyIRXDhW-p for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 20:23:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by silver.osuosl.org (Postfix) with ESMTPS id 5AAEA2E0F4
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 20:23:42 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id r7so370508wrc.5
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 12:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ZXRFrrDcrww8M8vgWXxY6IWFUaHEFqtQgKS5bQBGth8=;
 b=QU8lfLzf4X8n0hsshRASMf0d1ZrTY42pNDYqPstCmueqUnzcJUdxY5Hcp//Yg97XaD
 cyl1lbTuHcKGHrmoVOWRf18ARq9jzDDydPOPNM4j1xbUEoenmlwrl/MqzQR5xf8Dc9ab
 SnG4O/tw6zdLRP8nHlBrLWknHYPFCkE0Pd1w5xkMruwfRxpgyYNuT00OagRWymcFoKXE
 ZkqsWgjB/uB/88BgXYATrQuzngqjCXYPfQdKtSKt1xBrsd8uPpxsGpr64EOe0yrroB/h
 ySSj4bAv14MMGeyRDlaZ+iU0G0bGzfHD7Bsr9jMmIxlLdwItdlVXh4AFtzd70xWP6k95
 g78w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZXRFrrDcrww8M8vgWXxY6IWFUaHEFqtQgKS5bQBGth8=;
 b=Vy1uNArxFRfzaQL+OJ2gKfvDmyaz8gAhzOh3yLSANOrCcKIU2kxjeH+9bXJFTrZvqk
 3YYESk6mNGSpzg5YSGq0CyGiV0OzSKWROxdsp3VcALPOTwCQA/awzbQwVUo2sBR53k++
 9DerLkuBjsTj4T1IzGUi2ZLnuU7QqepVhf1D1cG6XGi1vK+BkcynCXo7l7jKVoCX5TQ4
 GKJj5mygkOopjR+4gyxIfE4I2uopEJ7T4YG5CktPS0M+U8tj+PBupA4s9yCM08OU1do5
 QxN6c1lBhMbHWqFHRwmAN54AkrgtO0ioVleJZ/XWOhMvFyPWP72AotF0hQugwJS99P2J
 Wfng==
X-Gm-Message-State: AOAM533fs5aoGT1W8hcdvnKRBhiUQnC2/jEEgYnHrRPemY53b8D1S4JX
 fXl3CxU8HzDTee+RAdYCnSs=
X-Google-Smtp-Source: ABdhPJzgMmrmGKfnLCEtJGssuAwfvqcUohyxIw40FBih0zYT+eZzNBcVdDXG3P3p1KZx1oMd6/37jg==
X-Received: by 2002:adf:b1ca:: with SMTP id r10mr31166674wra.252.1608755020829; 
 Wed, 23 Dec 2020 12:23:40 -0800 (PST)
Received: from localhost.localdomain
 (eth-east-parth2-46-193-67-123.wb.wifirst.net. [46.193.67.123])
 by smtp.gmail.com with ESMTPSA id r16sm38371141wrx.36.2020.12.23.12.23.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Dec 2020 12:23:40 -0800 (PST)
From: Ayoub Soussi <ayoubfme@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: ralink-gdma: Fixed blank line coding style issue
Date: Wed, 23 Dec 2020 21:22:30 +0100
Message-Id: <20201223202230.31325-1-ayoubfme@gmail.com>
X-Mailer: git-send-email 2.17.1
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
 Ayoub Soussi <ayoubfme@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed coding style issue.

Signed-off-by: Ayoub Soussi <ayoubfme@gmail.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index 655df317d0ee..a6181a167814 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -122,6 +122,7 @@ struct gdma_dma_dev {
 	struct gdma_data *data;
 	void __iomem *base;
 	struct tasklet_struct task;
+
 	volatile unsigned long chan_issued;
 	atomic_t cnt;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

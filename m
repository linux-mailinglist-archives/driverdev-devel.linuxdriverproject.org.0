Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A49CA319AF4
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 08:59:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A39FD8706B;
	Fri, 12 Feb 2021 07:59:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L2s+lLIoHW25; Fri, 12 Feb 2021 07:59:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1EDF586D6E;
	Fri, 12 Feb 2021 07:59:21 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 751791BF2A2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 07:59:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 71439862B4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 07:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xqyw6B7WcVQM
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 07:59:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3CFBA8629B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 07:59:18 +0000 (UTC)
Received: by mail-pj1-f52.google.com with SMTP id my11so63701pjb.1
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 23:59:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qfpO1KKhKr1tKEEB2mKQU/Wl1VsQdvbc/QfyKXXvkAM=;
 b=vJGK8PIeW3MTp9gc6JquKlGJs5C8Z8nUfWacEAw7HBfhf0Hs+rv1RBTdnvu3NpiWAv
 uWxA4FJfq3VUyVqQxlxx4+scfM5RiuuxPx/z7C+uvs5tG6DyTmU7qVy9zaWM6DjcrT4O
 qr9IQZi8bAeKCxzF6dPJ6clBUBBaiHWdWsQFxTR7FmPMoib1GF3HNzXD3EnUusmgDY/h
 R7BKFS0YhKXUsuYfqAFT3w3bH57feJJ9nATDmhAE0ze6M3UbJrp4omd2ccL3xeuMN5JL
 4DbLnbkHIH2WlUYGN1ztfRq2b7eklG/kKHdX7k/QH1qrwCYdYR/JoZGkYYk7b9ZlxhHx
 RoIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qfpO1KKhKr1tKEEB2mKQU/Wl1VsQdvbc/QfyKXXvkAM=;
 b=SoHHFdL5QUmrzw8vM1+MZFXeCc7sYEKVKWXgu5zHbLAFnqZKR/iOXmHlmennZhzfy2
 6SZgD8jsMx3/4LFMjSg77JKOv0+/Bw4ds1wqljoqgIioooXF0a2bVWidNkRL3cFp0Cam
 HFu9yLgFd5qsDpgO5SQNdLdytI1NY0wSq6wq9xnvh2wef1tl6bNNKA3flFRC/TuXc6W1
 tGGPj0VIXh94B04U3wEXwq0N+Hrup/W99N7G0s6ru5f3deEKH1U4sNqAz6bpBNHeArX/
 H8vGX6E5/9v6g/ZuLsydxZEAhUctYu67XIaCQO+3NYGBG0FtMcZgor0SgedfAfi997wC
 AEIg==
X-Gm-Message-State: AOAM531EdljyiTHfCW28sTULZNyOqD7vTqQHw2PITC12zfBokbonOndR
 BunIeUrPfD/xMsPWG5BjHvvLcqXIhIb8
X-Google-Smtp-Source: ABdhPJzSyDOvoxn5rY/b/P1afobfENMLN9l3NsGbmkba1O2NCTo7LWJ0MpT6tSfelhurR1ZWZzK5Mg==
X-Received: by 2002:a17:902:ab90:b029:e0:17b:ae98 with SMTP id
 f16-20020a170902ab90b02900e0017bae98mr1978233plr.6.1613116757717; 
 Thu, 11 Feb 2021 23:59:17 -0800 (PST)
Received: from localhost.localdomain ([2405:201:7000:69ad:eeb9:805d:a0e6:89fe])
 by smtp.gmail.com with ESMTPSA id q43sm4654177pjq.25.2021.02.11.23.59.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 23:59:17 -0800 (PST)
From: shivang upadhyay <oroz3x@gmail.com>
To: gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org
Subject: [PATCH] ks7010: removed checkpatch.pl format errors
Date: Fri, 12 Feb 2021 13:28:45 +0530
Message-Id: <20210212075845.14180-1-oroz3x@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: shivang upadhyay <oroz3x@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: shivang upadhyay <oroz3x@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.h | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.h b/drivers/staging/ks7010/ks_hostif.h
index 39138191a556..c62a494ed6bb 100644
--- a/drivers/staging/ks7010/ks_hostif.h
+++ b/drivers/staging/ks7010/ks_hostif.h
@@ -498,20 +498,20 @@ struct hostif_mic_failure_request {
 #define TX_RATE_FIXED		5
 
 /* 11b rate */
-#define TX_RATE_1M	(u8)(10 / 5)	/* 11b 11g basic rate */
-#define TX_RATE_2M	(u8)(20 / 5)	/* 11b 11g basic rate */
-#define TX_RATE_5M	(u8)(55 / 5)	/* 11g basic rate */
-#define TX_RATE_11M	(u8)(110 / 5)	/* 11g basic rate */
+#define TX_RATE_1M	((u8)(10 / 5))	/* 11b 11g basic rate */
+#define TX_RATE_2M	((u8)(20 / 5))	/* 11b 11g basic rate */
+#define TX_RATE_5M	((u8)(55 / 5))	/* 11g basic rate */
+#define TX_RATE_11M	((u8)(110 / 5))	/* 11g basic rate */
 
 /* 11g rate */
-#define TX_RATE_6M	(u8)(60 / 5)	/* 11g basic rate */
-#define TX_RATE_12M	(u8)(120 / 5)	/* 11g basic rate */
-#define TX_RATE_24M	(u8)(240 / 5)	/* 11g basic rate */
-#define TX_RATE_9M	(u8)(90 / 5)
-#define TX_RATE_18M	(u8)(180 / 5)
-#define TX_RATE_36M	(u8)(360 / 5)
-#define TX_RATE_48M	(u8)(480 / 5)
-#define TX_RATE_54M	(u8)(540 / 5)
+#define TX_RATE_6M	((u8)(60 / 5))	/* 11g basic rate */
+#define TX_RATE_12M	((u8)(120 / 5))	/* 11g basic rate */
+#define TX_RATE_24M	((u8)(240 / 5))	/* 11g basic rate */
+#define TX_RATE_9M	((u8)(90 / 5))
+#define TX_RATE_18M	((u8)(180 / 5))
+#define TX_RATE_36M	((u8)(360 / 5))
+#define TX_RATE_48M	((u8)(480 / 5))
+#define TX_RATE_54M	((u8)(540 / 5))
 
 static inline bool is_11b_rate(u8 rate)
 {
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

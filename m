Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 005B53194C8
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 21:58:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5F3586E77;
	Thu, 11 Feb 2021 20:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0KbglstxFR27; Thu, 11 Feb 2021 20:58:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BE3F86E2B;
	Thu, 11 Feb 2021 20:58:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FB8F1BF41A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 20:58:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3E3726F48F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 20:58:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 55AkeVG0sazu
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 20:57:58 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id D69FA6F5D0; Thu, 11 Feb 2021 20:57:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A22936F48F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 20:57:57 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id q20so4470551pfu.8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 12:57:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3l8pD7WqkTilgSeobUx3KZuXWJrsMABsBjSzflpceVU=;
 b=OmcPJYsz++UeUzM1U2bM32mi0g/Vn7QndLldQKl30q5SdcFBPQthl4bShJp83XQnGJ
 I94Q0HabknVHDrvbqARaJml3OWTagxezCXTnuiM1RFoHhdv4EouKpB/oWJkIcLAXBw2R
 +bB+c6FBwAQhHDR9CAx2RY3XLwPmTVn5NR28AOa52KjotS95t93k6jBd82VvvSkCUnLY
 RRUiAZ2xEkzcgsBnBvRYjBMPk/lWe12Z0ggIPlt+6Kc/xb7ZmKrr2JMxNXsCOSuN+AGx
 oF3y5RIcZoYA5GQyeSgWs/7pse43DvVf9CEI0Ea/aEaXfmbvLU5Bh9K6i54cu3AC+qrG
 YYgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3l8pD7WqkTilgSeobUx3KZuXWJrsMABsBjSzflpceVU=;
 b=Iz7p8fjM8Mls4OB2Ti+qj7oOlumstm3l3p+R6DwSsItoy9vzuF5paj1LrZ9vzhO1yl
 ZYzsCzq7THzIFBrTBi0a4ZW0yh11n0kS8ITWBmN622OwjzX6slnWPS2C8/lVhflgDvNS
 ai5+RfzYSJnXgHOf/lLChThA4qq1yvuyLcPVUkEfzA8e9BPTU7A3aRaffTVv8vblGGnP
 L3xVDd4ewLZvy1TTlye7fj1NfnaYP0c9KvP+kuNWqygcdFVBAbS5ZY296GX9gR2rnPj9
 ZPnPXj9ww+6XuXb3e/sQCIyYDfmFoZOqXfZvimrekMX2G2HiTtraqoyqNTnmbkmnYGjL
 MdIA==
X-Gm-Message-State: AOAM532j0yk4FFM1qCZUIKO1MnSVrUQHbKIIEqMivdIsDEtIpBJLo26b
 Use6CtpvOGi0O9NWOZq9ug/AgaFOi9m6
X-Google-Smtp-Source: ABdhPJztjR+UX2I4RKkkD1V03STTHB+ZK3KKMupksXv6LcUSkiJ+sxCbN0vDnhAmaGDGZecdZjkTNA==
X-Received: by 2002:a63:221f:: with SMTP id i31mr9630124pgi.151.1613077077072; 
 Thu, 11 Feb 2021 12:57:57 -0800 (PST)
Received: from localhost.localdomain ([2405:201:7000:69ad:8edb:7f7:2724:c736])
 by smtp.gmail.com with ESMTPSA id
 a9sm6656909pfr.204.2021.02.11.12.57.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 12:57:56 -0800 (PST)
From: roz <oroz3x@gmail.com>
To: gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org
Subject: [PATCH] removed enclosed parenthesis errors given by checkpatch.pl
Date: Fri, 12 Feb 2021 02:27:39 +0530
Message-Id: <20210211205739.29466-1-oroz3x@gmail.com>
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
Cc: roz <oroz3x@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by: roz <oroz3x@gmail.com>
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

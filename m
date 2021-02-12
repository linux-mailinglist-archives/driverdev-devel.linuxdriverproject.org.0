Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7AE31A322
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 17:55:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 994E686B7C;
	Fri, 12 Feb 2021 16:55:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id btYt2D6YJ8fa; Fri, 12 Feb 2021 16:55:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D857D86B1C;
	Fri, 12 Feb 2021 16:55:53 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3AC2A1BF294
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 16:55:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 373BA87556
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 16:55:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yPF2IoH1pB9x
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 16:55:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D9D687460
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 16:55:51 +0000 (UTC)
Received: by mail-pj1-f50.google.com with SMTP id z9so745997pjl.5
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 08:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JUSXFahK2+KSXTILvwXam14Ygd6GKmJF8A1mXaBPTuQ=;
 b=Y5GEN7zQXshWvmJt52VuIlh3qbCiqwyb4d+8bFvb8hg8OvM5H2jxeehJ0EIG6EHFhJ
 5iRN6XLsWfi5dVSzn5hm7SbVjKqukDOtuzH8SqufdYIDHwJWmBbPW1xGn7w+J0CNjQIL
 VAin86UcIqr7PmUTRY+PaP+r6YDTT/RgcAIlN0BcTjCmYadAph/ucpmI2TZZMzUYnbfl
 jmEXypu/9H2w6vPzcX3g6FofR1mtzsPkeSfqXsM1KZDZuHDPKFJwjmXtQp3/yuMR/C20
 yUa6SxBLMJLlaqQyATiNEZy5AQpNfhhK5FEFHj8bEkiYfSwsXy7RViTUHyVAiviBSplZ
 7MYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JUSXFahK2+KSXTILvwXam14Ygd6GKmJF8A1mXaBPTuQ=;
 b=RTP3BSBFvJWdGrB+JaAlSVkJxFno5BIu/ELhuCwIPbmZO1IFMS5O1YO+v9VS9G3AlS
 8SaoDFe5n++n2mqOc/RJCvdO1zP/Bgiighgf2McHwoVVWJ5P31WIYvuCzL7L6/nujX9Q
 GBE3/HOCZtKCfJ03OkMNmWdYyzATCYJFQdCU0ibOYXMVGD0FAUMt5gHjoPq2SyvWhkiZ
 jnlGr/GZLTiPbDPFqur7z14kG4/O70IiU2n+EbfTn9nkAoLZ9HKXuA6Pl5VBEFtAfj+h
 tnMGSlOQ59brB+tM/+Jw0xdneWPZRqRpKU1IIBtK0lj3ldF6BdwDKHmQY5xtl0LtKffk
 8jLw==
X-Gm-Message-State: AOAM533U5OI/sGX0mr+7dYNkdXgvBEaP9GoCGWtPdwi4qLoppj+Vedut
 IfxlX/3sTHD+HkESarDcTg==
X-Google-Smtp-Source: ABdhPJxtLSaSn9mCuSC7zU3cvlXCSzUXdFN72N+/izHuu2v8bRrQ0oYILPTFGVv8Yil+CDHY6CMuDg==
X-Received: by 2002:a17:902:ea8a:b029:e2:1526:91ef with SMTP id
 x10-20020a170902ea8ab02900e2152691efmr3651519plb.41.1613148951127; 
 Fri, 12 Feb 2021 08:55:51 -0800 (PST)
Received: from localhost.localdomain ([2405:201:7000:69ad:fad6:9b61:1a3b:a0a9])
 by smtp.gmail.com with ESMTPSA id p9sm8251405pja.51.2021.02.12.08.55.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Feb 2021 08:55:50 -0800 (PST)
From: shivang upadhyay <oroz3x@gmail.com>
To: gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org
Subject: [PATCH v2] ks7010: enclosed non-trivial defines in parentheses
Date: Fri, 12 Feb 2021 22:25:23 +0530
Message-Id: <20210212165524.15914-1-oroz3x@gmail.com>
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

checkpatch.pl complains about missing parentheses
"Macros with complex values should be enclosed in parentheses".
fixed that


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

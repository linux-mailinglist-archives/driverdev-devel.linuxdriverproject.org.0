Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F7831B02C
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Feb 2021 12:08:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 023E0869A4;
	Sun, 14 Feb 2021 11:08:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KcIfnTOgsAZK; Sun, 14 Feb 2021 11:08:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE75386987;
	Sun, 14 Feb 2021 11:08:31 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 23E1E1BF57B
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 11:08:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1AA0B8697A
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 11:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nnoYOYAOik+w
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 11:08:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com
 [209.85.166.175])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8B0748670A
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 11:08:29 +0000 (UTC)
Received: by mail-il1-f175.google.com with SMTP id a16so3233055ilq.5
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Feb 2021 03:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bxwXJ8ENn68ovbCALSdFDVdqnLgoFVTQqQ/EEyjRC7Q=;
 b=l+1C4/xQ070glWRIbYOI3qPw3aV6Kgolp7KV+OJ0SzjrT20iKXZ7BSxnruo9cFnuG3
 t/jfdvRnixtL3A0eAbZ/RfN/lG+aaSMI2gyNKfWJsNWh3kjV1yRbVeG9CMvy7oT+vNXu
 WO5lRwQqakzp99jHyuN8si8iV+sik9tHiMf/yksqau+SaAnywgv8CDjqHzKY7xIrgtYG
 C85GYbtyzLfnPgNDmKfBGjaOE1xtGk762vLle89VeGOBtVEmD90vvUTejTub4Et7sj8Q
 0NN8vEvJmf3Su90vBtRFtQkln10TS5RA7fSRe1237Ktiaka+oONHuDkNw80+wYxfc5Un
 oHPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bxwXJ8ENn68ovbCALSdFDVdqnLgoFVTQqQ/EEyjRC7Q=;
 b=nXSECtL8MY+ad4s42VjNJT7ezdY5x21kXpxGQDdZ8DfqKS4HhiQKoZ8wrc4mCBtaaf
 Dnc8+INjLW7V/NjzLDY2wv3jlKUsPdVZvRCJOIHLb2Do6V6nL8wmYmSQTNbsLdKhqE79
 z6W7vIdBL3+cWAyOWryXkZcx44qI7sKFMlLCZLHyrZTRVM3snnGmZ26rCQwdxxW4mjOt
 Bn8gu9aaH8EexxCogY+fge8VWIlQnnfS+5ok9XaDY2MdsVzrEI4tgClnfgnV2LwOCnO/
 I/wOQChIzOc+xWLFy92RJK33tY5XepG4Kxp6RpoIqd25H+hT9NYF0Qbu9YrMjibDrkC1
 UFlQ==
X-Gm-Message-State: AOAM530Jz7+fzXZ8/P6w2ztp8YMcJQ41DHV9d+7E4cu5MC0xP+IKX1sJ
 cERmyfIg/x9zB45KfEQp9rg=
X-Google-Smtp-Source: ABdhPJzdVpHBCU7I1qv2pNDBTk+5rSbbTHRZbOB2X5WEwKmrSntrmPi3rADqzIzMkTu46lHSfJoIAg==
X-Received: by 2002:a05:6e02:78e:: with SMTP id
 q14mr9188331ils.195.1613300908886; 
 Sun, 14 Feb 2021 03:08:28 -0800 (PST)
Received: from localhost.localdomain ([106.51.142.63])
 by smtp.gmail.com with ESMTPSA id i3sm7486376ilm.56.2021.02.14.03.08.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Feb 2021 03:08:28 -0800 (PST)
From: Shreesh Adiga <16567adigashreesh@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: ks7010: cleanup checkpatch.pl macro error
Date: Sun, 14 Feb 2021 16:35:23 +0530
Message-Id: <20210214110523.558214-1-16567adigashreesh@gmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add parentheses around the macro definitions in ks_hostif.h
to clear the error output by checkpatch.pl

Signed-off-by: Shreesh Adiga <16567adigashreesh@gmail.com>
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
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

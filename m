Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B5880867
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 23:35:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D933E204BE;
	Sat,  3 Aug 2019 21:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uSZvM0j+Ckug; Sat,  3 Aug 2019 21:35:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 326B72043C;
	Sat,  3 Aug 2019 21:35:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0F721BF57C
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 21:35:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 93EB4845C1
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 21:35:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cl7dIlra-IY3 for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 21:35:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1CD1B845C0
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 21:35:05 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id i18so37771155pgl.11
 for <devel@driverdev.osuosl.org>; Sat, 03 Aug 2019 14:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PTxWia5xX02WvPnp2uEjiefvHrcZPYIX5+0Wgmee+Pk=;
 b=LTBMYcGzprbtDGxIPHTf+oSjKUa835LMfKM954lEhmz+dBkkqUqtOJuQvbiblw4vd0
 GoP1eLNv7wZc5YD48YCn3EXEOYHkiMqHZXDm0HT74/Fnsln15p2M+FMDtfUEo9+cNASL
 eew7Yft64f19KCGbHBFjh7qomGhRTphDYYZZQqgdmkDKXQ4b5qEvTzhOtb0fRUCJj6ua
 72sIPDvS6+5nXSfs9PsqwzDjy1jTo6F2aONBUSPEifF6KTo9EPmKheMw5WOQ6BUSKdGB
 h53w2aSVsZWsGgS23iJRf5nJVWuMoanOok/W7SY8ovQQfrQ51Yu7podFtey2EllUiQcZ
 tAPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PTxWia5xX02WvPnp2uEjiefvHrcZPYIX5+0Wgmee+Pk=;
 b=SHyodZOAxV65xHFTXB4QnuSqiuKK3f3XpEPenX8XpZz+NBACc/0+fvxjyU1O2hn8HH
 o1HvWs+0fnuC/qLkOWDjdCoQV3qRxpVXjntaHQ1Bo6YCNUogac4QhnbDlhpay1lJ5T53
 klCvLPxWWEeBr1WT+Z02GwnNwBtTp/oZ7Yx45Yjv4BijJZP6UnWgmzkRp0vlKD0aXRtY
 WiFmK69Vo1+UU/9Mym6tvKwJV+9drTUAzvUmyJPtr8XJFPE4kHE8ywlWB0Stb9s9BI2O
 RNec1/0o6QD5ZERRCgSTF+B1rnXaYdfeqZybgvikR7YhiK1vxbFqDafKLePGnfRoDRCJ
 LdnQ==
X-Gm-Message-State: APjAAAWlrx3G7JYp11xDkSkcJvtyaO3HBOoggKE2J7dtvn89O6m4n8/T
 BovCTsfZQonI5/x6goII1os=
X-Google-Smtp-Source: APXvYqyVNiG19eszv1DY0YcDZcQN1aciZqj6gfPTL8J5HnF4633On3P7FwvAUAIKGJZz+shhd/HxLw==
X-Received: by 2002:a62:764d:: with SMTP id r74mr68806329pfc.110.1564868104374; 
 Sat, 03 Aug 2019 14:35:04 -0700 (PDT)
Received: from localhost.localdomain ([117.243.24.232])
 by smtp.gmail.com with ESMTPSA id 201sm95844106pfz.24.2019.08.03.14.35.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 14:35:03 -0700 (PDT)
From: z3phyr <cristianoprasath@gmail.com>
To: 
Subject: [PATCH] Fix lines greater than 80 characters
Date: Sun,  4 Aug 2019 08:34:53 +0530
Message-Id: <20190804030456.10567-1-cristianoprasath@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 z3phyr <cristianoprasath@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch error for "line over 80 characters"

Signed-off-by: z3phyr <cristianoprasath@gmail.com>
---
 drivers/staging/pi433/pi433_if.h | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.h b/drivers/staging/pi433/pi433_if.h
index 9feb95c431cb..74b6e2513813 100644
--- a/drivers/staging/pi433/pi433_if.h
+++ b/drivers/staging/pi433/pi433_if.h
@@ -115,11 +115,14 @@ struct pi433_rx_cfg {
 	__u8			bw_exponent;	/* during AFC: 0x8b */
 	enum dagc		dagc;
 
-	/* packet format */
+    /* packet format */
 	enum option_on_off	enable_sync;
-	enum option_on_off	enable_length_byte;	  /* should be used in combination with sync, only */
-	enum address_filtering	enable_address_filtering; /* operational with sync, only */
-	enum option_on_off	enable_crc;		  /* only operational, if sync on and fixed length or length byte is used */
+    /* should be used in combination with sync, only */
+	enum option_on_off	enable_length_byte;
+	/* operational with sync, only */
+	enum address_filtering	enable_address_filtering;
+	/* only operational, if sync on and fixed length or length byte is used */
+	enum option_on_off	enable_crc;
 
 	__u8			sync_length;
 	__u8			fixed_message_length;
@@ -132,10 +135,14 @@ struct pi433_rx_cfg {
 
 #define PI433_IOC_MAGIC			'r'
 
-#define PI433_IOC_RD_TX_CFG	_IOR(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR, char[sizeof(struct pi433_tx_cfg)])
-#define PI433_IOC_WR_TX_CFG	_IOW(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR, char[sizeof(struct pi433_tx_cfg)])
+#define PI433_IOC_RD_TX_CFG	_IOR(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR,\
+char[sizeof(struct pi433_tx_cfg)])
+#define PI433_IOC_WR_TX_CFG	_IOW(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR,\
+char[sizeof(struct pi433_tx_cfg)])
 
-#define PI433_IOC_RD_RX_CFG	_IOR(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR, char[sizeof(struct pi433_rx_cfg)])
-#define PI433_IOC_WR_RX_CFG	_IOW(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR, char[sizeof(struct pi433_rx_cfg)])
+#define PI433_IOC_RD_RX_CFG	_IOR(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR,\
+char[sizeof(struct pi433_rx_cfg)])
+#define PI433_IOC_WR_RX_CFG	_IOW(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR,\
+char[sizeof(struct pi433_rx_cfg)])
 
 #endif /* PI433_H */
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

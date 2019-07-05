Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1BE6065E
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 15:11:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D27828815F;
	Fri,  5 Jul 2019 13:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s+ug4rBF1HiU; Fri,  5 Jul 2019 13:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 666E1880F5;
	Fri,  5 Jul 2019 13:11:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A2821BF5F4
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 13:11:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3724287591
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 13:11:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gQRxzdH0p8jN for <devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 13:11:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 67B968758C
 for <devel@driverdev.osuosl.org>; Fri,  5 Jul 2019 13:11:47 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id i18so4297300pgl.11
 for <devel@driverdev.osuosl.org>; Fri, 05 Jul 2019 06:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=shmkjEX15HpDCeXg3ktXP18wylhGODZeH6N4hkLfHjI=;
 b=ukK1S5l91ZQGJ9Miw2nmMkKrfD+K6ej8w1kfO7d/HrnDnsC3JCNxNzygSPjJSnvzcn
 6+OL8hHFTTb7fW6HDUMlUO8gHgrJSjlFfxRiLqUUyCYbmyZe9FpR4W0R7sgXrksm6RCU
 hgbVIPd0bDxbuNyr5c8Qx+W75W94KJxrBin/Gpe+MxYQXzzPsGEplyC4iiIq8r0DsNyT
 h3SDkzSf+v6ECGnVT3XRjQvbr26KjcfAyk4J4ngAd0TecsJmCBU5ksJhByACQknIXXz+
 wnr2sfvU7UcOrRTbbnwYrapuDyP9jrHu+7DgS+9+IvVKlun0VdjQ390ezIgchbwgcrLl
 dqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=shmkjEX15HpDCeXg3ktXP18wylhGODZeH6N4hkLfHjI=;
 b=PB0/HJ8LzqHkfdzNzKTW1Wuei/2TJ4YAJSu1jAkOD8ty+c2UJ2hnTkdmtTmN7Fkyik
 A+eX2sM7nH0l3UPoet4fuhnJZINzVkpT1BJXOhmxc1sxEcreg3I6YTgyFA/jAw4phVvv
 ZYDTDs6eFtioy/RRtb7b5HWKgnmZsp5XEU3rWaJOVdQ+RSdzTpX5Xj5KxPa7cqEHeSVW
 mRHe5LlydzESeU0XWKWwmgTY0V4QKxpRi6Z4b21yOsok2QF+q9H1NnkGG2RLbz6xBqdQ
 dKX7IU7jAvZxHUc0fOBULoIIXlY1DrLrHex8ngCW6eErvqhbNlQWSP0HtmdZJ+DP2/td
 tsWQ==
X-Gm-Message-State: APjAAAWLrb5U9jsSDQfJ9qD/Sl32n2+9AJOVmaEVWylq4Fpm9n0dljfi
 kBjGTMYvZuOfxfCuFVUZ7oo=
X-Google-Smtp-Source: APXvYqyQ4veKKnrLzoyQrT0ebXwkHFjgP4tLsuICBt19FmZ0EsbqmnjBfSH9RfXD0H6lYwpuBECuCg==
X-Received: by 2002:a63:724f:: with SMTP id c15mr5593844pgn.257.1562332307042; 
 Fri, 05 Jul 2019 06:11:47 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id m5sm9378706pfa.116.2019.07.05.06.11.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 06:11:45 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: vireshk@kernel.org, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org, greybus-dev@lists.linaro.org,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: greybus: Replace function gb_i2c_device_setup()
Date: Fri,  5 Jul 2019 18:41:31 +0530
Message-Id: <20190705131131.27354-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function gb_i2c_device_setup as all it does is call
gb_i2c_functionality_operation.
Rename gb_i2c_functionality_operation to gb_i2c_device_setup to maintain
compatibility with call sites.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/greybus/i2c.c | 22 ++++++++--------------
 1 file changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/greybus/i2c.c b/drivers/staging/greybus/i2c.c
index 7bb85a75d3b1..b2522043a1a4 100644
--- a/drivers/staging/greybus/i2c.c
+++ b/drivers/staging/greybus/i2c.c
@@ -31,7 +31,14 @@ static u32 gb_i2c_functionality_map(u32 gb_i2c_functionality)
 	return gb_i2c_functionality;	/* All bits the same for now */
 }
 
-static int gb_i2c_functionality_operation(struct gb_i2c_device *gb_i2c_dev)
+/*
+ * Do initial setup of the i2c device.  This includes verifying we
+ * can support it (based on the protocol version it advertises).
+ * If that's OK, we get and cached its functionality bits.
+ *
+ * Note: gb_i2c_dev->connection is assumed to have been valid.
+ */
+static int gb_i2c_device_setup(struct gb_i2c_device *gb_i2c_dev)
 {
 	struct gb_i2c_functionality_response response;
 	u32 functionality;
@@ -235,19 +242,6 @@ static const struct i2c_algorithm gb_i2c_algorithm = {
 	.functionality	= gb_i2c_functionality,
 };
 
-/*
- * Do initial setup of the i2c device.  This includes verifying we
- * can support it (based on the protocol version it advertises).
- * If that's OK, we get and cached its functionality bits.
- *
- * Note: gb_i2c_dev->connection is assumed to have been valid.
- */
-static int gb_i2c_device_setup(struct gb_i2c_device *gb_i2c_dev)
-{
-	/* Assume the functionality never changes, just get it once */
-	return gb_i2c_functionality_operation(gb_i2c_dev);
-}
-
 static int gb_i2c_probe(struct gbphy_device *gbphy_dev,
 			const struct gbphy_device_id *id)
 {
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

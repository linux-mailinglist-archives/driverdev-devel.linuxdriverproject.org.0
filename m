Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5CB331176
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 15:57:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3043F491FC;
	Mon,  8 Mar 2021 14:57:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id znKXPJxI7uGW; Mon,  8 Mar 2021 14:57:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 153E845BC3;
	Mon,  8 Mar 2021 14:57:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0802E1BF20B
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0468360710
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 14:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=deviqon.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WzechZjsKPKh for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 14:55:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 53B5E606A0
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 14:55:38 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id w9so15125951edc.11
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 06:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=deviqon.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=urYLQtVdnzA+q/DonKHBr+50GGSu7EQTj+TBy7g6Q9o=;
 b=DI2451HfgotQz9pB6iDClae765YmLRgpDL2tCkDipGN54R+t87igdJbgK+kmmreaeA
 8KPw7u3xoIz9kOCfIv08lBVwmzr0JSwKZUBDRyUNWmSK5ATIQfmWqO5Q6xx8uIJLikA5
 X+4sOWpuDw30weSJk+atq9Ow39Uv0ffPDH/Jbwcu8Jdi+JnQaHboHU8msYT9CKq6m4UT
 DBTRx+IZAUsflr0foefztI0cy35cwviB5fimBRCYTDiCtV1JgeVmbCDL+fLj6coXxdhK
 akBiWjsSx/bzPQDIxfRyuf5JLv7mwrqLzRThKIwHEz2B43K7HqN1vXA5pvmO8yhk9Dfy
 8jPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=urYLQtVdnzA+q/DonKHBr+50GGSu7EQTj+TBy7g6Q9o=;
 b=SOEQqgBHVcAAO8PtX4rP2SfnrhqRBMG+P3rDrYNih0E4pM2Qjjy8CiDHcbi1izEHyu
 R7NAGbQl1mJha5F6H80I+4TgEOQMsmPl4Z9W34WNNZOusqGCka0zKa+/E4vm+CGpNYYb
 A9w5C/5kwUzk56gJVs1A75zzYDHbcgidsWOur7UboWCDxPpKag57x0rqJ0mUQOCfg+bQ
 emU9pEvoefvRF26ibwjteyrHE1yB9jYn5xjaN4OwRstHGE8SKpsGmZlYd1oee1YM/tU0
 aTdIxyWzBw6ErJe+wKHrwiHEe9mDeRntbJ3JIzGRTY1aSw6auqdatYegExMWwVg32EWp
 DkcA==
X-Gm-Message-State: AOAM5320h8a2WQa2cRDIofh285gE7FvZkaHxIfY6AfZGdTy3mR8dSqCT
 N6BwEJ2CmsqdGG6em20Zicr7YA==
X-Google-Smtp-Source: ABdhPJxe0zyWH76y8kItEqXgvETT7TZ6JKNT1e22wQhgFUZx5RbGpKr9TzsZbEKqFDYgqLwPaYGILg==
X-Received: by 2002:aa7:c94c:: with SMTP id h12mr22840108edt.40.1615215336605; 
 Mon, 08 Mar 2021 06:55:36 -0800 (PST)
Received: from localhost.localdomain ([5.2.193.191])
 by smtp.gmail.com with ESMTPSA id bt14sm7411234edb.92.2021.03.08.06.55.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 06:55:36 -0800 (PST)
From: Alexandru Ardelean <aardelean@deviqon.com>
To: linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-tegra@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH 08/10] spi: fsl-espi: remove usage of 'delay_usecs' field
Date: Mon,  8 Mar 2021 16:55:00 +0200
Message-Id: <20210308145502.1075689-9-aardelean@deviqon.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210308145502.1075689-1-aardelean@deviqon.com>
References: <20210308145502.1075689-1-aardelean@deviqon.com>
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
Cc: thierry.reding@gmail.com, elder@kernel.org, gregkh@linuxfoundation.org,
 johan@kernel.org, jonathanh@nvidia.com, broonie@kernel.org,
 ldewangan@nvidia.com, Alexandru Ardelean <aardelean@deviqon.com>,
 vireshk@kernel.org, f.fainelli@gmail.com, linux@deviqon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The 'delay_usecs' field is being removed from the spi_transfer struct.
This change removes it from the SPI FSL ESPI driver.

Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
---
 drivers/spi/spi-fsl-espi.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/spi/spi-fsl-espi.c b/drivers/spi/spi-fsl-espi.c
index cf2b947c600e..f7066bef7b06 100644
--- a/drivers/spi/spi-fsl-espi.c
+++ b/drivers/spi/spi-fsl-espi.c
@@ -435,8 +435,7 @@ static int fsl_espi_trans(struct spi_message *m, struct spi_transfer *trans)
 static int fsl_espi_do_one_msg(struct spi_master *master,
 			       struct spi_message *m)
 {
-	unsigned int delay_usecs = 0, rx_nbits = 0;
-	unsigned int delay_nsecs = 0, delay_nsecs1 = 0;
+	unsigned int rx_nbits = 0, delay_nsecs = 0;
 	struct spi_transfer *t, trans = {};
 	int ret;
 
@@ -445,16 +444,10 @@ static int fsl_espi_do_one_msg(struct spi_master *master,
 		goto out;
 
 	list_for_each_entry(t, &m->transfers, transfer_list) {
-		if (t->delay_usecs) {
-			if (t->delay_usecs > delay_usecs) {
-				delay_usecs = t->delay_usecs;
-				delay_nsecs = delay_usecs * 1000;
-			}
-		} else {
-			delay_nsecs1 = spi_delay_to_ns(&t->delay, t);
-			if (delay_nsecs1 > delay_nsecs)
-				delay_nsecs = delay_nsecs1;
-		}
+		unsigned int delay = spi_delay_to_ns(&t->delay, t);
+
+		if (delay > delay_nsecs)
+			delay_nsecs = delay;
 		if (t->rx_nbits > rx_nbits)
 			rx_nbits = t->rx_nbits;
 	}
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

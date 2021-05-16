Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DB5381E41
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 12:54:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 304974042E;
	Sun, 16 May 2021 10:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BOZp-0SeaWO2; Sun, 16 May 2021 10:54:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 08C6A40319;
	Sun, 16 May 2021 10:54:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 11D431BF332
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C620560763
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WRnMD-TzVbYa for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 398CD6078B
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2738A61206;
 Sun, 16 May 2021 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621162433;
 bh=nW7fKI5PUZp/UFI+qdts0R8ZO5545PmLjbtP18ZvdUY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lwK2y20RmkTHDsgizXnSMAd6PWGlj5TCMzfS72fOYQSXFDUIiJZbphFFFLl8Ri+x4
 kodfzbhHL/J3Dhd4sVdcHtycssqt7FnSN9W8RbmjgvgmKIKthwkYRdHa11AQ8mOOyS
 X2x2z6Rg2aYOdPJj07Gn/P6u1l7taF+7gV95IrI1v+GMW3Mn6UGBi6CQsmFZhrpBAr
 W5DIbegL0Ihpwz+CprlNP1qKI8vaMGhZdaTWjHpTNu90CqTMJFdy++92ENL2T2Xa+l
 ZPzsgSv3HCe5qP6gsQ/bw5Pgt/jI0X5t/X7M5CElWWwRdm2mqoWXMlGTLUWeld8LVy
 dyMByQCKcYxrQ==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liEP9-003s8i-4w; Sun, 16 May 2021 12:53:51 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 12/17] staging: nuc-wmi: better detect NUC6/NUC7 devices
Date: Sun, 16 May 2021 12:53:40 +0200
Message-Id: <bca097a3ce2ab35fcd38eb3abdc8090c2c531048.1621161037.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1621161037.git.mchehab+huawei@kernel.org>
References: <cover.1621161037.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-staging@lists.linux.dev, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There's no documented way to detect if the WMI API is valid,
as, when it is not valid, it just returns 4 zeros.

However, as having a value of 0x00 for the blinking state
is not valid, we can check for it at detection time, in
order to disable LEDs control on devices that won't
support it.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/nuc-led/nuc-wmi.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/staging/nuc-led/nuc-wmi.c b/drivers/staging/nuc-led/nuc-wmi.c
index 5bc4dcec3ea8..1a6e2b17c888 100644
--- a/drivers/staging/nuc-led/nuc-wmi.c
+++ b/drivers/staging/nuc-led/nuc-wmi.c
@@ -312,6 +312,13 @@ static int nuc_wmi_query_leds_nuc6(struct device *dev)
 		return ret;
 	}
 
+	/*
+	 * Detect if NUC6/NUC7 supports the WMI API by checking the
+	 * returned blink state, as valid values range from 0x01 to 0x07.
+	 */
+	if (output[1] == 0x00)
+		return -ENODEV;
+
 	led = &priv->led[priv->num_leds];
 	led->id = POWER_LED;
 	led->color_type = LED_BLUE_AMBER;
@@ -325,6 +332,14 @@ static int nuc_wmi_query_leds_nuc6(struct device *dev)
 		dev_warn(dev, "Get S0 Ring: error %d\n", ret);
 		return ret;
 	}
+
+	/*
+	 * Detect if NUC6/NUC7 supports the WMI API by checking the
+	 * returned blink state, as valid values range from 0x01 to 0x07.
+	 */
+	if (output[1] == 0x00)
+		return -ENODEV;
+
 	led = &priv->led[priv->num_leds];
 	led->id = RING_LED;
 	led->color_type = LED_BLUE_AMBER;
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

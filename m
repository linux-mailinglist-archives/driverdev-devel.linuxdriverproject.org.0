Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C815381E56
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 12:55:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A44A607D2;
	Sun, 16 May 2021 10:55:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lAamM1bEBUBF; Sun, 16 May 2021 10:55:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34C7F60794;
	Sun, 16 May 2021 10:55:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5CF311BF332
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 13A19401FA
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t-ripazeJjwp for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1A32C40133
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 29F3F6121E;
 Sun, 16 May 2021 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621162433;
 bh=h9vGksfsYN6Uc32fL0WmjObXqS0pXNKpGROEG1V8hCI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fVqYMWjlFEM6FXpHotP/eCe8oIJyI3bhbpgSByvZ2c8zcM3NQBw3rQc4OG5RojroU
 9dH9u9ZxpHCwcE8GPcK58IrQpYqdsX48A4VuUsfdH6gIqQ4TCkzfFjhRIOibkfoiOo
 QgUyOL4HiryvJaidHwvG6XhRw3N0ASBulWLQLzLBDD7rAR9LKDNnV1nOvCQb+tEfZ0
 CdUtdyulIYM6f8TwThOhRvfuRoUsRc5vx+mmh/70SbqjJiZ3/l/JWTw/InbpSx25ei
 vmEwy55e+owxNkPln9OPyozrfBSE1KQKoyJmaSjogwm5JYEWepzjSM5tqw4Ah8Dgp1
 eTIA4EJTCXUzw==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liEP9-003s8q-8D; Sun, 16 May 2021 12:53:51 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 14/17] staging: nuc-wmi: fix software blink behavior logic
Date: Sun, 16 May 2021 12:53:42 +0200
Message-Id: <26d3ab7a03cb83ec56205add6cd80b8738cd96b0.1621161037.git.mchehab+huawei@kernel.org>
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

The is_visible logic for it is plain wrong:

1. it is used only during devnode creation;
2. it was using the wrong field (id, instead of indicator).

Fix it.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/nuc-led/nuc-wmi.c | 30 ++++++++++++------------------
 1 file changed, 12 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/nuc-led/nuc-wmi.c b/drivers/staging/nuc-led/nuc-wmi.c
index 68143d45c34c..fab0094a20e4 100644
--- a/drivers/staging/nuc-led/nuc-wmi.c
+++ b/drivers/staging/nuc-led/nuc-wmi.c
@@ -1476,6 +1476,9 @@ static ssize_t show_blink_behavior(struct device *dev,
 	if (led->api_rev == LED_API_NUC6)
 		return nuc6_show_blink_behavior(dev, attr, buf);
 
+	if (led->indicator != LED_IND_SOFTWARE)
+		return -EINVAL;
+
 	return offset_show_blink_behavior(dev, attr, 0, buf);
 }
 
@@ -1489,6 +1492,9 @@ static ssize_t store_blink_behavior(struct device *dev,
 	if (led->api_rev == LED_API_NUC6)
 		return nuc6_store_blink_behavior(dev, attr, buf, len);
 
+	if (led->indicator != LED_IND_SOFTWARE)
+		return -EINVAL;
+
 	return offset_store_blink_behavior(dev, attr, 0, buf, len);
 }
 
@@ -1593,6 +1599,9 @@ static ssize_t show_blink_frequency(struct device *dev,
 	if (led->api_rev == LED_API_NUC6)
 		return nuc6_show_blink_frequency(dev, attr, buf);
 
+	if (led->indicator != LED_IND_SOFTWARE)
+		return -EINVAL;
+
 	return offset_show_blink_frequency(dev, attr, 0, buf);
 }
 
@@ -1606,26 +1615,12 @@ static ssize_t store_blink_frequency(struct device *dev,
 	if (led->api_rev == LED_API_NUC6)
 		return nuc6_store_blink_frequency(dev, attr, buf, len);
 
+	if (led->indicator != LED_IND_SOFTWARE)
+		return -EINVAL;
+
 	return offset_store_blink_frequency(dev, attr, 0, buf, len);
 }
 
-static umode_t nuc_wmi_led_blink_is_visible(struct kobject *kobj,
-					    struct attribute *attr, int idx)
-{
-	struct device *dev = kobj_to_dev(kobj);
-	struct led_classdev *cdev = dev_get_drvdata(dev);
-	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
-	umode_t mode = attr->mode;
-
-	if (led->api_rev == LED_API_NUC6)
-		return mode;
-
-	if (led->id == LED_IND_SOFTWARE)
-		return mode;
-
-	return 0;
-}
-
 /* HDD activity behavior */
 static ssize_t show_hdd_default(struct device *dev,
 				   struct device_attribute *attr,
@@ -1785,7 +1780,6 @@ static struct attribute *nuc_wmi_led_blink_behavior_attr[] = {
 };
 
 static const struct attribute_group nuc_wmi_led_blink_attribute_group = {
-	.is_visible = nuc_wmi_led_blink_is_visible,
 	.attrs = nuc_wmi_led_blink_behavior_attr,
 };
 
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

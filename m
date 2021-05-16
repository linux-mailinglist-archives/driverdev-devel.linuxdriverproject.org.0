Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 477D8381E50
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 12:55:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAF6C607DF;
	Sun, 16 May 2021 10:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MgWPLl48qygM; Sun, 16 May 2021 10:55:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E86F6607C7;
	Sun, 16 May 2021 10:55:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E20B1BF332
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CE00383B3D
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xUTGI1uyjFk7 for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4567683AE8
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2A8C161221;
 Sun, 16 May 2021 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621162433;
 bh=Zwfc7j9efHMjOQ95FQowFtkZnRbepFXiueRLmwb0dSU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=h8hK2cTxu3yUhpkVOFxXJ2rZE7FWYPtNo09bb+tPOG1HSmBOa+6mrwqQUeXaNlkgF
 BniqIJW1AcaIWAzQ9PEXwBuudao0SyKspIrbERhrt7xLuVIKgmfE2jyKFHgsyHAjbC
 f/7J9g5+FOgijog5s1NAmW7PmBq5bNtl4n8OeO9rsBgIxCMJJiwhysUGJDkjm5fhiN
 AwC69hh9Sl+NIlnOTfAh9ENMhp0jCGqbQKQRRFRlJG1bQl6VNk/h78MHSevGqI+tas
 67pON+wX1GH3mzGWxzzHTfu/kF4VzH6fyb8Gm3OZ3DuE5ZvzDiW7bt6nK5VzXQHrkx
 vun6WWx9/UhJw==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liEP9-003s8m-6c; Sun, 16 May 2021 12:53:51 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 13/17] staging: nuc-led: add support for HDD activity default
Date: Sun, 16 May 2021 12:53:41 +0200
Message-Id: <3e6c8001d221f724edc28107dbb8d05bf6a6801f.1621161037.git.mchehab+huawei@kernel.org>
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

There are two possible values for HDD activity behavior:

	- 0 Normally off, ON when active
	- 1 Normally on, OFF when active

Implement a logic to set it.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/nuc-led/nuc-wmi.c | 77 +++++++++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/drivers/staging/nuc-led/nuc-wmi.c b/drivers/staging/nuc-led/nuc-wmi.c
index 1a6e2b17c888..68143d45c34c 100644
--- a/drivers/staging/nuc-led/nuc-wmi.c
+++ b/drivers/staging/nuc-led/nuc-wmi.c
@@ -1626,10 +1626,86 @@ static umode_t nuc_wmi_led_blink_is_visible(struct kobject *kobj,
 	return 0;
 }
 
+/* HDD activity behavior */
+static ssize_t show_hdd_default(struct device *dev,
+				   struct device_attribute *attr,
+				   char *buf)
+{
+	struct led_classdev *cdev = dev_get_drvdata(dev);
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+	u8 input[NUM_INPUT_ARGS] = { 0 };
+	u8 output[NUM_OUTPUT_ARGS];
+	int ctrl, ret, val;
+
+	if (led->indicator != LED_IND_HDD_ACTIVITY)
+		return -EINVAL;
+
+	ctrl = led->reg_table[led->indicator][LED_FUNC_HDD_BEHAVIOR];
+
+	if (!nuc_wmi_test_control(dev, led, ctrl))
+		return -ENODEV;
+
+	input[0] = LED_NEW_GET_CONTROL_ITEM;
+	input[1] = led->id;
+	input[2] = led->indicator;
+	input[3] = ctrl;
+
+	ret = nuc_nmi_cmd(dev, LED_NEW_GET_STATUS, input, output);
+	if (ret)
+		return ret;
+
+	val = output[0];
+
+	if (val == 0)
+		return scnprintf(buf, PAGE_SIZE, "off\n");
+
+	return scnprintf(buf, PAGE_SIZE, "on\n");
+}
+
+static ssize_t store_hdd_default(struct device *dev,
+				    struct device_attribute *attr,
+				    const char *buf, size_t len)
+{
+	struct led_classdev *cdev = dev_get_drvdata(dev);
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+	u8 input[NUM_INPUT_ARGS] = { 0 };
+	int ctrl, val, ret;
+	const char *tmp;
+
+	if (led->indicator != LED_IND_HDD_ACTIVITY)
+		return -EINVAL;
+
+	ctrl = led->reg_table[led->indicator][LED_FUNC_HDD_BEHAVIOR];
+
+	if (!nuc_wmi_test_control(dev, led, ctrl))
+		return -ENODEV;
+
+	tmp = strsep((char **)&buf, "\n");
+	if (!strcmp(tmp, "on"))
+		val = 1;
+	else if (!strcmp(tmp, "off"))
+		val = 0;
+	else
+		return -EINVAL;
+
+	input[0] = led->id;
+	input[1] = led->indicator;
+	input[2] = ctrl;
+	input[3] = val;
+
+	ret = nuc_nmi_cmd(dev, LED_SET_VALUE, input, NULL);
+	if (ret)
+		return ret;
+
+	return len;
+}
+
+
 static LED_ATTR_RW(indicator);
 static LED_ATTR_RW(color);
 static LED_ATTR_RW(blink_behavior);
 static LED_ATTR_RW(blink_frequency);
+static LED_ATTR_RW(hdd_default);
 
 LED_ATTR_POWER_STATE_RW(s0_brightness, brightness, 0);
 LED_ATTR_POWER_STATE_RW(s0_blink_behavior, blink_behavior, 0);
@@ -1657,6 +1733,7 @@ LED_ATTR_POWER_STATE_RW(standby_blink_frequency, blink_frequency, 2);
 
 static struct attribute *nuc_wmi_led_attr[] = {
 	&dev_attr_indicator.attr,
+	&dev_attr_hdd_default.attr,
 	NULL,
 };
 
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

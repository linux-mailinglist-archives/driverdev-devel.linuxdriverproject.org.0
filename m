Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14290381E52
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 12:55:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 824D640231;
	Sun, 16 May 2021 10:55:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2kaYxoXfHI6t; Sun, 16 May 2021 10:55:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 272BF40173;
	Sun, 16 May 2021 10:55:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 111C71BF332
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0E5D56078B
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p6CuXURHP5OB for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4A54E60790
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 29A046120D;
 Sun, 16 May 2021 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621162433;
 bh=6H8AU2caE1C+L+ZOJtRM+ecRO1FZ+rCeLy8Yj1PSqfM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SX9w7hkCLiPkTo+Zq04uxebLUUgPcjy9asbuJ1SwqL30ES+6+w9S8Z96n2DWP1Wn8
 /uet8/6RVqsIbGKCgXj3PFQ2JPHyFnRYhvgDstT6Myg3Wfz2hrH/Jk/NanI5fgyC0X
 DK3oeLJTMEw6Y48gllCSgKPxTwI93zyj97RtuVJ94TmMEccJWbH9PzkfQIXzKqp7PQ
 8GOzrTvpos0dNn2jx61snHcBxEyk8ymnGEtEWmUJMuqGoD+Aln7SgA5z975r+44ici
 QXlV5M5nfgLVqVEq3x/WmDxjFgZ12cGajm3VtJaz340VYfuz3uqa7oBqUNyxpwimNL
 KjnybdX29qJXQ==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liEP9-003s8y-Am; Sun, 16 May 2021 12:53:51 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 16/17] staging: nuc-wmi: add support for changing the power
 limit scheme
Date: Sun, 16 May 2021 12:53:44 +0200
Message-Id: <10df69ed906079c400d3f262102c8f3f05423243.1621161037.git.mchehab+huawei@kernel.org>
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

The power limit indicator may have 2 behaviors:

1. Its color gradually changes from green to red;
2. It displays a single color

Add support for it.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/nuc-led/nuc-wmi.c | 93 +++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/drivers/staging/nuc-led/nuc-wmi.c b/drivers/staging/nuc-led/nuc-wmi.c
index 9e8164cd77ec..2d9c49d72703 100644
--- a/drivers/staging/nuc-led/nuc-wmi.c
+++ b/drivers/staging/nuc-led/nuc-wmi.c
@@ -1764,6 +1764,8 @@ static ssize_t store_ethernet_type(struct device *dev,
 	if (!nuc_wmi_test_control(dev, led, ctrl))
 		return -ENODEV;
 
+	tmp = strsep((char **)&buf, "\n");
+
 	for (val = 0; val < ARRAY_SIZE(ethernet_type); val++)
 		if (!strcasecmp(tmp, ethernet_type[val]))
 			break;
@@ -1783,12 +1785,102 @@ static ssize_t store_ethernet_type(struct device *dev,
 	return len;
 }
 
+/* Power Limit Indication scheme  */
+static const char * const power_limit_scheme[] = {
+	"green to red",
+	"single color"
+};
+
+static ssize_t show_power_limit_scheme(struct device *dev,
+				       struct device_attribute *attr,
+				       char *buf)
+{
+	struct led_classdev *cdev = dev_get_drvdata(dev);
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+	u8 input[NUM_INPUT_ARGS] = { 0 };
+	u8 output[NUM_OUTPUT_ARGS];
+	int ctrl, ret, val, i, n;
+	int size = PAGE_SIZE;
+	char *p = buf;
+
+	if (led->indicator != LED_IND_POWER_LIMIT)
+		return -EINVAL;
+
+	ctrl = led->reg_table[led->indicator][LED_FUNC_POWER_STATE_NUM_CTRLS];
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
+	for (i = 0; i < ARRAY_SIZE(power_limit_scheme); i++) {
+		if (i == val)
+			n = scnprintf(p, size, "[%s]  ", power_limit_scheme[i]);
+		else
+			n = scnprintf(p, size, "%s  ", power_limit_scheme[i]);
+		p += n;
+		size -= n;
+	}
+	size -= scnprintf(p, size, "\n");
+
+	return PAGE_SIZE - size;
+}
+
+static ssize_t store_power_limit_scheme(struct device *dev,
+					struct device_attribute *attr,
+					const char *buf, size_t len)
+{
+	struct led_classdev *cdev = dev_get_drvdata(dev);
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+	u8 input[NUM_INPUT_ARGS] = { 0 };
+	int ctrl, val, ret;
+	const char *tmp;
+
+	if (led->indicator != LED_IND_POWER_LIMIT)
+		return -EINVAL;
+
+	ctrl = led->reg_table[led->indicator][LED_FUNC_POWER_STATE_NUM_CTRLS];
+
+	if (!nuc_wmi_test_control(dev, led, ctrl))
+		return -ENODEV;
+
+	tmp = strsep((char **)&buf, "\n");
+
+	for (val = 0; val < ARRAY_SIZE(power_limit_scheme); val++)
+		if (!strcasecmp(tmp, power_limit_scheme[val]))
+			break;
+
+	if (val >= ARRAY_SIZE(power_limit_scheme))
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
 static LED_ATTR_RW(indicator);
 static LED_ATTR_RW(color);
 static LED_ATTR_RW(blink_behavior);
 static LED_ATTR_RW(blink_frequency);
 static LED_ATTR_RW(hdd_default);
 static LED_ATTR_RW(ethernet_type);
+static LED_ATTR_RW(power_limit_scheme);
 
 LED_ATTR_POWER_STATE_RW(s0_brightness, brightness, 0);
 LED_ATTR_POWER_STATE_RW(s0_blink_behavior, blink_behavior, 0);
@@ -1818,6 +1910,7 @@ static struct attribute *nuc_wmi_led_attr[] = {
 	&dev_attr_indicator.attr,
 	&dev_attr_hdd_default.attr,
 	&dev_attr_ethernet_type.attr,
+	&dev_attr_power_limit_scheme.attr,
 	NULL,
 };
 
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

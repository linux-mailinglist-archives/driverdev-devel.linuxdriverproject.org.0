Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C65D5381E53
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 12:55:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEB2D83B50;
	Sun, 16 May 2021 10:55:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i5LoNpZXQANT; Sun, 16 May 2021 10:55:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8927D839E9;
	Sun, 16 May 2021 10:55:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A1141BF332
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B488402DA
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8BKbpHTJji9m for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 39E35402D2
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id DAB4D611BD;
 Sun, 16 May 2021 10:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621162433;
 bh=VffAjVEGj0KnqZ+dbqyEYxecX+Dvk1FJFfEgTWX3FtY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IOx1mooElKYtzRqYX8Volrk8T0GkXx2GaHSTpMBDqL2+/8GWoCqPNbsKbHaPNKoGG
 CwQzYBK7qlJ2pGFQh4G31jCRDPh3O73yJtWEqFQDigDDBZh8jQBQF1lJlLgoNU40/L
 12cbx9sfxCGE5eR+FO82DpOavuiMv8X0A/Zgov9alk1eTMo93DPYI6UKClm28HV5dl
 OM62jb1ks9yi4vajoqTWR4O/fIOHocO1sZNjF955zp4ONdb1J/dZkRXiO2GLSpEQx1
 u/deomzZv2gqSR1HXdNy6q111BdEVSyGnRZnYZOLqWqxZ3/Kvq6/r1B32x73jB//BI
 roVicJS4ZLMTg==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liEP8-003s8G-RT; Sun, 16 May 2021 12:53:50 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 05/17] staging: nuc-wmi: allow changing the LED colors
Date: Sun, 16 May 2021 12:53:33 +0200
Message-Id: <bedb5f44cee75ed242e95f8fccc5d93acfc2b382.1621161037.git.mchehab+huawei@kernel.org>
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

Add routines to allow seeing and changing the LED colors.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/nuc-led/nuc-wmi.c | 244 ++++++++++++++++++++++++++++--
 1 file changed, 228 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/nuc-led/nuc-wmi.c b/drivers/staging/nuc-led/nuc-wmi.c
index 711897ba4666..07cf18e6f4c4 100644
--- a/drivers/staging/nuc-led/nuc-wmi.c
+++ b/drivers/staging/nuc-led/nuc-wmi.c
@@ -58,8 +58,6 @@ enum led_new_get_subcmd {
 enum led_function {
 	LED_FUNC_BRIGHTNESS,
 	LED_FUNC_COLOR1,
-	LED_FUNC_COLOR_GREEN,
-	LED_FUNC_COLOR_BLUE,
 
 	LED_FUNC_BLINK_BEHAVIOR,
 	LED_FUNC_BLINK_FREQ,
@@ -92,43 +90,31 @@ static const u8 led_func_rev_0_64[MAX_IND][MAX_LED_FUNC] = {
 		[LED_FUNC_BLINK_BEHAVIOR]	= 0x01,
 		[LED_FUNC_BLINK_FREQ]		= 0x02,
 		[LED_FUNC_COLOR1]		= 0x03,
-		[LED_FUNC_COLOR_GREEN]		= 0x04,
-		[LED_FUNC_COLOR_BLUE]		= 0x05
 	},
 	[LED_IND_HDD_ACTIVITY] = {
 		[LED_FUNC_BRIGHTNESS]		= 0x00,
 		[LED_FUNC_COLOR1]		= 0x01,
-		[LED_FUNC_COLOR_GREEN]		= 0x02,
-		[LED_FUNC_COLOR_BLUE]		= 0x03,
 		[LED_FUNC_HDD_BEHAVIOR]		= 0x04
 	},
 	[LED_IND_ETHERNET] = {
 		[LED_FUNC_ETH_TYPE]		= 0x00,
 		[LED_FUNC_BRIGHTNESS]		= 0x01,
 		[LED_FUNC_COLOR1]		= 0x02,
-		[LED_FUNC_COLOR_GREEN]		= 0x03,
-		[LED_FUNC_COLOR_BLUE]		= 0x04
 	},
 	[LED_IND_WIFI] = {
 		[LED_FUNC_BRIGHTNESS]		= 0x00,
 		[LED_FUNC_COLOR1]		= 0x01,
-		[LED_FUNC_COLOR_GREEN]		= 0x02,
-		[LED_FUNC_COLOR_BLUE]		= 0x03
 	},
 	[LED_IND_SOFTWARE] = {
 		[LED_FUNC_BRIGHTNESS]		= 0x00,
 		[LED_FUNC_BLINK_BEHAVIOR]	= 0x01,
 		[LED_FUNC_BLINK_FREQ]		= 0x02,
 		[LED_FUNC_COLOR1]		= 0x03,
-		[LED_FUNC_COLOR_GREEN]		= 0x04,
-		[LED_FUNC_COLOR_BLUE]		= 0x05
 	},
 	[LED_IND_POWER_LIMIT] = {
 		[LED_FUNC_POWER_LIMIT_SCHEME]	= 0x00,
 		[LED_FUNC_BRIGHTNESS]		= 0x01,
 		[LED_FUNC_COLOR1]		= 0x02,
-		[LED_FUNC_COLOR_GREEN]		= 0x03,
-		[LED_FUNC_COLOR_BLUE]		= 0x04
 	},
 };
 
@@ -459,6 +445,8 @@ static ssize_t nuc_wmi_set_brightness_offset(struct device *dev,
 	}								       \
 	static DEVICE_ATTR(_name, 0644, show_##_name, store_##_name)
 
+/* Show/change the LED indicator */
+
 static const char * const led_indicators[] = {
 	"Power State",
 	"HDD Activity",
@@ -531,7 +519,220 @@ static ssize_t store_indicator(struct device *dev,
 	return -EINVAL;
 }
 
-/* Get brightness */
+/* Show/change the LED color */
+
+enum led_colors {
+	LED_COLOR_BLUE,
+	LED_COLOR_AMBER,
+	LED_COLOR_WHITE
+};
+
+struct led_color_name {
+	const char *name;
+	u8 r, g, b;
+};
+
+static const struct led_color_name led_colors[] = {
+	/* The first colors should match the dual-LED colorset */
+	[LED_COLOR_BLUE]  = { "blue",  0,       0, 0xff },
+	[LED_COLOR_AMBER] = { "amber", 0xff, 0xbf,    0 },
+	[LED_COLOR_WHITE] = { "white", 0xff, 0xff, 0xff },
+
+	/* Let's add a couple of common color names as well */
+	{ "red",     0xff,    0,    0 },
+	{ "green",      0, 0xff,    0 },
+	{ "yellow",  0xff, 0xff,    0 },
+	{ "cyan",       0, 0xff, 0xff },
+	{ "magenta", 0xff,    0, 0xff },
+};
+
+static ssize_t show_color(struct device *dev,
+			  struct device_attribute *attr,				 char *buf)
+{
+	struct led_classdev *cdev = dev_get_drvdata(dev);
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+	u8 input[NUM_INPUT_ARGS];
+	u8 output[NUM_OUTPUT_ARGS];
+	int ret, ctrl;
+	int size = PAGE_SIZE;
+	char *p = buf;
+	int color, r, g, b;
+
+	if (led->indicator == LED_IND_DISABLE)
+		return -ENODEV;
+
+	ctrl = led_func_rev_0_64[led->indicator][LED_FUNC_COLOR1];
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
+	if (led->color_type & LED_RGB) {
+		r = output[0];
+
+		input[3]++;
+		ret = nuc_nmi_cmd(dev, LED_NEW_GET_STATUS, input, output);
+		if (ret)
+			return ret;
+
+		g = output[0];
+
+		input[3]++;
+		ret = nuc_nmi_cmd(dev, LED_NEW_GET_STATUS, input, output);
+		if (ret)
+			return ret;
+
+		b = output[0];
+
+		for (color = 0; color < ARRAY_SIZE(led_colors); color++)
+			if (led_colors[color].r == r &&
+			    led_colors[color].g == g &&
+			    led_colors[color].b == b)
+				    return scnprintf(p, size, "%s\n",
+						     led_colors[color].name);
+
+		return scnprintf(p, size, "%d,%d,%d\n", r, g, b);
+	}
+
+	if (!output[0])
+		return scnprintf(p, size, "%s\n",
+				 led_colors[LED_COLOR_BLUE].name);
+
+	if (led->color_type & LED_BLUE_AMBER)
+		return scnprintf(p, size, "%s\n",
+				 led_colors[LED_COLOR_AMBER].name);
+
+	return scnprintf(p, size, "%s\n", led_colors[LED_COLOR_WHITE].name);
+}
+
+static ssize_t store_color(struct device *dev,
+			   struct device_attribute *attr,
+			   const char *buf, size_t len)
+{
+	struct led_classdev *cdev = dev_get_drvdata(dev);
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+	u8 input[NUM_INPUT_ARGS] = { 0 };
+	int ret, ctrl, color;
+	const char *tmp;
+	u8 r, g, b, val;
+
+	if (led->indicator == LED_IND_DISABLE)
+		return -ENODEV;
+
+	tmp = strsep((char **)&buf, ",\n");
+
+	for (color = 0; color < ARRAY_SIZE(led_colors); color++)
+		if (!strcasecmp(tmp, led_colors[color].name))
+			    break;
+
+	if (color < ARRAY_SIZE(led_colors)) {
+		r = led_colors[color].r;
+		g = led_colors[color].g;
+		b = led_colors[color].b;
+	} else {
+		if (kstrtou8(tmp, 0, &r) || r > 255)
+			return -EINVAL;
+
+		tmp = strsep((char **)&buf, ",\n");
+		if (kstrtou8(tmp, 0, &g) || g > 255)
+			return -EINVAL;
+
+		tmp = strsep((char **)&buf, " \n");
+		if (kstrtou8(tmp, 0, &b) || b > 255)
+			return -EINVAL;
+
+		if (led->color_type & LED_SINGLE_COLOR) {
+			for (color = 0; color <= LED_COLOR_WHITE; color++)
+				if (led_colors[color].r == r &&
+				    led_colors[color].g == g &&
+				    led_colors[color].b == b)
+					    break;
+		}
+	}
+
+	ctrl = led_func_rev_0_64[led->indicator][LED_FUNC_COLOR1];
+
+	/* Dual color LEDs */
+	if (!(led->color_type & LED_RGB)) {
+		if (color == LED_COLOR_BLUE)
+			val = 0;
+		else {
+			if (led->color_type & LED_BLUE_AMBER &&
+			    color != LED_COLOR_AMBER)
+				return -EINVAL;
+			else if (color != LED_COLOR_WHITE)
+				return -EINVAL;
+			val =1;
+		}
+
+		input[0] = led->id;
+		input[1] = led->indicator;
+		input[2] = ctrl;
+		input[3] = val;
+
+		ret = nuc_nmi_cmd(dev, LED_SET_VALUE, input, NULL);
+		if (ret)
+			return ret;
+
+		return len;
+	}
+
+	/* RGB LEDs */
+	input[0] = led->id;
+	input[1] = led->indicator;
+	input[2] = ctrl;
+	input[3] = r;
+
+	ret = nuc_nmi_cmd(dev, LED_SET_VALUE, input, NULL);
+	if (ret)
+		return ret;
+
+	input[0] = led->id;
+	input[1] = led->indicator;
+	input[2]++;
+	input[3] = g;
+
+	ret = nuc_nmi_cmd(dev, LED_SET_VALUE, input, NULL);
+	if (ret)
+		return ret;
+
+	input[0] = led->id;
+	input[1] = led->indicator;
+	input[2]++;
+	input[3] = b;
+
+	ret = nuc_nmi_cmd(dev, LED_SET_VALUE, input, NULL);
+	if (ret)
+		return ret;
+
+	return len;
+
+	return -EINVAL;
+}
+
+static umode_t nuc_wmi_led_color_is_visible(struct kobject *kobj,
+					    struct attribute *attr, int idx)
+{
+	struct device *dev = kobj_to_dev(kobj);
+	struct led_classdev *cdev = dev_get_drvdata(dev);
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+	umode_t mode = attr->mode;
+
+	if (led->color_type & LED_SINGLE_COLOR)
+		return 0;
+
+	return mode;
+}
+
+/* Show/store brightness */
 static ssize_t show_brightness_offset(struct device *dev,
 				      struct device_attribute *attr,
 				      u8 offset,
@@ -551,7 +752,6 @@ static ssize_t show_brightness_offset(struct device *dev,
 	return scnprintf(buf, PAGE_SIZE, "%d\n", ret);
 }
 
-/* Change brightness */
 static ssize_t store_brightness_offset(struct device *dev,
 				       struct device_attribute *attr,
 				       u8 offset,
@@ -597,6 +797,7 @@ static int nuc_wmi_set_brightness(struct led_classdev *cdev,
 }
 
 static LED_ATTR_RW(indicator);
+static LED_ATTR_RW(color);
 
 LED_ATTR_POWER_STATE_RW(s0_brightness, 0x00);
 LED_ATTR_POWER_STATE_RW(s3_brightness, 0x06);
@@ -620,8 +821,19 @@ static const struct attribute_group nuc_wmi_led_attribute_group = {
 	.attrs = nuc_wmi_led_attr,
 };
 
+static struct attribute *nuc_wmi_led_color_attr[] = {
+	&dev_attr_color.attr,
+	NULL,
+};
+
+static const struct attribute_group nuc_wmi_led_color_attribute_group = {
+	.is_visible = nuc_wmi_led_color_is_visible,
+	.attrs = nuc_wmi_led_color_attr,
+};
+
 static const struct attribute_group *nuc_wmi_led_attribute_groups[] = {
 	&nuc_wmi_led_attribute_group,
+	&nuc_wmi_led_color_attribute_group,
 	NULL
 };
 
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

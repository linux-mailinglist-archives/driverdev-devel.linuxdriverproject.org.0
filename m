Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3336E381E5A
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 12:56:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8B1E607C2;
	Sun, 16 May 2021 10:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cHgLCh429UJV; Sun, 16 May 2021 10:56:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C18F60794;
	Sun, 16 May 2021 10:56:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CF461BF332
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 358FF40133
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BW5FYgwLkGEz for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 10:53:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DF339401EE
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 10:53:53 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C84BB61184;
 Sun, 16 May 2021 10:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621162433;
 bh=aZccJ0bg/mMgG/HBTCLEB1mjUvqzsT/zeGhH0Y0dcso=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lkqdUBTy526rucId3KtQ5MCl4lXEcDc5LNLl4NTtmNNqzIrbmTShG9v2bUGaHKBsn
 M90QREspNhIVy0SlIY06u78EJTMfHAzMOwJveeG6Zm3+5nbKSacWG9oegLK3iZ7iEz
 POt8ZpQR334yGCvV7SPNOU13dBQCT53KeJs2e+Ax+Pj/DuPYEVHDlruGBvh6KbRGuq
 44mY/4tcBMJHGeQHNM+0vsfc2c19WVEzqE1DlYAnI9B8uM2Mv3wtfmT69xIcOklIZn
 TQRIbQQGX2I9fLlQqE1PQPo1uvXemeNQ6+gu/O1ZBjjIOP5+3dQciZ8v/1xnTPDumw
 FCSznUCoa8tNA==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liEP8-003s8S-Vu; Sun, 16 May 2021 12:53:51 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 08/17] staging: muc-wmi: add brightness and color for NUC6 API
Date: Sun, 16 May 2021 12:53:36 +0200
Message-Id: <58e10bcb33ea936a7971c222a57b03f79e60302f.1621161037.git.mchehab+huawei@kernel.org>
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

The NUC6 WMI API is really simple: it has just 2 messages,
that retrieves everything for a LED, and it has just 2 LEDs.

Add support for retrieving and set brightness and color.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/nuc-led/nuc-wmi.c | 198 ++++++++++++++++++++++++++++--
 1 file changed, 191 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/nuc-led/nuc-wmi.c b/drivers/staging/nuc-led/nuc-wmi.c
index db38c40c223a..a365a8603182 100644
--- a/drivers/staging/nuc-led/nuc-wmi.c
+++ b/drivers/staging/nuc-led/nuc-wmi.c
@@ -302,14 +302,13 @@ static int nuc_wmi_query_leds_nuc6(struct device *dev)
 {
 	// FIXME: add a check for the specific models that are known to work
 	struct nuc_wmi *priv = dev_get_drvdata(dev);
-	u8 cmd, input[NUM_INPUT_ARGS] = { 0 };
+	u8 input[NUM_INPUT_ARGS] = { 0 };
 	u8 output[NUM_OUTPUT_ARGS];
 	struct nuc_nmi_led *led;
 	int ret;
 
-	cmd = LED_OLD_GET_STATUS;
 	input[0] = LED_OLD_GET_S0_POWER;
-	ret = nuc_nmi_cmd(dev, cmd, input, output);
+	ret = nuc_nmi_cmd(dev, LED_OLD_GET_STATUS, input, output);
 	if (ret) {
 		dev_warn(dev, "Get S0 Power: error %d\n", ret);
 		return ret;
@@ -322,9 +321,8 @@ static int nuc_wmi_query_leds_nuc6(struct device *dev)
 	led->indicator = fls(led->avail_indicators);
 	priv->num_leds++;
 
-	cmd = LED_OLD_GET_STATUS;
 	input[0] = LED_OLD_GET_S0_RING;
-	ret = nuc_nmi_cmd(dev, cmd, input, output);
+	ret = nuc_nmi_cmd(dev, LED_OLD_GET_STATUS, input, output);
 	if (ret) {
 		dev_warn(dev, "Get S0 Ring: error %d\n", ret);
 		return ret;
@@ -544,6 +542,167 @@ static ssize_t nuc_wmi_set_brightness_offset(struct device *dev,
 	}								       \
 	static DEVICE_ATTR(_name, 0644, show_##_name, store_##_name)
 
+/*
+ * NUC6 specific logic
+ */
+
+static int nuc_wmi_nuc6_led_get_set(struct device *dev,
+				    struct nuc_nmi_led *led, int *brightness,
+				    int *blink_fade, int *color_state)
+{
+	u8 input[NUM_INPUT_ARGS] = { 0 };
+	u8 output[NUM_OUTPUT_ARGS];
+	int ret;
+
+	if (led->id == POWER_LED)
+		input[0] = LED_OLD_GET_S0_POWER;
+	else
+		input[0] = LED_OLD_GET_S0_RING;
+
+	ret = nuc_nmi_cmd(dev, LED_OLD_GET_STATUS, input, output);
+	if (ret) {
+		dev_warn(dev, "Get %s: error %d\n", led_names[led->id], ret);
+		return ret;
+	}
+
+	if (brightness && *brightness >= 0)
+		input[1] = *brightness;
+	else
+		input[1] = output[0];
+
+	if (blink_fade && *blink_fade >= 0)
+		input[2] = *blink_fade;
+	else
+		input[2] = output[1];
+
+	if (color_state && *color_state >= 0)
+		input[3] = *color_state;
+	else
+		input[3] = output[2];
+
+	ret = nuc_nmi_cmd(dev, LED_OLD_SET_LED, input, output);
+	if (ret) {
+		dev_warn(dev, "Get %s: error %d\n", led_names[led->id], ret);
+		return ret;
+	}
+
+	if (brightness)
+		*brightness = output[0];
+	if (blink_fade)
+		*blink_fade = output[1];
+	if (color_state)
+		*color_state = output[2];
+
+	return 0;
+}
+
+static enum led_brightness nuc_wmi_nuc6_get_brightness(struct led_classdev *cdev)
+{
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+	int ret, brightness = -1;
+
+	ret = nuc_wmi_nuc6_led_get_set(cdev->dev, led, &brightness, NULL, NULL);
+	if (ret)
+		return ret;
+
+	return brightness;
+}
+
+static int nuc_wmi_nuc6_set_brightness(struct led_classdev *cdev,
+				       enum led_brightness bright)
+{
+	int brightness = bright;
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+
+	return nuc_wmi_nuc6_led_get_set(cdev->dev, led, &brightness,
+					NULL, NULL);
+}
+
+static const char * const nuc6_power_colors[] = {
+	"disable",
+	"blue",
+	"amber"
+};
+
+static const char * const nuc6_ring_colors[] = {
+	"disable",
+	"cyan",
+	"pink",
+	"yellow",
+	"blue",
+	"red",
+	"green",
+	"white"
+};
+
+static ssize_t nuc6_show_color(struct device *dev,
+			       struct device_attribute *attr,
+			       char *buf)
+{
+	struct led_classdev *cdev = dev_get_drvdata(dev);
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+	int color = -1, ret, arr_size, i, n;
+	const char * const*color_names;
+	int size = PAGE_SIZE;
+	char *p = buf;
+
+	ret = nuc_wmi_nuc6_led_get_set(dev, led, NULL, NULL, &color);
+	if (ret)
+		return ret;
+
+	if (led->id == POWER_LED) {
+		color_names = nuc6_power_colors;
+		arr_size = ARRAY_SIZE(nuc6_power_colors);
+	} else {
+		color_names = nuc6_ring_colors;
+		arr_size = ARRAY_SIZE(nuc6_ring_colors);
+	}
+
+	for (i = 0; i < arr_size; i++) {
+		if (i == color)
+			n = scnprintf(p, size, "[%s]  ", color_names[i]);
+		else
+			n = scnprintf(p, size, "%s  ", color_names[i]);
+		p += n;
+		size -= n;
+	}
+	size -= scnprintf(p, size, "\n");
+
+	return PAGE_SIZE - size;
+
+}
+
+static ssize_t nuc6_store_color(struct device *dev,
+				struct device_attribute *attr,
+				const char *buf, size_t len)
+{
+	struct led_classdev *cdev = dev_get_drvdata(dev);
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+	const char *tmp;
+	int ret, color;
+
+	tmp = strsep((char **)&buf, ",\n");
+
+	if (led->id == POWER_LED) {
+		for (color = ARRAY_SIZE(nuc6_power_colors)+1; color >= 0; color--)
+			if (!strcasecmp(tmp, nuc6_power_colors[color]))
+				    break;
+	} else {
+		for (color = ARRAY_SIZE(nuc6_ring_colors)+1; color >= 0; color--)
+			if (!strcasecmp(tmp, nuc6_ring_colors[color]))
+				    break;
+	}
+
+	if (color < 0)
+		return -EINVAL;
+
+	ret = nuc_wmi_nuc6_led_get_set(dev, led, NULL, NULL, &color);
+	if (ret)
+		return ret;
+
+	return len;
+}
+
 /* Show/change the LED indicator */
 
 static const char * const led_indicators[] = {
@@ -657,6 +816,9 @@ static ssize_t show_color(struct device *dev,
 	char *p = buf;
 	int color, r, g, b;
 
+	if (led->api_rev == LED_API_NUC6)
+		return nuc6_show_color(dev, attr, buf);
+
 	if (led->indicator == LED_IND_DISABLE)
 		return -ENODEV;
 
@@ -723,6 +885,9 @@ static ssize_t store_color(struct device *dev,
 	const char *tmp;
 	u8 r, g, b, val;
 
+	if (led->api_rev == LED_API_NUC6)
+		return nuc6_store_color(dev, attr, buf, len);
+
 	if (led->indicator == LED_IND_DISABLE)
 		return -ENODEV;
 
@@ -825,6 +990,9 @@ static umode_t nuc_wmi_led_color_is_visible(struct kobject *kobj,
 	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
 	umode_t mode = attr->mode;
 
+	if (led->api_rev == LED_API_NUC6)
+		return mode;
+
 	if (led->color_type & LED_SINGLE_COLOR)
 		return 0;
 
@@ -978,17 +1146,33 @@ static const struct attribute_group *nuc_wmi_led_attribute_groups[] = {
 	NULL
 };
 
+static const struct attribute_group *nuc_wmi_nuc6_led_attribute_groups[] = {
+	&nuc_wmi_led_color_attribute_group,
+	NULL
+};
+
 static int nuc_wmi_led_register(struct device *dev, struct nuc_nmi_led *led,
 				enum led_api_rev api_rev)
 {
-	int brightness;
+	int ret, brightness;
 
 	led->cdev.name = led_names[led->id];
 	led->dev = dev;
 	led->api_rev = api_rev;
 
 	if (led->api_rev == LED_API_NUC6) {
-		// FIXME: add NUC6-specific API bits here
+		brightness = -1;
+		ret = nuc_wmi_nuc6_led_get_set(dev, led, &brightness,
+					       NULL, NULL);
+		if (ret)
+			return ret;
+
+		led->cdev.groups = nuc_wmi_nuc6_led_attribute_groups;
+		led->cdev.delayed_set_value = brightness;
+		led->cdev.max_brightness = 100;
+		led->cdev.brightness_get = nuc_wmi_nuc6_get_brightness;
+		led->cdev.brightness_set_blocking = nuc_wmi_nuc6_set_brightness;
+
 		return devm_led_classdev_register(dev, &led->cdev);
 	}
 
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

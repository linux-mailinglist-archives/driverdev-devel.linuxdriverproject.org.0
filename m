Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E11E9381E4D
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 May 2021 12:54:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7DF9E40424;
	Sun, 16 May 2021 10:54:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WTJt21Z-ZqOP; Sun, 16 May 2021 10:54:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23AB140319;
	Sun, 16 May 2021 10:54:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 443951BF9AF
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2F591402DA
 for <devel@linuxdriverproject.org>; Sun, 16 May 2021 10:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p4GZePDfXd11 for <devel@linuxdriverproject.org>;
 Sun, 16 May 2021 10:53:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 61C6540305
 for <devel@driverdev.osuosl.org>; Sun, 16 May 2021 10:53:54 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 265C9611CC;
 Sun, 16 May 2021 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621162433;
 bh=WM2iuSvtezDRaqlgdmB17sPpg7zZn+j42PMcFTrt4bc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Zy3yle/WKZ/2DtE5a1+AK57yCx/N6Fsxeibn9zbKF+5m1B+Fldqt66JDuNQsbAL1B
 zx+yBoHi40Dd59RRINh/GxSSiGNccluyTFfwQEiCTGZXuEVms0whCcE7R3j2K328Y6
 iQ0dRqwCV8nfdMUQdxGylVUhgXiL+rHM+GNOoXoxYhbp1Ueb1naQw74SB/z+Vx1H17
 3s58zevf+0x0E1RDkMQWgMl7nZxzCQidgdKQ4KiZBr1I4soAq2WjGYg8PpwxoJ52EW
 O34XAzT6KUz+gUJZ4AX7L7rijQ3geC5PKPXlz2y4k1WT4MAQPbRodk4nTP3dFmqk9C
 bmpCEFWpBg5/g==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1liEP9-003s8u-9X; Sun, 16 May 2021 12:53:51 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 15/17] staging: nuc-wmi: add support for changing the ethernet
 type indicator
Date: Sun, 16 May 2021 12:53:43 +0200
Message-Id: <9cbbdd508f0769221fa43be0c3fb6f7910f5a331.1621161037.git.mchehab+huawei@kernel.org>
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

The Ethernet type indicator can be configured to show the status
of LAN1, LAN1 or both. Add support for it.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/nuc-led/nuc-wmi.c | 89 +++++++++++++++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/drivers/staging/nuc-led/nuc-wmi.c b/drivers/staging/nuc-led/nuc-wmi.c
index fab0094a20e4..9e8164cd77ec 100644
--- a/drivers/staging/nuc-led/nuc-wmi.c
+++ b/drivers/staging/nuc-led/nuc-wmi.c
@@ -1695,12 +1695,100 @@ static ssize_t store_hdd_default(struct device *dev,
 	return len;
 }
 
+/* Ethernet type  */
+static const char * const ethernet_type[] = {
+	"LAN1",
+	"LAN2",
+	"LAN1+LAN2"
+};
+
+static ssize_t show_ethernet_type(struct device *dev,
+				   struct device_attribute *attr,
+				   char *buf)
+{
+	struct led_classdev *cdev = dev_get_drvdata(dev);
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+	u8 input[NUM_INPUT_ARGS] = { 0 };
+	u8 output[NUM_OUTPUT_ARGS];
+	int ctrl, ret, val, i, n;
+	int size = PAGE_SIZE;
+	char *p = buf;
+
+	if (led->indicator != LED_IND_ETHERNET)
+		return -EINVAL;
+
+	ctrl = led->reg_table[led->indicator][LED_FUNC_ETH_TYPE];
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
+	for (i = 0; i < ARRAY_SIZE(ethernet_type); i++) {
+		if (i == val)
+			n = scnprintf(p, size, "[%s]  ", ethernet_type[i]);
+		else
+			n = scnprintf(p, size, "%s  ", ethernet_type[i]);
+		p += n;
+		size -= n;
+	}
+	size -= scnprintf(p, size, "\n");
+
+	return PAGE_SIZE - size;
+}
+
+static ssize_t store_ethernet_type(struct device *dev,
+				    struct device_attribute *attr,
+				    const char *buf, size_t len)
+{
+	struct led_classdev *cdev = dev_get_drvdata(dev);
+	struct nuc_nmi_led *led = container_of(cdev, struct nuc_nmi_led, cdev);
+	u8 input[NUM_INPUT_ARGS] = { 0 };
+	int ctrl, val, ret;
+	const char *tmp;
+
+	if (led->indicator != LED_IND_ETHERNET)
+		return -EINVAL;
+
+	ctrl = led->reg_table[led->indicator][LED_FUNC_ETH_TYPE];
+
+	if (!nuc_wmi_test_control(dev, led, ctrl))
+		return -ENODEV;
+
+	for (val = 0; val < ARRAY_SIZE(ethernet_type); val++)
+		if (!strcasecmp(tmp, ethernet_type[val]))
+			break;
+
+	if (val >= ARRAY_SIZE(ethernet_type))
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
 
 static LED_ATTR_RW(indicator);
 static LED_ATTR_RW(color);
 static LED_ATTR_RW(blink_behavior);
 static LED_ATTR_RW(blink_frequency);
 static LED_ATTR_RW(hdd_default);
+static LED_ATTR_RW(ethernet_type);
 
 LED_ATTR_POWER_STATE_RW(s0_brightness, brightness, 0);
 LED_ATTR_POWER_STATE_RW(s0_blink_behavior, blink_behavior, 0);
@@ -1729,6 +1817,7 @@ LED_ATTR_POWER_STATE_RW(standby_blink_frequency, blink_frequency, 2);
 static struct attribute *nuc_wmi_led_attr[] = {
 	&dev_attr_indicator.attr,
 	&dev_attr_hdd_default.attr,
+	&dev_attr_ethernet_type.attr,
 	NULL,
 };
 
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

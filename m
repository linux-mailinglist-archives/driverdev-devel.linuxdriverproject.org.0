Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 246D82D030A
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 11:53:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D49E86E8D;
	Sun,  6 Dec 2020 10:53:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wbX1c3KxoRnn; Sun,  6 Dec 2020 10:53:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8EAE87051;
	Sun,  6 Dec 2020 10:53:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA7D81BF5E0
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 10:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C1BB086969
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 10:53:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B_Tr6ChNA8Fs for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 10:53:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D364686985
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 10:53:37 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id k14so9802914wrn.1
 for <devel@driverdev.osuosl.org>; Sun, 06 Dec 2020 02:53:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rhwZAV3eKMtxp3H1CRRBlzG2XWrWtcdxKEWScJZQEDE=;
 b=D5/dNWcJIl/r8GFvLonqTR1+zFAnKn5yTBn7EVgUwH7mbuXGKopA6zU/ip6OWEs7Bh
 1nMuYONqSbBg567su/U1aaJnnLfsIJyPVVnR/U8bbl8nRjfEYWCjPKTqWy4If0M7Zc4B
 SU2PxXiZGUmYtFbwKvtDOGNREpFMBArgVQPmywV1pat9MWi9BpKTng544e/QjUyuKkpJ
 8GDh+zPrB1J1CFO0G6EuBjt2Jt0ZaZ/XcecvyiOoYWFezTB1fLei2AQf25dzWkSwfmp9
 +EYDHvtRZHYiMElCPCSsKmd9ySSLC4wdk6Xd9HYeEZigSb6lH9tME2bXBgSjgsb/Buq/
 ALpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rhwZAV3eKMtxp3H1CRRBlzG2XWrWtcdxKEWScJZQEDE=;
 b=oZDLqbOh96DzsWwT0fRbasGkK2ziIWBKjrfmsTHkZttfbS/ftua161cWdK4kfw7sXC
 O0nnDxoxItbA5iReT8wRIKmfqidVAxK9jxV0tu8Mlg56UNDx2YMP0cgvzNdzRM8N7Mt2
 S8IhOWUOoxvKKawIXGUznXQe9ISglMUKE2uU4gbNTRQ3WYy0q6e8yWriQMOoI2o3xTZQ
 osDcGLXUYNVoIvGfwheItRKGZ/Gm+FX7d+rsQz5JIFuSar82xo8JoKXrLQOwVHxDsOg9
 gMLzjW6YDCVaCOj5CqBIYMQEInnBr/Cl9jGFDzJASxzIw0H8ThQaOTWdZ314pz7WkHTf
 cnvA==
X-Gm-Message-State: AOAM530VMI/wkRIJZJwNg9FhZvwJSn4n4wF9YArIXEt7jckkQVfvxKwh
 V7jrv3P9Xbyz6vOacj9zA/k=
X-Google-Smtp-Source: ABdhPJz/c1q7AEPX6j8VVX7WMMOgMyZumfUs+CtkcMGXKT7BWV+dreb78Hl/l3+np6rKEpRITMvmOg==
X-Received: by 2002:adf:90f1:: with SMTP id
 i104mr10783733wri.348.1607252016391; 
 Sun, 06 Dec 2020 02:53:36 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id v64sm10134049wme.25.2020.12.06.02.53.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Dec 2020 02:53:35 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pinctrl: stop using the deprecated
 'pinctrl_add_gpio_range'
Date: Sun,  6 Dec 2020 11:53:33 +0100
Message-Id: <20201206105333.18428-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: hackpascal@gmail.com, devel@driverdev.osuosl.org, linus.walleij@linaro.org,
 yanaijie@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If the gpio DT node has the 'gpio-ranges' property, the range will be
added by the gpio core and doesn't need to be added by the pinctrl
driver.

By having the gpio-ranges property, we can map every pin between
gpio node and pinctrl node and we can stop using the deprecated
pinctrl_add_gpio_range() function.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi        |  1 +
 .../staging/mt7621-pinctrl/pinctrl-rt2880.c   | 29 -------------------
 2 files changed, 1 insertion(+), 29 deletions(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 82aa93634eda..5b9d3bf82cb1 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -90,6 +90,7 @@ gpio: gpio@600 {
 			#interrupt-cells = <2>;
 			compatible = "mediatek,mt7621-gpio";
 			gpio-controller;
+			gpio-ranges = <&pinctrl 0 0 95>;
 			interrupt-controller;
 			reg = <0x600 0x100>;
 			interrupt-parent = <&gic>;
diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
index caaf9e34f1ee..e61dbe186bc9 100644
--- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
+++ b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
@@ -318,7 +318,6 @@ static int rt2880_pinmux_probe(struct platform_device *pdev)
 {
 	struct rt2880_priv *p;
 	struct pinctrl_dev *dev;
-	struct device_node *np;
 
 	if (!rt2880_pinmux_data)
 		return -ENOTSUPP;
@@ -346,34 +345,6 @@ static int rt2880_pinmux_probe(struct platform_device *pdev)
 	if (IS_ERR(dev))
 		return PTR_ERR(dev);
 
-	/* finalize by adding gpio ranges for enables gpio controllers */
-	for_each_compatible_node(np, NULL, "ralink,rt2880-gpio") {
-		const __be32 *ngpio, *gpiobase;
-		struct pinctrl_gpio_range *range;
-
-		if (!of_device_is_available(np))
-			continue;
-
-		ngpio = of_get_property(np, "ralink,num-gpios", NULL);
-		gpiobase = of_get_property(np, "ralink,gpio-base", NULL);
-		if (!ngpio || !gpiobase) {
-			dev_err(&pdev->dev, "failed to load chip info\n");
-			of_node_put(np);
-			return -EINVAL;
-		}
-
-		range = devm_kzalloc(p->dev, sizeof(*range), GFP_KERNEL);
-		if (!range) {
-			of_node_put(np);
-			return -ENOMEM;
-		}
-		range->name = "pio";
-		range->npins = __be32_to_cpu(*ngpio);
-		range->base = __be32_to_cpu(*gpiobase);
-		range->pin_base = range->base;
-		pinctrl_add_gpio_range(dev, range);
-	}
-
 	return 0;
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8DB2D1954
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 20:21:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DAE718705D;
	Mon,  7 Dec 2020 19:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IkkLG5sEJ33Q; Mon,  7 Dec 2020 19:21:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A87D186F43;
	Mon,  7 Dec 2020 19:21:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 780961BF3F2
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6EB4F8760F
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Tv+TJYdCD3W for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 19:21:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C58B587614
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 19:21:12 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id l9so4746112wrt.13
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 11:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OquXtK88n9i8oJngPGmC+vj+r5cnlBwk5fKEK94+PAU=;
 b=pJY5pO7LFpV+AbQYnUfQM82CmVfnrn34tm7D76k6iQmCROePI5o00zIHE9UUxLmhZd
 +W9b3gcQGzIKlpx2nInYJkqizFbmZd25XcMYGTJHJ1IaetwIoDDfqPWGSsXWXD/buOAa
 BtEQRCd2eEiyKj6FDNPVwPlGIc3o/Z0lob4BujuB+Mke8FbkJMtIEGZaM+sm95Dx1NSZ
 Vo4VZnuFbFnOwxKDd4Wkx5hG7gr+lUBT+5LVLnUvNmfk/kvahuRZFfusxSOxGs1Ys1rQ
 mY09Dw2a7ZcdgHe9z5473asgTmYx/aUBPnVQJ64/nzk3PZcH+E3ZX33n7a2YEQR8eGkK
 5X7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OquXtK88n9i8oJngPGmC+vj+r5cnlBwk5fKEK94+PAU=;
 b=C96dm/vRFgi9s9aPWuIbH5NRjNaPmHkM3Ax1OH3TppofuLDQzLIOJN4+S+eIvTePif
 Rno7TYJOc9SovYZ6swvgcqWTQ4/2r+oUCaxuLzZi0TyEQdJ9sDhKHrFWAqKStuOHeh2d
 VsxPQTkyW6EOYYnIusDny9FP2zuOG5N5RcLuogAgFUCdAbXqn5vKLg/KA94pLFwLsc2b
 y9UVC6mt/o1n4ZA0veg9C4YM/RZPbueYxww753wXdG1ZSokmI1IfdG8cMMX9w0dPQXFS
 dFBSRF+kQBDWWXxVO6R+VIZQMW7DNuIZ/loWsHyT1Zgp1o53/fpTbMOavF/MrPjlG70o
 LMnA==
X-Gm-Message-State: AOAM530CRVM1YbIy0wOzgQUSSNtlQnpVk63JyXtsCDkuNz9T9/SzKI33
 +l5KmgJ+r3MGwpVGeNEP2SU=
X-Google-Smtp-Source: ABdhPJzm8a2gaxg56rJIyQ1LKmZG/pCqwv9We0WnYfcDTbUOD7SjhdTZjtOnBPUxjsFicIe8/MwKUQ==
X-Received: by 2002:adf:eb07:: with SMTP id s7mr17250498wrn.414.1607368871339; 
 Mon, 07 Dec 2020 11:21:11 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id 20sm276978wmk.16.2020.12.07.11.21.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Dec 2020 11:21:10 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH 3/3] staging: mt7621-pinctrl: remove driver from staging
Date: Mon,  7 Dec 2020 20:21:04 +0100
Message-Id: <20201207192104.6046-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201207192104.6046-1-sergio.paracuellos@gmail.com>
References: <20201207192104.6046-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, yanaijie@huawei.com,
 gregkh@linuxfoundation.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove this driver from staging because it has been moved
into its properly place in the kernel.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/mt7621-pinctrl/Kconfig        |   6 -
 drivers/staging/mt7621-pinctrl/Makefile       |   4 -
 drivers/staging/mt7621-pinctrl/TODO           |   6 -
 .../staging/mt7621-pinctrl/pinctrl-rt2880.c   | 370 ------------------
 6 files changed, 389 deletions(-)
 delete mode 100644 drivers/staging/mt7621-pinctrl/Kconfig
 delete mode 100644 drivers/staging/mt7621-pinctrl/Makefile
 delete mode 100644 drivers/staging/mt7621-pinctrl/TODO
 delete mode 100644 drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c

diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index 9b7cb7c5766a..c42708e60afc 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -94,8 +94,6 @@ source "drivers/staging/mt7621-pci/Kconfig"
 
 source "drivers/staging/mt7621-pci-phy/Kconfig"
 
-source "drivers/staging/mt7621-pinctrl/Kconfig"
-
 source "drivers/staging/mt7621-dma/Kconfig"
 
 source "drivers/staging/ralink-gdma/Kconfig"
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index 38226737c9f3..ebcc646d7b51 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -37,7 +37,6 @@ obj-$(CONFIG_BCM2835_VCHIQ)	+= vc04_services/
 obj-$(CONFIG_PI433)		+= pi433/
 obj-$(CONFIG_PCI_MT7621)	+= mt7621-pci/
 obj-$(CONFIG_PCI_MT7621_PHY)	+= mt7621-pci-phy/
-obj-$(CONFIG_PINCTRL_RT2880)	+= mt7621-pinctrl/
 obj-$(CONFIG_SOC_MT7621)	+= mt7621-dma/
 obj-$(CONFIG_DMA_RALINK)	+= ralink-gdma/
 obj-$(CONFIG_SOC_MT7621)	+= mt7621-dts/
diff --git a/drivers/staging/mt7621-pinctrl/Kconfig b/drivers/staging/mt7621-pinctrl/Kconfig
deleted file mode 100644
index f42974026480..000000000000
--- a/drivers/staging/mt7621-pinctrl/Kconfig
+++ /dev/null
@@ -1,6 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-config PINCTRL_RT2880
-	bool "RT2800 pinctrl driver for RALINK/Mediatek SOCs"
-	depends on RALINK
-	select PINMUX
-	select GENERIC_PINCONF
diff --git a/drivers/staging/mt7621-pinctrl/Makefile b/drivers/staging/mt7621-pinctrl/Makefile
deleted file mode 100644
index 49445f40c3cd..000000000000
--- a/drivers/staging/mt7621-pinctrl/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_PINCTRL_RT2880)   += pinctrl-rt2880.o
-
-ccflags-y += -I$(srctree)/drivers/pinctrl
diff --git a/drivers/staging/mt7621-pinctrl/TODO b/drivers/staging/mt7621-pinctrl/TODO
deleted file mode 100644
index b2c235a16d5c..000000000000
--- a/drivers/staging/mt7621-pinctrl/TODO
+++ /dev/null
@@ -1,6 +0,0 @@
-
-- general code review and cleanup
-- should probably be always selected by 'config RALINK'
-- ensure device-tree requirements are documented
-
-Cc: NeilBrown <neil@brown.name>
diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
deleted file mode 100644
index e61dbe186bc9..000000000000
--- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
+++ /dev/null
@@ -1,370 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- *  Copyright (C) 2013 John Crispin <blogic@openwrt.org>
- */
-
-#include <linux/module.h>
-#include <linux/device.h>
-#include <linux/io.h>
-#include <linux/platform_device.h>
-#include <linux/slab.h>
-#include <linux/of.h>
-#include <linux/pinctrl/pinctrl.h>
-#include <linux/pinctrl/pinconf.h>
-#include <linux/pinctrl/pinconf-generic.h>
-#include <linux/pinctrl/pinmux.h>
-#include <linux/pinctrl/consumer.h>
-#include <linux/pinctrl/machine.h>
-
-#include <asm/mach-ralink/ralink_regs.h>
-#include <asm/mach-ralink/pinmux.h>
-#include <asm/mach-ralink/mt7620.h>
-
-#include "core.h"
-#include "pinctrl-utils.h"
-
-#define SYSC_REG_GPIO_MODE	0x60
-#define SYSC_REG_GPIO_MODE2	0x64
-
-struct rt2880_priv {
-	struct device *dev;
-
-	struct pinctrl_pin_desc *pads;
-	struct pinctrl_desc *desc;
-
-	struct rt2880_pmx_func **func;
-	int func_count;
-
-	struct rt2880_pmx_group *groups;
-	const char **group_names;
-	int group_count;
-
-	u8 *gpio;
-	int max_pins;
-};
-
-static int rt2880_get_group_count(struct pinctrl_dev *pctrldev)
-{
-	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
-
-	return p->group_count;
-}
-
-static const char *rt2880_get_group_name(struct pinctrl_dev *pctrldev,
-					 unsigned int group)
-{
-	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
-
-	return (group >= p->group_count) ? NULL : p->group_names[group];
-}
-
-static int rt2880_get_group_pins(struct pinctrl_dev *pctrldev,
-				 unsigned int group,
-				 const unsigned int **pins,
-				 unsigned int *num_pins)
-{
-	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
-
-	if (group >= p->group_count)
-		return -EINVAL;
-
-	*pins = p->groups[group].func[0].pins;
-	*num_pins = p->groups[group].func[0].pin_count;
-
-	return 0;
-}
-
-static const struct pinctrl_ops rt2880_pctrl_ops = {
-	.get_groups_count	= rt2880_get_group_count,
-	.get_group_name		= rt2880_get_group_name,
-	.get_group_pins		= rt2880_get_group_pins,
-	.dt_node_to_map		= pinconf_generic_dt_node_to_map_all,
-	.dt_free_map		= pinconf_generic_dt_free_map,
-};
-
-static int rt2880_pmx_func_count(struct pinctrl_dev *pctrldev)
-{
-	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
-
-	return p->func_count;
-}
-
-static const char *rt2880_pmx_func_name(struct pinctrl_dev *pctrldev,
-					unsigned int func)
-{
-	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
-
-	return p->func[func]->name;
-}
-
-static int rt2880_pmx_group_get_groups(struct pinctrl_dev *pctrldev,
-				       unsigned int func,
-				       const char * const **groups,
-				       unsigned int * const num_groups)
-{
-	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
-
-	if (p->func[func]->group_count == 1)
-		*groups = &p->group_names[p->func[func]->groups[0]];
-	else
-		*groups = p->group_names;
-
-	*num_groups = p->func[func]->group_count;
-
-	return 0;
-}
-
-static int rt2880_pmx_group_enable(struct pinctrl_dev *pctrldev,
-				   unsigned int func, unsigned int group)
-{
-	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
-	u32 mode = 0;
-	u32 reg = SYSC_REG_GPIO_MODE;
-	int i;
-	int shift;
-
-	/* dont allow double use */
-	if (p->groups[group].enabled) {
-		dev_err(p->dev, "%s is already enabled\n",
-			p->groups[group].name);
-		return -EBUSY;
-	}
-
-	p->groups[group].enabled = 1;
-	p->func[func]->enabled = 1;
-
-	shift = p->groups[group].shift;
-	if (shift >= 32) {
-		shift -= 32;
-		reg = SYSC_REG_GPIO_MODE2;
-	}
-	mode = rt_sysc_r32(reg);
-	mode &= ~(p->groups[group].mask << shift);
-
-	/* mark the pins as gpio */
-	for (i = 0; i < p->groups[group].func[0].pin_count; i++)
-		p->gpio[p->groups[group].func[0].pins[i]] = 1;
-
-	/* function 0 is gpio and needs special handling */
-	if (func == 0) {
-		mode |= p->groups[group].gpio << shift;
-	} else {
-		for (i = 0; i < p->func[func]->pin_count; i++)
-			p->gpio[p->func[func]->pins[i]] = 0;
-		mode |= p->func[func]->value << shift;
-	}
-	rt_sysc_w32(mode, reg);
-
-	return 0;
-}
-
-static int rt2880_pmx_group_gpio_request_enable(struct pinctrl_dev *pctrldev,
-						struct pinctrl_gpio_range *range,
-						unsigned int pin)
-{
-	struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);
-
-	if (!p->gpio[pin]) {
-		dev_err(p->dev, "pin %d is not set to gpio mux\n", pin);
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static const struct pinmux_ops rt2880_pmx_group_ops = {
-	.get_functions_count	= rt2880_pmx_func_count,
-	.get_function_name	= rt2880_pmx_func_name,
-	.get_function_groups	= rt2880_pmx_group_get_groups,
-	.set_mux		= rt2880_pmx_group_enable,
-	.gpio_request_enable	= rt2880_pmx_group_gpio_request_enable,
-};
-
-static struct pinctrl_desc rt2880_pctrl_desc = {
-	.owner		= THIS_MODULE,
-	.name		= "rt2880-pinmux",
-	.pctlops	= &rt2880_pctrl_ops,
-	.pmxops		= &rt2880_pmx_group_ops,
-};
-
-static struct rt2880_pmx_func gpio_func = {
-	.name = "gpio",
-};
-
-static int rt2880_pinmux_index(struct rt2880_priv *p)
-{
-	struct rt2880_pmx_func **f;
-	struct rt2880_pmx_group *mux = p->groups;
-	int i, j, c = 0;
-
-	/* count the mux functions */
-	while (mux->name) {
-		p->group_count++;
-		mux++;
-	}
-
-	/* allocate the group names array needed by the gpio function */
-	p->group_names = devm_kcalloc(p->dev, p->group_count,
-				      sizeof(char *), GFP_KERNEL);
-	if (!p->group_names)
-		return -1;
-
-	for (i = 0; i < p->group_count; i++) {
-		p->group_names[i] = p->groups[i].name;
-		p->func_count += p->groups[i].func_count;
-	}
-
-	/* we have a dummy function[0] for gpio */
-	p->func_count++;
-
-	/* allocate our function and group mapping index buffers */
-	f = p->func = devm_kcalloc(p->dev,
-				   p->func_count,
-				   sizeof(*p->func),
-				   GFP_KERNEL);
-	gpio_func.groups = devm_kcalloc(p->dev, p->group_count, sizeof(int),
-					GFP_KERNEL);
-	if (!f || !gpio_func.groups)
-		return -1;
-
-	/* add a backpointer to the function so it knows its group */
-	gpio_func.group_count = p->group_count;
-	for (i = 0; i < gpio_func.group_count; i++)
-		gpio_func.groups[i] = i;
-
-	f[c] = &gpio_func;
-	c++;
-
-	/* add remaining functions */
-	for (i = 0; i < p->group_count; i++) {
-		for (j = 0; j < p->groups[i].func_count; j++) {
-			f[c] = &p->groups[i].func[j];
-			f[c]->groups = devm_kzalloc(p->dev, sizeof(int),
-						    GFP_KERNEL);
-			f[c]->groups[0] = i;
-			f[c]->group_count = 1;
-			c++;
-		}
-	}
-	return 0;
-}
-
-static int rt2880_pinmux_pins(struct rt2880_priv *p)
-{
-	int i, j;
-
-	/*
-	 * loop over the functions and initialize the pins array.
-	 * also work out the highest pin used.
-	 */
-	for (i = 0; i < p->func_count; i++) {
-		int pin;
-
-		if (!p->func[i]->pin_count)
-			continue;
-
-		p->func[i]->pins = devm_kcalloc(p->dev,
-						p->func[i]->pin_count,
-						sizeof(int),
-						GFP_KERNEL);
-		for (j = 0; j < p->func[i]->pin_count; j++)
-			p->func[i]->pins[j] = p->func[i]->pin_first + j;
-
-		pin = p->func[i]->pin_first + p->func[i]->pin_count;
-		if (pin > p->max_pins)
-			p->max_pins = pin;
-	}
-
-	/* the buffer that tells us which pins are gpio */
-	p->gpio = devm_kcalloc(p->dev, p->max_pins, sizeof(u8), GFP_KERNEL);
-	/* the pads needed to tell pinctrl about our pins */
-	p->pads = devm_kcalloc(p->dev, p->max_pins,
-			       sizeof(struct pinctrl_pin_desc), GFP_KERNEL);
-	if (!p->pads || !p->gpio) {
-		dev_err(p->dev, "Failed to allocate gpio data\n");
-		return -ENOMEM;
-	}
-
-	memset(p->gpio, 1, sizeof(u8) * p->max_pins);
-	for (i = 0; i < p->func_count; i++) {
-		if (!p->func[i]->pin_count)
-			continue;
-
-		for (j = 0; j < p->func[i]->pin_count; j++)
-			p->gpio[p->func[i]->pins[j]] = 0;
-	}
-
-	/* pin 0 is always a gpio */
-	p->gpio[0] = 1;
-
-	/* set the pads */
-	for (i = 0; i < p->max_pins; i++) {
-		/* strlen("ioXY") + 1 = 5 */
-		char *name = devm_kzalloc(p->dev, 5, GFP_KERNEL);
-
-		if (!name)
-			return -ENOMEM;
-		snprintf(name, 5, "io%d", i);
-		p->pads[i].number = i;
-		p->pads[i].name = name;
-	}
-	p->desc->pins = p->pads;
-	p->desc->npins = p->max_pins;
-
-	return 0;
-}
-
-static int rt2880_pinmux_probe(struct platform_device *pdev)
-{
-	struct rt2880_priv *p;
-	struct pinctrl_dev *dev;
-
-	if (!rt2880_pinmux_data)
-		return -ENOTSUPP;
-
-	/* setup the private data */
-	p = devm_kzalloc(&pdev->dev, sizeof(struct rt2880_priv), GFP_KERNEL);
-	if (!p)
-		return -ENOMEM;
-
-	p->dev = &pdev->dev;
-	p->desc = &rt2880_pctrl_desc;
-	p->groups = rt2880_pinmux_data;
-	platform_set_drvdata(pdev, p);
-
-	/* init the device */
-	if (rt2880_pinmux_index(p)) {
-		dev_err(&pdev->dev, "failed to load index\n");
-		return -EINVAL;
-	}
-	if (rt2880_pinmux_pins(p)) {
-		dev_err(&pdev->dev, "failed to load pins\n");
-		return -EINVAL;
-	}
-	dev = pinctrl_register(p->desc, &pdev->dev, p);
-	if (IS_ERR(dev))
-		return PTR_ERR(dev);
-
-	return 0;
-}
-
-static const struct of_device_id rt2880_pinmux_match[] = {
-	{ .compatible = "ralink,rt2880-pinmux" },
-	{},
-};
-MODULE_DEVICE_TABLE(of, rt2880_pinmux_match);
-
-static struct platform_driver rt2880_pinmux_driver = {
-	.probe = rt2880_pinmux_probe,
-	.driver = {
-		.name = "rt2880-pinmux",
-		.of_match_table = rt2880_pinmux_match,
-	},
-};
-
-int __init rt2880_pinmux_init(void)
-{
-	return platform_driver_register(&rt2880_pinmux_driver);
-}
-
-core_initcall_sync(rt2880_pinmux_init);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

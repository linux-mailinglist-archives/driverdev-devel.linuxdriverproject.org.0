Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E616312490
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Feb 2021 15:02:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5902B85DB8;
	Sun,  7 Feb 2021 14:01:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e9J2y5TE21Gp; Sun,  7 Feb 2021 14:01:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8AB6F85784;
	Sun,  7 Feb 2021 14:01:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1D7501BF239
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 14:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1A0E585660
 for <devel@linuxdriverproject.org>; Sun,  7 Feb 2021 14:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yIk29xMAyIQU for <devel@linuxdriverproject.org>;
 Sun,  7 Feb 2021 14:01:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7490485640
 for <devel@driverdev.osuosl.org>; Sun,  7 Feb 2021 14:01:53 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id gx20so7290985pjb.1
 for <devel@driverdev.osuosl.org>; Sun, 07 Feb 2021 06:01:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=BKfhCVrNE1G6tN7jQvqfXJj8IfC/ZteJhEq5g/yoxvw=;
 b=A0bWvrmJDtsuEOYxobKagLrEDwfpdGfBUXyNxSLL2RleOEw8xPFdDHa0z3VhfGU29d
 tUEzSPNkG4BykmsXy5ycaLpCIpWPa/9z8y8Z1p3C0VlkmVlY+aivkjLO0jDWYyAM6dL7
 GPtRwsL6Km2m7ZteMjy0Juw3C2ctMjWJ/KF92jijWzS1FhkcJvvL1w7Y5V88tJT11fSe
 kUIuBt2cwYDSmO0L7DdBPDTzzC6bM4eJN/L2bEOFpmdk2Lfsmmbu5ykiIhqmAaRWqqw1
 XfNFUorWIE0cV9Q9mgJWDShf97oijQgK5KerxxbXeVY9Fcta/xRjF33FBN5419O7gEoE
 EIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BKfhCVrNE1G6tN7jQvqfXJj8IfC/ZteJhEq5g/yoxvw=;
 b=P8OS+QopHSHvLp1Ic/D+/aZkZOmjmqDamtr/TGn5Z/ka/I8OACKBOL5MLBpLW3nsHF
 PteYAhGEgzXzBSHsIw7l7Dfu1RStR7uQTqcF55DT3Wf0gx9O0AbzMd84v6704BMGUMS3
 pdWvlod5J6PyX3q4KpfS0nqRtd72RdZDb/5PIpzbHUej01FkdD6fJsT0sdW6xePhR0mj
 r0HsA+8ckj9iPmZ6LZZd6cGTegNJlgAQVEfZqIjbJHD67VPWcR5FEQ2L73SgTmYalI3u
 OyrDza9ILM2kMu6b6Ai0HM3MWgIG+LYHYooa3WKWmApjhrEZxJM6487JLXTc+WFc5rgo
 s/bQ==
X-Gm-Message-State: AOAM532mFnU34J7av+YlJqIsPUyUd/15vf8DfJ7ujXdfDmhp7JdZEuDJ
 m7dowFpMmMsgXs+owIlBzfg=
X-Google-Smtp-Source: ABdhPJzDD68MGez2ZZeZZdxvQqsQi2a9z4QnBhFgoIJxSTyQ6l8TOC604eXe9zh39aOBBeYk9QX4Dg==
X-Received: by 2002:a17:902:e5cc:b029:df:bc77:3aba with SMTP id
 u12-20020a170902e5ccb02900dfbc773abamr12569541plf.72.1612706512920; 
 Sun, 07 Feb 2021 06:01:52 -0800 (PST)
Received: from bf-rmsz-10.ccdomain.com ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id lf4sm13826283pjb.0.2021.02.07.06.01.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 07 Feb 2021 06:01:52 -0800 (PST)
From: Carlis <zhangxuezhi3@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v15] staging: fbtft: add tearing signal detect
Date: Sun,  7 Feb 2021 22:01:57 +0800
Message-Id: <1612706517-124617-1-git-send-email-zhangxuezhi3@gmail.com>
X-Mailer: git-send-email 1.9.1
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, oliver.graute@kococonnector.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 sbrivio@redhat.com, colin.king@canonical.com, zhangxuezhi1@yulong.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Carlis <zhangxuezhi1@yulong.com>

For st7789v IC, when we need continuous full screen refresh, it is best to
wait for the tearing effect line signal to arrive to avoid screen tearing.

Signed-off-by: Carlis <zhangxuezhi1@yulong.com>
---
v15: change ret value return logic in write_vmem.
v14: change to define TE completion and TE irq only in st7789v.
v13: change TE completion to par data struct member and add a new
     function to deal te gpio request, add new write_vmem function.
v12: change dev_err to dev_err_probe and add space in comments start, and
     delete te_mutex, change te wait logic.
v11: remove devm_gpio_put and change a dev_err to dev_info.
v10: additional notes.
v9: change pr_* to dev_*.
v8: delete a log line.
v7: return error value when request fail.
v6: add te gpio request fail deal logic.
v5: fix log print.
v4: modify some code style and change te irq set function name.
v3: modify author and signed-off-by name.
v2: add release te gpio after irq request fail.
---
 drivers/staging/fbtft/fb_st7789v.c | 115 +++++++++++++++++++++++++++++++++++++
 1 file changed, 115 insertions(+)

diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
index 3a280cc..abe9395 100644
--- a/drivers/staging/fbtft/fb_st7789v.c
+++ b/drivers/staging/fbtft/fb_st7789v.c
@@ -7,9 +7,13 @@
 
 #include <linux/bitops.h>
 #include <linux/delay.h>
+#include <linux/gpio/consumer.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
+#include <linux/interrupt.h>
+#include <linux/completion.h>
 #include <linux/module.h>
+
 #include <video/mipi_display.h>
 
 #include "fbtft.h"
@@ -66,6 +70,62 @@ enum st7789v_command {
 #define MADCTL_MX BIT(6) /* bitmask for column address order */
 #define MADCTL_MY BIT(7) /* bitmask for page address order */
 
+/* 60Hz for 16.6ms, configured as 2*16.6ms */
+#define PANEL_TE_TIMEOUT_MS  33
+
+static struct completion panel_te; /* completion for panel TE line */
+static int irq_te; /* Linux IRQ for LCD TE line */
+
+static irqreturn_t panel_te_handler(int irq, void *data)
+{
+	complete(&panel_te);
+	return IRQ_HANDLED;
+}
+
+/*
+ * init_tearing_effect_line() - init tearing effect line.
+ * @par: FBTFT parameter object.
+ *
+ * Return: 0 on success, or a negative error code otherwise.
+ */
+static int init_tearing_effect_line(struct fbtft_par *par)
+{
+	struct device *dev = par->info->device;
+	struct gpio_desc *te;
+	int rc, irq;
+
+	te = gpiod_get_optional(dev, "te", GPIOD_IN);
+	if (IS_ERR(te))
+		return dev_err_probe(dev, PTR_ERR(te), "Failed to request te GPIO\n");
+
+	/* if te is NULL, indicating no configuration, directly return success */
+	if (!te) {
+		irq_te = 0;
+		return 0;
+	}
+
+	irq = gpiod_to_irq(te);
+
+	/* GPIO is locked as an IRQ, we may drop the reference */
+	gpiod_put(te);
+
+	if (irq < 0)
+		return irq;
+
+	irq_te = irq;
+	init_completion(&panel_te);
+
+	/* The effective state is high and lasts no more than 1000 microseconds */
+	rc = devm_request_irq(dev, irq_te, panel_te_handler,
+			      IRQF_TRIGGER_RISING, "TE_GPIO", par);
+	if (rc)
+		return dev_err_probe(dev, rc, "TE IRQ request failed.\n");
+
+	disable_irq_nosync(irq_te);
+
+	return 0;
+}
+
 /**
  * init_display() - initialize the display controller
  *
@@ -82,6 +142,12 @@ enum st7789v_command {
  */
 static int init_display(struct fbtft_par *par)
 {
+	int rc;
+
+	rc = init_tearing_effect_line(par);
+	if (rc)
+		return rc;
+
 	/* turn off sleep mode */
 	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 	mdelay(120);
@@ -137,6 +203,10 @@ static int init_display(struct fbtft_par *par)
 	 */
 	write_reg(par, PWCTRL1, 0xA4, 0xA1);
 
+	/* TE line output is off by default when powering on */
+	if (irq_te)
+		write_reg(par, MIPI_DCS_SET_TEAR_ON, 0x00);
+
 	write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
 
 	if (HSD20_IPS)
@@ -145,6 +215,50 @@ static int init_display(struct fbtft_par *par)
 	return 0;
 }
 
+/*
+ * write_vmem() - write data to display.
+ * @par: FBTFT parameter object.
+ * @offset: offset from screen_buffer.
+ * @len: the length of data to be writte.
+ *
+ * Return: 0 on success, or a negative error code otherwise.
+ */
+static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
+{
+	struct device *dev = par->info->device;
+	int ret;
+
+	if (irq_te) {
+		enable_irq(irq_te);
+		reinit_completion(&panel_te);
+		ret = wait_for_completion_timeout(&panel_te,
+						  msecs_to_jiffies(PANEL_TE_TIMEOUT_MS));
+		if (ret == 0)
+			dev_err(dev, "wait panel TE timeout\n");
+
+		disable_irq(irq_te);
+	}
+
+	switch (par->pdata->display.buswidth) {
+	case 8:
+		ret = fbtft_write_vmem16_bus8(par, offset, len);
+		break;
+	case 9:
+		ret = fbtft_write_vmem16_bus9(par, offset, len);
+		break;
+	case 16:
+		ret = fbtft_write_vmem16_bus16(par, offset, len);
+		break;
+	default:
+		dev_err(dev, "Unsupported buswidth %d\n",
+			par->pdata->display.buswidth);
+		ret = 0;
+		break;
+	}
+
+	return ret;
+}
+
 /**
  * set_var() - apply LCD properties like rotation and BGR mode
  *
@@ -259,6 +373,7 @@ static int blank(struct fbtft_par *par, bool on)
 	.gamma = HSD20_IPS_GAMMA,
 	.fbtftops = {
 		.init_display = init_display,
+		.write_vmem = write_vmem,
 		.set_var = set_var,
 		.set_gamma = set_gamma,
 		.blank = blank,
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

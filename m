Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DB24D30F31A
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 13:27:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 67D66273D7;
	Thu,  4 Feb 2021 12:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oTgLjGbil3gj; Thu,  4 Feb 2021 12:27:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8A26920770;
	Thu,  4 Feb 2021 12:27:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F7AA1BF3BD
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 12:27:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8F67420476
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 12:27:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1L6Q2FonC2jC for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 12:27:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com
 [209.85.216.46])
 by silver.osuosl.org (Postfix) with ESMTPS id 9B9F22042B
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 12:27:31 +0000 (UTC)
Received: by mail-pj1-f46.google.com with SMTP id d2so1698431pjs.4
 for <devel@driverdev.osuosl.org>; Thu, 04 Feb 2021 04:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1Y3d3B6KufnGucplOiax9QznTkziFjxSJfMH4cZHo4s=;
 b=rU3JUdGZ7yQLykF3SVVkpovurDjbu/b1I7R4gv9FXt2mYPoNZo2ndxz5iZX2WyKkI1
 r2GCR/d8zDF2HADzWos3Nkk3qCup9q2mA0RLapoh+LXVbJUMM5M5S7krRdI6ehba0qo1
 t742rawdSDddtTcExEMWzcLo8VYTHUyBosGLIXemh7FmZm+bsVM44YEw6oi/EWQX2O4V
 xSaTHbk4xMRZIggpm77P8maV+rvyKrQWPeA9KjpQ3Ap1fj1FC9oSKvlrguklK7KBweLB
 eOg5JnzDE2Ogp4awqOyuOUHodoUkZk4jBfk2DO+/T51qypGBJOo3R/VKALJaX9Bkib1e
 CPZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1Y3d3B6KufnGucplOiax9QznTkziFjxSJfMH4cZHo4s=;
 b=bIcfGvghKxklcc2mvOfKAcGI7ZkbqUglq0q2GcLL32Ht/VIeB1wh/ymkFQnHnkDczG
 xtv0E7lnXb23OahEQrksUbYZlg1l32gqeit5dRdsxK9ttYGhenw3vPx37ihMT7tFgNkg
 8MFJKXmCuUG0HB4F6lvubdaauwUaRYNtpREfblXbHuoM3EJ+WMCmJxBTLSHd6JB/DDf+
 cTBRc+TdThBy4+hby2vqGNG4mAtUv4Dx03cvyHhUlQBROSsyo+i/1+5QzXqDHlWnt2w7
 tlYtVM8wY8g7GT/xzvfZg/lz8kW5y6fqyluzzBKm26cGGQ2KREnQIefng2/Hb7Fygczv
 idwA==
X-Gm-Message-State: AOAM531hVyFuoE+3YeFJjRc+faRGOGOw9SOFW304oaa8CtcaA3YF5nRC
 lPgK99+dWCS+7N94w/q04Yg=
X-Google-Smtp-Source: ABdhPJxJq48W+Supw/2PYsdt0uVcGO6NCvm73L3BI3+oiJGMtXAJadL0egPJIncoiVwgcWpL6VqS1Q==
X-Received: by 2002:a17:902:aa08:b029:e0:52c:ab81 with SMTP id
 be8-20020a170902aa08b02900e0052cab81mr7933796plb.83.1612441651258; 
 Thu, 04 Feb 2021 04:27:31 -0800 (PST)
Received: from bf-rmsz-10.ccdomain.com ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id l10sm5270700pjt.6.2021.02.04.04.27.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 04 Feb 2021 04:27:30 -0800 (PST)
From: Carlis <zhangxuezhi3@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v14] staging: fbtft: add tearing signal detect
Date: Thu,  4 Feb 2021 20:27:34 +0800
Message-Id: <1612441654-150036-1-git-send-email-zhangxuezhi3@gmail.com>
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
index 3a280cc..ee8866d 100644
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
+	ret = 0;
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

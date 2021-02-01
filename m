Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8244830A8E6
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Feb 2021 14:38:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 198AD867C9;
	Mon,  1 Feb 2021 13:38:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aAHv1MN01Wkh; Mon,  1 Feb 2021 13:38:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8A5B867A7;
	Mon,  1 Feb 2021 13:38:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 914111BF358
 for <devel@linuxdriverproject.org>; Mon,  1 Feb 2021 13:38:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D42A86FA0
 for <devel@linuxdriverproject.org>; Mon,  1 Feb 2021 13:38:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2bpY39ni0dAO for <devel@linuxdriverproject.org>;
 Mon,  1 Feb 2021 13:38:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE1DA86F77
 for <devel@driverdev.osuosl.org>; Mon,  1 Feb 2021 13:38:20 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id m6so11607502pfk.1
 for <devel@driverdev.osuosl.org>; Mon, 01 Feb 2021 05:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7Caf+TB7h06nb0xxu/+sgOXyFULnYGYCV3FXEmFfuj0=;
 b=HnJZZN66mPlNbBSAdES3ijMvErvph2BvCvS/hx6+qoXWGuh2iYq9FY0h7ET9B3EhQY
 Fh3kK+qIVAF6WlCVVAj/K26djrrq8irbt5Q/c26ZNc6wqPGAk1YecW97F0tP7602ox2P
 ITC6IJfE6d9qw/FvuB6a/l2wgtzUZ5nnwCWhCxK+MuGQ481xH6/mi/172gtL9L/gIvaY
 QD0pmjB87eUeOKgxQdA2+1/TG4LBc377OhIfwQtbg10mkFLndBtQ7T4MzHPylaF2kZ+o
 phphNUb7mopfNTi08AuwWztiTEQBfsKEHJ1hdc3WCjPQYCe4eGVB/Om+dY3cc9auB1rz
 pO5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7Caf+TB7h06nb0xxu/+sgOXyFULnYGYCV3FXEmFfuj0=;
 b=hvgsGNj/ZKwsvZ5a7dheNeuHmk9bqdS33rYii9sBphfon6MCg+ch4ci8Z7Vlhc2o4g
 vcmKYhJQ+Wl2BT/BVpCSHLnKO7adVRMe1Q3OJvkELvOeRYox8/BFgd7r8VH854RhtMbP
 t5/kAO+ttW6E7xBElehTvRtgRDlCrjsoRexY1bGRqIYIVTdfa9EjfKjOPkkW8p8ZDHPc
 w0FkzuYiSTnmaM5NbyJJbshgz92307GH97vJQD1mDFW3UrvaHz05vgGMW2CHNZu13HwW
 r/yydgo3ZixwtUcJRvyVbclGLvgMtjXndMBbkSmbXxUlMAphYDrAx/TEa57e5N40g0U4
 sEZQ==
X-Gm-Message-State: AOAM532MTnO4o9U44m5W4Qcmt0M81AJK29SPxVVfcgxLbrUxkNm2YzZ/
 OEwWEqOlmRQ3Tw09q/Dsd/I=
X-Google-Smtp-Source: ABdhPJwUgQ7Es/Fic0jA/FSGL4cg/vEKJivgdQ/LGulL6iqxcF4SmqtgM7X+Buc+5Cg5X9pR4g3ZKg==
X-Received: by 2002:a63:5221:: with SMTP id g33mr16966842pgb.202.1612186700238; 
 Mon, 01 Feb 2021 05:38:20 -0800 (PST)
Received: from bf-rmsz-10.ccdomain.com ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id bj18sm15670597pjb.40.2021.02.01.05.38.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Feb 2021 05:38:19 -0800 (PST)
From: Carlis <zhangxuezhi3@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v13] staging: fbtft: add tearing signal detect
Date: Mon,  1 Feb 2021 21:38:24 +0800
Message-Id: <1612186704-161451-1-git-send-email-zhangxuezhi3@gmail.com>
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
v13: change TE completion to par data struct member and add a new
     function to deal te gpio request, move wait logic to fbtft_write_vmem16_bus8.
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
 drivers/staging/fbtft/fb_st7789v.c | 112 +++++++++++++++++++++++++++++++++++++
 drivers/staging/fbtft/fbtft.h      |   5 ++
 2 files changed, 117 insertions(+)

diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
index 3a280cc..7b41bad 100644
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
@@ -66,6 +70,59 @@ enum st7789v_command {
 #define MADCTL_MX BIT(6) /* bitmask for column address order */
 #define MADCTL_MY BIT(7) /* bitmask for page address order */
 
+/* 60Hz for 16.6ms, configured as 2*16.6ms */
+#define PANEL_TE_TIMEOUT_MS  33
+
+static irqreturn_t panel_te_handler(int irq, void *data)
+{
+	struct fbtft_par *par = (struct fbtft_par *)data;
+
+	complete(&par->panel_te);
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
+	if (!te)
+		return 0;
+
+	irq = gpiod_to_irq(te);
+
+	/* GPIO is locked as an IRQ, we may drop the reference */
+	gpiod_put(te);
+
+	if (irq < 0)
+		return irq;
+
+	par->irq_te = irq;
+	init_completion(&par->panel_te);
+
+	/* The effective state is high and lasts no more than 1000 microseconds */
+	rc = devm_request_irq(dev, par->irq_te, panel_te_handler,
+			      IRQF_TRIGGER_RISING, "TE_GPIO", par);
+	if (rc)
+		return dev_err_probe(dev, rc, "TE IRQ request failed.\n");
+
+	disable_irq_nosync(par->irq_te);
+
+	return 0;
+}
+
 /**
  * init_display() - initialize the display controller
  *
@@ -82,6 +139,12 @@ enum st7789v_command {
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
@@ -137,6 +200,10 @@ static int init_display(struct fbtft_par *par)
 	 */
 	write_reg(par, PWCTRL1, 0xA4, 0xA1);
 
+	/* TE line output is off by default when powering on */
+	if (par->irq_te)
+		write_reg(par, MIPI_DCS_SET_TEAR_ON, 0x00);
+
 	write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
 
 	if (HSD20_IPS)
@@ -145,6 +212,50 @@ static int init_display(struct fbtft_par *par)
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
+	if (par->irq_te) {
+		enable_irq(par->irq_te);
+		reinit_completion(&par->panel_te);
+		ret = wait_for_completion_timeout(&par->panel_te,
+						  msecs_to_jiffies(PANEL_TE_TIMEOUT_MS));
+		if (ret == 0)
+			dev_err(dev, "wait panel TE timeout\n");
+
+		disable_irq(par->irq_te);
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
@@ -259,6 +370,7 @@ static int blank(struct fbtft_par *par, bool on)
 	.gamma = HSD20_IPS_GAMMA,
 	.fbtftops = {
 		.init_display = init_display,
+		.write_vmem = write_vmem,
 		.set_var = set_var,
 		.set_gamma = set_gamma,
 		.blank = blank,
diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 76f8c09..61c7207 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -8,6 +8,7 @@
 #include <linux/spinlock.h>
 #include <linux/spi/spi.h>
 #include <linux/platform_device.h>
+#include <linux/completion.h>
 
 #define FBTFT_ONBOARD_BACKLIGHT 2
 
@@ -165,6 +166,8 @@ struct fbtft_platform_data {
  *             Format: 6 bit Device id + RS bit + RW bit
  * @fbtftops: FBTFT operations provided by driver or device (platform_data)
  * @dirty_lock: Protects dirty_lines_start and dirty_lines_end
+ * @panel_te: completion for panel TE line
+ * @irq_te: Linux IRQ for LCD TE line
  * @dirty_lines_start: Where to begin updating display
  * @dirty_lines_end: Where to end updating display
  * @gpio.reset: GPIO used to reset display
@@ -203,6 +206,8 @@ struct fbtft_par {
 	u8 startbyte;
 	struct fbtft_ops fbtftops;
 	spinlock_t dirty_lock;
+	struct completion panel_te;
+	int irq_te;
 	unsigned int dirty_lines_start;
 	unsigned int dirty_lines_end;
 	struct {
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

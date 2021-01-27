Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C10630549D
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 08:28:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 11DEB86FD0;
	Wed, 27 Jan 2021 07:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3QJ21kO-xt7W; Wed, 27 Jan 2021 07:28:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F35D861B5;
	Wed, 27 Jan 2021 07:28:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 696E11BF405
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 07:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 65C7E8499A
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 07:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FdIpKj009z7b for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 07:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AE49284993
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 07:28:19 +0000 (UTC)
Received: by mail-pg1-f172.google.com with SMTP id i7so980134pgc.8
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 23:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=KsuFJMJR1zSC15w8JQ1c49j8bxV1nmiWZNwaZ1VqZu4=;
 b=tml80qBR1soeYIVTGfdvJtZUqxXf7q+xv4VxBnCHgSTnJbtCZsY3//7PIn54WYZZWq
 cFoDNkU20Agj4frEi/qOMiMO3wQxtQxpaDdRvZLcTRwc5VAYffgQ9mvVVfGppHIBU09m
 oMWV2CP8F3pq/i5fWO5J9enAs+qsvdP7YsO37F5OGZ9amyDlLWatZpYnJa892lvHKzUR
 KDjwrMplVjmWhpMzZjnNdk2FIMHesJ0o7xc5havkCzjkIkKA8VQQiQxN6z7MsPPo2dlS
 QAlfuN+bL1dSKU46niKrxooWyGxrRLWLZFVHOUXvQw0VVSGPfECuhd6+2U208WUJOAzS
 Qk+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KsuFJMJR1zSC15w8JQ1c49j8bxV1nmiWZNwaZ1VqZu4=;
 b=YzoHC0wiTvJ1X3KW4MvHPON79NvvN+8mfQ1bKde3TyoM+btItZne/7uTcFuverg6Di
 FcDhvQboCSyMO2YRC5BQOXnk8JsSCKknxXbNMxq4+k2OyIs+HQRT4sKEqf8P25vlLTM4
 u8aNhQW2vz7S5j1293nriBe+yBUpWQAc5IgW3SwhDIFKSeHAl3bWXjnhWuFEfet46ExY
 qMIv8MiCJuvyslwuClLV4O6fTAqxSv51XipxYTMOEsZ45PJpsxoK94nF5tvoB81RfZVg
 ntR2mdeA2FDGn54kBvjfyoEvWIhKR7Rswv7SUxkbRUvpcNpEkhE4AnBLRh0qSunaR8LI
 ObzA==
X-Gm-Message-State: AOAM530c0oZxiqQHMq+RWeWaEXebSLZvwZWL1SNsHhNIuUcQQFbcEthj
 Fyw0WjajR/gZreQP3kWWDMM=
X-Google-Smtp-Source: ABdhPJy57KlxoGsUb+PPuXQ0Jo45vAGWsTy0Shn4D3KrkFXOe+TIgZZz1XCplUUJq5QgQMbl7/Zimg==
X-Received: by 2002:a63:a542:: with SMTP id r2mr9859868pgu.211.1611732499327; 
 Tue, 26 Jan 2021 23:28:19 -0800 (PST)
Received: from bf-rmsz-10.ccdomain.com ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id u12sm1182256pgi.91.2021.01.26.23.28.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 26 Jan 2021 23:28:18 -0800 (PST)
From: Carlis <zhangxuezhi3@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v6] fbtft: add tearing signal detect
Date: Wed, 27 Jan 2021 15:28:22 +0800
Message-Id: <1611732502-99639-1-git-send-email-zhangxuezhi3@gmail.com>
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

From: zhangxuezhi <zhangxuezhi1@yulong.com>

For st7789v ic,add tearing signal detect to avoid screen tearing

Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>
---
v6: add te gpio request fail deal logic
---
 drivers/staging/fbtft/fb_st7789v.c | 133 ++++++++++++++++++++++++++++++++++++-
 drivers/staging/fbtft/fbtft.h      |   1 +
 2 files changed, 133 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
index 3a280cc..777391e 100644
--- a/drivers/staging/fbtft/fb_st7789v.c
+++ b/drivers/staging/fbtft/fb_st7789v.c
@@ -9,9 +9,12 @@
 #include <linux/delay.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
+#include <linux/mutex.h>
+#include <linux/interrupt.h>
+#include <linux/completion.h>
 #include <linux/module.h>
 #include <video/mipi_display.h>
-
+#include <linux/gpio/consumer.h>
 #include "fbtft.h"
 
 #define DRVNAME "fb_st7789v"
@@ -66,6 +69,32 @@ enum st7789v_command {
 #define MADCTL_MX BIT(6) /* bitmask for column address order */
 #define MADCTL_MY BIT(7) /* bitmask for page address order */
 
+#define SPI_PANEL_TE_TIMEOUT	400
+static struct mutex te_mutex;/*mutex for tearing line*/
+static struct completion spi_panel_te;
+
+static irqreturn_t spi_panel_te_handler(int irq, void *data)
+{
+	complete(&spi_panel_te);
+	return IRQ_HANDLED;
+}
+
+static void set_spi_panel_te_irq_status(struct fbtft_par *par, bool enable)
+{
+	static int te_irq_count;
+
+	mutex_lock(&te_mutex);
+
+	if (enable) {
+		if (++te_irq_count == 1)
+			enable_irq(gpiod_to_irq(par->gpio.te));
+	} else {
+		if (--te_irq_count == 0)
+			disable_irq(gpiod_to_irq(par->gpio.te));
+	}
+	mutex_unlock(&te_mutex);
+}
+
 /**
  * init_display() - initialize the display controller
  *
@@ -82,6 +111,34 @@ enum st7789v_command {
  */
 static int init_display(struct fbtft_par *par)
 {
+	int rc;
+	struct device *dev = par->info->device;
+
+	par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0, GPIOD_IN);
+	if (IS_ERR(par->gpio.te)) {
+		rc = PTR_ERR(par->gpio.te);
+		pr_err("Failed to request te gpio: %d\n", rc);
+		par->gpio.te = NULL;
+	}
+	if (par->gpio.te) {
+		init_completion(&spi_panel_te);
+		mutex_init(&te_mutex);
+		rc = devm_request_irq(dev,
+				      gpiod_to_irq(par->gpio.te),
+				     spi_panel_te_handler, IRQF_TRIGGER_RISING,
+				     "TE_GPIO", par);
+		if (rc) {
+			pr_err("TE request_irq failed.\n");
+			devm_gpiod_put(dev, par->gpio.te);
+			par->gpio.te = NULL;
+		} else {
+			disable_irq_nosync(gpiod_to_irq(par->gpio.te));
+			pr_info("TE request_irq completion.\n");
+		}
+	} else {
+		pr_info("%s:%d, TE gpio not specified\n",
+			__func__, __LINE__);
+	}
 	/* turn off sleep mode */
 	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 	mdelay(120);
@@ -137,6 +194,9 @@ static int init_display(struct fbtft_par *par)
 	 */
 	write_reg(par, PWCTRL1, 0xA4, 0xA1);
 
+    /*Tearing Effect Line On*/
+	if (par->gpio.te)
+		write_reg(par, 0x35, 0x00);
 	write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
 
 	if (HSD20_IPS)
@@ -145,6 +205,76 @@ static int init_display(struct fbtft_par *par)
 	return 0;
 }
 
+/*****************************************************************************
+ *
+ *   int (*write_vmem)(struct fbtft_par *par);
+ *
+ *****************************************************************************/
+
+/* 16 bit pixel over 8-bit databus */
+static int st7789v_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
+{
+	u16 *vmem16;
+	__be16 *txbuf16 = par->txbuf.buf;
+	size_t remain;
+	size_t to_copy;
+	size_t tx_array_size;
+	int i;
+	int ret = 0;
+	size_t startbyte_size = 0;
+
+	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "st7789v ---%s(offset=%zu, len=%zu)\n",
+		      __func__, offset, len);
+
+	remain = len / 2;
+	vmem16 = (u16 *)(par->info->screen_buffer + offset);
+
+	if (par->gpio.dc)
+		gpiod_set_value(par->gpio.dc, 1);
+
+	/* non buffered write */
+	if (!par->txbuf.buf)
+		return par->fbtftops.write(par, vmem16, len);
+
+	/* buffered write */
+	tx_array_size = par->txbuf.len / 2;
+
+	if (par->startbyte) {
+		txbuf16 = par->txbuf.buf + 1;
+		tx_array_size -= 2;
+		*(u8 *)(par->txbuf.buf) = par->startbyte | 0x2;
+		startbyte_size = 1;
+	}
+
+	while (remain) {
+		to_copy = min(tx_array_size, remain);
+		dev_dbg(par->info->device, "    to_copy=%zu, remain=%zu\n",
+			to_copy, remain - to_copy);
+
+		for (i = 0; i < to_copy; i++)
+			txbuf16[i] = cpu_to_be16(vmem16[i]);
+
+		vmem16 = vmem16 + to_copy;
+		if (par->gpio.te) {
+			set_spi_panel_te_irq_status(par, true);
+			reinit_completion(&spi_panel_te);
+			ret = wait_for_completion_timeout(&spi_panel_te,
+							  msecs_to_jiffies(SPI_PANEL_TE_TIMEOUT));
+			if (ret == 0)
+				pr_err("wait panel TE time out\n");
+		}
+		ret = par->fbtftops.write(par, par->txbuf.buf,
+					 startbyte_size + to_copy * 2);
+		if (par->gpio.te)
+			set_spi_panel_te_irq_status(par, false);
+		if (ret < 0)
+			return ret;
+		remain -= to_copy;
+	}
+
+	return ret;
+}
+
 /**
  * set_var() - apply LCD properties like rotation and BGR mode
  *
@@ -259,6 +389,7 @@ static int blank(struct fbtft_par *par, bool on)
 	.gamma = HSD20_IPS_GAMMA,
 	.fbtftops = {
 		.init_display = init_display,
+		.write_vmem = st7789v_write_vmem16_bus8,
 		.set_var = set_var,
 		.set_gamma = set_gamma,
 		.blank = blank,
diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 76f8c09..93bac05 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -212,6 +212,7 @@ struct fbtft_par {
 		struct gpio_desc *wr;
 		struct gpio_desc *latch;
 		struct gpio_desc *cs;
+		struct gpio_desc *te;
 		struct gpio_desc *db[16];
 		struct gpio_desc *led[16];
 		struct gpio_desc *aux[16];
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

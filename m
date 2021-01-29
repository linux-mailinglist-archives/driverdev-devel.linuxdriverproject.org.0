Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 540E2308966
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 14:56:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12E4F869BC;
	Fri, 29 Jan 2021 13:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M7B70z9Kg_Pt; Fri, 29 Jan 2021 13:56:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BE86186969;
	Fri, 29 Jan 2021 13:56:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B233D1BF591
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 13:56:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A268E204EF
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 13:56:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uJFBffPv6Ga9 for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 13:56:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172])
 by silver.osuosl.org (Postfix) with ESMTPS id 8CFF720358
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 13:56:44 +0000 (UTC)
Received: by mail-pf1-f172.google.com with SMTP id j12so6264298pfj.12
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 05:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=CeHvwYUb7eHwgxHis6xbKk3bNUrOi7lZ6qQSZZLcAX4=;
 b=CPYLJ9qmKPDuOsRlcAA2kdC+8QReYZargwIArHQVS/lFduGrC63Ud5njOjnib05M1R
 EfAOEt1fuxn57d+d2wHE6iLNVwzjSTE+/IES3zVhPDYrYUtxPD4VbYYV40w7AHNnyaGL
 F/CFJBGkFqSZa3xTGjDcmyBB2/hvrxLmGCfK9ozQyY93WZd1oOf8Xk/sq0x+XAKHP2Fm
 sr9nXm5CK7eRI7b9Lr8wAR6B8ZLJYYbVIyFGpLIh7wIWo8hIrDUb8GpicxkxYy5ZgdKl
 ck4uja6BENibT5a31YMeZz3Qq21eOdRCORMhSiJ+/oPDIYYeWsnPxJyYW5qWDL6NycM4
 7lxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=CeHvwYUb7eHwgxHis6xbKk3bNUrOi7lZ6qQSZZLcAX4=;
 b=emDJT9834lgEYViE/tm05IGS+o/EW9suVo2lvSL64+kFZTtFlpCr+J8FQ0mUQv6uLr
 j6Mr3PjrO9IlBZG+IBHwP+uOp5C4NHBgYkla0DIv8t46ayfBXs4Wgs9NwJ9ZvSwn6F6b
 /ZItACXyTGf0j5H72f6qYRhJtGnCJFC7mtWkTx0ktkwjiz0VzLhqXLdxgKF/iYrz4lV+
 Mn0Ub1e1gfagpKmKqm+MPq3A86fKaSDw/Pui5Ef+H6VGzQXpbPdT5A2dc3BX3XTeG+E3
 KlgdPaXSs7wJJkjjfTge1DWceAPwDfK5PBHv5IajW+rsGGIgZUe0y/jsoElGdpNNz3fr
 61zw==
X-Gm-Message-State: AOAM5328bkU23A9ELKS1vuIPKlz9Q1HlY5AYj6xKlltSqyt1DOB0YYUR
 NZS46F2aTMudpZe/DxzxuYw=
X-Google-Smtp-Source: ABdhPJwDr69b44kEpqtnhdn2iJg3542IyKPOimazNhwWU8PssD8aa3mzwDHVOTq4LD5Ye7+PTG1UfQ==
X-Received: by 2002:a63:1f54:: with SMTP id q20mr5046479pgm.135.1611928604050; 
 Fri, 29 Jan 2021 05:56:44 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id d4sm9240800pgq.32.2021.01.29.05.56.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 05:56:43 -0800 (PST)
Date: Fri, 29 Jan 2021 21:56:38 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v12] staging: fbtft: add tearing signal detect
Message-ID: <20210129215638.000047b0@gmail.com>
In-Reply-To: <CAHp75Vdi4H_zY3+QPSq_wmdf20B9xPeqsOT10JHfMLJESX77gA@mail.gmail.com>
References: <1611838435-151774-1-git-send-email-zhangxuezhi3@gmail.com>
 <CAHp75Vd=ijxnamuSYuxNLeyhGMCod=HaXWrQ0W0+3QCsQAychg@mail.gmail.com>
 <20210129130110.00003bb1@gmail.com>
 <CAHp75Vdi4H_zY3+QPSq_wmdf20B9xPeqsOT10JHfMLJESX77gA@mail.gmail.com>
Organization: Tyzmig-ryrjum-8kedto
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>,
 Deepak R Varma <mh12gx2825@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oliver.graute@kococonnector.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Stefano Brivio <sbrivio@redhat.com>, Colin King <colin.king@canonical.com>,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 29 Jan 2021 12:23:08 +0200
Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

> On Fri, Jan 29, 2021 at 7:01 AM carlis <zhangxuezhi3@gmail.com> wrote:
> > On Thu, 28 Jan 2021 16:33:02 +0200
> > Andy Shevchenko <andy.shevchenko@gmail.com> wrote:  
> > > On Thu, Jan 28, 2021 at 2:58 PM Carlis <zhangxuezhi3@gmail.com>
> > > wrote:
> > >
> > > Thanks for your contribution, my comments below.
> > >  
> > > > From: zhangxuezhi <zhangxuezhi1@yulong.com>  
> > >
> > > You probably have to configure your Git to use the same account
> > > for author and committer.  
> >
> > hi,you mean like below:
> >         Carlis <zhangxuezhi1@yulong.com>
> > ?  
> 
> I meant that you shouldn't probably have a From: line in the commit
> message.
> 
> ...
> 
> > hi, i have modified it according to your suggestion like below:  
> 
> Please, go again thru my comments and comments from others and
> carefully address all of them everywhere in your contribution. If you
> have questions, ask them in reply in the corresponding context.
> 
> ...
> 
> > /**
> >  * init_tearing_effect_line() - init tearing effect line  
> 
> >  *  
> 
> For example, above was commented on and hasn't been addressed here.
> 
> >  * @par: FBTFT parameter object
> >  *
> >  * Return: 0 on success, < 0 if error occurred.
> >  */
> > static int init_tearing_effect_line(struct fbtft_par *par)
> > {
> >         struct device *dev = par->info->device;
> >         struct gpio_desc *te;
> >         int rc;
> >
> >         te = gpiod_get_optional(dev, "te", GPIOD_IN);
> >         if (IS_ERR(te))
> >                 return dev_err_probe(dev, PTR_ERR(te), "Failed to
> >         request te GPIO\n");
> >  
> 
> >         if (te) {  
> 
> This one is not like I suggested.
> 
> >                 par->irq_te = gpiod_to_irq(te);
> >                 gpiod_put(te);
> >  
> 
> >                 if (par->irq_te) {  
> 
> This is wrong.
> 
> >                         rc = devm_request_irq(dev,
> >                                               par->irq_te,
> >                 panel_te_handler,
> >                                               IRQF_TRIGGER_RISING,
> >                 "TE_GPIO", par);  
> 
> Try to use less LOCs.
> 
> >                         if (rc)
> >                                 return dev_err_probe(dev, rc, "TE
> > IRQ request failed.\n");
> >
> >                         disable_irq_nosync(par->irq_te);
> >                         init_completion(&par->panel_te);  
> 
> >                 } else {
> >                         return dev_err_probe(dev, par->irq_te,
> > "gpiod to TE IRQ failed.\n");
> >                 }  
> 
> Again, it is not what had been suggested.
> 
> >         }
> >
> >         return 0;
> > }  
> 
> The rest is better, but we will see later on when you submit a new
> version (And I feel it won't be last).
> 

Hi, I apologize for what I said in the previous two emails. I missed
one email you sent before, and now I probably understand what you
meant. Here is a version I modified according to your suggestion:

From 399e7fb91d1dcba4924cd38cc8283393c80b97e4 Mon Sep 17 00:00:00 2001
From: Carlis <zhangxuezhi1@yulong.com>
Date: Sun, 24 Jan 2021 22:43:21 +0800
Subject: [PATCH v13] staging: fbtft: add tearing signal detect

For st7789v IC,when we need continuous full screen refresh, it is best
to wait for the tearing effect line signal arrive to avoid screen
tearing.

Signed-off-by: Carlis <zhangxuezhi1@yulong.com>
---
v13: change te completion to par data struct member and add a new
     function to deal te gpio request.
v12: change dev_err to dev_err_probe and add space in comments start,
and delete te_mutex, change te wait logic.
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
 drivers/staging/fbtft/fb_st7789v.c | 138
+++++++++++++++++++++++++++++++++++++ drivers/staging/fbtft/fbtft.h
 |   5 ++ 2 files changed, 143 insertions(+)

diff --git a/drivers/staging/fbtft/fb_st7789v.c
b/drivers/staging/fbtft/fb_st7789v.c index 3a280cc..8faae7a 100644
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
@@ -66,6 +70,55 @@ enum st7789v_command {
 #define MADCTL_MX BIT(6) /* bitmask for column address order */
 #define MADCTL_MY BIT(7) /* bitmask for page address order */
 
+#define PANEL_TE_TIMEOUT_MS  34 /* 60Hz for 16.6ms, configured as
2*16.6ms */ +
+static irqreturn_t panel_te_handler(int irq, void *data)
+{
+	struct fbtft_par *par = (struct fbtft_par *)data;
+
+	complete(&par->panel_te);
+	return IRQ_HANDLED;
+}
+
+/**
+ * init_tearing_effect_line() - init tearing effect line
+ *
+ * @par: FBTFT parameter object
+ *
+ * Return: 0 on success, or a negative error code otherwise.
+ */
+static int init_tearing_effect_line(struct fbtft_par *par)
+{
+	struct device *dev = par->info->device;
+	struct gpio_desc *te;
+	int rc;
+
+	te = gpiod_get_optional(dev, "te", GPIOD_IN);
+	if (IS_ERR(te))
+		return dev_err_probe(dev, PTR_ERR(te), "Failed to
request te GPIO\n"); +
+	if (!te)
+		return 0;
+
+	par->irq_te = gpiod_to_irq(te);
+
+	/* GPIO is locked as an IRQ, we may drop the reference */
+	gpiod_put(te);
+
+	if (par->irq_te < 0)
+		return par->irq_te;
+
+	init_completion(&par->panel_te);
+	rc = devm_request_irq(dev, par->irq_te, panel_te_handler,
+			      IRQF_TRIGGER_RISING, "TE_GPIO", par);
+	if (rc)
+		return dev_err_probe(dev, rc, "TE IRQ request
failed.\n"); +
+	disable_irq_nosync(par->irq_te);
+
+	return 0;
+}
+
 /**
  * init_display() - initialize the display controller
  *
@@ -82,6 +135,12 @@ enum st7789v_command {
  */
 static int init_display(struct fbtft_par *par)
 {
+	int rc;
+
+	rc = init_tearing_effect_line(par);
+	if (rc < 0)
+		return rc;
+
 	/* turn off sleep mode */
 	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
 	mdelay(120);
@@ -137,6 +196,9 @@ static int init_display(struct fbtft_par *par)
 	 */
 	write_reg(par, PWCTRL1, 0xA4, 0xA1);
 
+	if (par->irq_te)
+		write_reg(par, MIPI_DCS_SET_TEAR_ON, 0x00);
+
 	write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
 
 	if (HSD20_IPS)
@@ -146,6 +208,81 @@ static int init_display(struct fbtft_par *par)
 }
 
 /**
+ * st7789v_write_vmem16_bus8() - write data to display
+ *
+ * @par: FBTFT parameter object
+ * @offset: offset from screen_buffer
+ * @len: the length of data to be written
+ *
+ * 16 bit pixel over 8-bit databus
+ *
+ * Return: 0 on success, or a negative error code otherwise.
+ */
+static int st7789v_write_vmem16_bus8(struct fbtft_par *par, size_t
offset, size_t len) +{
+	struct device *dev = par->info->device;
+	__be16 *txbuf16 = par->txbuf.buf;
+	size_t startbyte_size = 0;
+	size_t tx_array_size;
+	size_t to_copy;
+	size_t remain;
+	u16 *vmem16;
+	int ret = 0;
+	int i;
+
+	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "st7789v
---%s(offset=%zu, len=%zu)\n",
+		      __func__, offset, len);
+
+	remain = len / 2;
+	vmem16 = (u16 *)(par->info->screen_buffer + offset);
+
+	gpiod_set_value(par->gpio.dc, 1);
+
+	if (par->irq_te) {
+		enable_irq(par->irq_te);
+		reinit_completion(&par->panel_te);
+		ret = wait_for_completion_timeout(&par->panel_te,
+
msecs_to_jiffies(PANEL_TE_TIMEOUT_MS));
+		if (ret == 0)
+			dev_err(dev, "wait panel TE time out\n");
+
+		disable_irq(par->irq_te);
+	}
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
+		dev_dbg(dev, "    to_copy=%zu, remain=%zu\n",
+			to_copy, remain - to_copy);
+
+		for (i = 0; i < to_copy; i++)
+			txbuf16[i] = cpu_to_be16(vmem16[i]);
+
+		vmem16 = vmem16 + to_copy;
+		ret = par->fbtftops.write(par, par->txbuf.buf,
+					 startbyte_size + to_copy * 2);
+		if (ret < 0)
+			return ret;
+		remain -= to_copy;
+	}
+
+	return ret;
+}
+
+/**
  * set_var() - apply LCD properties like rotation and BGR mode
  *
  * @par: FBTFT parameter object
@@ -259,6 +396,7 @@ static int blank(struct fbtft_par *par, bool on)
 	.gamma = HSD20_IPS_GAMMA,
 	.fbtftops = {
 		.init_display = init_display,
+		.write_vmem = st7789v_write_vmem16_bus8,
 		.set_var = set_var,
 		.set_gamma = set_gamma,
 		.blank = blank,
diff --git a/drivers/staging/fbtft/fbtft.h
b/drivers/staging/fbtft/fbtft.h index 76f8c09..cf8d83f 100644
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
  * @fbtftops: FBTFT operations provided by driver or device
(platform_data)
  * @dirty_lock: Protects dirty_lines_start and dirty_lines_end
+ * @panel_te: completion for panel te line
+ * @irq_te: LCD Chip tearing effect line
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


regards,
Carlis

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

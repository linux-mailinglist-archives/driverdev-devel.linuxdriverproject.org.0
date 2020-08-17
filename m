Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4D02462DF
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 11:19:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A1CEF853FF;
	Mon, 17 Aug 2020 09:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-ApY6OwMIgf; Mon, 17 Aug 2020 09:19:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D035E85429;
	Mon, 17 Aug 2020 09:19:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 449EF1BF423
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:19:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 40CF387D11
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:19:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gsv6JBpjPugq for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 09:19:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 53B1387D0B
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 09:19:30 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id g15so3298311plj.6
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 02:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ifLfIrBu1ltO21juvrs7/f94zIPbflxds2FmAIn0JZY=;
 b=QLC6x/O13MeP0lPsSOPKaI+ocf7oT0PGwI9jaqY5n+w05x+fnihg68gNW9IMTCYLmr
 QP7/v8OCTappeLr1ZuVp0BsTJ1mH85ENUZ2a6AmLJxjUUhw01jO65HrM9m3jJ/8fkzOD
 /S951cp1wfO+Ld6aPWrVxO7J0pQj6AA1qxc5UAopaYjDT3vKbgs6OuTAyMB506fY0UDH
 5Vov97HYXFpYb/YY3HH4v98ijkrDRUNEPcHpqzt4ZRRsovwJz6805sBa4AZVV67aGl1m
 cckpnrRBYuVhiBXYyB2AdVauJXp4muM3muUnNrrm5+mb6Juwp+3iKvIPDL2fSNnGn3kS
 Vy6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ifLfIrBu1ltO21juvrs7/f94zIPbflxds2FmAIn0JZY=;
 b=itpHN/YRskar+9YRK5zKCoo0omqyoNtAg6xWsipi3F+GLPnD/caMdBWGd4OZiJmVre
 OUt1LT+UyhelIR5wZ+NOAH+T+rE/0yf0P9OMfHzbRHzCwine2oaQlGm6QbbaFplHSHmC
 coDLukMLkKJtjr5cQc6TIYhfLH5G9VUBzDE9KPU2Qj2KzjXZV9wb2TIaDXHY86o91X96
 C1KSqxKGpAeUXbc2e+uiScvMUjPnxHoBymr+ZwMgCMECkb+A5V/KUfNFCBHlNJDwflVt
 OyoE/s2HWu0dYOK+WRG+IkkcYxuLANJds3nBr5SqUR6fz0C5Q6Wp+IlGZOgwLk97Rga7
 QWkg==
X-Gm-Message-State: AOAM533Bl8OZEYyfe9nTVXjNS0K+W65D6LZwt9xi+09Oga2k35NoqL2Y
 884EGdKi5qqwegHuqCMp8lk=
X-Google-Smtp-Source: ABdhPJwQiN0j3I0XTBAoTEh/kHlRdKQRBPrBZjjvBv7FEdQfK+kQb/LL0lHsiyq2Kw2a6+jej7syqg==
X-Received: by 2002:a17:90a:2210:: with SMTP id
 c16mr12291145pje.65.1597655969939; 
 Mon, 17 Aug 2020 02:19:29 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:19:29 -0700 (PDT)
From: Allen Pais <allen.cryptic@gmail.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com,
 3chas3@gmail.com, axboe@kernel.dk, stefanr@s5r6.in-berlin.de,
 airlied@linux.ie, daniel@ffwll.ch, sre@kernel.org,
 James.Bottomley@HansenPartnership.com, kys@microsoft.com, deller@gmx.de,
 dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, maximlevitsky@gmail.com, oakad@yahoo.com,
 ulf.hansson@linaro.org, mporter@kernel.crashing.org, alex.bou9@gmail.com,
 broonie@kernel.org, martyn@welchs.me.uk, manohar.vanga@gmail.com,
 mitch@sfgoth.com, davem@davemloft.net, kuba@kernel.org
Subject: [PATCH 1/2] mailbox: bcm: convert tasklets to use new tasklet_setup()
 API
Date: Mon, 17 Aug 2020 14:46:08 +0530
Message-Id: <20200817091617.28119-14-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-hyperv@vger.kernel.org, Romain Perier <romain.perier@gmail.com>,
 keescook@chromium.org, linux-parisc@vger.kernel.org,
 linux-ntb@googlegroups.com, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-atm-general@lists.sourceforge.net,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-spi@vger.kernel.org,
 linux-block@vger.kernel.org, Allen Pais <allen.lkml@gmail.com>,
 linux-input@vger.kernel.org, linux-mmc@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Allen Pais <allen.lkml@gmail.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 drivers/mailbox/bcm-pdc-mailbox.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mailbox/bcm-pdc-mailbox.c b/drivers/mailbox/bcm-pdc-mailbox.c
index 53945ca5d785..5b375985f7b8 100644
--- a/drivers/mailbox/bcm-pdc-mailbox.c
+++ b/drivers/mailbox/bcm-pdc-mailbox.c
@@ -962,9 +962,9 @@ static irqreturn_t pdc_irq_handler(int irq, void *data)
  * a DMA receive interrupt. Reenables the receive interrupt.
  * @data: PDC state structure
  */
-static void pdc_tasklet_cb(unsigned long data)
+static void pdc_tasklet_cb(struct tasklet_struct *t)
 {
-	struct pdc_state *pdcs = (struct pdc_state *)data;
+	struct pdc_state *pdcs = from_tasklet(pdcs, t, rx_tasklet);
 
 	pdc_receive(pdcs);
 
@@ -1589,7 +1589,7 @@ static int pdc_probe(struct platform_device *pdev)
 	pdc_hw_init(pdcs);
 
 	/* Init tasklet for deferred DMA rx processing */
-	tasklet_init(&pdcs->rx_tasklet, pdc_tasklet_cb, (unsigned long)pdcs);
+	tasklet_setup(&pdcs->rx_tasklet, pdc_tasklet_cb);
 
 	err = pdc_interrupts_init(pdcs);
 	if (err)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

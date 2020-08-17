Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A242D2462CC
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 11:19:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FD45854AF;
	Mon, 17 Aug 2020 09:19:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FDHF10OwiIwj; Mon, 17 Aug 2020 09:19:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67AD485429;
	Mon, 17 Aug 2020 09:19:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8096F1BF423
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 78B8E8768A
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bd47fyYB+pAi for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 09:19:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 849568764B
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 09:19:04 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id i10so2286730pgk.1
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 02:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H53NItB96hhK0lZMvS5UWr62MZO4kDlJxK+OZQUxxIA=;
 b=Q9//06PpCdzBcB5+2FmR3vcPX8ASc3s+ZqMBFaeRwEkDMjoO3ubFfEuRDvNyw69Dic
 A+UvP5p7Sa7LwPskN9TiPkDaTIGuH2iea/lkrw98pDSnGmsaUfJX37kbIJa1u46YHB5f
 Biss505SKwh0HAGB5MaLRxgXu1CO2EwXczixBc538BCK83Jyz086JRCbTSXgutB7e4FX
 /W9NvIU4fSh/Ib/tv7t7BztqxaZ4vcJQgOiXTE1ktzbLpdXGu8a6uU6wMvjuhA4hl/Yv
 klgo2KrIpjJmP8zUsX/rM/tO2Wej91r/JteBk1SMuYF1iBTXfyMg4piAFIrY2mqWn3/s
 KsRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H53NItB96hhK0lZMvS5UWr62MZO4kDlJxK+OZQUxxIA=;
 b=Np53DOiyZzZcnF6WkA9y5/m21YwupQZJwLukV1VWB4JYh3lALtg3MeCtB/JgiX5Pd/
 zGQ8BVz5grWAEGVHR3Z8Cqkb+L1kZggDZi5iMSOzIV4GssYceR+PZwaZ4qMxuW1w82fM
 YfAqmCZYKL/AkNcqe+LVH6tUdOsyNvINyIu/5SyE+rZy64Ut69Ih+tOnQYNgZztaZYYQ
 Pnlc8WG3LzVwe1FtkTMCNIpZN7vgNrnd3ySKkaDMVcczaHcKiVn5sxl/MU/YrdYW7Edh
 PoLPXG1l7JZZKZH/6rxHic8jh+2Omkg+jGWCoKxvlTBK4I9Ltnk/7O1C7+jNliA1HLHH
 4B6w==
X-Gm-Message-State: AOAM532wgDnlDGVGGah0tl6/McwzFeGEu5TVO6eRA9mYZXO3bHrFokPc
 5wv6T0JBnPxSC9ZoqGUbdq0=
X-Google-Smtp-Source: ABdhPJwwv5IFUmxu6OFvp0ePee/WauDvfAGFpW7BnuWSsn7pFfdtUZETkOuz5u6jMhvkrLcgz5ASfg==
X-Received: by 2002:a63:5552:: with SMTP id f18mr8843602pgm.298.1597655944120; 
 Mon, 17 Aug 2020 02:19:04 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.18.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:19:03 -0700 (PDT)
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
Subject: [PATCH 1/2] hsi: nokia-modem: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:06 +0530
Message-Id: <20200817091617.28119-12-allen.cryptic@gmail.com>
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
 drivers/hsi/clients/nokia-modem.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/hsi/clients/nokia-modem.c b/drivers/hsi/clients/nokia-modem.c
index cd7ebf4c2e2f..36d373f089ce 100644
--- a/drivers/hsi/clients/nokia-modem.c
+++ b/drivers/hsi/clients/nokia-modem.c
@@ -36,9 +36,10 @@ struct nokia_modem_device {
 	struct hsi_client	*cmt_speech;
 };
 
-static void do_nokia_modem_rst_ind_tasklet(unsigned long data)
+static void do_nokia_modem_rst_ind_tasklet(struct tasklet_struct *t)
 {
-	struct nokia_modem_device *modem = (struct nokia_modem_device *)data;
+	struct nokia_modem_device *modem = from_tasklet(modem, t,
+						nokia_modem_rst_ind_tasklet);
 
 	if (!modem)
 		return;
@@ -155,8 +156,8 @@ static int nokia_modem_probe(struct device *dev)
 	modem->nokia_modem_rst_ind_irq = irq;
 	pflags = irq_get_trigger_type(irq);
 
-	tasklet_init(&modem->nokia_modem_rst_ind_tasklet,
-			do_nokia_modem_rst_ind_tasklet, (unsigned long)modem);
+	tasklet_setup(&modem->nokia_modem_rst_ind_tasklet,
+			do_nokia_modem_rst_ind_tasklet);
 	err = devm_request_irq(dev, irq, nokia_modem_rst_ind_isr,
 				pflags, "modem_rst_ind", modem);
 	if (err < 0) {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

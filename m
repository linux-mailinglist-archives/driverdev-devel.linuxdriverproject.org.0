Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE24246312
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 11:20:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B79F1877EC;
	Mon, 17 Aug 2020 09:20:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wNw6ApSaQ-yZ; Mon, 17 Aug 2020 09:20:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB8ED87748;
	Mon, 17 Aug 2020 09:20:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AC8521BF423
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:20:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 99F2A204E0
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:20:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hgt-IcEml8G0 for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 09:20:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 09722204C9
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 09:20:29 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id m34so7817803pgl.11
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 02:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=QhPrNAdoeJw7hjMh0pGw+sjN4I+tDKGZ699gTXbu9Pc=;
 b=cTZNXtt7wNfV+e9cJ76fTsPPVQZeYJIEY2TuWXhYA+6rL5+mQtvGCpP7nLFEEHniIY
 ttRYkgElaSdYzjheNY+aJq+wt2TbwHocg2rHezNcVM8LeXUN8gM2nT5FPn17bkKOZJ/R
 FpcUeStKvy2IzIoPd11K1+w6c4p381QKwm4Dhy02AfZUx3SzHjBImZSC4gDgffWV6h+v
 8YTTF/IpemIy0SQFRYOlz4ZDOq/9HJmYTUqHCVWY4C5ejhmLcUfPEpCe73ql4ONWBhLK
 UZXD9rMiGnEuf0tCOKH/CAPFPO+ziHa24otJgykW+Fa09Aud/a6J7DqgcJ9+cKbuVreV
 L6OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=QhPrNAdoeJw7hjMh0pGw+sjN4I+tDKGZ699gTXbu9Pc=;
 b=ftlxF7l3S9FRMY1aMp9Hgdj3z6cV+bCfCyON6vJr0xZLL9q7ttV60CDpPWl6tKVXxj
 mdM2mm4ZE+A9v0XeXhE/8ayMl6W1uOjumyTk7mhIDb07dntXSb7fjPASEVoiIHuUw7E6
 9BxIKRzUpTmB3bvq35lgGbbwZa0XB8itPYiCbwLKW2C6jFIAE/TfEpAvADsHa8G2fF91
 wAD8XD2p4dflNUeSDdmVmSq3hezVaVkpXhP6CIdYSt5I3UKV/JfOsiu5zk+MYga7ZuEL
 AYKfQfmnJhNLNCiMuORYUYrsKMhARrNhioX6ea69R6BLJw/EXU2cBI8ZfN5sHW/9kMie
 dY4Q==
X-Gm-Message-State: AOAM531LGgArbid8SXsAoTx3l+1KbEe2fui8mJZYoLemTd4EhvacyaD8
 yKnxmjsdkkz88JA4zm83ckI=
X-Google-Smtp-Source: ABdhPJzDyD/NrPXHKKUPdhhRODzrKgFhi3OcVBh0EqkEsk2AwP8x+cz/Kr8PlDriSCVb6p68quAdVw==
X-Received: by 2002:a63:4545:: with SMTP id u5mr9191366pgk.229.1597656028627; 
 Mon, 17 Aug 2020 02:20:28 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.20.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:20:28 -0700 (PDT)
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
Subject: [PATCH] platform: goldfish: convert tasklets to use new
 tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:12 +0530
Message-Id: <20200817091617.28119-18-allen.cryptic@gmail.com>
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
 drivers/platform/goldfish/goldfish_pipe.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/platform/goldfish/goldfish_pipe.c b/drivers/platform/goldfish/goldfish_pipe.c
index 1ab207ec9c94..b9bead07760c 100644
--- a/drivers/platform/goldfish/goldfish_pipe.c
+++ b/drivers/platform/goldfish/goldfish_pipe.c
@@ -577,10 +577,10 @@ static struct goldfish_pipe *signalled_pipes_pop_front(
 	return pipe;
 }
 
-static void goldfish_interrupt_task(unsigned long dev_addr)
+static void goldfish_interrupt_task(struct tasklet_struct *t)
 {
 	/* Iterate over the signalled pipes and wake them one by one */
-	struct goldfish_pipe_dev *dev = (struct goldfish_pipe_dev *)dev_addr;
+	struct goldfish_pipe_dev *dev = from_tasklet(dev, t, irq_tasklet);
 	struct goldfish_pipe *pipe;
 	int wakes;
 
@@ -811,8 +811,7 @@ static int goldfish_pipe_device_init(struct platform_device *pdev,
 {
 	int err;
 
-	tasklet_init(&dev->irq_tasklet, &goldfish_interrupt_task,
-		     (unsigned long)dev);
+	tasklet_setup(&dev->irq_tasklet, &goldfish_interrupt_task);
 
 	err = devm_request_irq(&pdev->dev, dev->irq,
 			       goldfish_pipe_interrupt,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

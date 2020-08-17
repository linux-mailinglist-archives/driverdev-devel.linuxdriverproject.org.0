Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 090B9246290
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 11:18:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B4E520031;
	Mon, 17 Aug 2020 09:18:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tdEDcS2VpFdY; Mon, 17 Aug 2020 09:18:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5D6271FE2F;
	Mon, 17 Aug 2020 09:18:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97E0A1BF423
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:18:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9324E87CDE
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x8eEtfRNF0ci for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 09:18:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 15A7D87CDD
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 09:18:00 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id mw10so7403870pjb.2
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 02:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=b4rgdbawNMIYfrAuQkyVo4UViOG64WWeDycX+5MFQIw=;
 b=PyMcWayBkiZh2L1sh4qEZP3dTK3G8sAqxmaVVytXPS3SWG3GgG94sw6o0Nrcf1df+Q
 wERBWbwHQv6Qgu7hNTSGUUVnjknbD/6NI8hJDMspn8CczdQvJPM76KBjotTKq1nRqCMz
 PeaUjGlQDtl3+8tYa2241Lt0gFMVJ1Pj2m5WjIwAk0QPXbTouobbDDQHD7yRGFSTHJfF
 TGVqoP9D0FSDOwtCHrJQip7z1NvCco4b1IQwWbk2n5T8eRS7cLsH017gTERiI8GS8Tqs
 077uDrcWAyQImiWo67W3QAf+RCwJGajol8woY3NpuxxUzfr5gmwXTFilhRPsJnsV/onK
 O2Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=b4rgdbawNMIYfrAuQkyVo4UViOG64WWeDycX+5MFQIw=;
 b=VJOX9xesQmpXd5qX3rdZsfMNfduZSpTY+hBbPJvhS9g5OcHw+nFwLSAIHYQ14pZPPb
 89Eq85oeZaIH/CDLnEZnTDJy1Eg+fwCJndgwH/qtAh74k28unH7U9wCbJ/zsMAMQe9tL
 2QWGuCs3yL8EqDd8ffIDfnJGFmOcVcK6xgN5qhvNKbhMojYk9q6MJ11UkmV+RP4MJgiI
 Su8W3x4VgTPRtLuYhxtDkkSVR1KZvWYD4pXN1dajOgs2a1BTHAL8dXFlmshAUm9kz05K
 rIj66qz/w077vMwc0Uw6OrEhZf5netyNMEMz/R9q+EO8dkFDHzXzE1MJH5IqgD4ie5GW
 7H2g==
X-Gm-Message-State: AOAM531AI/bhqMERbkFFsYP9LY5HsPF3k8CqYycYfC864+XOiV700VPv
 00qgka7dgsgtc0TBcBOmLfc=
X-Google-Smtp-Source: ABdhPJwJpNSWTk4IID0rEMXxIuI6kibpl/4HWTcEM39pCyHeMQh+u9mKWbVjT3TDQxfuQPdXa1o+UA==
X-Received: by 2002:a17:90a:a65:: with SMTP id
 o92mr11920119pjo.104.1597655879719; 
 Mon, 17 Aug 2020 02:17:59 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.17.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:17:59 -0700 (PDT)
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
Subject: [PATCH] drivers: rapidio: convert tasklets to use new tasklet_setup()
 API
Date: Mon, 17 Aug 2020 14:46:01 +0530
Message-Id: <20200817091617.28119-7-allen.cryptic@gmail.com>
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
 drivers/rapidio/devices/tsi721_dma.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/rapidio/devices/tsi721_dma.c b/drivers/rapidio/devices/tsi721_dma.c
index d375c02059f3..4a2bb6d7c692 100644
--- a/drivers/rapidio/devices/tsi721_dma.c
+++ b/drivers/rapidio/devices/tsi721_dma.c
@@ -566,9 +566,9 @@ static void tsi721_advance_work(struct tsi721_bdma_chan *bdma_chan,
 		  bdma_chan->id);
 }
 
-static void tsi721_dma_tasklet(unsigned long data)
+static void tsi721_dma_tasklet(struct tasklet_struct *t)
 {
-	struct tsi721_bdma_chan *bdma_chan = (struct tsi721_bdma_chan *)data;
+	struct tsi721_bdma_chan *bdma_chan = from_tasklet(bdma_chan, t, tasklet);
 	u32 dmac_int, dmac_sts;
 
 	dmac_int = ioread32(bdma_chan->regs + TSI721_DMAC_INT);
@@ -988,8 +988,7 @@ int tsi721_register_dma(struct tsi721_device *priv)
 		INIT_LIST_HEAD(&bdma_chan->queue);
 		INIT_LIST_HEAD(&bdma_chan->free_list);
 
-		tasklet_init(&bdma_chan->tasklet, tsi721_dma_tasklet,
-			     (unsigned long)bdma_chan);
+		tasklet_setup(&bdma_chan->tasklet, tsi721_dma_tasklet);
 		list_add_tail(&bdma_chan->dchan.device_node,
 			      &mport->dma.channels);
 		nr_channels++;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

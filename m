Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E78246253
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 11:16:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 82F4E87D6A;
	Mon, 17 Aug 2020 09:16:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lQHqYAEhgv2E; Mon, 17 Aug 2020 09:16:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EB39B8712D;
	Mon, 17 Aug 2020 09:16:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 563891BF423
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4AF61204C1
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8YZZTUARGHPb for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 09:16:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 69D1C204B2
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 09:16:54 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id s15so7818745pgc.8
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 02:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mHuwQk3c70LEeVRDgRBhzwGDJ7nUBqanmZ13DbCY85U=;
 b=Q0W/VwIVXHBj9YvXRE65zmYYW7OKSwPOhFA7L33Jnm2I/2WYc9/mTcQlvMPBfa5gSN
 2RqBUwnnXPqHfFkY/kdefbonLsqR7U5QnIT6xXUYsUHSEwB7JUQ6IrBQUdhBLTxOi/+G
 33dCqGC85wIzu4sVwhJXWst+XXWWfIhuU8OS9PUM4VbvTcwe9jbpbtJAG7iSDqxdcBMW
 jNrLB+vMhlGjl4glI2SnqDDpzzN+Zo4iUN3eXnADBqhYOpdGyO3gibX0u2a/Ix6ZYq6q
 3i+c4VwSQrSpK5GhTuNnF/NK1R/BwbjbUR0kjNWUX1g/BGGcsZFog29tDD6yJ+HItruh
 1xKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mHuwQk3c70LEeVRDgRBhzwGDJ7nUBqanmZ13DbCY85U=;
 b=O+VeSv+AD4nswK5xDtkYMmjTVl96XLZaClEWkLGAleR7JIXarEgr8584yx1hh4ZhIR
 36uG8XFfxeQxCj8AGrJK2+sXbnyTQG9QqGVrcfQhZWg+mC/rTjUU3oAUGttQxjg2jCyT
 kcRtmTuJN7TimvPJfpjSv1wva8/c8+Tl8iXmrJN0ML52XdMUHPDbE7DZ0egQaz6Grg7w
 +pXQOKd5X0hFea/C3UB5y3vv7tqVVzKkYkdhXdCtporW3sQM0GbY28cGwrcA7jeCYWQ+
 80td9uWxj5QddQ8hjaW2OoFjPzsg1BfozE3oTI3EVhyc1fJfqBPtjQVRHgkgHlRiAG10
 IgTw==
X-Gm-Message-State: AOAM530pQT+JmvQc3ttYXaT/va1FxyAH2QOsmpCy9aG9pVbxnqvYjHkQ
 rFSjuXAGRZbc+VdZTLz+1qc=
X-Google-Smtp-Source: ABdhPJwv96iWwUMvH8VXPkCg2sP5Tpy4AOwF/aDt/4dzgfyafzoO9ePqFKRKBzZcF9Jymu1V1GKZMg==
X-Received: by 2002:a63:5213:: with SMTP id g19mr8976321pgb.44.1597655813910; 
 Mon, 17 Aug 2020 02:16:53 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.16.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:16:53 -0700 (PDT)
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
Subject: [PATCH] block: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:45:56 +0530
Message-Id: <20200817091617.28119-2-allen.cryptic@gmail.com>
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
 drivers/block/umem.c    | 6 +++---
 drivers/block/xsysace.c | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/block/umem.c b/drivers/block/umem.c
index 2b95d7b33b91..320781d5d156 100644
--- a/drivers/block/umem.c
+++ b/drivers/block/umem.c
@@ -405,7 +405,7 @@ static int add_bio(struct cardinfo *card)
 	return 1;
 }
 
-static void process_page(unsigned long data)
+static void process_page(struct tasklet_struct *t)
 {
 	/* check if any of the requests in the page are DMA_COMPLETE,
 	 * and deal with them appropriately.
@@ -415,7 +415,7 @@ static void process_page(unsigned long data)
 	 */
 	struct mm_page *page;
 	struct bio *return_bio = NULL;
-	struct cardinfo *card = (struct cardinfo *)data;
+	struct cardinfo *card = from_tasklet(card, t, tasklet);
 	unsigned int dma_status = card->dma_status;
 
 	spin_lock(&card->lock);
@@ -891,7 +891,7 @@ static int mm_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
 	if (!card->queue)
 		goto failed_alloc;
 
-	tasklet_init(&card->tasklet, process_page, (unsigned long)card);
+	tasklet_setup(&card->tasklet, process_page);
 
 	card->check_batteries = 0;
 
diff --git a/drivers/block/xsysace.c b/drivers/block/xsysace.c
index 5d8e0ab3f054..bdd50a87d10f 100644
--- a/drivers/block/xsysace.c
+++ b/drivers/block/xsysace.c
@@ -762,9 +762,9 @@ static void ace_fsm_dostate(struct ace_device *ace)
 	}
 }
 
-static void ace_fsm_tasklet(unsigned long data)
+static void ace_fsm_tasklet(struct tasklet_struct *t)
 {
-	struct ace_device *ace = (void *)data;
+	struct ace_device *ace = from_tasklet(ace, t, fsm_tasklet);
 	unsigned long flags;
 
 	spin_lock_irqsave(&ace->lock, flags);
@@ -1001,7 +1001,7 @@ static int ace_setup(struct ace_device *ace)
 	/*
 	 * Initialize the state machine tasklet and stall timer
 	 */
-	tasklet_init(&ace->fsm_tasklet, ace_fsm_tasklet, (unsigned long)ace);
+	tasklet_setup(&ace->fsm_tasklet, ace_fsm_tasklet);
 	timer_setup(&ace->stall_timer, ace_stall_timer, 0);
 
 	/*
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

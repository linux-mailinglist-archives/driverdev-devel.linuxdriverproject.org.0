Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A55E2462D2
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 11:19:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA05087647;
	Mon, 17 Aug 2020 09:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DqsBbgAVLVhR; Mon, 17 Aug 2020 09:19:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D708E86C18;
	Mon, 17 Aug 2020 09:19:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 00C5A1BF423
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:19:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F0DEE87D11
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JGKtnFY5x5CA for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 09:19:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EB96987D28
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 09:19:16 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id h12so7818886pgm.7
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 02:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BhmC2dfR9Z2FpcZrdiI/rF+di1B3O2m2kCZjxi0Nzus=;
 b=pH1u/a65jck4CF/HaoBjMB2yQ7DQRuOjq2EQe/YOxb/OD7LRTsfaGPckhcN+7n9R1u
 8haLtPH3/hoBwBJOPjlUu2iYNKNPElK2iQu8xAhfWEfShI0bje7FwzTh8mTzsrV2FN/G
 T9q7gfYpRkJs922O9WCJDcFzNiLghUNavbp+zlHscWAG2oqdLCD4z56Z3vUZOyp4D6dk
 KhQqBlfrQV46/Pb2iMfJWkdHHcpVNp7jqYJJ9NEWjQKozVbz9oxhRN55xVrJNhB3JaO3
 Dp4F6ts/oPz/ziaWkRipTHlRzYfTQoj0G/RUnkwPSw1bnvtUKBj+EftqSWTMiaLoQ1jv
 lH8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BhmC2dfR9Z2FpcZrdiI/rF+di1B3O2m2kCZjxi0Nzus=;
 b=ma/qFHlkE9YjSKaOWLmxQu334+gRopm1ZiAlLiw1YNN5+9wZ4Hc27MnvI8FE9SqfoI
 s77KPyycW/VZby4Lv7c9sHCkdaR6pZOUMvAp0nAxn4YgFQ22FfDS4wbI92gaU5pjwoBW
 efZEz/I/8nvwEQFLctH8Kxyl9ow5u8OX5W6R3sdQ4rG4ayqS4ej1ToLQWHyDu6WkDWE/
 eUOXQ+oDn/qk1e3l81GLXmzo1uSVb7vQDL7kgBaFt4ebFz8PRoN8Ok6KH3L6CEqWNcUp
 84WbWi2TiqGHJg2Fu1DOlvslCI1lI6g6YBYUAlqMQN3fnz+BIImb2s+OqeaxkMEO+FkS
 SIzA==
X-Gm-Message-State: AOAM533fMBdQfcOsqUfYVgt/F/06eAQoK48/rvccL5d1mxxD6y2l7YxD
 C267DUw7bphKolWDLh5k3aY=
X-Google-Smtp-Source: ABdhPJyB5tc5dUu27VbUdOZ9DzBdNo9HMZYO5yS/FgK5KFnwUfpfaMSoblaoVOfdDSu8KmjNrpWWGw==
X-Received: by 2002:a63:2e87:: with SMTP id u129mr9420810pgu.347.1597655956522; 
 Mon, 17 Aug 2020 02:19:16 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.19.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:19:15 -0700 (PDT)
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
Subject: [PATCH] input: serio: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:07 +0530
Message-Id: <20200817091617.28119-13-allen.cryptic@gmail.com>
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
 drivers/input/serio/hp_sdc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/input/serio/hp_sdc.c b/drivers/input/serio/hp_sdc.c
index 13eacf6ab431..91f8253ac66a 100644
--- a/drivers/input/serio/hp_sdc.c
+++ b/drivers/input/serio/hp_sdc.c
@@ -301,7 +301,7 @@ static irqreturn_t hp_sdc_nmisr(int irq, void *dev_id)
 
 unsigned long hp_sdc_put(void);
 
-static void hp_sdc_tasklet(unsigned long foo)
+static void hp_sdc_tasklet(struct tasklet_struct *unused)
 {
 	write_lock_irq(&hp_sdc.rtq_lock);
 
@@ -890,7 +890,7 @@ static int __init hp_sdc_init(void)
 	hp_sdc_status_in8();
 	hp_sdc_data_in8();
 
-	tasklet_init(&hp_sdc.task, hp_sdc_tasklet, 0);
+	tasklet_setup(&hp_sdc.task, hp_sdc_tasklet, 0);
 
 	/* Sync the output buffer registers, thus scheduling hp_sdc_tasklet. */
 	t_sync.actidx	= 0;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

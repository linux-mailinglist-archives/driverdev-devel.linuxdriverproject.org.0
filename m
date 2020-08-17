Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5282462C0
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 11:19:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1990E87698;
	Mon, 17 Aug 2020 09:19:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IcMKsy2d257u; Mon, 17 Aug 2020 09:18:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 982AC877E8;
	Mon, 17 Aug 2020 09:18:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C98F51BF423
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C306E204C1
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 09:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gC9LlPb8zt8j for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 09:18:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 4062F204B2
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 09:18:51 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id r4so7200959pls.2
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 02:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Y/Lyd9iyb+e3Iwz9Po/fyIeEqiW8mHah9rIvstjO+PU=;
 b=DXgG1thdfskvtuXZP8/vM2gAxPo04jWU1e+8F2TitfrFT6HmCFefFj4nhScJQTVk1q
 gwLxkldM/Z+lONZzeR6zuZqiQyflB90NTYeiTaY2uBfmMOfTAXYT7jbI0r056THCHfBd
 3Di3net4lwJTB43A0rF2kp+rBzJcJY7T89VTsfvGCemy2qENpzVMLpR5W4yUkLrg5+z4
 9JO+T6FYEZY6ZUFsXdmos0B6tU4Q5kqzOQ+gRjZVd4YWOoPWnjX11Km6g+E3oY819bdf
 yrJ9k2JC0MEmc+k1DjYwwIX9qR0IT6cjxsIz2qZVtoxc4ZLZ/IK7rkcfNaetwR8RSOCf
 y05g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Y/Lyd9iyb+e3Iwz9Po/fyIeEqiW8mHah9rIvstjO+PU=;
 b=eLu1us2Dk9dcHrJNtg5U0gJ+rqRTW6sFPsNGeJzlei3UGbXZ4eY39QTB4l2iTWp5/9
 fiR8WpsNm2L7HLsyfG3KCFd9WOzp0ZD9av8RUbX0nL9EvNlRteoGwMJWca6aMSaI+R2V
 k0NShGUzVjoWEMVkz2ZRgXesdBw4v4yd5N6GXwbFMGVixSKOjaYWas3gmcOttb0YbA8U
 tFeqeoitSzj2XDqtz6cHeHD34NBWIKLcgURd7K7u+so6dPktgTugzsCJJX8tH8SPPYyU
 N9ZAzX9rJ7jEg6YwL2qxooeNDTqjTl/8/nvHZoag/iHrv1txlqozaBDVF3auaEyTcGCi
 whUg==
X-Gm-Message-State: AOAM531X5VqOZrjZMY9/PIoUa6voO/YKew2vsz/MbzzSaNgkAtR0Xa/2
 Q35boymozfZOioHWYqUXWRo=
X-Google-Smtp-Source: ABdhPJyIur6thpXJWevzBAIQBHYV2xsdEEXHh/+HT4l4m1kZQXfbzh30rMtWwCA6A2KqL1fU9TH91w==
X-Received: by 2002:a17:90a:2525:: with SMTP id
 j34mr12831046pje.208.1597655930802; 
 Mon, 17 Aug 2020 02:18:50 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
 by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.18.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 02:18:50 -0700 (PDT)
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
Subject: [PATCH] firewire: ohci: convert tasklets to use new tasklet_setup()
 API
Date: Mon, 17 Aug 2020 14:46:05 +0530
Message-Id: <20200817091617.28119-11-allen.cryptic@gmail.com>
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
 drivers/firewire/ohci.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 7dde21b18b04..6298ff03796e 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -921,9 +921,9 @@ static void ar_recycle_buffers(struct ar_context *ctx, unsigned int end_buffer)
 	}
 }
 
-static void ar_context_tasklet(unsigned long data)
+static void ar_context_tasklet(struct tasklet_struct *t)
 {
-	struct ar_context *ctx = (struct ar_context *)data;
+	struct ar_context *ctx = from_tasklet(ctx, t, tasklet);
 	unsigned int end_buffer_index, end_buffer_offset;
 	void *p, *end;
 
@@ -977,7 +977,7 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 
 	ctx->regs        = regs;
 	ctx->ohci        = ohci;
-	tasklet_init(&ctx->tasklet, ar_context_tasklet, (unsigned long)ctx);
+	tasklet_setup(&ctx->tasklet, ar_context_tasklet);
 
 	for (i = 0; i < AR_BUFFERS; i++) {
 		ctx->pages[i] = alloc_page(GFP_KERNEL | GFP_DMA32);
@@ -1049,9 +1049,9 @@ static struct descriptor *find_branch_descriptor(struct descriptor *d, int z)
 		return d + z - 1;
 }
 
-static void context_tasklet(unsigned long data)
+static void context_tasklet(struct tasklet_struct *t)
 {
-	struct context *ctx = (struct context *) data;
+	struct context *ctx = from_tasklet(ctx, t, tasklet);
 	struct descriptor *d, *last;
 	u32 address;
 	int z;
@@ -1145,7 +1145,7 @@ static int context_init(struct context *ctx, struct fw_ohci *ohci,
 	ctx->buffer_tail = list_entry(ctx->buffer_list.next,
 			struct descriptor_buffer, list);
 
-	tasklet_init(&ctx->tasklet, context_tasklet, (unsigned long)ctx);
+	tasklet_setup(&ctx->tasklet, context_tasklet);
 	ctx->callback = callback;
 
 	/*
@@ -1420,7 +1420,7 @@ static void at_context_flush(struct context *ctx)
 	tasklet_disable(&ctx->tasklet);
 
 	ctx->flushing = true;
-	context_tasklet((unsigned long)ctx);
+	context_tasklet(&ctx->tasklet);
 	ctx->flushing = false;
 
 	tasklet_enable(&ctx->tasklet);
@@ -3472,7 +3472,7 @@ static int ohci_flush_iso_completions(struct fw_iso_context *base)
 	tasklet_disable(&ctx->context.tasklet);
 
 	if (!test_and_set_bit_lock(0, &ctx->flushing_completions)) {
-		context_tasklet((unsigned long)&ctx->context);
+		context_tasklet(&ctx->context.tasklet);
 
 		switch (base->type) {
 		case FW_ISO_CONTEXT_TRANSMIT:
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

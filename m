Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D38AD279140
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 21:00:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 352102E18C;
	Fri, 25 Sep 2020 19:00:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pj77RlR-dRjJ; Fri, 25 Sep 2020 19:00:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 57FBE2E187;
	Fri, 25 Sep 2020 19:00:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A1EAD1BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9EF8F86DC8
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 19:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FH85yv5qQ43R for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 19:00:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
 [209.85.217.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F4EA86DAD
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 19:00:16 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id a16so1981253vsp.12
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 12:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=POQlelg/xj+ajAaOj4PD03MRs7Bfm1aqs/fM0Ig6DDo=;
 b=HZ7WmaWFu6gyAPyj5NWmh41xDV3/CpkYOtgcB7jszCJa0hm9iic6aPW9CPjTbBxvFd
 WFnAYLrjNrrEpeYp0xOnjPJTjFoAXvtTzy3gwJ7e5rkt5o7JLErPah8H7YyXs5gpkBFj
 +1V554dq4Tfm85SmleMHLQMugHakrEk0tIv7tOsTtfWy91ouqfyE9pbJqHD/AJkZ0xOL
 Ul9H64FMFc2zD+Sg1jgBDK6xPrNO7g9eg/v9RYpmQ8zUuhAKCBd72cUXGjmlP/kuGouD
 5XGO/3H/YczRRGkfziDJr4q1Nr3c2asC7bbgPwiDwe0Urq9HNzx/4D+88Aj/OCENw9Wx
 BNOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=POQlelg/xj+ajAaOj4PD03MRs7Bfm1aqs/fM0Ig6DDo=;
 b=ZSOsJf0rAR09MWupNxgQlTYu0SGVjCKSLKkam/9kn/0bDN+o4vckAAXMsmT/7AXUL9
 xTKQUAtjaZI1+d3pfRpHm+EMNsARCNSErZgYfhcQCwPqfn3xm4sU+AYWydgjoJIFNqYt
 Wc4n5BKXOhwwHRAyWoBHYH/shzhBL6XnJLU96QLZcbSi+sYVXDishnX7nxkIKdSebGJw
 xTMYsgukioZG1GPLgCqRkZpZ8/S1w/v5mA/5ox04e0qaWSolizapmKr41hnXe0itoHB2
 dQW3NqDozlZTueWLL7tVZ5RT4ye92AWQCWxuN8XyP6HALeE//Gk2abi/7hExBqUsUMdj
 OjLg==
X-Gm-Message-State: AOAM533Cq9EVADolsKBG2cXeTm5nJYUtIOW9IEE8mfPS3osbeu1n14Se
 5iP0Do/r+dX5Evg7hBolK+fcpNZ88/OjyA==
X-Google-Smtp-Source: ABdhPJyIbzjFwuqqiH1rwqNSLTpS1uO836zFCs8h9iHlL8QqIvNDD/sKGQOQAttTN5kf1fKKRUkIdw==
X-Received: by 2002:aa7:8e9a:0:b029:13e:d13d:a050 with SMTP id
 a26-20020aa78e9a0000b029013ed13da050mr587780pfr.22.1601058925212; 
 Fri, 25 Sep 2020 11:35:25 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.35.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:35:24 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 42/47] staging: media: zoran: remove test_interrupts
Date: Fri, 25 Sep 2020 18:30:52 +0000
Message-Id: <1601058657-14042-43-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The test_interrupts function is useless, remove it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran.h        |  3 ---
 drivers/staging/media/zoran/zoran_card.c   | 27 ----------------------
 drivers/staging/media/zoran/zoran_device.c | 16 -------------
 3 files changed, 46 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 0246635e0eac..fd27d1968e60 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -345,7 +345,6 @@ struct zoran {
 	struct zoran_buffer_col jpg_buffers;	/* MJPEG buffers' info */
 
 	/* Additional stuff for testing */
-	int testing;
 	int jpeg_error;
 	int intr_counter_GIRQ1;
 	int intr_counter_GIRQ0;
@@ -372,8 +371,6 @@ struct zoran {
 	int running;
 	int buf_in_reserve;
 
-	wait_queue_head_t test_q;
-
 	dma_addr_t p_sc;
 	__le32 *stat_comb;
 	dma_addr_t p_scb;
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 28a403257bb9..89fbc114c368 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -858,31 +858,6 @@ void zoran_open_init_params(struct zoran *zr)
 		pci_err(zr->pci_dev, "%s internal error\n", __func__);
 
 	clear_interrupt_counters(zr);
-	zr->testing = 0;
-}
-
-static void test_interrupts(struct zoran *zr)
-{
-	DEFINE_WAIT(wait);
-	int timeout, icr;
-
-	clear_interrupt_counters(zr);
-
-	zr->testing = 1;
-	icr = btread(ZR36057_ICR);
-	btwrite(0x78000000 | ZR36057_ICR_IntPinEn, ZR36057_ICR);
-	prepare_to_wait(&zr->test_q, &wait, TASK_INTERRUPTIBLE);
-	timeout = schedule_timeout(HZ);
-	finish_wait(&zr->test_q, &wait);
-	btwrite(0, ZR36057_ICR);
-	btwrite(0x78000000, ZR36057_ISR);
-	zr->testing = 0;
-	pci_info(zr->pci_dev, "Testing interrupts...\n");
-	if (timeout)
-		pci_info(zr->pci_dev, ": time spent: %d\n", 1 * HZ - timeout);
-	if (zr36067_debug > 1)
-		print_interrupts(zr);
-	btwrite(icr, ZR36057_ICR);
 }
 
 static int zr36057_init(struct zoran *zr)
@@ -896,7 +871,6 @@ static int zr36057_init(struct zoran *zr)
 
 	init_waitqueue_head(&zr->v4l_capq);
 	init_waitqueue_head(&zr->jpg_capq);
-	init_waitqueue_head(&zr->test_q);
 	zr->jpg_buffers.allocated = 0;
 	zr->v4l_buffers.allocated = 0;
 
@@ -977,7 +951,6 @@ static int zr36057_init(struct zoran *zr)
 	zoran_init_hardware(zr);
 	if (zr36067_debug > 2)
 		detect_guest_activity(zr);
-	test_interrupts(zr);
 	if (!pass_through) {
 		decoder_call(zr, video, s_stream, 0);
 		encoder_call(zr, video, s_routing, 2, 0, 0);
diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index fb318449d784..c090d7166caa 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -1109,22 +1109,6 @@ irqreturn_t zoran_irq(int irq, void *dev_id)
 	struct zoran *zr = dev_id;
 	unsigned long flags;
 
-	if (zr->testing) {
-		/* Testing interrupts */
-		spin_lock_irqsave(&zr->spinlock, flags);
-		while ((stat = count_reset_interrupt(zr))) {
-			if (count++ > 100) {
-				btand(~ZR36057_ICR_IntPinEn, ZR36057_ICR);
-				pci_err(zr->pci_dev, "IRQ lockup while testing, isr=0x%08x, cleared int mask\n",
-					stat);
-				wake_up_interruptible(&zr->test_q);
-			}
-		}
-		zr->last_isr = stat;
-		spin_unlock_irqrestore(&zr->spinlock, flags);
-		return IRQ_HANDLED;
-	}
-
 	spin_lock_irqsave(&zr->spinlock, flags);
 	while (1) {
 		/* get/clear interrupt status bits */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0830272040
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 95C5C86850;
	Mon, 21 Sep 2020 10:21:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id so6IpTZapwFX; Mon, 21 Sep 2020 10:21:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9F718683F;
	Mon, 21 Sep 2020 10:21:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8FFF91BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8A209871EB
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g1wWyAG127Qp for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5C6FF871CA
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:15 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id e16so12145053wrm.2
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sOh/fuRlI8qlQg+fgdSuZVy6p6bRoxDpMLJTeOc7Koo=;
 b=LwiurPKOmEqXhztg9TMFEyI242yu+8OFMUyjAYGsQZPDPImkPtTxgpYAAVr2HBuVJ/
 UGCshQPhRNLV9rYayy+AX9660EnfMnGMbKOWXSeFfVJJSI0GQCMKZr1b/AyyDWoaqHQo
 XU3ee+W0R2SuKCu8ocweH4Qd4AZRNxkVtSzEdQ6kK7Mr7u+A5eFIHxl2aOyAVj8Te+RP
 YYkRQFcFiFniXJRAdbYMbC+5o5Mj0lQBOe/wadRjo9twvQ/RSS9ECstG6RoHdoef+AoD
 tSd8d929TY08MFValWTPwoDcrIN07zTblp0P2TYx0+ikQyG8w+kmFwKgWD23oisU9rjm
 6tLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sOh/fuRlI8qlQg+fgdSuZVy6p6bRoxDpMLJTeOc7Koo=;
 b=fYgPJb/NTZkj+ha+Qw5UNnqq87L4snnewZw7cKiWCenNu2QhQCjJH5lqp7tkBWwrg+
 jB+Kego2utlkGjVFPupoPv36KK+RLmIaEy70DItOHe2nWgUw30T3eO97eOkqRFAT4RR6
 CDVCMiR//QkOrbDqn1SZgaPIoxFDopx3FgML1dlCRIyo5wO5+CKESvQdIXB/pESVlx1C
 rHNwx/ntZxqac6wWysDO3/+Kq+VUgusFqiVEXcxqitKqyrl2J1RoXlEHiKcFrvR75m2N
 Kc0hpquPxOBzR+NDvCUQ1kpQRVvrgbgTKe3+ZAcw9G7NXbRjvL6j4tz77C84llzOCmoE
 XJXQ==
X-Gm-Message-State: AOAM5331a3AmOQZS/UyVMYU7P/JM+oHw9ee8twbAwrKVjbK7J82uGHvO
 SgVdfXdxo54v41sqiDfieC6Dlw==
X-Google-Smtp-Source: ABdhPJymLhcwt/2MaCggWT4sUMlRzaTZDXU6fyW9fB7vZR+MvUkylpjPXPgY+UtH5DO/P4oPhHw2PQ==
X-Received: by 2002:a5d:4c52:: with SMTP id n18mr50621581wrt.267.1600683673869; 
 Mon, 21 Sep 2020 03:21:13 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:13 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 44/49] staging: media: zoran: remove test_interrupts
Date: Mon, 21 Sep 2020 10:20:19 +0000
Message-Id: <1600683624-5863-45-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
index 530dd326ad94..3bfeb1e00563 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -853,31 +853,6 @@ void zoran_open_init_params(struct zoran *zr)
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
@@ -891,7 +866,6 @@ static int zr36057_init(struct zoran *zr)
 
 	init_waitqueue_head(&zr->v4l_capq);
 	init_waitqueue_head(&zr->jpg_capq);
-	init_waitqueue_head(&zr->test_q);
 	zr->jpg_buffers.allocated = 0;
 	zr->v4l_buffers.allocated = 0;
 
@@ -968,7 +942,6 @@ static int zr36057_init(struct zoran *zr)
 	zoran_init_hardware(zr);
 	if (zr36067_debug > 2)
 		detect_guest_activity(zr);
-	test_interrupts(zr);
 	if (!pass_through) {
 		decoder_call(zr, video, s_stream, 0);
 		encoder_call(zr, video, s_routing, 2, 0, 0);
diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 7634d94f9359..ae4abf8ffa36 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -1099,22 +1099,6 @@ irqreturn_t zoran_irq(int irq, void *dev_id)
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F40AB11BB5C
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 19:16:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6E48D23355;
	Wed, 11 Dec 2019 18:16:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UX7HhWQXNwYY; Wed, 11 Dec 2019 18:16:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 347DB20480;
	Wed, 11 Dec 2019 18:16:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 37D981BF473
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EB47A88619
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 18:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H1rlpRpX1pHT for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 18:15:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f196.google.com (mail-yb1-f196.google.com
 [209.85.219.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 128018860D
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 18:15:30 +0000 (UTC)
Received: by mail-yb1-f196.google.com with SMTP id p137so9382536ybg.9
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 10:15:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iiFVpSnEWoAI5R62qeTqc9Vgw7AEh710Lxji7svUNEA=;
 b=in/Egki09JlpoeSxqCOxyS54KCobNG3vpIsGPsVFTREmPwAUi/ZeSpFrx6P8fQQobC
 Vv3qTbbrCqyyYWFJmz8IZ0xm5V4NKkxX0Z0U24YGnT5pXcVAx8byU32QxsF4z4+EZGDS
 tRJKVGq7+LGTVLWZoTXuSOno05pO7N9HzZytOgcQYxDgnZuMPGAOeA6dqcSz6vkqvhYu
 uCxXxJ6RdpV5IviI/8AP8DDiMUQ0ZE6oFLsmrPlTyGAAhtNO6I5EONPK7By5+MD2X8d0
 EHNhrVd+WZFuP3XYNHjvw5FV3jSR0DRdJ2+2ejC1r+wbuXeyEkSemdhrG26n5KobtTCa
 zvQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iiFVpSnEWoAI5R62qeTqc9Vgw7AEh710Lxji7svUNEA=;
 b=Vpufs7meEYL8L1HreWj8/9dHlWjOkIM5wqjwp8oRW1agEE7kmbP2Z9JiMxPQwQNs42
 j9BJDP43Y1P0tR1V1kSfJN68BHF57X0Fxw1zmR8guliM8HvMEP5MNw9el6vfCDbBBUDt
 YsyctVPC7KqdzhKSa+4tiFbWVUO0kB992tWMagwYv8hO3Vyg3eF9zinCq+KqR17N2e13
 iT6ziZt3orDAC6+feWpBW+YdvTUpKtX//z9G+GneUiCvNc07OnsP+MeY4lbrfKi7wzUn
 i3YO1x8J2VG7Rl+MP5CQaxp0nurSMgieNnp+oZo4orQl3rxNr6NLGLrrGlmfOllSHKeb
 Ie/w==
X-Gm-Message-State: APjAAAUDzwPvZYlGI6kl4QcTEJj8GZH034U9vkrekL5IvG4d9lFtCGlZ
 TWj5+TkzAcjKjuW0t/tPAjI=
X-Google-Smtp-Source: APXvYqz8ZTuisla3xX6/1VncT2Rdnup9D6H8Y6fHzqh3RCHeCkjUNoIJSopgI4hyhYFEN9JsTPWTDg==
X-Received: by 2002:a25:3753:: with SMTP id e80mr955164yba.123.1576088128934; 
 Wed, 11 Dec 2019 10:15:28 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id l39sm1361379ywk.36.2019.12.11.10.15.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 10:15:28 -0800 (PST)
From: Scott Schafer <schaferjscott@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 16/23] staging: qlge: Fix WARNING: Block comments use a
 trailing */ on a separate line
Date: Wed, 11 Dec 2019 12:12:45 -0600
Message-Id: <8343f9fae11abdd131898a0e6dad5653f7d65cdb.1576086080.git.schaferjscott@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1576086080.git.schaferjscott@gmail.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Scott Schafer <schaferjscott@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix WARNING: Block comments use a trailing */ on a separate line in
qlge_main.c and qlge_mpi.c

Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
---
 drivers/staging/qlge/qlge_main.c |  3 ++-
 drivers/staging/qlge/qlge_mpi.c  | 10 ++++++----
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 024c77518af3..90509fd1d95c 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3255,7 +3255,8 @@ static void ql_set_irq_mask(struct ql_adapter *qdev, struct intr_context *ctx)
 		 */
 		ctx->irq_mask = (1 << qdev->rx_ring[vect].cq_id);
 		/* Add the TX ring(s) serviced by this vector
-		 * to the mask. */
+		 * to the mask.
+		 */
 		for (j = 0; j < tx_rings_per_vector; j++) {
 			ctx->irq_mask |=
 			(1 << qdev->rx_ring[qdev->rss_ring_count +
diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
index 4cff0907625b..15c97c935618 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -391,7 +391,8 @@ static void ql_init_fw_done(struct ql_adapter *qdev, struct mbox_params *mbcp)
  *  This can get called iteratively from the mpi_work thread
  *  when events arrive via an interrupt.
  *  It also gets called when a mailbox command is polling for
- *  it's completion. */
+ *  it's completion.
+ */
 static int ql_mpi_handler(struct ql_adapter *qdev, struct mbox_params *mbcp)
 {
 	int status;
@@ -521,7 +522,7 @@ static int ql_mpi_handler(struct ql_adapter *qdev, struct mbox_params *mbcp)
 	 * changed when a mailbox command is waiting
 	 * for a response and an AEN arrives and
 	 * is handled.
-	 * */
+	 */
 	mbcp->out_count = orig_count;
 	return status;
 }
@@ -556,7 +557,8 @@ static int ql_mailbox_command(struct ql_adapter *qdev, struct mbox_params *mbcp)
 	 * here because some AEN might arrive while
 	 * we're waiting for the mailbox command to
 	 * complete. If more than 5 seconds expire we can
-	 * assume something is wrong. */
+	 * assume something is wrong.
+	 */
 	count = jiffies + HZ * MAILBOX_TIMEOUT;
 	do {
 		/* Wait for the interrupt to come in. */
@@ -1180,7 +1182,7 @@ void ql_mpi_idc_work(struct work_struct *work)
 		/* Signal the resulting link up AEN
 		 * that the frame routing and mac addr
 		 * needs to be set.
-		 * */
+		 */
 		set_bit(QL_CAM_RT_SET, &qdev->flags);
 		/* Do ACK if required */
 		if (timeout) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

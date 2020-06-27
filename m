Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF1D20C28B
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 16:59:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 020A6204A6;
	Sat, 27 Jun 2020 14:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h9-wUCDeY2B4; Sat, 27 Jun 2020 14:59:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 11C2C204E6;
	Sat, 27 Jun 2020 14:59:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 028E11BF20D
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 14:59:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E9EF787722
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 14:59:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L44rpyoDB5Dc for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 14:59:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 425A187727
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 14:59:12 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id d10so5391563pls.5
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 07:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zvZtbrDBRF/tkY1XUgsUhw4qRWkNkbAOPkZ951cjMrY=;
 b=bjr0POXXaMCOymlz4SgDHKbO1AYNXz9oYSXbPnaECMs7PocSZpzV0uxbtqo4PnCcvQ
 4v3LL4MczAKdpgUbDJ9zIr1Ssb8BFxeX1h7ej2fA4rP76uLOX6oLVajgPWcl6aE/BU66
 EMXqQg+EA/bgGvIj6dAIoMoy8Ge7yfyQwOV8b6h9rrZvkSmEpUQgTVHgDMPS2meAnVUS
 RljkKPuJzGRqzoMylOmM+eXzKTTWxacfu5NdAyQrBwif/54skhHkA/BefmcyI+ywwbYG
 bFQwTDTPbiMjhQu+7Hki0ZTuhhPt145Qj0c+ig46vxKH8SMhE88t6aTYwq450zIeXEJG
 8fhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zvZtbrDBRF/tkY1XUgsUhw4qRWkNkbAOPkZ951cjMrY=;
 b=uQoV97WCMT0Zt6RFQsFnw3/Dnb4NTGKeDoVyCmCLXRqDfnYF5o+EBkj3mzLh7CWicD
 yf9t8jYiKbQ+oBQiD1H+NeZoJ0F774Po+TLpVhFy3ZC0sjMN83FRUGioH1ybUkGcd4zE
 Br4peJztWRcXltJiqMVs+UBS98bWD3OKggePSIdXON0O+6lg2v/MdGMD0RrelSILCTxv
 lbwH3ngL17D8Qs2ErbZxy4WrAffj+wEFaPaZwsOghZUZSukOezlmZ3VM6pi0/NKfxAwK
 udIh2ULk9Zpn2igfwhZjYhdOPqmKxNwmJX/dw413CmHrEZO0Vr/hEIdVPSwg5XpBUduO
 KpfA==
X-Gm-Message-State: AOAM533J2jd0O5A7rGPH82hNU5FHd/bsl+l9DnxqNZSx/elIJsyIxIsS
 VI3ntb7ZDt6bBusXTrEoTKVNc8JiDMPH8tta
X-Google-Smtp-Source: ABdhPJzFnW3F/3yWFP0IF5Wn1W1Qyd+qjEZB8LeeQUjOgxLy4iwMEGSjBbzXZcVjLXznMCuHI4cX0Q==
X-Received: by 2002:a17:90a:e018:: with SMTP id
 u24mr8583786pjy.204.1593269951699; 
 Sat, 27 Jun 2020 07:59:11 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id a29sm28631118pfg.201.2020.06.27.07.59.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 07:59:11 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 1/4] staging: qlge: fix trailing */ in block comment
Date: Sat, 27 Jun 2020 22:58:54 +0800
Message-Id: <20200627145857.15926-2-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200627145857.15926-1-coiby.xu@gmail.com>
References: <20200627145857.15926-1-coiby.xu@gmail.com>
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
Cc: "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 gregkh@linuxfoundation.org, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>,
 joe@perches.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove trailing "*/" in block comments.

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 drivers/staging/qlge/qlge_main.c |  3 ++-
 drivers/staging/qlge/qlge_mpi.c  | 10 ++++++----
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 1650de13842f..aaecf2b0f9a1 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3244,7 +3244,8 @@ static void ql_set_irq_mask(struct ql_adapter *qdev, struct intr_context *ctx)
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
index 60c08d9cc034..3bb08d290525 100644
--- a/drivers/staging/qlge/qlge_mpi.c
+++ b/drivers/staging/qlge/qlge_mpi.c
@@ -389,7 +389,8 @@ static void ql_init_fw_done(struct ql_adapter *qdev, struct mbox_params *mbcp)
  *  This can get called iteratively from the mpi_work thread
  *  when events arrive via an interrupt.
  *  It also gets called when a mailbox command is polling for
- *  it's completion. */
+ *  it's completion.
+ */
 static int ql_mpi_handler(struct ql_adapter *qdev, struct mbox_params *mbcp)
 {
 	int status;
@@ -520,7 +521,7 @@ static int ql_mpi_handler(struct ql_adapter *qdev, struct mbox_params *mbcp)
 	 * changed when a mailbox command is waiting
 	 * for a response and an AEN arrives and
 	 * is handled.
-	 * */
+	 */
 	mbcp->out_count = orig_count;
 	return status;
 }
@@ -555,7 +556,8 @@ static int ql_mailbox_command(struct ql_adapter *qdev, struct mbox_params *mbcp)
 	 * here because some AEN might arrive while
 	 * we're waiting for the mailbox command to
 	 * complete. If more than 5 seconds expire we can
-	 * assume something is wrong. */
+	 * assume something is wrong.
+	 */
 	count = jiffies + HZ * MAILBOX_TIMEOUT;
 	do {
 		/* Wait for the interrupt to come in. */
@@ -1178,7 +1180,7 @@ void ql_mpi_idc_work(struct work_struct *work)
 		/* Signal the resulting link up AEN
 		 * that the frame routing and mac addr
 		 * needs to be set.
-		 * */
+		 */
 		set_bit(QL_CAM_RT_SET, &qdev->flags);
 		/* Do ACK if required */
 		if (timeout) {
--
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

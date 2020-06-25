Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A9820A20F
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 17:36:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 64176869E1;
	Thu, 25 Jun 2020 15:36:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qyu789sPl0KR; Thu, 25 Jun 2020 15:36:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 38C6E8655C;
	Thu, 25 Jun 2020 15:36:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9AB4F1BF3BE
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 15:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9753285C4C
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 15:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DOnqdvTX0bi6 for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 15:36:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 07AA185B0C
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 15:36:27 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id f2so2942963plr.8
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 08:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y3kkWJ/JOzzDXyxNZr6XcUI/1J7xSry3mHpwhIQzL+E=;
 b=OMVoJg1tPn70JBLaclMof0/+Dc7ez6g+JlgUw2qkgyFZprwMTXR96TOGPWXMLf1iTc
 qNPxlfS6d/2f0VA+ob9zAbZeyRBcRe3YGZ3pCRYTJqeYrGj9uU2SWnmd2UC9eYLeOmoU
 wP8E6ECohKGe61Ct78Xm6xD8+wqiWKprtxWFvDjIol2lWrh6v+0syC0Rm05WqPXTXym6
 T2k8dONjQjXQe5IyDlRNBh6huh42wiiXtt4C+2/66o/yvnsYsVp4vUhHXLSVeZcaT0U9
 tFYhhABhzFzefIM934Erz3dlwdn5Ct3EDsrVY4yBV8Lz4zDisKpk1zLPvn98noofsij9
 hezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y3kkWJ/JOzzDXyxNZr6XcUI/1J7xSry3mHpwhIQzL+E=;
 b=lCnHmKWiwfWmNvvvzC8YhXN4S0aoQXg0C28K+6h6iEastjolSyaeAx0OwmI8z/0SJ4
 eMIroJs0IuE9jFLhXpzVR9ZI12/CNQ8cLc55fC12VdohVtyx146bTrUE9Tkdn9oMhDYJ
 J+IrAZCnsHRrsMC/SGschrtKjzWRG7XMRNLEnGM/+aVhDJ5W2FqNxsbDYBn99g+7Kyy7
 iVfb693+sHNKLWcvDe8xRR4TQSe4JuF17zHk0cnQhR3xrlz9drYvBINfkjNlKmu1pPZC
 RcxR4IAQNJTB17u7B/ugLrYYriNjR1YTehcsJQx4BjrgGqcKNK28j36xFB1KYtcUqSzx
 HjtA==
X-Gm-Message-State: AOAM53303FQ+SRcqUMCwrc/Q7k6L6v6HnXZbsk+JCs4aVIAHu6xj8ju9
 5pFEcwjQ1Yd8SaDuriEeOJfAE+LUXKdG/w==
X-Google-Smtp-Source: ABdhPJwFb0pWt9Rj/wa4mbgHdYQwaBWsYomXSN7c8EZ8E45HhDdKTr397uSuflAWFZM9ti4g8cageg==
X-Received: by 2002:a17:90a:1b69:: with SMTP id
 q96mr4072875pjq.198.1593099386081; 
 Thu, 25 Jun 2020 08:36:26 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id f6sm25413406pfe.174.2020.06.25.08.36.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 08:36:25 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 1/2] fix trailing */ in block comment
Date: Thu, 25 Jun 2020 23:36:13 +0800
Message-Id: <20200625153614.63912-2-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200625153614.63912-1-coiby.xu@gmail.com>
References: <20200625153614.63912-1-coiby.xu@gmail.com>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, open list <linux-kernel@vger.kernel.org>,
 Manish Chopra <manishc@marvell.com>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

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

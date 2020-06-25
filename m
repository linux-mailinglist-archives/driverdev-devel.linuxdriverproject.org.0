Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D19620A7E1
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 23:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8226088238;
	Thu, 25 Jun 2020 21:58:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mvuvEdXwyPv3; Thu, 25 Jun 2020 21:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A17988277;
	Thu, 25 Jun 2020 21:58:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 86B591BF599
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 21:58:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 79CFF23B81
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 21:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id osECkMwxLiWV for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 21:58:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 27EDE23799
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 21:58:08 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id l6so942676pjq.1
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 14:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zvZtbrDBRF/tkY1XUgsUhw4qRWkNkbAOPkZ951cjMrY=;
 b=BkwjJFwyPkRmc45qqofzWlP9K8Xikjkm4IBfVGW1yaCij7b/CyzWOm7Zx9JCA0npIr
 iAN6V7Hw2BNH6G2PojQN0W+X2QvLctkrbU5GollJjoqSe0lCdGOccF+fgUx3851D4cji
 YRCRkUX85Oo/Ixf+N93NGSyoMKVAluxIEuAM6Z0Jg3t2uGu2BKb5TquTvvvvL+/ZZsHh
 f96PW9heA/zHSxjiIKWV1PWJSmK4vTCFoBoEzIzfRuFiA/VXWIKThkCEYBowwTGSfV1+
 Tz/k4eEw755/YjLhFpPJmyy0wJTtu/rEgF3x5LKX5pGHyJrMFac1aZGsmwTOsOIELZ3p
 UlnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zvZtbrDBRF/tkY1XUgsUhw4qRWkNkbAOPkZ951cjMrY=;
 b=pyL8pwTpp/7MDGC4tkPfctM9dfcuyUJQa9f4V4PDauFQP6SYf5hblm0oBpHu0+vCMx
 21mvzFEws7UV8Zkt67IsSX2Ri8pl5JlTN5cIejsoyQw+aFW4vQb+ErZjve4oHwlF7aqn
 r4tNSBX9oQ+WKKIIHtuYSRKkFfyqqUxhZfmqKD1S6gsPGbjamsOHtR2aVWK0JeIYcbJr
 OBDUPGjE9T+n5190ix9u0qi5IY4oCc0NittoY2/A6F3B0taNV5vgJBWn+ZMSbDEUTOlz
 jKgB7tF7aTglEg02cnkoBQ005imPqEnQfnneFC0YvTmXlpyTyxUXfy/d9kb7Bnco+Hgr
 Lf6g==
X-Gm-Message-State: AOAM530g/+9KiMyIanfTXmA/DQ4Na1dofjGzqw5pDWLF8slVD83V9efS
 PeiDiZ0pIPICIhsqBMesPTdey1smPdazWA==
X-Google-Smtp-Source: ABdhPJyFz12WBHR1O1mbxNk9OexI3FzHpN1/Wva0TcWoy3grLRSNmrwdSXWjYu1nP9rU1wWZ8a0Cqg==
X-Received: by 2002:a17:90a:d998:: with SMTP id d24mr46854pjv.43.1593122287530; 
 Thu, 25 Jun 2020 14:58:07 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id u25sm23564827pfm.115.2020.06.25.14.58.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 14:58:07 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 1/2] staging: qlge: fix trailing */ in block comment
Date: Fri, 26 Jun 2020 05:57:54 +0800
Message-Id: <20200625215755.70329-2-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200625215755.70329-1-coiby.xu@gmail.com>
References: <20200625215755.70329-1-coiby.xu@gmail.com>
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

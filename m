Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D36E420C09A
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Jun 2020 12:15:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7582121505;
	Sat, 27 Jun 2020 10:15:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dKp6n-2barcI; Sat, 27 Jun 2020 10:15:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D2F5620511;
	Sat, 27 Jun 2020 10:15:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 563FF1BF405
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 10:15:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4F7DF88448
 for <devel@linuxdriverproject.org>; Sat, 27 Jun 2020 10:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R+xjuXeGovsC for <devel@linuxdriverproject.org>;
 Sat, 27 Jun 2020 10:15:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 92E4588412
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 10:15:01 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id d4so6118530pgk.4
 for <devel@driverdev.osuosl.org>; Sat, 27 Jun 2020 03:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zvZtbrDBRF/tkY1XUgsUhw4qRWkNkbAOPkZ951cjMrY=;
 b=lWBq5lH1N4RNQEpfj4eXQ3XAEunPzNYAXDbCI/Z/KigFjM8fvvqV3Qm+vX+BkkPExK
 hU4P+VxxMziUIdO+NoiUCj8SqFfyncwHiayLHNKJlwI51ZLM2Tcw9A50g006FLTrgkOu
 BDp90GoE2TC7lRPJkHHDoiPDN7w1udpQu5t15fmrmu7Z0ZiS81gdIkeuy2Wmob6+geNm
 Zgk4Jr+pyqnhpUjx9J2/WDknrPyXfxtWVWzu0ZnJeeLAUdsUI17uE7E97HA3nOadOs9O
 M3q++pGSOyT+jZhbZ/iI646vq8k6ThRjFFGqgU8oBKdXA4sQoTzOmsXzZuJ/h77or8cD
 h+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zvZtbrDBRF/tkY1XUgsUhw4qRWkNkbAOPkZ951cjMrY=;
 b=oyiNPUWD/h6Mhw2QAjaKnGc9wc9DSbIjo7TOf23LWtDcA2eTvcUAZpgVyrFaGP5VTJ
 OSAzR3ngweYKkJawtGJbuOgNRCmBSlaMAitgpOt7QiEskCsI3MCvCIGOyrDL8tw+Bnj/
 fvB2KZDHnUcMDnNSlgCoiWew5JJRK3NNCBn7EW67DlFP/xgtU7g82HMzm18Qmd26mG10
 w8AkNLP2Amk2dBer0C5yHP0M82Ea4rsbCo1jDz8gjchBmvZEU27maRmrmvt7LXp5pRKN
 diQrqYgPVu5JZb89EzD4T+4R6TvfuBao9qg5kOnbsOVJ82pohbUWkIDDiFmwtjCOF2VL
 DCDg==
X-Gm-Message-State: AOAM532v0Z6wy6RG+RAZmAaNvo8g48l/SJrwMtQJiGpcBDSvgRZnH2y+
 IP54qLFrmsL/9hg3Moo8Ln96mmIYK3DUAg==
X-Google-Smtp-Source: ABdhPJxwFvGhZ5/vaZU76/wPRYf7RJ85weAZ+H1vcEX5LZNHMLFX8MVMfbdlW3uRtOwZ1QUWNyclhw==
X-Received: by 2002:a62:fc4c:: with SMTP id e73mr1580773pfh.308.1593252900940; 
 Sat, 27 Jun 2020 03:15:00 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id f15sm9624849pfk.58.2020.06.27.03.14.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Jun 2020 03:15:00 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 1/4] fix trailing */ in block comment
Date: Sat, 27 Jun 2020 18:14:44 +0800
Message-Id: <20200627101447.167370-2-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200627101447.167370-1-coiby.xu@gmail.com>
References: <20200627101447.167370-1-coiby.xu@gmail.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>,
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

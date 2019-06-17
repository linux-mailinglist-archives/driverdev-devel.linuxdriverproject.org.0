Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB2C47889
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 05:08:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E9FEB854A7;
	Mon, 17 Jun 2019 03:08:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HC2BJKR8kNhm; Mon, 17 Jun 2019 03:08:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 09DE9853D3;
	Mon, 17 Jun 2019 03:08:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 63B9D1BF2BA
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 03:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 46ACB853E3
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 03:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zD1rnYKZc6OB for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 03:08:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B9DC2836A5
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 03:08:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 38427C04FF86;
 Mon, 17 Jun 2019 03:08:36 +0000 (UTC)
Received: from localhost (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1703B101E69D;
 Mon, 17 Jun 2019 03:08:34 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: [PATCH V4 16/16] NCR5380: Support chained sg lists
Date: Mon, 17 Jun 2019 11:03:49 +0800
Message-Id: <20190617030349.26415-17-ming.lei@redhat.com>
In-Reply-To: <20190617030349.26415-1-ming.lei@redhat.com>
References: <20190617030349.26415-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Mon, 17 Jun 2019 03:08:36 +0000 (UTC)
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
Cc: Michael Schmitz <schmitzmic@gmail.com>, devel@driverdev.osuosl.org,
 Hannes Reinecke <hare@suse.com>, Benjamin Block <bblock@linux.ibm.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 James Smart <james.smart@broadcom.com>, "Ewan D . Milne" <emilne@redhat.com>,
 Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 "Juergen E . Fischer" <fischer@norbit.de>, Christoph Hellwig <hch@lst.de>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Finn Thain <fthain@telegraphics.com.au>

My understanding is that support for chained scatterlists is to
become mandatory for LLDs.

Use the scatterlist iterators and remove direct indexing of the
scatterlist array.

This way allows us to pre-allocate one small scatterlist, which can be
chained with one runtime allocated scatterlist if the pre-allocated one
isn't enough for the whole request.

Cc: Michael Schmitz <schmitzmic@gmail.com>
Reviewed-by: Michael Schmitz <schmitzmic@gmail.com>
Signed-off-by: Finn Thain <fthain@telegraphics.com.au>
---
 drivers/scsi/NCR5380.c | 41 ++++++++++++++++++-----------------------
 1 file changed, 18 insertions(+), 23 deletions(-)

diff --git a/drivers/scsi/NCR5380.c b/drivers/scsi/NCR5380.c
index fe0535affc14..4ef44fafe6ca 100644
--- a/drivers/scsi/NCR5380.c
+++ b/drivers/scsi/NCR5380.c
@@ -149,12 +149,10 @@ static inline void initialize_SCp(struct scsi_cmnd *cmd)
 
 	if (scsi_bufflen(cmd)) {
 		cmd->SCp.buffer = scsi_sglist(cmd);
-		cmd->SCp.buffers_residual = scsi_sg_count(cmd) - 1;
 		cmd->SCp.ptr = sg_virt(cmd->SCp.buffer);
 		cmd->SCp.this_residual = cmd->SCp.buffer->length;
 	} else {
 		cmd->SCp.buffer = NULL;
-		cmd->SCp.buffers_residual = 0;
 		cmd->SCp.ptr = NULL;
 		cmd->SCp.this_residual = 0;
 	}
@@ -163,6 +161,17 @@ static inline void initialize_SCp(struct scsi_cmnd *cmd)
 	cmd->SCp.Message = 0;
 }
 
+static inline void advance_sg_buffer(struct scsi_cmnd *cmd)
+{
+	struct scatterlist *s = cmd->SCp.buffer;
+
+	if (!cmd->SCp.this_residual && s && !sg_is_last(s)) {
+		cmd->SCp.buffer = sg_next(s);
+		cmd->SCp.ptr = sg_virt(cmd->SCp.buffer);
+		cmd->SCp.this_residual = cmd->SCp.buffer->length;
+	}
+}
+
 /**
  * NCR5380_poll_politely2 - wait for two chip register values
  * @hostdata: host private data
@@ -1672,12 +1681,7 @@ static void NCR5380_information_transfer(struct Scsi_Host *instance)
 			    sun3_dma_setup_done != cmd) {
 				int count;
 
-				if (!cmd->SCp.this_residual && cmd->SCp.buffers_residual) {
-					++cmd->SCp.buffer;
-					--cmd->SCp.buffers_residual;
-					cmd->SCp.this_residual = cmd->SCp.buffer->length;
-					cmd->SCp.ptr = sg_virt(cmd->SCp.buffer);
-				}
+				advance_sg_buffer(cmd);
 
 				count = sun3scsi_dma_xfer_len(hostdata, cmd);
 
@@ -1727,15 +1731,11 @@ static void NCR5380_information_transfer(struct Scsi_Host *instance)
 				 * scatter-gather list, move onto the next one.
 				 */
 
-				if (!cmd->SCp.this_residual && cmd->SCp.buffers_residual) {
-					++cmd->SCp.buffer;
-					--cmd->SCp.buffers_residual;
-					cmd->SCp.this_residual = cmd->SCp.buffer->length;
-					cmd->SCp.ptr = sg_virt(cmd->SCp.buffer);
-					dsprintk(NDEBUG_INFORMATION, instance, "%d bytes and %d buffers left\n",
-					         cmd->SCp.this_residual,
-					         cmd->SCp.buffers_residual);
-				}
+				advance_sg_buffer(cmd);
+				dsprintk(NDEBUG_INFORMATION, instance,
+					"this residual %d, sg ents %d\n",
+					cmd->SCp.this_residual,
+					sg_nents(cmd->SCp.buffer));
 
 				/*
 				 * The preferred transfer method is going to be
@@ -2136,12 +2136,7 @@ static void NCR5380_reselect(struct Scsi_Host *instance)
 	if (sun3_dma_setup_done != tmp) {
 		int count;
 
-		if (!tmp->SCp.this_residual && tmp->SCp.buffers_residual) {
-			++tmp->SCp.buffer;
-			--tmp->SCp.buffers_residual;
-			tmp->SCp.this_residual = tmp->SCp.buffer->length;
-			tmp->SCp.ptr = sg_virt(tmp->SCp.buffer);
-		}
+		advance_sg_buffer(tmp);
 
 		count = sun3scsi_dma_xfer_len(hostdata, tmp);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

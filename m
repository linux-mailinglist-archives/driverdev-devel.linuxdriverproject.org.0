Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9A545228
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 04:54:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31B4B8679E;
	Fri, 14 Jun 2019 02:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KaYos8WnRPW2; Fri, 14 Jun 2019 02:54:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6EBC85FAE;
	Fri, 14 Jun 2019 02:54:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B09AF1BF2F3
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 02:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AD384879AA
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 02:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S5urCW9Gjy7v for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 02:54:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 11EDB879A1
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 02:54:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 839E6309B149;
 Fri, 14 Jun 2019 02:54:25 +0000 (UTC)
Received: from localhost (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AC802607BF;
 Fri, 14 Jun 2019 02:54:22 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: [PATCH V3 10/15] scsi: aha152x: use sg helper to operate scatterlist
Date: Fri, 14 Jun 2019 10:53:11 +0800
Message-Id: <20190614025316.7360-11-ming.lei@redhat.com>
In-Reply-To: <20190614025316.7360-1-ming.lei@redhat.com>
References: <20190614025316.7360-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Fri, 14 Jun 2019 02:54:25 +0000 (UTC)
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
 "Juergen E . Fischer" <fischer@norbit.de>, Ming Lei <ming.lei@redhat.com>,
 Christoph Hellwig <hch@lst.de>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the scatterlist iterators and remove direct indexing of the
scatterlist array.

This way allows us to pre-allocate one small scatterlist, which can be
chained with one runtime allocated scatterlist if the pre-allocated one
isn't enough for the whole request.

Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 drivers/scsi/aha152x.c | 29 +++++++++++++++++++----------
 1 file changed, 19 insertions(+), 10 deletions(-)

diff --git a/drivers/scsi/aha152x.c b/drivers/scsi/aha152x.c
index 97872838b983..bc9d12aa7880 100644
--- a/drivers/scsi/aha152x.c
+++ b/drivers/scsi/aha152x.c
@@ -2033,7 +2033,7 @@ static void datai_run(struct Scsi_Host *shpnt)
 				    CURRENT_SC->SCp.buffers_residual > 0) {
 					/* advance to next buffer */
 					CURRENT_SC->SCp.buffers_residual--;
-					CURRENT_SC->SCp.buffer++;
+					CURRENT_SC->SCp.buffer = sg_next(CURRENT_SC->SCp.buffer);
 					CURRENT_SC->SCp.ptr           = SG_ADDRESS(CURRENT_SC->SCp.buffer);
 					CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length;
 				}
@@ -2139,7 +2139,7 @@ static void datao_run(struct Scsi_Host *shpnt)
 		if(CURRENT_SC->SCp.this_residual==0 && CURRENT_SC->SCp.buffers_residual>0) {
 			/* advance to next buffer */
 			CURRENT_SC->SCp.buffers_residual--;
-			CURRENT_SC->SCp.buffer++;
+			CURRENT_SC->SCp.buffer = sg_next(CURRENT_SC->SCp.buffer);
 			CURRENT_SC->SCp.ptr           = SG_ADDRESS(CURRENT_SC->SCp.buffer);
 			CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length;
 		}
@@ -2160,20 +2160,29 @@ static void datao_end(struct Scsi_Host *shpnt)
 	if(TESTLO(DMASTAT, DFIFOEMP)) {
 		int data_count = (DATA_LEN - scsi_get_resid(CURRENT_SC)) -
 			GETSTCNT();
+		struct scatterlist *sg = scsi_sglist(CURRENT_SC);
+		int left, i = 0;
 
 		CMD_INC_RESID(CURRENT_SC, data_count);
 
 		data_count -= CURRENT_SC->SCp.ptr -
 			SG_ADDRESS(CURRENT_SC->SCp.buffer);
-		while(data_count>0) {
-			CURRENT_SC->SCp.buffer--;
-			CURRENT_SC->SCp.buffers_residual++;
-			data_count -= CURRENT_SC->SCp.buffer->length;
+
+		left = CURRENT_SC->transfersize - data_count;
+		for (i = 0; left > 0 && !sg_is_last(sg); i++, sg = sg_next(sg)) {
+			if (left < sg->length)
+				break;
+			left -= sg->length;
+		}
+
+		if (data_count > 0) {
+			CURRENT_SC->SCp.buffers_residual += i;
+			CURRENT_SC->SCp.buffer = sg;
+
+			CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) + left;
+			CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length -
+				left;
 		}
-		CURRENT_SC->SCp.ptr = SG_ADDRESS(CURRENT_SC->SCp.buffer) -
-			data_count;
-		CURRENT_SC->SCp.this_residual = CURRENT_SC->SCp.buffer->length +
-			data_count;
 	}
 
 	SETPORT(SXFRCTL0, CH1|CLRCH1|CLRSTCNT);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

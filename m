Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B16A645215
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 04:54:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A2F686457;
	Fri, 14 Jun 2019 02:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N+UMtvZ2nprm; Fri, 14 Jun 2019 02:54:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 121B285DA0;
	Fri, 14 Jun 2019 02:54:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60ECE1BF2F3
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 02:54:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5DFB188222
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 02:54:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mMSLaarI29Kz for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 02:54:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3276C881A0
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 02:54:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8D22C3688B;
 Fri, 14 Jun 2019 02:54:01 +0000 (UTC)
Received: from localhost (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8EC065C3F8;
 Fri, 14 Jun 2019 02:53:58 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: [PATCH V3 05/15] scsi: ipr: use sg helper to operate scatterlist
Date: Fri, 14 Jun 2019 10:53:06 +0800
Message-Id: <20190614025316.7360-6-ming.lei@redhat.com>
In-Reply-To: <20190614025316.7360-1-ming.lei@redhat.com>
References: <20190614025316.7360-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Fri, 14 Jun 2019 02:54:01 +0000 (UTC)
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
 drivers/scsi/ipr.c | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/scsi/ipr.c b/drivers/scsi/ipr.c
index 6d053e220153..383603973937 100644
--- a/drivers/scsi/ipr.c
+++ b/drivers/scsi/ipr.c
@@ -3915,22 +3915,22 @@ static int ipr_copy_ucode_buffer(struct ipr_sglist *sglist,
 				 u8 *buffer, u32 len)
 {
 	int bsize_elem, i, result = 0;
-	struct scatterlist *scatterlist;
+	struct scatterlist *sg;
 	void *kaddr;
 
 	/* Determine the actual number of bytes per element */
 	bsize_elem = PAGE_SIZE * (1 << sglist->order);
 
-	scatterlist = sglist->scatterlist;
+	sg = sglist->scatterlist;
 
-	for (i = 0; i < (len / bsize_elem); i++, buffer += bsize_elem) {
-		struct page *page = sg_page(&scatterlist[i]);
+	for (i = 0; i < (len / bsize_elem); i++, sg = sg_next(sg), buffer += bsize_elem) {
+		struct page *page = sg_page(sg);
 
 		kaddr = kmap(page);
 		memcpy(kaddr, buffer, bsize_elem);
 		kunmap(page);
 
-		scatterlist[i].length = bsize_elem;
+		sg->length = bsize_elem;
 
 		if (result != 0) {
 			ipr_trace;
@@ -3939,13 +3939,13 @@ static int ipr_copy_ucode_buffer(struct ipr_sglist *sglist,
 	}
 
 	if (len % bsize_elem) {
-		struct page *page = sg_page(&scatterlist[i]);
+		struct page *page = sg_page(sg);
 
 		kaddr = kmap(page);
 		memcpy(kaddr, buffer, len % bsize_elem);
 		kunmap(page);
 
-		scatterlist[i].length = len % bsize_elem;
+		sg->length = len % bsize_elem;
 	}
 
 	sglist->buffer_len = len;
@@ -3966,6 +3966,7 @@ static void ipr_build_ucode_ioadl64(struct ipr_cmnd *ipr_cmd,
 	struct ipr_ioarcb *ioarcb = &ipr_cmd->ioarcb;
 	struct ipr_ioadl64_desc *ioadl64 = ipr_cmd->i.ioadl64;
 	struct scatterlist *scatterlist = sglist->scatterlist;
+	struct scatterlist *sg;
 	int i;
 
 	ipr_cmd->dma_use_sg = sglist->num_dma_sg;
@@ -3974,10 +3975,10 @@ static void ipr_build_ucode_ioadl64(struct ipr_cmnd *ipr_cmd,
 
 	ioarcb->ioadl_len =
 		cpu_to_be32(sizeof(struct ipr_ioadl64_desc) * ipr_cmd->dma_use_sg);
-	for (i = 0; i < ipr_cmd->dma_use_sg; i++) {
+	for_each_sg(scatterlist, sg, ipr_cmd->dma_use_sg, i) {
 		ioadl64[i].flags = cpu_to_be32(IPR_IOADL_FLAGS_WRITE);
-		ioadl64[i].data_len = cpu_to_be32(sg_dma_len(&scatterlist[i]));
-		ioadl64[i].address = cpu_to_be64(sg_dma_address(&scatterlist[i]));
+		ioadl64[i].data_len = cpu_to_be32(sg_dma_len(sg));
+		ioadl64[i].address = cpu_to_be64(sg_dma_address(sg));
 	}
 
 	ioadl64[i-1].flags |= cpu_to_be32(IPR_IOADL_FLAGS_LAST);
@@ -3997,6 +3998,7 @@ static void ipr_build_ucode_ioadl(struct ipr_cmnd *ipr_cmd,
 	struct ipr_ioarcb *ioarcb = &ipr_cmd->ioarcb;
 	struct ipr_ioadl_desc *ioadl = ipr_cmd->i.ioadl;
 	struct scatterlist *scatterlist = sglist->scatterlist;
+	struct scatterlist *sg;
 	int i;
 
 	ipr_cmd->dma_use_sg = sglist->num_dma_sg;
@@ -4006,11 +4008,11 @@ static void ipr_build_ucode_ioadl(struct ipr_cmnd *ipr_cmd,
 	ioarcb->ioadl_len =
 		cpu_to_be32(sizeof(struct ipr_ioadl_desc) * ipr_cmd->dma_use_sg);
 
-	for (i = 0; i < ipr_cmd->dma_use_sg; i++) {
+	for_each_sg(scatterlist, sg, ipr_cmd->dma_use_sg, i) {
 		ioadl[i].flags_and_data_len =
-			cpu_to_be32(IPR_IOADL_FLAGS_WRITE | sg_dma_len(&scatterlist[i]));
+			cpu_to_be32(IPR_IOADL_FLAGS_WRITE | sg_dma_len(sg));
 		ioadl[i].address =
-			cpu_to_be32(sg_dma_address(&scatterlist[i]));
+			cpu_to_be32(sg_dma_address(sg));
 	}
 
 	ioadl[i-1].flags_and_data_len |=
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

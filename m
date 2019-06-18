Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FAF496ED
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 03:39:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 41F40813E6;
	Tue, 18 Jun 2019 01:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UJwrhfrNWptR; Tue, 18 Jun 2019 01:39:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58B25815EC;
	Tue, 18 Jun 2019 01:39:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5DEEF1BF32A
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:39:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5546985755
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:39:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fq26ZppcjhzF for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 01:39:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 74ABD8563A
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 01:39:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E3403309265C;
 Tue, 18 Jun 2019 01:39:06 +0000 (UTC)
Received: from localhost (ovpn-8-17.pek2.redhat.com [10.72.8.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A483A3781;
 Tue, 18 Jun 2019 01:39:03 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: [PATCH V5 09/16] staging: rtsx: use sg helper to operate scatterlist
Date: Tue, 18 Jun 2019 09:37:50 +0800
Message-Id: <20190618013757.22401-10-ming.lei@redhat.com>
In-Reply-To: <20190618013757.22401-1-ming.lei@redhat.com>
References: <20190618013757.22401-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Tue, 18 Jun 2019 01:39:07 +0000 (UTC)
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
 Kim Bradley <kim.jamie.bradley@gmail.com>,
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

Cc: Kim Bradley <kim.jamie.bradley@gmail.com>
Cc: devel@driverdev.osuosl.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 32 +++++++++++-------------
 drivers/staging/rts5208/rtsx_transport.h |  2 +-
 drivers/staging/rts5208/spi.c            | 14 ++++++-----
 3 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 8277d7895608..7a9f42ccebec 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -32,7 +32,7 @@
 unsigned int rtsx_stor_access_xfer_buf(unsigned char *buffer,
 				       unsigned int buflen,
 				       struct scsi_cmnd *srb,
-				       unsigned int *index,
+				       struct scatterlist **sg,
 				       unsigned int *offset,
 				       enum xfer_buf_dir dir)
 {
@@ -60,23 +60,20 @@ unsigned int rtsx_stor_access_xfer_buf(unsigned char *buffer,
 	 * each page has to be kmap()'ed separately.
 	 */
 	} else {
-		struct scatterlist *sg =
-				(struct scatterlist *)scsi_sglist(srb)
-				+ *index;
-
 		/*
 		 * This loop handles a single s-g list entry, which may
 		 * include multiple pages.  Find the initial page structure
 		 * and the starting offset within the page, and update
-		 * the *offset and *index values for the next loop.
+		 * the *offset and current sg for the next loop.
 		 */
 		cnt = 0;
-		while (cnt < buflen && *index < scsi_sg_count(srb)) {
-			struct page *page = sg_page(sg) +
-					((sg->offset + *offset) >> PAGE_SHIFT);
-			unsigned int poff = (sg->offset + *offset) &
+		while (cnt < buflen && *sg) {
+			struct page *page = sg_page(*sg) +
+					(((*sg)->offset + *offset) >>
+					 PAGE_SHIFT);
+			unsigned int poff = ((*sg)->offset + *offset) &
 					    (PAGE_SIZE - 1);
-			unsigned int sglen = sg->length - *offset;
+			unsigned int sglen = (*sg)->length - *offset;
 
 			if (sglen > buflen - cnt) {
 				/* Transfer ends within this s-g entry */
@@ -85,8 +82,7 @@ unsigned int rtsx_stor_access_xfer_buf(unsigned char *buffer,
 			} else {
 				/* Transfer continues to next s-g entry */
 				*offset = 0;
-				++*index;
-				++sg;
+				*sg = sg_next(*sg);
 			}
 
 			while (sglen > 0) {
@@ -120,9 +116,10 @@ unsigned int rtsx_stor_access_xfer_buf(unsigned char *buffer,
 void rtsx_stor_set_xfer_buf(unsigned char *buffer,
 			    unsigned int buflen, struct scsi_cmnd *srb)
 {
-	unsigned int index = 0, offset = 0;
+	unsigned int offset = 0;
+	struct scatterlist *sg = scsi_sglist(srb);
 
-	rtsx_stor_access_xfer_buf(buffer, buflen, srb, &index, &offset,
+	rtsx_stor_access_xfer_buf(buffer, buflen, srb, &sg, &offset,
 				  TO_XFER_BUF);
 	if (buflen < scsi_bufflen(srb))
 		scsi_set_resid(srb, scsi_bufflen(srb) - buflen);
@@ -131,9 +128,10 @@ void rtsx_stor_set_xfer_buf(unsigned char *buffer,
 void rtsx_stor_get_xfer_buf(unsigned char *buffer,
 			    unsigned int buflen, struct scsi_cmnd *srb)
 {
-	unsigned int index = 0, offset = 0;
+	unsigned int offset = 0;
+	struct scatterlist *sg = scsi_sglist(srb);
 
-	rtsx_stor_access_xfer_buf(buffer, buflen, srb, &index, &offset,
+	rtsx_stor_access_xfer_buf(buffer, buflen, srb, &sg, &offset,
 				  FROM_XFER_BUF);
 	if (buflen < scsi_bufflen(srb))
 		scsi_set_resid(srb, scsi_bufflen(srb) - buflen);
diff --git a/drivers/staging/rts5208/rtsx_transport.h b/drivers/staging/rts5208/rtsx_transport.h
index 097efed24b79..e3ebc3759d92 100644
--- a/drivers/staging/rts5208/rtsx_transport.h
+++ b/drivers/staging/rts5208/rtsx_transport.h
@@ -20,7 +20,7 @@
 unsigned int rtsx_stor_access_xfer_buf(unsigned char *buffer,
 				       unsigned int buflen,
 				       struct scsi_cmnd *srb,
-				       unsigned int *index,
+				       struct scatterlist **sg,
 				       unsigned int *offset,
 				       enum xfer_buf_dir dir);
 void rtsx_stor_set_xfer_buf(unsigned char *buffer, unsigned int buflen,
diff --git a/drivers/staging/rts5208/spi.c b/drivers/staging/rts5208/spi.c
index f1e9e80044ed..af10916ff00b 100644
--- a/drivers/staging/rts5208/spi.c
+++ b/drivers/staging/rts5208/spi.c
@@ -554,7 +554,8 @@ int spi_read_flash_id(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 int spi_read_flash(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 {
 	int retval;
-	unsigned int index = 0, offset = 0;
+	unsigned int offset = 0;
+	struct scatterlist *sg = scsi_sglist(srb);
 	u8 ins, slow_read;
 	u32 addr;
 	u16 len;
@@ -631,7 +632,7 @@ int spi_read_flash(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 			return STATUS_FAIL;
 		}
 
-		rtsx_stor_access_xfer_buf(buf, pagelen, srb, &index, &offset,
+		rtsx_stor_access_xfer_buf(buf, pagelen, srb, &sg, &offset,
 					  TO_XFER_BUF);
 
 		addr += pagelen;
@@ -651,7 +652,8 @@ int spi_write_flash(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 	u32 addr;
 	u16 len;
 	u8 *buf;
-	unsigned int index = 0, offset = 0;
+	unsigned int offset = 0;
+	struct scatterlist *sg = scsi_sglist(srb);
 
 	spi_set_err_code(chip, SPI_NO_ERR);
 
@@ -679,7 +681,7 @@ int spi_write_flash(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 				return STATUS_FAIL;
 			}
 
-			rtsx_stor_access_xfer_buf(buf, 1, srb, &index, &offset,
+			rtsx_stor_access_xfer_buf(buf, 1, srb, &sg, &offset,
 						  FROM_XFER_BUF);
 
 			rtsx_init_cmd(chip);
@@ -722,7 +724,7 @@ int spi_write_flash(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 			return STATUS_ERROR;
 
 		while (len) {
-			rtsx_stor_access_xfer_buf(buf, 1, srb, &index, &offset,
+			rtsx_stor_access_xfer_buf(buf, 1, srb, &sg, &offset,
 						  FROM_XFER_BUF);
 
 			rtsx_init_cmd(chip);
@@ -788,7 +790,7 @@ int spi_write_flash(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 
 			rtsx_send_cmd_no_wait(chip);
 
-			rtsx_stor_access_xfer_buf(buf, pagelen, srb, &index,
+			rtsx_stor_access_xfer_buf(buf, pagelen, srb, &sg,
 						  &offset, FROM_XFER_BUF);
 
 			retval = rtsx_transfer_data(chip, 0, buf, pagelen, 0,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

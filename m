Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4CE47E1E
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 11:15:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF9AF85C92;
	Mon, 17 Jun 2019 09:15:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ClCZnsLH9ckL; Mon, 17 Jun 2019 09:15:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 385E885C19;
	Mon, 17 Jun 2019 09:15:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 12B461BF3D5
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 09:15:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0E7A5870D7
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 09:15:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kkDTCRRWewRO for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 09:15:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4DE3C870C7
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 09:15:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A733E3024552;
 Mon, 17 Jun 2019 09:15:49 +0000 (UTC)
Received: from ming.t460p (ovpn-8-27.pek2.redhat.com [10.72.8.27])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8515E7DF5D;
 Mon, 17 Jun 2019 09:15:31 +0000 (UTC)
Date: Mon, 17 Jun 2019 17:15:26 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH V4 09/16] staging: rtsx: use sg helper to operate
 scatterlist
Message-ID: <20190617091524.GB31002@ming.t460p>
References: <20190617030349.26415-1-ming.lei@redhat.com>
 <20190617030349.26415-10-ming.lei@redhat.com>
 <20190617082706.GI7455@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617082706.GI7455@lst.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 17 Jun 2019 09:15:49 +0000 (UTC)
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
 linux-scsi@vger.kernel.org, "Martin K . Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 James Smart <james.smart@broadcom.com>, "Ewan D . Milne" <emilne@redhat.com>,
 Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 Kim Bradley <kim.jamie.bradley@gmail.com>,
 "Juergen E . Fischer" <fischer@norbit.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 17, 2019 at 10:27:06AM +0200, Christoph Hellwig wrote:
> On Mon, Jun 17, 2019 at 11:03:42AM +0800, Ming Lei wrote:
> > Use the scatterlist iterators and remove direct indexing of the
> > scatterlist array.
> > 
> > This way allows us to pre-allocate one small scatterlist, which can be
> > chained with one runtime allocated scatterlist if the pre-allocated one
> > isn't enough for the whole request.
> 
> The scatterlist handling here looks completely bogus, it really
> needs to stop using the index and switch to proper sg_next-based
> iteration.

Yeah, I agree, looks we may convert in the following way by
storing current 'sg', and the 'offset' already stores the actual offset
on the current 'sg'.

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index 8277d7895608..861b4cc4562e 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -32,7 +32,7 @@
 unsigned int rtsx_stor_access_xfer_buf(unsigned char *buffer,
 				       unsigned int buflen,
 				       struct scsi_cmnd *srb,
-				       unsigned int *index,
+				       struct scatterlist **cur_sg,
 				       unsigned int *offset,
 				       enum xfer_buf_dir dir)
 {
@@ -60,18 +60,18 @@ unsigned int rtsx_stor_access_xfer_buf(unsigned char *buffer,
 	 * each page has to be kmap()'ed separately.
 	 */
 	} else {
-		struct scatterlist *sg =
-				(struct scatterlist *)scsi_sglist(srb)
-				+ *index;
+		struct scatterlist *sg = *cur_sg ?:
+				(struct scatterlist *)scsi_sglist(srb);
+
 
 		/*
 		 * This loop handles a single s-g list entry, which may
 		 * include multiple pages.  Find the initial page structure
 		 * and the starting offset within the page, and update
-		 * the *offset and *index values for the next loop.
+		 * the *offset values for the next loop.
 		 */
 		cnt = 0;
-		while (cnt < buflen && *index < scsi_sg_count(srb)) {
+		while (cnt < buflen && sg) {
 			struct page *page = sg_page(sg) +
 					((sg->offset + *offset) >> PAGE_SHIFT);
 			unsigned int poff = (sg->offset + *offset) &
@@ -85,8 +85,7 @@ unsigned int rtsx_stor_access_xfer_buf(unsigned char *buffer,
 			} else {
 				/* Transfer continues to next s-g entry */
 				*offset = 0;
-				++*index;
-				++sg;
+				sg = sg_next(sg);
 			}
 
 			while (sglen > 0) {
@@ -120,9 +119,10 @@ unsigned int rtsx_stor_access_xfer_buf(unsigned char *buffer,
 void rtsx_stor_set_xfer_buf(unsigned char *buffer,
 			    unsigned int buflen, struct scsi_cmnd *srb)
 {
-	unsigned int index = 0, offset = 0;
+	unsigned int offset = 0;
+	struct scatterlist *sg = NULL;
 
-	rtsx_stor_access_xfer_buf(buffer, buflen, srb, &index, &offset,
+	rtsx_stor_access_xfer_buf(buffer, buflen, srb, &sg, &offset,
 				  TO_XFER_BUF);
 	if (buflen < scsi_bufflen(srb))
 		scsi_set_resid(srb, scsi_bufflen(srb) - buflen);
@@ -131,9 +131,10 @@ void rtsx_stor_set_xfer_buf(unsigned char *buffer,
 void rtsx_stor_get_xfer_buf(unsigned char *buffer,
 			    unsigned int buflen, struct scsi_cmnd *srb)
 {
-	unsigned int index = 0, offset = 0;
+	unsigned int offset = 0;
+	struct scatterlist *sg = NULL;
 
-	rtsx_stor_access_xfer_buf(buffer, buflen, srb, &index, &offset,
+	rtsx_stor_access_xfer_buf(buffer, buflen, srb, &sg, &offset,
 				  FROM_XFER_BUF);
 	if (buflen < scsi_bufflen(srb))
 		scsi_set_resid(srb, scsi_bufflen(srb) - buflen);
diff --git a/drivers/staging/rts5208/spi.c b/drivers/staging/rts5208/spi.c
index f1e9e80044ed..6ad4278de531 100644
--- a/drivers/staging/rts5208/spi.c
+++ b/drivers/staging/rts5208/spi.c
@@ -554,7 +554,8 @@ int spi_read_flash_id(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 int spi_read_flash(struct scsi_cmnd *srb, struct rtsx_chip *chip)
 {
 	int retval;
-	unsigned int index = 0, offset = 0;
+	unsigned int offset = 0;
+	struct scatterlist *sg = NULL;
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
+	struct scatterlist *sg = NULL;
 
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

Thanks,
Ming
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

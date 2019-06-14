Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B89345223
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 04:54:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E11DB87A22;
	Fri, 14 Jun 2019 02:54:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KTK6r+WhnXpf; Fri, 14 Jun 2019 02:54:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED55C879A1;
	Fri, 14 Jun 2019 02:54:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C956C1BF2F3
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 02:54:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C2ECD88222
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 02:54:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GzerBscq+PJH for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 02:54:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1207F88318
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 02:54:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7AB195945D;
 Fri, 14 Jun 2019 02:54:20 +0000 (UTC)
Received: from localhost (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AE24619C67;
 Fri, 14 Jun 2019 02:54:19 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: [PATCH V3 09/15] s390: zfcp_fc: use sg helper to operate scatterlist
Date: Fri, 14 Jun 2019 10:53:10 +0800
Message-Id: <20190614025316.7360-10-ming.lei@redhat.com>
In-Reply-To: <20190614025316.7360-1-ming.lei@redhat.com>
References: <20190614025316.7360-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 14 Jun 2019 02:54:20 +0000 (UTC)
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
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>, Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Finn Thain <fthain@telegraphics.com.au>, Christoph Hellwig <hch@lst.de>,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 James Smart <james.smart@broadcom.com>, "Ewan D . Milne" <emilne@redhat.com>,
 "Juergen E . Fischer" <fischer@norbit.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Benjamin Block <bblock@linux.ibm.com>, Ming Lei <ming.lei@redhat.com>,
 Brian King <brking@us.ibm.com>, Michael Schmitz <schmitzmic@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Steffen Maier <maier@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the scatterlist iterators and remove direct indexing of the
scatterlist array.

This way allows us to pre-allocate one small scatterlist, which can be
chained with one runtime allocated scatterlist if the pre-allocated one
isn't enough for the whole request.

Cc: Steffen Maier <maier@linux.ibm.com>
Cc: Benjamin Block <bblock@linux.ibm.com>
Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: linux-s390@vger.kernel.org
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 drivers/s390/scsi/zfcp_fc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/s390/scsi/zfcp_fc.c b/drivers/s390/scsi/zfcp_fc.c
index 33eddb02ee30..b018b61bd168 100644
--- a/drivers/s390/scsi/zfcp_fc.c
+++ b/drivers/s390/scsi/zfcp_fc.c
@@ -620,7 +620,7 @@ static void zfcp_fc_sg_free_table(struct scatterlist *sg, int count)
 {
 	int i;
 
-	for (i = 0; i < count; i++, sg++)
+	for (i = 0; i < count; i++, sg = sg_next(sg))
 		if (sg)
 			free_page((unsigned long) sg_virt(sg));
 		else
@@ -641,7 +641,7 @@ static int zfcp_fc_sg_setup_table(struct scatterlist *sg, int count)
 	int i;
 
 	sg_init_table(sg, count);
-	for (i = 0; i < count; i++, sg++) {
+	for (i = 0; i < count; i++, sg = sg_next(sg)) {
 		addr = (void *) get_zeroed_page(GFP_KERNEL);
 		if (!addr) {
 			zfcp_fc_sg_free_table(sg, i);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

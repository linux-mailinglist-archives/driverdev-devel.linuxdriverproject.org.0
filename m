Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B93FC4784E
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2019 05:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B5BFB87522;
	Mon, 17 Jun 2019 03:04:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SEADAO1rWP+s; Mon, 17 Jun 2019 03:04:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30C4386416;
	Mon, 17 Jun 2019 03:04:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D65E41BF365
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 03:04:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D39A387327
 for <devel@linuxdriverproject.org>; Mon, 17 Jun 2019 03:04:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Z6t8ty3jSUA for <devel@linuxdriverproject.org>;
 Mon, 17 Jun 2019 03:04:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C77BD86416
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 03:04:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 97BA4308621C;
 Mon, 17 Jun 2019 03:04:06 +0000 (UTC)
Received: from localhost (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 64D211001B2E;
 Mon, 17 Jun 2019 03:03:53 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>
Subject: [PATCH V4 00/16] use sg helper to operate scatterlist
Date: Mon, 17 Jun 2019 11:03:33 +0800
Message-Id: <20190617030349.26415-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 17 Jun 2019 03:04:07 +0000 (UTC)
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

Hi,

Scsi MQ makes a large static allocation for the first scatter gather
list chunk for the driver to use.  This is a performance headache we'd
like to fix by reducing the size of the allocation to a 2 element
array.  Doing this will break the current guarantee that any driver
using SG_ALL doesn't need to use the scatterlist iterators and can get
away with directly dereferencing the array.  Thus we need to update all
drivers to use the scatterlist iterators and remove direct indexing of
the scatterlist array before reducing the initial scatterlist
allocation size in SCSI.

So convert drivers to use scatterlist helper.

There are two types of direct access on scatterlist in SCSI drivers:

1) operate on the scatterlist via scsi_sglist(scmd) directly, then one
local variable of 'struct scatterlist *' is involved.

2) scsi_sglist(scmd) is stored to cmd->SCp.buffer and the scatterlist is
used via cmd->SCp.buffer.

The following coccinelle semantic patch is developed for finding the
above two types of direct scatterlist uses:

	@@ struct scatterlist *p; @@
	(
	- ++p
	+ p = sg_next(p)
	|
	- p++
	+ p = sg_next(p)
	|
	- p = p + 1
	+ p = sg_next(p)
	|
	- p += 1
	+ p = sg_next(p)
	|
	- --p
	+ p = sg_non_exist_prev(p)
	|
	- p--
	+ p = sg_non_exist_prev(p)
	|
	- p = p - 1
	+ p = sg_non_exist_prev(p)
	|
	- p -= 1
	+ p = sg_non_exist_prev(p)
	)
	
	@@
	struct scatterlist *p;
	expression data != 0;
	@@
	- p[data]
	+ '!!!!!!use sg iterator helper!!!!!!'
	
	@@
	struct scatterlist[] p;
	expression data != 0;
	@@
	- p[data]
	+ '!!!!!!use sg iterator helper!!!!!!'
	
	
	@@ struct scsi_cmnd *scmd; @@
	(
	-	scmd->SCp.buffer++
	+	scmd->SCp.buffer = sg_next(scmd->SCp.buffer)
	|
	-	++scmd->SCp.buffer
	+	scmd->SCp.buffer = sg_next(scmd->SCp.buffer)
	|
	-	scmd->SCp.buffer += 1
	+	scmd->SCp.buffer = sg_next(scmd->SCp.buffer)
	|
	-	scmd->SCp.buffer = scmd->SCp.buffer + 1
	+	scmd->SCp.buffer = sg_next(scmd->SCp.buffer)
	|
	-	scmd->SCp.buffer--
	+	scmd->SCp.buffer = sg_no_exit_prev(scmd->SCp.buffer)
	|
	-	--scmd->SCp.buffer
	+	scmd->SCp.buffer = sg_no_exit_prev(scmd->SCp.buffer)
	|
	-	scmd->SCp.buffer -= 1
	+	scmd->SCp.buffer = sg_no_exit_prev(scmd->SCp.buffer)
	|
	-	scmd->SCp.buffer = scmd->SCp.buffer - 1
	+	scmd->SCp.buffer = sg_no_exit_prev(scmd->SCp.buffer)
	)
	
	@@
	struct scsi_cmnd *scmd;
	expression data != 0;
	@@
	- scmd->SCp.buffer[data]
	+ '!!!!!!use sg iterator helper!!!!!!'


The 1st 10 patches are for handling type #1, and the other 6 patches
for handling type #2, and all the 16 are found by the above coccinelle
semantic patch.

V4:
	- fix building failure on pmcraid's conversion 
	- improve the coccinelle semantic patch to cover both two types of
	scatterlist direct use
	- driver 'staging: rtsx' is covered

V3:
	- update commit log and cover letter, most of words are from
	James Bottomley	

V2:
	- use coccinelle semantic patch for finding direct sgl uses from
	scsi command(9 drivers found)
	- run 'git grep -E "SCp.buffer"' to find direct sgl uses
	from SCp.buffer(6 drivers are found)


Finn Thain (1):
  NCR5380: Support chained sg lists

Ming Lei (15):
  scsi: vmw_pscsi: use sg helper to operate scatterlist
  scsi: advansys: use sg helper to operate scatterlist
  scsi: lpfc: use sg helper to operate scatterlist
  scsi: mvumi: use sg helper to operate scatterlist
  scsi: ipr: use sg helper to operate scatterlist
  scsi: pmcraid: use sg helper to operate scatterlist
  usb: image: microtek: use sg helper to operate scatterlist
  staging: unisys: visorhba: use sg helper to operate scatterlist
  staging: rtsx: use sg helper to operate scatterlist
  s390: zfcp_fc: use sg helper to operate scatterlist
  scsi: aha152x: use sg helper to operate scatterlist
  scsi: imm: use sg helper to operate scatterlist
  scsi: pcmcia: nsp_cs: use sg helper to operate scatterlist
  scsi: ppa: use sg helper to operate scatterlist
  scsi: wd33c93: use sg helper to operate scatterlist

 drivers/s390/scsi/zfcp_fc.c                   |  4 +-
 drivers/scsi/NCR5380.c                        | 41 ++++++++----------
 drivers/scsi/advansys.c                       |  2 +-
 drivers/scsi/aha152x.c                        | 42 +++++++++----------
 drivers/scsi/imm.c                            |  2 +-
 drivers/scsi/ipr.c                            | 28 +++++++------
 drivers/scsi/lpfc/lpfc_nvmet.c                |  3 +-
 drivers/scsi/mvumi.c                          |  9 ++--
 drivers/scsi/pcmcia/nsp_cs.c                  |  4 +-
 drivers/scsi/pmcraid.c                        | 14 +++----
 drivers/scsi/ppa.c                            |  2 +-
 drivers/scsi/vmw_pvscsi.c                     |  2 +-
 drivers/scsi/wd33c93.c                        |  2 +-
 drivers/staging/rts5208/rtsx_transport.c      |  4 +-
 .../staging/unisys/visorhba/visorhba_main.c   |  9 ++--
 drivers/usb/image/microtek.c                  | 20 ++++-----
 drivers/usb/image/microtek.h                  |  2 +-
 17 files changed, 90 insertions(+), 100 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

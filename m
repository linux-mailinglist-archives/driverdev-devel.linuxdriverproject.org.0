Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 860ECB323
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 11:20:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3687A86D11;
	Sat, 27 Apr 2019 09:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a5dCYcYIDliv; Sat, 27 Apr 2019 09:20:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A773D85A2E;
	Sat, 27 Apr 2019 09:20:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 933BD1BF346
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 09:20:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9029A861EB
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 09:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3QHA65ykjndE for <devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 09:20:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from www.osadl.org (www.osadl.org [62.245.132.105])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D987185A2E
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 09:20:14 +0000 (UTC)
Received: from debian01.hofrr.at (178.115.242.59.static.drei.at
 [178.115.242.59])
 by www.osadl.org (8.13.8/8.13.8/OSADL-2007092901) with ESMTP id x3R9K4GY028122;
 Sat, 27 Apr 2019 11:20:04 +0200
From: Nicholas Mc Guire <hofrat@osadl.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH RFC V2] staging: kpc2000: use int for
 wait_for_completion_interruptible
Date: Sat, 27 Apr 2019 11:14:34 +0200
Message-Id: <1556356474-8575-1-git-send-email-hofrat@osadl.org>
X-Mailer: git-send-email 2.1.4
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
Cc: devel@driverdev.osuosl.org, Matt Sickler <Matt.Sickler@daktronics.com>,
 linux-kernel@vger.kernel.org, Nicholas Mc Guire <hofrat@osadl.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

weit_for_completion_interruptible returns in (0 on completion and 
-ERESTARTSYS on interruption) - so use an int not long for API conformance
and simplify the logic here a bit: need not check explicitly for == 0 as
this is either -ERESTARTSYS or 0.

Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
---

Problem located with experimental API conformance checking cocci script

V2: kbuild reported a missing closing comment - seems that I managed
    send out the the initial version before compile testing/checkpatching
    sorry for the noise.

Not sure if making such point-wise fixes makes much sense - this driver has
a number of issues both style-wise and API compliance wise.

Note that kpc_dma_transfer() returns int not long - currently rv (long) is
being returned in most places (some places do return int) - so the return
handling here is a bit inconsistent.

Patch was compile-tested with: x86_64_defconfig + KPC2000=y, KPC2000_DMA=y
(with a number of unrelated sparse warnings about non-declared symbols, and
 smatch warnings about overflowing constants as well as coccicheck warning
 about usless casting)

Patch is against 5.1-rc6 (localversion-next is next-20190426)

 drivers/staging/kpc2000/kpc_dma/fileops.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 5741d2b..66f0d5a 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -38,6 +38,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 {
 	unsigned int i = 0;
 	long rv = 0;
+	int ret = 0;
 	struct kpc_dma_device *ldev;
 	struct aio_cb_data *acd;
 	DECLARE_COMPLETION_ONSTACK(done);
@@ -180,16 +181,17 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	
 	// If this is a synchronous kiocb, we need to put the calling process to sleep until the transfer is complete
 	if (kcb == NULL || is_sync_kiocb(kcb)){
-		rv = wait_for_completion_interruptible(&done);
-		// If the user aborted (rv == -ERESTARTSYS), we're no longer responsible for cleaning up the acd
-		if (rv == -ERESTARTSYS){
+		ret = wait_for_completion_interruptible(&done);
+		/* If the user aborted (ret == -ERESTARTSYS), we're
+		 * no longer responsible for cleaning up the acd
+		 */
+		if (ret) {
 			acd->cpl = NULL;
-		}
-		if (rv == 0){
-			rv = acd->len;
+		} else {
+			ret = acd->len;
 			kfree(acd);
 		}
-		return rv;
+		return ret;
 	}
 	
 	return -EIOCBQUEUED;
-- 
2.1.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

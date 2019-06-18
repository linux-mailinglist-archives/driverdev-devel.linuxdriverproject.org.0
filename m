Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6FE49E1A
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 12:16:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F238487917;
	Tue, 18 Jun 2019 10:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lrMoBKN1ocIS; Tue, 18 Jun 2019 10:16:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E2F286ECC;
	Tue, 18 Jun 2019 10:16:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C57541BF28F
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 10:15:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BFDA71FDFB
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 10:15:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IfYqU5YJfcTC for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 10:15:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id E99561FCA0
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 10:15:57 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1hdB9f-0005kT-1n; Tue, 18 Jun 2019 10:15:55 +0000
From: Colin King <colin.king@canonical.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: kpc2000: fix integer overflow with left shifts
Date: Tue, 18 Jun 2019 11:15:54 +0100
Message-Id: <20190618101554.31723-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

Currently there are several left shifts that are assigned to 64 bit
unsigned longs where a signed int 1 is being shifted, resulting in
an integer overflow.  Fix this bit using the BIT_ULL macro to perform
a 64 bit shift.  Also clean up an overly long statement.

Addresses-Coverity: ("Unintentional integer overflow")
Fixes: 7dc7967fc39a ("staging: kpc2000: add initial set of Daktronics drivers")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 138d16bcf6e1..c124a836db27 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -238,7 +238,7 @@ int  kp2000_check_uio_irq(struct kp2000_device *pcard, u32 irq_num)
 {
 	u64 interrupt_active   =  readq(pcard->sysinfo_regs_base + REG_INTERRUPT_ACTIVE);
 	u64 interrupt_mask_inv = ~readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
-	u64 irq_check_mask = (1 << irq_num);
+	u64 irq_check_mask = BIT_ULL(irq_num);
 
 	if (interrupt_active & irq_check_mask) { // if it's active (interrupt pending)
 		if (interrupt_mask_inv & irq_check_mask) {    // and if it's not masked off
@@ -257,7 +257,9 @@ irqreturn_t  kuio_handler(int irq, struct uio_info *uioinfo)
 		return IRQ_NONE;
 
 	if (kp2000_check_uio_irq(kudev->pcard, kudev->cte.irq_base_num)) {
-		writeq((1 << kudev->cte.irq_base_num), kudev->pcard->sysinfo_regs_base + REG_INTERRUPT_ACTIVE); // Clear the active flag
+		/* Clear the active flag */
+		writeq(BIT_ULL(kudev->cte.irq_base_num),
+		       kudev->pcard->sysinfo_regs_base + REG_INTERRUPT_ACTIVE);
 		return IRQ_HANDLED;
 	}
 	return IRQ_NONE;
@@ -273,9 +275,9 @@ int kuio_irqcontrol(struct uio_info *uioinfo, s32 irq_on)
 	mutex_lock(&pcard->sem);
 	mask = readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
 	if (irq_on)
-		mask &= ~(1 << (kudev->cte.irq_base_num));
+		mask &= ~(BIT_ULL(kudev->cte.irq_base_num));
 	else
-		mask |= (1 << (kudev->cte.irq_base_num));
+		mask |= BIT_ULL(kudev->cte.irq_base_num);
 	writeq(mask, pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
 	mutex_unlock(&pcard->sem);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E089297F0
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 14:19:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7213831917;
	Fri, 24 May 2019 12:19:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L8XVT+PnZdQe; Fri, 24 May 2019 12:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B73B4318F2;
	Fri, 24 May 2019 12:19:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 844FB1BF3FC
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 May 2019 12:19:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8170D22FD5
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 May 2019 12:19:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aXpChGt3FReV
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 May 2019 12:19:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 5F29221526
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 May 2019 12:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jEKzVvebuZNr2VB5yMXPNu9Jk3joa/XaWLAvgHO1E24=; b=OjPum/cprmcunqPJmYYMVDL76i
 zL4wdk0Wp4L0H16Vzjx9htvUr2zVMVsketnlfVa8TF22UP62lmgGhqui8bfZPkkj6imAKLfQclJE9
 ++ztnd+BdIZuVkkciqC6KD/JNKQxNkotbGakCqwTDrmBlJPeZVQkBEo9xf7LlAwNqBopmQEibaNn7
 R0VTCHWenb+1OGg2G8xcq6XWFuSDt/oAMW1lKqRvanWUx53PsgFO+L+LlZv+HfxoEhjbwkfsoSIEA
 wfvujP07sFpJoog/dNGC+rgYaMMjZ2GLW1cFkHz4kiPpgXzqAOv/KBC7gbcazu7ovPGn0mezm3y0V
 6CjG8aVQ==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hU9AU-0005sY-Lu; Fri, 24 May 2019 13:19:26 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH] staging: kpc2000: simplify nested conditionals that just
 return a boolean.
Date: Fri, 24 May 2019 13:19:26 +0100
Message-Id: <20190524121926.32487-1-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

kp2000_check_uio_irq contained a pair of nested ifs which each evaluated
a bitwise operation.  If both operations yielded true, the function
returned 1; otherwise it returned 0.

Replaced the whole thing with one return statement that evaluates the
combination of both bitwise operations.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
This applies to staging-testing.

I was in two minds whether to send this patch or something less terse:

+	return (interrupt_active & irq_check_mask) &&
+	       (interrupt_mask_inv & irq_check_mask);

 drivers/staging/kpc2000/kpc2000/cell_probe.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index f731a97c6cac..d10f695b6673 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -240,12 +240,10 @@ int  kp2000_check_uio_irq(struct kp2000_device *pcard, u32 irq_num)
 	u64 interrupt_mask_inv = ~readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
 	u64 irq_check_mask = (1 << irq_num);
 
-	if (interrupt_active & irq_check_mask) { // if it's active (interrupt pending)
-		if (interrupt_mask_inv & irq_check_mask) {    // and if it's not masked off
-			return 1;
-		}
-	}
-	return 0;
+	/*
+	 * Is the IRQ active (interrupt pending) and not masked off?
+	 */
+	return (interrupt_active & interrupt_mask_inv & irq_check_mask) != 0;
 }
 
 static
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

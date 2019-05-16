Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2995821019
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 23:38:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0ED6085E07;
	Thu, 16 May 2019 21:38:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NB8u5Lyq-Hhp; Thu, 16 May 2019 21:38:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B768284E7C;
	Thu, 16 May 2019 21:38:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B6A8C1BF964
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AFA0C842CF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EjLDNhUt4XaW
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D7EF9840BF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=L0DX34PgkFT2N6M74qVeNHo482VFS48zIp+eCQuMcw8=; b=saQ8/fxzz+on62gR4C8vUpc0RS
 uun6GfEds+Hfm/RRMEvTwz9yZC6COmFTaTaIRQ2rBKcClSBlIX08niFbb8At0kiQQU79A7JxVZBJv
 NuGImoQ6+WEmUcI7jnxrSoUGKMt4Az/AlfRdFYlgOkA1hcKSwp0CDo99ODodcgWndlTDLqabWd79h
 QtCyeisb6uKB3iL5l5RDvhxkuEOTXPFf7vnmMRv4R284r2YO9STXsZ7nsHtlQlC4jAdU57fvOqb+E
 tNsobB63dv4XM+4S30MYjiLevorPqwiI/7BDOtUUoQW1+iMJa5FjeINkLbfYdZNMUbYPfyCkPoCDV
 Hh1ZH3AA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRO4t-0000d7-1V; Thu, 16 May 2019 22:38:15 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 5/9] staging: kpc2000: use atomic_t to assign card numbers.
Date: Thu, 16 May 2019 22:38:10 +0100
Message-Id: <20190516213814.22232-6-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516213814.22232-1-jeremy@azazel.net>
References: <20190516200411.17715-1-jeremy@azazel.net>
 <20190516213814.22232-1-jeremy@azazel.net>
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

Previously the next card number was assigned from a static int local
variable, which was read and later incremented.  This was not thread-
safe, so now we use an atomic_t and atomic_fetch_add instead.

Updated TODO.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/TODO           | 1 -
 drivers/staging/kpc2000/kpc2000/core.c | 7 ++++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/kpc2000/TODO b/drivers/staging/kpc2000/TODO
index 669fe5bf9637..47530e23e940 100644
--- a/drivers/staging/kpc2000/TODO
+++ b/drivers/staging/kpc2000/TODO
@@ -1,6 +1,5 @@
 - the kpc_spi driver doesn't seem to let multiple transactions (to different instances of the core) happen in parallel...
 - The kpc_i2c driver is a hot mess, it should probably be cleaned up a ton.  It functions against current hardware though.
-- pcard->card_num in kp2000_pcie_probe() is a global variable and needs atomic / locking / something better.
 - would be nice if the AIO fileops in kpc_dma could be made to work
     - probably want to add a CONFIG_ option to control compilation of the AIO functions
 - if the AIO fileops in kpc_dma start working, next would be making iov_count > 1 work too
diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index eb8bac62d33d..72130a50afd6 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0+
+#include <linux/atomic.h>
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/pci.h>
@@ -19,6 +20,8 @@
 #include "pcie.h"
 
 
+static atomic_t next_card_num = ATOMIC_INIT(1);
+
 /*******************************************************
   * SysFS Attributes
   ******************************************************/
@@ -202,7 +205,6 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 {
     int err = 0;
     struct kp2000_device *pcard;
-    static int card_count = 1;
     int rv;
     unsigned long reg_bar_phys_addr;
     unsigned long reg_bar_phys_len;
@@ -222,8 +224,7 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
     //}
 
     //{ Step 2: Initialize trivial pcard elements
-    pcard->card_num = card_count;
-    card_count++;
+    pcard->card_num = atomic_fetch_add(1, &next_card_num);
     scnprintf(pcard->name, 16, "kpcard%d", pcard->card_num);
 
     mutex_init(&pcard->sem);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

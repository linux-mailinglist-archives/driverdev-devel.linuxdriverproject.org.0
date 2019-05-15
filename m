Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D401EC30
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 12:35:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D5D286222;
	Wed, 15 May 2019 10:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2DtpJ4jy3VXD; Wed, 15 May 2019 10:35:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C957286278;
	Wed, 15 May 2019 10:35:08 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AFFCC1BF999
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 36B2E860E0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ycrc-f3trXTf
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:34:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1ABD28610E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aUjzM/FaCdrBOdLMqqqmOCgrVRE34bN8KdTBHKtNuUw=; b=L895jTpuQHdnDQLlu1N7tqudbS
 c+33LyrdMKFX61AqI3tRJGnPFJrg1nNbe/4Oe8unSA1D+dYQxQrLBmS3P/PXT2y9fwwG+8Fg7PHls
 9Phrlf246OLImmvzC9kZC0te/3KW0/t4884KMRLJxEfHa3i3yBfALhsfIcX5XVBLMyuePzHUwUn1u
 fLRhrA1D8EA9bary2s6F8be7FfM2Z2vREi71uHrUj4lsI8tzUQWAfI3eJfJQ1I06BwhnPVry6b14S
 WCZS+x4CaT0vHVMV2CXH8QBZelS6qslyLAkzDtfFZNux4reMT/L2+Qx5nn41p+gFphW02sUC1T3ZJ
 /+f345Kg==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>) id 1hQrFP-0002JH-75
 for driverdev-devel@linuxdriverproject.org; Wed, 15 May 2019 11:34:55 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 5/5] staging: kpc2000: clean up after probe failure.
Date: Wed, 15 May 2019 11:34:54 +0100
Message-Id: <20190515103454.18456-6-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515103454.18456-1-jeremy@azazel.net>
References: <20190515103454.18456-1-jeremy@azazel.net>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On error, kp2000_probe_cores just returned an error without freeing
resources which had previously been allocated.  Added the missing
clean-up code.

Updated TODO.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/TODO                 | 1 -
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 9 +++++++--
 2 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/TODO b/drivers/staging/kpc2000/TODO
index ed951acc829a..669fe5bf9637 100644
--- a/drivers/staging/kpc2000/TODO
+++ b/drivers/staging/kpc2000/TODO
@@ -1,7 +1,6 @@
 - the kpc_spi driver doesn't seem to let multiple transactions (to different instances of the core) happen in parallel...
 - The kpc_i2c driver is a hot mess, it should probably be cleaned up a ton.  It functions against current hardware though.
 - pcard->card_num in kp2000_pcie_probe() is a global variable and needs atomic / locking / something better.
-- the loop in kp2000_probe_cores() that uses probe_core_uio() also probably needs error handling
 - would be nice if the AIO fileops in kpc_dma could be made to work
     - probably want to add a CONFIG_ option to control compilation of the AIO functions
 - if the AIO fileops in kpc_dma start working, next would be making iov_count > 1 work too
diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 211fe2da6daf..6f88c78334bc 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -441,7 +441,7 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
                 dev_err(&pcard->pdev->dev,
                         "kp2000_probe_cores: failed to add core %d: %d\n",
                         i, err);
-                return err;
+                goto error;
             }
             core_num++;
         }
@@ -460,10 +460,15 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
     err = probe_core_uio(0, pcard, "kpc_uio", cte);
     if (err){
         dev_err(&pcard->pdev->dev, "kp2000_probe_cores: failed to add board_info core: %d\n", err);
-        return err;
+        goto error;
     }
     
     return 0;
+
+error:
+    kp2000_remove_cores(pcard);
+    mfd_remove_devices(PCARD_TO_DEV(pcard));
+    return err;
 }
 
 void  kp2000_remove_cores(struct kp2000_device *pcard)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

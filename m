Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A2051EDD2
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 13:14:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7A5F86D69;
	Wed, 15 May 2019 11:14:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id suwQCWi2P1bM; Wed, 15 May 2019 11:14:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DACD186C02;
	Wed, 15 May 2019 11:14:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8DCE1BF3D9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E6838220C2
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Sg1DBXhzorc
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F4CD22699
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RVnr6ncZvXnmqdiXGWsyFa2s0os6BuEieBIr3AUDbIQ=; b=dAPq0po2QmkzEppjzxPY17udvY
 GoHj9vHGES+RzpZQmJuYJWe8M75c9mqnvnQFkNuTqI8CDJ6GYQHPzeuj8KnS3qPM0dGB2+EqQrYEE
 a+Q7YqtyJdoZxu2qwufPI/noS/1pMsO3ftX7WnYkh8OWDVi/f02XbHUazqDG48m4Kq8mgVR8xvbxu
 YsFEbm3jTMK5soQ6u3BMiz1hTFu0fVbsFGd5h4dGrOPAaYQjb3J8o5dT+VyzXa5nwUcYlT2gJTmT/
 UNVc3MqN+zDBOG9NL9S4yX5eBreZzEdbHnnrgOjp17Hya/Xu2MRC/KZrvzxU/WydM0B9kSzVryQQS
 L7fKBbng==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>) id 1hQrrq-0003Fc-SN
 for driverdev-devel@linuxdriverproject.org; Wed, 15 May 2019 12:14:38 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 5/5] staging: kpc2000: clean up after probe failure.
Date: Wed, 15 May 2019 12:14:37 +0100
Message-Id: <20190515111437.18828-6-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515111437.18828-1-jeremy@azazel.net>
References: <20190515103454.18456-1-jeremy@azazel.net>
 <20190515111437.18828-1-jeremy@azazel.net>
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
index e4c21291fe16..bce2bf9eee04 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -438,7 +438,7 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
                 dev_err(&pcard->pdev->dev,
                         "kp2000_probe_cores: failed to add core %d: %d\n",
                         i, err);
-                return err;
+                goto error;
             }
             core_num++;
         }
@@ -457,10 +457,15 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
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

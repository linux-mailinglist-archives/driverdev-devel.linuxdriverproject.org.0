Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C89E1EC31
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 12:35:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1A761283E2;
	Wed, 15 May 2019 10:35:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uxu3yjYmY2dd; Wed, 15 May 2019 10:35:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 43DBC2E5CF;
	Wed, 15 May 2019 10:35:06 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AFC491BF997
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 14AB7860EF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2NS8_PX0yZti
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:34:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E82B8860E0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 10:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7Tzhwy+ViBO5bcDD/wZBHBxczCA5Qfqmiqdi6QaSXYE=; b=hfiuSrhIjhFW9uAvSZ+/A6eBBP
 peQAgOBt12+EEO069sqZSjzyBgf6fWc06BfsJuzXOMVHKp59V4dx7Lzbt2dcGUjFIRN0J4iTgYVdE
 U9V5jFQ8LGNTHQTsu6UgP3mqZMJBxzuCpq4FQPECwwDtJq1G6+QS4PhmXD05jjoXzLMegBmtgfIe2
 5dYMyI1p18tb0ZPeQi8hthD/aEwJnwWbK72yznVbYzYajbmRNAQR7Q3OdKsZ3iAcsUkrK3QAjKD79
 oAseHrHaLJxsCg9m49Kp4HU7WbyUxFabcNMWpgdE6TXVhOEYXquORygY0Ht43St2Sy1O7NxCmP/64
 qvxd3h8A==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>) id 1hQrFO-0002JH-Ka
 for driverdev-devel@linuxdriverproject.org; Wed, 15 May 2019 11:34:54 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 1/5] staging: kpc2000: inverted conditional in order to reduce
 indentation.
Date: Wed, 15 May 2019 11:34:50 +0100
Message-Id: <20190515103454.18456-2-jeremy@azazel.net>
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

Changed:

  for (...) {
    ...
    if (expr) {
      ...
    }
  }

into:

  for (...) {
    ...
    if (!expr)
      continue;
    ...
  }

in order to reduce indentation of conditional block.  Fixed indentation
of cases blocks at the same time.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 43 +++++++++++---------
 1 file changed, 24 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index e0dba91e7fa8..fc7038152bb4 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -414,26 +414,31 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
             read_val = readq(pcard->sysinfo_regs_base + ((pcard->core_table_offset + i) * 8));
             parse_core_table_entry(&cte, read_val, pcard->core_table_rev);
             
-            if (cte.type == current_type_id){
-                switch (cte.type){
-                    case KP_CORE_ID_I2C:
-                        err = probe_core_basic(core_num, pcard, KP_DRIVER_NAME_I2C, cte);
-                        break;
-                    
-                    case KP_CORE_ID_SPI:
-                        err = probe_core_basic(core_num, pcard, KP_DRIVER_NAME_SPI, cte);
-                        break;
-                    
-                    default:
-                        err = probe_core_uio(core_num, pcard, "kpc_uio", cte);
-                        break;
-                }
-                if (err){
-                    dev_err(&pcard->pdev->dev, "kp2000_probe_cores: failed to add core %d: %d\n", i, err);
-                    return err;
-                }
-                core_num++;
+            if (cte.type != current_type_id)
+                continue;
+
+            switch (cte.type) {
+            case KP_CORE_ID_I2C:
+                err = probe_core_basic(core_num, pcard,
+                                       KP_DRIVER_NAME_I2C, cte);
+                break;
+
+            case KP_CORE_ID_SPI:
+                err = probe_core_basic(core_num, pcard,
+                                       KP_DRIVER_NAME_SPI, cte);
+                break;
+
+            default:
+                err = probe_core_uio(core_num, pcard, "kpc_uio", cte);
+                break;
             }
+            if (err) {
+                dev_err(&pcard->pdev->dev,
+                        "kp2000_probe_cores: failed to add core %d: %d\n",
+                        i, err);
+                return err;
+            }
+            core_num++;
         }
     }
     
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

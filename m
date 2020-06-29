Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E38E20D06E
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 19:36:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 435AF89369;
	Mon, 29 Jun 2020 17:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HEIIu3a3Cd-M; Mon, 29 Jun 2020 17:36:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A05D4892A1;
	Mon, 29 Jun 2020 17:36:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 734591BF34C
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7008987466
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:36:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PgRy_GsCFOhq for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 17:36:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1081787417
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 17:36:37 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id b16so8172828pfi.13
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 10:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0fKzFmJ6swEgieVUVWwiawhKzRLACyYFxC8XDxv8xYs=;
 b=R0fJ45LcAzqMEfB6noKVYodLWFah632V2+qcF0G9d0sHUN7n7MwsjReJlbHyOxFAgQ
 Pyqf1TrIb5+jNNbE7Gu2zh7Pev/OIpQYVhr0G06pAc4EvZ3QZti8JaDPPh9JprJ6lqM7
 tqLA5emrcXMH/+DvgiCyb8A/ClsuRUzKMnIbaTWBxp5GGslGGiGr9HKCHUy1PbvqS24j
 60bvSOJ0Nj3W6JRhbdP6caRjgWiAIuXtyAUuqOPa4jCa9O05I1sFDK5lLIaDCRcZodQs
 B0eEZH4anwaspISF1wAL0KJ23fKcs6Ri+fuakGDCBPHZtFTJikMOeCKnC+N8ARzFsldc
 kSNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0fKzFmJ6swEgieVUVWwiawhKzRLACyYFxC8XDxv8xYs=;
 b=tiVAKvhnrrUEYNMoeQG9BIiIj3pWIKz9xdemBYWP9GhdJgFYnIzonRux6y+7CYZxQp
 Oqnw357TDi7AtU/nfvxVFxmuXjHDDGCjsRHCbjpblZPmLWBhToBOw9CcWR6VOk/VxVa+
 P6ii19Q/bjAd1/1TqW9mu9Cx8FgSc7kL8cCHs+Xqm20ZobHDPsCIwEwbKF6UHf6aRsI7
 Q38CsHcUzTPRsV0MM7qrcEJKpOuBSJvr8/X5dDkDTkEFQXsJETTR+DRisgYZ71nlIthk
 qQ7EcvtWhMtXsId7LqRkeT8XDpdtHJW/DHIYzHDDBFy3llju168BNpE62GmFmxdTAv8/
 oCrA==
X-Gm-Message-State: AOAM531iRWmsfqwL/bG36p5wpmslIX3FPRhrZez2cCzcBfxJPuog+Rfu
 lKFKsFzEbFYRpBgJOkmy6+o=
X-Google-Smtp-Source: ABdhPJzX3W9pUE3rQzyWQqNZmLpVSpw6IGMNuc9exvw210citymSwYDDB32iKOYKjCaB5XfOf1cKHw==
X-Received: by 2002:a63:4915:: with SMTP id w21mr5651899pga.134.1593452196587; 
 Mon, 29 Jun 2020 10:36:36 -0700 (PDT)
Received: from varodek.iballbatonwifi.com ([103.105.153.57])
 by smtp.gmail.com with ESMTPSA id k23sm331461pgb.92.2020.06.29.10.36.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 10:36:36 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 bjorn@helgaas.com, Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 4/4] vt6655/device_main.c: use generic power management
Date: Mon, 29 Jun 2020 23:04:59 +0530
Message-Id: <20200629173459.262075-5-vaibhavgupta40@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629173459.262075-1-vaibhavgupta40@gmail.com>
References: <20200629173459.262075-1-vaibhavgupta40@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Vaibhav Gupta <vaibhavgupta40@gmail.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Drivers should not use legacy power management as they have to manage power
states and related operations, for the device, themselves. This driver was
handling them with the help of PCI helper functions like
pci_save/restore_state(), pci_enable/disable_device(), etc.

With generic PM, all essentials will be handled by the PCI core. Driver
needs to do only device-specific operations.

The driver was also using pci_enable_wake(...,..., 0) to disable wake. Use
device_wakeup_disable() instead.

Compile-tested only.

Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
---
 drivers/staging/vt6655/device_main.c | 25 +++++++------------------
 1 file changed, 7 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index 41cbec4134b0..76de1fd568eb 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -1766,48 +1766,37 @@ vt6655_probe(struct pci_dev *pcid, const struct pci_device_id *ent)
 
 /*------------------------------------------------------------------*/
 
-#ifdef CONFIG_PM
-static int vt6655_suspend(struct pci_dev *pcid, pm_message_t state)
+static int __maybe_unused vt6655_suspend(struct device *dev_d)
 {
-	struct vnt_private *priv = pci_get_drvdata(pcid);
+	struct vnt_private *priv = dev_get_drvdata(dev_d);
 	unsigned long flags;
 
 	spin_lock_irqsave(&priv->lock, flags);
 
-	pci_save_state(pcid);
-
 	MACbShutdown(priv);
 
-	pci_disable_device(pcid);
-
 	spin_unlock_irqrestore(&priv->lock, flags);
 
-	pci_set_power_state(pcid, pci_choose_state(pcid, state));
-
 	return 0;
 }
 
-static int vt6655_resume(struct pci_dev *pcid)
+static int __maybe_unused vt6655_resume(struct device *dev_d)
 {
-	pci_set_power_state(pcid, PCI_D0);
-	pci_enable_wake(pcid, PCI_D0, 0);
-	pci_restore_state(pcid);
+	device_wakeup_disable(dev_d);
 
 	return 0;
 }
-#endif
 
 MODULE_DEVICE_TABLE(pci, vt6655_pci_id_table);
 
+static SIMPLE_DEV_PM_OPS(vt6655_pm_ops, vt6655_suspend, vt6655_resume);
+
 static struct pci_driver device_driver = {
 	.name = DEVICE_NAME,
 	.id_table = vt6655_pci_id_table,
 	.probe = vt6655_probe,
 	.remove = vt6655_remove,
-#ifdef CONFIG_PM
-	.suspend = vt6655_suspend,
-	.resume = vt6655_resume,
-#endif
+	.driver.pm = &vt6655_pm_ops,
 };
 
 module_pci_driver(device_driver);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

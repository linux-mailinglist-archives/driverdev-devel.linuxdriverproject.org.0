Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF68F20CD4D
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 10:30:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 801C588801;
	Mon, 29 Jun 2020 08:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R0OOlNzQazdx; Mon, 29 Jun 2020 08:30:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 830F5887E0;
	Mon, 29 Jun 2020 08:30:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 020D91BF2C0
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 08:30:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EC4032051D
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 08:30:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PK7rsUUBNC30 for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 08:30:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 4EDC3204FE
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 08:30:17 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id l6so4668662pjq.1
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 01:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0fKzFmJ6swEgieVUVWwiawhKzRLACyYFxC8XDxv8xYs=;
 b=u88w+iCHX068TQdQGlFddt3hLNx2yCGO6LVQWWywBYNrJPxfB6jM2kQ0XCokKCXWI7
 S1cvKjjK9AGtLBQS1eeRpxrkvPJ0Btbze1eRbWhdVRjxMpbENC512swG6tlAU26t//UN
 9G9uVHnZLZZnXJfFJfhmQyPbcg8w7GRijrB0W97/4wfSZVzov43X5BvVnBmnf6TJTOLM
 UpdbzAp3t1s48We2fXEVPg7YoZteQfCvHF74x2W9vRAIgSOsm1G2psse5kshx5sLUhbi
 xJ6SP0gdGhfnUx8mR9034EIf/ZSIARVpiu8yhDeJVrG+y42v4RxA42o8A5pKyYHKXQCw
 o3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0fKzFmJ6swEgieVUVWwiawhKzRLACyYFxC8XDxv8xYs=;
 b=hjwaD0UrSoXdn1aR0Bjya5+D8RhvMljh/yWfjU6gMCG56xHrSnHzb4scXTbtb2PygN
 ztvG6mKUx3DX8+6E23f0wXsUi0iUGYi+es8EWM1QEWYsPYhCjxFabKqDRgXuz9bIPCrQ
 FNdAc3O/WLzH2KzgLp/7q+l6aGq89RfAKbUvB/ZrA6Fkr5g/qB4ICf9X5QULYBVti/76
 2DYLw1g7J7ECh0RqMrzwVK/2xpmWxtAC9EJnpCpYbS04AlHWsA+zMUCgjUFjMpiOeEcy
 p2X33esPRQDJ/rliH6kA8HOmCNxVijKmASGhAfSQvjp4iC6DfgNPNSpeRfOhHeB0Ybkl
 t8ig==
X-Gm-Message-State: AOAM532op/4FQr309MNkZmO3Ho3t2s72ZUZBFdSzheetgboLZt9rVoc0
 2dbNaGSa4H/2d5PcsW+oh0k=
X-Google-Smtp-Source: ABdhPJx50yg55yRr8PC0U3W2gjfdg9NljC8EQz8jcleRFkBEGqMnsbxB67lXZSnw+Rkn/GpYwdbLHg==
X-Received: by 2002:a17:902:8c89:: with SMTP id
 t9mr13070339plo.14.1593419416870; 
 Mon, 29 Jun 2020 01:30:16 -0700 (PDT)
Received: from varodek.localdomain ([106.210.40.90])
 by smtp.gmail.com with ESMTPSA id 202sm9133790pfw.84.2020.06.29.01.30.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 01:30:16 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 bjorn@helgaas.com, Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v1 4/4] vt6655/device_main.c: use generic power management
Date: Mon, 29 Jun 2020 13:58:19 +0530
Message-Id: <20200629082819.216405-5-vaibhavgupta40@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629082819.216405-1-vaibhavgupta40@gmail.com>
References: <20200629082819.216405-1-vaibhavgupta40@gmail.com>
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC63230A4B
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 14:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6E5C87E01;
	Tue, 28 Jul 2020 12:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l0G+EGJlgH4M; Tue, 28 Jul 2020 12:35:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FE5487DD6;
	Tue, 28 Jul 2020 12:35:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA2571BF3BA
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 12:35:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B254285F8E
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 12:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QVjDApfKpwut for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 12:35:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2BFB780ED2
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 12:35:36 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id d4so11819178pgk.4
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 05:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DB5gyJklH+drcKXDEIOz7SJHYpIMiUo27IS8OMRfS6w=;
 b=i62XuHJ3oZqPQ8sCE+TqRzVITj2tIjqRXOHEA7r93wHyb/0t8Q5b3HtJ7B4c9c1cr9
 5mRcnCYwABHkNa1PCwoUyTxYeLKA+tDJF6+fmtw6gAYcubVG9s7vmE8V28L1PnvmEtkG
 3JWPmSVEScns5VZfQ4+6tQwih+cEZ/g5f2izR21XWglx2qU00kTy+cR/YseYEU5+JVty
 y2h1GaSMxPz9GpFLymuV3qEu/iQh5PsHXKcVzcjCGeLgBMCtxTq9GC/rbcVI4fhl5qhY
 WRgvIxITdOG46ibGv4RoTdUoTjp7SDDq9HxlsO/h2YZZQwJVKEGGo6/DDx1Aj5osKgyN
 G5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DB5gyJklH+drcKXDEIOz7SJHYpIMiUo27IS8OMRfS6w=;
 b=i9w4uwzc2/4KrKtX7GHrE5ZFV7nAdnj/jnONz8U0amk6oVw8sA7nzYLACIjrRHHdvl
 oAccSFZrqeDRQG4gn9vzb513IjddJYjLfeCI32SZcblzW4+X7WOcExVJ8jXkyMtF5Mxu
 FxF+rP35rAq252KJBCqud30UCyeXieMkxVywIJhUaNlqVaBGfxCOSY5dkvWLiP3iTTPS
 wRIlCnTDqacPn8l5vcPqyZToUTcPbVIkgWPiQNm32cXg3EVzNWpE0SffS+ZF3P/+wuK9
 NAGCtqNAgMLnkdc4vF5ndaOmCxzHCqFmdPygRygx/YfuCh2O6B4SJe/2RKTWWPldHEoY
 0bDg==
X-Gm-Message-State: AOAM530FSLXm02cYQ/D77uIhnbOpjrjUHFwbUNyKuupQM1Yb+fLW/S0j
 LWSwwauCTqMyHLyCFZ7+SAc=
X-Google-Smtp-Source: ABdhPJzx5zvY/MCava3Cds0S4W9/FVEmPEvzE3Ra1pPlKsvo2qVOo8Z3stEDz7aIIlOqK7xv1L3N3A==
X-Received: by 2002:a63:504a:: with SMTP id q10mr23558549pgl.377.1595939735584; 
 Tue, 28 Jul 2020 05:35:35 -0700 (PDT)
Received: from varodek.localdomain ([2401:4900:2eef:ca92:3545:4a68:f406:d612])
 by smtp.gmail.com with ESMTPSA id
 f15sm18375458pfk.58.2020.07.28.05.35.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jul 2020 05:35:34 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Bjorn Helgaas <bjorn@helgaas.com>,
 Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>,
 Teddy Wang <teddy.wang@siliconmotion.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v1] staging: sm750fb: use generic power management
Date: Tue, 28 Jul 2020 18:03:49 +0530
Message-Id: <20200728123349.1331679-1-vaibhavgupta40@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Vaibhav Gupta <vaibhavgupta40@gmail.com>, linux-kernel@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Drivers using legacy power management .suspen()/.resume() callbacks
have to manage PCI states and device's PM states themselves. They also
need to take care of standard configuration registers.

Switch to generic power management framework using a single
"struct dev_pm_ops" variable to take the unnecessary load from the driver.
This also avoids the need for the driver to directly call most of the PCI
helper functions and device power state control functions, as through
the generic framework PCI Core takes care of the necessary operations,
and drivers are required to do only device-specific jobs.

Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 91 ++++++---------------------------
 1 file changed, 17 insertions(+), 74 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index a1a82e59dfee..84fb585a5739 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -407,61 +407,29 @@ static inline unsigned int chan_to_field(unsigned int chan,
 	return chan << bf->offset;
 }
 
-#ifdef CONFIG_PM
-static int lynxfb_suspend(struct pci_dev *pdev, pm_message_t mesg)
+static int __maybe_unused lynxfb_suspend(struct device *dev)
 {
 	struct fb_info *info;
 	struct sm750_dev *sm750_dev;
-	int ret;
-
-	if (mesg.event == pdev->dev.power.power_state.event)
-		return 0;
-
-	ret = 0;
-	sm750_dev = pci_get_drvdata(pdev);
-	switch (mesg.event) {
-	case PM_EVENT_FREEZE:
-	case PM_EVENT_PRETHAW:
-		pdev->dev.power.power_state = mesg;
-		return 0;
-	}
+	sm750_dev = dev_get_drvdata(dev);
 
 	console_lock();
-	if (mesg.event & PM_EVENT_SLEEP) {
-		info = sm750_dev->fbinfo[0];
-		if (info)
-			/* 1 means do suspend */
-			fb_set_suspend(info, 1);
-		info = sm750_dev->fbinfo[1];
-		if (info)
-			/* 1 means do suspend */
-			fb_set_suspend(info, 1);
-
-		ret = pci_save_state(pdev);
-		if (ret) {
-			dev_err(&pdev->dev,
-				"error:%d occurred in pci_save_state\n", ret);
-			goto lynxfb_suspend_err;
-		}
-
-		ret = pci_set_power_state(pdev, pci_choose_state(pdev, mesg));
-		if (ret) {
-			dev_err(&pdev->dev,
-				"error:%d occurred in pci_set_power_state\n",
-				ret);
-			goto lynxfb_suspend_err;
-		}
-	}
-
-	pdev->dev.power.power_state = mesg;
+	info = sm750_dev->fbinfo[0];
+	if (info)
+		/* 1 means do suspend */
+		fb_set_suspend(info, 1);
+	info = sm750_dev->fbinfo[1];
+	if (info)
+		/* 1 means do suspend */
+		fb_set_suspend(info, 1);
 
-lynxfb_suspend_err:
 	console_unlock();
-	return ret;
+	return 0;
 }
 
-static int lynxfb_resume(struct pci_dev *pdev)
+static int __maybe_unused lynxfb_resume(struct device *dev)
 {
+	struct pci_dev *pdev = to_pci_dev(dev);
 	struct fb_info *info;
 	struct sm750_dev *sm750_dev;
 
@@ -469,32 +437,10 @@ static int lynxfb_resume(struct pci_dev *pdev)
 	struct lynxfb_crtc *crtc;
 	struct lynx_cursor *cursor;
 
-	int ret;
-
-	ret = 0;
 	sm750_dev = pci_get_drvdata(pdev);
 
 	console_lock();
 
-	ret = pci_set_power_state(pdev, PCI_D0);
-	if (ret) {
-		dev_err(&pdev->dev,
-			"error:%d occurred in pci_set_power_state\n", ret);
-		goto lynxfb_resume_err;
-	}
-
-	if (pdev->dev.power.power_state.event != PM_EVENT_FREEZE) {
-		pci_restore_state(pdev);
-		ret = pci_enable_device(pdev);
-		if (ret) {
-			dev_err(&pdev->dev,
-				"error:%d occurred in pci_enable_device\n",
-				ret);
-			goto lynxfb_resume_err;
-		}
-		pci_set_master(pdev);
-	}
-
 	hw_sm750_inithw(sm750_dev, pdev);
 
 	info = sm750_dev->fbinfo[0];
@@ -523,11 +469,9 @@ static int lynxfb_resume(struct pci_dev *pdev)
 
 	pdev->dev.power.power_state.event = PM_EVENT_RESUME;
 
-lynxfb_resume_err:
 	console_unlock();
-	return ret;
+	return 0;
 }
-#endif
 
 static int lynxfb_ops_check_var(struct fb_var_screeninfo *var,
 				struct fb_info *info)
@@ -1210,15 +1154,14 @@ static const struct pci_device_id smi_pci_table[] = {
 
 MODULE_DEVICE_TABLE(pci, smi_pci_table);
 
+static SIMPLE_DEV_PM_OPS(lynxfb_pm_ops, lynxfb_suspend, lynxfb_resume);
+
 static struct pci_driver lynxfb_driver = {
 	.name =		"sm750fb",
 	.id_table =	smi_pci_table,
 	.probe =	lynxfb_pci_probe,
 	.remove =	lynxfb_pci_remove,
-#ifdef CONFIG_PM
-	.suspend = lynxfb_suspend,
-	.resume = lynxfb_resume,
-#endif
+	.driver.pm =	&lynxfb_pm_ops,
 };
 
 static int __init lynxfb_init(void)
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

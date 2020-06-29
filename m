Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBEC20CD4B
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 10:30:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 917BC887FD;
	Mon, 29 Jun 2020 08:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0pmMQnkMyjCL; Mon, 29 Jun 2020 08:30:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9DA488829;
	Mon, 29 Jun 2020 08:30:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3994C1BF2C0
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 08:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 32F5D8757C
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 08:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kM5EqHep7hBm for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 08:29:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AA2BE87577
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 08:29:58 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id x11so6814823plo.7
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 01:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oH+afjmFUre+9FJ85sDhmbIb/IC6g4po5tsZa9lvjsM=;
 b=f07Xlc1RfHdDURjJolZTPQDp5pEfso1a48bWdBhuRHv1QZTiAWgUu22ScPh1mTwIig
 SV/S+f7osgn1CYkLxGukWgIiliXpYCG7q0i2Vus4lio+WRH9tMUKzyEYdXbK4t7UasfE
 KcOCIY67Bxm3BY2YKG+CJ21lBruqtIeNm1p+/Z2A7OverRY/HWD/+5KdsUt7pPF1P9S6
 A0myuaXZ3T8M9hTEvOEcXKAzqrzbA+yIBThrD5byqvlxqcLlf3RWS0g1jCCgAaU1wVDn
 6dCiWM2OZxMupfZXK8UOZUxOmLy8VgmJGqUzLXJkfrcDmi7ectDy9tOuPWKDI9ZdY6AD
 1JDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oH+afjmFUre+9FJ85sDhmbIb/IC6g4po5tsZa9lvjsM=;
 b=pX/LPakzdy+WAlPxZJxCk2RE8a8kUqa6h5in8CwJ0IAffIahXh5ibQvs1UF5iOvrZg
 oEw5t2z9aPWfWI/IGOsahjgS0vxzPQOmMaYPYGxTIXVRovXXtNzeGJNI+kD+8lCdXotb
 AY6JXxZYcQ1sKui6nxwQzCz6z9P/QnOC4TJnJbBF3twzQWR04ty627Uw6V992LIY8GNa
 1yxPIffEFhB920LCvLo4Dp1O80cvjkaS3VLcubJi3hq6f50s37WSpfntIkFnb5kLo9hm
 oQon5CpoFzq6ZsAkawmUXd37c1tpg8ssYpa9h5bUqgAbb4YsvT5ono1vRAboXWbhDrsh
 Zlsw==
X-Gm-Message-State: AOAM530AU1rTs1S4D+EX+Q24PPbchJUD5+yxgAamRhcz2cm2bC6F69b8
 +5tlCp3267EkT2RYr4wxl93dKk81Epc=
X-Google-Smtp-Source: ABdhPJxR43wP1sFEtNBwNe8FR/hj56jBT3/IpuCPOT3I/llm4eTgVn28U2THxOzPdm/pFRqtHfDxfg==
X-Received: by 2002:a17:902:c142:: with SMTP id
 2mr12962207plj.222.1593419398255; 
 Mon, 29 Jun 2020 01:29:58 -0700 (PDT)
Received: from varodek.localdomain ([106.210.40.90])
 by smtp.gmail.com with ESMTPSA id 202sm9133790pfw.84.2020.06.29.01.29.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 01:29:57 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 bjorn@helgaas.com, Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v1 2/4] staging/rtl8192e: use generic power management
Date: Mon, 29 Jun 2020 13:58:17 +0530
Message-Id: <20200629082819.216405-3-vaibhavgupta40@gmail.com>
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

The structure of working of PM hooks for source files is:
    drivers/staging/rtl8192e/rtl8192e/rtl_pm.h   : callbacks declared
    drivers/staging/rtl8192e/rtl8192e/rtl_pm.c   : callbacks defined
    drivers/staging/rtl8192e/rtl8192e/rtl_core.c : callbacks used

Drivers should not use legacy power management as they have to manage power
states and related operations, for the device, themselves. This driver was
handling them with the help of PCI helper functions like
pci_save/restore_state(), pci_enable/disable_device(), etc.

With generic PM, all essentials will be handled by the PCI core. Driver
needs to do only device-specific operations.

The driver was also using pci_enable_wake(...,..., 0) to disable wake. Use
device_wakeup_disable() instead. Use device_set_wakeup_enable() where WOL
is decided by the value of a variable during runtime.

Compile-tested only.

Signed-off-by: Vaibhav Gupta <vaibhavgupta40@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c |  5 ++--
 drivers/staging/rtl8192e/rtl8192e/rtl_pm.c   | 26 ++++++--------------
 drivers/staging/rtl8192e/rtl8192e/rtl_pm.h   |  4 +--
 3 files changed, 12 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index a7cd4de65b28..dbcb8d0d9707 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -63,13 +63,14 @@ static int _rtl92e_pci_probe(struct pci_dev *pdev,
 static void _rtl92e_pci_disconnect(struct pci_dev *pdev);
 static irqreturn_t _rtl92e_irq(int irq, void *netdev);
 
+static SIMPLE_DEV_PM_OPS(rtl92e_pm_ops, rtl92e_suspend, rtl92e_resume);
+
 static struct pci_driver rtl8192_pci_driver = {
 	.name = DRV_NAME,	/* Driver name   */
 	.id_table = rtl8192_pci_id_tbl,	/* PCI_ID table  */
 	.probe	= _rtl92e_pci_probe,	/* probe fn      */
 	.remove	 = _rtl92e_pci_disconnect,	/* remove fn */
-	.suspend = rtl92e_suspend,	/* PM suspend fn */
-	.resume = rtl92e_resume,                 /* PM resume fn  */
+	.driver.pm = &rtl92e_pm_ops,
 };
 
 static short _rtl92e_is_tx_queue_empty(struct net_device *dev);
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_pm.c b/drivers/staging/rtl8192e/rtl8192e/rtl_pm.c
index cd3e17b41d6f..5575186caebd 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_pm.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_pm.c
@@ -10,9 +10,9 @@
 #include "rtl_pm.h"
 
 
-int rtl92e_suspend(struct pci_dev *pdev, pm_message_t state)
+int rtl92e_suspend(struct device *dev_d)
 {
-	struct net_device *dev = pci_get_drvdata(pdev);
+	struct net_device *dev = dev_get_drvdata(dev_d);
 	struct r8192_priv *priv = rtllib_priv(dev);
 	u32	ulRegRead;
 
@@ -46,40 +46,28 @@ int rtl92e_suspend(struct pci_dev *pdev, pm_message_t state)
 out_pci_suspend:
 	netdev_info(dev, "WOL is %s\n", priv->rtllib->bSupportRemoteWakeUp ?
 			    "Supported" : "Not supported");
-	pci_save_state(pdev);
-	pci_disable_device(pdev);
-	pci_enable_wake(pdev, pci_choose_state(pdev, state),
-			priv->rtllib->bSupportRemoteWakeUp ? 1 : 0);
-	pci_set_power_state(pdev, pci_choose_state(pdev, state));
+	device_set_wakeup_enable(dev_d, priv->rtllib->bSupportRemoteWakeUp);
 
 	mdelay(20);
 
 	return 0;
 }
 
-int rtl92e_resume(struct pci_dev *pdev)
+int rtl92e_resume(struct device *dev_d)
 {
-	struct net_device *dev = pci_get_drvdata(pdev);
+	struct pci_dev *pdev = to_pci_dev(dev_d);
+	struct net_device *dev = dev_get_drvdata(dev_d);
 	struct r8192_priv *priv = rtllib_priv(dev);
-	int err;
 	u32 val;
 
 	netdev_info(dev, "================>r8192E resume call.\n");
 
-	pci_set_power_state(pdev, PCI_D0);
-
-	err = pci_enable_device(pdev);
-	if (err) {
-		netdev_err(dev, "pci_enable_device failed on resume\n");
-		return err;
-	}
-	pci_restore_state(pdev);
 
 	pci_read_config_dword(pdev, 0x40, &val);
 	if ((val & 0x0000ff00) != 0)
 		pci_write_config_dword(pdev, 0x40, val & 0xffff00ff);
 
-	pci_enable_wake(pdev, PCI_D0, 0);
+	device_wakeup_disable(dev_d);
 
 	if (priv->polling_timer_on == 0)
 		rtl92e_check_rfctrl_gpio_timer(&priv->gpio_polling_timer);
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_pm.h b/drivers/staging/rtl8192e/rtl8192e/rtl_pm.h
index e58f2bcdb1dd..fd8611495975 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_pm.h
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_pm.h
@@ -10,7 +10,7 @@
 #include <linux/types.h>
 #include <linux/pci.h>
 
-int rtl92e_suspend(struct pci_dev *dev, pm_message_t state);
-int rtl92e_resume(struct pci_dev *dev);
+int rtl92e_suspend(struct device *dev_d);
+int rtl92e_resume(struct device *dev_d);
 
 #endif
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

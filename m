Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1E420CD4C
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 10:30:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1524D893A4;
	Mon, 29 Jun 2020 08:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mBYO9isoW5T0; Mon, 29 Jun 2020 08:30:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7D5D78939A;
	Mon, 29 Jun 2020 08:30:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 226031BF2C0
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 08:30:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1ED64875A5
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 08:30:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kiZc1_08cYh5 for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 08:30:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A720587592
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 08:30:08 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id d4so7972634pgk.4
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 01:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vn4Ze0UHW0gH8hUyyrUyOwtMgWZD0FLbsTJZBjBZlPg=;
 b=Xj9LflCa6VYlGnt52Oz9oTfxstS0hCfiCJRh3uW2yvWsPSwqKXyPSRW1nuEcpWPyNL
 FkBk+bHHpd79vy+tX/vJYN00b/jYiKPrFg4Ulvz8BPnrO/iN4beZiXVoUFlQiIl0perU
 shErqJOLmy42xDUqXxSzXQyvOzQ2Gg9UjT55O8d6E2HzZJs+eSFO3tM6JB5nqxiJEbPD
 BYcCCAVsV+mJKAzBp+sryiXPHPW26HG1dCtJNWmPUnDgDQKHg6mAggBQGg+vnUjG3XBg
 bSftecGHNVMKKZPLsh2WV9syRkMiwio0H/IvdOESzEKBaIDd8W4R6DVXxFCCaKRqqc6p
 QBmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vn4Ze0UHW0gH8hUyyrUyOwtMgWZD0FLbsTJZBjBZlPg=;
 b=HoIEq21p0pViS+oDiO78FgEEPdBZ6ScQQWhPEmYlw9tLqgF0+lOJSBJGvl879o9iM8
 wujVTkO9aoO4N9O1xV+hAywFz7qfCDz1E/q31JZiXpUSEv6jnL0t2Q1oUIh40P5JCPR7
 LgJeGTmiHKhfVCCDMCD0PYs8Uvs/Fp5Vx/Pjc7ivgca0VH6jjl+BOhphUvhrlZqJMEXK
 YTz01xj3uCUIA49aV9w7p+kFEpLdOHa+TFgEGZkeuQ67lspy9FaeIqiU0Xm1h7aBgkPU
 KgHaGPQbNESGBuFIFopHQ4KymPMR6/I3mW6q94+2UluLkxx4ApW7YLiULerZyIsgMqde
 4Ctg==
X-Gm-Message-State: AOAM531ZhkXlfIoqueHXQrQjl4+zJiCPOkuGwW3K+Dy19lpBGy0X5rDa
 inH6+HeUD9xYrTDnOi1R1R4+7B3VIcw=
X-Google-Smtp-Source: ABdhPJyJRgqqMjOOssnX0R5YVEwJg/CfAQowXuEo7uiGSKuBQsWEr2DXB6YAuuB5IyOGGNgwnqi/8A==
X-Received: by 2002:a63:6486:: with SMTP id y128mr8964219pgb.82.1593419408269; 
 Mon, 29 Jun 2020 01:30:08 -0700 (PDT)
Received: from varodek.localdomain ([106.210.40.90])
 by smtp.gmail.com with ESMTPSA id 202sm9133790pfw.84.2020.06.29.01.29.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 01:30:07 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 bjorn@helgaas.com, Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v1 3/4] rts5208/rtsx.c: use generic power management
Date: Mon, 29 Jun 2020 13:58:18 +0530
Message-Id: <20200629082819.216405-4-vaibhavgupta40@gmail.com>
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
 drivers/staging/rts5208/rtsx.c | 30 ++++++++----------------------
 1 file changed, 8 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
index be0053c795b7..6ca90694db8b 100644
--- a/drivers/staging/rts5208/rtsx.c
+++ b/drivers/staging/rts5208/rtsx.c
@@ -258,12 +258,12 @@ static int rtsx_acquire_irq(struct rtsx_dev *dev)
 	return 0;
 }
 
-#ifdef CONFIG_PM
 /*
  * power management
  */
-static int rtsx_suspend(struct pci_dev *pci, pm_message_t state)
+static int __maybe_unused rtsx_suspend(struct device *dev_d)
 {
+	struct pci_dev *pci = to_pci_dev(dev_d);
 	struct rtsx_dev *dev = pci_get_drvdata(pci);
 	struct rtsx_chip *chip;
 
@@ -285,10 +285,7 @@ static int rtsx_suspend(struct pci_dev *pci, pm_message_t state)
 	if (chip->msi_en)
 		pci_disable_msi(pci);
 
-	pci_save_state(pci);
-	pci_enable_wake(pci, pci_choose_state(pci, state), 1);
-	pci_disable_device(pci);
-	pci_set_power_state(pci, pci_choose_state(pci, state));
+	device_wakeup_enable(dev_d);
 
 	/* unlock the device pointers */
 	mutex_unlock(&dev->dev_mutex);
@@ -296,8 +293,9 @@ static int rtsx_suspend(struct pci_dev *pci, pm_message_t state)
 	return 0;
 }
 
-static int rtsx_resume(struct pci_dev *pci)
+static int __maybe_unused rtsx_resume(struct device *dev_d)
 {
+	struct pci_dev *pci = to_pci_dev(dev_d);
 	struct rtsx_dev *dev = pci_get_drvdata(pci);
 	struct rtsx_chip *chip;
 
@@ -309,16 +307,6 @@ static int rtsx_resume(struct pci_dev *pci)
 	/* lock the device pointers */
 	mutex_lock(&dev->dev_mutex);
 
-	pci_set_power_state(pci, PCI_D0);
-	pci_restore_state(pci);
-	if (pci_enable_device(pci) < 0) {
-		dev_err(&dev->pci->dev,
-			"%s: pci_enable_device failed, disabling device\n",
-			CR_DRIVER_NAME);
-		/* unlock the device pointers */
-		mutex_unlock(&dev->dev_mutex);
-		return -EIO;
-	}
 	pci_set_master(pci);
 
 	if (chip->msi_en) {
@@ -340,7 +328,6 @@ static int rtsx_resume(struct pci_dev *pci)
 
 	return 0;
 }
-#endif /* CONFIG_PM */
 
 static void rtsx_shutdown(struct pci_dev *pci)
 {
@@ -999,16 +986,15 @@ static const struct pci_device_id rtsx_ids[] = {
 
 MODULE_DEVICE_TABLE(pci, rtsx_ids);
 
+static SIMPLE_DEV_PM_OPS(rtsx_pm_ops, rtsx_suspend, rtsx_resume);
+
 /* pci_driver definition */
 static struct pci_driver rtsx_driver = {
 	.name = CR_DRIVER_NAME,
 	.id_table = rtsx_ids,
 	.probe = rtsx_probe,
 	.remove = rtsx_remove,
-#ifdef CONFIG_PM
-	.suspend = rtsx_suspend,
-	.resume = rtsx_resume,
-#endif
+	.driver.pm = &rtsx_pm_ops,
 	.shutdown = rtsx_shutdown,
 };
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

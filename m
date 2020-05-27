Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D4A1E3D3C
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 11:06:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1136823B2B;
	Wed, 27 May 2020 09:06:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aWzQCkLke9PB; Wed, 27 May 2020 09:06:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8A2BA204D1;
	Wed, 27 May 2020 09:06:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E76F11BF2EF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E40DC87D5D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fLbRe9kkA+NR
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7828687D3D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590570395; x=1622106395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=9tGRvt0IuvI8/C5nNy+dhJmMZwVdWn7eK6/c8LNTvps=;
 b=OL7IDv48FYQtpaZjVwheX4/1auFrkcJwIJJHoLHYygP15OhyY8Z1ubqL
 T3e/Ar9ivMMUwQTg8G8379Nm85S46H3ZVr62g4mCQsbm5KKygTEqBGl5H
 e2Tqs2Lqmy/ZqLstAdYbKCF6CuVdA+TC8P2MAuE7AgGrH+PFvfgNYUEwI
 2y5BhK2LZcCS9scIg9rvE2SA+bHGQGyRd0XAvUefRbXHeZCI12pnBML8H
 C1izFPdUzUWx41E8hHpYIy8tXQivUPpyqpI4Mex9zyIBWC6rIgz4Z3gED
 BAutYkcbGYbV4WlejQXm49njC31hXJDvN0z8o0T9T11ZSCrcNp5Sla40/ g==;
IronPort-SDR: IwA80yyJj6oK3zqahw43qnQiPKDiVRgKN76n9pkyvGpjPKCagXFlzvXq2DuOmLk7jp7da1h5UI
 9DU//eRFmrWl5LWGl/9DRzLOKKFy3OxEHVvxscX1nh07/JGTvlL3ZlwFfO2ifIm3PrrN7m6ZXG
 NJjRZfFv48r3K0lIfHC0B4zueFwgivdAtCsixz+5J2+idna6lT7Vh46ATlrO4BkHjLiPx6Nimf
 ELMwAHivaX9C3rpWe6CoDr1hqjbeCpUF61C+OuH4JR0/8JLsKyXIqVu/GuzXgQ186YXLhhoyMb
 iVI=
X-IronPort-AV: E=Sophos;i="5.73,440,1583218800"; d="scan'208";a="74590209"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 May 2020 02:06:35 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 02:06:28 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 27 May 2020 02:06:33 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 03/10] staging: most: usb: change return value of function
 drci_rd_reg
Date: Wed, 27 May 2020 11:06:20 +0200
Message-ID: <1590570387-27069-4-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590570387-27069-1-git-send-email-christian.gromm@microchip.com>
References: <1590570387-27069-1-git-send-email-christian.gromm@microchip.com>
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch makes function drci_rd_reg return 0 in case of success
and a negative number else. As no caller is evaluating the number
of bytes transferred by function usb_control_msg this information is
being omitted.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/most/usb/usb.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index fd0d885..64005b6 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -153,7 +153,9 @@ static inline int drci_rd_reg(struct usb_device *dev, u16 reg, u16 *buf)
 	*buf = le16_to_cpu(*dma_buf);
 	kfree(dma_buf);
 
-	return retval;
+	if (retval < 0)
+		return retval;
+	return 0;
 }
 
 /**
@@ -686,22 +688,22 @@ static void wq_netinfo(struct work_struct *wq_obj)
 	u16 hi, mi, lo, link;
 	u8 hw_addr[6];
 
-	if (drci_rd_reg(usb_device, DRCI_REG_HW_ADDR_HI, &hi) < 0) {
+	if (drci_rd_reg(usb_device, DRCI_REG_HW_ADDR_HI, &hi)) {
 		dev_err(dev, "Vendor request 'hw_addr_hi' failed\n");
 		return;
 	}
 
-	if (drci_rd_reg(usb_device, DRCI_REG_HW_ADDR_MI, &mi) < 0) {
+	if (drci_rd_reg(usb_device, DRCI_REG_HW_ADDR_MI, &mi)) {
 		dev_err(dev, "Vendor request 'hw_addr_mid' failed\n");
 		return;
 	}
 
-	if (drci_rd_reg(usb_device, DRCI_REG_HW_ADDR_LO, &lo) < 0) {
+	if (drci_rd_reg(usb_device, DRCI_REG_HW_ADDR_LO, &lo)) {
 		dev_err(dev, "Vendor request 'hw_addr_low' failed\n");
 		return;
 	}
 
-	if (drci_rd_reg(usb_device, DRCI_REG_NI_STATE, &link) < 0) {
+	if (drci_rd_reg(usb_device, DRCI_REG_NI_STATE, &link)) {
 		dev_err(dev, "Vendor request 'link status' failed\n");
 		return;
 	}
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

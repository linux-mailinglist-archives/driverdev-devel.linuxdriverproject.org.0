Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0961D4959
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 11:21:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C33E2E6FF;
	Fri, 15 May 2020 09:21:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GA-6PxXoFnpx; Fri, 15 May 2020 09:21:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9DB3A2E5A9;
	Fri, 15 May 2020 09:21:28 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F30391BF2C1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F00BB87D37
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E64L4wx1NW-b
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A155E87D2A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589534482; x=1621070482;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=Wpc2Ubd7jxe20vWKldyIQapLjZWeAIR+myyeB2Nv59g=;
 b=J1RlxtPZsjH/zrr92qteh1wuOzXoUb/IcY/koZBVcYmJnRHxJZaO4yKO
 hHxaOiCohBKw4fcNbplpg+4ypYnL6mIXZS+YwklNHYPNcQjQM1B24/H4A
 UPNWUKu+e8J+f88Y1W5vw/j6um0g9qdsHau49SrG/nlKBddv4msL3iEU5
 Blfhu8DbdZ8ftALtusGFgen9YooDIZqJbhSn+nlSJnp3mIynEqr8s+lkl
 t6q9HXX8qnQvvW60lQ0OvLZOJk8T+RIXDTxK3Es8HEhdGbJ1KIqlIMOiw
 3Za8dqXa6+eFU6BWShCuxb4lSTL8MpeUdCM1cOxAV4xTx3c2M4hDfrq4t g==;
IronPort-SDR: 6z7GK07rqAbGInFCPmB0m2kxoHCwhjm1QlaLl6QBQXARG8febrY9GRKFilj1bPU6DEHeVgfcss
 C7P8hvUJh4Fg96SF3aZrEvvInfnam+u6ZhQUPqFX6jik0Q+KtkVuKVM2pEUGThEekQCcaYNMp5
 SQ0D0HMuy6p0A6OOhwBdx2MADGnRGEDbTrNZneHWDbXhUungox6OAv1e0diJsa1UZ42miNaulg
 IHUOtz00KOH1m7K5Zq3zbstAwDzJhbQf/xWy5Qsjb6JJrMS/oDZf4+aJnIQ8N4QxIHEtIZtnfa
 v8A=
X-IronPort-AV: E=Sophos;i="5.73,394,1583218800"; d="scan'208";a="76018826"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 02:21:09 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 02:21:12 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 15 May 2020 02:21:07 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v3 0/7] staging: most: usb: fix issues found in code audit
Date: Fri, 15 May 2020 11:20:58 +0200
Message-ID: <1589534465-7423-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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

This series fixes the comments/findings on the previously submitted code
of the USB adapter driver. The fixes should be applied in staging before
moving the driver out as one patch.

v2:
	modded patch 2/7
v3:
	modded patch 3/7

Christian Gromm (7):
  staging: most: usb: use dev_*() functions to print messages
  staging: most: usb: remove reference to USB error codes
  staging: most: usb: check number of reported endpoints
  staging: most: usb: use dev_dbg function
  staging: most: fix typo in Kconfig
  staging: most: usb: use macro ATTRIBUTE_GROUPS
  Documentation: ABI: correct sysfs attribute description of MOST driver

 Documentation/ABI/testing/sysfs-bus-most | 104 ++++++++++----------
 drivers/staging/most/usb/Kconfig         |   2 +-
 drivers/staging/most/usb/usb.c           | 159 ++++++-------------------------
 3 files changed, 81 insertions(+), 184 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

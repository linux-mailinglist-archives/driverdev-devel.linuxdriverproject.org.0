Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB9E1D31B7
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 15:47:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A4A4B26FFF;
	Thu, 14 May 2020 13:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xilFj1eeya9x; Thu, 14 May 2020 13:46:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D4FA9270F9;
	Thu, 14 May 2020 13:46:50 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D9A5E1BF31F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1E7C226B7
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ABqg+a0JDB95
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 3B98227036
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589464002; x=1621000002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=NAWNHUGkWVqHw4OIUXqxJ6p/XpmnlbIkD3/DmN+xwEo=;
 b=mjGPZElZ0P/lipEk7IoqMBqYoxW5Sqrdk3kFd1FHnxOU/S8EzeA5a8hj
 /j3SaAKvLgOJIgIqj8uhuD6OrsDYUqC9LCMWzW87XBgIyCxQf6mFl6aA6
 1K180EkyhdTTlFssyeJh+WxIxl8q4CKCr6FjBFFVd8p12CGUlgWDHzQAb
 ZfA1lHcdja2OMliAxdm3eXXR8E/G2r8hjHmJr0TduAiFjMU/8kHHmqEUl
 yY89OcQb4n8ZO24UJrGO4879jutBQCkTWSI+UlFEWgltjuyKGlyovz2Ok
 F3wbNBm7LF8B8yZLnxnxgTpk01ilPzJbZ/QtsodXiXKgQAj+h0/9Svo2a w==;
IronPort-SDR: EqNu7ea7kDXbyk5j5o1+az4/iDy/TFMy05hMc11XCCLyhb0pllfMDptckjwWFzMjoj3/ry8IeT
 R9a+K3ccXQ72D+kEAJn6Ooo2GSV+WCC/YyIiuAJI8Y8XJ4ISswmP+c+xl12iL9VEPf9zkkNXqw
 QQcIsADDChHsgm0u9FX0OdFd15aLIvYiW5H9Fkmv29NyS0S8uvyRQ81/3o2RfslUYksk9PPTHX
 gvlZxGFjB9KlfFk7hDCJvVT8Dr4o0hu9kLthfjN+bUd+7mELMGe2hsnR+6vDZMomkZcuyjWY6x
 ruA=
X-IronPort-AV: E=Sophos;i="5.73,391,1583218800"; d="scan'208";a="75894442"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 06:46:42 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 06:46:42 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 06:46:41 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 5/7] staging: most: fix typo in Kconfig
Date: Thu, 14 May 2020 15:46:27 +0200
Message-ID: <1589463989-30029-6-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589463989-30029-1-git-send-email-christian.gromm@microchip.com>
References: <1589463989-30029-1-git-send-email-christian.gromm@microchip.com>
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

This patch corrects the typo in the Kconfig file where it says
tranceiver instead of transceiver.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Randy Dunlap <rdunlap@infradead.org>
---
 drivers/staging/most/usb/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/usb/Kconfig b/drivers/staging/most/usb/Kconfig
index a86f1f6..75dc25c 100644
--- a/drivers/staging/most/usb/Kconfig
+++ b/drivers/staging/most/usb/Kconfig
@@ -7,7 +7,7 @@ config MOST_USB
 	tristate "USB"
 	depends on USB && NET
 	help
-	  Say Y here if you want to connect via USB to network tranceiver.
+	  Say Y here if you want to connect via USB to network transceiver.
 	  This device driver depends on the networking AIM.
 
 	  To compile this driver as a module, choose M here: the
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

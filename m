Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFB01D2BDA
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 11:53:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 224D6879F2;
	Thu, 14 May 2020 09:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6hK7Z2YZILl; Thu, 14 May 2020 09:53:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51AC0878BC;
	Thu, 14 May 2020 09:53:13 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9DB1D1BF342
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9AA9788B5D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WigXxMs3xAn4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 079C588B47
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589449987; x=1620985987;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=FiT6KA+3tggUbq0sZ6v1AT6SWXbGH6Gme6onwqj5nyI=;
 b=uOeGS0/bJXubTdTGx2SjcP9xuNT8n878vf78m8wR+XNpyTrz98/ITxne
 cOscWqISs/2u36SDzEs4GuPxSmrZd0xtkjcc2VNnL40n8UT2EtoCeOwWp
 SQp4XFk23FjWBm8BwF4/9/uyqCDBKU9gt6SsAUEYxCBhw+P2FPbOI3Ti6
 ysb4j4PrzULjnKukB4LXZFzpXiJzwoh5NopLbDAw7RE4/El/OCZ8FJhdv
 A12pUpKJzeoN8q4HTT1F21qd/849INBxQnOGG1P0rixvafxsk8e+VRW5m
 26c33Ga+4+7iV9W/jv5YKtWCnko8clHBSgbW7SD176eQ/sp9YwHVChFUX g==;
IronPort-SDR: BWkcbR5AxwF2iycFyHmFaxZSAgxKJYRoqos5nrX6+PlLNcEqK23GWn9F/HlELF+p/99sLxqGaa
 PhQTBDI7ZfZzPNc2XT11jLYv3kYABhqFjyF40lgmIPztjPfpiRqVPY/uXiVOn+bNFsYd18MLlt
 MBBEMtVPPY/ozeOzhWlNrGwKd/HZyDHMPWo8FdfFwO4vXy0UPPXDR8fepz+2feov4APDTAO0gz
 YjbLVRqYuYaZWDlAhRCQDXAD0WaF+b8q74r7Xreji8VZ9d5RWGzN6dsc+8it7Wl7iUT3sJ/7ux
 Plc=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="75245170"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 02:53:07 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 02:53:07 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 02:53:06 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2 6/8] drivers: most: fix typo in Kconfig
Date: Thu, 14 May 2020 11:52:54 +0200
Message-ID: <1589449976-11378-7-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589449976-11378-1-git-send-email-christian.gromm@microchip.com>
References: <1589449976-11378-1-git-send-email-christian.gromm@microchip.com>
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
v2:

 drivers/most/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/most/Kconfig b/drivers/most/Kconfig
index 8650683..42f042d 100644
--- a/drivers/most/Kconfig
+++ b/drivers/most/Kconfig
@@ -19,7 +19,7 @@ config MOST_USB
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

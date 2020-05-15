Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C09BD1D495E
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 11:21:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 58AA22E741;
	Fri, 15 May 2020 09:21:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gM4m9yYgRbkr; Fri, 15 May 2020 09:21:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 383892E542;
	Fri, 15 May 2020 09:21:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 27C891BF2C1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 24F4387D2A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x199EBfY0q-P
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E72387D31
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589534483; x=1621070483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=KYVqGATsuFWFchEAYR/jk+REKbiH2P/RNFezfH0En/s=;
 b=lYtPNfS2VCr/bgbrv1Ab+twN5eKsR50dTLEp3LCw4v+qIELnqfa6C4aW
 HlEdThntF+e1ZAwqhTn7rLfanbd7oXfnEomLXOe370fiwt3+FiQdI2ngW
 Z+kRnpJdSgEubMPFFuoDl6WDZ1EhImCPpmGeAVK2745MaRcAmDGv2x0p1
 VUc13a5CVumj8+B4+RdZSEz37LpbV3DkiRJSLGJmqlz83uIf0Up+sa6oO
 Ei1q/I4kZ7Hx1gZ13qlEETjQJblKKdMZtxnrYIiQXVqee2MsVqdPpk0Oi
 3nMb4k058WN8vMadT972MyOk+8GPvjXdJlVESQOzvK429YDQ1k50iQJ1d A==;
IronPort-SDR: ihA4kChsi7ZaaBLX6gsuDGs8H+s7G2V7pmHeXrqj759JfHc/NI6nHuKeqxcPywzWCnPa2+u3eL
 v+yg6VbqpMoOsR7R7lbbEU+s++LiIpZH/+6eB1nzeuhjhsEeSm87Lgq0OLWg9XzOdH0KnzmAPD
 R1Ll0Am4Y4UwdZqt302/Z1ZaZQn3mCwJDkzkYFUZbPWsqRExb4tQ65LZ84nL13+OeasP7xBiH1
 Xitn8kp6VrGyJ2X5D7fOKLqIrSKNCgoUFOP6z/pCwYL+tS8nFlBJ8iGdmmV1ixXl7B4ouUGdfw
 8t4=
X-IronPort-AV: E=Sophos;i="5.73,394,1583218800"; d="scan'208";a="76018854"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 02:21:16 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 02:21:18 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 15 May 2020 02:21:14 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v3 5/7] staging: most: fix typo in Kconfig
Date: Fri, 15 May 2020 11:21:03 +0200
Message-ID: <1589534465-7423-6-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589534465-7423-1-git-send-email-christian.gromm@microchip.com>
References: <1589534465-7423-1-git-send-email-christian.gromm@microchip.com>
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
v3:

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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD34230624
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 11:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA46288311;
	Tue, 28 Jul 2020 09:08:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PexANcdstgKY; Tue, 28 Jul 2020 09:08:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3DBAF88159;
	Tue, 28 Jul 2020 09:08:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C17F1BF477
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 09:08:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0796287D86
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 09:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gpr7NevjUleU
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 09:07:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5883987D80
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 09:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1595927279; x=1627463279;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=s2vmiGFoOg/bbm2fcXyexbzILrczKpcSwUfUhMgDIug=;
 b=dowRcxZnl0oWxfhRTIL08GcKs5rPthDfQI3sj/x7Ijg83fXhs9+Fskib
 LNR3B/x2qVK0yEE7RFcUUkcmuMiqv2yZVVgOh9VY2FeJUrkPWBE9gFIIo
 eYo6xp3hEfQ3eLEjYTtTLfp0DwQCgwg0u2LLwQXgcVAxgy6W2eYonW5az
 qbyVNhMm9jCShp4vKOLqoMt15OSkdCRe618xCZfYvjt892qyi5z9CzjDB
 H947XealpOSWN0+t0ZQBZjAUP2Cxdw7hBEvKot0SAJ4Q+Jzg2avU1YWTf
 lamqit3bfIdBXKdtPQMlwvYIj8iKxmc7NiuKi7RfHVMNTbKDICig3JWLG A==;
IronPort-SDR: tZvSJzj0X0sdWKZPOIzZZOI2vRPG5YMyiwAVBxT+GbWgm5ny3oWDFAy/3JKuXlr5qaoqFbuNK+
 /5NbZmOi33KExNYkl8ru5Wo8dv21SjTE0NDhIcE3WR7jEAoSgOyLWTWEoch8/oIfV96asXJ/kI
 d6UK3eFbPdYhgetEl9WHHc10DkPojPxbdx5B0xL8TxM9enKACZ/uA3Tp+3YKhoCbrUcyLktwv6
 gbduTPfGYNEIM26iXyMVUX5PFgoQ7DfgssqdocDfFTHnDFAGV6MKwXUPQLRHE58oFgEatcrchE
 eRs=
X-IronPort-AV: E=Sophos;i="5.75,405,1589266800"; d="scan'208";a="89405968"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Jul 2020 02:07:58 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 28 Jul 2020 02:07:58 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 28 Jul 2020 02:07:11 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: most: usb: remove NET dependency
Date: Tue, 28 Jul 2020 11:07:55 +0200
Message-ID: <1595927275-27462-1-git-send-email-christian.gromm@microchip.com>
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
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch removes the dependency to NET as it is no longer needed.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/usb/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/most/usb/Kconfig b/drivers/staging/most/usb/Kconfig
index 75dc25c..a47a973 100644
--- a/drivers/staging/most/usb/Kconfig
+++ b/drivers/staging/most/usb/Kconfig
@@ -5,10 +5,9 @@
 
 config MOST_USB
 	tristate "USB"
-	depends on USB && NET
+	depends on USB
 	help
 	  Say Y here if you want to connect via USB to network transceiver.
-	  This device driver depends on the networking AIM.
 
 	  To compile this driver as a module, choose M here: the
 	  module will be called most_usb.
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

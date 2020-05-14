Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6EA1D2BE0
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 11:53:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D915388BA1;
	Thu, 14 May 2020 09:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IOdkFwhtN6Rq; Thu, 14 May 2020 09:53:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA52A88B72;
	Thu, 14 May 2020 09:53:10 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6CDE61BF342
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4A3EF8793E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oQZXS4_rK_3Y
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C5B95878BC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589449984; x=1620985984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=XQTa58qUeJuhzxM/FNXFxnIbhZJuNUPuS+qW9gZgjBI=;
 b=hCe1GCstZYBF5NMXnZrHiE5bj2aNaG2+j7ZYcLvKY/zN37vdMugZAHjH
 cefa1WLP6heDZbwJTrf3wAVajzyfm0N31bwOd8NM/uzB0M/WtCQLDhBS7
 Vz13kYQ77Sd+F5kaB34M2pzoJz21fW46R1noGyAVKLBqJ5dFGF0RhpaIP
 FlLEiWmtKfE5oN/2+yKFiM6X/gTB1WPrdecZLxAi3JJHGEdILm/S84NZH
 gJl4lMhU1EnDdFdyJ8oiKB/ecspYNWcQya+W0JEpnhUrh5U9Km2fL3go0
 OQY351kZtjaXoge5axURrptpY1JENBvu7YsCxShPWThmAHFyGdQRCbVW+ g==;
IronPort-SDR: gqJo9s9O/+ithtdDTS78AXTAjvJ8Cv0eJFpfPrb5N4PToXTmJkkCJNcwM88I4PCpkoX/P9+FAg
 NUEmcEOEor1YOuTA9rklfY2H/dwto4tn8HSX+VOkSUMP0D+saz9UoQ9Dl7tVtKkXOVU4C06OGl
 aLOzWvQkyXxLa2uddHmL7zqEuzO2gM1E79apkKB3sX7JPJjGDIb8zfLdTK40yaI93zpFj5wIxs
 6tjBcGzN5LmfjKXVg/8GrSMTAQtJNhu/VMcuWxTSPPRrvdYBjcV02JlMe1GTZGqEF2B1zyN9Hd
 Pi0=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="76630477"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 02:53:04 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 02:53:03 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 02:53:02 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2 3/8] drivers: most: usb: remove reference to USB error codes
Date: Thu, 14 May 2020 11:52:51 +0200
Message-ID: <1589449976-11378-4-git-send-email-christian.gromm@microchip.com>
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

This patch removes the reference to the driver API file for USB error
codes.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2:

 drivers/most/most_usb.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/most/most_usb.c b/drivers/most/most_usb.c
index 0846b38..49d0b40 100644
--- a/drivers/most/most_usb.c
+++ b/drivers/most/most_usb.c
@@ -477,8 +477,6 @@ static void hdm_write_completion(struct urb *urb)
  * controller use to indicate a transfer has failed because of device
  * disconnect.  In the interval before the hub driver starts disconnect
  * processing, devices may receive such fault reports for every request.
- *
- * See <https://www.kernel.org/doc/Documentation/driver-api/usb/error-codes.rst>
  */
 static void hdm_read_completion(struct urb *urb)
 {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

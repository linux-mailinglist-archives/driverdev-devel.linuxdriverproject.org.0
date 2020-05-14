Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B731D31B2
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 15:46:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 371D98976C;
	Thu, 14 May 2020 13:46:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nAhYe0YVuPwr; Thu, 14 May 2020 13:46:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 461EA88F7E;
	Thu, 14 May 2020 13:46:44 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE80E1BF31F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AACEA270F9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G1ucJFoBnVef
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 78F20266D1
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589463999; x=1620999999;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=tJKksn5Xr0ro+6lb57CFH3u/OX0PnYqchb5vz4CQkJk=;
 b=Ly+DCMJX1FvQ7nFEQkC7K5vFO09obv6TaYLcbNAeK5kn+SIrFJl8le1b
 ouvQWCXuDwAO274/EDoub4nkCCTtIcowQlhWi7ngN+cbR6iGij7YNTWB2
 +ZYFFq5VFXJg13ncfUe5mwxW2z3eB6CnKgCf/SwwDNjk8juv8ujuSDjXx
 1dz8ZK3KNy2EMx/kJ+ediQ70HPAfoxTyInNAL+dxjiTF6mf4oWp8fLpgv
 pxsnA2WlBPywAdXG1nF1zfPtxpPb8upULIbfTAXWMUyvSi4HXwKPpX94g
 Qd53FV5H4WdDWMGo8+xQXXqFllW+psHuQllRp+hafeR4t05KIzVN0eMm5 w==;
IronPort-SDR: GDUH6Rx/XizZ0dK4SiFg4KnrMLmRndorBGOggcEE+nCKKWfHLD7Hos8C7bH4Bki27SKqpvmtVP
 6ymeUviP/uAkLakSvTmZNt2ncF2mVl6ZumZql0TSrVxdFibfOdCMFKIn2P/IZIZ/SAaXnXdKYK
 SasrTGYd7xBBznsbxdAmfik9fBGx/rn/5unzxykrvFNtPb9DaE6XQg3tfj7hE1E/u340DJsoHO
 IXDil8ckq6xJyAC/ASNJBt588j1QwfJJPo11vdvlj0/aszbImT/D5QXJLFx3jhuUVZWC1kQAHm
 MW8=
X-IronPort-AV: E=Sophos;i="5.73,391,1583218800"; d="scan'208";a="75894428"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 06:46:37 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 06:46:35 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 06:46:37 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 2/7] staging: most: usb: remove reference to USB error codes
Date: Thu, 14 May 2020 15:46:24 +0200
Message-ID: <1589463989-30029-3-git-send-email-christian.gromm@microchip.com>
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

This patch removes the reference to the driver API file for USB error
codes.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/most/usb/usb.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 85d4fa0..76963c0 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
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

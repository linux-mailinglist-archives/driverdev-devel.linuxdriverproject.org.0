Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0735C1C525D
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 12:00:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F3778953C;
	Tue,  5 May 2020 10:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZHdwXWJ1j3Jy; Tue,  5 May 2020 10:00:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D165894D2;
	Tue,  5 May 2020 10:00:43 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C04EF1BF2E4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BCF57878AF
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fhWpeMgxf1F4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F33C68784F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588672834; x=1620208834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=GYKcX7/sEGQ5tFflO9vUER+BCFQCqBuLr24Kv2tpwz0=;
 b=aKTbm8ZinagW88HxaC+f4Qr9bRBO4tZRNXqlqmXOPiSqGIwz+J73JRCD
 Lo0n8GkmYV5mLypz9StVJieBeIeexf5QTR3UovuZUoXm+L+bkDsiTBHWQ
 cHsd0RIKTDN4i+doGBe+RAsDYGX8GEITZyQdbl8/DmfeO3NWXdrACOO5w
 gMnFnrOtyAjKKDDnYGpA9DDSud4Dtxzc0QxE/k4oZklE8qdpQOarNDGcx
 EUQO8tBdbReM2ynZOIJj/nEPJ/6nSuzlRIHw3TaWtPo/iao/j1Rg7ALrn
 vG++ScYOLT88+G7+D1nU+bpkD+grYrVWIqOJtRaQrgJOrLzj6vitZOIrk Q==;
IronPort-SDR: RGqRHfLYoG5JrAWW/RNpVGldvmbbemv2ZikboemJhD/LvOOwNbq8yBCXbrMi1BkIh3xLrLnkBY
 SRsholU02iEDv/nBpSuwNSKIWiu46tO8lwmy7nzHmQYJibvTyaF/ndIeOaz6tIHLoqv8BMhS+M
 HhsteeyNG3W0qzoKBwwcfDl/MHo3yE8EPK72dU+UXSNQ+MMZ2x8PELFNe7Wj8IYG5TkYHjf1de
 w7YNZi9f1ITlqR/Pr36UxddwtcJws31Jz3RZN0CUYQKt70GO06siVtZmgrA9b0ahJxs3boo5B9
 W9A=
X-IronPort-AV: E=Sophos;i="5.73,354,1583218800"; d="scan'208";a="74250518"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 May 2020 03:00:34 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 May 2020 03:00:35 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 5 May 2020 03:00:33 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 1/4] staging: most: usb: remove overcautious parameter checking
Date: Tue, 5 May 2020 12:00:26 +0200
Message-ID: <1588672829-28883-2-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588672829-28883-1-git-send-email-christian.gromm@microchip.com>
References: <1588672829-28883-1-git-send-email-christian.gromm@microchip.com>
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

The interface pointer passed to a core API function cannot be NULL. This
patch removes unnessecary the sanity check of the pointer.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/most/usb/usb.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index e8c5a8c..9527e31 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -233,10 +233,6 @@ static int hdm_poison_channel(struct most_interface *iface, int channel)
 	unsigned long flags;
 	spinlock_t *lock; /* temp. lock */
 
-	if (unlikely(!iface)) {
-		dev_warn(&mdev->usb_device->dev, "Poison: Bad interface.\n");
-		return -EIO;
-	}
 	if (unlikely(channel < 0 || channel >= iface->num_channels)) {
 		dev_warn(&mdev->usb_device->dev, "Channel ID out of range.\n");
 		return -ECHRNG;
@@ -559,7 +555,7 @@ static int hdm_enqueue(struct most_interface *iface, int channel,
 	unsigned long length;
 	void *virt_address;
 
-	if (unlikely(!iface || !mbo))
+	if (unlikely(!mbo))
 		return -EIO;
 	if (unlikely(iface->num_channels <= channel || channel < 0))
 		return -ECHRNG;
@@ -674,8 +670,8 @@ static int hdm_configure_channel(struct most_interface *iface, int channel,
 	mdev->clear_work[channel].mdev = mdev;
 	INIT_WORK(&mdev->clear_work[channel].ws, wq_clear_halt);
 
-	if (unlikely(!iface || !conf)) {
-		dev_err(dev, "Bad interface or config pointer.\n");
+	if (unlikely(!conf)) {
+		dev_err(dev, "Bad config pointer.\n");
 		return -EINVAL;
 	}
 	if (unlikely(channel < 0 || channel >= iface->num_channels)) {
@@ -747,7 +743,6 @@ static void hdm_request_netinfo(struct most_interface *iface, int channel,
 {
 	struct most_dev *mdev;
 
-	BUG_ON(!iface);
 	mdev = to_mdev(iface);
 	mdev->on_netinfo = on_netinfo;
 	if (!on_netinfo)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

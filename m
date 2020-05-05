Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 846591C525F
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 12:00:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5BC9E89551;
	Tue,  5 May 2020 10:00:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XDeOHU1MpiVJ; Tue,  5 May 2020 10:00:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CD7E5894D2;
	Tue,  5 May 2020 10:00:44 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55F711BF2E4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 501E787893
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9tc2TfIT0lGc
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1626D8788F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588672836; x=1620208836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=niqDdZ4WBVrnZXO8fs8dRGzCUD8DoUFM+1M4JxA+9Hw=;
 b=XytMm4RSSM5RL1KhCwpUhhpAddx2rNM9jrEOfDpIc8n2c9L5XBKqB6ac
 uQ+fyIaSbHaSnk4GD87A8fCaXtiuSiayxUuuyVMlZutfhQ5WAwDL9Ut2d
 ne3/PxE/NzaxkulGxgEFtmfi+rk5M2fIwsei537w8+3fut2JG1Jhm69DP
 QMdRi1H75g3YkFhhlTfUv9ITbRlgFssG9Av6pRcZHMvSwLh26CAu3jWsZ
 rePfmhAcnjKpa11HrPLqX8Q1PcknB+H9JI4NCMA5RbcuAwAWIxzC/RzKr
 VI59RvuYKWJJplrVhOy7vsTEKwMqe7rfeoN0/O03twho6PLBwpTgM/tEq Q==;
IronPort-SDR: fVmR/GFwg9rKwL7AawDrDQDTd8qenJDgofV1+aJBmkvuCX+3CHcbSg6xK+p1wMZWMPpYSj7YiM
 9wbboy+mVLpGetlSoQytgh3/pBm0hZ6AbvwwtYWjX5R8bRAvHJDaAdHMTwbSmCEtBMy7IULMEj
 cNzqFx/oDkL4Tdo7bDvZW4Nurp3V7KkrhlF9AqQFy/wO/DOByE/2bC/l+rNagTjgesuRJO9HU/
 3Mi7Fx5vm+p3Lz3JZvjuMXn2r9P60Y9Zt/+351VSIEWk6oAfV3e/zVZzwjOYHciKPCkkE6+hdI
 cac=
X-IronPort-AV: E=Sophos;i="5.73,354,1583218800"; d="scan'208";a="74250521"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 May 2020 03:00:36 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 May 2020 03:00:37 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 5 May 2020 03:00:35 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 3/4] staging: most: usb: drop unlikely macros
Date: Tue, 5 May 2020 12:00:28 +0200
Message-ID: <1588672829-28883-4-git-send-email-christian.gromm@microchip.com>
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

This patch removes the unlikely macros in the error patch of argument
checking, as it has no measurable performance adavantage.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/most/usb/usb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 1087ad9..62d773c 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -233,7 +233,7 @@ static int hdm_poison_channel(struct most_interface *iface, int channel)
 	unsigned long flags;
 	spinlock_t *lock; /* temp. lock */
 
-	if (unlikely(channel < 0 || channel >= iface->num_channels)) {
+	if (channel < 0 || channel >= iface->num_channels) {
 		dev_warn(&mdev->usb_device->dev, "Channel ID out of range.\n");
 		return -ECHRNG;
 	}
@@ -555,9 +555,9 @@ static int hdm_enqueue(struct most_interface *iface, int channel,
 	unsigned long length;
 	void *virt_address;
 
-	if (unlikely(!mbo))
+	if (!mbo)
 		return -EINVAL;
-	if (unlikely(iface->num_channels <= channel || channel < 0))
+	if (iface->num_channels <= channel || channel < 0)
 		return -ECHRNG;
 
 	mdev = to_mdev(iface);
@@ -670,11 +670,11 @@ static int hdm_configure_channel(struct most_interface *iface, int channel,
 	mdev->clear_work[channel].mdev = mdev;
 	INIT_WORK(&mdev->clear_work[channel].ws, wq_clear_halt);
 
-	if (unlikely(!conf)) {
+	if (!conf) {
 		dev_err(dev, "Bad config pointer.\n");
 		return -EINVAL;
 	}
-	if (unlikely(channel < 0 || channel >= iface->num_channels)) {
+	if (channel < 0 || channel >= iface->num_channels) {
 		dev_err(dev, "Channel ID out of range.\n");
 		return -EINVAL;
 	}
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

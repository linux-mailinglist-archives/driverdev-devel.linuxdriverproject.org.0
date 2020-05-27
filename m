Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D411E3D41
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 11:06:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47E4A86BCF;
	Wed, 27 May 2020 09:06:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EHKlERfEFJuC; Wed, 27 May 2020 09:06:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E052D86B70;
	Wed, 27 May 2020 09:06:48 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8259F1BF2EF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7EB0A87D5D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z-cjgEB+UwS3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 119B987D3D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590570403; x=1622106403;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Veetgosw/XgbnoNh0z9adVvVyUO6uS1tR9xrwVrKhTE=;
 b=o7dc6UZH9UonIbpXJkvp1cREEXWlkP2AalfFb7zp4yYruCX/mueTO9+4
 MltqHkcqQ7dI3SaD2ezqKWyF9MK5xw3ZYX2Ms5/jB2CjY3VPSXSgJhv+9
 ljxX6RMtpL6pshooxzJ8qS7LYxFA9EB6UUPFxg5LVJtr9hO0kqZaIVJx7
 ygERTNeXUSQ+12wgfDH0CCvRE/Rj2NgysSdxGCFzcJAH4Vx+3ps+Osb4f
 FjDHos1jqVGAa8uBDAK8mypnZv2TolXjd4pgTeDuicCWxDfpOupK1JBSO
 xdU7QNqkkmWhnach2Vkj22X1JK2vcTxt8KKKhE6c890oBtIUzR4KIMH7+ Q==;
IronPort-SDR: xwkJRzbbz4quINAHcRsOYANRojvjjVysM9bzqiJXm7k8Mi6ifRXlnLeRUuZ1bFzoapAF8PO7Mm
 Njsu5yy5LqztwK4K5Mj9wPCb+DK0DJ43YRHLOHKSYwgxBNymY2i3+nl4drAijguyTktRySDSXJ
 bE2gjhVbe2RV3vC2GbpxgYpuO62UXdbWKM3IGC9ztiXkHQ5gQhEYUIkCjew1NAIugr426Jc5lR
 Nn7intZulFqzI9x/jP18T9bbl+PaBj/dP1TvNE9s3Xa5V02XAg3h7GqJu72IaQUpprpt7IK1cU
 e7w=
X-IronPort-AV: E=Sophos;i="5.73,440,1583218800"; d="scan'208";a="74590239"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 May 2020 02:06:42 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 02:06:35 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 27 May 2020 02:06:41 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 09/10] staging: most: usb: add missing put_device calls
Date: Wed, 27 May 2020 11:06:26 +0200
Message-ID: <1590570387-27069-10-git-send-email-christian.gromm@microchip.com>
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

This patch adds the missing put_device() function calls to
properly free allocated resources and maintain reference counts.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/most/usb/usb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 3575a40..1c4bdb8 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -919,6 +919,7 @@ static void release_dci(struct device *dev)
 {
 	struct most_dci_obj *dci = to_dci_obj(dev);
 
+	put_device(dev->parent);
 	kfree(dci);
 }
 
@@ -1123,6 +1124,7 @@ static void hdm_disconnect(struct usb_interface *interface)
 	kfree(mdev->cap);
 	kfree(mdev->conf);
 	kfree(mdev->ep_address);
+	put_device(&mdev->dci->dev);
 	put_device(&mdev->dev);
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

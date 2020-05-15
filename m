Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8781D4958
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 11:21:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7253C89748;
	Fri, 15 May 2020 09:21:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KxxLHtFjraWa; Fri, 15 May 2020 09:21:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D3A48946A;
	Fri, 15 May 2020 09:21:27 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 692811BF2C1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 630EC8829A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5z22H37mhrnL
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AD694899FB
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589534480; x=1621070480;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=a6Z7LMN67nPtLZ4WYyNxI9XFLMTeER1HZ/XZLuWEkJE=;
 b=CXmbAEot+kleRkFXVyGLOVeESEuo0PoBoqDI9M08lqmb79ngoRRpVB6/
 mVagAFDTwvw6ETq6pyiLyurzxkkpvD7WOcK7Iqu2r0dRUGXmBNrlnHn3t
 fQ3lNwlglw0vESyvJXB8ycBp6yHQCjfZOgJJYcRWn8WGUiDWzXc9uRlG0
 +adGfwBjM7ifWrAZL38QV8h8XAbVIK+XO0jDv+bZgJ72EMt7KlStNqt5G
 x1nAgODxKquDz98Aatx+hYSUnYxUPrYUdH+k+MbHrU4DsVinV8W+SMeCe
 w+QiVsbEZ/DqnLxSN473ZR+flLqfShKi478TNqOw8+rD9mQK1lKV3j4Kg w==;
IronPort-SDR: 6viEbcUuWD7KqWGpY7tBjOiHVaM1XLkEcHZzZA0xq37zEqUj9gTsyi8DVamSJ9THRmKmcODaoQ
 PEMOqp4Yg+wrIzkjObWm5z0wFo3isxCyhzWkAyCeAX1qdZNwF3YjJHHVJe8mMkLXVZw+SHqOmi
 v754o7x4YAchjOeu5MdxQvDx9Ibami8onv3W0zoa1HZUTsYnuIF3W2myGleIJxUbdTzSac/aeM
 geFgsuw+rIDQqOUNfpswsgJXIizAEM4VXNLI7TdqHhhupIOuIMMahRo8g7VH580v05UYEh7vXr
 KrQ=
X-IronPort-AV: E=Sophos;i="5.73,394,1583218800"; d="scan'208";a="76781999"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 02:21:18 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 02:21:16 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 15 May 2020 02:21:15 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v3 6/7] staging: most: usb: use macro ATTRIBUTE_GROUPS
Date: Fri, 15 May 2020 11:21:04 +0200
Message-ID: <1589534465-7423-7-git-send-email-christian.gromm@microchip.com>
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

This patch makes use of the macro ATTRIBUTE_GROUPS to create the groups
instead of defining them manually.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2:
v3:

 drivers/staging/most/usb/usb.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 8995ed0..56b75e4 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -905,14 +905,7 @@ static struct attribute *dci_attrs[] = {
 	NULL,
 };
 
-static struct attribute_group dci_attr_group = {
-	.attrs = dci_attrs,
-};
-
-static const struct attribute_group *dci_attr_groups[] = {
-	&dci_attr_group,
-	NULL,
-};
+ATTRIBUTE_GROUPS(dci);
 
 static void release_dci(struct device *dev)
 {
@@ -1065,7 +1058,7 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 
 		mdev->dci->dev.init_name = "dci";
 		mdev->dci->dev.parent = get_device(mdev->iface.dev);
-		mdev->dci->dev.groups = dci_attr_groups;
+		mdev->dci->dev.groups = dci_groups;
 		mdev->dci->dev.release = release_dci;
 		if (device_register(&mdev->dci->dev)) {
 			mutex_unlock(&mdev->io_mutex);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

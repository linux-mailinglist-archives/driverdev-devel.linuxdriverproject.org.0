Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B51E1D31B5
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 15:46:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D0D1289778;
	Thu, 14 May 2020 13:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1b8RMDvEqXcD; Thu, 14 May 2020 13:46:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5157388936;
	Thu, 14 May 2020 13:46:53 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ACFF81BF31F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A8D40226B7
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e9fL2XDa9MjO
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by silver.osuosl.org (Postfix) with ESMTPS id CCAAF270EA
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589464001; x=1621000001;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=cPkJ3klY44IvPSuqB9e4DTMxpg8N94GY9+FBzes9a9s=;
 b=tKMDW71T4ZVH32FxYdtopo+35SeIuDJG1zicxjBuF54MTJR/R8j6/CGb
 t9dDK75j1QkL8u+cuFo8pTcbDO5EGeGAJSQOV6Q3X9tVZbFFCsEe3F+cD
 kyvxRScD80fD66pZX97g7qplZrDL+M7oo3ecGrtuY3xXBu1cOIG/mp+Fs
 p+J+lwsJnTvGhBqoEe5W0R5ZC1ueVSRfl8ZmIv5OjAmXWv/nBJQIbmGKH
 nJp3n/hWmta+P4sCe4/Zsv4O/5eflTLaxRqoN/VR7zWxtd5YD3m//Fj45
 EEwS0qqB6u0WW8kpk0vedyAqM5wvfVH1692uwJmbHKTgVsbgisrLNHenu w==;
IronPort-SDR: rIzHc0U7/tkuyZY2pSjQ0eIZA0lqlbb36BUDikt5xnzjohAVFzMxhcVkvmGFAn4hlTeYbCdqoR
 1OfFTP+eqT9V44Ynt8hUANCIiB7nGZCimuskGBe3TSjYgowbCevBN/CvgOxntlBBVxnqqf13SS
 D8wkSRhas8jkLESwPoALtXrjQ8VRjHiLoR3VWZlzK3qqy3tX/jbaucoiEYTgdYb9ZMqJLDDn6n
 xIs+39SZX5ewtP9RCNXpw3XxyVJlH2tmezPadCdCRh8qgmGPoNLDPYNSoNlVby4e7KreHM2AbF
 GrQ=
X-IronPort-AV: E=Sophos;i="5.73,391,1583218800"; d="scan'208";a="75267250"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 06:46:41 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 06:46:40 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 06:46:42 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 6/7] staging: most: usb: use macro ATTRIBUTE_GROUPS
Date: Thu, 14 May 2020 15:46:28 +0200
Message-ID: <1589463989-30029-7-git-send-email-christian.gromm@microchip.com>
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

This patch makes use of the macro ATTRIBUTE_GROUPS to create the groups
instead of defining them manually.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/most/usb/usb.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 882f59e..a26e9b1 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -1000,14 +1000,7 @@ static struct attribute *dci_attrs[] = {
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
@@ -1160,7 +1153,7 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 
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

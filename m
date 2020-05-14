Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6601D2BE1
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 11:53:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B64DE228CA;
	Thu, 14 May 2020 09:53:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qx59SrGlck9M; Thu, 14 May 2020 09:53:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7D29322C1A;
	Thu, 14 May 2020 09:53:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75EA81BF342
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7303D876FF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uyRdgL1MHNge
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D931A873FA
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589449989; x=1620985989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=DEp+jW9wX2A5d1wOob0OjxiQCJhtD6AvZxH86gahl60=;
 b=tNhpPvtBhlqt7rDnDUukJXBIzRY6sKOqs8I0BPDSSNBMn6l04eq0QgCg
 Qy9+SICwSy06v+tRbkoMK/+EhfvFwU2TuTlfqmOCMBx5G+SbZXLwMtBcB
 tbwfpJRdtdzd/dSnMnhC+m8+oscb6pIrjcEqXco7KVSlUH9SoEeoIfAYe
 KWtUET1JuAqMIpwxomaqMKY6CPGPW7kM8HXuvJVSczzUGdgONwMxy8hvc
 Vu5Jt+lhz3txL/C7QyBDiOIh9cmynJ4ZUTJ5PSx0hMGZOP2LdwuBNFsIe
 wTHPLEiPhkOIGC2duBRHyg8JZsqlNxlwAJ/tAYWGRB1h24ZSDWvopK33b g==;
IronPort-SDR: bQMgC3tNbmAzbe+mlt0DerGmX0Y9Gh+haZJkLcBrKMyuW5jdQYlDm9TvyfqYgXzci2VkGMzuQ7
 MiCNJgr1YOT9FLKZEbqNxDfF8uM6kCyek2XoCYCmvpmt0crBAiEHwNxCEnjW//WApyUfnMvJvY
 6lvsn3VbK8MkXB2ufA/BMCoQUzdA40eUoqGXIVd0Ic47x5w1TnzFzM1hpiuJcPz/qoobAivtLk
 nmvr9rcRzcFRWJibwqkU80xElW5okKYKugq3o7DXVaKXUG9lbGpKB4NIgzD6uZPQHVm832UYQo
 TKo=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="12346472"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 02:53:08 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 02:53:11 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 02:53:07 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2 7/8] drivers: most: usb: use macro ATTRIBUTE_GROUPS
Date: Thu, 14 May 2020 11:52:55 +0200
Message-ID: <1589449976-11378-8-git-send-email-christian.gromm@microchip.com>
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

This patch makes use of the macro ATTRIBUTE_GROUPS to create the groups
instead of defining them manually.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2:

 drivers/most/most_usb.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/most/most_usb.c b/drivers/most/most_usb.c
index 35620a1..dce64bb 100644
--- a/drivers/most/most_usb.c
+++ b/drivers/most/most_usb.c
@@ -999,14 +999,7 @@ static struct attribute *dci_attrs[] = {
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
@@ -1159,7 +1152,7 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 
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

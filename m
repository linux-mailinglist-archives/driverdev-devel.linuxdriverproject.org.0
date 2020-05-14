Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898EA1D34E6
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 17:19:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC34E895CF;
	Thu, 14 May 2020 15:19:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZJLJxz86-drA; Thu, 14 May 2020 15:19:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 988D1895A0;
	Thu, 14 May 2020 15:19:15 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4D22F1BF37A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:19:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4A43B876EE
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:19:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D4QbtuVRqi1h
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:19:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9AE59884C9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589469543; x=1621005543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=W6BQ6mxoNRUm2J3Dfm7jT8zQ6cFnZYAQRLmbegyRkTA=;
 b=OqznM+AgK4fF1giE9atpda2sAR7PfEf/0nxzhzTrmZ9KxrdEC1Z1nAZT
 hKykZGCZGeLoEZyA796hcZbbGWkLiAQcjAPnZ0MNNfF3oLKJW7jg/wtmt
 qNfW37hjHTJfdbEXzipWXp4/WvyCeeHQdTcljvh+BTqJnC++8YcN89Kh4
 OAVIj0jY5xEU9B+T3Cm1fz28N7DHuJBSw+jceA8ho9naa8/UYBydCwpjN
 in6YyqfAzFLKdrGrwmT53Fsva/4HkhDlu8bZzy+v4iO96BC4xOfyVYhh5
 k2rZMTx6yOtRApExn8KtxuSAyq2dsO8N+f1VFkY+kxtgsEtxFnrCRyV97 A==;
IronPort-SDR: Fk+0sB9yuk1N8IuygQd/bDxSuq/YoMwFPFC5/6BCZ6GIzBhDg4poK9xuchJ8WZ+Nu7CYf1CIfm
 wNymDxOlRnhOeY6JlKPPriIT6dEnpO5H3gMyfranDLp33GTmgDK0y9R3qwDbLs/sbAmsF7/hKG
 oNad/vNmaOvaE0luPASTibB6vBZLJP/Ojyis3ZCO6dRSgz6clBJOFkfwAj3XK5CTA7x4S7Ctiu
 4FN0A17IvspISZunQWDbStjT6qmmsp98urYcCHxpe5n1SynMNhnzGh670wpoMlQkMIG3z8WRS4
 mTk=
X-IronPort-AV: E=Sophos;i="5.73,391,1583218800"; d="scan'208";a="76658391"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 08:19:03 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 08:19:02 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 08:19:05 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2 6/7] staging: most: usb: use macro ATTRIBUTE_GROUPS
Date: Thu, 14 May 2020 17:18:51 +0200
Message-ID: <1589469532-21488-7-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589469532-21488-1-git-send-email-christian.gromm@microchip.com>
References: <1589469532-21488-1-git-send-email-christian.gromm@microchip.com>
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

 drivers/staging/most/usb/usb.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index c3a7e71..43f535f 100644
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ADEC146D15
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 16:38:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFB7487633;
	Thu, 23 Jan 2020 15:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UFe+cBvejJ6g; Thu, 23 Jan 2020 15:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B60587646;
	Thu, 23 Jan 2020 15:38:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 590861BF3B9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4448B882EB
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8MRK74LYHS+U
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E3B6D882CC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:36 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: lNC8a+4Eic8DcT9sx8XmcmQ1KFyjkCNu9k1izPf+I0AJuGlhxRLsDA40aRUFGC3EXfedlcsHd1
 pX4ftFqtFc78HgVoEMfvP4sxKIwf+Cv4uvXftApu0iiKMgUCWLKghmeMnJaM7UiEp2pVJD/YnE
 H6yawOigVZ0NzrZCd8HwP8yE3Y0RE8RDLdzxBlXaEedlzoQDaghj4q1/i/d+mi7PN4AEScOd6t
 ppHisw0JbaaqhT3ZjZPsdV+gvg5fxmQkBgn/tLjIdTu2fl37quFdTB9L8nQf7h9EGVuJa1y84n
 qoE=
X-IronPort-AV: E=Sophos;i="5.70,354,1574146800"; d="scan'208";a="63535604"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2020 08:38:36 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 23 Jan 2020 08:38:36 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 23 Jan 2020 08:38:35 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v4 06/10] staging: next: configfs: fix release link
Date: Thu, 23 Jan 2020 16:38:22 +0100
Message-ID: <1579793906-5054-7-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
References: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
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

The functions link_destroy and link_release are both deleting list items.
link_release, however, does not check whether a certain link has already
been deleted from the list by function link_destroy. By fixing this
this patch prevents a kernel crash when removing the configuration
directory of a link that already has been destroyed.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v4:
	This patch has been added to the series

 drivers/staging/most/configfs.c | 26 +++++++++++++++++++-------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index 9818f6c..982d1a1 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -127,6 +127,8 @@ static ssize_t mdev_link_create_link_store(struct config_item *item,
 		return ret;
 	list_add_tail(&mdev_link->list, &mdev_link_list);
 	mdev_link->create_link = tmp;
+	mdev_link->destroy_link = false;
+
 	return count;
 }
 
@@ -142,13 +144,16 @@ static ssize_t mdev_link_destroy_link_store(struct config_item *item,
 		return ret;
 	if (!tmp)
 		return count;
-	mdev_link->destroy_link = tmp;
+
 	ret = most_remove_link(mdev_link->device, mdev_link->channel,
 			       mdev_link->comp);
 	if (ret)
 		return ret;
 	if (!list_empty(&mdev_link_list))
 		list_del(&mdev_link->list);
+
+	mdev_link->destroy_link = tmp;
+
 	return count;
 }
 
@@ -377,13 +382,20 @@ static void mdev_link_release(struct config_item *item)
 	struct mdev_link *mdev_link = to_mdev_link(item);
 	int ret;
 
-	if (!list_empty(&mdev_link_list)) {
-		ret = most_remove_link(mdev_link->device, mdev_link->channel,
-				       mdev_link->comp);
-		if (ret && (ret != -ENODEV))
-			pr_err("Removing link failed.\n");
-		list_del(&mdev_link->list);
+	if (mdev_link->destroy_link)
+		goto free_item;
+
+	ret = most_remove_link(mdev_link->device, mdev_link->channel,
+			       mdev_link->comp);
+	if (ret) {
+		pr_err("Removing link failed.\n");
+		goto free_item;
 	}
+
+	if (!list_empty(&mdev_link_list))
+		list_del(&mdev_link->list);
+
+free_item:
 	kfree(to_mdev_link(item));
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

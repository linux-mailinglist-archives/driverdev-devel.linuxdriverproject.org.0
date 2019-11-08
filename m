Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96DB4F50F4
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 17:21:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 73C3B23459;
	Fri,  8 Nov 2019 16:21:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 27SRMYhAGlEL; Fri,  8 Nov 2019 16:21:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B6BB52341A;
	Fri,  8 Nov 2019 16:21:18 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A3C4B1BF370
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9F1C087E63
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q3gKYSFJWHj6
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:21:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE8C887E65
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:21:14 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: eVUlL6O9l3wpbRlMl+WaR78iUrojrRwewUDRF6uClW1WUKXGGmqPNIvjhCa30DRQyikX28Z4qr
 BgsNic7Wumg0+muiWGa/OXmTBIHYjQk36568a/uiLH2HshRPeHwqgigpi1W3NdCZ/FaBQAjkE5
 xhKkUZJG1BwFdfhaQFukORSiohqIPiBN54zDe5Ds6opZYea96KQypr747Vx0IOW1btnLVQgsU3
 ysvvh3eJRQToPT4P2bYdLQm1wTt7QicgcwHhDtz2olDUmb66YAv4L+aKd10/RDwVSm3LKdWg4v
 pV4=
X-IronPort-AV: E=Sophos;i="5.68,282,1569308400"; d="scan'208";a="56257998"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Nov 2019 09:21:14 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 8 Nov 2019 09:21:13 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.85.251) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 8 Nov 2019 09:21:13 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: most: configfs: move configfs subsystems to
 container struct
Date: Fri, 8 Nov 2019 17:21:07 +0100
Message-ID: <1573230068-27658-2-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573230068-27658-1-git-send-email-christian.gromm@microchip.com>
References: <1573230068-27658-1-git-send-email-christian.gromm@microchip.com>
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

This patch moves the declarations of the configfs subsystems to
a superordinate container structure. This is done to get access
to private subsystem data.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/configfs.c | 80 +++++++++++++++++++++++------------------
 1 file changed, 45 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index c06cf84..c292dd3 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -395,11 +395,12 @@ static const struct config_item_type mdev_link_type = {
 
 struct most_common {
 	struct config_group group;
+	struct configfs_subsystem subsys;
 };
 
-static struct most_common *to_most_common(struct config_item *item)
+static struct most_common *to_most_common(struct configfs_subsystem *subsys)
 {
-	return container_of(to_config_group(item), struct most_common, group);
+	return container_of(subsys, struct most_common, subsys);
 }
 
 static struct config_item *most_common_make_item(struct config_group *group,
@@ -426,7 +427,9 @@ static struct config_item *most_common_make_item(struct config_group *group,
 
 static void most_common_release(struct config_item *item)
 {
-	kfree(to_most_common(item));
+	struct config_group *group = to_config_group(item);
+
+	kfree(to_most_common(group->cg_subsys));
 }
 
 static struct configfs_item_operations most_common_item_ops = {
@@ -443,29 +446,35 @@ static const struct config_item_type most_common_type = {
 	.ct_owner	= THIS_MODULE,
 };
 
-static struct configfs_subsystem most_cdev_subsys = {
-	.su_group = {
-		.cg_item = {
-			.ci_namebuf = "most_cdev",
-			.ci_type = &most_common_type,
+static struct most_common most_cdev = {
+	.subsys = {
+		.su_group = {
+			.cg_item = {
+				.ci_namebuf = "most_cdev",
+				.ci_type = &most_common_type,
+			},
 		},
 	},
 };
 
-static struct configfs_subsystem most_net_subsys = {
-	.su_group = {
-		.cg_item = {
-			.ci_namebuf = "most_net",
-			.ci_type = &most_common_type,
+static struct most_common most_net = {
+	.subsys = {
+		.su_group = {
+			.cg_item = {
+				.ci_namebuf = "most_net",
+				.ci_type = &most_common_type,
+			},
 		},
 	},
 };
 
-static struct configfs_subsystem most_video_subsys = {
-	.su_group = {
-		.cg_item = {
-			.ci_namebuf = "most_video",
-			.ci_type = &most_common_type,
+static struct most_common most_video = {
+	.subsys = {
+		.su_group = {
+			.cg_item = {
+				.ci_namebuf = "most_video",
+				.ci_type = &most_common_type,
+			},
 		},
 	},
 };
@@ -597,16 +606,17 @@ int most_register_configfs_subsys(struct core_component *c)
 {
 	int ret;
 
-	if (!strcmp(c->name, "cdev"))
-		ret = configfs_register_subsystem(&most_cdev_subsys);
-	else if (!strcmp(c->name, "net"))
-		ret = configfs_register_subsystem(&most_net_subsys);
-	else if (!strcmp(c->name, "video"))
-		ret = configfs_register_subsystem(&most_video_subsys);
-	else if (!strcmp(c->name, "sound"))
+	if (!strcmp(c->name, "cdev")) {
+		ret = configfs_register_subsystem(&most_cdev.subsys);
+	} else if (!strcmp(c->name, "net")) {
+		ret = configfs_register_subsystem(&most_net.subsys);
+	} else if (!strcmp(c->name, "video")) {
+		ret = configfs_register_subsystem(&most_video.subsys);
+	} else if (!strcmp(c->name, "sound")) {
 		ret = configfs_register_subsystem(&most_sound_subsys.subsys);
-	else
+	} else {
 		return -ENODEV;
+	}
 
 	if (ret) {
 		pr_err("Error %d while registering subsystem %s\n",
@@ -635,11 +645,11 @@ void most_interface_register_notify(const char *mdev)
 void most_deregister_configfs_subsys(struct core_component *c)
 {
 	if (!strcmp(c->name, "cdev"))
-		configfs_unregister_subsystem(&most_cdev_subsys);
+		configfs_unregister_subsystem(&most_cdev.subsys);
 	else if (!strcmp(c->name, "net"))
-		configfs_unregister_subsystem(&most_net_subsys);
+		configfs_unregister_subsystem(&most_net.subsys);
 	else if (!strcmp(c->name, "video"))
-		configfs_unregister_subsystem(&most_video_subsys);
+		configfs_unregister_subsystem(&most_video.subsys);
 	else if (!strcmp(c->name, "sound"))
 		configfs_unregister_subsystem(&most_sound_subsys.subsys);
 }
@@ -647,14 +657,14 @@ EXPORT_SYMBOL_GPL(most_deregister_configfs_subsys);
 
 int __init configfs_init(void)
 {
-	config_group_init(&most_cdev_subsys.su_group);
-	mutex_init(&most_cdev_subsys.su_mutex);
+	config_group_init(&most_cdev.subsys.su_group);
+	mutex_init(&most_cdev.subsys.su_mutex);
 
-	config_group_init(&most_net_subsys.su_group);
-	mutex_init(&most_net_subsys.su_mutex);
+	config_group_init(&most_net.subsys.su_group);
+	mutex_init(&most_net.subsys.su_mutex);
 
-	config_group_init(&most_video_subsys.su_group);
-	mutex_init(&most_video_subsys.su_mutex);
+	config_group_init(&most_video.subsys.su_group);
+	mutex_init(&most_video.subsys.su_mutex);
 
 	config_group_init(&most_sound_subsys.subsys.su_group);
 	mutex_init(&most_sound_subsys.subsys.su_mutex);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

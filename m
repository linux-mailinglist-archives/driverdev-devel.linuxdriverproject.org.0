Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B95F50F5
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 17:21:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 03B4D86D13;
	Fri,  8 Nov 2019 16:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o2Zj1TMGBUlX; Fri,  8 Nov 2019 16:21:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E5B286BDC;
	Fri,  8 Nov 2019 16:21:20 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A13961BF370
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:21:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9A76287E63
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:21:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l7wCtzQKLO7J
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:21:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A44D987E6C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:21:15 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: P/ftDJdkERgi5xr/YqvKJoU58Z/vbZ8uZZYVMTemrzeKVIw8d4g3M8dM4tMlIx/BuZnEWZNtR6
 b90XCLVw88swFsCtAPFqSKJEN7xN+fq8IqDLV3zevxZdlpzmXl2LK9rQ8MEiMXc04Vg3OqcEFF
 /Wxrxw9+r37lZgDcqftwabGeJLIGDyVamQ6GdW/Dn/PrJyEIOaR65W4gjQDYXhKA7Kprse1FTJ
 2Y9JszS3Sp48MjoE2jmzjYGklxE0csB48EccAGNfSxY6BVTELKAeGgHOC91phtDQp+ifO/x3sf
 ZJo=
X-IronPort-AV: E=Sophos;i="5.68,282,1569308400"; d="scan'208";a="55847284"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Nov 2019 09:21:15 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 8 Nov 2019 09:21:15 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.85.251) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 8 Nov 2019 09:21:14 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: most: block module removal while having active
 configfs items
Date: Fri, 8 Nov 2019 17:21:08 +0100
Message-ID: <1573230068-27658-3-git-send-email-christian.gromm@microchip.com>
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

This patch avoids that core component modules are being unloaded
while the related configfs interface has active items in its directories.
It is needed to prevent the situation where the core module cannot
be unloaded anymore, because the reference count 'used by' indicates that
the module is still being used and the usage count cannot be decreased by
calling rmdir, as the configfs directory has already been removed.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/cdev/cdev.c   |  1 +
 drivers/staging/most/configfs.c    | 38 +++++++++++++++++++++++++++++++++++---
 drivers/staging/most/core.h        |  1 +
 drivers/staging/most/net/net.c     |  1 +
 drivers/staging/most/sound/sound.c |  1 +
 drivers/staging/most/video/video.c |  1 +
 6 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index 724d098..f880147 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -494,6 +494,7 @@ static int comp_probe(struct most_interface *iface, int channel_id,
 
 static struct cdev_component comp = {
 	.cc = {
+		.mod = THIS_MODULE,
 		.name = "cdev",
 		.probe_channel = comp_probe,
 		.disconnect_channel = comp_disconnect_channel,
diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index c292dd3..34a9fb5 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -395,6 +395,7 @@ static const struct config_item_type mdev_link_type = {
 
 struct most_common {
 	struct config_group group;
+	struct module *mod;
 	struct configfs_subsystem subsys;
 };
 
@@ -407,11 +408,16 @@ static struct config_item *most_common_make_item(struct config_group *group,
 						 const char *name)
 {
 	struct mdev_link *mdev_link;
+	struct most_common *mc = to_most_common(group->cg_subsys);
 
 	mdev_link = kzalloc(sizeof(*mdev_link), GFP_KERNEL);
 	if (!mdev_link)
 		return ERR_PTR(-ENOMEM);
 
+	if (!try_module_get(mc->mod)) {
+		kfree(mdev_link);
+		return ERR_PTR(-ENOLCK);
+	}
 	config_item_init_type_name(&mdev_link->item, name,
 				   &mdev_link_type);
 
@@ -436,8 +442,17 @@ static struct configfs_item_operations most_common_item_ops = {
 	.release	= most_common_release,
 };
 
+static void most_common_disconnect(struct config_group *group,
+				   struct config_item *item)
+{
+	struct most_common *mc = to_most_common(group->cg_subsys);
+
+	module_put(mc->mod);
+}
+
 static struct configfs_group_operations most_common_group_ops = {
 	.make_item	= most_common_make_item,
+	.disconnect_notify = most_common_disconnect,
 };
 
 static const struct config_item_type most_common_type = {
@@ -558,13 +573,14 @@ static const struct config_item_type most_snd_grp_type = {
 struct most_sound {
 	struct configfs_subsystem subsys;
 	struct list_head soundcard_list;
+	struct module *mod;
 };
 
 static struct config_group *most_sound_make_group(struct config_group *group,
 						  const char *name)
 {
 	struct most_snd_grp *most;
-	struct most_sound *ms = container_of(to_configfs_subsystem(group),
+	struct most_sound *ms = container_of(group->cg_subsys,
 					     struct most_sound, subsys);
 
 	list_for_each_entry(most, &ms->soundcard_list, list) {
@@ -573,17 +589,29 @@ static struct config_group *most_sound_make_group(struct config_group *group,
 			return ERR_PTR(-EPROTO);
 		}
 	}
+	if (!try_module_get(ms->mod))
+		return ERR_PTR(-ENOLCK);
 	most = kzalloc(sizeof(*most), GFP_KERNEL);
-	if (!most)
+	if (!most) {
+		module_put(ms->mod);
 		return ERR_PTR(-ENOMEM);
-
+	}
 	config_group_init_type_name(&most->group, name, &most_snd_grp_type);
 	list_add_tail(&most->list, &ms->soundcard_list);
 	return &most->group;
 }
 
+static void most_sound_disconnect(struct config_group *group,
+				  struct config_item *item)
+{
+	struct most_sound *ms = container_of(group->cg_subsys,
+					     struct most_sound, subsys);
+	module_put(ms->mod);
+}
+
 static struct configfs_group_operations most_sound_group_ops = {
 	.make_group	= most_sound_make_group,
+	.disconnect_notify = most_sound_disconnect,
 };
 
 static const struct config_item_type most_sound_type = {
@@ -607,12 +635,16 @@ int most_register_configfs_subsys(struct core_component *c)
 	int ret;
 
 	if (!strcmp(c->name, "cdev")) {
+		most_cdev.mod = c->mod;
 		ret = configfs_register_subsystem(&most_cdev.subsys);
 	} else if (!strcmp(c->name, "net")) {
+		most_net.mod = c->mod;
 		ret = configfs_register_subsystem(&most_net.subsys);
 	} else if (!strcmp(c->name, "video")) {
+		most_video.mod = c->mod;
 		ret = configfs_register_subsystem(&most_video.subsys);
 	} else if (!strcmp(c->name, "sound")) {
+		most_sound_subsys.mod = c->mod;
 		ret = configfs_register_subsystem(&most_sound_subsys.subsys);
 	} else {
 		return -ENODEV;
diff --git a/drivers/staging/most/core.h b/drivers/staging/most/core.h
index 652aaa7..49859ae 100644
--- a/drivers/staging/most/core.h
+++ b/drivers/staging/most/core.h
@@ -265,6 +265,7 @@ struct most_interface {
 struct core_component {
 	struct list_head list;
 	const char *name;
+	struct module *mod;
 	int (*probe_channel)(struct most_interface *iface, int channel_idx,
 			     struct most_channel_config *cfg, char *name,
 			     char *param);
diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index 26a3185..6cab1bb 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -498,6 +498,7 @@ static int comp_rx_data(struct mbo *mbo)
 }
 
 static struct core_component comp = {
+	.mod = THIS_MODULE,
 	.name = "net",
 	.probe_channel = comp_probe_channel,
 	.disconnect_channel = comp_disconnect_channel,
diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 7981706..1359f28 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -782,6 +782,7 @@ static int audio_tx_completion(struct most_interface *iface, int channel_id)
  * Initialization of the struct core_component
  */
 static struct core_component comp = {
+	.mod = THIS_MODULE,
 	.name = DRIVER_NAME,
 	.probe_channel = audio_probe_channel,
 	.disconnect_channel = audio_disconnect_channel,
diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 250af9f..10c1ef7 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -528,6 +528,7 @@ static int comp_disconnect_channel(struct most_interface *iface,
 }
 
 static struct core_component comp = {
+	.mod = THIS_MODULE,
 	.name = "video",
 	.probe_channel = comp_probe_channel,
 	.disconnect_channel = comp_disconnect_channel,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

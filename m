Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D8911E32C
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 13:05:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26E3D88519;
	Fri, 13 Dec 2019 12:05:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZWOQ47QDnnAu; Fri, 13 Dec 2019 12:05:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D134A88518;
	Fri, 13 Dec 2019 12:05:53 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5EAC21BF9C1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 319AA872DD
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1PcFVA1EVXC8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 50EF5872DC
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:10 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: iq4Fvukc8Qz1Y42Ao/ZCBhDOdniCO4zeYbwdx0lJFybYHLJuJGn5dFQCE/M1/BbttWkZBuKDHA
 OOdYVwoRahvhmE3M2ojDylFXt/Ieg3SRPZEIhp8JZbnjByrXTuiwLfjO2jmgYiyTID21DWiCe/
 UEugCK2GXg1xPdl3IwbKjsoJ+sUH54HTSG/M6WFJoNrI/mygTybNS0k/RlFhmDLWD80OATPNgN
 kpW3UNlIZpBCxpT1lyHpF5JcC+krp7KkpUo31P7CatFxH4NeQPjsiYgdGL+gYtwt9LeqeT1srB
 WjU=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="58898037"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 05:05:09 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 05:05:08 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 05:05:07 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v2 2/9] staging: most: rename struct core_component
Date: Fri, 13 Dec 2019 13:04:15 +0100
Message-ID: <1576238662-16512-3-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
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

The stuctures defined in the most.h header file will be exposed to the
kernel once the file is moved out of the staging area. That's why the name
is changed into something more descriptive.

Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:
	This patch has been added to the series.

 drivers/staging/most/cdev/cdev.c   |  2 +-
 drivers/staging/most/configfs.c    |  4 ++--
 drivers/staging/most/core.c        | 32 ++++++++++++++++----------------
 drivers/staging/most/most.h        | 20 ++++++++++----------
 drivers/staging/most/net/net.c     |  4 ++--
 drivers/staging/most/sound/sound.c |  6 +++---
 drivers/staging/most/video/video.c |  4 ++--
 7 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index df4cb5a..9ce2f23 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -25,7 +25,7 @@ static struct cdev_component {
 	struct ida minor_id;
 	unsigned int major;
 	struct class *class;
-	struct core_component cc;
+	struct most_component cc;
 } comp;
 
 struct comp_channel {
diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index e17d846..d671022 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -630,7 +630,7 @@ static struct most_sound most_sound_subsys = {
 	},
 };
 
-int most_register_configfs_subsys(struct core_component *c)
+int most_register_configfs_subsys(struct most_component *c)
 {
 	int ret;
 
@@ -674,7 +674,7 @@ void most_interface_register_notify(const char *mdev)
 		most_cfg_complete("sound");
 }
 
-void most_deregister_configfs_subsys(struct core_component *c)
+void most_deregister_configfs_subsys(struct most_component *c)
 {
 	if (!strcmp(c->name, "cdev"))
 		configfs_unregister_subsystem(&most_cdev.subsys);
diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index e32030c..af542ed 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -39,7 +39,7 @@ static struct mostcore {
 #define to_driver(d) container_of(d, struct mostcore, drv)
 
 struct pipe {
-	struct core_component *comp;
+	struct most_component *comp;
 	int refs;
 	int num_buffers;
 };
@@ -454,9 +454,9 @@ static const struct attribute_group *interface_attr_groups[] = {
 	NULL,
 };
 
-static struct core_component *match_component(char *name)
+static struct most_component *match_component(char *name)
 {
-	struct core_component *comp;
+	struct most_component *comp;
 
 	list_for_each_entry(comp, &mc.comp_list, list) {
 		if (!strcmp(comp->name, name))
@@ -510,7 +510,7 @@ static ssize_t links_show(struct device_driver *drv, char *buf)
 
 static ssize_t components_show(struct device_driver *drv, char *buf)
 {
-	struct core_component *comp;
+	struct most_component *comp;
 	int offs = 0;
 
 	list_for_each_entry(comp, &mc.comp_list, list) {
@@ -544,12 +544,12 @@ static struct most_channel *get_channel(char *mdev, char *mdev_ch)
 
 static
 inline int link_channel_to_component(struct most_channel *c,
-				     struct core_component *comp,
+				     struct most_component *comp,
 				     char *name,
 				     char *comp_param)
 {
 	int ret;
-	struct core_component **comp_ptr;
+	struct most_component **comp_ptr;
 
 	if (!c->pipe0.comp)
 		comp_ptr = &c->pipe0.comp;
@@ -660,7 +660,7 @@ int most_set_cfg_packets_xact(char *mdev, char *mdev_ch, u16 val)
 
 int most_cfg_complete(char *comp_name)
 {
-	struct core_component *comp;
+	struct most_component *comp;
 
 	comp = match_component(comp_name);
 	if (!comp)
@@ -673,7 +673,7 @@ int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
 		  char *comp_param)
 {
 	struct most_channel *c = get_channel(mdev, mdev_ch);
-	struct core_component *comp = match_component(comp_name);
+	struct most_component *comp = match_component(comp_name);
 
 	if (!c || !comp)
 		return -ENODEV;
@@ -684,7 +684,7 @@ int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
 int most_remove_link(char *mdev, char *mdev_ch, char *comp_name)
 {
 	struct most_channel *c;
-	struct core_component *comp;
+	struct most_component *comp;
 
 	comp = match_component(comp_name);
 	if (!comp)
@@ -950,7 +950,7 @@ static void most_write_completion(struct mbo *mbo)
 }
 
 int channel_has_mbo(struct most_interface *iface, int id,
-		    struct core_component *comp)
+		    struct most_component *comp)
 {
 	struct most_channel *c = iface->p->channel[id];
 	unsigned long flags;
@@ -981,7 +981,7 @@ EXPORT_SYMBOL_GPL(channel_has_mbo);
  * Returns a pointer to MBO on success or NULL otherwise.
  */
 struct mbo *most_get_mbo(struct most_interface *iface, int id,
-			 struct core_component *comp)
+			 struct most_component *comp)
 {
 	struct mbo *mbo;
 	struct most_channel *c;
@@ -1087,7 +1087,7 @@ static void most_read_completion(struct mbo *mbo)
  * Returns 0 on success or error code otherwise.
  */
 int most_start_channel(struct most_interface *iface, int id,
-		       struct core_component *comp)
+		       struct most_component *comp)
 {
 	int num_buffer;
 	int ret;
@@ -1157,7 +1157,7 @@ EXPORT_SYMBOL_GPL(most_start_channel);
  * @comp: driver component
  */
 int most_stop_channel(struct most_interface *iface, int id,
-		      struct core_component *comp)
+		      struct most_component *comp)
 {
 	struct most_channel *c;
 
@@ -1215,7 +1215,7 @@ EXPORT_SYMBOL_GPL(most_stop_channel);
  * most_register_component - registers a driver component with the core
  * @comp: driver component
  */
-int most_register_component(struct core_component *comp)
+int most_register_component(struct most_component *comp)
 {
 	if (!comp) {
 		pr_err("Bad component\n");
@@ -1231,7 +1231,7 @@ static int disconnect_channels(struct device *dev, void *data)
 {
 	struct most_interface *iface;
 	struct most_channel *c, *tmp;
-	struct core_component *comp = data;
+	struct most_component *comp = data;
 
 	iface = to_most_interface(dev);
 	list_for_each_entry_safe(c, tmp, &iface->p->channel_list, list) {
@@ -1249,7 +1249,7 @@ static int disconnect_channels(struct device *dev, void *data)
  * most_deregister_component - deregisters a driver component with the core
  * @comp: driver component
  */
-int most_deregister_component(struct core_component *comp)
+int most_deregister_component(struct most_component *comp)
 {
 	if (!comp) {
 		pr_err("Bad component\n");
diff --git a/drivers/staging/most/most.h b/drivers/staging/most/most.h
index 1380e75..fa6b29f 100644
--- a/drivers/staging/most/most.h
+++ b/drivers/staging/most/most.h
@@ -254,7 +254,7 @@ struct most_interface {
 #define to_most_interface(d) container_of(d, struct most_interface, dev)
 
 /**
- * struct core_component - identifies a loadable component for the mostcore
+ * struct most_component - identifies a loadable component for the mostcore
  * @list: list_head
  * @name: component name
  * @probe_channel: function for core to notify driver about channel connection
@@ -262,7 +262,7 @@ struct most_interface {
  * @rx_completion: completion handler for received packets
  * @tx_completion: completion handler for transmitted packets
  */
-struct core_component {
+struct most_component {
 	struct list_head list;
 	const char *name;
 	struct module *mod;
@@ -310,20 +310,20 @@ void most_stop_enqueue(struct most_interface *iface, int channel_idx);
  * in wait fifo.
  */
 void most_resume_enqueue(struct most_interface *iface, int channel_idx);
-int most_register_component(struct core_component *comp);
-int most_deregister_component(struct core_component *comp);
+int most_register_component(struct most_component *comp);
+int most_deregister_component(struct most_component *comp);
 struct mbo *most_get_mbo(struct most_interface *iface, int channel_idx,
-			 struct core_component *comp);
+			 struct most_component *comp);
 void most_put_mbo(struct mbo *mbo);
 int channel_has_mbo(struct most_interface *iface, int channel_idx,
-		    struct core_component *comp);
+		    struct most_component *comp);
 int most_start_channel(struct most_interface *iface, int channel_idx,
-		       struct core_component *comp);
+		       struct most_component *comp);
 int most_stop_channel(struct most_interface *iface, int channel_idx,
-		      struct core_component *comp);
+		      struct most_component *comp);
 int __init configfs_init(void);
-int most_register_configfs_subsys(struct core_component *comp);
-void most_deregister_configfs_subsys(struct core_component *comp);
+int most_register_configfs_subsys(struct most_component *comp);
+void most_deregister_configfs_subsys(struct most_component *comp);
 int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
 		  char *comp_param);
 int most_remove_link(char *mdev, char *mdev_ch, char *comp_name);
diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index 34d93c4..e3dd337 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -70,7 +70,7 @@ struct net_dev_context {
 static struct list_head net_devices = LIST_HEAD_INIT(net_devices);
 static struct mutex probe_disc_mt; /* ch->linked = true, most_nd_open */
 static DEFINE_SPINLOCK(list_lock); /* list_head, ch->linked = false, dev_hold */
-static struct core_component comp;
+static struct most_component comp;
 
 static int skb_to_mamac(const struct sk_buff *skb, struct mbo *mbo)
 {
@@ -497,7 +497,7 @@ static int comp_rx_data(struct mbo *mbo)
 	return ret;
 }
 
-static struct core_component comp = {
+static struct most_component comp = {
 	.mod = THIS_MODULE,
 	.name = "net",
 	.probe_channel = comp_probe_channel,
diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 38642b2..23baf4b 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -22,7 +22,7 @@
 #define DRIVER_NAME "sound"
 #define STRING_SIZE	80
 
-static struct core_component comp;
+static struct most_component comp;
 
 /**
  * struct channel - private structure to keep channel specific data
@@ -736,9 +736,9 @@ static int audio_tx_completion(struct most_interface *iface, int channel_id)
 }
 
 /**
- * Initialization of the struct core_component
+ * Initialization of the struct most_component
  */
-static struct core_component comp = {
+static struct most_component comp = {
 	.mod = THIS_MODULE,
 	.name = DRIVER_NAME,
 	.probe_channel = audio_probe_channel,
diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index b75ccc8..0f45b04 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -25,7 +25,7 @@
 
 #define V4L2_CMP_MAX_INPUT  1
 
-static struct core_component comp;
+static struct most_component comp;
 
 struct most_video_dev {
 	struct most_interface *iface;
@@ -527,7 +527,7 @@ static int comp_disconnect_channel(struct most_interface *iface,
 	return 0;
 }
 
-static struct core_component comp = {
+static struct most_component comp = {
 	.mod = THIS_MODULE,
 	.name = "video",
 	.probe_channel = comp_probe_channel,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

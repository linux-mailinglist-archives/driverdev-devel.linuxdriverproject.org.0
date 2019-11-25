Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B41FD10915B
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Nov 2019 16:53:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4493084397;
	Mon, 25 Nov 2019 15:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DfogAtHPy4MN; Mon, 25 Nov 2019 15:52:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C1C5864FB;
	Mon, 25 Nov 2019 15:52:06 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97F761BF3BF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:52:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8101685BE4
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:52:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3sblunG3rHU7
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 469C581F2E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:52 +0000 (UTC)
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
IronPort-SDR: Q58V4MvNvc+aSH/lvcPq+nJrZ2ylodvZjT59Z2Y1+4zOYwDMgrAVvQi5GoJ+7XupMV5ffxD2Bg
 GFeiOJ6/qHNW5ByK8zBl24UJaJZeUsN79lFoJrtjHDnWIA1eVthdEvYd+SAdHQ7THmmKWA6ETy
 XmZofcCySO8gqFsyvZH9d/tpsFR5qWD949xLDslFTKAUHfNMoQiKEOQrNT/bT1D7LUbFkarAs7
 R44G8iycOMai4H+oVZozlbTL6y1lg4GQz26FXEDlAknrMurhcYP/VLixlPztB0SG5ZSoGfBZ7i
 Lmc=
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="57841979"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Nov 2019 08:51:51 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 Nov 2019 08:51:50 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 25 Nov 2019 08:51:49 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC 4/6] staging: most: move core files out of the staging area
Date: Mon, 25 Nov 2019 16:51:34 +0100
Message-ID: <1574697096-2942-5-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574697096-2942-1-git-send-email-christian.gromm@microchip.com>
References: <1574697096-2942-1-git-send-email-christian.gromm@microchip.com>
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

This patch moves the core module to the /drivers/most directory
and makes all necessary changes in order to not break the build.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/Kconfig                    |    1 +
 drivers/Makefile                   |    1 +
 drivers/most/Kconfig               |   15 +
 drivers/most/Makefile              |    4 +
 drivers/most/configfs.c            |  708 +++++++++++++++++
 drivers/most/core.c                | 1523 ++++++++++++++++++++++++++++++++++++
 drivers/staging/most/Kconfig       |    6 +-
 drivers/staging/most/Makefile      |    5 -
 drivers/staging/most/cdev/cdev.c   |    2 +-
 drivers/staging/most/configfs.c    |  708 -----------------
 drivers/staging/most/core.c        | 1523 ------------------------------------
 drivers/staging/most/dim2/dim2.c   |    2 +-
 drivers/staging/most/i2c/i2c.c     |    2 +-
 drivers/staging/most/most.h        |  339 --------
 drivers/staging/most/net/net.c     |    2 +-
 drivers/staging/most/sound/sound.c |    2 +-
 drivers/staging/most/usb/usb.c     |    2 +-
 drivers/staging/most/video/video.c |    2 +-
 include/linux/most.h               |  339 ++++++++
 19 files changed, 2601 insertions(+), 2585 deletions(-)
 create mode 100644 drivers/most/Kconfig
 create mode 100644 drivers/most/Makefile
 create mode 100644 drivers/most/configfs.c
 create mode 100644 drivers/most/core.c
 delete mode 100644 drivers/staging/most/configfs.c
 delete mode 100644 drivers/staging/most/core.c
 delete mode 100644 drivers/staging/most/most.h
 create mode 100644 include/linux/most.h

diff --git a/drivers/Kconfig b/drivers/Kconfig
index 8befa53..c739665 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -228,4 +228,5 @@ source "drivers/interconnect/Kconfig"
 
 source "drivers/counter/Kconfig"
 
+source "drivers/most/Kconfig"
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index aaef17c..0e1dcbc 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -186,3 +186,4 @@ obj-$(CONFIG_SIOX)		+= siox/
 obj-$(CONFIG_GNSS)		+= gnss/
 obj-$(CONFIG_INTERCONNECT)	+= interconnect/
 obj-$(CONFIG_COUNTER)		+= counter/
+obj-$(CONFIG_MOST)		+= most/
diff --git a/drivers/most/Kconfig b/drivers/most/Kconfig
new file mode 100644
index 0000000..58d7999
--- /dev/null
+++ b/drivers/most/Kconfig
@@ -0,0 +1,15 @@
+# SPDX-License-Identifier: GPL-2.0
+menuconfig MOST
+	tristate "MOST support"
+	depends on HAS_DMA && CONFIGFS_FS
+	default n
+	help
+	  Say Y here if you want to enable MOST support.
+	  This driver needs at least one additional component to enable the
+	  desired access from userspace (e.g. character devices) and one that
+	  matches the network controller's hardware interface (e.g. USB).
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called most_core.
+
+	  If in doubt, say N here.
diff --git a/drivers/most/Makefile b/drivers/most/Makefile
new file mode 100644
index 0000000..e810cd3
--- /dev/null
+++ b/drivers/most/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_MOST) += most_core.o
+most_core-y :=	core.o \
+		configfs.o
diff --git a/drivers/most/configfs.c b/drivers/most/configfs.c
new file mode 100644
index 0000000..ae61ebc
--- /dev/null
+++ b/drivers/most/configfs.c
@@ -0,0 +1,708 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * configfs.c - Implementation of configfs interface to the driver stack
+ *
+ * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co. KG
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#include <linux/module.h>
+#include <linux/slab.h>
+#include <linux/init.h>
+#include <linux/configfs.h>
+#include <linux/most.h>
+
+struct mdev_link {
+	struct config_item item;
+	struct list_head list;
+	bool create_link;
+	bool destroy_link;
+	u16 num_buffers;
+	u16 buffer_size;
+	u16 subbuffer_size;
+	u16 packets_per_xact;
+	u16 dbr_size;
+	char datatype[PAGE_SIZE];
+	char direction[PAGE_SIZE];
+	char name[PAGE_SIZE];
+	char device[PAGE_SIZE];
+	char channel[PAGE_SIZE];
+	char comp[PAGE_SIZE];
+	char comp_params[PAGE_SIZE];
+};
+
+static struct list_head mdev_link_list;
+
+static int set_cfg_buffer_size(struct mdev_link *link)
+{
+	return most_set_cfg_buffer_size(link->device, link->channel,
+					link->buffer_size);
+}
+
+static int set_cfg_subbuffer_size(struct mdev_link *link)
+{
+	return most_set_cfg_subbuffer_size(link->device, link->channel,
+					   link->subbuffer_size);
+}
+
+static int set_cfg_dbr_size(struct mdev_link *link)
+{
+	return most_set_cfg_dbr_size(link->device, link->channel,
+				     link->dbr_size);
+}
+
+static int set_cfg_num_buffers(struct mdev_link *link)
+{
+	return most_set_cfg_num_buffers(link->device, link->channel,
+					link->num_buffers);
+}
+
+static int set_cfg_packets_xact(struct mdev_link *link)
+{
+	return most_set_cfg_packets_xact(link->device, link->channel,
+					 link->packets_per_xact);
+}
+
+static int set_cfg_direction(struct mdev_link *link)
+{
+	return most_set_cfg_direction(link->device, link->channel,
+				      link->direction);
+}
+
+static int set_cfg_datatype(struct mdev_link *link)
+{
+	return most_set_cfg_datatype(link->device, link->channel,
+				     link->datatype);
+}
+
+static int (*set_config_val[])(struct mdev_link *link) = {
+	set_cfg_buffer_size,
+	set_cfg_subbuffer_size,
+	set_cfg_dbr_size,
+	set_cfg_num_buffers,
+	set_cfg_packets_xact,
+	set_cfg_direction,
+	set_cfg_datatype,
+};
+
+static struct mdev_link *to_mdev_link(struct config_item *item)
+{
+	return container_of(item, struct mdev_link, item);
+}
+
+static int set_config_and_add_link(struct mdev_link *mdev_link)
+{
+	int i;
+	int ret;
+
+	for (i = 0; i < ARRAY_SIZE(set_config_val); i++) {
+		ret = set_config_val[i](mdev_link);
+		if (ret < 0 && ret != -ENODEV) {
+			pr_err("Config failed\n");
+			return ret;
+		}
+	}
+
+	return most_add_link(mdev_link->device, mdev_link->channel,
+			     mdev_link->comp, mdev_link->name,
+			     mdev_link->comp_params);
+}
+
+static ssize_t mdev_link_create_link_store(struct config_item *item,
+					   const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+	bool tmp;
+	int ret;
+
+	ret = kstrtobool(page, &tmp);
+	if (ret)
+		return ret;
+	if (!tmp)
+		return count;
+	ret = set_config_and_add_link(mdev_link);
+	if (ret && ret != -ENODEV)
+		return ret;
+	list_add_tail(&mdev_link->list, &mdev_link_list);
+	mdev_link->create_link = tmp;
+	return count;
+}
+
+static ssize_t mdev_link_destroy_link_store(struct config_item *item,
+					    const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+	bool tmp;
+	int ret;
+
+	ret = kstrtobool(page, &tmp);
+	if (ret)
+		return ret;
+	if (!tmp)
+		return count;
+	mdev_link->destroy_link = tmp;
+	ret = most_remove_link(mdev_link->device, mdev_link->channel,
+			       mdev_link->comp);
+	if (ret)
+		return ret;
+	if (!list_empty(&mdev_link_list))
+		list_del(&mdev_link->list);
+	return count;
+}
+
+static ssize_t mdev_link_direction_show(struct config_item *item, char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%s\n", to_mdev_link(item)->direction);
+}
+
+static ssize_t mdev_link_direction_store(struct config_item *item,
+					 const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+
+	if (!sysfs_streq(page, "dir_rx") && !sysfs_streq(page, "rx") &&
+	    !sysfs_streq(page, "dir_tx") && !sysfs_streq(page, "tx"))
+		return -EINVAL;
+	strcpy(mdev_link->direction, page);
+	strim(mdev_link->direction);
+	return count;
+}
+
+static ssize_t mdev_link_datatype_show(struct config_item *item, char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%s\n", to_mdev_link(item)->datatype);
+}
+
+static ssize_t mdev_link_datatype_store(struct config_item *item,
+					const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+
+	if (!sysfs_streq(page, "control") && !sysfs_streq(page, "async") &&
+	    !sysfs_streq(page, "sync") && !sysfs_streq(page, "isoc") &&
+	    !sysfs_streq(page, "isoc_avp"))
+		return -EINVAL;
+	strcpy(mdev_link->datatype, page);
+	strim(mdev_link->datatype);
+	return count;
+}
+
+static ssize_t mdev_link_device_show(struct config_item *item, char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%s\n", to_mdev_link(item)->device);
+}
+
+static ssize_t mdev_link_device_store(struct config_item *item,
+				      const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+
+	strcpy(mdev_link->device, page);
+	strim(mdev_link->device);
+	return count;
+}
+
+static ssize_t mdev_link_channel_show(struct config_item *item, char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%s\n", to_mdev_link(item)->channel);
+}
+
+static ssize_t mdev_link_channel_store(struct config_item *item,
+				       const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+
+	strcpy(mdev_link->channel, page);
+	strim(mdev_link->channel);
+	return count;
+}
+
+static ssize_t mdev_link_comp_show(struct config_item *item, char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%s\n", to_mdev_link(item)->comp);
+}
+
+static ssize_t mdev_link_comp_store(struct config_item *item,
+				    const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+
+	strcpy(mdev_link->comp, page);
+	return count;
+}
+
+static ssize_t mdev_link_comp_params_show(struct config_item *item, char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%s\n",
+			to_mdev_link(item)->comp_params);
+}
+
+static ssize_t mdev_link_comp_params_store(struct config_item *item,
+					   const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+
+	strcpy(mdev_link->comp_params, page);
+	return count;
+}
+
+static ssize_t mdev_link_num_buffers_show(struct config_item *item, char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%d\n",
+			to_mdev_link(item)->num_buffers);
+}
+
+static ssize_t mdev_link_num_buffers_store(struct config_item *item,
+					   const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+	int ret;
+
+	ret = kstrtou16(page, 0, &mdev_link->num_buffers);
+	if (ret)
+		return ret;
+	return count;
+}
+
+static ssize_t mdev_link_buffer_size_show(struct config_item *item, char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%d\n",
+			to_mdev_link(item)->buffer_size);
+}
+
+static ssize_t mdev_link_buffer_size_store(struct config_item *item,
+					   const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+	int ret;
+
+	ret = kstrtou16(page, 0, &mdev_link->buffer_size);
+	if (ret)
+		return ret;
+	return count;
+}
+
+static ssize_t mdev_link_subbuffer_size_show(struct config_item *item,
+					     char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%d\n",
+			to_mdev_link(item)->subbuffer_size);
+}
+
+static ssize_t mdev_link_subbuffer_size_store(struct config_item *item,
+					      const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+	int ret;
+
+	ret = kstrtou16(page, 0, &mdev_link->subbuffer_size);
+	if (ret)
+		return ret;
+	return count;
+}
+
+static ssize_t mdev_link_packets_per_xact_show(struct config_item *item,
+					       char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%d\n",
+			to_mdev_link(item)->packets_per_xact);
+}
+
+static ssize_t mdev_link_packets_per_xact_store(struct config_item *item,
+						const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+	int ret;
+
+	ret = kstrtou16(page, 0, &mdev_link->packets_per_xact);
+	if (ret)
+		return ret;
+	return count;
+}
+
+static ssize_t mdev_link_dbr_size_show(struct config_item *item, char *page)
+{
+	return snprintf(page, PAGE_SIZE, "%d\n", to_mdev_link(item)->dbr_size);
+}
+
+static ssize_t mdev_link_dbr_size_store(struct config_item *item,
+					const char *page, size_t count)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+	int ret;
+
+	ret = kstrtou16(page, 0, &mdev_link->dbr_size);
+	if (ret)
+		return ret;
+	return count;
+}
+
+CONFIGFS_ATTR_WO(mdev_link_, create_link);
+CONFIGFS_ATTR_WO(mdev_link_, destroy_link);
+CONFIGFS_ATTR(mdev_link_, device);
+CONFIGFS_ATTR(mdev_link_, channel);
+CONFIGFS_ATTR(mdev_link_, comp);
+CONFIGFS_ATTR(mdev_link_, comp_params);
+CONFIGFS_ATTR(mdev_link_, num_buffers);
+CONFIGFS_ATTR(mdev_link_, buffer_size);
+CONFIGFS_ATTR(mdev_link_, subbuffer_size);
+CONFIGFS_ATTR(mdev_link_, packets_per_xact);
+CONFIGFS_ATTR(mdev_link_, datatype);
+CONFIGFS_ATTR(mdev_link_, direction);
+CONFIGFS_ATTR(mdev_link_, dbr_size);
+
+static struct configfs_attribute *mdev_link_attrs[] = {
+	&mdev_link_attr_create_link,
+	&mdev_link_attr_destroy_link,
+	&mdev_link_attr_device,
+	&mdev_link_attr_channel,
+	&mdev_link_attr_comp,
+	&mdev_link_attr_comp_params,
+	&mdev_link_attr_num_buffers,
+	&mdev_link_attr_buffer_size,
+	&mdev_link_attr_subbuffer_size,
+	&mdev_link_attr_packets_per_xact,
+	&mdev_link_attr_datatype,
+	&mdev_link_attr_direction,
+	&mdev_link_attr_dbr_size,
+	NULL,
+};
+
+static void mdev_link_release(struct config_item *item)
+{
+	struct mdev_link *mdev_link = to_mdev_link(item);
+	int ret;
+
+	if (!list_empty(&mdev_link_list)) {
+		ret = most_remove_link(mdev_link->device, mdev_link->channel,
+				       mdev_link->comp);
+		if (ret && (ret != -ENODEV))
+			pr_err("Removing link failed.\n");
+		list_del(&mdev_link->list);
+	}
+	kfree(to_mdev_link(item));
+}
+
+static struct configfs_item_operations mdev_link_item_ops = {
+	.release		= mdev_link_release,
+};
+
+static const struct config_item_type mdev_link_type = {
+	.ct_item_ops	= &mdev_link_item_ops,
+	.ct_attrs	= mdev_link_attrs,
+	.ct_owner	= THIS_MODULE,
+};
+
+struct most_common {
+	struct config_group group;
+	struct module *mod;
+	struct configfs_subsystem subsys;
+};
+
+static struct most_common *to_most_common(struct configfs_subsystem *subsys)
+{
+	return container_of(subsys, struct most_common, subsys);
+}
+
+static struct config_item *most_common_make_item(struct config_group *group,
+						 const char *name)
+{
+	struct mdev_link *mdev_link;
+	struct most_common *mc = to_most_common(group->cg_subsys);
+
+	mdev_link = kzalloc(sizeof(*mdev_link), GFP_KERNEL);
+	if (!mdev_link)
+		return ERR_PTR(-ENOMEM);
+
+	if (!try_module_get(mc->mod)) {
+		kfree(mdev_link);
+		return ERR_PTR(-ENOLCK);
+	}
+	config_item_init_type_name(&mdev_link->item, name,
+				   &mdev_link_type);
+
+	if (!strcmp(group->cg_item.ci_namebuf, "most_cdev"))
+		strcpy(mdev_link->comp, "cdev");
+	else if (!strcmp(group->cg_item.ci_namebuf, "most_net"))
+		strcpy(mdev_link->comp, "net");
+	else if (!strcmp(group->cg_item.ci_namebuf, "most_video"))
+		strcpy(mdev_link->comp, "video");
+	strcpy(mdev_link->name, name);
+	return &mdev_link->item;
+}
+
+static void most_common_release(struct config_item *item)
+{
+	struct config_group *group = to_config_group(item);
+
+	kfree(to_most_common(group->cg_subsys));
+}
+
+static struct configfs_item_operations most_common_item_ops = {
+	.release	= most_common_release,
+};
+
+static void most_common_disconnect(struct config_group *group,
+				   struct config_item *item)
+{
+	struct most_common *mc = to_most_common(group->cg_subsys);
+
+	module_put(mc->mod);
+}
+
+static struct configfs_group_operations most_common_group_ops = {
+	.make_item	= most_common_make_item,
+	.disconnect_notify = most_common_disconnect,
+};
+
+static const struct config_item_type most_common_type = {
+	.ct_item_ops	= &most_common_item_ops,
+	.ct_group_ops	= &most_common_group_ops,
+	.ct_owner	= THIS_MODULE,
+};
+
+static struct most_common most_cdev = {
+	.subsys = {
+		.su_group = {
+			.cg_item = {
+				.ci_namebuf = "most_cdev",
+				.ci_type = &most_common_type,
+			},
+		},
+	},
+};
+
+static struct most_common most_net = {
+	.subsys = {
+		.su_group = {
+			.cg_item = {
+				.ci_namebuf = "most_net",
+				.ci_type = &most_common_type,
+			},
+		},
+	},
+};
+
+static struct most_common most_video = {
+	.subsys = {
+		.su_group = {
+			.cg_item = {
+				.ci_namebuf = "most_video",
+				.ci_type = &most_common_type,
+			},
+		},
+	},
+};
+
+struct most_snd_grp {
+	struct config_group group;
+	bool create_card;
+	struct list_head list;
+};
+
+static struct most_snd_grp *to_most_snd_grp(struct config_item *item)
+{
+	return container_of(to_config_group(item), struct most_snd_grp, group);
+}
+
+static struct config_item *most_snd_grp_make_item(struct config_group *group,
+						  const char *name)
+{
+	struct mdev_link *mdev_link;
+
+	mdev_link = kzalloc(sizeof(*mdev_link), GFP_KERNEL);
+	if (!mdev_link)
+		return ERR_PTR(-ENOMEM);
+
+	config_item_init_type_name(&mdev_link->item, name, &mdev_link_type);
+	mdev_link->create_link = false;
+	strcpy(mdev_link->name, name);
+	strcpy(mdev_link->comp, "sound");
+	return &mdev_link->item;
+}
+
+static ssize_t most_snd_grp_create_card_store(struct config_item *item,
+					      const char *page, size_t count)
+{
+	struct most_snd_grp *snd_grp = to_most_snd_grp(item);
+	int ret;
+	bool tmp;
+
+	ret = kstrtobool(page, &tmp);
+	if (ret)
+		return ret;
+	if (tmp) {
+		ret = most_cfg_complete("sound");
+		if (ret)
+			return ret;
+	}
+	snd_grp->create_card = tmp;
+	return count;
+}
+
+CONFIGFS_ATTR_WO(most_snd_grp_, create_card);
+
+static struct configfs_attribute *most_snd_grp_attrs[] = {
+	&most_snd_grp_attr_create_card,
+	NULL,
+};
+
+static void most_snd_grp_release(struct config_item *item)
+{
+	struct most_snd_grp *group = to_most_snd_grp(item);
+
+	list_del(&group->list);
+	kfree(group);
+}
+
+static struct configfs_item_operations most_snd_grp_item_ops = {
+	.release	= most_snd_grp_release,
+};
+
+static struct configfs_group_operations most_snd_grp_group_ops = {
+	.make_item	= most_snd_grp_make_item,
+};
+
+static const struct config_item_type most_snd_grp_type = {
+	.ct_item_ops	= &most_snd_grp_item_ops,
+	.ct_group_ops	= &most_snd_grp_group_ops,
+	.ct_attrs	= most_snd_grp_attrs,
+	.ct_owner	= THIS_MODULE,
+};
+
+struct most_sound {
+	struct configfs_subsystem subsys;
+	struct list_head soundcard_list;
+	struct module *mod;
+};
+
+static struct config_group *most_sound_make_group(struct config_group *group,
+						  const char *name)
+{
+	struct most_snd_grp *most;
+	struct most_sound *ms = container_of(group->cg_subsys,
+					     struct most_sound, subsys);
+
+	list_for_each_entry(most, &ms->soundcard_list, list) {
+		if (!most->create_card) {
+			pr_info("adapter configuration still in progress.\n");
+			return ERR_PTR(-EPROTO);
+		}
+	}
+	if (!try_module_get(ms->mod))
+		return ERR_PTR(-ENOLCK);
+	most = kzalloc(sizeof(*most), GFP_KERNEL);
+	if (!most) {
+		module_put(ms->mod);
+		return ERR_PTR(-ENOMEM);
+	}
+	config_group_init_type_name(&most->group, name, &most_snd_grp_type);
+	list_add_tail(&most->list, &ms->soundcard_list);
+	return &most->group;
+}
+
+static void most_sound_disconnect(struct config_group *group,
+				  struct config_item *item)
+{
+	struct most_sound *ms = container_of(group->cg_subsys,
+					     struct most_sound, subsys);
+	module_put(ms->mod);
+}
+
+static struct configfs_group_operations most_sound_group_ops = {
+	.make_group	= most_sound_make_group,
+	.disconnect_notify = most_sound_disconnect,
+};
+
+static const struct config_item_type most_sound_type = {
+	.ct_group_ops	= &most_sound_group_ops,
+	.ct_owner	= THIS_MODULE,
+};
+
+static struct most_sound most_sound_subsys = {
+	.subsys = {
+		.su_group = {
+			.cg_item = {
+				.ci_namebuf = "most_sound",
+				.ci_type = &most_sound_type,
+			},
+		},
+	},
+};
+
+int most_register_configfs_subsys(struct core_component *c)
+{
+	int ret;
+
+	if (!strcmp(c->name, "cdev")) {
+		most_cdev.mod = c->mod;
+		ret = configfs_register_subsystem(&most_cdev.subsys);
+	} else if (!strcmp(c->name, "net")) {
+		most_net.mod = c->mod;
+		ret = configfs_register_subsystem(&most_net.subsys);
+	} else if (!strcmp(c->name, "video")) {
+		most_video.mod = c->mod;
+		ret = configfs_register_subsystem(&most_video.subsys);
+	} else if (!strcmp(c->name, "sound")) {
+		most_sound_subsys.mod = c->mod;
+		ret = configfs_register_subsystem(&most_sound_subsys.subsys);
+	} else {
+		return -ENODEV;
+	}
+
+	if (ret) {
+		pr_err("Error %d while registering subsystem %s\n",
+		       ret, c->name);
+	}
+	return ret;
+}
+EXPORT_SYMBOL_GPL(most_register_configfs_subsys);
+
+void most_interface_register_notify(const char *mdev)
+{
+	bool register_snd_card = false;
+	struct mdev_link *mdev_link;
+
+	list_for_each_entry(mdev_link, &mdev_link_list, list) {
+		if (!strcmp(mdev_link->device, mdev)) {
+			set_config_and_add_link(mdev_link);
+			if (!strcmp(mdev_link->comp, "sound"))
+				register_snd_card = true;
+		}
+	}
+	if (register_snd_card)
+		most_cfg_complete("sound");
+}
+
+void most_deregister_configfs_subsys(struct core_component *c)
+{
+	if (!strcmp(c->name, "cdev"))
+		configfs_unregister_subsystem(&most_cdev.subsys);
+	else if (!strcmp(c->name, "net"))
+		configfs_unregister_subsystem(&most_net.subsys);
+	else if (!strcmp(c->name, "video"))
+		configfs_unregister_subsystem(&most_video.subsys);
+	else if (!strcmp(c->name, "sound"))
+		configfs_unregister_subsystem(&most_sound_subsys.subsys);
+}
+EXPORT_SYMBOL_GPL(most_deregister_configfs_subsys);
+
+int __init configfs_init(void)
+{
+	config_group_init(&most_cdev.subsys.su_group);
+	mutex_init(&most_cdev.subsys.su_mutex);
+
+	config_group_init(&most_net.subsys.su_group);
+	mutex_init(&most_net.subsys.su_mutex);
+
+	config_group_init(&most_video.subsys.su_group);
+	mutex_init(&most_video.subsys.su_mutex);
+
+	config_group_init(&most_sound_subsys.subsys.su_group);
+	mutex_init(&most_sound_subsys.subsys.su_mutex);
+
+	INIT_LIST_HEAD(&most_sound_subsys.soundcard_list);
+	INIT_LIST_HEAD(&mdev_link_list);
+
+	return 0;
+}
diff --git a/drivers/most/core.c b/drivers/most/core.c
new file mode 100644
index 0000000..2adaea7
--- /dev/null
+++ b/drivers/most/core.c
@@ -0,0 +1,1523 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * core.c - Implementation of core module of MOST Linux driver stack
+ *
+ * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co. KG
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#include <linux/module.h>
+#include <linux/fs.h>
+#include <linux/slab.h>
+#include <linux/init.h>
+#include <linux/device.h>
+#include <linux/list.h>
+#include <linux/poll.h>
+#include <linux/wait.h>
+#include <linux/kobject.h>
+#include <linux/mutex.h>
+#include <linux/completion.h>
+#include <linux/sysfs.h>
+#include <linux/kthread.h>
+#include <linux/dma-mapping.h>
+#include <linux/idr.h>
+#include <linux/most.h>
+
+#define MAX_CHANNELS	64
+#define STRING_SIZE	80
+
+static struct ida mdev_id;
+static int dummy_num_buffers;
+
+static struct mostcore {
+	struct device dev;
+	struct device_driver drv;
+	struct bus_type bus;
+	struct list_head comp_list;
+} mc;
+
+#define to_driver(d) container_of(d, struct mostcore, drv)
+
+struct pipe {
+	struct core_component *comp;
+	int refs;
+	int num_buffers;
+};
+
+struct most_channel {
+	struct device dev;
+	struct completion cleanup;
+	atomic_t mbo_ref;
+	atomic_t mbo_nq_level;
+	u16 channel_id;
+	char name[STRING_SIZE];
+	bool is_poisoned;
+	struct mutex start_mutex; /* channel activation synchronization */
+	struct mutex nq_mutex; /* nq thread synchronization */
+	int is_starving;
+	struct most_interface *iface;
+	struct most_channel_config cfg;
+	bool keep_mbo;
+	bool enqueue_halt;
+	struct list_head fifo;
+	spinlock_t fifo_lock; /* fifo access synchronization */
+	struct list_head halt_fifo;
+	struct list_head list;
+	struct pipe pipe0;
+	struct pipe pipe1;
+	struct list_head trash_fifo;
+	struct task_struct *hdm_enqueue_task;
+	wait_queue_head_t hdm_fifo_wq;
+
+};
+
+#define to_channel(d) container_of(d, struct most_channel, dev)
+
+struct interface_private {
+	int dev_id;
+	char name[STRING_SIZE];
+	struct most_channel *channel[MAX_CHANNELS];
+	struct list_head channel_list;
+};
+
+static const struct {
+	int most_ch_data_type;
+	const char *name;
+} ch_data_type[] = {
+	{ MOST_CH_CONTROL, "control" },
+	{ MOST_CH_ASYNC, "async" },
+	{ MOST_CH_SYNC, "sync" },
+	{ MOST_CH_ISOC, "isoc"},
+	{ MOST_CH_ISOC, "isoc_avp"},
+};
+
+/**
+ * list_pop_mbo - retrieves the first MBO of the list and removes it
+ * @ptr: the list head to grab the MBO from.
+ */
+#define list_pop_mbo(ptr)						\
+({									\
+	struct mbo *_mbo = list_first_entry(ptr, struct mbo, list);	\
+	list_del(&_mbo->list);						\
+	_mbo;								\
+})
+
+/**
+ * most_free_mbo_coherent - free an MBO and its coherent buffer
+ * @mbo: most buffer
+ */
+static void most_free_mbo_coherent(struct mbo *mbo)
+{
+	struct most_channel *c = mbo->context;
+	u16 const coherent_buf_size = c->cfg.buffer_size + c->cfg.extra_len;
+
+	if (c->iface->dma_free)
+		c->iface->dma_free(mbo, coherent_buf_size);
+	else
+		kfree(mbo->virt_address);
+	kfree(mbo);
+	if (atomic_sub_and_test(1, &c->mbo_ref))
+		complete(&c->cleanup);
+}
+
+/**
+ * flush_channel_fifos - clear the channel fifos
+ * @c: pointer to channel object
+ */
+static void flush_channel_fifos(struct most_channel *c)
+{
+	unsigned long flags, hf_flags;
+	struct mbo *mbo, *tmp;
+
+	if (list_empty(&c->fifo) && list_empty(&c->halt_fifo))
+		return;
+
+	spin_lock_irqsave(&c->fifo_lock, flags);
+	list_for_each_entry_safe(mbo, tmp, &c->fifo, list) {
+		list_del(&mbo->list);
+		spin_unlock_irqrestore(&c->fifo_lock, flags);
+		most_free_mbo_coherent(mbo);
+		spin_lock_irqsave(&c->fifo_lock, flags);
+	}
+	spin_unlock_irqrestore(&c->fifo_lock, flags);
+
+	spin_lock_irqsave(&c->fifo_lock, hf_flags);
+	list_for_each_entry_safe(mbo, tmp, &c->halt_fifo, list) {
+		list_del(&mbo->list);
+		spin_unlock_irqrestore(&c->fifo_lock, hf_flags);
+		most_free_mbo_coherent(mbo);
+		spin_lock_irqsave(&c->fifo_lock, hf_flags);
+	}
+	spin_unlock_irqrestore(&c->fifo_lock, hf_flags);
+
+	if (unlikely((!list_empty(&c->fifo) || !list_empty(&c->halt_fifo))))
+		pr_info("WARN: fifo | trash fifo not empty\n");
+}
+
+/**
+ * flush_trash_fifo - clear the trash fifo
+ * @c: pointer to channel object
+ */
+static int flush_trash_fifo(struct most_channel *c)
+{
+	struct mbo *mbo, *tmp;
+	unsigned long flags;
+
+	spin_lock_irqsave(&c->fifo_lock, flags);
+	list_for_each_entry_safe(mbo, tmp, &c->trash_fifo, list) {
+		list_del(&mbo->list);
+		spin_unlock_irqrestore(&c->fifo_lock, flags);
+		most_free_mbo_coherent(mbo);
+		spin_lock_irqsave(&c->fifo_lock, flags);
+	}
+	spin_unlock_irqrestore(&c->fifo_lock, flags);
+	return 0;
+}
+
+static ssize_t available_directions_show(struct device *dev,
+					 struct device_attribute *attr,
+					 char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+	unsigned int i = c->channel_id;
+
+	strcpy(buf, "");
+	if (c->iface->channel_vector[i].direction & MOST_CH_RX)
+		strcat(buf, "rx ");
+	if (c->iface->channel_vector[i].direction & MOST_CH_TX)
+		strcat(buf, "tx ");
+	strcat(buf, "\n");
+	return strlen(buf);
+}
+
+static ssize_t available_datatypes_show(struct device *dev,
+					struct device_attribute *attr,
+					char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+	unsigned int i = c->channel_id;
+
+	strcpy(buf, "");
+	if (c->iface->channel_vector[i].data_type & MOST_CH_CONTROL)
+		strcat(buf, "control ");
+	if (c->iface->channel_vector[i].data_type & MOST_CH_ASYNC)
+		strcat(buf, "async ");
+	if (c->iface->channel_vector[i].data_type & MOST_CH_SYNC)
+		strcat(buf, "sync ");
+	if (c->iface->channel_vector[i].data_type & MOST_CH_ISOC)
+		strcat(buf, "isoc ");
+	strcat(buf, "\n");
+	return strlen(buf);
+}
+
+static ssize_t number_of_packet_buffers_show(struct device *dev,
+					     struct device_attribute *attr,
+					     char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+	unsigned int i = c->channel_id;
+
+	return snprintf(buf, PAGE_SIZE, "%d\n",
+			c->iface->channel_vector[i].num_buffers_packet);
+}
+
+static ssize_t number_of_stream_buffers_show(struct device *dev,
+					     struct device_attribute *attr,
+					     char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+	unsigned int i = c->channel_id;
+
+	return snprintf(buf, PAGE_SIZE, "%d\n",
+			c->iface->channel_vector[i].num_buffers_streaming);
+}
+
+static ssize_t size_of_packet_buffer_show(struct device *dev,
+					  struct device_attribute *attr,
+					  char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+	unsigned int i = c->channel_id;
+
+	return snprintf(buf, PAGE_SIZE, "%d\n",
+			c->iface->channel_vector[i].buffer_size_packet);
+}
+
+static ssize_t size_of_stream_buffer_show(struct device *dev,
+					  struct device_attribute *attr,
+					  char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+	unsigned int i = c->channel_id;
+
+	return snprintf(buf, PAGE_SIZE, "%d\n",
+			c->iface->channel_vector[i].buffer_size_streaming);
+}
+
+static ssize_t channel_starving_show(struct device *dev,
+				     struct device_attribute *attr,
+				     char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+
+	return snprintf(buf, PAGE_SIZE, "%d\n", c->is_starving);
+}
+
+static ssize_t set_number_of_buffers_show(struct device *dev,
+					  struct device_attribute *attr,
+					  char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+
+	return snprintf(buf, PAGE_SIZE, "%d\n", c->cfg.num_buffers);
+}
+
+static ssize_t set_buffer_size_show(struct device *dev,
+				    struct device_attribute *attr,
+				    char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+
+	return snprintf(buf, PAGE_SIZE, "%d\n", c->cfg.buffer_size);
+}
+
+static ssize_t set_direction_show(struct device *dev,
+				  struct device_attribute *attr,
+				  char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+
+	if (c->cfg.direction & MOST_CH_TX)
+		return snprintf(buf, PAGE_SIZE, "tx\n");
+	else if (c->cfg.direction & MOST_CH_RX)
+		return snprintf(buf, PAGE_SIZE, "rx\n");
+	return snprintf(buf, PAGE_SIZE, "unconfigured\n");
+}
+
+static ssize_t set_datatype_show(struct device *dev,
+				 struct device_attribute *attr,
+				 char *buf)
+{
+	int i;
+	struct most_channel *c = to_channel(dev);
+
+	for (i = 0; i < ARRAY_SIZE(ch_data_type); i++) {
+		if (c->cfg.data_type & ch_data_type[i].most_ch_data_type)
+			return snprintf(buf, PAGE_SIZE, "%s",
+					ch_data_type[i].name);
+	}
+	return snprintf(buf, PAGE_SIZE, "unconfigured\n");
+}
+
+static ssize_t set_subbuffer_size_show(struct device *dev,
+				       struct device_attribute *attr,
+				       char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+
+	return snprintf(buf, PAGE_SIZE, "%d\n", c->cfg.subbuffer_size);
+}
+
+static ssize_t set_packets_per_xact_show(struct device *dev,
+					 struct device_attribute *attr,
+					 char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+
+	return snprintf(buf, PAGE_SIZE, "%d\n", c->cfg.packets_per_xact);
+}
+
+static ssize_t set_dbr_size_show(struct device *dev,
+				 struct device_attribute *attr, char *buf)
+{
+	struct most_channel *c = to_channel(dev);
+
+	return snprintf(buf, PAGE_SIZE, "%d\n", c->cfg.dbr_size);
+}
+
+#define to_dev_attr(a) container_of(a, struct device_attribute, attr)
+static umode_t channel_attr_is_visible(struct kobject *kobj,
+				       struct attribute *attr, int index)
+{
+	struct device_attribute *dev_attr = to_dev_attr(attr);
+	struct device *dev = kobj_to_dev(kobj);
+	struct most_channel *c = to_channel(dev);
+
+	if (!strcmp(dev_attr->attr.name, "set_dbr_size") &&
+	    (c->iface->interface != ITYPE_MEDIALB_DIM2))
+		return 0;
+	if (!strcmp(dev_attr->attr.name, "set_packets_per_xact") &&
+	    (c->iface->interface != ITYPE_USB))
+		return 0;
+
+	return attr->mode;
+}
+
+#define DEV_ATTR(_name)  (&dev_attr_##_name.attr)
+
+static DEVICE_ATTR_RO(available_directions);
+static DEVICE_ATTR_RO(available_datatypes);
+static DEVICE_ATTR_RO(number_of_packet_buffers);
+static DEVICE_ATTR_RO(number_of_stream_buffers);
+static DEVICE_ATTR_RO(size_of_stream_buffer);
+static DEVICE_ATTR_RO(size_of_packet_buffer);
+static DEVICE_ATTR_RO(channel_starving);
+static DEVICE_ATTR_RO(set_buffer_size);
+static DEVICE_ATTR_RO(set_number_of_buffers);
+static DEVICE_ATTR_RO(set_direction);
+static DEVICE_ATTR_RO(set_datatype);
+static DEVICE_ATTR_RO(set_subbuffer_size);
+static DEVICE_ATTR_RO(set_packets_per_xact);
+static DEVICE_ATTR_RO(set_dbr_size);
+
+static struct attribute *channel_attrs[] = {
+	DEV_ATTR(available_directions),
+	DEV_ATTR(available_datatypes),
+	DEV_ATTR(number_of_packet_buffers),
+	DEV_ATTR(number_of_stream_buffers),
+	DEV_ATTR(size_of_stream_buffer),
+	DEV_ATTR(size_of_packet_buffer),
+	DEV_ATTR(channel_starving),
+	DEV_ATTR(set_buffer_size),
+	DEV_ATTR(set_number_of_buffers),
+	DEV_ATTR(set_direction),
+	DEV_ATTR(set_datatype),
+	DEV_ATTR(set_subbuffer_size),
+	DEV_ATTR(set_packets_per_xact),
+	DEV_ATTR(set_dbr_size),
+	NULL,
+};
+
+static struct attribute_group channel_attr_group = {
+	.attrs = channel_attrs,
+	.is_visible = channel_attr_is_visible,
+};
+
+static const struct attribute_group *channel_attr_groups[] = {
+	&channel_attr_group,
+	NULL,
+};
+
+static ssize_t description_show(struct device *dev,
+				struct device_attribute *attr,
+				char *buf)
+{
+	struct most_interface *iface = to_most_interface(dev);
+
+	return snprintf(buf, PAGE_SIZE, "%s\n", iface->description);
+}
+
+static ssize_t interface_show(struct device *dev,
+			      struct device_attribute *attr,
+			      char *buf)
+{
+	struct most_interface *iface = to_most_interface(dev);
+
+	switch (iface->interface) {
+	case ITYPE_LOOPBACK:
+		return snprintf(buf, PAGE_SIZE, "loopback\n");
+	case ITYPE_I2C:
+		return snprintf(buf, PAGE_SIZE, "i2c\n");
+	case ITYPE_I2S:
+		return snprintf(buf, PAGE_SIZE, "i2s\n");
+	case ITYPE_TSI:
+		return snprintf(buf, PAGE_SIZE, "tsi\n");
+	case ITYPE_HBI:
+		return snprintf(buf, PAGE_SIZE, "hbi\n");
+	case ITYPE_MEDIALB_DIM:
+		return snprintf(buf, PAGE_SIZE, "mlb_dim\n");
+	case ITYPE_MEDIALB_DIM2:
+		return snprintf(buf, PAGE_SIZE, "mlb_dim2\n");
+	case ITYPE_USB:
+		return snprintf(buf, PAGE_SIZE, "usb\n");
+	case ITYPE_PCIE:
+		return snprintf(buf, PAGE_SIZE, "pcie\n");
+	}
+	return snprintf(buf, PAGE_SIZE, "unknown\n");
+}
+
+static DEVICE_ATTR_RO(description);
+static DEVICE_ATTR_RO(interface);
+
+static struct attribute *interface_attrs[] = {
+	DEV_ATTR(description),
+	DEV_ATTR(interface),
+	NULL,
+};
+
+static struct attribute_group interface_attr_group = {
+	.attrs = interface_attrs,
+};
+
+static const struct attribute_group *interface_attr_groups[] = {
+	&interface_attr_group,
+	NULL,
+};
+
+static struct core_component *match_component(char *name)
+{
+	struct core_component *comp;
+
+	list_for_each_entry(comp, &mc.comp_list, list) {
+		if (!strcmp(comp->name, name))
+			return comp;
+	}
+	return NULL;
+}
+
+struct show_links_data {
+	int offs;
+	char *buf;
+};
+
+static int print_links(struct device *dev, void *data)
+{
+	struct show_links_data *d = data;
+	int offs = d->offs;
+	char *buf = d->buf;
+	struct most_channel *c;
+	struct most_interface *iface = to_most_interface(dev);
+
+	list_for_each_entry(c, &iface->p->channel_list, list) {
+		if (c->pipe0.comp) {
+			offs += snprintf(buf + offs,
+					 PAGE_SIZE - offs,
+					 "%s:%s:%s\n",
+					 c->pipe0.comp->name,
+					 dev_name(&iface->dev),
+					 dev_name(&c->dev));
+		}
+		if (c->pipe1.comp) {
+			offs += snprintf(buf + offs,
+					 PAGE_SIZE - offs,
+					 "%s:%s:%s\n",
+					 c->pipe1.comp->name,
+					 dev_name(&iface->dev),
+					 dev_name(&c->dev));
+		}
+	}
+	d->offs = offs;
+	return 0;
+}
+
+static ssize_t links_show(struct device_driver *drv, char *buf)
+{
+	struct show_links_data d = { .buf = buf };
+
+	bus_for_each_dev(&mc.bus, NULL, &d, print_links);
+	return d.offs;
+}
+
+static ssize_t components_show(struct device_driver *drv, char *buf)
+{
+	struct core_component *comp;
+	int offs = 0;
+
+	list_for_each_entry(comp, &mc.comp_list, list) {
+		offs += snprintf(buf + offs, PAGE_SIZE - offs, "%s\n",
+				 comp->name);
+	}
+	return offs;
+}
+
+/**
+ * get_channel - get pointer to channel
+ * @mdev: name of the device interface
+ * @mdev_ch: name of channel
+ */
+static struct most_channel *get_channel(char *mdev, char *mdev_ch)
+{
+	struct device *dev = NULL;
+	struct most_interface *iface;
+	struct most_channel *c, *tmp;
+
+	dev = bus_find_device_by_name(&mc.bus, NULL, mdev);
+	if (!dev)
+		return NULL;
+	iface = to_most_interface(dev);
+	list_for_each_entry_safe(c, tmp, &iface->p->channel_list, list) {
+		if (!strcmp(dev_name(&c->dev), mdev_ch))
+			return c;
+	}
+	return NULL;
+}
+
+static
+inline int link_channel_to_component(struct most_channel *c,
+				     struct core_component *comp,
+				     char *name,
+				     char *comp_param)
+{
+	int ret;
+	struct core_component **comp_ptr;
+
+	if (!c->pipe0.comp)
+		comp_ptr = &c->pipe0.comp;
+	else if (!c->pipe1.comp)
+		comp_ptr = &c->pipe1.comp;
+	else
+		return -ENOSPC;
+
+	*comp_ptr = comp;
+	ret = comp->probe_channel(c->iface, c->channel_id, &c->cfg, name,
+				  comp_param);
+	if (ret) {
+		*comp_ptr = NULL;
+		return ret;
+	}
+	return 0;
+}
+
+int most_set_cfg_buffer_size(char *mdev, char *mdev_ch, u16 val)
+{
+	struct most_channel *c = get_channel(mdev, mdev_ch);
+
+	if (!c)
+		return -ENODEV;
+	c->cfg.buffer_size = val;
+	return 0;
+}
+
+int most_set_cfg_subbuffer_size(char *mdev, char *mdev_ch, u16 val)
+{
+	struct most_channel *c = get_channel(mdev, mdev_ch);
+
+	if (!c)
+		return -ENODEV;
+	c->cfg.subbuffer_size = val;
+	return 0;
+}
+
+int most_set_cfg_dbr_size(char *mdev, char *mdev_ch, u16 val)
+{
+	struct most_channel *c = get_channel(mdev, mdev_ch);
+
+	if (!c)
+		return -ENODEV;
+	c->cfg.dbr_size = val;
+	return 0;
+}
+
+int most_set_cfg_num_buffers(char *mdev, char *mdev_ch, u16 val)
+{
+	struct most_channel *c = get_channel(mdev, mdev_ch);
+
+	if (!c)
+		return -ENODEV;
+	c->cfg.num_buffers = val;
+	return 0;
+}
+
+int most_set_cfg_datatype(char *mdev, char *mdev_ch, char *buf)
+{
+	int i;
+	struct most_channel *c = get_channel(mdev, mdev_ch);
+
+	if (!c)
+		return -ENODEV;
+	for (i = 0; i < ARRAY_SIZE(ch_data_type); i++) {
+		if (!strcmp(buf, ch_data_type[i].name)) {
+			c->cfg.data_type = ch_data_type[i].most_ch_data_type;
+			break;
+		}
+	}
+
+	if (i == ARRAY_SIZE(ch_data_type))
+		pr_info("WARN: invalid attribute settings\n");
+	return 0;
+}
+
+int most_set_cfg_direction(char *mdev, char *mdev_ch, char *buf)
+{
+	struct most_channel *c = get_channel(mdev, mdev_ch);
+
+	if (!c)
+		return -ENODEV;
+	if (!strcmp(buf, "dir_rx")) {
+		c->cfg.direction = MOST_CH_RX;
+	} else if (!strcmp(buf, "rx")) {
+		c->cfg.direction = MOST_CH_RX;
+	} else if (!strcmp(buf, "dir_tx")) {
+		c->cfg.direction = MOST_CH_TX;
+	} else if (!strcmp(buf, "tx")) {
+		c->cfg.direction = MOST_CH_TX;
+	} else {
+		pr_info("Invalid direction\n");
+		return -ENODATA;
+	}
+	return 0;
+}
+
+int most_set_cfg_packets_xact(char *mdev, char *mdev_ch, u16 val)
+{
+	struct most_channel *c = get_channel(mdev, mdev_ch);
+
+	if (!c)
+		return -ENODEV;
+	c->cfg.packets_per_xact = val;
+	return 0;
+}
+
+int most_cfg_complete(char *comp_name)
+{
+	struct core_component *comp;
+
+	comp = match_component(comp_name);
+	if (!comp)
+		return -ENODEV;
+
+	return comp->cfg_complete();
+}
+
+int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
+		  char *comp_param)
+{
+	struct most_channel *c = get_channel(mdev, mdev_ch);
+	struct core_component *comp = match_component(comp_name);
+
+	if (!c || !comp)
+		return -ENODEV;
+
+	return link_channel_to_component(c, comp, link_name, comp_param);
+}
+
+int most_remove_link(char *mdev, char *mdev_ch, char *comp_name)
+{
+	struct most_channel *c;
+	struct core_component *comp;
+
+	comp = match_component(comp_name);
+	if (!comp)
+		return -ENODEV;
+	c = get_channel(mdev, mdev_ch);
+	if (!c)
+		return -ENODEV;
+
+	if (comp->disconnect_channel(c->iface, c->channel_id))
+		return -EIO;
+	if (c->pipe0.comp == comp)
+		c->pipe0.comp = NULL;
+	if (c->pipe1.comp == comp)
+		c->pipe1.comp = NULL;
+	return 0;
+}
+
+#define DRV_ATTR(_name)  (&driver_attr_##_name.attr)
+
+static DRIVER_ATTR_RO(links);
+static DRIVER_ATTR_RO(components);
+
+static struct attribute *mc_attrs[] = {
+	DRV_ATTR(links),
+	DRV_ATTR(components),
+	NULL,
+};
+
+static struct attribute_group mc_attr_group = {
+	.attrs = mc_attrs,
+};
+
+static const struct attribute_group *mc_attr_groups[] = {
+	&mc_attr_group,
+	NULL,
+};
+
+static int most_match(struct device *dev, struct device_driver *drv)
+{
+	if (!strcmp(dev_name(dev), "most"))
+		return 0;
+	else
+		return 1;
+}
+
+static inline void trash_mbo(struct mbo *mbo)
+{
+	unsigned long flags;
+	struct most_channel *c = mbo->context;
+
+	spin_lock_irqsave(&c->fifo_lock, flags);
+	list_add(&mbo->list, &c->trash_fifo);
+	spin_unlock_irqrestore(&c->fifo_lock, flags);
+}
+
+static bool hdm_mbo_ready(struct most_channel *c)
+{
+	bool empty;
+
+	if (c->enqueue_halt)
+		return false;
+
+	spin_lock_irq(&c->fifo_lock);
+	empty = list_empty(&c->halt_fifo);
+	spin_unlock_irq(&c->fifo_lock);
+
+	return !empty;
+}
+
+static void nq_hdm_mbo(struct mbo *mbo)
+{
+	unsigned long flags;
+	struct most_channel *c = mbo->context;
+
+	spin_lock_irqsave(&c->fifo_lock, flags);
+	list_add_tail(&mbo->list, &c->halt_fifo);
+	spin_unlock_irqrestore(&c->fifo_lock, flags);
+	wake_up_interruptible(&c->hdm_fifo_wq);
+}
+
+static int hdm_enqueue_thread(void *data)
+{
+	struct most_channel *c = data;
+	struct mbo *mbo;
+	int ret;
+	typeof(c->iface->enqueue) enqueue = c->iface->enqueue;
+
+	while (likely(!kthread_should_stop())) {
+		wait_event_interruptible(c->hdm_fifo_wq,
+					 hdm_mbo_ready(c) ||
+					 kthread_should_stop());
+
+		mutex_lock(&c->nq_mutex);
+		spin_lock_irq(&c->fifo_lock);
+		if (unlikely(c->enqueue_halt || list_empty(&c->halt_fifo))) {
+			spin_unlock_irq(&c->fifo_lock);
+			mutex_unlock(&c->nq_mutex);
+			continue;
+		}
+
+		mbo = list_pop_mbo(&c->halt_fifo);
+		spin_unlock_irq(&c->fifo_lock);
+
+		if (c->cfg.direction == MOST_CH_RX)
+			mbo->buffer_length = c->cfg.buffer_size;
+
+		ret = enqueue(mbo->ifp, mbo->hdm_channel_id, mbo);
+		mutex_unlock(&c->nq_mutex);
+
+		if (unlikely(ret)) {
+			pr_err("hdm enqueue failed\n");
+			nq_hdm_mbo(mbo);
+			c->hdm_enqueue_task = NULL;
+			return 0;
+		}
+	}
+
+	return 0;
+}
+
+static int run_enqueue_thread(struct most_channel *c, int channel_id)
+{
+	struct task_struct *task =
+		kthread_run(hdm_enqueue_thread, c, "hdm_fifo_%d",
+			    channel_id);
+
+	if (IS_ERR(task))
+		return PTR_ERR(task);
+
+	c->hdm_enqueue_task = task;
+	return 0;
+}
+
+/**
+ * arm_mbo - recycle MBO for further usage
+ * @mbo: most buffer
+ *
+ * This puts an MBO back to the list to have it ready for up coming
+ * tx transactions.
+ *
+ * In case the MBO belongs to a channel that recently has been
+ * poisoned, the MBO is scheduled to be trashed.
+ * Calls the completion handler of an attached component.
+ */
+static void arm_mbo(struct mbo *mbo)
+{
+	unsigned long flags;
+	struct most_channel *c;
+
+	c = mbo->context;
+
+	if (c->is_poisoned) {
+		trash_mbo(mbo);
+		return;
+	}
+
+	spin_lock_irqsave(&c->fifo_lock, flags);
+	++*mbo->num_buffers_ptr;
+	list_add_tail(&mbo->list, &c->fifo);
+	spin_unlock_irqrestore(&c->fifo_lock, flags);
+
+	if (c->pipe0.refs && c->pipe0.comp->tx_completion)
+		c->pipe0.comp->tx_completion(c->iface, c->channel_id);
+
+	if (c->pipe1.refs && c->pipe1.comp->tx_completion)
+		c->pipe1.comp->tx_completion(c->iface, c->channel_id);
+}
+
+/**
+ * arm_mbo_chain - helper function that arms an MBO chain for the HDM
+ * @c: pointer to interface channel
+ * @dir: direction of the channel
+ * @compl: pointer to completion function
+ *
+ * This allocates buffer objects including the containing DMA coherent
+ * buffer and puts them in the fifo.
+ * Buffers of Rx channels are put in the kthread fifo, hence immediately
+ * submitted to the HDM.
+ *
+ * Returns the number of allocated and enqueued MBOs.
+ */
+static int arm_mbo_chain(struct most_channel *c, int dir,
+			 void (*compl)(struct mbo *))
+{
+	unsigned int i;
+	struct mbo *mbo;
+	unsigned long flags;
+	u32 coherent_buf_size = c->cfg.buffer_size + c->cfg.extra_len;
+
+	atomic_set(&c->mbo_nq_level, 0);
+
+	for (i = 0; i < c->cfg.num_buffers; i++) {
+		mbo = kzalloc(sizeof(*mbo), GFP_KERNEL);
+		if (!mbo)
+			goto flush_fifos;
+
+		mbo->context = c;
+		mbo->ifp = c->iface;
+		mbo->hdm_channel_id = c->channel_id;
+		if (c->iface->dma_alloc) {
+			mbo->virt_address =
+				c->iface->dma_alloc(mbo, coherent_buf_size);
+		} else {
+			mbo->virt_address =
+				kzalloc(coherent_buf_size, GFP_KERNEL);
+		}
+		if (!mbo->virt_address)
+			goto release_mbo;
+
+		mbo->complete = compl;
+		mbo->num_buffers_ptr = &dummy_num_buffers;
+		if (dir == MOST_CH_RX) {
+			nq_hdm_mbo(mbo);
+			atomic_inc(&c->mbo_nq_level);
+		} else {
+			spin_lock_irqsave(&c->fifo_lock, flags);
+			list_add_tail(&mbo->list, &c->fifo);
+			spin_unlock_irqrestore(&c->fifo_lock, flags);
+		}
+	}
+	return c->cfg.num_buffers;
+
+release_mbo:
+	kfree(mbo);
+
+flush_fifos:
+	flush_channel_fifos(c);
+	return 0;
+}
+
+/**
+ * most_submit_mbo - submits an MBO to fifo
+ * @mbo: most buffer
+ */
+void most_submit_mbo(struct mbo *mbo)
+{
+	if (WARN_ONCE(!mbo || !mbo->context,
+		      "bad mbo or missing channel reference\n"))
+		return;
+
+	nq_hdm_mbo(mbo);
+}
+EXPORT_SYMBOL_GPL(most_submit_mbo);
+
+/**
+ * most_write_completion - write completion handler
+ * @mbo: most buffer
+ *
+ * This recycles the MBO for further usage. In case the channel has been
+ * poisoned, the MBO is scheduled to be trashed.
+ */
+static void most_write_completion(struct mbo *mbo)
+{
+	struct most_channel *c;
+
+	c = mbo->context;
+	if (mbo->status == MBO_E_INVAL)
+		pr_info("WARN: Tx MBO status: invalid\n");
+	if (unlikely(c->is_poisoned || (mbo->status == MBO_E_CLOSE)))
+		trash_mbo(mbo);
+	else
+		arm_mbo(mbo);
+}
+
+int channel_has_mbo(struct most_interface *iface, int id,
+		    struct core_component *comp)
+{
+	struct most_channel *c = iface->p->channel[id];
+	unsigned long flags;
+	int empty;
+
+	if (unlikely(!c))
+		return -EINVAL;
+
+	if (c->pipe0.refs && c->pipe1.refs &&
+	    ((comp == c->pipe0.comp && c->pipe0.num_buffers <= 0) ||
+	     (comp == c->pipe1.comp && c->pipe1.num_buffers <= 0)))
+		return 0;
+
+	spin_lock_irqsave(&c->fifo_lock, flags);
+	empty = list_empty(&c->fifo);
+	spin_unlock_irqrestore(&c->fifo_lock, flags);
+	return !empty;
+}
+EXPORT_SYMBOL_GPL(channel_has_mbo);
+
+/**
+ * most_get_mbo - get pointer to an MBO of pool
+ * @iface: pointer to interface instance
+ * @id: channel ID
+ * @comp: driver component
+ *
+ * This attempts to get a free buffer out of the channel fifo.
+ * Returns a pointer to MBO on success or NULL otherwise.
+ */
+struct mbo *most_get_mbo(struct most_interface *iface, int id,
+			 struct core_component *comp)
+{
+	struct mbo *mbo;
+	struct most_channel *c;
+	unsigned long flags;
+	int *num_buffers_ptr;
+
+	c = iface->p->channel[id];
+	if (unlikely(!c))
+		return NULL;
+
+	if (c->pipe0.refs && c->pipe1.refs &&
+	    ((comp == c->pipe0.comp && c->pipe0.num_buffers <= 0) ||
+	     (comp == c->pipe1.comp && c->pipe1.num_buffers <= 0)))
+		return NULL;
+
+	if (comp == c->pipe0.comp)
+		num_buffers_ptr = &c->pipe0.num_buffers;
+	else if (comp == c->pipe1.comp)
+		num_buffers_ptr = &c->pipe1.num_buffers;
+	else
+		num_buffers_ptr = &dummy_num_buffers;
+
+	spin_lock_irqsave(&c->fifo_lock, flags);
+	if (list_empty(&c->fifo)) {
+		spin_unlock_irqrestore(&c->fifo_lock, flags);
+		return NULL;
+	}
+	mbo = list_pop_mbo(&c->fifo);
+	--*num_buffers_ptr;
+	spin_unlock_irqrestore(&c->fifo_lock, flags);
+
+	mbo->num_buffers_ptr = num_buffers_ptr;
+	mbo->buffer_length = c->cfg.buffer_size;
+	return mbo;
+}
+EXPORT_SYMBOL_GPL(most_get_mbo);
+
+/**
+ * most_put_mbo - return buffer to pool
+ * @mbo: most buffer
+ */
+void most_put_mbo(struct mbo *mbo)
+{
+	struct most_channel *c = mbo->context;
+
+	if (c->cfg.direction == MOST_CH_TX) {
+		arm_mbo(mbo);
+		return;
+	}
+	nq_hdm_mbo(mbo);
+	atomic_inc(&c->mbo_nq_level);
+}
+EXPORT_SYMBOL_GPL(most_put_mbo);
+
+/**
+ * most_read_completion - read completion handler
+ * @mbo: most buffer
+ *
+ * This function is called by the HDM when data has been received from the
+ * hardware and copied to the buffer of the MBO.
+ *
+ * In case the channel has been poisoned it puts the buffer in the trash queue.
+ * Otherwise, it passes the buffer to an component for further processing.
+ */
+static void most_read_completion(struct mbo *mbo)
+{
+	struct most_channel *c = mbo->context;
+
+	if (unlikely(c->is_poisoned || (mbo->status == MBO_E_CLOSE))) {
+		trash_mbo(mbo);
+		return;
+	}
+
+	if (mbo->status == MBO_E_INVAL) {
+		nq_hdm_mbo(mbo);
+		atomic_inc(&c->mbo_nq_level);
+		return;
+	}
+
+	if (atomic_sub_and_test(1, &c->mbo_nq_level))
+		c->is_starving = 1;
+
+	if (c->pipe0.refs && c->pipe0.comp->rx_completion &&
+	    c->pipe0.comp->rx_completion(mbo) == 0)
+		return;
+
+	if (c->pipe1.refs && c->pipe1.comp->rx_completion &&
+	    c->pipe1.comp->rx_completion(mbo) == 0)
+		return;
+
+	most_put_mbo(mbo);
+}
+
+/**
+ * most_start_channel - prepares a channel for communication
+ * @iface: pointer to interface instance
+ * @id: channel ID
+ * @comp: driver component
+ *
+ * This prepares the channel for usage. Cross-checks whether the
+ * channel's been properly configured.
+ *
+ * Returns 0 on success or error code otherwise.
+ */
+int most_start_channel(struct most_interface *iface, int id,
+		       struct core_component *comp)
+{
+	int num_buffer;
+	int ret;
+	struct most_channel *c = iface->p->channel[id];
+
+	if (unlikely(!c))
+		return -EINVAL;
+
+	mutex_lock(&c->start_mutex);
+	if (c->pipe0.refs + c->pipe1.refs > 0)
+		goto out; /* already started by another component */
+
+	if (!try_module_get(iface->mod)) {
+		pr_info("failed to acquire HDM lock\n");
+		mutex_unlock(&c->start_mutex);
+		return -ENOLCK;
+	}
+
+	c->cfg.extra_len = 0;
+	if (c->iface->configure(c->iface, c->channel_id, &c->cfg)) {
+		pr_info("channel configuration failed. Go check settings...\n");
+		ret = -EINVAL;
+		goto err_put_module;
+	}
+
+	init_waitqueue_head(&c->hdm_fifo_wq);
+
+	if (c->cfg.direction == MOST_CH_RX)
+		num_buffer = arm_mbo_chain(c, c->cfg.direction,
+					   most_read_completion);
+	else
+		num_buffer = arm_mbo_chain(c, c->cfg.direction,
+					   most_write_completion);
+	if (unlikely(!num_buffer)) {
+		ret = -ENOMEM;
+		goto err_put_module;
+	}
+
+	ret = run_enqueue_thread(c, id);
+	if (ret)
+		goto err_put_module;
+
+	c->is_starving = 0;
+	c->pipe0.num_buffers = c->cfg.num_buffers / 2;
+	c->pipe1.num_buffers = c->cfg.num_buffers - c->pipe0.num_buffers;
+	atomic_set(&c->mbo_ref, num_buffer);
+
+out:
+	if (comp == c->pipe0.comp)
+		c->pipe0.refs++;
+	if (comp == c->pipe1.comp)
+		c->pipe1.refs++;
+	mutex_unlock(&c->start_mutex);
+	return 0;
+
+err_put_module:
+	module_put(iface->mod);
+	mutex_unlock(&c->start_mutex);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(most_start_channel);
+
+/**
+ * most_stop_channel - stops a running channel
+ * @iface: pointer to interface instance
+ * @id: channel ID
+ * @comp: driver component
+ */
+int most_stop_channel(struct most_interface *iface, int id,
+		      struct core_component *comp)
+{
+	struct most_channel *c;
+
+	if (unlikely((!iface) || (id >= iface->num_channels) || (id < 0))) {
+		pr_err("Bad interface or index out of range\n");
+		return -EINVAL;
+	}
+	c = iface->p->channel[id];
+	if (unlikely(!c))
+		return -EINVAL;
+
+	mutex_lock(&c->start_mutex);
+	if (c->pipe0.refs + c->pipe1.refs >= 2)
+		goto out;
+
+	if (c->hdm_enqueue_task)
+		kthread_stop(c->hdm_enqueue_task);
+	c->hdm_enqueue_task = NULL;
+
+	if (iface->mod)
+		module_put(iface->mod);
+
+	c->is_poisoned = true;
+	if (c->iface->poison_channel(c->iface, c->channel_id)) {
+		pr_err("Cannot stop channel %d of mdev %s\n", c->channel_id,
+		       c->iface->description);
+		mutex_unlock(&c->start_mutex);
+		return -EAGAIN;
+	}
+	flush_trash_fifo(c);
+	flush_channel_fifos(c);
+
+#ifdef CMPL_INTERRUPTIBLE
+	if (wait_for_completion_interruptible(&c->cleanup)) {
+		pr_info("Interrupted while clean up ch %d\n", c->channel_id);
+		mutex_unlock(&c->start_mutex);
+		return -EINTR;
+	}
+#else
+	wait_for_completion(&c->cleanup);
+#endif
+	c->is_poisoned = false;
+
+out:
+	if (comp == c->pipe0.comp)
+		c->pipe0.refs--;
+	if (comp == c->pipe1.comp)
+		c->pipe1.refs--;
+	mutex_unlock(&c->start_mutex);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(most_stop_channel);
+
+/**
+ * most_register_component - registers a driver component with the core
+ * @comp: driver component
+ */
+int most_register_component(struct core_component *comp)
+{
+	if (!comp) {
+		pr_err("Bad component\n");
+		return -EINVAL;
+	}
+	list_add_tail(&comp->list, &mc.comp_list);
+	pr_info("registered new core component %s\n", comp->name);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(most_register_component);
+
+static int disconnect_channels(struct device *dev, void *data)
+{
+	struct most_interface *iface;
+	struct most_channel *c, *tmp;
+	struct core_component *comp = data;
+
+	iface = to_most_interface(dev);
+	list_for_each_entry_safe(c, tmp, &iface->p->channel_list, list) {
+		if (c->pipe0.comp == comp || c->pipe1.comp == comp)
+			comp->disconnect_channel(c->iface, c->channel_id);
+		if (c->pipe0.comp == comp)
+			c->pipe0.comp = NULL;
+		if (c->pipe1.comp == comp)
+			c->pipe1.comp = NULL;
+	}
+	return 0;
+}
+
+/**
+ * most_deregister_component - deregisters a driver component with the core
+ * @comp: driver component
+ */
+int most_deregister_component(struct core_component *comp)
+{
+	if (!comp) {
+		pr_err("Bad component\n");
+		return -EINVAL;
+	}
+
+	bus_for_each_dev(&mc.bus, NULL, comp, disconnect_channels);
+	list_del(&comp->list);
+	pr_info("deregistering component %s\n", comp->name);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(most_deregister_component);
+
+static void release_interface(struct device *dev)
+{
+	pr_info("releasing interface dev %s...\n", dev_name(dev));
+}
+
+static void release_channel(struct device *dev)
+{
+	pr_info("releasing channel dev %s...\n", dev_name(dev));
+}
+
+/**
+ * most_register_interface - registers an interface with core
+ * @iface: device interface
+ *
+ * Allocates and initializes a new interface instance and all of its channels.
+ * Returns a pointer to kobject or an error pointer.
+ */
+int most_register_interface(struct most_interface *iface)
+{
+	unsigned int i;
+	int id;
+	struct most_channel *c;
+
+	if (!iface || !iface->enqueue || !iface->configure ||
+	    !iface->poison_channel || (iface->num_channels > MAX_CHANNELS)) {
+		pr_err("Bad interface or channel overflow\n");
+		return -EINVAL;
+	}
+
+	id = ida_simple_get(&mdev_id, 0, 0, GFP_KERNEL);
+	if (id < 0) {
+		pr_info("Failed to alloc mdev ID\n");
+		return id;
+	}
+
+	iface->p = kzalloc(sizeof(*iface->p), GFP_KERNEL);
+	if (!iface->p) {
+		ida_simple_remove(&mdev_id, id);
+		return -ENOMEM;
+	}
+
+	INIT_LIST_HEAD(&iface->p->channel_list);
+	iface->p->dev_id = id;
+	strscpy(iface->p->name, iface->description, sizeof(iface->p->name));
+	iface->dev.init_name = iface->p->name;
+	iface->dev.bus = &mc.bus;
+	iface->dev.parent = &mc.dev;
+	iface->dev.groups = interface_attr_groups;
+	iface->dev.release = release_interface;
+	if (device_register(&iface->dev)) {
+		pr_err("registering iface->dev failed\n");
+		kfree(iface->p);
+		ida_simple_remove(&mdev_id, id);
+		return -ENOMEM;
+	}
+
+	for (i = 0; i < iface->num_channels; i++) {
+		const char *name_suffix = iface->channel_vector[i].name_suffix;
+
+		c = kzalloc(sizeof(*c), GFP_KERNEL);
+		if (!c)
+			goto err_free_resources;
+		if (!name_suffix)
+			snprintf(c->name, STRING_SIZE, "ch%d", i);
+		else
+			snprintf(c->name, STRING_SIZE, "%s", name_suffix);
+		c->dev.init_name = c->name;
+		c->dev.parent = &iface->dev;
+		c->dev.groups = channel_attr_groups;
+		c->dev.release = release_channel;
+		iface->p->channel[i] = c;
+		c->is_starving = 0;
+		c->iface = iface;
+		c->channel_id = i;
+		c->keep_mbo = false;
+		c->enqueue_halt = false;
+		c->is_poisoned = false;
+		c->cfg.direction = 0;
+		c->cfg.data_type = 0;
+		c->cfg.num_buffers = 0;
+		c->cfg.buffer_size = 0;
+		c->cfg.subbuffer_size = 0;
+		c->cfg.packets_per_xact = 0;
+		spin_lock_init(&c->fifo_lock);
+		INIT_LIST_HEAD(&c->fifo);
+		INIT_LIST_HEAD(&c->trash_fifo);
+		INIT_LIST_HEAD(&c->halt_fifo);
+		init_completion(&c->cleanup);
+		atomic_set(&c->mbo_ref, 0);
+		mutex_init(&c->start_mutex);
+		mutex_init(&c->nq_mutex);
+		list_add_tail(&c->list, &iface->p->channel_list);
+		if (device_register(&c->dev)) {
+			pr_err("registering c->dev failed\n");
+			goto err_free_most_channel;
+		}
+	}
+	pr_info("registered new device mdev%d (%s)\n",
+		id, iface->description);
+	most_interface_register_notify(iface->description);
+	return 0;
+
+err_free_most_channel:
+	kfree(c);
+
+err_free_resources:
+	while (i > 0) {
+		c = iface->p->channel[--i];
+		device_unregister(&c->dev);
+		kfree(c);
+	}
+	kfree(iface->p);
+	device_unregister(&iface->dev);
+	ida_simple_remove(&mdev_id, id);
+	return -ENOMEM;
+}
+EXPORT_SYMBOL_GPL(most_register_interface);
+
+/**
+ * most_deregister_interface - deregisters an interface with core
+ * @iface: device interface
+ *
+ * Before removing an interface instance from the list, all running
+ * channels are stopped and poisoned.
+ */
+void most_deregister_interface(struct most_interface *iface)
+{
+	int i;
+	struct most_channel *c;
+
+	pr_info("deregistering device %s (%s)\n", dev_name(&iface->dev),
+		iface->description);
+	for (i = 0; i < iface->num_channels; i++) {
+		c = iface->p->channel[i];
+		if (c->pipe0.comp)
+			c->pipe0.comp->disconnect_channel(c->iface,
+							c->channel_id);
+		if (c->pipe1.comp)
+			c->pipe1.comp->disconnect_channel(c->iface,
+							c->channel_id);
+		c->pipe0.comp = NULL;
+		c->pipe1.comp = NULL;
+		list_del(&c->list);
+		device_unregister(&c->dev);
+		kfree(c);
+	}
+
+	ida_simple_remove(&mdev_id, iface->p->dev_id);
+	kfree(iface->p);
+	device_unregister(&iface->dev);
+}
+EXPORT_SYMBOL_GPL(most_deregister_interface);
+
+/**
+ * most_stop_enqueue - prevents core from enqueueing MBOs
+ * @iface: pointer to interface
+ * @id: channel id
+ *
+ * This is called by an HDM that _cannot_ attend to its duties and
+ * is imminent to get run over by the core. The core is not going to
+ * enqueue any further packets unless the flagging HDM calls
+ * most_resume enqueue().
+ */
+void most_stop_enqueue(struct most_interface *iface, int id)
+{
+	struct most_channel *c = iface->p->channel[id];
+
+	if (!c)
+		return;
+
+	mutex_lock(&c->nq_mutex);
+	c->enqueue_halt = true;
+	mutex_unlock(&c->nq_mutex);
+}
+EXPORT_SYMBOL_GPL(most_stop_enqueue);
+
+/**
+ * most_resume_enqueue - allow core to enqueue MBOs again
+ * @iface: pointer to interface
+ * @id: channel id
+ *
+ * This clears the enqueue halt flag and enqueues all MBOs currently
+ * sitting in the wait fifo.
+ */
+void most_resume_enqueue(struct most_interface *iface, int id)
+{
+	struct most_channel *c = iface->p->channel[id];
+
+	if (!c)
+		return;
+
+	mutex_lock(&c->nq_mutex);
+	c->enqueue_halt = false;
+	mutex_unlock(&c->nq_mutex);
+
+	wake_up_interruptible(&c->hdm_fifo_wq);
+}
+EXPORT_SYMBOL_GPL(most_resume_enqueue);
+
+static void release_most_sub(struct device *dev)
+{
+	pr_info("releasing most_subsystem\n");
+}
+
+static int __init most_init(void)
+{
+	int err;
+
+	pr_info("init()\n");
+	INIT_LIST_HEAD(&mc.comp_list);
+	ida_init(&mdev_id);
+
+	mc.bus.name = "most",
+	mc.bus.match = most_match,
+	mc.drv.name = "most_core",
+	mc.drv.bus = &mc.bus,
+	mc.drv.groups = mc_attr_groups;
+
+	err = bus_register(&mc.bus);
+	if (err) {
+		pr_info("Cannot register most bus\n");
+		return err;
+	}
+	err = driver_register(&mc.drv);
+	if (err) {
+		pr_info("Cannot register core driver\n");
+		goto err_unregister_bus;
+	}
+	mc.dev.init_name = "most_bus";
+	mc.dev.release = release_most_sub;
+	if (device_register(&mc.dev)) {
+		err = -ENOMEM;
+		goto err_unregister_driver;
+	}
+	configfs_init();
+	return 0;
+
+err_unregister_driver:
+	driver_unregister(&mc.drv);
+err_unregister_bus:
+	bus_unregister(&mc.bus);
+	return err;
+}
+
+static void __exit most_exit(void)
+{
+	pr_info("exit core module\n");
+	device_unregister(&mc.dev);
+	driver_unregister(&mc.drv);
+	bus_unregister(&mc.bus);
+	ida_destroy(&mdev_id);
+}
+
+module_init(most_init);
+module_exit(most_exit);
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Christian Gromm <christian.gromm@microchip.com>");
+MODULE_DESCRIPTION("Core module of stacked MOST Linux driver");
diff --git a/drivers/staging/most/Kconfig b/drivers/staging/most/Kconfig
index 6262eb2..c5a99f7 100644
--- a/drivers/staging/most/Kconfig
+++ b/drivers/staging/most/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
-menuconfig MOST
+menuconfig MOST_COMPONENTS
 	tristate "MOST support"
-	depends on HAS_DMA && CONFIGFS_FS
+	depends on HAS_DMA && CONFIGFS_FS && MOST
 	default n
 	help
 	  Say Y here if you want to enable MOST support.
@@ -16,7 +16,7 @@ menuconfig MOST
 
 
 
-if MOST
+if MOST_COMPONENTS
 
 source "drivers/staging/most/cdev/Kconfig"
 
diff --git a/drivers/staging/most/Makefile b/drivers/staging/most/Makefile
index 85ea5a4..3c446bb 100644
--- a/drivers/staging/most/Makefile
+++ b/drivers/staging/most/Makefile
@@ -1,9 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_MOST) += most_core.o
-most_core-y := core.o
-most_core-y += configfs.o
-ccflags-y += -I $(srctree)/drivers/staging/
-
 obj-$(CONFIG_MOST_CDEV)	+= cdev/
 obj-$(CONFIG_MOST_NET)	+= net/
 obj-$(CONFIG_MOST_SOUND)	+= sound/
diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index 45faa54..e3b58fc 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -16,7 +16,7 @@
 #include <linux/kfifo.h>
 #include <linux/uaccess.h>
 #include <linux/idr.h>
-#include <most/most.h>
+#include <linux/most.h>
 
 #define CHRDEV_REGION_SIZE 50
 
diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
deleted file mode 100644
index e17d846..0000000
--- a/drivers/staging/most/configfs.c
+++ /dev/null
@@ -1,708 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * configfs.c - Implementation of configfs interface to the driver stack
- *
- * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co. KG
- */
-
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
-#include <linux/module.h>
-#include <linux/slab.h>
-#include <linux/init.h>
-#include <linux/configfs.h>
-#include <most/most.h>
-
-struct mdev_link {
-	struct config_item item;
-	struct list_head list;
-	bool create_link;
-	bool destroy_link;
-	u16 num_buffers;
-	u16 buffer_size;
-	u16 subbuffer_size;
-	u16 packets_per_xact;
-	u16 dbr_size;
-	char datatype[PAGE_SIZE];
-	char direction[PAGE_SIZE];
-	char name[PAGE_SIZE];
-	char device[PAGE_SIZE];
-	char channel[PAGE_SIZE];
-	char comp[PAGE_SIZE];
-	char comp_params[PAGE_SIZE];
-};
-
-static struct list_head mdev_link_list;
-
-static int set_cfg_buffer_size(struct mdev_link *link)
-{
-	return most_set_cfg_buffer_size(link->device, link->channel,
-					link->buffer_size);
-}
-
-static int set_cfg_subbuffer_size(struct mdev_link *link)
-{
-	return most_set_cfg_subbuffer_size(link->device, link->channel,
-					   link->subbuffer_size);
-}
-
-static int set_cfg_dbr_size(struct mdev_link *link)
-{
-	return most_set_cfg_dbr_size(link->device, link->channel,
-				     link->dbr_size);
-}
-
-static int set_cfg_num_buffers(struct mdev_link *link)
-{
-	return most_set_cfg_num_buffers(link->device, link->channel,
-					link->num_buffers);
-}
-
-static int set_cfg_packets_xact(struct mdev_link *link)
-{
-	return most_set_cfg_packets_xact(link->device, link->channel,
-					 link->packets_per_xact);
-}
-
-static int set_cfg_direction(struct mdev_link *link)
-{
-	return most_set_cfg_direction(link->device, link->channel,
-				      link->direction);
-}
-
-static int set_cfg_datatype(struct mdev_link *link)
-{
-	return most_set_cfg_datatype(link->device, link->channel,
-				     link->datatype);
-}
-
-static int (*set_config_val[])(struct mdev_link *link) = {
-	set_cfg_buffer_size,
-	set_cfg_subbuffer_size,
-	set_cfg_dbr_size,
-	set_cfg_num_buffers,
-	set_cfg_packets_xact,
-	set_cfg_direction,
-	set_cfg_datatype,
-};
-
-static struct mdev_link *to_mdev_link(struct config_item *item)
-{
-	return container_of(item, struct mdev_link, item);
-}
-
-static int set_config_and_add_link(struct mdev_link *mdev_link)
-{
-	int i;
-	int ret;
-
-	for (i = 0; i < ARRAY_SIZE(set_config_val); i++) {
-		ret = set_config_val[i](mdev_link);
-		if (ret < 0 && ret != -ENODEV) {
-			pr_err("Config failed\n");
-			return ret;
-		}
-	}
-
-	return most_add_link(mdev_link->device, mdev_link->channel,
-			     mdev_link->comp, mdev_link->name,
-			     mdev_link->comp_params);
-}
-
-static ssize_t mdev_link_create_link_store(struct config_item *item,
-					   const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-	bool tmp;
-	int ret;
-
-	ret = kstrtobool(page, &tmp);
-	if (ret)
-		return ret;
-	if (!tmp)
-		return count;
-	ret = set_config_and_add_link(mdev_link);
-	if (ret && ret != -ENODEV)
-		return ret;
-	list_add_tail(&mdev_link->list, &mdev_link_list);
-	mdev_link->create_link = tmp;
-	return count;
-}
-
-static ssize_t mdev_link_destroy_link_store(struct config_item *item,
-					    const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-	bool tmp;
-	int ret;
-
-	ret = kstrtobool(page, &tmp);
-	if (ret)
-		return ret;
-	if (!tmp)
-		return count;
-	mdev_link->destroy_link = tmp;
-	ret = most_remove_link(mdev_link->device, mdev_link->channel,
-			       mdev_link->comp);
-	if (ret)
-		return ret;
-	if (!list_empty(&mdev_link_list))
-		list_del(&mdev_link->list);
-	return count;
-}
-
-static ssize_t mdev_link_direction_show(struct config_item *item, char *page)
-{
-	return snprintf(page, PAGE_SIZE, "%s\n", to_mdev_link(item)->direction);
-}
-
-static ssize_t mdev_link_direction_store(struct config_item *item,
-					 const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-
-	if (!sysfs_streq(page, "dir_rx") && !sysfs_streq(page, "rx") &&
-	    !sysfs_streq(page, "dir_tx") && !sysfs_streq(page, "tx"))
-		return -EINVAL;
-	strcpy(mdev_link->direction, page);
-	strim(mdev_link->direction);
-	return count;
-}
-
-static ssize_t mdev_link_datatype_show(struct config_item *item, char *page)
-{
-	return snprintf(page, PAGE_SIZE, "%s\n", to_mdev_link(item)->datatype);
-}
-
-static ssize_t mdev_link_datatype_store(struct config_item *item,
-					const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-
-	if (!sysfs_streq(page, "control") && !sysfs_streq(page, "async") &&
-	    !sysfs_streq(page, "sync") && !sysfs_streq(page, "isoc") &&
-	    !sysfs_streq(page, "isoc_avp"))
-		return -EINVAL;
-	strcpy(mdev_link->datatype, page);
-	strim(mdev_link->datatype);
-	return count;
-}
-
-static ssize_t mdev_link_device_show(struct config_item *item, char *page)
-{
-	return snprintf(page, PAGE_SIZE, "%s\n", to_mdev_link(item)->device);
-}
-
-static ssize_t mdev_link_device_store(struct config_item *item,
-				      const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-
-	strcpy(mdev_link->device, page);
-	strim(mdev_link->device);
-	return count;
-}
-
-static ssize_t mdev_link_channel_show(struct config_item *item, char *page)
-{
-	return snprintf(page, PAGE_SIZE, "%s\n", to_mdev_link(item)->channel);
-}
-
-static ssize_t mdev_link_channel_store(struct config_item *item,
-				       const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-
-	strcpy(mdev_link->channel, page);
-	strim(mdev_link->channel);
-	return count;
-}
-
-static ssize_t mdev_link_comp_show(struct config_item *item, char *page)
-{
-	return snprintf(page, PAGE_SIZE, "%s\n", to_mdev_link(item)->comp);
-}
-
-static ssize_t mdev_link_comp_store(struct config_item *item,
-				    const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-
-	strcpy(mdev_link->comp, page);
-	return count;
-}
-
-static ssize_t mdev_link_comp_params_show(struct config_item *item, char *page)
-{
-	return snprintf(page, PAGE_SIZE, "%s\n",
-			to_mdev_link(item)->comp_params);
-}
-
-static ssize_t mdev_link_comp_params_store(struct config_item *item,
-					   const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-
-	strcpy(mdev_link->comp_params, page);
-	return count;
-}
-
-static ssize_t mdev_link_num_buffers_show(struct config_item *item, char *page)
-{
-	return snprintf(page, PAGE_SIZE, "%d\n",
-			to_mdev_link(item)->num_buffers);
-}
-
-static ssize_t mdev_link_num_buffers_store(struct config_item *item,
-					   const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-	int ret;
-
-	ret = kstrtou16(page, 0, &mdev_link->num_buffers);
-	if (ret)
-		return ret;
-	return count;
-}
-
-static ssize_t mdev_link_buffer_size_show(struct config_item *item, char *page)
-{
-	return snprintf(page, PAGE_SIZE, "%d\n",
-			to_mdev_link(item)->buffer_size);
-}
-
-static ssize_t mdev_link_buffer_size_store(struct config_item *item,
-					   const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-	int ret;
-
-	ret = kstrtou16(page, 0, &mdev_link->buffer_size);
-	if (ret)
-		return ret;
-	return count;
-}
-
-static ssize_t mdev_link_subbuffer_size_show(struct config_item *item,
-					     char *page)
-{
-	return snprintf(page, PAGE_SIZE, "%d\n",
-			to_mdev_link(item)->subbuffer_size);
-}
-
-static ssize_t mdev_link_subbuffer_size_store(struct config_item *item,
-					      const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-	int ret;
-
-	ret = kstrtou16(page, 0, &mdev_link->subbuffer_size);
-	if (ret)
-		return ret;
-	return count;
-}
-
-static ssize_t mdev_link_packets_per_xact_show(struct config_item *item,
-					       char *page)
-{
-	return snprintf(page, PAGE_SIZE, "%d\n",
-			to_mdev_link(item)->packets_per_xact);
-}
-
-static ssize_t mdev_link_packets_per_xact_store(struct config_item *item,
-						const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-	int ret;
-
-	ret = kstrtou16(page, 0, &mdev_link->packets_per_xact);
-	if (ret)
-		return ret;
-	return count;
-}
-
-static ssize_t mdev_link_dbr_size_show(struct config_item *item, char *page)
-{
-	return snprintf(page, PAGE_SIZE, "%d\n", to_mdev_link(item)->dbr_size);
-}
-
-static ssize_t mdev_link_dbr_size_store(struct config_item *item,
-					const char *page, size_t count)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-	int ret;
-
-	ret = kstrtou16(page, 0, &mdev_link->dbr_size);
-	if (ret)
-		return ret;
-	return count;
-}
-
-CONFIGFS_ATTR_WO(mdev_link_, create_link);
-CONFIGFS_ATTR_WO(mdev_link_, destroy_link);
-CONFIGFS_ATTR(mdev_link_, device);
-CONFIGFS_ATTR(mdev_link_, channel);
-CONFIGFS_ATTR(mdev_link_, comp);
-CONFIGFS_ATTR(mdev_link_, comp_params);
-CONFIGFS_ATTR(mdev_link_, num_buffers);
-CONFIGFS_ATTR(mdev_link_, buffer_size);
-CONFIGFS_ATTR(mdev_link_, subbuffer_size);
-CONFIGFS_ATTR(mdev_link_, packets_per_xact);
-CONFIGFS_ATTR(mdev_link_, datatype);
-CONFIGFS_ATTR(mdev_link_, direction);
-CONFIGFS_ATTR(mdev_link_, dbr_size);
-
-static struct configfs_attribute *mdev_link_attrs[] = {
-	&mdev_link_attr_create_link,
-	&mdev_link_attr_destroy_link,
-	&mdev_link_attr_device,
-	&mdev_link_attr_channel,
-	&mdev_link_attr_comp,
-	&mdev_link_attr_comp_params,
-	&mdev_link_attr_num_buffers,
-	&mdev_link_attr_buffer_size,
-	&mdev_link_attr_subbuffer_size,
-	&mdev_link_attr_packets_per_xact,
-	&mdev_link_attr_datatype,
-	&mdev_link_attr_direction,
-	&mdev_link_attr_dbr_size,
-	NULL,
-};
-
-static void mdev_link_release(struct config_item *item)
-{
-	struct mdev_link *mdev_link = to_mdev_link(item);
-	int ret;
-
-	if (!list_empty(&mdev_link_list)) {
-		ret = most_remove_link(mdev_link->device, mdev_link->channel,
-				       mdev_link->comp);
-		if (ret && (ret != -ENODEV))
-			pr_err("Removing link failed.\n");
-		list_del(&mdev_link->list);
-	}
-	kfree(to_mdev_link(item));
-}
-
-static struct configfs_item_operations mdev_link_item_ops = {
-	.release		= mdev_link_release,
-};
-
-static const struct config_item_type mdev_link_type = {
-	.ct_item_ops	= &mdev_link_item_ops,
-	.ct_attrs	= mdev_link_attrs,
-	.ct_owner	= THIS_MODULE,
-};
-
-struct most_common {
-	struct config_group group;
-	struct module *mod;
-	struct configfs_subsystem subsys;
-};
-
-static struct most_common *to_most_common(struct configfs_subsystem *subsys)
-{
-	return container_of(subsys, struct most_common, subsys);
-}
-
-static struct config_item *most_common_make_item(struct config_group *group,
-						 const char *name)
-{
-	struct mdev_link *mdev_link;
-	struct most_common *mc = to_most_common(group->cg_subsys);
-
-	mdev_link = kzalloc(sizeof(*mdev_link), GFP_KERNEL);
-	if (!mdev_link)
-		return ERR_PTR(-ENOMEM);
-
-	if (!try_module_get(mc->mod)) {
-		kfree(mdev_link);
-		return ERR_PTR(-ENOLCK);
-	}
-	config_item_init_type_name(&mdev_link->item, name,
-				   &mdev_link_type);
-
-	if (!strcmp(group->cg_item.ci_namebuf, "most_cdev"))
-		strcpy(mdev_link->comp, "cdev");
-	else if (!strcmp(group->cg_item.ci_namebuf, "most_net"))
-		strcpy(mdev_link->comp, "net");
-	else if (!strcmp(group->cg_item.ci_namebuf, "most_video"))
-		strcpy(mdev_link->comp, "video");
-	strcpy(mdev_link->name, name);
-	return &mdev_link->item;
-}
-
-static void most_common_release(struct config_item *item)
-{
-	struct config_group *group = to_config_group(item);
-
-	kfree(to_most_common(group->cg_subsys));
-}
-
-static struct configfs_item_operations most_common_item_ops = {
-	.release	= most_common_release,
-};
-
-static void most_common_disconnect(struct config_group *group,
-				   struct config_item *item)
-{
-	struct most_common *mc = to_most_common(group->cg_subsys);
-
-	module_put(mc->mod);
-}
-
-static struct configfs_group_operations most_common_group_ops = {
-	.make_item	= most_common_make_item,
-	.disconnect_notify = most_common_disconnect,
-};
-
-static const struct config_item_type most_common_type = {
-	.ct_item_ops	= &most_common_item_ops,
-	.ct_group_ops	= &most_common_group_ops,
-	.ct_owner	= THIS_MODULE,
-};
-
-static struct most_common most_cdev = {
-	.subsys = {
-		.su_group = {
-			.cg_item = {
-				.ci_namebuf = "most_cdev",
-				.ci_type = &most_common_type,
-			},
-		},
-	},
-};
-
-static struct most_common most_net = {
-	.subsys = {
-		.su_group = {
-			.cg_item = {
-				.ci_namebuf = "most_net",
-				.ci_type = &most_common_type,
-			},
-		},
-	},
-};
-
-static struct most_common most_video = {
-	.subsys = {
-		.su_group = {
-			.cg_item = {
-				.ci_namebuf = "most_video",
-				.ci_type = &most_common_type,
-			},
-		},
-	},
-};
-
-struct most_snd_grp {
-	struct config_group group;
-	bool create_card;
-	struct list_head list;
-};
-
-static struct most_snd_grp *to_most_snd_grp(struct config_item *item)
-{
-	return container_of(to_config_group(item), struct most_snd_grp, group);
-}
-
-static struct config_item *most_snd_grp_make_item(struct config_group *group,
-						  const char *name)
-{
-	struct mdev_link *mdev_link;
-
-	mdev_link = kzalloc(sizeof(*mdev_link), GFP_KERNEL);
-	if (!mdev_link)
-		return ERR_PTR(-ENOMEM);
-
-	config_item_init_type_name(&mdev_link->item, name, &mdev_link_type);
-	mdev_link->create_link = false;
-	strcpy(mdev_link->name, name);
-	strcpy(mdev_link->comp, "sound");
-	return &mdev_link->item;
-}
-
-static ssize_t most_snd_grp_create_card_store(struct config_item *item,
-					      const char *page, size_t count)
-{
-	struct most_snd_grp *snd_grp = to_most_snd_grp(item);
-	int ret;
-	bool tmp;
-
-	ret = kstrtobool(page, &tmp);
-	if (ret)
-		return ret;
-	if (tmp) {
-		ret = most_cfg_complete("sound");
-		if (ret)
-			return ret;
-	}
-	snd_grp->create_card = tmp;
-	return count;
-}
-
-CONFIGFS_ATTR_WO(most_snd_grp_, create_card);
-
-static struct configfs_attribute *most_snd_grp_attrs[] = {
-	&most_snd_grp_attr_create_card,
-	NULL,
-};
-
-static void most_snd_grp_release(struct config_item *item)
-{
-	struct most_snd_grp *group = to_most_snd_grp(item);
-
-	list_del(&group->list);
-	kfree(group);
-}
-
-static struct configfs_item_operations most_snd_grp_item_ops = {
-	.release	= most_snd_grp_release,
-};
-
-static struct configfs_group_operations most_snd_grp_group_ops = {
-	.make_item	= most_snd_grp_make_item,
-};
-
-static const struct config_item_type most_snd_grp_type = {
-	.ct_item_ops	= &most_snd_grp_item_ops,
-	.ct_group_ops	= &most_snd_grp_group_ops,
-	.ct_attrs	= most_snd_grp_attrs,
-	.ct_owner	= THIS_MODULE,
-};
-
-struct most_sound {
-	struct configfs_subsystem subsys;
-	struct list_head soundcard_list;
-	struct module *mod;
-};
-
-static struct config_group *most_sound_make_group(struct config_group *group,
-						  const char *name)
-{
-	struct most_snd_grp *most;
-	struct most_sound *ms = container_of(group->cg_subsys,
-					     struct most_sound, subsys);
-
-	list_for_each_entry(most, &ms->soundcard_list, list) {
-		if (!most->create_card) {
-			pr_info("adapter configuration still in progress.\n");
-			return ERR_PTR(-EPROTO);
-		}
-	}
-	if (!try_module_get(ms->mod))
-		return ERR_PTR(-ENOLCK);
-	most = kzalloc(sizeof(*most), GFP_KERNEL);
-	if (!most) {
-		module_put(ms->mod);
-		return ERR_PTR(-ENOMEM);
-	}
-	config_group_init_type_name(&most->group, name, &most_snd_grp_type);
-	list_add_tail(&most->list, &ms->soundcard_list);
-	return &most->group;
-}
-
-static void most_sound_disconnect(struct config_group *group,
-				  struct config_item *item)
-{
-	struct most_sound *ms = container_of(group->cg_subsys,
-					     struct most_sound, subsys);
-	module_put(ms->mod);
-}
-
-static struct configfs_group_operations most_sound_group_ops = {
-	.make_group	= most_sound_make_group,
-	.disconnect_notify = most_sound_disconnect,
-};
-
-static const struct config_item_type most_sound_type = {
-	.ct_group_ops	= &most_sound_group_ops,
-	.ct_owner	= THIS_MODULE,
-};
-
-static struct most_sound most_sound_subsys = {
-	.subsys = {
-		.su_group = {
-			.cg_item = {
-				.ci_namebuf = "most_sound",
-				.ci_type = &most_sound_type,
-			},
-		},
-	},
-};
-
-int most_register_configfs_subsys(struct core_component *c)
-{
-	int ret;
-
-	if (!strcmp(c->name, "cdev")) {
-		most_cdev.mod = c->mod;
-		ret = configfs_register_subsystem(&most_cdev.subsys);
-	} else if (!strcmp(c->name, "net")) {
-		most_net.mod = c->mod;
-		ret = configfs_register_subsystem(&most_net.subsys);
-	} else if (!strcmp(c->name, "video")) {
-		most_video.mod = c->mod;
-		ret = configfs_register_subsystem(&most_video.subsys);
-	} else if (!strcmp(c->name, "sound")) {
-		most_sound_subsys.mod = c->mod;
-		ret = configfs_register_subsystem(&most_sound_subsys.subsys);
-	} else {
-		return -ENODEV;
-	}
-
-	if (ret) {
-		pr_err("Error %d while registering subsystem %s\n",
-		       ret, c->name);
-	}
-	return ret;
-}
-EXPORT_SYMBOL_GPL(most_register_configfs_subsys);
-
-void most_interface_register_notify(const char *mdev)
-{
-	bool register_snd_card = false;
-	struct mdev_link *mdev_link;
-
-	list_for_each_entry(mdev_link, &mdev_link_list, list) {
-		if (!strcmp(mdev_link->device, mdev)) {
-			set_config_and_add_link(mdev_link);
-			if (!strcmp(mdev_link->comp, "sound"))
-				register_snd_card = true;
-		}
-	}
-	if (register_snd_card)
-		most_cfg_complete("sound");
-}
-
-void most_deregister_configfs_subsys(struct core_component *c)
-{
-	if (!strcmp(c->name, "cdev"))
-		configfs_unregister_subsystem(&most_cdev.subsys);
-	else if (!strcmp(c->name, "net"))
-		configfs_unregister_subsystem(&most_net.subsys);
-	else if (!strcmp(c->name, "video"))
-		configfs_unregister_subsystem(&most_video.subsys);
-	else if (!strcmp(c->name, "sound"))
-		configfs_unregister_subsystem(&most_sound_subsys.subsys);
-}
-EXPORT_SYMBOL_GPL(most_deregister_configfs_subsys);
-
-int __init configfs_init(void)
-{
-	config_group_init(&most_cdev.subsys.su_group);
-	mutex_init(&most_cdev.subsys.su_mutex);
-
-	config_group_init(&most_net.subsys.su_group);
-	mutex_init(&most_net.subsys.su_mutex);
-
-	config_group_init(&most_video.subsys.su_group);
-	mutex_init(&most_video.subsys.su_mutex);
-
-	config_group_init(&most_sound_subsys.subsys.su_group);
-	mutex_init(&most_sound_subsys.subsys.su_mutex);
-
-	INIT_LIST_HEAD(&most_sound_subsys.soundcard_list);
-	INIT_LIST_HEAD(&mdev_link_list);
-
-	return 0;
-}
diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
deleted file mode 100644
index e32030c..0000000
--- a/drivers/staging/most/core.c
+++ /dev/null
@@ -1,1523 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * core.c - Implementation of core module of MOST Linux driver stack
- *
- * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co. KG
- */
-
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
-#include <linux/module.h>
-#include <linux/fs.h>
-#include <linux/slab.h>
-#include <linux/init.h>
-#include <linux/device.h>
-#include <linux/list.h>
-#include <linux/poll.h>
-#include <linux/wait.h>
-#include <linux/kobject.h>
-#include <linux/mutex.h>
-#include <linux/completion.h>
-#include <linux/sysfs.h>
-#include <linux/kthread.h>
-#include <linux/dma-mapping.h>
-#include <linux/idr.h>
-#include <most/most.h>
-
-#define MAX_CHANNELS	64
-#define STRING_SIZE	80
-
-static struct ida mdev_id;
-static int dummy_num_buffers;
-
-static struct mostcore {
-	struct device dev;
-	struct device_driver drv;
-	struct bus_type bus;
-	struct list_head comp_list;
-} mc;
-
-#define to_driver(d) container_of(d, struct mostcore, drv)
-
-struct pipe {
-	struct core_component *comp;
-	int refs;
-	int num_buffers;
-};
-
-struct most_channel {
-	struct device dev;
-	struct completion cleanup;
-	atomic_t mbo_ref;
-	atomic_t mbo_nq_level;
-	u16 channel_id;
-	char name[STRING_SIZE];
-	bool is_poisoned;
-	struct mutex start_mutex; /* channel activation synchronization */
-	struct mutex nq_mutex; /* nq thread synchronization */
-	int is_starving;
-	struct most_interface *iface;
-	struct most_channel_config cfg;
-	bool keep_mbo;
-	bool enqueue_halt;
-	struct list_head fifo;
-	spinlock_t fifo_lock; /* fifo access synchronization */
-	struct list_head halt_fifo;
-	struct list_head list;
-	struct pipe pipe0;
-	struct pipe pipe1;
-	struct list_head trash_fifo;
-	struct task_struct *hdm_enqueue_task;
-	wait_queue_head_t hdm_fifo_wq;
-
-};
-
-#define to_channel(d) container_of(d, struct most_channel, dev)
-
-struct interface_private {
-	int dev_id;
-	char name[STRING_SIZE];
-	struct most_channel *channel[MAX_CHANNELS];
-	struct list_head channel_list;
-};
-
-static const struct {
-	int most_ch_data_type;
-	const char *name;
-} ch_data_type[] = {
-	{ MOST_CH_CONTROL, "control" },
-	{ MOST_CH_ASYNC, "async" },
-	{ MOST_CH_SYNC, "sync" },
-	{ MOST_CH_ISOC, "isoc"},
-	{ MOST_CH_ISOC, "isoc_avp"},
-};
-
-/**
- * list_pop_mbo - retrieves the first MBO of the list and removes it
- * @ptr: the list head to grab the MBO from.
- */
-#define list_pop_mbo(ptr)						\
-({									\
-	struct mbo *_mbo = list_first_entry(ptr, struct mbo, list);	\
-	list_del(&_mbo->list);						\
-	_mbo;								\
-})
-
-/**
- * most_free_mbo_coherent - free an MBO and its coherent buffer
- * @mbo: most buffer
- */
-static void most_free_mbo_coherent(struct mbo *mbo)
-{
-	struct most_channel *c = mbo->context;
-	u16 const coherent_buf_size = c->cfg.buffer_size + c->cfg.extra_len;
-
-	if (c->iface->dma_free)
-		c->iface->dma_free(mbo, coherent_buf_size);
-	else
-		kfree(mbo->virt_address);
-	kfree(mbo);
-	if (atomic_sub_and_test(1, &c->mbo_ref))
-		complete(&c->cleanup);
-}
-
-/**
- * flush_channel_fifos - clear the channel fifos
- * @c: pointer to channel object
- */
-static void flush_channel_fifos(struct most_channel *c)
-{
-	unsigned long flags, hf_flags;
-	struct mbo *mbo, *tmp;
-
-	if (list_empty(&c->fifo) && list_empty(&c->halt_fifo))
-		return;
-
-	spin_lock_irqsave(&c->fifo_lock, flags);
-	list_for_each_entry_safe(mbo, tmp, &c->fifo, list) {
-		list_del(&mbo->list);
-		spin_unlock_irqrestore(&c->fifo_lock, flags);
-		most_free_mbo_coherent(mbo);
-		spin_lock_irqsave(&c->fifo_lock, flags);
-	}
-	spin_unlock_irqrestore(&c->fifo_lock, flags);
-
-	spin_lock_irqsave(&c->fifo_lock, hf_flags);
-	list_for_each_entry_safe(mbo, tmp, &c->halt_fifo, list) {
-		list_del(&mbo->list);
-		spin_unlock_irqrestore(&c->fifo_lock, hf_flags);
-		most_free_mbo_coherent(mbo);
-		spin_lock_irqsave(&c->fifo_lock, hf_flags);
-	}
-	spin_unlock_irqrestore(&c->fifo_lock, hf_flags);
-
-	if (unlikely((!list_empty(&c->fifo) || !list_empty(&c->halt_fifo))))
-		pr_info("WARN: fifo | trash fifo not empty\n");
-}
-
-/**
- * flush_trash_fifo - clear the trash fifo
- * @c: pointer to channel object
- */
-static int flush_trash_fifo(struct most_channel *c)
-{
-	struct mbo *mbo, *tmp;
-	unsigned long flags;
-
-	spin_lock_irqsave(&c->fifo_lock, flags);
-	list_for_each_entry_safe(mbo, tmp, &c->trash_fifo, list) {
-		list_del(&mbo->list);
-		spin_unlock_irqrestore(&c->fifo_lock, flags);
-		most_free_mbo_coherent(mbo);
-		spin_lock_irqsave(&c->fifo_lock, flags);
-	}
-	spin_unlock_irqrestore(&c->fifo_lock, flags);
-	return 0;
-}
-
-static ssize_t available_directions_show(struct device *dev,
-					 struct device_attribute *attr,
-					 char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-	unsigned int i = c->channel_id;
-
-	strcpy(buf, "");
-	if (c->iface->channel_vector[i].direction & MOST_CH_RX)
-		strcat(buf, "rx ");
-	if (c->iface->channel_vector[i].direction & MOST_CH_TX)
-		strcat(buf, "tx ");
-	strcat(buf, "\n");
-	return strlen(buf);
-}
-
-static ssize_t available_datatypes_show(struct device *dev,
-					struct device_attribute *attr,
-					char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-	unsigned int i = c->channel_id;
-
-	strcpy(buf, "");
-	if (c->iface->channel_vector[i].data_type & MOST_CH_CONTROL)
-		strcat(buf, "control ");
-	if (c->iface->channel_vector[i].data_type & MOST_CH_ASYNC)
-		strcat(buf, "async ");
-	if (c->iface->channel_vector[i].data_type & MOST_CH_SYNC)
-		strcat(buf, "sync ");
-	if (c->iface->channel_vector[i].data_type & MOST_CH_ISOC)
-		strcat(buf, "isoc ");
-	strcat(buf, "\n");
-	return strlen(buf);
-}
-
-static ssize_t number_of_packet_buffers_show(struct device *dev,
-					     struct device_attribute *attr,
-					     char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-	unsigned int i = c->channel_id;
-
-	return snprintf(buf, PAGE_SIZE, "%d\n",
-			c->iface->channel_vector[i].num_buffers_packet);
-}
-
-static ssize_t number_of_stream_buffers_show(struct device *dev,
-					     struct device_attribute *attr,
-					     char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-	unsigned int i = c->channel_id;
-
-	return snprintf(buf, PAGE_SIZE, "%d\n",
-			c->iface->channel_vector[i].num_buffers_streaming);
-}
-
-static ssize_t size_of_packet_buffer_show(struct device *dev,
-					  struct device_attribute *attr,
-					  char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-	unsigned int i = c->channel_id;
-
-	return snprintf(buf, PAGE_SIZE, "%d\n",
-			c->iface->channel_vector[i].buffer_size_packet);
-}
-
-static ssize_t size_of_stream_buffer_show(struct device *dev,
-					  struct device_attribute *attr,
-					  char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-	unsigned int i = c->channel_id;
-
-	return snprintf(buf, PAGE_SIZE, "%d\n",
-			c->iface->channel_vector[i].buffer_size_streaming);
-}
-
-static ssize_t channel_starving_show(struct device *dev,
-				     struct device_attribute *attr,
-				     char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-
-	return snprintf(buf, PAGE_SIZE, "%d\n", c->is_starving);
-}
-
-static ssize_t set_number_of_buffers_show(struct device *dev,
-					  struct device_attribute *attr,
-					  char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-
-	return snprintf(buf, PAGE_SIZE, "%d\n", c->cfg.num_buffers);
-}
-
-static ssize_t set_buffer_size_show(struct device *dev,
-				    struct device_attribute *attr,
-				    char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-
-	return snprintf(buf, PAGE_SIZE, "%d\n", c->cfg.buffer_size);
-}
-
-static ssize_t set_direction_show(struct device *dev,
-				  struct device_attribute *attr,
-				  char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-
-	if (c->cfg.direction & MOST_CH_TX)
-		return snprintf(buf, PAGE_SIZE, "tx\n");
-	else if (c->cfg.direction & MOST_CH_RX)
-		return snprintf(buf, PAGE_SIZE, "rx\n");
-	return snprintf(buf, PAGE_SIZE, "unconfigured\n");
-}
-
-static ssize_t set_datatype_show(struct device *dev,
-				 struct device_attribute *attr,
-				 char *buf)
-{
-	int i;
-	struct most_channel *c = to_channel(dev);
-
-	for (i = 0; i < ARRAY_SIZE(ch_data_type); i++) {
-		if (c->cfg.data_type & ch_data_type[i].most_ch_data_type)
-			return snprintf(buf, PAGE_SIZE, "%s",
-					ch_data_type[i].name);
-	}
-	return snprintf(buf, PAGE_SIZE, "unconfigured\n");
-}
-
-static ssize_t set_subbuffer_size_show(struct device *dev,
-				       struct device_attribute *attr,
-				       char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-
-	return snprintf(buf, PAGE_SIZE, "%d\n", c->cfg.subbuffer_size);
-}
-
-static ssize_t set_packets_per_xact_show(struct device *dev,
-					 struct device_attribute *attr,
-					 char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-
-	return snprintf(buf, PAGE_SIZE, "%d\n", c->cfg.packets_per_xact);
-}
-
-static ssize_t set_dbr_size_show(struct device *dev,
-				 struct device_attribute *attr, char *buf)
-{
-	struct most_channel *c = to_channel(dev);
-
-	return snprintf(buf, PAGE_SIZE, "%d\n", c->cfg.dbr_size);
-}
-
-#define to_dev_attr(a) container_of(a, struct device_attribute, attr)
-static umode_t channel_attr_is_visible(struct kobject *kobj,
-				       struct attribute *attr, int index)
-{
-	struct device_attribute *dev_attr = to_dev_attr(attr);
-	struct device *dev = kobj_to_dev(kobj);
-	struct most_channel *c = to_channel(dev);
-
-	if (!strcmp(dev_attr->attr.name, "set_dbr_size") &&
-	    (c->iface->interface != ITYPE_MEDIALB_DIM2))
-		return 0;
-	if (!strcmp(dev_attr->attr.name, "set_packets_per_xact") &&
-	    (c->iface->interface != ITYPE_USB))
-		return 0;
-
-	return attr->mode;
-}
-
-#define DEV_ATTR(_name)  (&dev_attr_##_name.attr)
-
-static DEVICE_ATTR_RO(available_directions);
-static DEVICE_ATTR_RO(available_datatypes);
-static DEVICE_ATTR_RO(number_of_packet_buffers);
-static DEVICE_ATTR_RO(number_of_stream_buffers);
-static DEVICE_ATTR_RO(size_of_stream_buffer);
-static DEVICE_ATTR_RO(size_of_packet_buffer);
-static DEVICE_ATTR_RO(channel_starving);
-static DEVICE_ATTR_RO(set_buffer_size);
-static DEVICE_ATTR_RO(set_number_of_buffers);
-static DEVICE_ATTR_RO(set_direction);
-static DEVICE_ATTR_RO(set_datatype);
-static DEVICE_ATTR_RO(set_subbuffer_size);
-static DEVICE_ATTR_RO(set_packets_per_xact);
-static DEVICE_ATTR_RO(set_dbr_size);
-
-static struct attribute *channel_attrs[] = {
-	DEV_ATTR(available_directions),
-	DEV_ATTR(available_datatypes),
-	DEV_ATTR(number_of_packet_buffers),
-	DEV_ATTR(number_of_stream_buffers),
-	DEV_ATTR(size_of_stream_buffer),
-	DEV_ATTR(size_of_packet_buffer),
-	DEV_ATTR(channel_starving),
-	DEV_ATTR(set_buffer_size),
-	DEV_ATTR(set_number_of_buffers),
-	DEV_ATTR(set_direction),
-	DEV_ATTR(set_datatype),
-	DEV_ATTR(set_subbuffer_size),
-	DEV_ATTR(set_packets_per_xact),
-	DEV_ATTR(set_dbr_size),
-	NULL,
-};
-
-static struct attribute_group channel_attr_group = {
-	.attrs = channel_attrs,
-	.is_visible = channel_attr_is_visible,
-};
-
-static const struct attribute_group *channel_attr_groups[] = {
-	&channel_attr_group,
-	NULL,
-};
-
-static ssize_t description_show(struct device *dev,
-				struct device_attribute *attr,
-				char *buf)
-{
-	struct most_interface *iface = to_most_interface(dev);
-
-	return snprintf(buf, PAGE_SIZE, "%s\n", iface->description);
-}
-
-static ssize_t interface_show(struct device *dev,
-			      struct device_attribute *attr,
-			      char *buf)
-{
-	struct most_interface *iface = to_most_interface(dev);
-
-	switch (iface->interface) {
-	case ITYPE_LOOPBACK:
-		return snprintf(buf, PAGE_SIZE, "loopback\n");
-	case ITYPE_I2C:
-		return snprintf(buf, PAGE_SIZE, "i2c\n");
-	case ITYPE_I2S:
-		return snprintf(buf, PAGE_SIZE, "i2s\n");
-	case ITYPE_TSI:
-		return snprintf(buf, PAGE_SIZE, "tsi\n");
-	case ITYPE_HBI:
-		return snprintf(buf, PAGE_SIZE, "hbi\n");
-	case ITYPE_MEDIALB_DIM:
-		return snprintf(buf, PAGE_SIZE, "mlb_dim\n");
-	case ITYPE_MEDIALB_DIM2:
-		return snprintf(buf, PAGE_SIZE, "mlb_dim2\n");
-	case ITYPE_USB:
-		return snprintf(buf, PAGE_SIZE, "usb\n");
-	case ITYPE_PCIE:
-		return snprintf(buf, PAGE_SIZE, "pcie\n");
-	}
-	return snprintf(buf, PAGE_SIZE, "unknown\n");
-}
-
-static DEVICE_ATTR_RO(description);
-static DEVICE_ATTR_RO(interface);
-
-static struct attribute *interface_attrs[] = {
-	DEV_ATTR(description),
-	DEV_ATTR(interface),
-	NULL,
-};
-
-static struct attribute_group interface_attr_group = {
-	.attrs = interface_attrs,
-};
-
-static const struct attribute_group *interface_attr_groups[] = {
-	&interface_attr_group,
-	NULL,
-};
-
-static struct core_component *match_component(char *name)
-{
-	struct core_component *comp;
-
-	list_for_each_entry(comp, &mc.comp_list, list) {
-		if (!strcmp(comp->name, name))
-			return comp;
-	}
-	return NULL;
-}
-
-struct show_links_data {
-	int offs;
-	char *buf;
-};
-
-static int print_links(struct device *dev, void *data)
-{
-	struct show_links_data *d = data;
-	int offs = d->offs;
-	char *buf = d->buf;
-	struct most_channel *c;
-	struct most_interface *iface = to_most_interface(dev);
-
-	list_for_each_entry(c, &iface->p->channel_list, list) {
-		if (c->pipe0.comp) {
-			offs += snprintf(buf + offs,
-					 PAGE_SIZE - offs,
-					 "%s:%s:%s\n",
-					 c->pipe0.comp->name,
-					 dev_name(&iface->dev),
-					 dev_name(&c->dev));
-		}
-		if (c->pipe1.comp) {
-			offs += snprintf(buf + offs,
-					 PAGE_SIZE - offs,
-					 "%s:%s:%s\n",
-					 c->pipe1.comp->name,
-					 dev_name(&iface->dev),
-					 dev_name(&c->dev));
-		}
-	}
-	d->offs = offs;
-	return 0;
-}
-
-static ssize_t links_show(struct device_driver *drv, char *buf)
-{
-	struct show_links_data d = { .buf = buf };
-
-	bus_for_each_dev(&mc.bus, NULL, &d, print_links);
-	return d.offs;
-}
-
-static ssize_t components_show(struct device_driver *drv, char *buf)
-{
-	struct core_component *comp;
-	int offs = 0;
-
-	list_for_each_entry(comp, &mc.comp_list, list) {
-		offs += snprintf(buf + offs, PAGE_SIZE - offs, "%s\n",
-				 comp->name);
-	}
-	return offs;
-}
-
-/**
- * get_channel - get pointer to channel
- * @mdev: name of the device interface
- * @mdev_ch: name of channel
- */
-static struct most_channel *get_channel(char *mdev, char *mdev_ch)
-{
-	struct device *dev = NULL;
-	struct most_interface *iface;
-	struct most_channel *c, *tmp;
-
-	dev = bus_find_device_by_name(&mc.bus, NULL, mdev);
-	if (!dev)
-		return NULL;
-	iface = to_most_interface(dev);
-	list_for_each_entry_safe(c, tmp, &iface->p->channel_list, list) {
-		if (!strcmp(dev_name(&c->dev), mdev_ch))
-			return c;
-	}
-	return NULL;
-}
-
-static
-inline int link_channel_to_component(struct most_channel *c,
-				     struct core_component *comp,
-				     char *name,
-				     char *comp_param)
-{
-	int ret;
-	struct core_component **comp_ptr;
-
-	if (!c->pipe0.comp)
-		comp_ptr = &c->pipe0.comp;
-	else if (!c->pipe1.comp)
-		comp_ptr = &c->pipe1.comp;
-	else
-		return -ENOSPC;
-
-	*comp_ptr = comp;
-	ret = comp->probe_channel(c->iface, c->channel_id, &c->cfg, name,
-				  comp_param);
-	if (ret) {
-		*comp_ptr = NULL;
-		return ret;
-	}
-	return 0;
-}
-
-int most_set_cfg_buffer_size(char *mdev, char *mdev_ch, u16 val)
-{
-	struct most_channel *c = get_channel(mdev, mdev_ch);
-
-	if (!c)
-		return -ENODEV;
-	c->cfg.buffer_size = val;
-	return 0;
-}
-
-int most_set_cfg_subbuffer_size(char *mdev, char *mdev_ch, u16 val)
-{
-	struct most_channel *c = get_channel(mdev, mdev_ch);
-
-	if (!c)
-		return -ENODEV;
-	c->cfg.subbuffer_size = val;
-	return 0;
-}
-
-int most_set_cfg_dbr_size(char *mdev, char *mdev_ch, u16 val)
-{
-	struct most_channel *c = get_channel(mdev, mdev_ch);
-
-	if (!c)
-		return -ENODEV;
-	c->cfg.dbr_size = val;
-	return 0;
-}
-
-int most_set_cfg_num_buffers(char *mdev, char *mdev_ch, u16 val)
-{
-	struct most_channel *c = get_channel(mdev, mdev_ch);
-
-	if (!c)
-		return -ENODEV;
-	c->cfg.num_buffers = val;
-	return 0;
-}
-
-int most_set_cfg_datatype(char *mdev, char *mdev_ch, char *buf)
-{
-	int i;
-	struct most_channel *c = get_channel(mdev, mdev_ch);
-
-	if (!c)
-		return -ENODEV;
-	for (i = 0; i < ARRAY_SIZE(ch_data_type); i++) {
-		if (!strcmp(buf, ch_data_type[i].name)) {
-			c->cfg.data_type = ch_data_type[i].most_ch_data_type;
-			break;
-		}
-	}
-
-	if (i == ARRAY_SIZE(ch_data_type))
-		pr_info("WARN: invalid attribute settings\n");
-	return 0;
-}
-
-int most_set_cfg_direction(char *mdev, char *mdev_ch, char *buf)
-{
-	struct most_channel *c = get_channel(mdev, mdev_ch);
-
-	if (!c)
-		return -ENODEV;
-	if (!strcmp(buf, "dir_rx")) {
-		c->cfg.direction = MOST_CH_RX;
-	} else if (!strcmp(buf, "rx")) {
-		c->cfg.direction = MOST_CH_RX;
-	} else if (!strcmp(buf, "dir_tx")) {
-		c->cfg.direction = MOST_CH_TX;
-	} else if (!strcmp(buf, "tx")) {
-		c->cfg.direction = MOST_CH_TX;
-	} else {
-		pr_info("Invalid direction\n");
-		return -ENODATA;
-	}
-	return 0;
-}
-
-int most_set_cfg_packets_xact(char *mdev, char *mdev_ch, u16 val)
-{
-	struct most_channel *c = get_channel(mdev, mdev_ch);
-
-	if (!c)
-		return -ENODEV;
-	c->cfg.packets_per_xact = val;
-	return 0;
-}
-
-int most_cfg_complete(char *comp_name)
-{
-	struct core_component *comp;
-
-	comp = match_component(comp_name);
-	if (!comp)
-		return -ENODEV;
-
-	return comp->cfg_complete();
-}
-
-int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
-		  char *comp_param)
-{
-	struct most_channel *c = get_channel(mdev, mdev_ch);
-	struct core_component *comp = match_component(comp_name);
-
-	if (!c || !comp)
-		return -ENODEV;
-
-	return link_channel_to_component(c, comp, link_name, comp_param);
-}
-
-int most_remove_link(char *mdev, char *mdev_ch, char *comp_name)
-{
-	struct most_channel *c;
-	struct core_component *comp;
-
-	comp = match_component(comp_name);
-	if (!comp)
-		return -ENODEV;
-	c = get_channel(mdev, mdev_ch);
-	if (!c)
-		return -ENODEV;
-
-	if (comp->disconnect_channel(c->iface, c->channel_id))
-		return -EIO;
-	if (c->pipe0.comp == comp)
-		c->pipe0.comp = NULL;
-	if (c->pipe1.comp == comp)
-		c->pipe1.comp = NULL;
-	return 0;
-}
-
-#define DRV_ATTR(_name)  (&driver_attr_##_name.attr)
-
-static DRIVER_ATTR_RO(links);
-static DRIVER_ATTR_RO(components);
-
-static struct attribute *mc_attrs[] = {
-	DRV_ATTR(links),
-	DRV_ATTR(components),
-	NULL,
-};
-
-static struct attribute_group mc_attr_group = {
-	.attrs = mc_attrs,
-};
-
-static const struct attribute_group *mc_attr_groups[] = {
-	&mc_attr_group,
-	NULL,
-};
-
-static int most_match(struct device *dev, struct device_driver *drv)
-{
-	if (!strcmp(dev_name(dev), "most"))
-		return 0;
-	else
-		return 1;
-}
-
-static inline void trash_mbo(struct mbo *mbo)
-{
-	unsigned long flags;
-	struct most_channel *c = mbo->context;
-
-	spin_lock_irqsave(&c->fifo_lock, flags);
-	list_add(&mbo->list, &c->trash_fifo);
-	spin_unlock_irqrestore(&c->fifo_lock, flags);
-}
-
-static bool hdm_mbo_ready(struct most_channel *c)
-{
-	bool empty;
-
-	if (c->enqueue_halt)
-		return false;
-
-	spin_lock_irq(&c->fifo_lock);
-	empty = list_empty(&c->halt_fifo);
-	spin_unlock_irq(&c->fifo_lock);
-
-	return !empty;
-}
-
-static void nq_hdm_mbo(struct mbo *mbo)
-{
-	unsigned long flags;
-	struct most_channel *c = mbo->context;
-
-	spin_lock_irqsave(&c->fifo_lock, flags);
-	list_add_tail(&mbo->list, &c->halt_fifo);
-	spin_unlock_irqrestore(&c->fifo_lock, flags);
-	wake_up_interruptible(&c->hdm_fifo_wq);
-}
-
-static int hdm_enqueue_thread(void *data)
-{
-	struct most_channel *c = data;
-	struct mbo *mbo;
-	int ret;
-	typeof(c->iface->enqueue) enqueue = c->iface->enqueue;
-
-	while (likely(!kthread_should_stop())) {
-		wait_event_interruptible(c->hdm_fifo_wq,
-					 hdm_mbo_ready(c) ||
-					 kthread_should_stop());
-
-		mutex_lock(&c->nq_mutex);
-		spin_lock_irq(&c->fifo_lock);
-		if (unlikely(c->enqueue_halt || list_empty(&c->halt_fifo))) {
-			spin_unlock_irq(&c->fifo_lock);
-			mutex_unlock(&c->nq_mutex);
-			continue;
-		}
-
-		mbo = list_pop_mbo(&c->halt_fifo);
-		spin_unlock_irq(&c->fifo_lock);
-
-		if (c->cfg.direction == MOST_CH_RX)
-			mbo->buffer_length = c->cfg.buffer_size;
-
-		ret = enqueue(mbo->ifp, mbo->hdm_channel_id, mbo);
-		mutex_unlock(&c->nq_mutex);
-
-		if (unlikely(ret)) {
-			pr_err("hdm enqueue failed\n");
-			nq_hdm_mbo(mbo);
-			c->hdm_enqueue_task = NULL;
-			return 0;
-		}
-	}
-
-	return 0;
-}
-
-static int run_enqueue_thread(struct most_channel *c, int channel_id)
-{
-	struct task_struct *task =
-		kthread_run(hdm_enqueue_thread, c, "hdm_fifo_%d",
-			    channel_id);
-
-	if (IS_ERR(task))
-		return PTR_ERR(task);
-
-	c->hdm_enqueue_task = task;
-	return 0;
-}
-
-/**
- * arm_mbo - recycle MBO for further usage
- * @mbo: most buffer
- *
- * This puts an MBO back to the list to have it ready for up coming
- * tx transactions.
- *
- * In case the MBO belongs to a channel that recently has been
- * poisoned, the MBO is scheduled to be trashed.
- * Calls the completion handler of an attached component.
- */
-static void arm_mbo(struct mbo *mbo)
-{
-	unsigned long flags;
-	struct most_channel *c;
-
-	c = mbo->context;
-
-	if (c->is_poisoned) {
-		trash_mbo(mbo);
-		return;
-	}
-
-	spin_lock_irqsave(&c->fifo_lock, flags);
-	++*mbo->num_buffers_ptr;
-	list_add_tail(&mbo->list, &c->fifo);
-	spin_unlock_irqrestore(&c->fifo_lock, flags);
-
-	if (c->pipe0.refs && c->pipe0.comp->tx_completion)
-		c->pipe0.comp->tx_completion(c->iface, c->channel_id);
-
-	if (c->pipe1.refs && c->pipe1.comp->tx_completion)
-		c->pipe1.comp->tx_completion(c->iface, c->channel_id);
-}
-
-/**
- * arm_mbo_chain - helper function that arms an MBO chain for the HDM
- * @c: pointer to interface channel
- * @dir: direction of the channel
- * @compl: pointer to completion function
- *
- * This allocates buffer objects including the containing DMA coherent
- * buffer and puts them in the fifo.
- * Buffers of Rx channels are put in the kthread fifo, hence immediately
- * submitted to the HDM.
- *
- * Returns the number of allocated and enqueued MBOs.
- */
-static int arm_mbo_chain(struct most_channel *c, int dir,
-			 void (*compl)(struct mbo *))
-{
-	unsigned int i;
-	struct mbo *mbo;
-	unsigned long flags;
-	u32 coherent_buf_size = c->cfg.buffer_size + c->cfg.extra_len;
-
-	atomic_set(&c->mbo_nq_level, 0);
-
-	for (i = 0; i < c->cfg.num_buffers; i++) {
-		mbo = kzalloc(sizeof(*mbo), GFP_KERNEL);
-		if (!mbo)
-			goto flush_fifos;
-
-		mbo->context = c;
-		mbo->ifp = c->iface;
-		mbo->hdm_channel_id = c->channel_id;
-		if (c->iface->dma_alloc) {
-			mbo->virt_address =
-				c->iface->dma_alloc(mbo, coherent_buf_size);
-		} else {
-			mbo->virt_address =
-				kzalloc(coherent_buf_size, GFP_KERNEL);
-		}
-		if (!mbo->virt_address)
-			goto release_mbo;
-
-		mbo->complete = compl;
-		mbo->num_buffers_ptr = &dummy_num_buffers;
-		if (dir == MOST_CH_RX) {
-			nq_hdm_mbo(mbo);
-			atomic_inc(&c->mbo_nq_level);
-		} else {
-			spin_lock_irqsave(&c->fifo_lock, flags);
-			list_add_tail(&mbo->list, &c->fifo);
-			spin_unlock_irqrestore(&c->fifo_lock, flags);
-		}
-	}
-	return c->cfg.num_buffers;
-
-release_mbo:
-	kfree(mbo);
-
-flush_fifos:
-	flush_channel_fifos(c);
-	return 0;
-}
-
-/**
- * most_submit_mbo - submits an MBO to fifo
- * @mbo: most buffer
- */
-void most_submit_mbo(struct mbo *mbo)
-{
-	if (WARN_ONCE(!mbo || !mbo->context,
-		      "bad mbo or missing channel reference\n"))
-		return;
-
-	nq_hdm_mbo(mbo);
-}
-EXPORT_SYMBOL_GPL(most_submit_mbo);
-
-/**
- * most_write_completion - write completion handler
- * @mbo: most buffer
- *
- * This recycles the MBO for further usage. In case the channel has been
- * poisoned, the MBO is scheduled to be trashed.
- */
-static void most_write_completion(struct mbo *mbo)
-{
-	struct most_channel *c;
-
-	c = mbo->context;
-	if (mbo->status == MBO_E_INVAL)
-		pr_info("WARN: Tx MBO status: invalid\n");
-	if (unlikely(c->is_poisoned || (mbo->status == MBO_E_CLOSE)))
-		trash_mbo(mbo);
-	else
-		arm_mbo(mbo);
-}
-
-int channel_has_mbo(struct most_interface *iface, int id,
-		    struct core_component *comp)
-{
-	struct most_channel *c = iface->p->channel[id];
-	unsigned long flags;
-	int empty;
-
-	if (unlikely(!c))
-		return -EINVAL;
-
-	if (c->pipe0.refs && c->pipe1.refs &&
-	    ((comp == c->pipe0.comp && c->pipe0.num_buffers <= 0) ||
-	     (comp == c->pipe1.comp && c->pipe1.num_buffers <= 0)))
-		return 0;
-
-	spin_lock_irqsave(&c->fifo_lock, flags);
-	empty = list_empty(&c->fifo);
-	spin_unlock_irqrestore(&c->fifo_lock, flags);
-	return !empty;
-}
-EXPORT_SYMBOL_GPL(channel_has_mbo);
-
-/**
- * most_get_mbo - get pointer to an MBO of pool
- * @iface: pointer to interface instance
- * @id: channel ID
- * @comp: driver component
- *
- * This attempts to get a free buffer out of the channel fifo.
- * Returns a pointer to MBO on success or NULL otherwise.
- */
-struct mbo *most_get_mbo(struct most_interface *iface, int id,
-			 struct core_component *comp)
-{
-	struct mbo *mbo;
-	struct most_channel *c;
-	unsigned long flags;
-	int *num_buffers_ptr;
-
-	c = iface->p->channel[id];
-	if (unlikely(!c))
-		return NULL;
-
-	if (c->pipe0.refs && c->pipe1.refs &&
-	    ((comp == c->pipe0.comp && c->pipe0.num_buffers <= 0) ||
-	     (comp == c->pipe1.comp && c->pipe1.num_buffers <= 0)))
-		return NULL;
-
-	if (comp == c->pipe0.comp)
-		num_buffers_ptr = &c->pipe0.num_buffers;
-	else if (comp == c->pipe1.comp)
-		num_buffers_ptr = &c->pipe1.num_buffers;
-	else
-		num_buffers_ptr = &dummy_num_buffers;
-
-	spin_lock_irqsave(&c->fifo_lock, flags);
-	if (list_empty(&c->fifo)) {
-		spin_unlock_irqrestore(&c->fifo_lock, flags);
-		return NULL;
-	}
-	mbo = list_pop_mbo(&c->fifo);
-	--*num_buffers_ptr;
-	spin_unlock_irqrestore(&c->fifo_lock, flags);
-
-	mbo->num_buffers_ptr = num_buffers_ptr;
-	mbo->buffer_length = c->cfg.buffer_size;
-	return mbo;
-}
-EXPORT_SYMBOL_GPL(most_get_mbo);
-
-/**
- * most_put_mbo - return buffer to pool
- * @mbo: most buffer
- */
-void most_put_mbo(struct mbo *mbo)
-{
-	struct most_channel *c = mbo->context;
-
-	if (c->cfg.direction == MOST_CH_TX) {
-		arm_mbo(mbo);
-		return;
-	}
-	nq_hdm_mbo(mbo);
-	atomic_inc(&c->mbo_nq_level);
-}
-EXPORT_SYMBOL_GPL(most_put_mbo);
-
-/**
- * most_read_completion - read completion handler
- * @mbo: most buffer
- *
- * This function is called by the HDM when data has been received from the
- * hardware and copied to the buffer of the MBO.
- *
- * In case the channel has been poisoned it puts the buffer in the trash queue.
- * Otherwise, it passes the buffer to an component for further processing.
- */
-static void most_read_completion(struct mbo *mbo)
-{
-	struct most_channel *c = mbo->context;
-
-	if (unlikely(c->is_poisoned || (mbo->status == MBO_E_CLOSE))) {
-		trash_mbo(mbo);
-		return;
-	}
-
-	if (mbo->status == MBO_E_INVAL) {
-		nq_hdm_mbo(mbo);
-		atomic_inc(&c->mbo_nq_level);
-		return;
-	}
-
-	if (atomic_sub_and_test(1, &c->mbo_nq_level))
-		c->is_starving = 1;
-
-	if (c->pipe0.refs && c->pipe0.comp->rx_completion &&
-	    c->pipe0.comp->rx_completion(mbo) == 0)
-		return;
-
-	if (c->pipe1.refs && c->pipe1.comp->rx_completion &&
-	    c->pipe1.comp->rx_completion(mbo) == 0)
-		return;
-
-	most_put_mbo(mbo);
-}
-
-/**
- * most_start_channel - prepares a channel for communication
- * @iface: pointer to interface instance
- * @id: channel ID
- * @comp: driver component
- *
- * This prepares the channel for usage. Cross-checks whether the
- * channel's been properly configured.
- *
- * Returns 0 on success or error code otherwise.
- */
-int most_start_channel(struct most_interface *iface, int id,
-		       struct core_component *comp)
-{
-	int num_buffer;
-	int ret;
-	struct most_channel *c = iface->p->channel[id];
-
-	if (unlikely(!c))
-		return -EINVAL;
-
-	mutex_lock(&c->start_mutex);
-	if (c->pipe0.refs + c->pipe1.refs > 0)
-		goto out; /* already started by another component */
-
-	if (!try_module_get(iface->mod)) {
-		pr_info("failed to acquire HDM lock\n");
-		mutex_unlock(&c->start_mutex);
-		return -ENOLCK;
-	}
-
-	c->cfg.extra_len = 0;
-	if (c->iface->configure(c->iface, c->channel_id, &c->cfg)) {
-		pr_info("channel configuration failed. Go check settings...\n");
-		ret = -EINVAL;
-		goto err_put_module;
-	}
-
-	init_waitqueue_head(&c->hdm_fifo_wq);
-
-	if (c->cfg.direction == MOST_CH_RX)
-		num_buffer = arm_mbo_chain(c, c->cfg.direction,
-					   most_read_completion);
-	else
-		num_buffer = arm_mbo_chain(c, c->cfg.direction,
-					   most_write_completion);
-	if (unlikely(!num_buffer)) {
-		ret = -ENOMEM;
-		goto err_put_module;
-	}
-
-	ret = run_enqueue_thread(c, id);
-	if (ret)
-		goto err_put_module;
-
-	c->is_starving = 0;
-	c->pipe0.num_buffers = c->cfg.num_buffers / 2;
-	c->pipe1.num_buffers = c->cfg.num_buffers - c->pipe0.num_buffers;
-	atomic_set(&c->mbo_ref, num_buffer);
-
-out:
-	if (comp == c->pipe0.comp)
-		c->pipe0.refs++;
-	if (comp == c->pipe1.comp)
-		c->pipe1.refs++;
-	mutex_unlock(&c->start_mutex);
-	return 0;
-
-err_put_module:
-	module_put(iface->mod);
-	mutex_unlock(&c->start_mutex);
-	return ret;
-}
-EXPORT_SYMBOL_GPL(most_start_channel);
-
-/**
- * most_stop_channel - stops a running channel
- * @iface: pointer to interface instance
- * @id: channel ID
- * @comp: driver component
- */
-int most_stop_channel(struct most_interface *iface, int id,
-		      struct core_component *comp)
-{
-	struct most_channel *c;
-
-	if (unlikely((!iface) || (id >= iface->num_channels) || (id < 0))) {
-		pr_err("Bad interface or index out of range\n");
-		return -EINVAL;
-	}
-	c = iface->p->channel[id];
-	if (unlikely(!c))
-		return -EINVAL;
-
-	mutex_lock(&c->start_mutex);
-	if (c->pipe0.refs + c->pipe1.refs >= 2)
-		goto out;
-
-	if (c->hdm_enqueue_task)
-		kthread_stop(c->hdm_enqueue_task);
-	c->hdm_enqueue_task = NULL;
-
-	if (iface->mod)
-		module_put(iface->mod);
-
-	c->is_poisoned = true;
-	if (c->iface->poison_channel(c->iface, c->channel_id)) {
-		pr_err("Cannot stop channel %d of mdev %s\n", c->channel_id,
-		       c->iface->description);
-		mutex_unlock(&c->start_mutex);
-		return -EAGAIN;
-	}
-	flush_trash_fifo(c);
-	flush_channel_fifos(c);
-
-#ifdef CMPL_INTERRUPTIBLE
-	if (wait_for_completion_interruptible(&c->cleanup)) {
-		pr_info("Interrupted while clean up ch %d\n", c->channel_id);
-		mutex_unlock(&c->start_mutex);
-		return -EINTR;
-	}
-#else
-	wait_for_completion(&c->cleanup);
-#endif
-	c->is_poisoned = false;
-
-out:
-	if (comp == c->pipe0.comp)
-		c->pipe0.refs--;
-	if (comp == c->pipe1.comp)
-		c->pipe1.refs--;
-	mutex_unlock(&c->start_mutex);
-	return 0;
-}
-EXPORT_SYMBOL_GPL(most_stop_channel);
-
-/**
- * most_register_component - registers a driver component with the core
- * @comp: driver component
- */
-int most_register_component(struct core_component *comp)
-{
-	if (!comp) {
-		pr_err("Bad component\n");
-		return -EINVAL;
-	}
-	list_add_tail(&comp->list, &mc.comp_list);
-	pr_info("registered new core component %s\n", comp->name);
-	return 0;
-}
-EXPORT_SYMBOL_GPL(most_register_component);
-
-static int disconnect_channels(struct device *dev, void *data)
-{
-	struct most_interface *iface;
-	struct most_channel *c, *tmp;
-	struct core_component *comp = data;
-
-	iface = to_most_interface(dev);
-	list_for_each_entry_safe(c, tmp, &iface->p->channel_list, list) {
-		if (c->pipe0.comp == comp || c->pipe1.comp == comp)
-			comp->disconnect_channel(c->iface, c->channel_id);
-		if (c->pipe0.comp == comp)
-			c->pipe0.comp = NULL;
-		if (c->pipe1.comp == comp)
-			c->pipe1.comp = NULL;
-	}
-	return 0;
-}
-
-/**
- * most_deregister_component - deregisters a driver component with the core
- * @comp: driver component
- */
-int most_deregister_component(struct core_component *comp)
-{
-	if (!comp) {
-		pr_err("Bad component\n");
-		return -EINVAL;
-	}
-
-	bus_for_each_dev(&mc.bus, NULL, comp, disconnect_channels);
-	list_del(&comp->list);
-	pr_info("deregistering component %s\n", comp->name);
-	return 0;
-}
-EXPORT_SYMBOL_GPL(most_deregister_component);
-
-static void release_interface(struct device *dev)
-{
-	pr_info("releasing interface dev %s...\n", dev_name(dev));
-}
-
-static void release_channel(struct device *dev)
-{
-	pr_info("releasing channel dev %s...\n", dev_name(dev));
-}
-
-/**
- * most_register_interface - registers an interface with core
- * @iface: device interface
- *
- * Allocates and initializes a new interface instance and all of its channels.
- * Returns a pointer to kobject or an error pointer.
- */
-int most_register_interface(struct most_interface *iface)
-{
-	unsigned int i;
-	int id;
-	struct most_channel *c;
-
-	if (!iface || !iface->enqueue || !iface->configure ||
-	    !iface->poison_channel || (iface->num_channels > MAX_CHANNELS)) {
-		pr_err("Bad interface or channel overflow\n");
-		return -EINVAL;
-	}
-
-	id = ida_simple_get(&mdev_id, 0, 0, GFP_KERNEL);
-	if (id < 0) {
-		pr_info("Failed to alloc mdev ID\n");
-		return id;
-	}
-
-	iface->p = kzalloc(sizeof(*iface->p), GFP_KERNEL);
-	if (!iface->p) {
-		ida_simple_remove(&mdev_id, id);
-		return -ENOMEM;
-	}
-
-	INIT_LIST_HEAD(&iface->p->channel_list);
-	iface->p->dev_id = id;
-	strscpy(iface->p->name, iface->description, sizeof(iface->p->name));
-	iface->dev.init_name = iface->p->name;
-	iface->dev.bus = &mc.bus;
-	iface->dev.parent = &mc.dev;
-	iface->dev.groups = interface_attr_groups;
-	iface->dev.release = release_interface;
-	if (device_register(&iface->dev)) {
-		pr_err("registering iface->dev failed\n");
-		kfree(iface->p);
-		ida_simple_remove(&mdev_id, id);
-		return -ENOMEM;
-	}
-
-	for (i = 0; i < iface->num_channels; i++) {
-		const char *name_suffix = iface->channel_vector[i].name_suffix;
-
-		c = kzalloc(sizeof(*c), GFP_KERNEL);
-		if (!c)
-			goto err_free_resources;
-		if (!name_suffix)
-			snprintf(c->name, STRING_SIZE, "ch%d", i);
-		else
-			snprintf(c->name, STRING_SIZE, "%s", name_suffix);
-		c->dev.init_name = c->name;
-		c->dev.parent = &iface->dev;
-		c->dev.groups = channel_attr_groups;
-		c->dev.release = release_channel;
-		iface->p->channel[i] = c;
-		c->is_starving = 0;
-		c->iface = iface;
-		c->channel_id = i;
-		c->keep_mbo = false;
-		c->enqueue_halt = false;
-		c->is_poisoned = false;
-		c->cfg.direction = 0;
-		c->cfg.data_type = 0;
-		c->cfg.num_buffers = 0;
-		c->cfg.buffer_size = 0;
-		c->cfg.subbuffer_size = 0;
-		c->cfg.packets_per_xact = 0;
-		spin_lock_init(&c->fifo_lock);
-		INIT_LIST_HEAD(&c->fifo);
-		INIT_LIST_HEAD(&c->trash_fifo);
-		INIT_LIST_HEAD(&c->halt_fifo);
-		init_completion(&c->cleanup);
-		atomic_set(&c->mbo_ref, 0);
-		mutex_init(&c->start_mutex);
-		mutex_init(&c->nq_mutex);
-		list_add_tail(&c->list, &iface->p->channel_list);
-		if (device_register(&c->dev)) {
-			pr_err("registering c->dev failed\n");
-			goto err_free_most_channel;
-		}
-	}
-	pr_info("registered new device mdev%d (%s)\n",
-		id, iface->description);
-	most_interface_register_notify(iface->description);
-	return 0;
-
-err_free_most_channel:
-	kfree(c);
-
-err_free_resources:
-	while (i > 0) {
-		c = iface->p->channel[--i];
-		device_unregister(&c->dev);
-		kfree(c);
-	}
-	kfree(iface->p);
-	device_unregister(&iface->dev);
-	ida_simple_remove(&mdev_id, id);
-	return -ENOMEM;
-}
-EXPORT_SYMBOL_GPL(most_register_interface);
-
-/**
- * most_deregister_interface - deregisters an interface with core
- * @iface: device interface
- *
- * Before removing an interface instance from the list, all running
- * channels are stopped and poisoned.
- */
-void most_deregister_interface(struct most_interface *iface)
-{
-	int i;
-	struct most_channel *c;
-
-	pr_info("deregistering device %s (%s)\n", dev_name(&iface->dev),
-		iface->description);
-	for (i = 0; i < iface->num_channels; i++) {
-		c = iface->p->channel[i];
-		if (c->pipe0.comp)
-			c->pipe0.comp->disconnect_channel(c->iface,
-							c->channel_id);
-		if (c->pipe1.comp)
-			c->pipe1.comp->disconnect_channel(c->iface,
-							c->channel_id);
-		c->pipe0.comp = NULL;
-		c->pipe1.comp = NULL;
-		list_del(&c->list);
-		device_unregister(&c->dev);
-		kfree(c);
-	}
-
-	ida_simple_remove(&mdev_id, iface->p->dev_id);
-	kfree(iface->p);
-	device_unregister(&iface->dev);
-}
-EXPORT_SYMBOL_GPL(most_deregister_interface);
-
-/**
- * most_stop_enqueue - prevents core from enqueueing MBOs
- * @iface: pointer to interface
- * @id: channel id
- *
- * This is called by an HDM that _cannot_ attend to its duties and
- * is imminent to get run over by the core. The core is not going to
- * enqueue any further packets unless the flagging HDM calls
- * most_resume enqueue().
- */
-void most_stop_enqueue(struct most_interface *iface, int id)
-{
-	struct most_channel *c = iface->p->channel[id];
-
-	if (!c)
-		return;
-
-	mutex_lock(&c->nq_mutex);
-	c->enqueue_halt = true;
-	mutex_unlock(&c->nq_mutex);
-}
-EXPORT_SYMBOL_GPL(most_stop_enqueue);
-
-/**
- * most_resume_enqueue - allow core to enqueue MBOs again
- * @iface: pointer to interface
- * @id: channel id
- *
- * This clears the enqueue halt flag and enqueues all MBOs currently
- * sitting in the wait fifo.
- */
-void most_resume_enqueue(struct most_interface *iface, int id)
-{
-	struct most_channel *c = iface->p->channel[id];
-
-	if (!c)
-		return;
-
-	mutex_lock(&c->nq_mutex);
-	c->enqueue_halt = false;
-	mutex_unlock(&c->nq_mutex);
-
-	wake_up_interruptible(&c->hdm_fifo_wq);
-}
-EXPORT_SYMBOL_GPL(most_resume_enqueue);
-
-static void release_most_sub(struct device *dev)
-{
-	pr_info("releasing most_subsystem\n");
-}
-
-static int __init most_init(void)
-{
-	int err;
-
-	pr_info("init()\n");
-	INIT_LIST_HEAD(&mc.comp_list);
-	ida_init(&mdev_id);
-
-	mc.bus.name = "most",
-	mc.bus.match = most_match,
-	mc.drv.name = "most_core",
-	mc.drv.bus = &mc.bus,
-	mc.drv.groups = mc_attr_groups;
-
-	err = bus_register(&mc.bus);
-	if (err) {
-		pr_info("Cannot register most bus\n");
-		return err;
-	}
-	err = driver_register(&mc.drv);
-	if (err) {
-		pr_info("Cannot register core driver\n");
-		goto err_unregister_bus;
-	}
-	mc.dev.init_name = "most_bus";
-	mc.dev.release = release_most_sub;
-	if (device_register(&mc.dev)) {
-		err = -ENOMEM;
-		goto err_unregister_driver;
-	}
-	configfs_init();
-	return 0;
-
-err_unregister_driver:
-	driver_unregister(&mc.drv);
-err_unregister_bus:
-	bus_unregister(&mc.bus);
-	return err;
-}
-
-static void __exit most_exit(void)
-{
-	pr_info("exit core module\n");
-	device_unregister(&mc.dev);
-	driver_unregister(&mc.drv);
-	bus_unregister(&mc.bus);
-	ida_destroy(&mdev_id);
-}
-
-module_init(most_init);
-module_exit(most_exit);
-MODULE_LICENSE("GPL");
-MODULE_AUTHOR("Christian Gromm <christian.gromm@microchip.com>");
-MODULE_DESCRIPTION("Core module of stacked MOST Linux driver");
diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 9eb10fc..10ff0cc 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -21,7 +21,7 @@
 #include <linux/sched.h>
 #include <linux/kthread.h>
 
-#include <most/most.h>
+#include <linux/most.h>
 #include "hal.h"
 #include "errors.h"
 #include "sysfs.h"
diff --git a/drivers/staging/most/i2c/i2c.c b/drivers/staging/most/i2c/i2c.c
index d07719c..d4a9cd8 100644
--- a/drivers/staging/most/i2c/i2c.c
+++ b/drivers/staging/most/i2c/i2c.c
@@ -14,7 +14,7 @@
 #include <linux/interrupt.h>
 #include <linux/err.h>
 
-#include <most/most.h>
+#include <linux/most.h>
 
 enum { CH_RX, CH_TX, NUM_CHANNELS };
 
diff --git a/drivers/staging/most/most.h b/drivers/staging/most/most.h
deleted file mode 100644
index 1380e75..0000000
--- a/drivers/staging/most/most.h
+++ /dev/null
@@ -1,339 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * most.h - API for component and adapter drivers
- *
- * Copyright (C) 2013-2015, Microchip Technology Germany II GmbH & Co. KG
- */
-
-#ifndef __MOST_CORE_H__
-#define __MOST_CORE_H__
-
-#include <linux/types.h>
-#include <linux/device.h>
-
-struct module;
-struct interface_private;
-
-/**
- * Interface type
- */
-enum most_interface_type {
-	ITYPE_LOOPBACK = 1,
-	ITYPE_I2C,
-	ITYPE_I2S,
-	ITYPE_TSI,
-	ITYPE_HBI,
-	ITYPE_MEDIALB_DIM,
-	ITYPE_MEDIALB_DIM2,
-	ITYPE_USB,
-	ITYPE_PCIE
-};
-
-/**
- * Channel direction.
- */
-enum most_channel_direction {
-	MOST_CH_RX = 1 << 0,
-	MOST_CH_TX = 1 << 1,
-};
-
-/**
- * Channel data type.
- */
-enum most_channel_data_type {
-	MOST_CH_CONTROL = 1 << 0,
-	MOST_CH_ASYNC = 1 << 1,
-	MOST_CH_ISOC = 1 << 2,
-	MOST_CH_SYNC = 1 << 5,
-};
-
-enum mbo_status_flags {
-	/* MBO was processed successfully (data was send or received )*/
-	MBO_SUCCESS = 0,
-	/* The MBO contains wrong or missing information.  */
-	MBO_E_INVAL,
-	/* MBO was completed as HDM Channel will be closed */
-	MBO_E_CLOSE,
-};
-
-/**
- * struct most_channel_capability - Channel capability
- * @direction: Supported channel directions.
- * The value is bitwise OR-combination of the values from the
- * enumeration most_channel_direction. Zero is allowed value and means
- * "channel may not be used".
- * @data_type: Supported channel data types.
- * The value is bitwise OR-combination of the values from the
- * enumeration most_channel_data_type. Zero is allowed value and means
- * "channel may not be used".
- * @num_buffers_packet: Maximum number of buffers supported by this channel
- * for packet data types (Async,Control,QoS)
- * @buffer_size_packet: Maximum buffer size supported by this channel
- * for packet data types (Async,Control,QoS)
- * @num_buffers_streaming: Maximum number of buffers supported by this channel
- * for streaming data types (Sync,AV Packetized)
- * @buffer_size_streaming: Maximum buffer size supported by this channel
- * for streaming data types (Sync,AV Packetized)
- * @name_suffix: Optional suffix providean by an HDM that is attached to the
- * regular channel name.
- *
- * Describes the capabilities of a MOST channel like supported Data Types
- * and directions. This information is provided by an HDM for the MostCore.
- *
- * The Core creates read only sysfs attribute files in
- * /sys/devices/most/mdev#/<channel>/ with the
- * following attributes:
- *	-available_directions
- *	-available_datatypes
- *	-number_of_packet_buffers
- *	-number_of_stream_buffers
- *	-size_of_packet_buffer
- *	-size_of_stream_buffer
- * where content of each file is a string with all supported properties of this
- * very channel attribute.
- */
-struct most_channel_capability {
-	u16 direction;
-	u16 data_type;
-	u16 num_buffers_packet;
-	u16 buffer_size_packet;
-	u16 num_buffers_streaming;
-	u16 buffer_size_streaming;
-	const char *name_suffix;
-};
-
-/**
- * struct most_channel_config - stores channel configuration
- * @direction: direction of the channel
- * @data_type: data type travelling over this channel
- * @num_buffers: number of buffers
- * @buffer_size: size of a buffer for AIM.
- * Buffer size may be cutted down by HDM in a configure callback
- * to match to a given interface and channel type.
- * @extra_len: additional buffer space for internal HDM purposes like padding.
- * May be set by HDM in a configure callback if needed.
- * @subbuffer_size: size of a subbuffer
- * @packets_per_xact: number of MOST frames that are packet inside one USB
- *		      packet. This is USB specific
- *
- * Describes the configuration for a MOST channel. This information is
- * provided from the MostCore to a HDM (like the Medusa PCIe Interface) as a
- * parameter of the "configure" function call.
- */
-struct most_channel_config {
-	enum most_channel_direction direction;
-	enum most_channel_data_type data_type;
-	u16 num_buffers;
-	u16 buffer_size;
-	u16 extra_len;
-	u16 subbuffer_size;
-	u16 packets_per_xact;
-	u16 dbr_size;
-};
-
-/*
- * struct mbo - MOST Buffer Object.
- * @context: context for core completion handler
- * @priv: private data for HDM
- *
- *	public: documented fields that are used for the communications
- *	between MostCore and HDMs
- *
- * @list: list head for use by the mbo's current owner
- * @ifp: (in) associated interface instance
- * @num_buffers_ptr: amount of pool buffers
- * @hdm_channel_id: (in) HDM channel instance
- * @virt_address: (in) kernel virtual address of the buffer
- * @bus_address: (in) bus address of the buffer
- * @buffer_length: (in) buffer payload length
- * @processed_length: (out) processed length
- * @status: (out) transfer status
- * @complete: (in) completion routine
- *
- * The core allocates and initializes the MBO.
- *
- * The HDM receives MBO for transfer from the core with the call to enqueue().
- * The HDM copies the data to- or from the buffer depending on configured
- * channel direction, set "processed_length" and "status" and completes
- * the transfer procedure by calling the completion routine.
- *
- * Finally, the MBO is being deallocated or recycled for further
- * transfers of the same or a different HDM.
- *
- * Directions of usage:
- * The core driver should never access any MBO fields (even if marked
- * as "public") while the MBO is owned by an HDM. The ownership starts with
- * the call of enqueue() and ends with the call of its complete() routine.
- *
- *					II.
- * Every HDM attached to the core driver _must_ ensure that it returns any MBO
- * it owns (due to a previous call to enqueue() by the core driver) before it
- * de-registers an interface or gets unloaded from the kernel. If this direction
- * is violated memory leaks will occur, since the core driver does _not_ track
- * MBOs it is currently not in control of.
- *
- */
-struct mbo {
-	void *context;
-	void *priv;
-	struct list_head list;
-	struct most_interface *ifp;
-	int *num_buffers_ptr;
-	u16 hdm_channel_id;
-	void *virt_address;
-	dma_addr_t bus_address;
-	u16 buffer_length;
-	u16 processed_length;
-	enum mbo_status_flags status;
-	void (*complete)(struct mbo *mbo);
-};
-
-/**
- * Interface instance description.
- *
- * Describes an interface of a MOST device the core driver is bound to.
- * This structure is allocated and initialized in the HDM. MostCore may not
- * modify this structure.
- *
- * @dev: the actual device
- * @mod: module
- * @interface Interface type. \sa most_interface_type.
- * @description PRELIMINARY.
- *   Unique description of the device instance from point of view of the
- *   interface in free text form (ASCII).
- *   It may be a hexadecimal presentation of the memory address for the MediaLB
- *   IP or USB device ID with USB properties for USB interface, etc.
- * @num_channels Number of channels and size of the channel_vector.
- * @channel_vector Properties of the channels.
- *   Array index represents channel ID by the driver.
- * @configure Callback to change data type for the channel of the
- *   interface instance. May be zero if the instance of the interface is not
- *   configurable. Parameter channel_config describes direction and data
- *   type for the channel, configured by the higher level. The content of
- * @enqueue Delivers MBO to the HDM for processing.
- *   After HDM completes Rx- or Tx- operation the processed MBO shall
- *   be returned back to the MostCore using completion routine.
- *   The reason to get the MBO delivered from the MostCore after the channel
- *   is poisoned is the re-opening of the channel by the application.
- *   In this case the HDM shall hold MBOs and service the channel as usual.
- *   The HDM must be able to hold at least one MBO for each channel.
- *   The callback returns a negative value on error, otherwise 0.
- * @poison_channel Informs HDM about closing the channel. The HDM shall
- *   cancel all transfers and synchronously or asynchronously return
- *   all enqueued for this channel MBOs using the completion routine.
- *   The callback returns a negative value on error, otherwise 0.
- * @request_netinfo: triggers retrieving of network info from the HDM by
- *   means of "Message exchange over MDP/MEP"
- *   The call of the function request_netinfo with the parameter on_netinfo as
- *   NULL prohibits use of the previously obtained function pointer.
- * @priv Private field used by mostcore to store context information.
- */
-struct most_interface {
-	struct device dev;
-	struct device *driver_dev;
-	struct module *mod;
-	enum most_interface_type interface;
-	const char *description;
-	unsigned int num_channels;
-	struct most_channel_capability *channel_vector;
-	void *(*dma_alloc)(struct mbo *mbo, u32 size);
-	void (*dma_free)(struct mbo *mbo, u32 size);
-	int (*configure)(struct most_interface *iface, int channel_idx,
-			 struct most_channel_config *channel_config);
-	int (*enqueue)(struct most_interface *iface, int channel_idx,
-		       struct mbo *mbo);
-	int (*poison_channel)(struct most_interface *iface, int channel_idx);
-	void (*request_netinfo)(struct most_interface *iface, int channel_idx,
-				void (*on_netinfo)(struct most_interface *iface,
-						   unsigned char link_stat,
-						   unsigned char *mac_addr));
-	void *priv;
-	struct interface_private *p;
-};
-
-#define to_most_interface(d) container_of(d, struct most_interface, dev)
-
-/**
- * struct core_component - identifies a loadable component for the mostcore
- * @list: list_head
- * @name: component name
- * @probe_channel: function for core to notify driver about channel connection
- * @disconnect_channel: callback function to disconnect a certain channel
- * @rx_completion: completion handler for received packets
- * @tx_completion: completion handler for transmitted packets
- */
-struct core_component {
-	struct list_head list;
-	const char *name;
-	struct module *mod;
-	int (*probe_channel)(struct most_interface *iface, int channel_idx,
-			     struct most_channel_config *cfg, char *name,
-			     char *param);
-	int (*disconnect_channel)(struct most_interface *iface,
-				  int channel_idx);
-	int (*rx_completion)(struct mbo *mbo);
-	int (*tx_completion)(struct most_interface *iface, int channel_idx);
-	int (*cfg_complete)(void);
-};
-
-/**
- * most_register_interface - Registers instance of the interface.
- * @iface: Pointer to the interface instance description.
- *
- * Returns a pointer to the kobject of the generated instance.
- *
- * Note: HDM has to ensure that any reference held on the kobj is
- * released before deregistering the interface.
- */
-int most_register_interface(struct most_interface *iface);
-
-/**
- * Deregisters instance of the interface.
- * @intf_instance Pointer to the interface instance description.
- */
-void most_deregister_interface(struct most_interface *iface);
-void most_submit_mbo(struct mbo *mbo);
-
-/**
- * most_stop_enqueue - prevents core from enqueing MBOs
- * @iface: pointer to interface
- * @channel_idx: channel index
- */
-void most_stop_enqueue(struct most_interface *iface, int channel_idx);
-
-/**
- * most_resume_enqueue - allow core to enqueue MBOs again
- * @iface: pointer to interface
- * @channel_idx: channel index
- *
- * This clears the enqueue halt flag and enqueues all MBOs currently
- * in wait fifo.
- */
-void most_resume_enqueue(struct most_interface *iface, int channel_idx);
-int most_register_component(struct core_component *comp);
-int most_deregister_component(struct core_component *comp);
-struct mbo *most_get_mbo(struct most_interface *iface, int channel_idx,
-			 struct core_component *comp);
-void most_put_mbo(struct mbo *mbo);
-int channel_has_mbo(struct most_interface *iface, int channel_idx,
-		    struct core_component *comp);
-int most_start_channel(struct most_interface *iface, int channel_idx,
-		       struct core_component *comp);
-int most_stop_channel(struct most_interface *iface, int channel_idx,
-		      struct core_component *comp);
-int __init configfs_init(void);
-int most_register_configfs_subsys(struct core_component *comp);
-void most_deregister_configfs_subsys(struct core_component *comp);
-int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
-		  char *comp_param);
-int most_remove_link(char *mdev, char *mdev_ch, char *comp_name);
-int most_set_cfg_buffer_size(char *mdev, char *mdev_ch, u16 val);
-int most_set_cfg_subbuffer_size(char *mdev, char *mdev_ch, u16 val);
-int most_set_cfg_dbr_size(char *mdev, char *mdev_ch, u16 val);
-int most_set_cfg_num_buffers(char *mdev, char *mdev_ch, u16 val);
-int most_set_cfg_datatype(char *mdev, char *mdev_ch, char *buf);
-int most_set_cfg_direction(char *mdev, char *mdev_ch, char *buf);
-int most_set_cfg_packets_xact(char *mdev, char *mdev_ch, u16 val);
-int most_cfg_complete(char *comp_name);
-void most_interface_register_notify(const char *mdev_name);
-#endif /* MOST_CORE_H_ */
diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index 9e69a1c..0843612 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -15,7 +15,7 @@
 #include <linux/list.h>
 #include <linux/wait.h>
 #include <linux/kobject.h>
-#include <most/most.h>
+#include <linux/most.h>
 
 #define MEP_HDR_LEN 8
 #define MDP_HDR_LEN 16
diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 4b00c35..ef79835 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -17,7 +17,7 @@
 #include <sound/pcm_params.h>
 #include <linux/sched.h>
 #include <linux/kthread.h>
-#include <most/most.h>
+#include <linux/most.h>
 
 #define DRIVER_NAME "sound"
 #define STRING_SIZE	80
diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 491b38e..4c11fad 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -23,7 +23,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/etherdevice.h>
 #include <linux/uaccess.h>
-#include <most/most.h>
+#include <linux/most.h>
 
 #define USB_MTU			512
 #define NO_ISOCHRONOUS_URB	0
diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 257c9c8..0ebea99 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -21,7 +21,7 @@
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-fh.h>
 
-#include <most/most.h>
+#include <linux/most.h>
 
 #define V4L2_CMP_MAX_INPUT  1
 
diff --git a/include/linux/most.h b/include/linux/most.h
new file mode 100644
index 0000000..1380e75
--- /dev/null
+++ b/include/linux/most.h
@@ -0,0 +1,339 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * most.h - API for component and adapter drivers
+ *
+ * Copyright (C) 2013-2015, Microchip Technology Germany II GmbH & Co. KG
+ */
+
+#ifndef __MOST_CORE_H__
+#define __MOST_CORE_H__
+
+#include <linux/types.h>
+#include <linux/device.h>
+
+struct module;
+struct interface_private;
+
+/**
+ * Interface type
+ */
+enum most_interface_type {
+	ITYPE_LOOPBACK = 1,
+	ITYPE_I2C,
+	ITYPE_I2S,
+	ITYPE_TSI,
+	ITYPE_HBI,
+	ITYPE_MEDIALB_DIM,
+	ITYPE_MEDIALB_DIM2,
+	ITYPE_USB,
+	ITYPE_PCIE
+};
+
+/**
+ * Channel direction.
+ */
+enum most_channel_direction {
+	MOST_CH_RX = 1 << 0,
+	MOST_CH_TX = 1 << 1,
+};
+
+/**
+ * Channel data type.
+ */
+enum most_channel_data_type {
+	MOST_CH_CONTROL = 1 << 0,
+	MOST_CH_ASYNC = 1 << 1,
+	MOST_CH_ISOC = 1 << 2,
+	MOST_CH_SYNC = 1 << 5,
+};
+
+enum mbo_status_flags {
+	/* MBO was processed successfully (data was send or received )*/
+	MBO_SUCCESS = 0,
+	/* The MBO contains wrong or missing information.  */
+	MBO_E_INVAL,
+	/* MBO was completed as HDM Channel will be closed */
+	MBO_E_CLOSE,
+};
+
+/**
+ * struct most_channel_capability - Channel capability
+ * @direction: Supported channel directions.
+ * The value is bitwise OR-combination of the values from the
+ * enumeration most_channel_direction. Zero is allowed value and means
+ * "channel may not be used".
+ * @data_type: Supported channel data types.
+ * The value is bitwise OR-combination of the values from the
+ * enumeration most_channel_data_type. Zero is allowed value and means
+ * "channel may not be used".
+ * @num_buffers_packet: Maximum number of buffers supported by this channel
+ * for packet data types (Async,Control,QoS)
+ * @buffer_size_packet: Maximum buffer size supported by this channel
+ * for packet data types (Async,Control,QoS)
+ * @num_buffers_streaming: Maximum number of buffers supported by this channel
+ * for streaming data types (Sync,AV Packetized)
+ * @buffer_size_streaming: Maximum buffer size supported by this channel
+ * for streaming data types (Sync,AV Packetized)
+ * @name_suffix: Optional suffix providean by an HDM that is attached to the
+ * regular channel name.
+ *
+ * Describes the capabilities of a MOST channel like supported Data Types
+ * and directions. This information is provided by an HDM for the MostCore.
+ *
+ * The Core creates read only sysfs attribute files in
+ * /sys/devices/most/mdev#/<channel>/ with the
+ * following attributes:
+ *	-available_directions
+ *	-available_datatypes
+ *	-number_of_packet_buffers
+ *	-number_of_stream_buffers
+ *	-size_of_packet_buffer
+ *	-size_of_stream_buffer
+ * where content of each file is a string with all supported properties of this
+ * very channel attribute.
+ */
+struct most_channel_capability {
+	u16 direction;
+	u16 data_type;
+	u16 num_buffers_packet;
+	u16 buffer_size_packet;
+	u16 num_buffers_streaming;
+	u16 buffer_size_streaming;
+	const char *name_suffix;
+};
+
+/**
+ * struct most_channel_config - stores channel configuration
+ * @direction: direction of the channel
+ * @data_type: data type travelling over this channel
+ * @num_buffers: number of buffers
+ * @buffer_size: size of a buffer for AIM.
+ * Buffer size may be cutted down by HDM in a configure callback
+ * to match to a given interface and channel type.
+ * @extra_len: additional buffer space for internal HDM purposes like padding.
+ * May be set by HDM in a configure callback if needed.
+ * @subbuffer_size: size of a subbuffer
+ * @packets_per_xact: number of MOST frames that are packet inside one USB
+ *		      packet. This is USB specific
+ *
+ * Describes the configuration for a MOST channel. This information is
+ * provided from the MostCore to a HDM (like the Medusa PCIe Interface) as a
+ * parameter of the "configure" function call.
+ */
+struct most_channel_config {
+	enum most_channel_direction direction;
+	enum most_channel_data_type data_type;
+	u16 num_buffers;
+	u16 buffer_size;
+	u16 extra_len;
+	u16 subbuffer_size;
+	u16 packets_per_xact;
+	u16 dbr_size;
+};
+
+/*
+ * struct mbo - MOST Buffer Object.
+ * @context: context for core completion handler
+ * @priv: private data for HDM
+ *
+ *	public: documented fields that are used for the communications
+ *	between MostCore and HDMs
+ *
+ * @list: list head for use by the mbo's current owner
+ * @ifp: (in) associated interface instance
+ * @num_buffers_ptr: amount of pool buffers
+ * @hdm_channel_id: (in) HDM channel instance
+ * @virt_address: (in) kernel virtual address of the buffer
+ * @bus_address: (in) bus address of the buffer
+ * @buffer_length: (in) buffer payload length
+ * @processed_length: (out) processed length
+ * @status: (out) transfer status
+ * @complete: (in) completion routine
+ *
+ * The core allocates and initializes the MBO.
+ *
+ * The HDM receives MBO for transfer from the core with the call to enqueue().
+ * The HDM copies the data to- or from the buffer depending on configured
+ * channel direction, set "processed_length" and "status" and completes
+ * the transfer procedure by calling the completion routine.
+ *
+ * Finally, the MBO is being deallocated or recycled for further
+ * transfers of the same or a different HDM.
+ *
+ * Directions of usage:
+ * The core driver should never access any MBO fields (even if marked
+ * as "public") while the MBO is owned by an HDM. The ownership starts with
+ * the call of enqueue() and ends with the call of its complete() routine.
+ *
+ *					II.
+ * Every HDM attached to the core driver _must_ ensure that it returns any MBO
+ * it owns (due to a previous call to enqueue() by the core driver) before it
+ * de-registers an interface or gets unloaded from the kernel. If this direction
+ * is violated memory leaks will occur, since the core driver does _not_ track
+ * MBOs it is currently not in control of.
+ *
+ */
+struct mbo {
+	void *context;
+	void *priv;
+	struct list_head list;
+	struct most_interface *ifp;
+	int *num_buffers_ptr;
+	u16 hdm_channel_id;
+	void *virt_address;
+	dma_addr_t bus_address;
+	u16 buffer_length;
+	u16 processed_length;
+	enum mbo_status_flags status;
+	void (*complete)(struct mbo *mbo);
+};
+
+/**
+ * Interface instance description.
+ *
+ * Describes an interface of a MOST device the core driver is bound to.
+ * This structure is allocated and initialized in the HDM. MostCore may not
+ * modify this structure.
+ *
+ * @dev: the actual device
+ * @mod: module
+ * @interface Interface type. \sa most_interface_type.
+ * @description PRELIMINARY.
+ *   Unique description of the device instance from point of view of the
+ *   interface in free text form (ASCII).
+ *   It may be a hexadecimal presentation of the memory address for the MediaLB
+ *   IP or USB device ID with USB properties for USB interface, etc.
+ * @num_channels Number of channels and size of the channel_vector.
+ * @channel_vector Properties of the channels.
+ *   Array index represents channel ID by the driver.
+ * @configure Callback to change data type for the channel of the
+ *   interface instance. May be zero if the instance of the interface is not
+ *   configurable. Parameter channel_config describes direction and data
+ *   type for the channel, configured by the higher level. The content of
+ * @enqueue Delivers MBO to the HDM for processing.
+ *   After HDM completes Rx- or Tx- operation the processed MBO shall
+ *   be returned back to the MostCore using completion routine.
+ *   The reason to get the MBO delivered from the MostCore after the channel
+ *   is poisoned is the re-opening of the channel by the application.
+ *   In this case the HDM shall hold MBOs and service the channel as usual.
+ *   The HDM must be able to hold at least one MBO for each channel.
+ *   The callback returns a negative value on error, otherwise 0.
+ * @poison_channel Informs HDM about closing the channel. The HDM shall
+ *   cancel all transfers and synchronously or asynchronously return
+ *   all enqueued for this channel MBOs using the completion routine.
+ *   The callback returns a negative value on error, otherwise 0.
+ * @request_netinfo: triggers retrieving of network info from the HDM by
+ *   means of "Message exchange over MDP/MEP"
+ *   The call of the function request_netinfo with the parameter on_netinfo as
+ *   NULL prohibits use of the previously obtained function pointer.
+ * @priv Private field used by mostcore to store context information.
+ */
+struct most_interface {
+	struct device dev;
+	struct device *driver_dev;
+	struct module *mod;
+	enum most_interface_type interface;
+	const char *description;
+	unsigned int num_channels;
+	struct most_channel_capability *channel_vector;
+	void *(*dma_alloc)(struct mbo *mbo, u32 size);
+	void (*dma_free)(struct mbo *mbo, u32 size);
+	int (*configure)(struct most_interface *iface, int channel_idx,
+			 struct most_channel_config *channel_config);
+	int (*enqueue)(struct most_interface *iface, int channel_idx,
+		       struct mbo *mbo);
+	int (*poison_channel)(struct most_interface *iface, int channel_idx);
+	void (*request_netinfo)(struct most_interface *iface, int channel_idx,
+				void (*on_netinfo)(struct most_interface *iface,
+						   unsigned char link_stat,
+						   unsigned char *mac_addr));
+	void *priv;
+	struct interface_private *p;
+};
+
+#define to_most_interface(d) container_of(d, struct most_interface, dev)
+
+/**
+ * struct core_component - identifies a loadable component for the mostcore
+ * @list: list_head
+ * @name: component name
+ * @probe_channel: function for core to notify driver about channel connection
+ * @disconnect_channel: callback function to disconnect a certain channel
+ * @rx_completion: completion handler for received packets
+ * @tx_completion: completion handler for transmitted packets
+ */
+struct core_component {
+	struct list_head list;
+	const char *name;
+	struct module *mod;
+	int (*probe_channel)(struct most_interface *iface, int channel_idx,
+			     struct most_channel_config *cfg, char *name,
+			     char *param);
+	int (*disconnect_channel)(struct most_interface *iface,
+				  int channel_idx);
+	int (*rx_completion)(struct mbo *mbo);
+	int (*tx_completion)(struct most_interface *iface, int channel_idx);
+	int (*cfg_complete)(void);
+};
+
+/**
+ * most_register_interface - Registers instance of the interface.
+ * @iface: Pointer to the interface instance description.
+ *
+ * Returns a pointer to the kobject of the generated instance.
+ *
+ * Note: HDM has to ensure that any reference held on the kobj is
+ * released before deregistering the interface.
+ */
+int most_register_interface(struct most_interface *iface);
+
+/**
+ * Deregisters instance of the interface.
+ * @intf_instance Pointer to the interface instance description.
+ */
+void most_deregister_interface(struct most_interface *iface);
+void most_submit_mbo(struct mbo *mbo);
+
+/**
+ * most_stop_enqueue - prevents core from enqueing MBOs
+ * @iface: pointer to interface
+ * @channel_idx: channel index
+ */
+void most_stop_enqueue(struct most_interface *iface, int channel_idx);
+
+/**
+ * most_resume_enqueue - allow core to enqueue MBOs again
+ * @iface: pointer to interface
+ * @channel_idx: channel index
+ *
+ * This clears the enqueue halt flag and enqueues all MBOs currently
+ * in wait fifo.
+ */
+void most_resume_enqueue(struct most_interface *iface, int channel_idx);
+int most_register_component(struct core_component *comp);
+int most_deregister_component(struct core_component *comp);
+struct mbo *most_get_mbo(struct most_interface *iface, int channel_idx,
+			 struct core_component *comp);
+void most_put_mbo(struct mbo *mbo);
+int channel_has_mbo(struct most_interface *iface, int channel_idx,
+		    struct core_component *comp);
+int most_start_channel(struct most_interface *iface, int channel_idx,
+		       struct core_component *comp);
+int most_stop_channel(struct most_interface *iface, int channel_idx,
+		      struct core_component *comp);
+int __init configfs_init(void);
+int most_register_configfs_subsys(struct core_component *comp);
+void most_deregister_configfs_subsys(struct core_component *comp);
+int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
+		  char *comp_param);
+int most_remove_link(char *mdev, char *mdev_ch, char *comp_name);
+int most_set_cfg_buffer_size(char *mdev, char *mdev_ch, u16 val);
+int most_set_cfg_subbuffer_size(char *mdev, char *mdev_ch, u16 val);
+int most_set_cfg_dbr_size(char *mdev, char *mdev_ch, u16 val);
+int most_set_cfg_num_buffers(char *mdev, char *mdev_ch, u16 val);
+int most_set_cfg_datatype(char *mdev, char *mdev_ch, char *buf);
+int most_set_cfg_direction(char *mdev, char *mdev_ch, char *buf);
+int most_set_cfg_packets_xact(char *mdev, char *mdev_ch, u16 val);
+int most_cfg_complete(char *comp_name);
+void most_interface_register_notify(const char *mdev_name);
+#endif /* MOST_CORE_H_ */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

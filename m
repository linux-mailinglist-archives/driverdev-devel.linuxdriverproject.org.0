Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BFC1523FA
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Feb 2020 01:12:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE89185945;
	Wed,  5 Feb 2020 00:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IGXy7QKjoqBt; Wed,  5 Feb 2020 00:12:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2890E87347;
	Wed,  5 Feb 2020 00:11:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B43071BF45A
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 00:11:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A47FC20419
 for <devel@linuxdriverproject.org>; Wed,  5 Feb 2020 00:11:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3IlBAEfg-qh0 for <devel@linuxdriverproject.org>;
 Wed,  5 Feb 2020 00:11:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by silver.osuosl.org (Postfix) with ESMTPS id AAD9F20415
 for <devel@driverdev.osuosl.org>; Wed,  5 Feb 2020 00:11:40 +0000 (UTC)
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 36F51891AD;
 Wed,  5 Feb 2020 13:11:38 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1580861498;
 bh=L0IgKnvlx9hQ6eCTor5ooF0GdSs6XuyNMd2hnGSgQm0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=rk50huwIEgrmAXzzzkbD8Ip7ZEE2thJvcyn73GmkX1Uam6jILRQFQmrVDFecnHAyE
 hRjgpTTff3u08ez33Y9pbguPEJsHF8WAazlwo3W8SDeLMxqa3DVIDRLlmKNeAlQalY
 IDasn9pDqpG9E5meHrYWKF1BibgZzexYLqFWmevLJIz37M2YAEPOp/WGtdLhC2GQqG
 U6TG0swWWONOHWXoTlrvibxWveC2ECg9oOd1wlX+57q1Pwi53JLQ0ChaKCxk4Ou7cu
 G6UCDoBYsNJ5kSVz2vqIaO4m1P5oES7ehNr08aorIXzwv+VStf6SrfE32tWonPJVNT
 E7DG1EUDOYgvg==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5e3a083a0000>; Wed, 05 Feb 2020 13:11:38 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 195CD13EEDE;
 Wed,  5 Feb 2020 13:11:37 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 89195280038; Wed,  5 Feb 2020 13:11:37 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: gregkh@linuxfoundation.org, ralf@linux-mips.org, paulburton@kernel.org,
 linux@roeck-us.net, dan.carpenter@oracle.com, willy@infradead.org
Subject: [PATCH 2/6] Revert "staging: octeon: delete driver"
Date: Wed,  5 Feb 2020 13:11:12 +1300
Message-Id: <20200205001116.14096-3-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
References: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
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
Cc: devel@driverdev.osuosl.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This reverts commit 710d7fbe21ee2ceab121f1f84a20edf68f9f9742.
Re-instate the code so subsequent commits can clean it up and get it
building properly.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 drivers/staging/Kconfig                   |    2 +
 drivers/staging/Makefile                  |    1 +
 drivers/staging/octeon/Kconfig            |   16 +
 drivers/staging/octeon/Makefile           |   19 +
 drivers/staging/octeon/TODO               |    9 +
 drivers/staging/octeon/ethernet-defines.h |   40 +
 drivers/staging/octeon/ethernet-mdio.c    |  178 +++
 drivers/staging/octeon/ethernet-mdio.h    |   28 +
 drivers/staging/octeon/ethernet-mem.c     |  154 +++
 drivers/staging/octeon/ethernet-mem.h     |    9 +
 drivers/staging/octeon/ethernet-rgmii.c   |  158 +++
 drivers/staging/octeon/ethernet-rx.c      |  538 ++++++++
 drivers/staging/octeon/ethernet-rx.h      |   31 +
 drivers/staging/octeon/ethernet-sgmii.c   |   30 +
 drivers/staging/octeon/ethernet-spi.c     |  226 ++++
 drivers/staging/octeon/ethernet-tx.c      |  717 +++++++++++
 drivers/staging/octeon/ethernet-tx.h      |   14 +
 drivers/staging/octeon/ethernet-util.h    |   47 +
 drivers/staging/octeon/ethernet.c         |  992 ++++++++++++++
 drivers/staging/octeon/octeon-ethernet.h  |  107 ++
 drivers/staging/octeon/octeon-stubs.h     | 1433 +++++++++++++++++++++
 21 files changed, 4749 insertions(+)
 create mode 100644 drivers/staging/octeon/Kconfig
 create mode 100644 drivers/staging/octeon/Makefile
 create mode 100644 drivers/staging/octeon/TODO
 create mode 100644 drivers/staging/octeon/ethernet-defines.h
 create mode 100644 drivers/staging/octeon/ethernet-mdio.c
 create mode 100644 drivers/staging/octeon/ethernet-mdio.h
 create mode 100644 drivers/staging/octeon/ethernet-mem.c
 create mode 100644 drivers/staging/octeon/ethernet-mem.h
 create mode 100644 drivers/staging/octeon/ethernet-rgmii.c
 create mode 100644 drivers/staging/octeon/ethernet-rx.c
 create mode 100644 drivers/staging/octeon/ethernet-rx.h
 create mode 100644 drivers/staging/octeon/ethernet-sgmii.c
 create mode 100644 drivers/staging/octeon/ethernet-spi.c
 create mode 100644 drivers/staging/octeon/ethernet-tx.c
 create mode 100644 drivers/staging/octeon/ethernet-tx.h
 create mode 100644 drivers/staging/octeon/ethernet-util.h
 create mode 100644 drivers/staging/octeon/ethernet.c
 create mode 100644 drivers/staging/octeon/octeon-ethernet.h
 create mode 100644 drivers/staging/octeon/octeon-stubs.h

diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index f1926e8abc80..3a334a9dd453 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -42,6 +42,8 @@ source "drivers/staging/rtl8188eu/Kconfig"
 
 source "drivers/staging/rts5208/Kconfig"
 
+source "drivers/staging/octeon/Kconfig"
+
 source "drivers/staging/octeon-usb/Kconfig"
 
 source "drivers/staging/vt6655/Kconfig"
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index 87633b5b24a9..8f546fa02118 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_R8712U)		+= rtl8712/
 obj-$(CONFIG_R8188EU)		+= rtl8188eu/
 obj-$(CONFIG_RTS5208)		+= rts5208/
 obj-$(CONFIG_NETLOGIC_XLR_NET)	+= netlogic/
+obj-$(CONFIG_OCTEON_ETHERNET)	+= octeon/
 obj-$(CONFIG_OCTEON_USB)	+= octeon-usb/
 obj-$(CONFIG_VT6655)		+= vt6655/
 obj-$(CONFIG_VT6656)		+= vt6656/
diff --git a/drivers/staging/octeon/Kconfig b/drivers/staging/octeon/Kconfig
new file mode 100644
index 000000000000..e7f4ddcc1361
--- /dev/null
+++ b/drivers/staging/octeon/Kconfig
@@ -0,0 +1,16 @@
+# SPDX-License-Identifier: GPL-2.0
+config OCTEON_ETHERNET
+	tristate "Cavium Networks Octeon Ethernet support"
+	depends on CAVIUM_OCTEON_SOC || COMPILE_TEST
+	depends on NETDEVICES
+	depends on BROKEN
+	select PHYLIB
+	select MDIO_OCTEON
+	help
+	  This driver supports the builtin ethernet ports on Cavium
+	  Networks' products in the Octeon family. This driver supports the
+	  CN3XXX and CN5XXX Octeon processors.
+
+	  To compile this driver as a module, choose M here.  The module
+	  will be called octeon-ethernet.
+
diff --git a/drivers/staging/octeon/Makefile b/drivers/staging/octeon/Makefile
new file mode 100644
index 000000000000..3887cf5f1e84
--- /dev/null
+++ b/drivers/staging/octeon/Makefile
@@ -0,0 +1,19 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Copyright (C) 2005-2009 Cavium Networks
+#
+
+#
+# Makefile for Cavium OCTEON on-board ethernet driver
+#
+
+obj-${CONFIG_OCTEON_ETHERNET} :=  octeon-ethernet.o
+
+octeon-ethernet-y := ethernet.o
+octeon-ethernet-y += ethernet-mdio.o
+octeon-ethernet-y += ethernet-mem.o
+octeon-ethernet-y += ethernet-rgmii.o
+octeon-ethernet-y += ethernet-rx.o
+octeon-ethernet-y += ethernet-sgmii.o
+octeon-ethernet-y += ethernet-spi.o
+octeon-ethernet-y += ethernet-tx.o
diff --git a/drivers/staging/octeon/TODO b/drivers/staging/octeon/TODO
new file mode 100644
index 000000000000..67a0a1f6b922
--- /dev/null
+++ b/drivers/staging/octeon/TODO
@@ -0,0 +1,9 @@
+This driver is functional and supports Ethernet on OCTEON+/OCTEON2/OCTEON3
+chips at least up to CN7030.
+
+TODO:
+	- general code review and clean up
+	- make driver self-contained instead of being split between staging and
+	  arch/mips/cavium-octeon.
+
+Contact: Aaro Koskinen <aaro.koskinen@iki.fi>
diff --git a/drivers/staging/octeon/ethernet-defines.h b/drivers/staging/octeon/ethernet-defines.h
new file mode 100644
index 000000000000..ef9e767b0e2e
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-defines.h
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2007 Cavium Networks
+ */
+
+/*
+ * A few defines are used to control the operation of this driver:
+ *  USE_ASYNC_IOBDMA
+ *      Use asynchronous IO access to hardware. This uses Octeon's asynchronous
+ *      IOBDMAs to issue IO accesses without stalling. Set this to zero
+ *      to disable this. Note that IOBDMAs require CVMSEG.
+ *  REUSE_SKBUFFS_WITHOUT_FREE
+ *      Allows the TX path to free an skbuff into the FPA hardware pool. This
+ *      can significantly improve performance for forwarding and bridging, but
+ *      may be somewhat dangerous. Checks are made, but if any buffer is reused
+ *      without the proper Linux cleanup, the networking stack may have very
+ *      bizarre bugs.
+ */
+#ifndef __ETHERNET_DEFINES_H__
+#define __ETHERNET_DEFINES_H__
+
+#ifdef CONFIG_NETFILTER
+#define REUSE_SKBUFFS_WITHOUT_FREE  0
+#else
+#define REUSE_SKBUFFS_WITHOUT_FREE  1
+#endif
+
+#define USE_ASYNC_IOBDMA            (CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE > 0)
+
+/* Maximum number of SKBs to try to free per xmit packet. */
+#define MAX_OUT_QUEUE_DEPTH 1000
+
+#define FAU_TOTAL_TX_TO_CLEAN (CVMX_FAU_REG_END - sizeof(u32))
+#define FAU_NUM_PACKET_BUFFERS_TO_FREE (FAU_TOTAL_TX_TO_CLEAN - sizeof(u32))
+
+#define TOTAL_NUMBER_OF_PORTS       (CVMX_PIP_NUM_INPUT_PORTS + 1)
+
+#endif /* __ETHERNET_DEFINES_H__ */
diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
new file mode 100644
index 000000000000..c798672d61b2
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-mdio.c
@@ -0,0 +1,178 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2007 Cavium Networks
+ */
+
+#include <linux/kernel.h>
+#include <linux/ethtool.h>
+#include <linux/phy.h>
+#include <linux/ratelimit.h>
+#include <linux/of_mdio.h>
+#include <generated/utsrelease.h>
+#include <net/dst.h>
+
+#include "octeon-ethernet.h"
+#include "ethernet-defines.h"
+#include "ethernet-mdio.h"
+#include "ethernet-util.h"
+
+static void cvm_oct_get_drvinfo(struct net_device *dev,
+				struct ethtool_drvinfo *info)
+{
+	strlcpy(info->driver, KBUILD_MODNAME, sizeof(info->driver));
+	strlcpy(info->version, UTS_RELEASE, sizeof(info->version));
+	strlcpy(info->bus_info, "Builtin", sizeof(info->bus_info));
+}
+
+static int cvm_oct_nway_reset(struct net_device *dev)
+{
+	if (!capable(CAP_NET_ADMIN))
+		return -EPERM;
+
+	if (dev->phydev)
+		return phy_start_aneg(dev->phydev);
+
+	return -EINVAL;
+}
+
+const struct ethtool_ops cvm_oct_ethtool_ops = {
+	.get_drvinfo = cvm_oct_get_drvinfo,
+	.nway_reset = cvm_oct_nway_reset,
+	.get_link = ethtool_op_get_link,
+	.get_link_ksettings = phy_ethtool_get_link_ksettings,
+	.set_link_ksettings = phy_ethtool_set_link_ksettings,
+};
+
+/**
+ * cvm_oct_ioctl - IOCTL support for PHY control
+ * @dev:    Device to change
+ * @rq:     the request
+ * @cmd:    the command
+ *
+ * Returns Zero on success
+ */
+int cvm_oct_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
+{
+	if (!netif_running(dev))
+		return -EINVAL;
+
+	if (!dev->phydev)
+		return -EINVAL;
+
+	return phy_mii_ioctl(dev->phydev, rq, cmd);
+}
+
+void cvm_oct_note_carrier(struct octeon_ethernet *priv,
+			  union cvmx_helper_link_info li)
+{
+	if (li.s.link_up) {
+		pr_notice_ratelimited("%s: %u Mbps %s duplex, port %d, queue %d\n",
+				      netdev_name(priv->netdev), li.s.speed,
+				      (li.s.full_duplex) ? "Full" : "Half",
+				      priv->port, priv->queue);
+	} else {
+		pr_notice_ratelimited("%s: Link down\n",
+				      netdev_name(priv->netdev));
+	}
+}
+
+void cvm_oct_adjust_link(struct net_device *dev)
+{
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	union cvmx_helper_link_info link_info;
+
+	link_info.u64		= 0;
+	link_info.s.link_up	= dev->phydev->link ? 1 : 0;
+	link_info.s.full_duplex = dev->phydev->duplex ? 1 : 0;
+	link_info.s.speed	= dev->phydev->speed;
+	priv->link_info		= link_info.u64;
+
+	/*
+	 * The polling task need to know about link status changes.
+	 */
+	if (priv->poll)
+		priv->poll(dev);
+
+	if (priv->last_link != dev->phydev->link) {
+		priv->last_link = dev->phydev->link;
+		cvmx_helper_link_set(priv->port, link_info);
+		cvm_oct_note_carrier(priv, link_info);
+	}
+}
+
+int cvm_oct_common_stop(struct net_device *dev)
+{
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	int interface = INTERFACE(priv->port);
+	union cvmx_helper_link_info link_info;
+	union cvmx_gmxx_prtx_cfg gmx_cfg;
+	int index = INDEX(priv->port);
+
+	gmx_cfg.u64 = cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
+	gmx_cfg.s.en = 0;
+	cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface), gmx_cfg.u64);
+
+	priv->poll = NULL;
+
+	if (dev->phydev)
+		phy_disconnect(dev->phydev);
+
+	if (priv->last_link) {
+		link_info.u64 = 0;
+		priv->last_link = 0;
+
+		cvmx_helper_link_set(priv->port, link_info);
+		cvm_oct_note_carrier(priv, link_info);
+	}
+	return 0;
+}
+
+/**
+ * cvm_oct_phy_setup_device - setup the PHY
+ *
+ * @dev:    Device to setup
+ *
+ * Returns Zero on success, negative on failure
+ */
+int cvm_oct_phy_setup_device(struct net_device *dev)
+{
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	struct device_node *phy_node;
+	struct phy_device *phydev = NULL;
+
+	if (!priv->of_node)
+		goto no_phy;
+
+	phy_node = of_parse_phandle(priv->of_node, "phy-handle", 0);
+	if (!phy_node && of_phy_is_fixed_link(priv->of_node)) {
+		int rc;
+
+		rc = of_phy_register_fixed_link(priv->of_node);
+		if (rc)
+			return rc;
+
+		phy_node = of_node_get(priv->of_node);
+	}
+	if (!phy_node)
+		goto no_phy;
+
+	phydev = of_phy_connect(dev, phy_node, cvm_oct_adjust_link, 0,
+				priv->phy_mode);
+	of_node_put(phy_node);
+
+	if (!phydev)
+		return -ENODEV;
+
+	priv->last_link = 0;
+	phy_start(phydev);
+
+	return 0;
+no_phy:
+	/* If there is no phy, assume a direct MAC connection and that
+	 * the link is up.
+	 */
+	netif_carrier_on(dev);
+	return 0;
+}
diff --git a/drivers/staging/octeon/ethernet-mdio.h b/drivers/staging/octeon/ethernet-mdio.h
new file mode 100644
index 000000000000..e3771d48c49b
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-mdio.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2007 Cavium Networks
+ */
+
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/netdevice.h>
+#include <linux/etherdevice.h>
+#include <linux/ip.h>
+#include <linux/string.h>
+#include <linux/ethtool.h>
+#include <linux/seq_file.h>
+#include <linux/proc_fs.h>
+#include <net/dst.h>
+#ifdef CONFIG_XFRM
+#include <linux/xfrm.h>
+#include <net/xfrm.h>
+#endif /* CONFIG_XFRM */
+
+extern const struct ethtool_ops cvm_oct_ethtool_ops;
+
+void octeon_mdiobus_force_mod_depencency(void);
+
+int cvm_oct_ioctl(struct net_device *dev, struct ifreq *rq, int cmd);
+int cvm_oct_phy_setup_device(struct net_device *dev);
diff --git a/drivers/staging/octeon/ethernet-mem.c b/drivers/staging/octeon/ethernet-mem.c
new file mode 100644
index 000000000000..532594957ebc
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-mem.c
@@ -0,0 +1,154 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2010 Cavium Networks
+ */
+
+#include <linux/kernel.h>
+#include <linux/netdevice.h>
+#include <linux/slab.h>
+
+#include "octeon-ethernet.h"
+#include "ethernet-mem.h"
+#include "ethernet-defines.h"
+
+/**
+ * cvm_oct_fill_hw_skbuff - fill the supplied hardware pool with skbuffs
+ * @pool:     Pool to allocate an skbuff for
+ * @size:     Size of the buffer needed for the pool
+ * @elements: Number of buffers to allocate
+ *
+ * Returns the actual number of buffers allocated.
+ */
+static int cvm_oct_fill_hw_skbuff(int pool, int size, int elements)
+{
+	int freed = elements;
+
+	while (freed) {
+		struct sk_buff *skb = dev_alloc_skb(size + 256);
+
+		if (unlikely(!skb))
+			break;
+		skb_reserve(skb, 256 - (((unsigned long)skb->data) & 0x7f));
+		*(struct sk_buff **)(skb->data - sizeof(void *)) = skb;
+		cvmx_fpa_free(skb->data, pool, size / 128);
+		freed--;
+	}
+	return elements - freed;
+}
+
+/**
+ * cvm_oct_free_hw_skbuff- free hardware pool skbuffs
+ * @pool:     Pool to allocate an skbuff for
+ * @size:     Size of the buffer needed for the pool
+ * @elements: Number of buffers to allocate
+ */
+static void cvm_oct_free_hw_skbuff(int pool, int size, int elements)
+{
+	char *memory;
+
+	do {
+		memory = cvmx_fpa_alloc(pool);
+		if (memory) {
+			struct sk_buff *skb =
+			    *(struct sk_buff **)(memory - sizeof(void *));
+			elements--;
+			dev_kfree_skb(skb);
+		}
+	} while (memory);
+
+	if (elements < 0)
+		pr_warn("Freeing of pool %u had too many skbuffs (%d)\n",
+			pool, elements);
+	else if (elements > 0)
+		pr_warn("Freeing of pool %u is missing %d skbuffs\n",
+			pool, elements);
+}
+
+/**
+ * cvm_oct_fill_hw_memory - fill a hardware pool with memory.
+ * @pool:     Pool to populate
+ * @size:     Size of each buffer in the pool
+ * @elements: Number of buffers to allocate
+ *
+ * Returns the actual number of buffers allocated.
+ */
+static int cvm_oct_fill_hw_memory(int pool, int size, int elements)
+{
+	char *memory;
+	char *fpa;
+	int freed = elements;
+
+	while (freed) {
+		/*
+		 * FPA memory must be 128 byte aligned.  Since we are
+		 * aligning we need to save the original pointer so we
+		 * can feed it to kfree when the memory is returned to
+		 * the kernel.
+		 *
+		 * We allocate an extra 256 bytes to allow for
+		 * alignment and space for the original pointer saved
+		 * just before the block.
+		 */
+		memory = kmalloc(size + 256, GFP_ATOMIC);
+		if (unlikely(!memory)) {
+			pr_warn("Unable to allocate %u bytes for FPA pool %d\n",
+				elements * size, pool);
+			break;
+		}
+		fpa = (char *)(((unsigned long)memory + 256) & ~0x7fUL);
+		*((char **)fpa - 1) = memory;
+		cvmx_fpa_free(fpa, pool, 0);
+		freed--;
+	}
+	return elements - freed;
+}
+
+/**
+ * cvm_oct_free_hw_memory - Free memory allocated by cvm_oct_fill_hw_memory
+ * @pool:     FPA pool to free
+ * @size:     Size of each buffer in the pool
+ * @elements: Number of buffers that should be in the pool
+ */
+static void cvm_oct_free_hw_memory(int pool, int size, int elements)
+{
+	char *memory;
+	char *fpa;
+
+	do {
+		fpa = cvmx_fpa_alloc(pool);
+		if (fpa) {
+			elements--;
+			fpa = (char *)phys_to_virt(cvmx_ptr_to_phys(fpa));
+			memory = *((char **)fpa - 1);
+			kfree(memory);
+		}
+	} while (fpa);
+
+	if (elements < 0)
+		pr_warn("Freeing of pool %u had too many buffers (%d)\n",
+			pool, elements);
+	else if (elements > 0)
+		pr_warn("Warning: Freeing of pool %u is missing %d buffers\n",
+			pool, elements);
+}
+
+int cvm_oct_mem_fill_fpa(int pool, int size, int elements)
+{
+	int freed;
+
+	if (pool == CVMX_FPA_PACKET_POOL)
+		freed = cvm_oct_fill_hw_skbuff(pool, size, elements);
+	else
+		freed = cvm_oct_fill_hw_memory(pool, size, elements);
+	return freed;
+}
+
+void cvm_oct_mem_empty_fpa(int pool, int size, int elements)
+{
+	if (pool == CVMX_FPA_PACKET_POOL)
+		cvm_oct_free_hw_skbuff(pool, size, elements);
+	else
+		cvm_oct_free_hw_memory(pool, size, elements);
+}
diff --git a/drivers/staging/octeon/ethernet-mem.h b/drivers/staging/octeon/ethernet-mem.h
new file mode 100644
index 000000000000..692dcdb7154d
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-mem.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2007 Cavium Networks
+ */
+
+int cvm_oct_mem_fill_fpa(int pool, int size, int elements);
+void cvm_oct_mem_empty_fpa(int pool, int size, int elements);
diff --git a/drivers/staging/octeon/ethernet-rgmii.c b/drivers/staging/octeon/ethernet-rgmii.c
new file mode 100644
index 000000000000..0c4fac31540a
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-rgmii.c
@@ -0,0 +1,158 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2007 Cavium Networks
+ */
+
+#include <linux/kernel.h>
+#include <linux/netdevice.h>
+#include <linux/interrupt.h>
+#include <linux/phy.h>
+#include <linux/ratelimit.h>
+#include <net/dst.h>
+
+#include "octeon-ethernet.h"
+#include "ethernet-defines.h"
+#include "ethernet-util.h"
+#include "ethernet-mdio.h"
+
+static DEFINE_SPINLOCK(global_register_lock);
+
+static void cvm_oct_set_hw_preamble(struct octeon_ethernet *priv, bool enable)
+{
+	union cvmx_gmxx_rxx_frm_ctl gmxx_rxx_frm_ctl;
+	union cvmx_ipd_sub_port_fcs ipd_sub_port_fcs;
+	union cvmx_gmxx_rxx_int_reg gmxx_rxx_int_reg;
+	int interface = INTERFACE(priv->port);
+	int index = INDEX(priv->port);
+
+	/* Set preamble checking. */
+	gmxx_rxx_frm_ctl.u64 = cvmx_read_csr(CVMX_GMXX_RXX_FRM_CTL(index,
+								   interface));
+	gmxx_rxx_frm_ctl.s.pre_chk = enable;
+	cvmx_write_csr(CVMX_GMXX_RXX_FRM_CTL(index, interface),
+		       gmxx_rxx_frm_ctl.u64);
+
+	/* Set FCS stripping. */
+	ipd_sub_port_fcs.u64 = cvmx_read_csr(CVMX_IPD_SUB_PORT_FCS);
+	if (enable)
+		ipd_sub_port_fcs.s.port_bit |= 1ull << priv->port;
+	else
+		ipd_sub_port_fcs.s.port_bit &=
+					0xffffffffull ^ (1ull << priv->port);
+	cvmx_write_csr(CVMX_IPD_SUB_PORT_FCS, ipd_sub_port_fcs.u64);
+
+	/* Clear any error bits. */
+	gmxx_rxx_int_reg.u64 = cvmx_read_csr(CVMX_GMXX_RXX_INT_REG(index,
+								   interface));
+	cvmx_write_csr(CVMX_GMXX_RXX_INT_REG(index, interface),
+		       gmxx_rxx_int_reg.u64);
+}
+
+static void cvm_oct_check_preamble_errors(struct net_device *dev)
+{
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	union cvmx_helper_link_info link_info;
+	unsigned long flags;
+
+	link_info.u64 = priv->link_info;
+
+	/*
+	 * Take the global register lock since we are going to
+	 * touch registers that affect more than one port.
+	 */
+	spin_lock_irqsave(&global_register_lock, flags);
+
+	if (link_info.s.speed == 10 && priv->last_speed == 10) {
+		/*
+		 * Read the GMXX_RXX_INT_REG[PCTERR] bit and see if we are
+		 * getting preamble errors.
+		 */
+		int interface = INTERFACE(priv->port);
+		int index = INDEX(priv->port);
+		union cvmx_gmxx_rxx_int_reg gmxx_rxx_int_reg;
+
+		gmxx_rxx_int_reg.u64 = cvmx_read_csr(CVMX_GMXX_RXX_INT_REG
+							(index, interface));
+		if (gmxx_rxx_int_reg.s.pcterr) {
+			/*
+			 * We are getting preamble errors at 10Mbps. Most
+			 * likely the PHY is giving us packets with misaligned
+			 * preambles. In order to get these packets we need to
+			 * disable preamble checking and do it in software.
+			 */
+			cvm_oct_set_hw_preamble(priv, false);
+			printk_ratelimited("%s: Using 10Mbps with software preamble removal\n",
+					   dev->name);
+		}
+	} else {
+		/*
+		 * Since the 10Mbps preamble workaround is allowed we need to
+		 * enable preamble checking, FCS stripping, and clear error
+		 * bits on every speed change. If errors occur during 10Mbps
+		 * operation the above code will change this stuff
+		 */
+		if (priv->last_speed != link_info.s.speed)
+			cvm_oct_set_hw_preamble(priv, true);
+		priv->last_speed = link_info.s.speed;
+	}
+	spin_unlock_irqrestore(&global_register_lock, flags);
+}
+
+static void cvm_oct_rgmii_poll(struct net_device *dev)
+{
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	union cvmx_helper_link_info link_info;
+	bool status_change;
+
+	link_info = cvmx_helper_link_get(priv->port);
+	if (priv->link_info != link_info.u64 &&
+	    cvmx_helper_link_set(priv->port, link_info))
+		link_info.u64 = priv->link_info;
+	status_change = priv->link_info != link_info.u64;
+	priv->link_info = link_info.u64;
+
+	cvm_oct_check_preamble_errors(dev);
+
+	if (likely(!status_change))
+		return;
+
+	/* Tell core. */
+	if (link_info.s.link_up) {
+		if (!netif_carrier_ok(dev))
+			netif_carrier_on(dev);
+	} else if (netif_carrier_ok(dev)) {
+		netif_carrier_off(dev);
+	}
+	cvm_oct_note_carrier(priv, link_info);
+}
+
+int cvm_oct_rgmii_open(struct net_device *dev)
+{
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	int ret;
+
+	ret = cvm_oct_common_open(dev, cvm_oct_rgmii_poll);
+	if (ret)
+		return ret;
+
+	if (dev->phydev) {
+		/*
+		 * In phydev mode, we need still periodic polling for the
+		 * preamble error checking, and we also need to call this
+		 * function on every link state change.
+		 *
+		 * Only true RGMII ports need to be polled. In GMII mode, port
+		 * 0 is really a RGMII port.
+		 */
+		if ((priv->imode == CVMX_HELPER_INTERFACE_MODE_GMII &&
+		     priv->port  == 0) ||
+		    (priv->imode == CVMX_HELPER_INTERFACE_MODE_RGMII)) {
+			priv->poll = cvm_oct_check_preamble_errors;
+			cvm_oct_check_preamble_errors(dev);
+		}
+	}
+
+	return 0;
+}
diff --git a/drivers/staging/octeon/ethernet-rx.c b/drivers/staging/octeon/ethernet-rx.c
new file mode 100644
index 000000000000..2c16230f993c
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-rx.c
@@ -0,0 +1,538 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2010 Cavium Networks
+ */
+
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/cache.h>
+#include <linux/cpumask.h>
+#include <linux/netdevice.h>
+#include <linux/etherdevice.h>
+#include <linux/ip.h>
+#include <linux/string.h>
+#include <linux/prefetch.h>
+#include <linux/ratelimit.h>
+#include <linux/smp.h>
+#include <linux/interrupt.h>
+#include <net/dst.h>
+#ifdef CONFIG_XFRM
+#include <linux/xfrm.h>
+#include <net/xfrm.h>
+#endif /* CONFIG_XFRM */
+
+#include "octeon-ethernet.h"
+#include "ethernet-defines.h"
+#include "ethernet-mem.h"
+#include "ethernet-rx.h"
+#include "ethernet-util.h"
+
+static atomic_t oct_rx_ready = ATOMIC_INIT(0);
+
+static struct oct_rx_group {
+	int irq;
+	int group;
+	struct napi_struct napi;
+} oct_rx_group[16];
+
+/**
+ * cvm_oct_do_interrupt - interrupt handler.
+ * @irq: Interrupt number.
+ * @napi_id: Cookie to identify the NAPI instance.
+ *
+ * The interrupt occurs whenever the POW has packets in our group.
+ *
+ */
+static irqreturn_t cvm_oct_do_interrupt(int irq, void *napi_id)
+{
+	/* Disable the IRQ and start napi_poll. */
+	disable_irq_nosync(irq);
+	napi_schedule(napi_id);
+
+	return IRQ_HANDLED;
+}
+
+/**
+ * cvm_oct_check_rcv_error - process receive errors
+ * @work: Work queue entry pointing to the packet.
+ *
+ * Returns Non-zero if the packet can be dropped, zero otherwise.
+ */
+static inline int cvm_oct_check_rcv_error(struct cvmx_wqe *work)
+{
+	int port;
+
+	if (octeon_has_feature(OCTEON_FEATURE_PKND))
+		port = work->word0.pip.cn68xx.pknd;
+	else
+		port = work->word1.cn38xx.ipprt;
+
+	if ((work->word2.snoip.err_code == 10) && (work->word1.len <= 64)) {
+		/*
+		 * Ignore length errors on min size packets. Some
+		 * equipment incorrectly pads packets to 64+4FCS
+		 * instead of 60+4FCS.  Note these packets still get
+		 * counted as frame errors.
+		 */
+	} else if (work->word2.snoip.err_code == 5 ||
+		   work->word2.snoip.err_code == 7) {
+		/*
+		 * We received a packet with either an alignment error
+		 * or a FCS error. This may be signalling that we are
+		 * running 10Mbps with GMXX_RXX_FRM_CTL[PRE_CHK]
+		 * off. If this is the case we need to parse the
+		 * packet to determine if we can remove a non spec
+		 * preamble and generate a correct packet.
+		 */
+		int interface = cvmx_helper_get_interface_num(port);
+		int index = cvmx_helper_get_interface_index_num(port);
+		union cvmx_gmxx_rxx_frm_ctl gmxx_rxx_frm_ctl;
+
+		gmxx_rxx_frm_ctl.u64 =
+		    cvmx_read_csr(CVMX_GMXX_RXX_FRM_CTL(index, interface));
+		if (gmxx_rxx_frm_ctl.s.pre_chk == 0) {
+			u8 *ptr =
+			    cvmx_phys_to_ptr(work->packet_ptr.s.addr);
+			int i = 0;
+
+			while (i < work->word1.len - 1) {
+				if (*ptr != 0x55)
+					break;
+				ptr++;
+				i++;
+			}
+
+			if (*ptr == 0xd5) {
+				/* Port received 0xd5 preamble */
+				work->packet_ptr.s.addr += i + 1;
+				work->word1.len -= i + 5;
+			} else if ((*ptr & 0xf) == 0xd) {
+				/* Port received 0xd preamble */
+				work->packet_ptr.s.addr += i;
+				work->word1.len -= i + 4;
+				for (i = 0; i < work->word1.len; i++) {
+					*ptr =
+					    ((*ptr & 0xf0) >> 4) |
+					    ((*(ptr + 1) & 0xf) << 4);
+					ptr++;
+				}
+			} else {
+				printk_ratelimited("Port %d unknown preamble, packet dropped\n",
+						   port);
+				cvm_oct_free_work(work);
+				return 1;
+			}
+		}
+	} else {
+		printk_ratelimited("Port %d receive error code %d, packet dropped\n",
+				   port, work->word2.snoip.err_code);
+		cvm_oct_free_work(work);
+		return 1;
+	}
+
+	return 0;
+}
+
+static void copy_segments_to_skb(struct cvmx_wqe *work, struct sk_buff *skb)
+{
+	int segments = work->word2.s.bufs;
+	union cvmx_buf_ptr segment_ptr = work->packet_ptr;
+	int len = work->word1.len;
+	int segment_size;
+
+	while (segments--) {
+		union cvmx_buf_ptr next_ptr;
+
+		next_ptr = *(union cvmx_buf_ptr *)
+			cvmx_phys_to_ptr(segment_ptr.s.addr - 8);
+
+		/*
+		 * Octeon Errata PKI-100: The segment size is wrong.
+		 *
+		 * Until it is fixed, calculate the segment size based on
+		 * the packet pool buffer size.
+		 * When it is fixed, the following line should be replaced
+		 * with this one:
+		 * int segment_size = segment_ptr.s.size;
+		 */
+		segment_size =
+			CVMX_FPA_PACKET_POOL_SIZE -
+			(segment_ptr.s.addr -
+			 (((segment_ptr.s.addr >> 7) -
+			   segment_ptr.s.back) << 7));
+
+		/* Don't copy more than what is left in the packet */
+		if (segment_size > len)
+			segment_size = len;
+
+		/* Copy the data into the packet */
+		skb_put_data(skb, cvmx_phys_to_ptr(segment_ptr.s.addr),
+			     segment_size);
+		len -= segment_size;
+		segment_ptr = next_ptr;
+	}
+}
+
+static int cvm_oct_poll(struct oct_rx_group *rx_group, int budget)
+{
+	const int	coreid = cvmx_get_core_num();
+	u64	old_group_mask;
+	u64	old_scratch;
+	int		rx_count = 0;
+	int		did_work_request = 0;
+	int		packet_not_copied;
+
+	/* Prefetch cvm_oct_device since we know we need it soon */
+	prefetch(cvm_oct_device);
+
+	if (USE_ASYNC_IOBDMA) {
+		/* Save scratch in case userspace is using it */
+		CVMX_SYNCIOBDMA;
+		old_scratch = cvmx_scratch_read64(CVMX_SCR_SCRATCH);
+	}
+
+	/* Only allow work for our group (and preserve priorities) */
+	if (OCTEON_IS_MODEL(OCTEON_CN68XX)) {
+		old_group_mask = cvmx_read_csr(CVMX_SSO_PPX_GRP_MSK(coreid));
+		cvmx_write_csr(CVMX_SSO_PPX_GRP_MSK(coreid),
+			       BIT(rx_group->group));
+		cvmx_read_csr(CVMX_SSO_PPX_GRP_MSK(coreid)); /* Flush */
+	} else {
+		old_group_mask = cvmx_read_csr(CVMX_POW_PP_GRP_MSKX(coreid));
+		cvmx_write_csr(CVMX_POW_PP_GRP_MSKX(coreid),
+			       (old_group_mask & ~0xFFFFull) |
+			       BIT(rx_group->group));
+	}
+
+	if (USE_ASYNC_IOBDMA) {
+		cvmx_pow_work_request_async(CVMX_SCR_SCRATCH, CVMX_POW_NO_WAIT);
+		did_work_request = 1;
+	}
+
+	while (rx_count < budget) {
+		struct sk_buff *skb = NULL;
+		struct sk_buff **pskb = NULL;
+		int skb_in_hw;
+		struct cvmx_wqe *work;
+		int port;
+
+		if (USE_ASYNC_IOBDMA && did_work_request)
+			work = cvmx_pow_work_response_async(CVMX_SCR_SCRATCH);
+		else
+			work = cvmx_pow_work_request_sync(CVMX_POW_NO_WAIT);
+
+		prefetch(work);
+		did_work_request = 0;
+		if (!work) {
+			if (OCTEON_IS_MODEL(OCTEON_CN68XX)) {
+				cvmx_write_csr(CVMX_SSO_WQ_IQ_DIS,
+					       BIT(rx_group->group));
+				cvmx_write_csr(CVMX_SSO_WQ_INT,
+					       BIT(rx_group->group));
+			} else {
+				union cvmx_pow_wq_int wq_int;
+
+				wq_int.u64 = 0;
+				wq_int.s.iq_dis = BIT(rx_group->group);
+				wq_int.s.wq_int = BIT(rx_group->group);
+				cvmx_write_csr(CVMX_POW_WQ_INT, wq_int.u64);
+			}
+			break;
+		}
+		pskb = (struct sk_buff **)
+			(cvm_oct_get_buffer_ptr(work->packet_ptr) -
+			sizeof(void *));
+		prefetch(pskb);
+
+		if (USE_ASYNC_IOBDMA && rx_count < (budget - 1)) {
+			cvmx_pow_work_request_async_nocheck(CVMX_SCR_SCRATCH,
+							    CVMX_POW_NO_WAIT);
+			did_work_request = 1;
+		}
+		rx_count++;
+
+		skb_in_hw = work->word2.s.bufs == 1;
+		if (likely(skb_in_hw)) {
+			skb = *pskb;
+			prefetch(&skb->head);
+			prefetch(&skb->len);
+		}
+
+		if (octeon_has_feature(OCTEON_FEATURE_PKND))
+			port = work->word0.pip.cn68xx.pknd;
+		else
+			port = work->word1.cn38xx.ipprt;
+
+		prefetch(cvm_oct_device[port]);
+
+		/* Immediately throw away all packets with receive errors */
+		if (unlikely(work->word2.snoip.rcv_error)) {
+			if (cvm_oct_check_rcv_error(work))
+				continue;
+		}
+
+		/*
+		 * We can only use the zero copy path if skbuffs are
+		 * in the FPA pool and the packet fits in a single
+		 * buffer.
+		 */
+		if (likely(skb_in_hw)) {
+			skb->data = skb->head + work->packet_ptr.s.addr -
+				cvmx_ptr_to_phys(skb->head);
+			prefetch(skb->data);
+			skb->len = work->word1.len;
+			skb_set_tail_pointer(skb, skb->len);
+			packet_not_copied = 1;
+		} else {
+			/*
+			 * We have to copy the packet. First allocate
+			 * an skbuff for it.
+			 */
+			skb = dev_alloc_skb(work->word1.len);
+			if (!skb) {
+				cvm_oct_free_work(work);
+				continue;
+			}
+
+			/*
+			 * Check if we've received a packet that was
+			 * entirely stored in the work entry.
+			 */
+			if (unlikely(work->word2.s.bufs == 0)) {
+				u8 *ptr = work->packet_data;
+
+				if (likely(!work->word2.s.not_IP)) {
+					/*
+					 * The beginning of the packet
+					 * moves for IP packets.
+					 */
+					if (work->word2.s.is_v6)
+						ptr += 2;
+					else
+						ptr += 6;
+				}
+				skb_put_data(skb, ptr, work->word1.len);
+				/* No packet buffers to free */
+			} else {
+				copy_segments_to_skb(work, skb);
+			}
+			packet_not_copied = 0;
+		}
+		if (likely((port < TOTAL_NUMBER_OF_PORTS) &&
+			   cvm_oct_device[port])) {
+			struct net_device *dev = cvm_oct_device[port];
+
+			/*
+			 * Only accept packets for devices that are
+			 * currently up.
+			 */
+			if (likely(dev->flags & IFF_UP)) {
+				skb->protocol = eth_type_trans(skb, dev);
+				skb->dev = dev;
+
+				if (unlikely(work->word2.s.not_IP ||
+					     work->word2.s.IP_exc ||
+					     work->word2.s.L4_error ||
+					     !work->word2.s.tcp_or_udp))
+					skb->ip_summed = CHECKSUM_NONE;
+				else
+					skb->ip_summed = CHECKSUM_UNNECESSARY;
+
+				/* Increment RX stats for virtual ports */
+				if (port >= CVMX_PIP_NUM_INPUT_PORTS) {
+					dev->stats.rx_packets++;
+					dev->stats.rx_bytes += skb->len;
+				}
+				netif_receive_skb(skb);
+			} else {
+				/*
+				 * Drop any packet received for a device that
+				 * isn't up.
+				 */
+				dev->stats.rx_dropped++;
+				dev_kfree_skb_irq(skb);
+			}
+		} else {
+			/*
+			 * Drop any packet received for a device that
+			 * doesn't exist.
+			 */
+			printk_ratelimited("Port %d not controlled by Linux, packet dropped\n",
+					   port);
+			dev_kfree_skb_irq(skb);
+		}
+		/*
+		 * Check to see if the skbuff and work share the same
+		 * packet buffer.
+		 */
+		if (likely(packet_not_copied)) {
+			/*
+			 * This buffer needs to be replaced, increment
+			 * the number of buffers we need to free by
+			 * one.
+			 */
+			cvmx_fau_atomic_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE,
+					      1);
+
+			cvmx_fpa_free(work, CVMX_FPA_WQE_POOL, 1);
+		} else {
+			cvm_oct_free_work(work);
+		}
+	}
+	/* Restore the original POW group mask */
+	if (OCTEON_IS_MODEL(OCTEON_CN68XX)) {
+		cvmx_write_csr(CVMX_SSO_PPX_GRP_MSK(coreid), old_group_mask);
+		cvmx_read_csr(CVMX_SSO_PPX_GRP_MSK(coreid)); /* Flush */
+	} else {
+		cvmx_write_csr(CVMX_POW_PP_GRP_MSKX(coreid), old_group_mask);
+	}
+
+	if (USE_ASYNC_IOBDMA) {
+		/* Restore the scratch area */
+		cvmx_scratch_write64(CVMX_SCR_SCRATCH, old_scratch);
+	}
+	cvm_oct_rx_refill_pool(0);
+
+	return rx_count;
+}
+
+/**
+ * cvm_oct_napi_poll - the NAPI poll function.
+ * @napi: The NAPI instance.
+ * @budget: Maximum number of packets to receive.
+ *
+ * Returns the number of packets processed.
+ */
+static int cvm_oct_napi_poll(struct napi_struct *napi, int budget)
+{
+	struct oct_rx_group *rx_group = container_of(napi, struct oct_rx_group,
+						     napi);
+	int rx_count;
+
+	rx_count = cvm_oct_poll(rx_group, budget);
+
+	if (rx_count < budget) {
+		/* No more work */
+		napi_complete_done(napi, rx_count);
+		enable_irq(rx_group->irq);
+	}
+	return rx_count;
+}
+
+#ifdef CONFIG_NET_POLL_CONTROLLER
+/**
+ * cvm_oct_poll_controller - poll for receive packets
+ * device.
+ *
+ * @dev:    Device to poll. Unused
+ */
+void cvm_oct_poll_controller(struct net_device *dev)
+{
+	int i;
+
+	if (!atomic_read(&oct_rx_ready))
+		return;
+
+	for (i = 0; i < ARRAY_SIZE(oct_rx_group); i++) {
+		if (!(pow_receive_groups & BIT(i)))
+			continue;
+
+		cvm_oct_poll(&oct_rx_group[i], 16);
+	}
+}
+#endif
+
+void cvm_oct_rx_initialize(void)
+{
+	int i;
+	struct net_device *dev_for_napi = NULL;
+
+	for (i = 0; i < TOTAL_NUMBER_OF_PORTS; i++) {
+		if (cvm_oct_device[i]) {
+			dev_for_napi = cvm_oct_device[i];
+			break;
+		}
+	}
+
+	if (!dev_for_napi)
+		panic("No net_devices were allocated.");
+
+	for (i = 0; i < ARRAY_SIZE(oct_rx_group); i++) {
+		int ret;
+
+		if (!(pow_receive_groups & BIT(i)))
+			continue;
+
+		netif_napi_add(dev_for_napi, &oct_rx_group[i].napi,
+			       cvm_oct_napi_poll, rx_napi_weight);
+		napi_enable(&oct_rx_group[i].napi);
+
+		oct_rx_group[i].irq = OCTEON_IRQ_WORKQ0 + i;
+		oct_rx_group[i].group = i;
+
+		/* Register an IRQ handler to receive POW interrupts */
+		ret = request_irq(oct_rx_group[i].irq, cvm_oct_do_interrupt, 0,
+				  "Ethernet", &oct_rx_group[i].napi);
+		if (ret)
+			panic("Could not acquire Ethernet IRQ %d\n",
+			      oct_rx_group[i].irq);
+
+		disable_irq_nosync(oct_rx_group[i].irq);
+
+		/* Enable POW interrupt when our port has at least one packet */
+		if (OCTEON_IS_MODEL(OCTEON_CN68XX)) {
+			union cvmx_sso_wq_int_thrx int_thr;
+			union cvmx_pow_wq_int_pc int_pc;
+
+			int_thr.u64 = 0;
+			int_thr.s.tc_en = 1;
+			int_thr.s.tc_thr = 1;
+			cvmx_write_csr(CVMX_SSO_WQ_INT_THRX(i), int_thr.u64);
+
+			int_pc.u64 = 0;
+			int_pc.s.pc_thr = 5;
+			cvmx_write_csr(CVMX_SSO_WQ_INT_PC, int_pc.u64);
+		} else {
+			union cvmx_pow_wq_int_thrx int_thr;
+			union cvmx_pow_wq_int_pc int_pc;
+
+			int_thr.u64 = 0;
+			int_thr.s.tc_en = 1;
+			int_thr.s.tc_thr = 1;
+			cvmx_write_csr(CVMX_POW_WQ_INT_THRX(i), int_thr.u64);
+
+			int_pc.u64 = 0;
+			int_pc.s.pc_thr = 5;
+			cvmx_write_csr(CVMX_POW_WQ_INT_PC, int_pc.u64);
+		}
+
+		/* Schedule NAPI now. This will indirectly enable the
+		 * interrupt.
+		 */
+		napi_schedule(&oct_rx_group[i].napi);
+	}
+	atomic_inc(&oct_rx_ready);
+}
+
+void cvm_oct_rx_shutdown(void)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(oct_rx_group); i++) {
+		if (!(pow_receive_groups & BIT(i)))
+			continue;
+
+		/* Disable POW interrupt */
+		if (OCTEON_IS_MODEL(OCTEON_CN68XX))
+			cvmx_write_csr(CVMX_SSO_WQ_INT_THRX(i), 0);
+		else
+			cvmx_write_csr(CVMX_POW_WQ_INT_THRX(i), 0);
+
+		/* Free the interrupt handler */
+		free_irq(oct_rx_group[i].irq, cvm_oct_device);
+
+		netif_napi_del(&oct_rx_group[i].napi);
+	}
+}
diff --git a/drivers/staging/octeon/ethernet-rx.h b/drivers/staging/octeon/ethernet-rx.h
new file mode 100644
index 000000000000..ff6482fa20d6
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-rx.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2007 Cavium Networks
+ */
+
+void cvm_oct_poll_controller(struct net_device *dev);
+void cvm_oct_rx_initialize(void);
+void cvm_oct_rx_shutdown(void);
+
+static inline void cvm_oct_rx_refill_pool(int fill_threshold)
+{
+	int number_to_free;
+	int num_freed;
+	/* Refill the packet buffer pool */
+	number_to_free =
+		cvmx_fau_fetch_and_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE, 0);
+
+	if (number_to_free > fill_threshold) {
+		cvmx_fau_atomic_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE,
+				      -number_to_free);
+		num_freed = cvm_oct_mem_fill_fpa(CVMX_FPA_PACKET_POOL,
+						 CVMX_FPA_PACKET_POOL_SIZE,
+						 number_to_free);
+		if (num_freed != number_to_free) {
+			cvmx_fau_atomic_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE,
+					      number_to_free - num_freed);
+		}
+	}
+}
diff --git a/drivers/staging/octeon/ethernet-sgmii.c b/drivers/staging/octeon/ethernet-sgmii.c
new file mode 100644
index 000000000000..d7fbd9159302
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-sgmii.c
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2007 Cavium Networks
+ */
+
+#include <linux/phy.h>
+#include <linux/kernel.h>
+#include <linux/netdevice.h>
+#include <linux/ratelimit.h>
+#include <net/dst.h>
+
+#include "octeon-ethernet.h"
+#include "ethernet-defines.h"
+#include "ethernet-util.h"
+#include "ethernet-mdio.h"
+
+int cvm_oct_sgmii_open(struct net_device *dev)
+{
+	return cvm_oct_common_open(dev, cvm_oct_link_poll);
+}
+
+int cvm_oct_sgmii_init(struct net_device *dev)
+{
+	cvm_oct_common_init(dev);
+
+	/* FIXME: Need autoneg logic */
+	return 0;
+}
diff --git a/drivers/staging/octeon/ethernet-spi.c b/drivers/staging/octeon/ethernet-spi.c
new file mode 100644
index 000000000000..c582403e6a1f
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-spi.c
@@ -0,0 +1,226 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2007 Cavium Networks
+ */
+
+#include <linux/kernel.h>
+#include <linux/netdevice.h>
+#include <linux/interrupt.h>
+#include <net/dst.h>
+
+#include "octeon-ethernet.h"
+#include "ethernet-defines.h"
+#include "ethernet-util.h"
+
+static int number_spi_ports;
+static int need_retrain[2] = { 0, 0 };
+
+static void cvm_oct_spxx_int_pr(union cvmx_spxx_int_reg spx_int_reg, int index)
+{
+	if (spx_int_reg.s.spf)
+		pr_err("SPI%d: SRX Spi4 interface down\n", index);
+	if (spx_int_reg.s.calerr)
+		pr_err("SPI%d: SRX Spi4 Calendar table parity error\n", index);
+	if (spx_int_reg.s.syncerr)
+		pr_err("SPI%d: SRX Consecutive Spi4 DIP4 errors have exceeded SPX_ERR_CTL[ERRCNT]\n",
+		       index);
+	if (spx_int_reg.s.diperr)
+		pr_err("SPI%d: SRX Spi4 DIP4 error\n", index);
+	if (spx_int_reg.s.tpaovr)
+		pr_err("SPI%d: SRX Selected port has hit TPA overflow\n",
+		       index);
+	if (spx_int_reg.s.rsverr)
+		pr_err("SPI%d: SRX Spi4 reserved control word detected\n",
+		       index);
+	if (spx_int_reg.s.drwnng)
+		pr_err("SPI%d: SRX Spi4 receive FIFO drowning/overflow\n",
+		       index);
+	if (spx_int_reg.s.clserr)
+		pr_err("SPI%d: SRX Spi4 packet closed on non-16B alignment without EOP\n",
+		       index);
+	if (spx_int_reg.s.spiovr)
+		pr_err("SPI%d: SRX Spi4 async FIFO overflow\n", index);
+	if (spx_int_reg.s.abnorm)
+		pr_err("SPI%d: SRX Abnormal packet termination (ERR bit)\n",
+		       index);
+	if (spx_int_reg.s.prtnxa)
+		pr_err("SPI%d: SRX Port out of range\n", index);
+}
+
+static void cvm_oct_stxx_int_pr(union cvmx_stxx_int_reg stx_int_reg, int index)
+{
+	if (stx_int_reg.s.syncerr)
+		pr_err("SPI%d: STX Interface encountered a fatal error\n",
+		       index);
+	if (stx_int_reg.s.frmerr)
+		pr_err("SPI%d: STX FRMCNT has exceeded STX_DIP_CNT[MAXFRM]\n",
+		       index);
+	if (stx_int_reg.s.unxfrm)
+		pr_err("SPI%d: STX Unexpected framing sequence\n", index);
+	if (stx_int_reg.s.nosync)
+		pr_err("SPI%d: STX ERRCNT has exceeded STX_DIP_CNT[MAXDIP]\n",
+		       index);
+	if (stx_int_reg.s.diperr)
+		pr_err("SPI%d: STX DIP2 error on the Spi4 Status channel\n",
+		       index);
+	if (stx_int_reg.s.datovr)
+		pr_err("SPI%d: STX Spi4 FIFO overflow error\n", index);
+	if (stx_int_reg.s.ovrbst)
+		pr_err("SPI%d: STX Transmit packet burst too big\n", index);
+	if (stx_int_reg.s.calpar1)
+		pr_err("SPI%d: STX Calendar Table Parity Error Bank%d\n",
+		       index, 1);
+	if (stx_int_reg.s.calpar0)
+		pr_err("SPI%d: STX Calendar Table Parity Error Bank%d\n",
+		       index, 0);
+}
+
+static irqreturn_t cvm_oct_spi_spx_int(int index)
+{
+	union cvmx_spxx_int_reg spx_int_reg;
+	union cvmx_stxx_int_reg stx_int_reg;
+
+	spx_int_reg.u64 = cvmx_read_csr(CVMX_SPXX_INT_REG(index));
+	cvmx_write_csr(CVMX_SPXX_INT_REG(index), spx_int_reg.u64);
+	if (!need_retrain[index]) {
+		spx_int_reg.u64 &= cvmx_read_csr(CVMX_SPXX_INT_MSK(index));
+		cvm_oct_spxx_int_pr(spx_int_reg, index);
+	}
+
+	stx_int_reg.u64 = cvmx_read_csr(CVMX_STXX_INT_REG(index));
+	cvmx_write_csr(CVMX_STXX_INT_REG(index), stx_int_reg.u64);
+	if (!need_retrain[index]) {
+		stx_int_reg.u64 &= cvmx_read_csr(CVMX_STXX_INT_MSK(index));
+		cvm_oct_stxx_int_pr(stx_int_reg, index);
+	}
+
+	cvmx_write_csr(CVMX_SPXX_INT_MSK(index), 0);
+	cvmx_write_csr(CVMX_STXX_INT_MSK(index), 0);
+	need_retrain[index] = 1;
+
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t cvm_oct_spi_rml_interrupt(int cpl, void *dev_id)
+{
+	irqreturn_t return_status = IRQ_NONE;
+	union cvmx_npi_rsl_int_blocks rsl_int_blocks;
+
+	/* Check and see if this interrupt was caused by the GMX block */
+	rsl_int_blocks.u64 = cvmx_read_csr(CVMX_NPI_RSL_INT_BLOCKS);
+	if (rsl_int_blocks.s.spx1) /* 19 - SPX1_INT_REG & STX1_INT_REG */
+		return_status = cvm_oct_spi_spx_int(1);
+
+	if (rsl_int_blocks.s.spx0) /* 18 - SPX0_INT_REG & STX0_INT_REG */
+		return_status = cvm_oct_spi_spx_int(0);
+
+	return return_status;
+}
+
+static void cvm_oct_spi_enable_error_reporting(int interface)
+{
+	union cvmx_spxx_int_msk spxx_int_msk;
+	union cvmx_stxx_int_msk stxx_int_msk;
+
+	spxx_int_msk.u64 = cvmx_read_csr(CVMX_SPXX_INT_MSK(interface));
+	spxx_int_msk.s.calerr = 1;
+	spxx_int_msk.s.syncerr = 1;
+	spxx_int_msk.s.diperr = 1;
+	spxx_int_msk.s.tpaovr = 1;
+	spxx_int_msk.s.rsverr = 1;
+	spxx_int_msk.s.drwnng = 1;
+	spxx_int_msk.s.clserr = 1;
+	spxx_int_msk.s.spiovr = 1;
+	spxx_int_msk.s.abnorm = 1;
+	spxx_int_msk.s.prtnxa = 1;
+	cvmx_write_csr(CVMX_SPXX_INT_MSK(interface), spxx_int_msk.u64);
+
+	stxx_int_msk.u64 = cvmx_read_csr(CVMX_STXX_INT_MSK(interface));
+	stxx_int_msk.s.frmerr = 1;
+	stxx_int_msk.s.unxfrm = 1;
+	stxx_int_msk.s.nosync = 1;
+	stxx_int_msk.s.diperr = 1;
+	stxx_int_msk.s.datovr = 1;
+	stxx_int_msk.s.ovrbst = 1;
+	stxx_int_msk.s.calpar1 = 1;
+	stxx_int_msk.s.calpar0 = 1;
+	cvmx_write_csr(CVMX_STXX_INT_MSK(interface), stxx_int_msk.u64);
+}
+
+static void cvm_oct_spi_poll(struct net_device *dev)
+{
+	static int spi4000_port;
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	int interface;
+
+	for (interface = 0; interface < 2; interface++) {
+		if ((priv->port == interface * 16) && need_retrain[interface]) {
+			if (cvmx_spi_restart_interface
+			    (interface, CVMX_SPI_MODE_DUPLEX, 10) == 0) {
+				need_retrain[interface] = 0;
+				cvm_oct_spi_enable_error_reporting(interface);
+			}
+		}
+
+		/*
+		 * The SPI4000 TWSI interface is very slow. In order
+		 * not to bring the system to a crawl, we only poll a
+		 * single port every second. This means negotiation
+		 * speed changes take up to 10 seconds, but at least
+		 * we don't waste absurd amounts of time waiting for
+		 * TWSI.
+		 */
+		if (priv->port == spi4000_port) {
+			/*
+			 * This function does nothing if it is called on an
+			 * interface without a SPI4000.
+			 */
+			cvmx_spi4000_check_speed(interface, priv->port);
+			/*
+			 * Normal ordering increments. By decrementing
+			 * we only match once per iteration.
+			 */
+			spi4000_port--;
+			if (spi4000_port < 0)
+				spi4000_port = 10;
+		}
+	}
+}
+
+int cvm_oct_spi_init(struct net_device *dev)
+{
+	int r;
+	struct octeon_ethernet *priv = netdev_priv(dev);
+
+	if (number_spi_ports == 0) {
+		r = request_irq(OCTEON_IRQ_RML, cvm_oct_spi_rml_interrupt,
+				IRQF_SHARED, "SPI", &number_spi_ports);
+		if (r)
+			return r;
+	}
+	number_spi_ports++;
+
+	if ((priv->port == 0) || (priv->port == 16)) {
+		cvm_oct_spi_enable_error_reporting(INTERFACE(priv->port));
+		priv->poll = cvm_oct_spi_poll;
+	}
+	cvm_oct_common_init(dev);
+	return 0;
+}
+
+void cvm_oct_spi_uninit(struct net_device *dev)
+{
+	int interface;
+
+	cvm_oct_common_uninit(dev);
+	number_spi_ports--;
+	if (number_spi_ports == 0) {
+		for (interface = 0; interface < 2; interface++) {
+			cvmx_write_csr(CVMX_SPXX_INT_MSK(interface), 0);
+			cvmx_write_csr(CVMX_STXX_INT_MSK(interface), 0);
+		}
+		free_irq(OCTEON_IRQ_RML, &number_spi_ports);
+	}
+}
diff --git a/drivers/staging/octeon/ethernet-tx.c b/drivers/staging/octeon/ethernet-tx.c
new file mode 100644
index 000000000000..b334cf89794e
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-tx.c
@@ -0,0 +1,717 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2010 Cavium Networks
+ */
+
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/netdevice.h>
+#include <linux/etherdevice.h>
+#include <linux/ip.h>
+#include <linux/ratelimit.h>
+#include <linux/string.h>
+#include <linux/interrupt.h>
+#include <net/dst.h>
+#ifdef CONFIG_XFRM
+#include <linux/xfrm.h>
+#include <net/xfrm.h>
+#endif /* CONFIG_XFRM */
+
+#include <linux/atomic.h>
+#include <net/sch_generic.h>
+
+#include "octeon-ethernet.h"
+#include "ethernet-defines.h"
+#include "ethernet-tx.h"
+#include "ethernet-util.h"
+
+#define CVM_OCT_SKB_CB(skb)	((u64 *)((skb)->cb))
+
+/*
+ * You can define GET_SKBUFF_QOS() to override how the skbuff output
+ * function determines which output queue is used. The default
+ * implementation always uses the base queue for the port. If, for
+ * example, you wanted to use the skb->priority field, define
+ * GET_SKBUFF_QOS as: #define GET_SKBUFF_QOS(skb) ((skb)->priority)
+ */
+#ifndef GET_SKBUFF_QOS
+#define GET_SKBUFF_QOS(skb) 0
+#endif
+
+static void cvm_oct_tx_do_cleanup(unsigned long arg);
+static DECLARE_TASKLET(cvm_oct_tx_cleanup_tasklet, cvm_oct_tx_do_cleanup, 0);
+
+/* Maximum number of SKBs to try to free per xmit packet. */
+#define MAX_SKB_TO_FREE (MAX_OUT_QUEUE_DEPTH * 2)
+
+static inline int cvm_oct_adjust_skb_to_free(int skb_to_free, int fau)
+{
+	int undo;
+
+	undo = skb_to_free > 0 ? MAX_SKB_TO_FREE : skb_to_free +
+						   MAX_SKB_TO_FREE;
+	if (undo > 0)
+		cvmx_fau_atomic_add32(fau, -undo);
+	skb_to_free = -skb_to_free > MAX_SKB_TO_FREE ? MAX_SKB_TO_FREE :
+						       -skb_to_free;
+	return skb_to_free;
+}
+
+static void cvm_oct_kick_tx_poll_watchdog(void)
+{
+	union cvmx_ciu_timx ciu_timx;
+
+	ciu_timx.u64 = 0;
+	ciu_timx.s.one_shot = 1;
+	ciu_timx.s.len = cvm_oct_tx_poll_interval;
+	cvmx_write_csr(CVMX_CIU_TIMX(1), ciu_timx.u64);
+}
+
+static void cvm_oct_free_tx_skbs(struct net_device *dev)
+{
+	int skb_to_free;
+	int qos, queues_per_port;
+	int total_freed = 0;
+	int total_remaining = 0;
+	unsigned long flags;
+	struct octeon_ethernet *priv = netdev_priv(dev);
+
+	queues_per_port = cvmx_pko_get_num_queues(priv->port);
+	/* Drain any pending packets in the free list */
+	for (qos = 0; qos < queues_per_port; qos++) {
+		if (skb_queue_len(&priv->tx_free_list[qos]) == 0)
+			continue;
+		skb_to_free = cvmx_fau_fetch_and_add32(priv->fau + qos * 4,
+						       MAX_SKB_TO_FREE);
+		skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
+							 priv->fau + qos * 4);
+		total_freed += skb_to_free;
+		if (skb_to_free > 0) {
+			struct sk_buff *to_free_list = NULL;
+
+			spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
+			while (skb_to_free > 0) {
+				struct sk_buff *t;
+
+				t = __skb_dequeue(&priv->tx_free_list[qos]);
+				t->next = to_free_list;
+				to_free_list = t;
+				skb_to_free--;
+			}
+			spin_unlock_irqrestore(&priv->tx_free_list[qos].lock,
+					       flags);
+			/* Do the actual freeing outside of the lock. */
+			while (to_free_list) {
+				struct sk_buff *t = to_free_list;
+
+				to_free_list = to_free_list->next;
+				dev_kfree_skb_any(t);
+			}
+		}
+		total_remaining += skb_queue_len(&priv->tx_free_list[qos]);
+	}
+	if (total_remaining < MAX_OUT_QUEUE_DEPTH && netif_queue_stopped(dev))
+		netif_wake_queue(dev);
+	if (total_remaining)
+		cvm_oct_kick_tx_poll_watchdog();
+}
+
+/**
+ * cvm_oct_xmit - transmit a packet
+ * @skb:    Packet to send
+ * @dev:    Device info structure
+ *
+ * Returns Always returns NETDEV_TX_OK
+ */
+int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
+{
+	union cvmx_pko_command_word0 pko_command;
+	union cvmx_buf_ptr hw_buffer;
+	u64 old_scratch;
+	u64 old_scratch2;
+	int qos;
+	int i;
+	enum {QUEUE_CORE, QUEUE_HW, QUEUE_DROP} queue_type;
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	struct sk_buff *to_free_list;
+	int skb_to_free;
+	int buffers_to_free;
+	u32 total_to_clean;
+	unsigned long flags;
+#if REUSE_SKBUFFS_WITHOUT_FREE
+	unsigned char *fpa_head;
+#endif
+
+	/*
+	 * Prefetch the private data structure.  It is larger than the
+	 * one cache line.
+	 */
+	prefetch(priv);
+
+	/*
+	 * The check on CVMX_PKO_QUEUES_PER_PORT_* is designed to
+	 * completely remove "qos" in the event neither interface
+	 * supports multiple queues per port.
+	 */
+	if ((CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 > 1) ||
+	    (CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 > 1)) {
+		qos = GET_SKBUFF_QOS(skb);
+		if (qos <= 0)
+			qos = 0;
+		else if (qos >= cvmx_pko_get_num_queues(priv->port))
+			qos = 0;
+	} else {
+		qos = 0;
+	}
+
+	if (USE_ASYNC_IOBDMA) {
+		/* Save scratch in case userspace is using it */
+		CVMX_SYNCIOBDMA;
+		old_scratch = cvmx_scratch_read64(CVMX_SCR_SCRATCH);
+		old_scratch2 = cvmx_scratch_read64(CVMX_SCR_SCRATCH + 8);
+
+		/*
+		 * Fetch and increment the number of packets to be
+		 * freed.
+		 */
+		cvmx_fau_async_fetch_and_add32(CVMX_SCR_SCRATCH + 8,
+					       FAU_NUM_PACKET_BUFFERS_TO_FREE,
+					       0);
+		cvmx_fau_async_fetch_and_add32(CVMX_SCR_SCRATCH,
+					       priv->fau + qos * 4,
+					       MAX_SKB_TO_FREE);
+	}
+
+	/*
+	 * We have space for 6 segment pointers, If there will be more
+	 * than that, we must linearize.
+	 */
+	if (unlikely(skb_shinfo(skb)->nr_frags > 5)) {
+		if (unlikely(__skb_linearize(skb))) {
+			queue_type = QUEUE_DROP;
+			if (USE_ASYNC_IOBDMA) {
+				/*
+				 * Get the number of skbuffs in use
+				 * by the hardware
+				 */
+				CVMX_SYNCIOBDMA;
+				skb_to_free =
+					cvmx_scratch_read64(CVMX_SCR_SCRATCH);
+			} else {
+				/*
+				 * Get the number of skbuffs in use
+				 * by the hardware
+				 */
+				skb_to_free =
+				     cvmx_fau_fetch_and_add32(priv->fau +
+							      qos * 4,
+							      MAX_SKB_TO_FREE);
+			}
+			skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
+								 priv->fau +
+								 qos * 4);
+			spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
+			goto skip_xmit;
+		}
+	}
+
+	/*
+	 * The CN3XXX series of parts has an errata (GMX-401) which
+	 * causes the GMX block to hang if a collision occurs towards
+	 * the end of a <68 byte packet. As a workaround for this, we
+	 * pad packets to be 68 bytes whenever we are in half duplex
+	 * mode. We don't handle the case of having a small packet but
+	 * no room to add the padding.  The kernel should always give
+	 * us at least a cache line
+	 */
+	if ((skb->len < 64) && OCTEON_IS_MODEL(OCTEON_CN3XXX)) {
+		union cvmx_gmxx_prtx_cfg gmx_prt_cfg;
+		int interface = INTERFACE(priv->port);
+		int index = INDEX(priv->port);
+
+		if (interface < 2) {
+			/* We only need to pad packet in half duplex mode */
+			gmx_prt_cfg.u64 =
+			    cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
+			if (gmx_prt_cfg.s.duplex == 0) {
+				int add_bytes = 64 - skb->len;
+
+				if ((skb_tail_pointer(skb) + add_bytes) <=
+				    skb_end_pointer(skb))
+					__skb_put_zero(skb, add_bytes);
+			}
+		}
+	}
+
+	/* Build the PKO command */
+	pko_command.u64 = 0;
+#ifdef __LITTLE_ENDIAN
+	pko_command.s.le = 1;
+#endif
+	pko_command.s.n2 = 1;	/* Don't pollute L2 with the outgoing packet */
+	pko_command.s.segs = 1;
+	pko_command.s.total_bytes = skb->len;
+	pko_command.s.size0 = CVMX_FAU_OP_SIZE_32;
+	pko_command.s.subone0 = 1;
+
+	pko_command.s.dontfree = 1;
+
+	/* Build the PKO buffer pointer */
+	hw_buffer.u64 = 0;
+	if (skb_shinfo(skb)->nr_frags == 0) {
+		hw_buffer.s.addr = XKPHYS_TO_PHYS((uintptr_t)skb->data);
+		hw_buffer.s.pool = 0;
+		hw_buffer.s.size = skb->len;
+	} else {
+		hw_buffer.s.addr = XKPHYS_TO_PHYS((uintptr_t)skb->data);
+		hw_buffer.s.pool = 0;
+		hw_buffer.s.size = skb_headlen(skb);
+		CVM_OCT_SKB_CB(skb)[0] = hw_buffer.u64;
+		for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
+			skb_frag_t *fs = skb_shinfo(skb)->frags + i;
+
+			hw_buffer.s.addr =
+				XKPHYS_TO_PHYS((uintptr_t)skb_frag_address(fs));
+			hw_buffer.s.size = skb_frag_size(fs);
+			CVM_OCT_SKB_CB(skb)[i + 1] = hw_buffer.u64;
+		}
+		hw_buffer.s.addr =
+			XKPHYS_TO_PHYS((uintptr_t)CVM_OCT_SKB_CB(skb));
+		hw_buffer.s.size = skb_shinfo(skb)->nr_frags + 1;
+		pko_command.s.segs = skb_shinfo(skb)->nr_frags + 1;
+		pko_command.s.gather = 1;
+		goto dont_put_skbuff_in_hw;
+	}
+
+	/*
+	 * See if we can put this skb in the FPA pool. Any strange
+	 * behavior from the Linux networking stack will most likely
+	 * be caused by a bug in the following code. If some field is
+	 * in use by the network stack and gets carried over when a
+	 * buffer is reused, bad things may happen.  If in doubt and
+	 * you dont need the absolute best performance, disable the
+	 * define REUSE_SKBUFFS_WITHOUT_FREE. The reuse of buffers has
+	 * shown a 25% increase in performance under some loads.
+	 */
+#if REUSE_SKBUFFS_WITHOUT_FREE
+	fpa_head = skb->head + 256 - ((unsigned long)skb->head & 0x7f);
+	if (unlikely(skb->data < fpa_head)) {
+		/* TX buffer beginning can't meet FPA alignment constraints */
+		goto dont_put_skbuff_in_hw;
+	}
+	if (unlikely
+	    ((skb_end_pointer(skb) - fpa_head) < CVMX_FPA_PACKET_POOL_SIZE)) {
+		/* TX buffer isn't large enough for the FPA */
+		goto dont_put_skbuff_in_hw;
+	}
+	if (unlikely(skb_shared(skb))) {
+		/* TX buffer sharing data with someone else */
+		goto dont_put_skbuff_in_hw;
+	}
+	if (unlikely(skb_cloned(skb))) {
+		/* TX buffer has been cloned */
+		goto dont_put_skbuff_in_hw;
+	}
+	if (unlikely(skb_header_cloned(skb))) {
+		/* TX buffer header has been cloned */
+		goto dont_put_skbuff_in_hw;
+	}
+	if (unlikely(skb->destructor)) {
+		/* TX buffer has a destructor */
+		goto dont_put_skbuff_in_hw;
+	}
+	if (unlikely(skb_shinfo(skb)->nr_frags)) {
+		/* TX buffer has fragments */
+		goto dont_put_skbuff_in_hw;
+	}
+	if (unlikely
+	    (skb->truesize !=
+	     sizeof(*skb) + skb_end_offset(skb))) {
+		/* TX buffer truesize has been changed */
+		goto dont_put_skbuff_in_hw;
+	}
+
+	/*
+	 * We can use this buffer in the FPA.  We don't need the FAU
+	 * update anymore
+	 */
+	pko_command.s.dontfree = 0;
+
+	hw_buffer.s.back = ((unsigned long)skb->data >> 7) -
+			   ((unsigned long)fpa_head >> 7);
+
+	*(struct sk_buff **)(fpa_head - sizeof(void *)) = skb;
+
+	/*
+	 * The skbuff will be reused without ever being freed. We must
+	 * cleanup a bunch of core things.
+	 */
+	dst_release(skb_dst(skb));
+	skb_dst_set(skb, NULL);
+	skb_ext_reset(skb);
+	nf_reset_ct(skb);
+
+#ifdef CONFIG_NET_SCHED
+	skb->tc_index = 0;
+	skb_reset_tc(skb);
+#endif /* CONFIG_NET_SCHED */
+#endif /* REUSE_SKBUFFS_WITHOUT_FREE */
+
+dont_put_skbuff_in_hw:
+
+	/* Check if we can use the hardware checksumming */
+	if ((skb->protocol == htons(ETH_P_IP)) &&
+	    (ip_hdr(skb)->version == 4) &&
+	    (ip_hdr(skb)->ihl == 5) &&
+	    ((ip_hdr(skb)->frag_off == 0) ||
+	     (ip_hdr(skb)->frag_off == htons(1 << 14))) &&
+	    ((ip_hdr(skb)->protocol == IPPROTO_TCP) ||
+	     (ip_hdr(skb)->protocol == IPPROTO_UDP))) {
+		/* Use hardware checksum calc */
+		pko_command.s.ipoffp1 = skb_network_offset(skb) + 1;
+	}
+
+	if (USE_ASYNC_IOBDMA) {
+		/* Get the number of skbuffs in use by the hardware */
+		CVMX_SYNCIOBDMA;
+		skb_to_free = cvmx_scratch_read64(CVMX_SCR_SCRATCH);
+		buffers_to_free = cvmx_scratch_read64(CVMX_SCR_SCRATCH + 8);
+	} else {
+		/* Get the number of skbuffs in use by the hardware */
+		skb_to_free = cvmx_fau_fetch_and_add32(priv->fau + qos * 4,
+						       MAX_SKB_TO_FREE);
+		buffers_to_free =
+		    cvmx_fau_fetch_and_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE, 0);
+	}
+
+	skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
+						 priv->fau + qos * 4);
+
+	/*
+	 * If we're sending faster than the receive can free them then
+	 * don't do the HW free.
+	 */
+	if ((buffers_to_free < -100) && !pko_command.s.dontfree)
+		pko_command.s.dontfree = 1;
+
+	if (pko_command.s.dontfree) {
+		queue_type = QUEUE_CORE;
+		pko_command.s.reg0 = priv->fau + qos * 4;
+	} else {
+		queue_type = QUEUE_HW;
+	}
+	if (USE_ASYNC_IOBDMA)
+		cvmx_fau_async_fetch_and_add32(CVMX_SCR_SCRATCH,
+					       FAU_TOTAL_TX_TO_CLEAN, 1);
+
+	spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
+
+	/* Drop this packet if we have too many already queued to the HW */
+	if (unlikely(skb_queue_len(&priv->tx_free_list[qos]) >=
+		     MAX_OUT_QUEUE_DEPTH)) {
+		if (dev->tx_queue_len != 0) {
+			/* Drop the lock when notifying the core.  */
+			spin_unlock_irqrestore(&priv->tx_free_list[qos].lock,
+					       flags);
+			netif_stop_queue(dev);
+			spin_lock_irqsave(&priv->tx_free_list[qos].lock,
+					  flags);
+		} else {
+			/* If not using normal queueing.  */
+			queue_type = QUEUE_DROP;
+			goto skip_xmit;
+		}
+	}
+
+	cvmx_pko_send_packet_prepare(priv->port, priv->queue + qos,
+				     CVMX_PKO_LOCK_NONE);
+
+	/* Send the packet to the output queue */
+	if (unlikely(cvmx_pko_send_packet_finish(priv->port,
+						 priv->queue + qos,
+						 pko_command, hw_buffer,
+						 CVMX_PKO_LOCK_NONE))) {
+		printk_ratelimited("%s: Failed to send the packet\n",
+				   dev->name);
+		queue_type = QUEUE_DROP;
+	}
+skip_xmit:
+	to_free_list = NULL;
+
+	switch (queue_type) {
+	case QUEUE_DROP:
+		skb->next = to_free_list;
+		to_free_list = skb;
+		dev->stats.tx_dropped++;
+		break;
+	case QUEUE_HW:
+		cvmx_fau_atomic_add32(FAU_NUM_PACKET_BUFFERS_TO_FREE, -1);
+		break;
+	case QUEUE_CORE:
+		__skb_queue_tail(&priv->tx_free_list[qos], skb);
+		break;
+	default:
+		BUG();
+	}
+
+	while (skb_to_free > 0) {
+		struct sk_buff *t = __skb_dequeue(&priv->tx_free_list[qos]);
+
+		t->next = to_free_list;
+		to_free_list = t;
+		skb_to_free--;
+	}
+
+	spin_unlock_irqrestore(&priv->tx_free_list[qos].lock, flags);
+
+	/* Do the actual freeing outside of the lock. */
+	while (to_free_list) {
+		struct sk_buff *t = to_free_list;
+
+		to_free_list = to_free_list->next;
+		dev_kfree_skb_any(t);
+	}
+
+	if (USE_ASYNC_IOBDMA) {
+		CVMX_SYNCIOBDMA;
+		total_to_clean = cvmx_scratch_read64(CVMX_SCR_SCRATCH);
+		/* Restore the scratch area */
+		cvmx_scratch_write64(CVMX_SCR_SCRATCH, old_scratch);
+		cvmx_scratch_write64(CVMX_SCR_SCRATCH + 8, old_scratch2);
+	} else {
+		total_to_clean =
+			cvmx_fau_fetch_and_add32(FAU_TOTAL_TX_TO_CLEAN, 1);
+	}
+
+	if (total_to_clean & 0x3ff) {
+		/*
+		 * Schedule the cleanup tasklet every 1024 packets for
+		 * the pathological case of high traffic on one port
+		 * delaying clean up of packets on a different port
+		 * that is blocked waiting for the cleanup.
+		 */
+		tasklet_schedule(&cvm_oct_tx_cleanup_tasklet);
+	}
+
+	cvm_oct_kick_tx_poll_watchdog();
+
+	return NETDEV_TX_OK;
+}
+
+/**
+ * cvm_oct_xmit_pow - transmit a packet to the POW
+ * @skb:    Packet to send
+ * @dev:    Device info structure
+
+ * Returns Always returns zero
+ */
+int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev)
+{
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	void *packet_buffer;
+	void *copy_location;
+
+	/* Get a work queue entry */
+	struct cvmx_wqe *work = cvmx_fpa_alloc(CVMX_FPA_WQE_POOL);
+
+	if (unlikely(!work)) {
+		printk_ratelimited("%s: Failed to allocate a work queue entry\n",
+				   dev->name);
+		dev->stats.tx_dropped++;
+		dev_kfree_skb_any(skb);
+		return 0;
+	}
+
+	/* Get a packet buffer */
+	packet_buffer = cvmx_fpa_alloc(CVMX_FPA_PACKET_POOL);
+	if (unlikely(!packet_buffer)) {
+		printk_ratelimited("%s: Failed to allocate a packet buffer\n",
+				   dev->name);
+		cvmx_fpa_free(work, CVMX_FPA_WQE_POOL, 1);
+		dev->stats.tx_dropped++;
+		dev_kfree_skb_any(skb);
+		return 0;
+	}
+
+	/*
+	 * Calculate where we need to copy the data to. We need to
+	 * leave 8 bytes for a next pointer (unused). We also need to
+	 * include any configure skip. Then we need to align the IP
+	 * packet src and dest into the same 64bit word. The below
+	 * calculation may add a little extra, but that doesn't
+	 * hurt.
+	 */
+	copy_location = packet_buffer + sizeof(u64);
+	copy_location += ((CVMX_HELPER_FIRST_MBUFF_SKIP + 7) & 0xfff8) + 6;
+
+	/*
+	 * We have to copy the packet since whoever processes this
+	 * packet will free it to a hardware pool. We can't use the
+	 * trick of counting outstanding packets like in
+	 * cvm_oct_xmit.
+	 */
+	memcpy(copy_location, skb->data, skb->len);
+
+	/*
+	 * Fill in some of the work queue fields. We may need to add
+	 * more if the software at the other end needs them.
+	 */
+	if (!OCTEON_IS_MODEL(OCTEON_CN68XX))
+		work->word0.pip.cn38xx.hw_chksum = skb->csum;
+	work->word1.len = skb->len;
+	cvmx_wqe_set_port(work, priv->port);
+	cvmx_wqe_set_qos(work, priv->port & 0x7);
+	cvmx_wqe_set_grp(work, pow_send_group);
+	work->word1.tag_type = CVMX_HELPER_INPUT_TAG_TYPE;
+	work->word1.tag = pow_send_group;	/* FIXME */
+	/* Default to zero. Sets of zero later are commented out */
+	work->word2.u64 = 0;
+	work->word2.s.bufs = 1;
+	work->packet_ptr.u64 = 0;
+	work->packet_ptr.s.addr = cvmx_ptr_to_phys(copy_location);
+	work->packet_ptr.s.pool = CVMX_FPA_PACKET_POOL;
+	work->packet_ptr.s.size = CVMX_FPA_PACKET_POOL_SIZE;
+	work->packet_ptr.s.back = (copy_location - packet_buffer) >> 7;
+
+	if (skb->protocol == htons(ETH_P_IP)) {
+		work->word2.s.ip_offset = 14;
+#if 0
+		work->word2.s.vlan_valid = 0;	/* FIXME */
+		work->word2.s.vlan_cfi = 0;	/* FIXME */
+		work->word2.s.vlan_id = 0;	/* FIXME */
+		work->word2.s.dec_ipcomp = 0;	/* FIXME */
+#endif
+		work->word2.s.tcp_or_udp =
+		    (ip_hdr(skb)->protocol == IPPROTO_TCP) ||
+		    (ip_hdr(skb)->protocol == IPPROTO_UDP);
+#if 0
+		/* FIXME */
+		work->word2.s.dec_ipsec = 0;
+		/* We only support IPv4 right now */
+		work->word2.s.is_v6 = 0;
+		/* Hardware would set to zero */
+		work->word2.s.software = 0;
+		/* No error, packet is internal */
+		work->word2.s.L4_error = 0;
+#endif
+		work->word2.s.is_frag = !((ip_hdr(skb)->frag_off == 0) ||
+					  (ip_hdr(skb)->frag_off ==
+					      cpu_to_be16(1 << 14)));
+#if 0
+		/* Assume Linux is sending a good packet */
+		work->word2.s.IP_exc = 0;
+#endif
+		work->word2.s.is_bcast = (skb->pkt_type == PACKET_BROADCAST);
+		work->word2.s.is_mcast = (skb->pkt_type == PACKET_MULTICAST);
+#if 0
+		/* This is an IP packet */
+		work->word2.s.not_IP = 0;
+		/* No error, packet is internal */
+		work->word2.s.rcv_error = 0;
+		/* No error, packet is internal */
+		work->word2.s.err_code = 0;
+#endif
+
+		/*
+		 * When copying the data, include 4 bytes of the
+		 * ethernet header to align the same way hardware
+		 * does.
+		 */
+		memcpy(work->packet_data, skb->data + 10,
+		       sizeof(work->packet_data));
+	} else {
+#if 0
+		work->word2.snoip.vlan_valid = 0;	/* FIXME */
+		work->word2.snoip.vlan_cfi = 0;	/* FIXME */
+		work->word2.snoip.vlan_id = 0;	/* FIXME */
+		work->word2.snoip.software = 0;	/* Hardware would set to zero */
+#endif
+		work->word2.snoip.is_rarp = skb->protocol == htons(ETH_P_RARP);
+		work->word2.snoip.is_arp = skb->protocol == htons(ETH_P_ARP);
+		work->word2.snoip.is_bcast =
+		    (skb->pkt_type == PACKET_BROADCAST);
+		work->word2.snoip.is_mcast =
+		    (skb->pkt_type == PACKET_MULTICAST);
+		work->word2.snoip.not_IP = 1;	/* IP was done up above */
+#if 0
+		/* No error, packet is internal */
+		work->word2.snoip.rcv_error = 0;
+		/* No error, packet is internal */
+		work->word2.snoip.err_code = 0;
+#endif
+		memcpy(work->packet_data, skb->data, sizeof(work->packet_data));
+	}
+
+	/* Submit the packet to the POW */
+	cvmx_pow_work_submit(work, work->word1.tag, work->word1.tag_type,
+			     cvmx_wqe_get_qos(work), cvmx_wqe_get_grp(work));
+	dev->stats.tx_packets++;
+	dev->stats.tx_bytes += skb->len;
+	dev_consume_skb_any(skb);
+	return 0;
+}
+
+/**
+ * cvm_oct_tx_shutdown_dev - free all skb that are currently queued for TX.
+ * @dev:    Device being shutdown
+ *
+ */
+void cvm_oct_tx_shutdown_dev(struct net_device *dev)
+{
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	unsigned long flags;
+	int qos;
+
+	for (qos = 0; qos < 16; qos++) {
+		spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
+		while (skb_queue_len(&priv->tx_free_list[qos]))
+			dev_kfree_skb_any(__skb_dequeue
+					  (&priv->tx_free_list[qos]));
+		spin_unlock_irqrestore(&priv->tx_free_list[qos].lock, flags);
+	}
+}
+
+static void cvm_oct_tx_do_cleanup(unsigned long arg)
+{
+	int port;
+
+	for (port = 0; port < TOTAL_NUMBER_OF_PORTS; port++) {
+		if (cvm_oct_device[port]) {
+			struct net_device *dev = cvm_oct_device[port];
+
+			cvm_oct_free_tx_skbs(dev);
+		}
+	}
+}
+
+static irqreturn_t cvm_oct_tx_cleanup_watchdog(int cpl, void *dev_id)
+{
+	/* Disable the interrupt.  */
+	cvmx_write_csr(CVMX_CIU_TIMX(1), 0);
+	/* Do the work in the tasklet.  */
+	tasklet_schedule(&cvm_oct_tx_cleanup_tasklet);
+	return IRQ_HANDLED;
+}
+
+void cvm_oct_tx_initialize(void)
+{
+	int i;
+
+	/* Disable the interrupt.  */
+	cvmx_write_csr(CVMX_CIU_TIMX(1), 0);
+	/* Register an IRQ handler to receive CIU_TIMX(1) interrupts */
+	i = request_irq(OCTEON_IRQ_TIMER1,
+			cvm_oct_tx_cleanup_watchdog, 0,
+			"Ethernet", cvm_oct_device);
+
+	if (i)
+		panic("Could not acquire Ethernet IRQ %d\n", OCTEON_IRQ_TIMER1);
+}
+
+void cvm_oct_tx_shutdown(void)
+{
+	/* Free the interrupt handler */
+	free_irq(OCTEON_IRQ_TIMER1, cvm_oct_device);
+}
diff --git a/drivers/staging/octeon/ethernet-tx.h b/drivers/staging/octeon/ethernet-tx.h
new file mode 100644
index 000000000000..78936e9b33b0
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-tx.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2007 Cavium Networks
+ */
+
+int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev);
+int cvm_oct_xmit_pow(struct sk_buff *skb, struct net_device *dev);
+int cvm_oct_transmit_qos(struct net_device *dev, void *work_queue_entry,
+			 int do_free, int qos);
+void cvm_oct_tx_initialize(void);
+void cvm_oct_tx_shutdown(void);
+void cvm_oct_tx_shutdown_dev(struct net_device *dev);
diff --git a/drivers/staging/octeon/ethernet-util.h b/drivers/staging/octeon/ethernet-util.h
new file mode 100644
index 000000000000..2af83a12ca78
--- /dev/null
+++ b/drivers/staging/octeon/ethernet-util.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2007 Cavium Networks
+ */
+
+/**
+ * cvm_oct_get_buffer_ptr - convert packet data address to pointer
+ * @packet_ptr: Packet data hardware address
+ *
+ * Returns Packet buffer pointer
+ */
+static inline void *cvm_oct_get_buffer_ptr(union cvmx_buf_ptr packet_ptr)
+{
+	return cvmx_phys_to_ptr(((packet_ptr.s.addr >> 7) - packet_ptr.s.back)
+				<< 7);
+}
+
+/**
+ * INTERFACE - convert IPD port to logical interface
+ * @ipd_port: Port to check
+ *
+ * Returns Logical interface
+ */
+static inline int INTERFACE(int ipd_port)
+{
+	int interface;
+
+	if (ipd_port == CVMX_PIP_NUM_INPUT_PORTS)
+		return 10;
+	interface = cvmx_helper_get_interface_num(ipd_port);
+	if (interface >= 0)
+		return interface;
+	panic("Illegal ipd_port %d passed to %s\n", ipd_port, __func__);
+}
+
+/**
+ * INDEX - convert IPD/PKO port number to the port's interface index
+ * @ipd_port: Port to check
+ *
+ * Returns Index into interface port list
+ */
+static inline int INDEX(int ipd_port)
+{
+	return cvmx_helper_get_interface_index_num(ipd_port);
+}
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
new file mode 100644
index 000000000000..f42c3816ce49
--- /dev/null
+++ b/drivers/staging/octeon/ethernet.c
@@ -0,0 +1,992 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2007 Cavium Networks
+ */
+
+#include <linux/platform_device.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/netdevice.h>
+#include <linux/etherdevice.h>
+#include <linux/phy.h>
+#include <linux/slab.h>
+#include <linux/interrupt.h>
+#include <linux/of_net.h>
+#include <linux/if_ether.h>
+#include <linux/if_vlan.h>
+
+#include <net/dst.h>
+
+#include "octeon-ethernet.h"
+#include "ethernet-defines.h"
+#include "ethernet-mem.h"
+#include "ethernet-rx.h"
+#include "ethernet-tx.h"
+#include "ethernet-mdio.h"
+#include "ethernet-util.h"
+
+#define OCTEON_MAX_MTU 65392
+
+static int num_packet_buffers = 1024;
+module_param(num_packet_buffers, int, 0444);
+MODULE_PARM_DESC(num_packet_buffers, "\n"
+	"\tNumber of packet buffers to allocate and store in the\n"
+	"\tFPA. By default, 1024 packet buffers are used.\n");
+
+static int pow_receive_group = 15;
+module_param(pow_receive_group, int, 0444);
+MODULE_PARM_DESC(pow_receive_group, "\n"
+	"\tPOW group to receive packets from. All ethernet hardware\n"
+	"\twill be configured to send incoming packets to this POW\n"
+	"\tgroup. Also any other software can submit packets to this\n"
+	"\tgroup for the kernel to process.");
+
+static int receive_group_order;
+module_param(receive_group_order, int, 0444);
+MODULE_PARM_DESC(receive_group_order, "\n"
+	"\tOrder (0..4) of receive groups to take into use. Ethernet hardware\n"
+	"\twill be configured to send incoming packets to multiple POW\n"
+	"\tgroups. pow_receive_group parameter is ignored when multiple\n"
+	"\tgroups are taken into use and groups are allocated starting\n"
+	"\tfrom 0. By default, a single group is used.\n");
+
+int pow_send_group = -1;
+module_param(pow_send_group, int, 0644);
+MODULE_PARM_DESC(pow_send_group, "\n"
+	"\tPOW group to send packets to other software on. This\n"
+	"\tcontrols the creation of the virtual device pow0.\n"
+	"\talways_use_pow also depends on this value.");
+
+int always_use_pow;
+module_param(always_use_pow, int, 0444);
+MODULE_PARM_DESC(always_use_pow, "\n"
+	"\tWhen set, always send to the pow group. This will cause\n"
+	"\tpackets sent to real ethernet devices to be sent to the\n"
+	"\tPOW group instead of the hardware. Unless some other\n"
+	"\tapplication changes the config, packets will still be\n"
+	"\treceived from the low level hardware. Use this option\n"
+	"\tto allow a CVMX app to intercept all packets from the\n"
+	"\tlinux kernel. You must specify pow_send_group along with\n"
+	"\tthis option.");
+
+char pow_send_list[128] = "";
+module_param_string(pow_send_list, pow_send_list, sizeof(pow_send_list), 0444);
+MODULE_PARM_DESC(pow_send_list, "\n"
+	"\tComma separated list of ethernet devices that should use the\n"
+	"\tPOW for transmit instead of the actual ethernet hardware. This\n"
+	"\tis a per port version of always_use_pow. always_use_pow takes\n"
+	"\tprecedence over this list. For example, setting this to\n"
+	"\t\"eth2,spi3,spi7\" would cause these three devices to transmit\n"
+	"\tusing the pow_send_group.");
+
+int rx_napi_weight = 32;
+module_param(rx_napi_weight, int, 0444);
+MODULE_PARM_DESC(rx_napi_weight, "The NAPI WEIGHT parameter.");
+
+/* Mask indicating which receive groups are in use. */
+int pow_receive_groups;
+
+/*
+ * cvm_oct_poll_queue_stopping - flag to indicate polling should stop.
+ *
+ * Set to one right before cvm_oct_poll_queue is destroyed.
+ */
+atomic_t cvm_oct_poll_queue_stopping = ATOMIC_INIT(0);
+
+/*
+ * Array of every ethernet device owned by this driver indexed by
+ * the ipd input port number.
+ */
+struct net_device *cvm_oct_device[TOTAL_NUMBER_OF_PORTS];
+
+u64 cvm_oct_tx_poll_interval;
+
+static void cvm_oct_rx_refill_worker(struct work_struct *work);
+static DECLARE_DELAYED_WORK(cvm_oct_rx_refill_work, cvm_oct_rx_refill_worker);
+
+static void cvm_oct_rx_refill_worker(struct work_struct *work)
+{
+	/*
+	 * FPA 0 may have been drained, try to refill it if we need
+	 * more than num_packet_buffers / 2, otherwise normal receive
+	 * processing will refill it.  If it were drained, no packets
+	 * could be received so cvm_oct_napi_poll would never be
+	 * invoked to do the refill.
+	 */
+	cvm_oct_rx_refill_pool(num_packet_buffers / 2);
+
+	if (!atomic_read(&cvm_oct_poll_queue_stopping))
+		schedule_delayed_work(&cvm_oct_rx_refill_work, HZ);
+}
+
+static void cvm_oct_periodic_worker(struct work_struct *work)
+{
+	struct octeon_ethernet *priv = container_of(work,
+						    struct octeon_ethernet,
+						    port_periodic_work.work);
+
+	if (priv->poll)
+		priv->poll(cvm_oct_device[priv->port]);
+
+	cvm_oct_device[priv->port]->netdev_ops->ndo_get_stats
+						(cvm_oct_device[priv->port]);
+
+	if (!atomic_read(&cvm_oct_poll_queue_stopping))
+		schedule_delayed_work(&priv->port_periodic_work, HZ);
+}
+
+static void cvm_oct_configure_common_hw(void)
+{
+	/* Setup the FPA */
+	cvmx_fpa_enable();
+	cvm_oct_mem_fill_fpa(CVMX_FPA_PACKET_POOL, CVMX_FPA_PACKET_POOL_SIZE,
+			     num_packet_buffers);
+	cvm_oct_mem_fill_fpa(CVMX_FPA_WQE_POOL, CVMX_FPA_WQE_POOL_SIZE,
+			     num_packet_buffers);
+	if (CVMX_FPA_OUTPUT_BUFFER_POOL != CVMX_FPA_PACKET_POOL)
+		cvm_oct_mem_fill_fpa(CVMX_FPA_OUTPUT_BUFFER_POOL,
+				     CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE, 1024);
+
+#ifdef __LITTLE_ENDIAN
+	{
+		union cvmx_ipd_ctl_status ipd_ctl_status;
+
+		ipd_ctl_status.u64 = cvmx_read_csr(CVMX_IPD_CTL_STATUS);
+		ipd_ctl_status.s.pkt_lend = 1;
+		ipd_ctl_status.s.wqe_lend = 1;
+		cvmx_write_csr(CVMX_IPD_CTL_STATUS, ipd_ctl_status.u64);
+	}
+#endif
+
+	cvmx_helper_setup_red(num_packet_buffers / 4, num_packet_buffers / 8);
+}
+
+/**
+ * cvm_oct_free_work- Free a work queue entry
+ *
+ * @work_queue_entry: Work queue entry to free
+ *
+ * Returns Zero on success, Negative on failure.
+ */
+int cvm_oct_free_work(void *work_queue_entry)
+{
+	struct cvmx_wqe *work = work_queue_entry;
+
+	int segments = work->word2.s.bufs;
+	union cvmx_buf_ptr segment_ptr = work->packet_ptr;
+
+	while (segments--) {
+		union cvmx_buf_ptr next_ptr = *(union cvmx_buf_ptr *)
+			cvmx_phys_to_ptr(segment_ptr.s.addr - 8);
+		if (unlikely(!segment_ptr.s.i))
+			cvmx_fpa_free(cvm_oct_get_buffer_ptr(segment_ptr),
+				      segment_ptr.s.pool,
+				      CVMX_FPA_PACKET_POOL_SIZE / 128);
+		segment_ptr = next_ptr;
+	}
+	cvmx_fpa_free(work, CVMX_FPA_WQE_POOL, 1);
+
+	return 0;
+}
+EXPORT_SYMBOL(cvm_oct_free_work);
+
+/**
+ * cvm_oct_common_get_stats - get the low level ethernet statistics
+ * @dev:    Device to get the statistics from
+ *
+ * Returns Pointer to the statistics
+ */
+static struct net_device_stats *cvm_oct_common_get_stats(struct net_device *dev)
+{
+	cvmx_pip_port_status_t rx_status;
+	cvmx_pko_port_status_t tx_status;
+	struct octeon_ethernet *priv = netdev_priv(dev);
+
+	if (priv->port < CVMX_PIP_NUM_INPUT_PORTS) {
+		if (octeon_is_simulation()) {
+			/* The simulator doesn't support statistics */
+			memset(&rx_status, 0, sizeof(rx_status));
+			memset(&tx_status, 0, sizeof(tx_status));
+		} else {
+			cvmx_pip_get_port_status(priv->port, 1, &rx_status);
+			cvmx_pko_get_port_status(priv->port, 1, &tx_status);
+		}
+
+		dev->stats.rx_packets += rx_status.inb_packets;
+		dev->stats.tx_packets += tx_status.packets;
+		dev->stats.rx_bytes += rx_status.inb_octets;
+		dev->stats.tx_bytes += tx_status.octets;
+		dev->stats.multicast += rx_status.multicast_packets;
+		dev->stats.rx_crc_errors += rx_status.inb_errors;
+		dev->stats.rx_frame_errors += rx_status.fcs_align_err_packets;
+		dev->stats.rx_dropped += rx_status.dropped_packets;
+	}
+
+	return &dev->stats;
+}
+
+/**
+ * cvm_oct_common_change_mtu - change the link MTU
+ * @dev:     Device to change
+ * @new_mtu: The new MTU
+ *
+ * Returns Zero on success
+ */
+static int cvm_oct_common_change_mtu(struct net_device *dev, int new_mtu)
+{
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	int interface = INTERFACE(priv->port);
+#if IS_ENABLED(CONFIG_VLAN_8021Q)
+	int vlan_bytes = VLAN_HLEN;
+#else
+	int vlan_bytes = 0;
+#endif
+	int mtu_overhead = ETH_HLEN + ETH_FCS_LEN + vlan_bytes;
+
+	dev->mtu = new_mtu;
+
+	if ((interface < 2) &&
+	    (cvmx_helper_interface_get_mode(interface) !=
+		CVMX_HELPER_INTERFACE_MODE_SPI)) {
+		int index = INDEX(priv->port);
+		/* Add ethernet header and FCS, and VLAN if configured. */
+		int max_packet = new_mtu + mtu_overhead;
+
+		if (OCTEON_IS_MODEL(OCTEON_CN3XXX) ||
+		    OCTEON_IS_MODEL(OCTEON_CN58XX)) {
+			/* Signal errors on packets larger than the MTU */
+			cvmx_write_csr(CVMX_GMXX_RXX_FRM_MAX(index, interface),
+				       max_packet);
+		} else {
+			/*
+			 * Set the hardware to truncate packets larger
+			 * than the MTU and smaller the 64 bytes.
+			 */
+			union cvmx_pip_frm_len_chkx frm_len_chk;
+
+			frm_len_chk.u64 = 0;
+			frm_len_chk.s.minlen = VLAN_ETH_ZLEN;
+			frm_len_chk.s.maxlen = max_packet;
+			cvmx_write_csr(CVMX_PIP_FRM_LEN_CHKX(interface),
+				       frm_len_chk.u64);
+		}
+		/*
+		 * Set the hardware to truncate packets larger than
+		 * the MTU. The jabber register must be set to a
+		 * multiple of 8 bytes, so round up.
+		 */
+		cvmx_write_csr(CVMX_GMXX_RXX_JABBER(index, interface),
+			       (max_packet + 7) & ~7u);
+	}
+	return 0;
+}
+
+/**
+ * cvm_oct_common_set_multicast_list - set the multicast list
+ * @dev:    Device to work on
+ */
+static void cvm_oct_common_set_multicast_list(struct net_device *dev)
+{
+	union cvmx_gmxx_prtx_cfg gmx_cfg;
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	int interface = INTERFACE(priv->port);
+
+	if ((interface < 2) &&
+	    (cvmx_helper_interface_get_mode(interface) !=
+		CVMX_HELPER_INTERFACE_MODE_SPI)) {
+		union cvmx_gmxx_rxx_adr_ctl control;
+		int index = INDEX(priv->port);
+
+		control.u64 = 0;
+		control.s.bcst = 1;	/* Allow broadcast MAC addresses */
+
+		if (!netdev_mc_empty(dev) || (dev->flags & IFF_ALLMULTI) ||
+		    (dev->flags & IFF_PROMISC))
+			/* Force accept multicast packets */
+			control.s.mcst = 2;
+		else
+			/* Force reject multicast packets */
+			control.s.mcst = 1;
+
+		if (dev->flags & IFF_PROMISC)
+			/*
+			 * Reject matches if promisc. Since CAM is
+			 * shut off, should accept everything.
+			 */
+			control.s.cam_mode = 0;
+		else
+			/* Filter packets based on the CAM */
+			control.s.cam_mode = 1;
+
+		gmx_cfg.u64 =
+		    cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
+		cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
+			       gmx_cfg.u64 & ~1ull);
+
+		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CTL(index, interface),
+			       control.u64);
+		if (dev->flags & IFF_PROMISC)
+			cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM_EN
+				       (index, interface), 0);
+		else
+			cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM_EN
+				       (index, interface), 1);
+
+		cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
+			       gmx_cfg.u64);
+	}
+}
+
+static int cvm_oct_set_mac_filter(struct net_device *dev)
+{
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	union cvmx_gmxx_prtx_cfg gmx_cfg;
+	int interface = INTERFACE(priv->port);
+
+	if ((interface < 2) &&
+	    (cvmx_helper_interface_get_mode(interface) !=
+		CVMX_HELPER_INTERFACE_MODE_SPI)) {
+		int i;
+		u8 *ptr = dev->dev_addr;
+		u64 mac = 0;
+		int index = INDEX(priv->port);
+
+		for (i = 0; i < 6; i++)
+			mac = (mac << 8) | (u64)ptr[i];
+
+		gmx_cfg.u64 =
+		    cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
+		cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
+			       gmx_cfg.u64 & ~1ull);
+
+		cvmx_write_csr(CVMX_GMXX_SMACX(index, interface), mac);
+		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM0(index, interface),
+			       ptr[0]);
+		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM1(index, interface),
+			       ptr[1]);
+		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM2(index, interface),
+			       ptr[2]);
+		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM3(index, interface),
+			       ptr[3]);
+		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM4(index, interface),
+			       ptr[4]);
+		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM5(index, interface),
+			       ptr[5]);
+		cvm_oct_common_set_multicast_list(dev);
+		cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
+			       gmx_cfg.u64);
+	}
+	return 0;
+}
+
+/**
+ * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
+ * @dev:    The device in question.
+ * @addr:   Socket address.
+ *
+ * Returns Zero on success
+ */
+static int cvm_oct_common_set_mac_address(struct net_device *dev, void *addr)
+{
+	int r = eth_mac_addr(dev, addr);
+
+	if (r)
+		return r;
+	return cvm_oct_set_mac_filter(dev);
+}
+
+/**
+ * cvm_oct_common_init - per network device initialization
+ * @dev:    Device to initialize
+ *
+ * Returns Zero on success
+ */
+int cvm_oct_common_init(struct net_device *dev)
+{
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	const u8 *mac = NULL;
+
+	if (priv->of_node)
+		mac = of_get_mac_address(priv->of_node);
+
+	if (!IS_ERR_OR_NULL(mac))
+		ether_addr_copy(dev->dev_addr, mac);
+	else
+		eth_hw_addr_random(dev);
+
+	/*
+	 * Force the interface to use the POW send if always_use_pow
+	 * was specified or it is in the pow send list.
+	 */
+	if ((pow_send_group != -1) &&
+	    (always_use_pow || strstr(pow_send_list, dev->name)))
+		priv->queue = -1;
+
+	if (priv->queue != -1)
+		dev->features |= NETIF_F_SG | NETIF_F_IP_CSUM;
+
+	/* We do our own locking, Linux doesn't need to */
+	dev->features |= NETIF_F_LLTX;
+	dev->ethtool_ops = &cvm_oct_ethtool_ops;
+
+	cvm_oct_set_mac_filter(dev);
+	dev_set_mtu(dev, dev->mtu);
+
+	/*
+	 * Zero out stats for port so we won't mistakenly show
+	 * counters from the bootloader.
+	 */
+	memset(dev->netdev_ops->ndo_get_stats(dev), 0,
+	       sizeof(struct net_device_stats));
+
+	if (dev->netdev_ops->ndo_stop)
+		dev->netdev_ops->ndo_stop(dev);
+
+	return 0;
+}
+
+void cvm_oct_common_uninit(struct net_device *dev)
+{
+	if (dev->phydev)
+		phy_disconnect(dev->phydev);
+}
+
+int cvm_oct_common_open(struct net_device *dev,
+			void (*link_poll)(struct net_device *))
+{
+	union cvmx_gmxx_prtx_cfg gmx_cfg;
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	int interface = INTERFACE(priv->port);
+	int index = INDEX(priv->port);
+	union cvmx_helper_link_info link_info;
+	int rv;
+
+	rv = cvm_oct_phy_setup_device(dev);
+	if (rv)
+		return rv;
+
+	gmx_cfg.u64 = cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
+	gmx_cfg.s.en = 1;
+	if (octeon_has_feature(OCTEON_FEATURE_PKND))
+		gmx_cfg.s.pknd = priv->port;
+	cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface), gmx_cfg.u64);
+
+	if (octeon_is_simulation())
+		return 0;
+
+	if (dev->phydev) {
+		int r = phy_read_status(dev->phydev);
+
+		if (r == 0 && dev->phydev->link == 0)
+			netif_carrier_off(dev);
+		cvm_oct_adjust_link(dev);
+	} else {
+		link_info = cvmx_helper_link_get(priv->port);
+		if (!link_info.s.link_up)
+			netif_carrier_off(dev);
+		priv->poll = link_poll;
+		link_poll(dev);
+	}
+
+	return 0;
+}
+
+void cvm_oct_link_poll(struct net_device *dev)
+{
+	struct octeon_ethernet *priv = netdev_priv(dev);
+	union cvmx_helper_link_info link_info;
+
+	link_info = cvmx_helper_link_get(priv->port);
+	if (link_info.u64 == priv->link_info)
+		return;
+
+	if (cvmx_helper_link_set(priv->port, link_info))
+		link_info.u64 = priv->link_info;
+	else
+		priv->link_info = link_info.u64;
+
+	if (link_info.s.link_up) {
+		if (!netif_carrier_ok(dev))
+			netif_carrier_on(dev);
+	} else if (netif_carrier_ok(dev)) {
+		netif_carrier_off(dev);
+	}
+	cvm_oct_note_carrier(priv, link_info);
+}
+
+static int cvm_oct_xaui_open(struct net_device *dev)
+{
+	return cvm_oct_common_open(dev, cvm_oct_link_poll);
+}
+
+static const struct net_device_ops cvm_oct_npi_netdev_ops = {
+	.ndo_init		= cvm_oct_common_init,
+	.ndo_uninit		= cvm_oct_common_uninit,
+	.ndo_start_xmit		= cvm_oct_xmit,
+	.ndo_set_rx_mode	= cvm_oct_common_set_multicast_list,
+	.ndo_set_mac_address	= cvm_oct_common_set_mac_address,
+	.ndo_do_ioctl		= cvm_oct_ioctl,
+	.ndo_change_mtu		= cvm_oct_common_change_mtu,
+	.ndo_get_stats		= cvm_oct_common_get_stats,
+#ifdef CONFIG_NET_POLL_CONTROLLER
+	.ndo_poll_controller	= cvm_oct_poll_controller,
+#endif
+};
+
+static const struct net_device_ops cvm_oct_xaui_netdev_ops = {
+	.ndo_init		= cvm_oct_common_init,
+	.ndo_uninit		= cvm_oct_common_uninit,
+	.ndo_open		= cvm_oct_xaui_open,
+	.ndo_stop		= cvm_oct_common_stop,
+	.ndo_start_xmit		= cvm_oct_xmit,
+	.ndo_set_rx_mode	= cvm_oct_common_set_multicast_list,
+	.ndo_set_mac_address	= cvm_oct_common_set_mac_address,
+	.ndo_do_ioctl		= cvm_oct_ioctl,
+	.ndo_change_mtu		= cvm_oct_common_change_mtu,
+	.ndo_get_stats		= cvm_oct_common_get_stats,
+#ifdef CONFIG_NET_POLL_CONTROLLER
+	.ndo_poll_controller	= cvm_oct_poll_controller,
+#endif
+};
+
+static const struct net_device_ops cvm_oct_sgmii_netdev_ops = {
+	.ndo_init		= cvm_oct_sgmii_init,
+	.ndo_uninit		= cvm_oct_common_uninit,
+	.ndo_open		= cvm_oct_sgmii_open,
+	.ndo_stop		= cvm_oct_common_stop,
+	.ndo_start_xmit		= cvm_oct_xmit,
+	.ndo_set_rx_mode	= cvm_oct_common_set_multicast_list,
+	.ndo_set_mac_address	= cvm_oct_common_set_mac_address,
+	.ndo_do_ioctl		= cvm_oct_ioctl,
+	.ndo_change_mtu		= cvm_oct_common_change_mtu,
+	.ndo_get_stats		= cvm_oct_common_get_stats,
+#ifdef CONFIG_NET_POLL_CONTROLLER
+	.ndo_poll_controller	= cvm_oct_poll_controller,
+#endif
+};
+
+static const struct net_device_ops cvm_oct_spi_netdev_ops = {
+	.ndo_init		= cvm_oct_spi_init,
+	.ndo_uninit		= cvm_oct_spi_uninit,
+	.ndo_start_xmit		= cvm_oct_xmit,
+	.ndo_set_rx_mode	= cvm_oct_common_set_multicast_list,
+	.ndo_set_mac_address	= cvm_oct_common_set_mac_address,
+	.ndo_do_ioctl		= cvm_oct_ioctl,
+	.ndo_change_mtu		= cvm_oct_common_change_mtu,
+	.ndo_get_stats		= cvm_oct_common_get_stats,
+#ifdef CONFIG_NET_POLL_CONTROLLER
+	.ndo_poll_controller	= cvm_oct_poll_controller,
+#endif
+};
+
+static const struct net_device_ops cvm_oct_rgmii_netdev_ops = {
+	.ndo_init		= cvm_oct_common_init,
+	.ndo_uninit		= cvm_oct_common_uninit,
+	.ndo_open		= cvm_oct_rgmii_open,
+	.ndo_stop		= cvm_oct_common_stop,
+	.ndo_start_xmit		= cvm_oct_xmit,
+	.ndo_set_rx_mode	= cvm_oct_common_set_multicast_list,
+	.ndo_set_mac_address	= cvm_oct_common_set_mac_address,
+	.ndo_do_ioctl		= cvm_oct_ioctl,
+	.ndo_change_mtu		= cvm_oct_common_change_mtu,
+	.ndo_get_stats		= cvm_oct_common_get_stats,
+#ifdef CONFIG_NET_POLL_CONTROLLER
+	.ndo_poll_controller	= cvm_oct_poll_controller,
+#endif
+};
+
+static const struct net_device_ops cvm_oct_pow_netdev_ops = {
+	.ndo_init		= cvm_oct_common_init,
+	.ndo_start_xmit		= cvm_oct_xmit_pow,
+	.ndo_set_rx_mode	= cvm_oct_common_set_multicast_list,
+	.ndo_set_mac_address	= cvm_oct_common_set_mac_address,
+	.ndo_do_ioctl		= cvm_oct_ioctl,
+	.ndo_change_mtu		= cvm_oct_common_change_mtu,
+	.ndo_get_stats		= cvm_oct_common_get_stats,
+#ifdef CONFIG_NET_POLL_CONTROLLER
+	.ndo_poll_controller	= cvm_oct_poll_controller,
+#endif
+};
+
+static struct device_node *cvm_oct_of_get_child
+				(const struct device_node *parent, int reg_val)
+{
+	struct device_node *node = NULL;
+	int size;
+	const __be32 *addr;
+
+	for (;;) {
+		node = of_get_next_child(parent, node);
+		if (!node)
+			break;
+		addr = of_get_property(node, "reg", &size);
+		if (addr && (be32_to_cpu(*addr) == reg_val))
+			break;
+	}
+	return node;
+}
+
+static struct device_node *cvm_oct_node_for_port(struct device_node *pip,
+						 int interface, int port)
+{
+	struct device_node *ni, *np;
+
+	ni = cvm_oct_of_get_child(pip, interface);
+	if (!ni)
+		return NULL;
+
+	np = cvm_oct_of_get_child(ni, port);
+	of_node_put(ni);
+
+	return np;
+}
+
+static void cvm_set_rgmii_delay(struct octeon_ethernet *priv, int iface,
+				int port)
+{
+	struct device_node *np = priv->of_node;
+	u32 delay_value;
+	bool rx_delay;
+	bool tx_delay;
+
+	/* By default, both RX/TX delay is enabled in
+	 * __cvmx_helper_rgmii_enable().
+	 */
+	rx_delay = true;
+	tx_delay = true;
+
+	if (!of_property_read_u32(np, "rx-delay", &delay_value)) {
+		cvmx_write_csr(CVMX_ASXX_RX_CLK_SETX(port, iface), delay_value);
+		rx_delay = delay_value > 0;
+	}
+	if (!of_property_read_u32(np, "tx-delay", &delay_value)) {
+		cvmx_write_csr(CVMX_ASXX_TX_CLK_SETX(port, iface), delay_value);
+		tx_delay = delay_value > 0;
+	}
+
+	if (!rx_delay && !tx_delay)
+		priv->phy_mode = PHY_INTERFACE_MODE_RGMII_ID;
+	else if (!rx_delay)
+		priv->phy_mode = PHY_INTERFACE_MODE_RGMII_RXID;
+	else if (!tx_delay)
+		priv->phy_mode = PHY_INTERFACE_MODE_RGMII_TXID;
+	else
+		priv->phy_mode = PHY_INTERFACE_MODE_RGMII;
+}
+
+static int cvm_oct_probe(struct platform_device *pdev)
+{
+	int num_interfaces;
+	int interface;
+	int fau = FAU_NUM_PACKET_BUFFERS_TO_FREE;
+	int qos;
+	struct device_node *pip;
+	int mtu_overhead = ETH_HLEN + ETH_FCS_LEN;
+
+#if IS_ENABLED(CONFIG_VLAN_8021Q)
+	mtu_overhead += VLAN_HLEN;
+#endif
+
+	octeon_mdiobus_force_mod_depencency();
+
+	pip = pdev->dev.of_node;
+	if (!pip) {
+		pr_err("Error: No 'pip' in /aliases\n");
+		return -EINVAL;
+	}
+
+	cvm_oct_configure_common_hw();
+
+	cvmx_helper_initialize_packet_io_global();
+
+	if (receive_group_order) {
+		if (receive_group_order > 4)
+			receive_group_order = 4;
+		pow_receive_groups = (1 << (1 << receive_group_order)) - 1;
+	} else {
+		pow_receive_groups = BIT(pow_receive_group);
+	}
+
+	/* Change the input group for all ports before input is enabled */
+	num_interfaces = cvmx_helper_get_number_of_interfaces();
+	for (interface = 0; interface < num_interfaces; interface++) {
+		int num_ports = cvmx_helper_ports_on_interface(interface);
+		int port;
+
+		for (port = cvmx_helper_get_ipd_port(interface, 0);
+		     port < cvmx_helper_get_ipd_port(interface, num_ports);
+		     port++) {
+			union cvmx_pip_prt_tagx pip_prt_tagx;
+
+			pip_prt_tagx.u64 =
+			    cvmx_read_csr(CVMX_PIP_PRT_TAGX(port));
+
+			if (receive_group_order) {
+				int tag_mask;
+
+				/* We support only 16 groups at the moment, so
+				 * always disable the two additional "hidden"
+				 * tag_mask bits on CN68XX.
+				 */
+				if (OCTEON_IS_MODEL(OCTEON_CN68XX))
+					pip_prt_tagx.u64 |= 0x3ull << 44;
+
+				tag_mask = ~((1 << receive_group_order) - 1);
+				pip_prt_tagx.s.grptagbase	= 0;
+				pip_prt_tagx.s.grptagmask	= tag_mask;
+				pip_prt_tagx.s.grptag		= 1;
+				pip_prt_tagx.s.tag_mode		= 0;
+				pip_prt_tagx.s.inc_prt_flag	= 1;
+				pip_prt_tagx.s.ip6_dprt_flag	= 1;
+				pip_prt_tagx.s.ip4_dprt_flag	= 1;
+				pip_prt_tagx.s.ip6_sprt_flag	= 1;
+				pip_prt_tagx.s.ip4_sprt_flag	= 1;
+				pip_prt_tagx.s.ip6_dst_flag	= 1;
+				pip_prt_tagx.s.ip4_dst_flag	= 1;
+				pip_prt_tagx.s.ip6_src_flag	= 1;
+				pip_prt_tagx.s.ip4_src_flag	= 1;
+				pip_prt_tagx.s.grp		= 0;
+			} else {
+				pip_prt_tagx.s.grptag	= 0;
+				pip_prt_tagx.s.grp	= pow_receive_group;
+			}
+
+			cvmx_write_csr(CVMX_PIP_PRT_TAGX(port),
+				       pip_prt_tagx.u64);
+		}
+	}
+
+	cvmx_helper_ipd_and_packet_input_enable();
+
+	memset(cvm_oct_device, 0, sizeof(cvm_oct_device));
+
+	/*
+	 * Initialize the FAU used for counting packet buffers that
+	 * need to be freed.
+	 */
+	cvmx_fau_atomic_write32(FAU_NUM_PACKET_BUFFERS_TO_FREE, 0);
+
+	/* Initialize the FAU used for counting tx SKBs that need to be freed */
+	cvmx_fau_atomic_write32(FAU_TOTAL_TX_TO_CLEAN, 0);
+
+	if ((pow_send_group != -1)) {
+		struct net_device *dev;
+
+		dev = alloc_etherdev(sizeof(struct octeon_ethernet));
+		if (dev) {
+			/* Initialize the device private structure. */
+			struct octeon_ethernet *priv = netdev_priv(dev);
+
+			SET_NETDEV_DEV(dev, &pdev->dev);
+			dev->netdev_ops = &cvm_oct_pow_netdev_ops;
+			priv->imode = CVMX_HELPER_INTERFACE_MODE_DISABLED;
+			priv->port = CVMX_PIP_NUM_INPUT_PORTS;
+			priv->queue = -1;
+			strscpy(dev->name, "pow%d", sizeof(dev->name));
+			for (qos = 0; qos < 16; qos++)
+				skb_queue_head_init(&priv->tx_free_list[qos]);
+			dev->min_mtu = VLAN_ETH_ZLEN - mtu_overhead;
+			dev->max_mtu = OCTEON_MAX_MTU - mtu_overhead;
+
+			if (register_netdev(dev) < 0) {
+				pr_err("Failed to register ethernet device for POW\n");
+				free_netdev(dev);
+			} else {
+				cvm_oct_device[CVMX_PIP_NUM_INPUT_PORTS] = dev;
+				pr_info("%s: POW send group %d, receive group %d\n",
+					dev->name, pow_send_group,
+					pow_receive_group);
+			}
+		} else {
+			pr_err("Failed to allocate ethernet device for POW\n");
+		}
+	}
+
+	num_interfaces = cvmx_helper_get_number_of_interfaces();
+	for (interface = 0; interface < num_interfaces; interface++) {
+		cvmx_helper_interface_mode_t imode =
+		    cvmx_helper_interface_get_mode(interface);
+		int num_ports = cvmx_helper_ports_on_interface(interface);
+		int port;
+		int port_index;
+
+		for (port_index = 0,
+		     port = cvmx_helper_get_ipd_port(interface, 0);
+		     port < cvmx_helper_get_ipd_port(interface, num_ports);
+		     port_index++, port++) {
+			struct octeon_ethernet *priv;
+			struct net_device *dev =
+			    alloc_etherdev(sizeof(struct octeon_ethernet));
+			if (!dev) {
+				pr_err("Failed to allocate ethernet device for port %d\n",
+				       port);
+				continue;
+			}
+
+			/* Initialize the device private structure. */
+			SET_NETDEV_DEV(dev, &pdev->dev);
+			priv = netdev_priv(dev);
+			priv->netdev = dev;
+			priv->of_node = cvm_oct_node_for_port(pip, interface,
+							      port_index);
+
+			INIT_DELAYED_WORK(&priv->port_periodic_work,
+					  cvm_oct_periodic_worker);
+			priv->imode = imode;
+			priv->port = port;
+			priv->queue = cvmx_pko_get_base_queue(priv->port);
+			priv->fau = fau - cvmx_pko_get_num_queues(port) * 4;
+			priv->phy_mode = PHY_INTERFACE_MODE_NA;
+			for (qos = 0; qos < 16; qos++)
+				skb_queue_head_init(&priv->tx_free_list[qos]);
+			for (qos = 0; qos < cvmx_pko_get_num_queues(port);
+			     qos++)
+				cvmx_fau_atomic_write32(priv->fau + qos * 4, 0);
+			dev->min_mtu = VLAN_ETH_ZLEN - mtu_overhead;
+			dev->max_mtu = OCTEON_MAX_MTU - mtu_overhead;
+
+			switch (priv->imode) {
+			/* These types don't support ports to IPD/PKO */
+			case CVMX_HELPER_INTERFACE_MODE_DISABLED:
+			case CVMX_HELPER_INTERFACE_MODE_PCIE:
+			case CVMX_HELPER_INTERFACE_MODE_PICMG:
+				break;
+
+			case CVMX_HELPER_INTERFACE_MODE_NPI:
+				dev->netdev_ops = &cvm_oct_npi_netdev_ops;
+				strscpy(dev->name, "npi%d", sizeof(dev->name));
+				break;
+
+			case CVMX_HELPER_INTERFACE_MODE_XAUI:
+				dev->netdev_ops = &cvm_oct_xaui_netdev_ops;
+				strscpy(dev->name, "xaui%d", sizeof(dev->name));
+				break;
+
+			case CVMX_HELPER_INTERFACE_MODE_LOOP:
+				dev->netdev_ops = &cvm_oct_npi_netdev_ops;
+				strscpy(dev->name, "loop%d", sizeof(dev->name));
+				break;
+
+			case CVMX_HELPER_INTERFACE_MODE_SGMII:
+				priv->phy_mode = PHY_INTERFACE_MODE_SGMII;
+				dev->netdev_ops = &cvm_oct_sgmii_netdev_ops;
+				strscpy(dev->name, "eth%d", sizeof(dev->name));
+				break;
+
+			case CVMX_HELPER_INTERFACE_MODE_SPI:
+				dev->netdev_ops = &cvm_oct_spi_netdev_ops;
+				strscpy(dev->name, "spi%d", sizeof(dev->name));
+				break;
+
+			case CVMX_HELPER_INTERFACE_MODE_GMII:
+				priv->phy_mode = PHY_INTERFACE_MODE_GMII;
+				dev->netdev_ops = &cvm_oct_rgmii_netdev_ops;
+				strscpy(dev->name, "eth%d", sizeof(dev->name));
+				break;
+
+			case CVMX_HELPER_INTERFACE_MODE_RGMII:
+				dev->netdev_ops = &cvm_oct_rgmii_netdev_ops;
+				strscpy(dev->name, "eth%d", sizeof(dev->name));
+				cvm_set_rgmii_delay(priv, interface,
+						    port_index);
+				break;
+			}
+
+			if (!dev->netdev_ops) {
+				free_netdev(dev);
+			} else if (register_netdev(dev) < 0) {
+				pr_err("Failed to register ethernet device for interface %d, port %d\n",
+				       interface, priv->port);
+				free_netdev(dev);
+			} else {
+				cvm_oct_device[priv->port] = dev;
+				fau -=
+				    cvmx_pko_get_num_queues(priv->port) *
+				    sizeof(u32);
+				schedule_delayed_work(&priv->port_periodic_work,
+						      HZ);
+			}
+		}
+	}
+
+	cvm_oct_tx_initialize();
+	cvm_oct_rx_initialize();
+
+	/*
+	 * 150 uS: about 10 1500-byte packets at 1GE.
+	 */
+	cvm_oct_tx_poll_interval = 150 * (octeon_get_clock_rate() / 1000000);
+
+	schedule_delayed_work(&cvm_oct_rx_refill_work, HZ);
+
+	return 0;
+}
+
+static int cvm_oct_remove(struct platform_device *pdev)
+{
+	int port;
+
+	cvmx_ipd_disable();
+
+	atomic_inc_return(&cvm_oct_poll_queue_stopping);
+	cancel_delayed_work_sync(&cvm_oct_rx_refill_work);
+
+	cvm_oct_rx_shutdown();
+	cvm_oct_tx_shutdown();
+
+	cvmx_pko_disable();
+
+	/* Free the ethernet devices */
+	for (port = 0; port < TOTAL_NUMBER_OF_PORTS; port++) {
+		if (cvm_oct_device[port]) {
+			struct net_device *dev = cvm_oct_device[port];
+			struct octeon_ethernet *priv = netdev_priv(dev);
+
+			cancel_delayed_work_sync(&priv->port_periodic_work);
+
+			cvm_oct_tx_shutdown_dev(dev);
+			unregister_netdev(dev);
+			free_netdev(dev);
+			cvm_oct_device[port] = NULL;
+		}
+	}
+
+	cvmx_pko_shutdown();
+
+	cvmx_ipd_free_ptr();
+
+	/* Free the HW pools */
+	cvm_oct_mem_empty_fpa(CVMX_FPA_PACKET_POOL, CVMX_FPA_PACKET_POOL_SIZE,
+			      num_packet_buffers);
+	cvm_oct_mem_empty_fpa(CVMX_FPA_WQE_POOL, CVMX_FPA_WQE_POOL_SIZE,
+			      num_packet_buffers);
+	if (CVMX_FPA_OUTPUT_BUFFER_POOL != CVMX_FPA_PACKET_POOL)
+		cvm_oct_mem_empty_fpa(CVMX_FPA_OUTPUT_BUFFER_POOL,
+				      CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE, 128);
+	return 0;
+}
+
+static const struct of_device_id cvm_oct_match[] = {
+	{
+		.compatible = "cavium,octeon-3860-pip",
+	},
+	{},
+};
+MODULE_DEVICE_TABLE(of, cvm_oct_match);
+
+static struct platform_driver cvm_oct_driver = {
+	.probe		= cvm_oct_probe,
+	.remove		= cvm_oct_remove,
+	.driver		= {
+		.name	= KBUILD_MODNAME,
+		.of_match_table = cvm_oct_match,
+	},
+};
+
+module_platform_driver(cvm_oct_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Cavium Networks <support@caviumnetworks.com>");
+MODULE_DESCRIPTION("Cavium Networks Octeon ethernet driver.");
diff --git a/drivers/staging/octeon/octeon-ethernet.h b/drivers/staging/octeon/octeon-ethernet.h
new file mode 100644
index 000000000000..a6140705706f
--- /dev/null
+++ b/drivers/staging/octeon/octeon-ethernet.h
@@ -0,0 +1,107 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This file is based on code from OCTEON SDK by Cavium Networks.
+ *
+ * Copyright (c) 2003-2010 Cavium Networks
+ */
+
+/*
+ * External interface for the Cavium Octeon ethernet driver.
+ */
+#ifndef OCTEON_ETHERNET_H
+#define OCTEON_ETHERNET_H
+
+#include <linux/of.h>
+#include <linux/phy.h>
+
+#ifdef CONFIG_CAVIUM_OCTEON_SOC
+
+#include <asm/octeon/octeon.h>
+
+#include <asm/octeon/cvmx-asxx-defs.h>
+#include <asm/octeon/cvmx-config.h>
+#include <asm/octeon/cvmx-fau.h>
+#include <asm/octeon/cvmx-gmxx-defs.h>
+#include <asm/octeon/cvmx-helper.h>
+#include <asm/octeon/cvmx-helper-util.h>
+#include <asm/octeon/cvmx-ipd.h>
+#include <asm/octeon/cvmx-ipd-defs.h>
+#include <asm/octeon/cvmx-npi-defs.h>
+#include <asm/octeon/cvmx-pip.h>
+#include <asm/octeon/cvmx-pko.h>
+#include <asm/octeon/cvmx-pow.h>
+#include <asm/octeon/cvmx-scratch.h>
+#include <asm/octeon/cvmx-spi.h>
+#include <asm/octeon/cvmx-spxx-defs.h>
+#include <asm/octeon/cvmx-stxx-defs.h>
+#include <asm/octeon/cvmx-wqe.h>
+
+#else
+
+#include "octeon-stubs.h"
+
+#endif
+
+/**
+ * This is the definition of the Ethernet driver's private
+ * driver state stored in netdev_priv(dev).
+ */
+struct octeon_ethernet {
+	/* PKO hardware output port */
+	int port;
+	/* PKO hardware queue for the port */
+	int queue;
+	/* Hardware fetch and add to count outstanding tx buffers */
+	int fau;
+	/* My netdev. */
+	struct net_device *netdev;
+	/*
+	 * Type of port. This is one of the enums in
+	 * cvmx_helper_interface_mode_t
+	 */
+	int imode;
+	/* PHY mode */
+	phy_interface_t phy_mode;
+	/* List of outstanding tx buffers per queue */
+	struct sk_buff_head tx_free_list[16];
+	unsigned int last_speed;
+	unsigned int last_link;
+	/* Last negotiated link state */
+	u64 link_info;
+	/* Called periodically to check link status */
+	void (*poll)(struct net_device *dev);
+	struct delayed_work	port_periodic_work;
+	struct device_node	*of_node;
+};
+
+int cvm_oct_free_work(void *work_queue_entry);
+
+int cvm_oct_rgmii_open(struct net_device *dev);
+
+int cvm_oct_sgmii_init(struct net_device *dev);
+int cvm_oct_sgmii_open(struct net_device *dev);
+
+int cvm_oct_spi_init(struct net_device *dev);
+void cvm_oct_spi_uninit(struct net_device *dev);
+
+int cvm_oct_common_init(struct net_device *dev);
+void cvm_oct_common_uninit(struct net_device *dev);
+void cvm_oct_adjust_link(struct net_device *dev);
+int cvm_oct_common_stop(struct net_device *dev);
+int cvm_oct_common_open(struct net_device *dev,
+			void (*link_poll)(struct net_device *));
+void cvm_oct_note_carrier(struct octeon_ethernet *priv,
+			  union cvmx_helper_link_info li);
+void cvm_oct_link_poll(struct net_device *dev);
+
+extern int always_use_pow;
+extern int pow_send_group;
+extern int pow_receive_groups;
+extern char pow_send_list[];
+extern struct net_device *cvm_oct_device[];
+extern atomic_t cvm_oct_poll_queue_stopping;
+extern u64 cvm_oct_tx_poll_interval;
+
+extern int rx_napi_weight;
+
+#endif
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
new file mode 100644
index 000000000000..79213c045504
--- /dev/null
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -0,0 +1,1433 @@
+#define CONFIG_CAVIUM_OCTEON_CVMSEG_SIZE	512
+
+#ifndef XKPHYS_TO_PHYS
+# define XKPHYS_TO_PHYS(p)			(p)
+#endif
+
+#define OCTEON_IRQ_WORKQ0 0
+#define OCTEON_IRQ_RML 0
+#define OCTEON_IRQ_TIMER1 0
+#define OCTEON_IS_MODEL(x) 0
+#define octeon_has_feature(x)	0
+#define octeon_get_clock_rate()	0
+
+#define CVMX_SYNCIOBDMA		do { } while(0)
+
+#define CVMX_HELPER_INPUT_TAG_TYPE	0
+#define CVMX_HELPER_FIRST_MBUFF_SKIP	7
+#define CVMX_FAU_REG_END		(2048)
+#define CVMX_FPA_OUTPUT_BUFFER_POOL	    (2)
+#define CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE    16
+#define CVMX_FPA_PACKET_POOL		    (0)
+#define CVMX_FPA_PACKET_POOL_SIZE	    16
+#define CVMX_FPA_WQE_POOL		    (1)
+#define CVMX_FPA_WQE_POOL_SIZE		    16
+#define CVMX_GMXX_RXX_ADR_CAM_EN(a, b)	((a)+(b))
+#define CVMX_GMXX_RXX_ADR_CTL(a, b)	((a)+(b))
+#define CVMX_GMXX_PRTX_CFG(a, b)	((a)+(b))
+#define CVMX_GMXX_RXX_FRM_MAX(a, b)	((a)+(b))
+#define CVMX_GMXX_RXX_JABBER(a, b)	((a)+(b))
+#define CVMX_IPD_CTL_STATUS		0
+#define CVMX_PIP_FRM_LEN_CHKX(a)	(a)
+#define CVMX_PIP_NUM_INPUT_PORTS	1
+#define CVMX_SCR_SCRATCH		0
+#define CVMX_PKO_QUEUES_PER_PORT_INTERFACE0	2
+#define CVMX_PKO_QUEUES_PER_PORT_INTERFACE1	2
+#define CVMX_IPD_SUB_PORT_FCS		0
+#define CVMX_SSO_WQ_IQ_DIS		0
+#define CVMX_SSO_WQ_INT			0
+#define CVMX_POW_WQ_INT			0
+#define CVMX_SSO_WQ_INT_PC		0
+#define CVMX_NPI_RSL_INT_BLOCKS		0
+#define CVMX_POW_WQ_INT_PC		0
+
+union cvmx_pip_wqe_word2 {
+	uint64_t u64;
+	struct {
+		uint64_t bufs:8;
+		uint64_t ip_offset:8;
+		uint64_t vlan_valid:1;
+		uint64_t vlan_stacked:1;
+		uint64_t unassigned:1;
+		uint64_t vlan_cfi:1;
+		uint64_t vlan_id:12;
+		uint64_t pr:4;
+		uint64_t unassigned2:8;
+		uint64_t dec_ipcomp:1;
+		uint64_t tcp_or_udp:1;
+		uint64_t dec_ipsec:1;
+		uint64_t is_v6:1;
+		uint64_t software:1;
+		uint64_t L4_error:1;
+		uint64_t is_frag:1;
+		uint64_t IP_exc:1;
+		uint64_t is_bcast:1;
+		uint64_t is_mcast:1;
+		uint64_t not_IP:1;
+		uint64_t rcv_error:1;
+		uint64_t err_code:8;
+	} s;
+	struct {
+		uint64_t bufs:8;
+		uint64_t ip_offset:8;
+		uint64_t vlan_valid:1;
+		uint64_t vlan_stacked:1;
+		uint64_t unassigned:1;
+		uint64_t vlan_cfi:1;
+		uint64_t vlan_id:12;
+		uint64_t port:12;
+		uint64_t dec_ipcomp:1;
+		uint64_t tcp_or_udp:1;
+		uint64_t dec_ipsec:1;
+		uint64_t is_v6:1;
+		uint64_t software:1;
+		uint64_t L4_error:1;
+		uint64_t is_frag:1;
+		uint64_t IP_exc:1;
+		uint64_t is_bcast:1;
+		uint64_t is_mcast:1;
+		uint64_t not_IP:1;
+		uint64_t rcv_error:1;
+		uint64_t err_code:8;
+	} s_cn68xx;
+
+	struct {
+		uint64_t unused1:16;
+		uint64_t vlan:16;
+		uint64_t unused2:32;
+	} svlan;
+	struct {
+		uint64_t bufs:8;
+		uint64_t unused:8;
+		uint64_t vlan_valid:1;
+		uint64_t vlan_stacked:1;
+		uint64_t unassigned:1;
+		uint64_t vlan_cfi:1;
+		uint64_t vlan_id:12;
+		uint64_t pr:4;
+		uint64_t unassigned2:12;
+		uint64_t software:1;
+		uint64_t unassigned3:1;
+		uint64_t is_rarp:1;
+		uint64_t is_arp:1;
+		uint64_t is_bcast:1;
+		uint64_t is_mcast:1;
+		uint64_t not_IP:1;
+		uint64_t rcv_error:1;
+		uint64_t err_code:8;
+	} snoip;
+
+};
+
+union cvmx_pip_wqe_word0 {
+	struct {
+		uint64_t next_ptr:40;
+		uint8_t unused;
+		__wsum hw_chksum;
+	} cn38xx;
+	struct {
+		uint64_t pknd:6;        /* 0..5 */
+		uint64_t unused2:2;     /* 6..7 */
+		uint64_t bpid:6;        /* 8..13 */
+		uint64_t unused1:18;    /* 14..31 */
+		uint64_t l2ptr:8;       /* 32..39 */
+		uint64_t l3ptr:8;       /* 40..47 */
+		uint64_t unused0:8;     /* 48..55 */
+		uint64_t l4ptr:8;       /* 56..63 */
+	} cn68xx;
+};
+
+union cvmx_wqe_word0 {
+	uint64_t u64;
+	union cvmx_pip_wqe_word0 pip;
+};
+
+union cvmx_wqe_word1 {
+	uint64_t u64;
+	struct {
+		uint64_t tag:32;
+		uint64_t tag_type:2;
+		uint64_t varies:14;
+		uint64_t len:16;
+	};
+	struct {
+		uint64_t tag:32;
+		uint64_t tag_type:2;
+		uint64_t zero_2:3;
+		uint64_t grp:6;
+		uint64_t zero_1:1;
+		uint64_t qos:3;
+		uint64_t zero_0:1;
+		uint64_t len:16;
+	} cn68xx;
+	struct {
+		uint64_t tag:32;
+		uint64_t tag_type:2;
+		uint64_t zero_2:1;
+		uint64_t grp:4;
+		uint64_t qos:3;
+		uint64_t ipprt:6;
+		uint64_t len:16;
+	} cn38xx;
+};
+
+union cvmx_buf_ptr {
+	void *ptr;
+	uint64_t u64;
+	struct {
+		uint64_t i:1;
+		uint64_t back:4;
+		uint64_t pool:3;
+		uint64_t size:16;
+		uint64_t addr:40;
+	} s;
+};
+
+struct cvmx_wqe {
+	union cvmx_wqe_word0 word0;
+	union cvmx_wqe_word1 word1;
+	union cvmx_pip_wqe_word2 word2;
+	union cvmx_buf_ptr packet_ptr;
+	uint8_t packet_data[96];
+};
+
+union cvmx_helper_link_info {
+	uint64_t u64;
+	struct {
+		uint64_t reserved_20_63:44;
+		uint64_t link_up:1;	    /**< Is the physical link up? */
+		uint64_t full_duplex:1;	    /**< 1 if the link is full duplex */
+		uint64_t speed:18;	    /**< Speed of the link in Mbps */
+	} s;
+};
+
+enum cvmx_fau_reg_32 {
+	CVMX_FAU_REG_32_START	= 0,
+};
+
+enum cvmx_fau_op_size {
+	CVMX_FAU_OP_SIZE_8 = 0,
+	CVMX_FAU_OP_SIZE_16 = 1,
+	CVMX_FAU_OP_SIZE_32 = 2,
+	CVMX_FAU_OP_SIZE_64 = 3
+};
+
+typedef enum {
+	CVMX_SPI_MODE_UNKNOWN = 0,
+	CVMX_SPI_MODE_TX_HALFPLEX = 1,
+	CVMX_SPI_MODE_RX_HALFPLEX = 2,
+	CVMX_SPI_MODE_DUPLEX = 3
+} cvmx_spi_mode_t;
+
+typedef enum {
+	CVMX_HELPER_INTERFACE_MODE_DISABLED,
+	CVMX_HELPER_INTERFACE_MODE_RGMII,
+	CVMX_HELPER_INTERFACE_MODE_GMII,
+	CVMX_HELPER_INTERFACE_MODE_SPI,
+	CVMX_HELPER_INTERFACE_MODE_PCIE,
+	CVMX_HELPER_INTERFACE_MODE_XAUI,
+	CVMX_HELPER_INTERFACE_MODE_SGMII,
+	CVMX_HELPER_INTERFACE_MODE_PICMG,
+	CVMX_HELPER_INTERFACE_MODE_NPI,
+	CVMX_HELPER_INTERFACE_MODE_LOOP,
+} cvmx_helper_interface_mode_t;
+
+typedef enum {
+	CVMX_POW_WAIT = 1,
+	CVMX_POW_NO_WAIT = 0,
+} cvmx_pow_wait_t;
+
+typedef enum {
+	CVMX_PKO_LOCK_NONE = 0,
+	CVMX_PKO_LOCK_ATOMIC_TAG = 1,
+	CVMX_PKO_LOCK_CMD_QUEUE = 2,
+} cvmx_pko_lock_t;
+
+typedef enum {
+	CVMX_PKO_SUCCESS,
+	CVMX_PKO_INVALID_PORT,
+	CVMX_PKO_INVALID_QUEUE,
+	CVMX_PKO_INVALID_PRIORITY,
+	CVMX_PKO_NO_MEMORY,
+	CVMX_PKO_PORT_ALREADY_SETUP,
+	CVMX_PKO_CMD_QUEUE_INIT_ERROR
+} cvmx_pko_status_t;
+
+enum cvmx_pow_tag_type {
+	CVMX_POW_TAG_TYPE_ORDERED   = 0L,
+	CVMX_POW_TAG_TYPE_ATOMIC    = 1L,
+	CVMX_POW_TAG_TYPE_NULL	    = 2L,
+	CVMX_POW_TAG_TYPE_NULL_NULL = 3L
+};
+
+union cvmx_ipd_ctl_status {
+	uint64_t u64;
+	struct cvmx_ipd_ctl_status_s {
+		uint64_t reserved_18_63:46;
+		uint64_t use_sop:1;
+		uint64_t rst_done:1;
+		uint64_t clken:1;
+		uint64_t no_wptr:1;
+		uint64_t pq_apkt:1;
+		uint64_t pq_nabuf:1;
+		uint64_t ipd_full:1;
+		uint64_t pkt_off:1;
+		uint64_t len_m8:1;
+		uint64_t reset:1;
+		uint64_t addpkt:1;
+		uint64_t naddbuf:1;
+		uint64_t pkt_lend:1;
+		uint64_t wqe_lend:1;
+		uint64_t pbp_en:1;
+		uint64_t opc_mode:2;
+		uint64_t ipd_en:1;
+	} s;
+	struct cvmx_ipd_ctl_status_cn30xx {
+		uint64_t reserved_10_63:54;
+		uint64_t len_m8:1;
+		uint64_t reset:1;
+		uint64_t addpkt:1;
+		uint64_t naddbuf:1;
+		uint64_t pkt_lend:1;
+		uint64_t wqe_lend:1;
+		uint64_t pbp_en:1;
+		uint64_t opc_mode:2;
+		uint64_t ipd_en:1;
+	} cn30xx;
+	struct cvmx_ipd_ctl_status_cn38xxp2 {
+		uint64_t reserved_9_63:55;
+		uint64_t reset:1;
+		uint64_t addpkt:1;
+		uint64_t naddbuf:1;
+		uint64_t pkt_lend:1;
+		uint64_t wqe_lend:1;
+		uint64_t pbp_en:1;
+		uint64_t opc_mode:2;
+		uint64_t ipd_en:1;
+	} cn38xxp2;
+	struct cvmx_ipd_ctl_status_cn50xx {
+		uint64_t reserved_15_63:49;
+		uint64_t no_wptr:1;
+		uint64_t pq_apkt:1;
+		uint64_t pq_nabuf:1;
+		uint64_t ipd_full:1;
+		uint64_t pkt_off:1;
+		uint64_t len_m8:1;
+		uint64_t reset:1;
+		uint64_t addpkt:1;
+		uint64_t naddbuf:1;
+		uint64_t pkt_lend:1;
+		uint64_t wqe_lend:1;
+		uint64_t pbp_en:1;
+		uint64_t opc_mode:2;
+		uint64_t ipd_en:1;
+	} cn50xx;
+	struct cvmx_ipd_ctl_status_cn58xx {
+		uint64_t reserved_12_63:52;
+		uint64_t ipd_full:1;
+		uint64_t pkt_off:1;
+		uint64_t len_m8:1;
+		uint64_t reset:1;
+		uint64_t addpkt:1;
+		uint64_t naddbuf:1;
+		uint64_t pkt_lend:1;
+		uint64_t wqe_lend:1;
+		uint64_t pbp_en:1;
+		uint64_t opc_mode:2;
+		uint64_t ipd_en:1;
+	} cn58xx;
+	struct cvmx_ipd_ctl_status_cn63xxp1 {
+		uint64_t reserved_16_63:48;
+		uint64_t clken:1;
+		uint64_t no_wptr:1;
+		uint64_t pq_apkt:1;
+		uint64_t pq_nabuf:1;
+		uint64_t ipd_full:1;
+		uint64_t pkt_off:1;
+		uint64_t len_m8:1;
+		uint64_t reset:1;
+		uint64_t addpkt:1;
+		uint64_t naddbuf:1;
+		uint64_t pkt_lend:1;
+		uint64_t wqe_lend:1;
+		uint64_t pbp_en:1;
+		uint64_t opc_mode:2;
+		uint64_t ipd_en:1;
+	} cn63xxp1;
+};
+
+union cvmx_ipd_sub_port_fcs {
+	uint64_t u64;
+	struct cvmx_ipd_sub_port_fcs_s {
+		uint64_t port_bit:32;
+		uint64_t reserved_32_35:4;
+		uint64_t port_bit2:4;
+		uint64_t reserved_40_63:24;
+	} s;
+	struct cvmx_ipd_sub_port_fcs_cn30xx {
+		uint64_t port_bit:3;
+		uint64_t reserved_3_63:61;
+	} cn30xx;
+	struct cvmx_ipd_sub_port_fcs_cn38xx {
+		uint64_t port_bit:32;
+		uint64_t reserved_32_63:32;
+	} cn38xx;
+};
+
+union cvmx_ipd_sub_port_qos_cnt {
+	uint64_t u64;
+	struct cvmx_ipd_sub_port_qos_cnt_s {
+		uint64_t cnt:32;
+		uint64_t port_qos:9;
+		uint64_t reserved_41_63:23;
+	} s;
+};
+typedef struct {
+	uint32_t dropped_octets;
+	uint32_t dropped_packets;
+	uint32_t pci_raw_packets;
+	uint32_t octets;
+	uint32_t packets;
+	uint32_t multicast_packets;
+	uint32_t broadcast_packets;
+	uint32_t len_64_packets;
+	uint32_t len_65_127_packets;
+	uint32_t len_128_255_packets;
+	uint32_t len_256_511_packets;
+	uint32_t len_512_1023_packets;
+	uint32_t len_1024_1518_packets;
+	uint32_t len_1519_max_packets;
+	uint32_t fcs_align_err_packets;
+	uint32_t runt_packets;
+	uint32_t runt_crc_packets;
+	uint32_t oversize_packets;
+	uint32_t oversize_crc_packets;
+	uint32_t inb_packets;
+	uint64_t inb_octets;
+	uint16_t inb_errors;
+} cvmx_pip_port_status_t;
+
+typedef struct {
+	uint32_t packets;
+	uint64_t octets;
+	uint64_t doorbell;
+} cvmx_pko_port_status_t;
+
+union cvmx_pip_frm_len_chkx {
+	uint64_t u64;
+	struct cvmx_pip_frm_len_chkx_s {
+		uint64_t reserved_32_63:32;
+		uint64_t maxlen:16;
+		uint64_t minlen:16;
+	} s;
+};
+
+union cvmx_gmxx_rxx_frm_ctl {
+	uint64_t u64;
+	struct cvmx_gmxx_rxx_frm_ctl_s {
+		uint64_t pre_chk:1;
+		uint64_t pre_strp:1;
+		uint64_t ctl_drp:1;
+		uint64_t ctl_bck:1;
+		uint64_t ctl_mcst:1;
+		uint64_t ctl_smac:1;
+		uint64_t pre_free:1;
+		uint64_t vlan_len:1;
+		uint64_t pad_len:1;
+		uint64_t pre_align:1;
+		uint64_t null_dis:1;
+		uint64_t reserved_11_11:1;
+		uint64_t ptp_mode:1;
+		uint64_t reserved_13_63:51;
+	} s;
+	struct cvmx_gmxx_rxx_frm_ctl_cn30xx {
+		uint64_t pre_chk:1;
+		uint64_t pre_strp:1;
+		uint64_t ctl_drp:1;
+		uint64_t ctl_bck:1;
+		uint64_t ctl_mcst:1;
+		uint64_t ctl_smac:1;
+		uint64_t pre_free:1;
+		uint64_t vlan_len:1;
+		uint64_t pad_len:1;
+		uint64_t reserved_9_63:55;
+	} cn30xx;
+	struct cvmx_gmxx_rxx_frm_ctl_cn31xx {
+		uint64_t pre_chk:1;
+		uint64_t pre_strp:1;
+		uint64_t ctl_drp:1;
+		uint64_t ctl_bck:1;
+		uint64_t ctl_mcst:1;
+		uint64_t ctl_smac:1;
+		uint64_t pre_free:1;
+		uint64_t vlan_len:1;
+		uint64_t reserved_8_63:56;
+	} cn31xx;
+	struct cvmx_gmxx_rxx_frm_ctl_cn50xx {
+		uint64_t pre_chk:1;
+		uint64_t pre_strp:1;
+		uint64_t ctl_drp:1;
+		uint64_t ctl_bck:1;
+		uint64_t ctl_mcst:1;
+		uint64_t ctl_smac:1;
+		uint64_t pre_free:1;
+		uint64_t reserved_7_8:2;
+		uint64_t pre_align:1;
+		uint64_t null_dis:1;
+		uint64_t reserved_11_63:53;
+	} cn50xx;
+	struct cvmx_gmxx_rxx_frm_ctl_cn56xxp1 {
+		uint64_t pre_chk:1;
+		uint64_t pre_strp:1;
+		uint64_t ctl_drp:1;
+		uint64_t ctl_bck:1;
+		uint64_t ctl_mcst:1;
+		uint64_t ctl_smac:1;
+		uint64_t pre_free:1;
+		uint64_t reserved_7_8:2;
+		uint64_t pre_align:1;
+		uint64_t reserved_10_63:54;
+	} cn56xxp1;
+	struct cvmx_gmxx_rxx_frm_ctl_cn58xx {
+		uint64_t pre_chk:1;
+		uint64_t pre_strp:1;
+		uint64_t ctl_drp:1;
+		uint64_t ctl_bck:1;
+		uint64_t ctl_mcst:1;
+		uint64_t ctl_smac:1;
+		uint64_t pre_free:1;
+		uint64_t vlan_len:1;
+		uint64_t pad_len:1;
+		uint64_t pre_align:1;
+		uint64_t null_dis:1;
+		uint64_t reserved_11_63:53;
+	} cn58xx;
+	struct cvmx_gmxx_rxx_frm_ctl_cn61xx {
+		uint64_t pre_chk:1;
+		uint64_t pre_strp:1;
+		uint64_t ctl_drp:1;
+		uint64_t ctl_bck:1;
+		uint64_t ctl_mcst:1;
+		uint64_t ctl_smac:1;
+		uint64_t pre_free:1;
+		uint64_t reserved_7_8:2;
+		uint64_t pre_align:1;
+		uint64_t null_dis:1;
+		uint64_t reserved_11_11:1;
+		uint64_t ptp_mode:1;
+		uint64_t reserved_13_63:51;
+	} cn61xx;
+};
+
+union cvmx_gmxx_rxx_int_reg {
+	uint64_t u64;
+	struct cvmx_gmxx_rxx_int_reg_s {
+		uint64_t minerr:1;
+		uint64_t carext:1;
+		uint64_t maxerr:1;
+		uint64_t jabber:1;
+		uint64_t fcserr:1;
+		uint64_t alnerr:1;
+		uint64_t lenerr:1;
+		uint64_t rcverr:1;
+		uint64_t skperr:1;
+		uint64_t niberr:1;
+		uint64_t ovrerr:1;
+		uint64_t pcterr:1;
+		uint64_t rsverr:1;
+		uint64_t falerr:1;
+		uint64_t coldet:1;
+		uint64_t ifgerr:1;
+		uint64_t phy_link:1;
+		uint64_t phy_spd:1;
+		uint64_t phy_dupx:1;
+		uint64_t pause_drp:1;
+		uint64_t loc_fault:1;
+		uint64_t rem_fault:1;
+		uint64_t bad_seq:1;
+		uint64_t bad_term:1;
+		uint64_t unsop:1;
+		uint64_t uneop:1;
+		uint64_t undat:1;
+		uint64_t hg2fld:1;
+		uint64_t hg2cc:1;
+		uint64_t reserved_29_63:35;
+	} s;
+	struct cvmx_gmxx_rxx_int_reg_cn30xx {
+		uint64_t minerr:1;
+		uint64_t carext:1;
+		uint64_t maxerr:1;
+		uint64_t jabber:1;
+		uint64_t fcserr:1;
+		uint64_t alnerr:1;
+		uint64_t lenerr:1;
+		uint64_t rcverr:1;
+		uint64_t skperr:1;
+		uint64_t niberr:1;
+		uint64_t ovrerr:1;
+		uint64_t pcterr:1;
+		uint64_t rsverr:1;
+		uint64_t falerr:1;
+		uint64_t coldet:1;
+		uint64_t ifgerr:1;
+		uint64_t phy_link:1;
+		uint64_t phy_spd:1;
+		uint64_t phy_dupx:1;
+		uint64_t reserved_19_63:45;
+	} cn30xx;
+	struct cvmx_gmxx_rxx_int_reg_cn50xx {
+		uint64_t reserved_0_0:1;
+		uint64_t carext:1;
+		uint64_t reserved_2_2:1;
+		uint64_t jabber:1;
+		uint64_t fcserr:1;
+		uint64_t alnerr:1;
+		uint64_t reserved_6_6:1;
+		uint64_t rcverr:1;
+		uint64_t skperr:1;
+		uint64_t niberr:1;
+		uint64_t ovrerr:1;
+		uint64_t pcterr:1;
+		uint64_t rsverr:1;
+		uint64_t falerr:1;
+		uint64_t coldet:1;
+		uint64_t ifgerr:1;
+		uint64_t phy_link:1;
+		uint64_t phy_spd:1;
+		uint64_t phy_dupx:1;
+		uint64_t pause_drp:1;
+		uint64_t reserved_20_63:44;
+	} cn50xx;
+	struct cvmx_gmxx_rxx_int_reg_cn52xx {
+		uint64_t reserved_0_0:1;
+		uint64_t carext:1;
+		uint64_t reserved_2_2:1;
+		uint64_t jabber:1;
+		uint64_t fcserr:1;
+		uint64_t reserved_5_6:2;
+		uint64_t rcverr:1;
+		uint64_t skperr:1;
+		uint64_t reserved_9_9:1;
+		uint64_t ovrerr:1;
+		uint64_t pcterr:1;
+		uint64_t rsverr:1;
+		uint64_t falerr:1;
+		uint64_t coldet:1;
+		uint64_t ifgerr:1;
+		uint64_t reserved_16_18:3;
+		uint64_t pause_drp:1;
+		uint64_t loc_fault:1;
+		uint64_t rem_fault:1;
+		uint64_t bad_seq:1;
+		uint64_t bad_term:1;
+		uint64_t unsop:1;
+		uint64_t uneop:1;
+		uint64_t undat:1;
+		uint64_t hg2fld:1;
+		uint64_t hg2cc:1;
+		uint64_t reserved_29_63:35;
+	} cn52xx;
+	struct cvmx_gmxx_rxx_int_reg_cn56xxp1 {
+		uint64_t reserved_0_0:1;
+		uint64_t carext:1;
+		uint64_t reserved_2_2:1;
+		uint64_t jabber:1;
+		uint64_t fcserr:1;
+		uint64_t reserved_5_6:2;
+		uint64_t rcverr:1;
+		uint64_t skperr:1;
+		uint64_t reserved_9_9:1;
+		uint64_t ovrerr:1;
+		uint64_t pcterr:1;
+		uint64_t rsverr:1;
+		uint64_t falerr:1;
+		uint64_t coldet:1;
+		uint64_t ifgerr:1;
+		uint64_t reserved_16_18:3;
+		uint64_t pause_drp:1;
+		uint64_t loc_fault:1;
+		uint64_t rem_fault:1;
+		uint64_t bad_seq:1;
+		uint64_t bad_term:1;
+		uint64_t unsop:1;
+		uint64_t uneop:1;
+		uint64_t undat:1;
+		uint64_t reserved_27_63:37;
+	} cn56xxp1;
+	struct cvmx_gmxx_rxx_int_reg_cn58xx {
+		uint64_t minerr:1;
+		uint64_t carext:1;
+		uint64_t maxerr:1;
+		uint64_t jabber:1;
+		uint64_t fcserr:1;
+		uint64_t alnerr:1;
+		uint64_t lenerr:1;
+		uint64_t rcverr:1;
+		uint64_t skperr:1;
+		uint64_t niberr:1;
+		uint64_t ovrerr:1;
+		uint64_t pcterr:1;
+		uint64_t rsverr:1;
+		uint64_t falerr:1;
+		uint64_t coldet:1;
+		uint64_t ifgerr:1;
+		uint64_t phy_link:1;
+		uint64_t phy_spd:1;
+		uint64_t phy_dupx:1;
+		uint64_t pause_drp:1;
+		uint64_t reserved_20_63:44;
+	} cn58xx;
+	struct cvmx_gmxx_rxx_int_reg_cn61xx {
+		uint64_t minerr:1;
+		uint64_t carext:1;
+		uint64_t reserved_2_2:1;
+		uint64_t jabber:1;
+		uint64_t fcserr:1;
+		uint64_t reserved_5_6:2;
+		uint64_t rcverr:1;
+		uint64_t skperr:1;
+		uint64_t reserved_9_9:1;
+		uint64_t ovrerr:1;
+		uint64_t pcterr:1;
+		uint64_t rsverr:1;
+		uint64_t falerr:1;
+		uint64_t coldet:1;
+		uint64_t ifgerr:1;
+		uint64_t reserved_16_18:3;
+		uint64_t pause_drp:1;
+		uint64_t loc_fault:1;
+		uint64_t rem_fault:1;
+		uint64_t bad_seq:1;
+		uint64_t bad_term:1;
+		uint64_t unsop:1;
+		uint64_t uneop:1;
+		uint64_t undat:1;
+		uint64_t hg2fld:1;
+		uint64_t hg2cc:1;
+		uint64_t reserved_29_63:35;
+	} cn61xx;
+};
+
+union cvmx_gmxx_prtx_cfg {
+	uint64_t u64;
+	struct cvmx_gmxx_prtx_cfg_s {
+		uint64_t reserved_22_63:42;
+		uint64_t pknd:6;
+		uint64_t reserved_14_15:2;
+		uint64_t tx_idle:1;
+		uint64_t rx_idle:1;
+		uint64_t reserved_9_11:3;
+		uint64_t speed_msb:1;
+		uint64_t reserved_4_7:4;
+		uint64_t slottime:1;
+		uint64_t duplex:1;
+		uint64_t speed:1;
+		uint64_t en:1;
+	} s;
+	struct cvmx_gmxx_prtx_cfg_cn30xx {
+		uint64_t reserved_4_63:60;
+		uint64_t slottime:1;
+		uint64_t duplex:1;
+		uint64_t speed:1;
+		uint64_t en:1;
+	} cn30xx;
+	struct cvmx_gmxx_prtx_cfg_cn52xx {
+		uint64_t reserved_14_63:50;
+		uint64_t tx_idle:1;
+		uint64_t rx_idle:1;
+		uint64_t reserved_9_11:3;
+		uint64_t speed_msb:1;
+		uint64_t reserved_4_7:4;
+		uint64_t slottime:1;
+		uint64_t duplex:1;
+		uint64_t speed:1;
+		uint64_t en:1;
+	} cn52xx;
+};
+
+union cvmx_gmxx_rxx_adr_ctl {
+	uint64_t u64;
+	struct cvmx_gmxx_rxx_adr_ctl_s {
+		uint64_t reserved_4_63:60;
+		uint64_t cam_mode:1;
+		uint64_t mcst:2;
+		uint64_t bcst:1;
+	} s;
+};
+
+union cvmx_pip_prt_tagx {
+	uint64_t u64;
+	struct cvmx_pip_prt_tagx_s {
+		uint64_t reserved_54_63:10;
+		uint64_t portadd_en:1;
+		uint64_t inc_hwchk:1;
+		uint64_t reserved_50_51:2;
+		uint64_t grptagbase_msb:2;
+		uint64_t reserved_46_47:2;
+		uint64_t grptagmask_msb:2;
+		uint64_t reserved_42_43:2;
+		uint64_t grp_msb:2;
+		uint64_t grptagbase:4;
+		uint64_t grptagmask:4;
+		uint64_t grptag:1;
+		uint64_t grptag_mskip:1;
+		uint64_t tag_mode:2;
+		uint64_t inc_vs:2;
+		uint64_t inc_vlan:1;
+		uint64_t inc_prt_flag:1;
+		uint64_t ip6_dprt_flag:1;
+		uint64_t ip4_dprt_flag:1;
+		uint64_t ip6_sprt_flag:1;
+		uint64_t ip4_sprt_flag:1;
+		uint64_t ip6_nxth_flag:1;
+		uint64_t ip4_pctl_flag:1;
+		uint64_t ip6_dst_flag:1;
+		uint64_t ip4_dst_flag:1;
+		uint64_t ip6_src_flag:1;
+		uint64_t ip4_src_flag:1;
+		uint64_t tcp6_tag_type:2;
+		uint64_t tcp4_tag_type:2;
+		uint64_t ip6_tag_type:2;
+		uint64_t ip4_tag_type:2;
+		uint64_t non_tag_type:2;
+		uint64_t grp:4;
+	} s;
+	struct cvmx_pip_prt_tagx_cn30xx {
+		uint64_t reserved_40_63:24;
+		uint64_t grptagbase:4;
+		uint64_t grptagmask:4;
+		uint64_t grptag:1;
+		uint64_t reserved_30_30:1;
+		uint64_t tag_mode:2;
+		uint64_t inc_vs:2;
+		uint64_t inc_vlan:1;
+		uint64_t inc_prt_flag:1;
+		uint64_t ip6_dprt_flag:1;
+		uint64_t ip4_dprt_flag:1;
+		uint64_t ip6_sprt_flag:1;
+		uint64_t ip4_sprt_flag:1;
+		uint64_t ip6_nxth_flag:1;
+		uint64_t ip4_pctl_flag:1;
+		uint64_t ip6_dst_flag:1;
+		uint64_t ip4_dst_flag:1;
+		uint64_t ip6_src_flag:1;
+		uint64_t ip4_src_flag:1;
+		uint64_t tcp6_tag_type:2;
+		uint64_t tcp4_tag_type:2;
+		uint64_t ip6_tag_type:2;
+		uint64_t ip4_tag_type:2;
+		uint64_t non_tag_type:2;
+		uint64_t grp:4;
+	} cn30xx;
+	struct cvmx_pip_prt_tagx_cn50xx {
+		uint64_t reserved_40_63:24;
+		uint64_t grptagbase:4;
+		uint64_t grptagmask:4;
+		uint64_t grptag:1;
+		uint64_t grptag_mskip:1;
+		uint64_t tag_mode:2;
+		uint64_t inc_vs:2;
+		uint64_t inc_vlan:1;
+		uint64_t inc_prt_flag:1;
+		uint64_t ip6_dprt_flag:1;
+		uint64_t ip4_dprt_flag:1;
+		uint64_t ip6_sprt_flag:1;
+		uint64_t ip4_sprt_flag:1;
+		uint64_t ip6_nxth_flag:1;
+		uint64_t ip4_pctl_flag:1;
+		uint64_t ip6_dst_flag:1;
+		uint64_t ip4_dst_flag:1;
+		uint64_t ip6_src_flag:1;
+		uint64_t ip4_src_flag:1;
+		uint64_t tcp6_tag_type:2;
+		uint64_t tcp4_tag_type:2;
+		uint64_t ip6_tag_type:2;
+		uint64_t ip4_tag_type:2;
+		uint64_t non_tag_type:2;
+		uint64_t grp:4;
+	} cn50xx;
+};
+
+union cvmx_spxx_int_reg {
+	uint64_t u64;
+	struct cvmx_spxx_int_reg_s {
+		uint64_t reserved_32_63:32;
+		uint64_t spf:1;
+		uint64_t reserved_12_30:19;
+		uint64_t calerr:1;
+		uint64_t syncerr:1;
+		uint64_t diperr:1;
+		uint64_t tpaovr:1;
+		uint64_t rsverr:1;
+		uint64_t drwnng:1;
+		uint64_t clserr:1;
+		uint64_t spiovr:1;
+		uint64_t reserved_2_3:2;
+		uint64_t abnorm:1;
+		uint64_t prtnxa:1;
+	} s;
+};
+
+union cvmx_spxx_int_msk {
+	uint64_t u64;
+	struct cvmx_spxx_int_msk_s {
+		uint64_t reserved_12_63:52;
+		uint64_t calerr:1;
+		uint64_t syncerr:1;
+		uint64_t diperr:1;
+		uint64_t tpaovr:1;
+		uint64_t rsverr:1;
+		uint64_t drwnng:1;
+		uint64_t clserr:1;
+		uint64_t spiovr:1;
+		uint64_t reserved_2_3:2;
+		uint64_t abnorm:1;
+		uint64_t prtnxa:1;
+	} s;
+};
+
+union cvmx_pow_wq_int {
+	uint64_t u64;
+	struct cvmx_pow_wq_int_s {
+		uint64_t wq_int:16;
+		uint64_t iq_dis:16;
+		uint64_t reserved_32_63:32;
+	} s;
+};
+
+union cvmx_sso_wq_int_thrx {
+	uint64_t u64;
+	struct {
+		uint64_t iq_thr:12;
+		uint64_t reserved_12_13:2;
+		uint64_t ds_thr:12;
+		uint64_t reserved_26_27:2;
+		uint64_t tc_thr:4;
+		uint64_t tc_en:1;
+		uint64_t reserved_33_63:31;
+	} s;
+};
+
+union cvmx_stxx_int_reg {
+	uint64_t u64;
+	struct cvmx_stxx_int_reg_s {
+		uint64_t reserved_9_63:55;
+		uint64_t syncerr:1;
+		uint64_t frmerr:1;
+		uint64_t unxfrm:1;
+		uint64_t nosync:1;
+		uint64_t diperr:1;
+		uint64_t datovr:1;
+		uint64_t ovrbst:1;
+		uint64_t calpar1:1;
+		uint64_t calpar0:1;
+	} s;
+};
+
+union cvmx_stxx_int_msk {
+	uint64_t u64;
+	struct cvmx_stxx_int_msk_s {
+		uint64_t reserved_8_63:56;
+		uint64_t frmerr:1;
+		uint64_t unxfrm:1;
+		uint64_t nosync:1;
+		uint64_t diperr:1;
+		uint64_t datovr:1;
+		uint64_t ovrbst:1;
+		uint64_t calpar1:1;
+		uint64_t calpar0:1;
+	} s;
+};
+
+union cvmx_pow_wq_int_pc {
+	uint64_t u64;
+	struct cvmx_pow_wq_int_pc_s {
+		uint64_t reserved_0_7:8;
+		uint64_t pc_thr:20;
+		uint64_t reserved_28_31:4;
+		uint64_t pc:28;
+		uint64_t reserved_60_63:4;
+	} s;
+};
+
+union cvmx_pow_wq_int_thrx {
+	uint64_t u64;
+	struct cvmx_pow_wq_int_thrx_s {
+		uint64_t reserved_29_63:35;
+		uint64_t tc_en:1;
+		uint64_t tc_thr:4;
+		uint64_t reserved_23_23:1;
+		uint64_t ds_thr:11;
+		uint64_t reserved_11_11:1;
+		uint64_t iq_thr:11;
+	} s;
+	struct cvmx_pow_wq_int_thrx_cn30xx {
+		uint64_t reserved_29_63:35;
+		uint64_t tc_en:1;
+		uint64_t tc_thr:4;
+		uint64_t reserved_18_23:6;
+		uint64_t ds_thr:6;
+		uint64_t reserved_6_11:6;
+		uint64_t iq_thr:6;
+	} cn30xx;
+	struct cvmx_pow_wq_int_thrx_cn31xx {
+		uint64_t reserved_29_63:35;
+		uint64_t tc_en:1;
+		uint64_t tc_thr:4;
+		uint64_t reserved_20_23:4;
+		uint64_t ds_thr:8;
+		uint64_t reserved_8_11:4;
+		uint64_t iq_thr:8;
+	} cn31xx;
+	struct cvmx_pow_wq_int_thrx_cn52xx {
+		uint64_t reserved_29_63:35;
+		uint64_t tc_en:1;
+		uint64_t tc_thr:4;
+		uint64_t reserved_21_23:3;
+		uint64_t ds_thr:9;
+		uint64_t reserved_9_11:3;
+		uint64_t iq_thr:9;
+	} cn52xx;
+	struct cvmx_pow_wq_int_thrx_cn63xx {
+		uint64_t reserved_29_63:35;
+		uint64_t tc_en:1;
+		uint64_t tc_thr:4;
+		uint64_t reserved_22_23:2;
+		uint64_t ds_thr:10;
+		uint64_t reserved_10_11:2;
+		uint64_t iq_thr:10;
+	} cn63xx;
+};
+
+union cvmx_npi_rsl_int_blocks {
+	uint64_t u64;
+	struct cvmx_npi_rsl_int_blocks_s {
+		uint64_t reserved_32_63:32;
+		uint64_t rint_31:1;
+		uint64_t iob:1;
+		uint64_t reserved_28_29:2;
+		uint64_t rint_27:1;
+		uint64_t rint_26:1;
+		uint64_t rint_25:1;
+		uint64_t rint_24:1;
+		uint64_t asx1:1;
+		uint64_t asx0:1;
+		uint64_t rint_21:1;
+		uint64_t pip:1;
+		uint64_t spx1:1;
+		uint64_t spx0:1;
+		uint64_t lmc:1;
+		uint64_t l2c:1;
+		uint64_t rint_15:1;
+		uint64_t reserved_13_14:2;
+		uint64_t pow:1;
+		uint64_t tim:1;
+		uint64_t pko:1;
+		uint64_t ipd:1;
+		uint64_t rint_8:1;
+		uint64_t zip:1;
+		uint64_t dfa:1;
+		uint64_t fpa:1;
+		uint64_t key:1;
+		uint64_t npi:1;
+		uint64_t gmx1:1;
+		uint64_t gmx0:1;
+		uint64_t mio:1;
+	} s;
+	struct cvmx_npi_rsl_int_blocks_cn30xx {
+		uint64_t reserved_32_63:32;
+		uint64_t rint_31:1;
+		uint64_t iob:1;
+		uint64_t rint_29:1;
+		uint64_t rint_28:1;
+		uint64_t rint_27:1;
+		uint64_t rint_26:1;
+		uint64_t rint_25:1;
+		uint64_t rint_24:1;
+		uint64_t asx1:1;
+		uint64_t asx0:1;
+		uint64_t rint_21:1;
+		uint64_t pip:1;
+		uint64_t spx1:1;
+		uint64_t spx0:1;
+		uint64_t lmc:1;
+		uint64_t l2c:1;
+		uint64_t rint_15:1;
+		uint64_t rint_14:1;
+		uint64_t usb:1;
+		uint64_t pow:1;
+		uint64_t tim:1;
+		uint64_t pko:1;
+		uint64_t ipd:1;
+		uint64_t rint_8:1;
+		uint64_t zip:1;
+		uint64_t dfa:1;
+		uint64_t fpa:1;
+		uint64_t key:1;
+		uint64_t npi:1;
+		uint64_t gmx1:1;
+		uint64_t gmx0:1;
+		uint64_t mio:1;
+	} cn30xx;
+	struct cvmx_npi_rsl_int_blocks_cn38xx {
+		uint64_t reserved_32_63:32;
+		uint64_t rint_31:1;
+		uint64_t iob:1;
+		uint64_t rint_29:1;
+		uint64_t rint_28:1;
+		uint64_t rint_27:1;
+		uint64_t rint_26:1;
+		uint64_t rint_25:1;
+		uint64_t rint_24:1;
+		uint64_t asx1:1;
+		uint64_t asx0:1;
+		uint64_t rint_21:1;
+		uint64_t pip:1;
+		uint64_t spx1:1;
+		uint64_t spx0:1;
+		uint64_t lmc:1;
+		uint64_t l2c:1;
+		uint64_t rint_15:1;
+		uint64_t rint_14:1;
+		uint64_t rint_13:1;
+		uint64_t pow:1;
+		uint64_t tim:1;
+		uint64_t pko:1;
+		uint64_t ipd:1;
+		uint64_t rint_8:1;
+		uint64_t zip:1;
+		uint64_t dfa:1;
+		uint64_t fpa:1;
+		uint64_t key:1;
+		uint64_t npi:1;
+		uint64_t gmx1:1;
+		uint64_t gmx0:1;
+		uint64_t mio:1;
+	} cn38xx;
+	struct cvmx_npi_rsl_int_blocks_cn50xx {
+		uint64_t reserved_31_63:33;
+		uint64_t iob:1;
+		uint64_t lmc1:1;
+		uint64_t agl:1;
+		uint64_t reserved_24_27:4;
+		uint64_t asx1:1;
+		uint64_t asx0:1;
+		uint64_t reserved_21_21:1;
+		uint64_t pip:1;
+		uint64_t spx1:1;
+		uint64_t spx0:1;
+		uint64_t lmc:1;
+		uint64_t l2c:1;
+		uint64_t reserved_15_15:1;
+		uint64_t rad:1;
+		uint64_t usb:1;
+		uint64_t pow:1;
+		uint64_t tim:1;
+		uint64_t pko:1;
+		uint64_t ipd:1;
+		uint64_t reserved_8_8:1;
+		uint64_t zip:1;
+		uint64_t dfa:1;
+		uint64_t fpa:1;
+		uint64_t key:1;
+		uint64_t npi:1;
+		uint64_t gmx1:1;
+		uint64_t gmx0:1;
+		uint64_t mio:1;
+	} cn50xx;
+};
+
+union cvmx_pko_command_word0 {
+	uint64_t u64;
+	struct {
+		uint64_t total_bytes:16;
+		uint64_t segs:6;
+		uint64_t dontfree:1;
+		uint64_t ignore_i:1;
+		uint64_t ipoffp1:7;
+		uint64_t gather:1;
+		uint64_t rsp:1;
+		uint64_t wqp:1;
+		uint64_t n2:1;
+		uint64_t le:1;
+		uint64_t reg0:11;
+		uint64_t subone0:1;
+		uint64_t reg1:11;
+		uint64_t subone1:1;
+		uint64_t size0:2;
+		uint64_t size1:2;
+	} s;
+};
+
+union cvmx_ciu_timx {
+	uint64_t u64;
+	struct cvmx_ciu_timx_s {
+		uint64_t reserved_37_63:27;
+		uint64_t one_shot:1;
+		uint64_t len:36;
+	} s;
+};
+
+union cvmx_gmxx_rxx_rx_inbnd {
+	uint64_t u64;
+	struct cvmx_gmxx_rxx_rx_inbnd_s {
+		uint64_t status:1;
+		uint64_t speed:2;
+		uint64_t duplex:1;
+		uint64_t reserved_4_63:60;
+	} s;
+};
+
+static inline int32_t cvmx_fau_fetch_and_add32(enum cvmx_fau_reg_32 reg,
+					       int32_t value)
+{
+	return value;
+}
+
+static inline void cvmx_fau_atomic_add32(enum cvmx_fau_reg_32 reg,
+					 int32_t value)
+{ }
+
+static inline void cvmx_fau_atomic_write32(enum cvmx_fau_reg_32 reg,
+					   int32_t value)
+{ }
+
+static inline uint64_t cvmx_scratch_read64(uint64_t address)
+{
+	return 0;
+}
+
+static inline void cvmx_scratch_write64(uint64_t address, uint64_t value)
+{ }
+
+static inline int cvmx_wqe_get_grp(struct cvmx_wqe *work)
+{
+	return 0;
+}
+
+static inline void *cvmx_phys_to_ptr(uint64_t physical_address)
+{
+	return (void *)(uintptr_t)(physical_address);
+}
+
+static inline uint64_t cvmx_ptr_to_phys(void *ptr)
+{
+	return (unsigned long)ptr;
+}
+
+static inline int cvmx_helper_get_interface_num(int ipd_port)
+{
+	return ipd_port;
+}
+
+static inline int cvmx_helper_get_interface_index_num(int ipd_port)
+{
+	return ipd_port;
+}
+
+static inline void cvmx_fpa_enable(void)
+{ }
+
+static inline uint64_t cvmx_read_csr(uint64_t csr_addr)
+{
+	return 0;
+}
+
+static inline void cvmx_write_csr(uint64_t csr_addr, uint64_t val)
+{ }
+
+static inline int cvmx_helper_setup_red(int pass_thresh, int drop_thresh)
+{
+	return 0;
+}
+
+static inline void *cvmx_fpa_alloc(uint64_t pool)
+{
+	return NULL;
+}
+
+static inline void cvmx_fpa_free(void *ptr, uint64_t pool,
+				 uint64_t num_cache_lines)
+{ }
+
+static inline int octeon_is_simulation(void)
+{
+	return 1;
+}
+
+static inline void cvmx_pip_get_port_status(uint64_t port_num, uint64_t clear,
+					    cvmx_pip_port_status_t *status)
+{ }
+
+static inline void cvmx_pko_get_port_status(uint64_t port_num, uint64_t clear,
+					    cvmx_pko_port_status_t *status)
+{ }
+
+static inline cvmx_helper_interface_mode_t cvmx_helper_interface_get_mode(int
+								   interface)
+{
+	return 0;
+}
+
+static inline union cvmx_helper_link_info cvmx_helper_link_get(int ipd_port)
+{
+	union cvmx_helper_link_info ret = { .u64 = 0 };
+
+	return ret;
+}
+
+static inline int cvmx_helper_link_set(int ipd_port,
+				       union cvmx_helper_link_info link_info)
+{
+	return 0;
+}
+
+static inline int cvmx_helper_initialize_packet_io_global(void)
+{
+	return 0;
+}
+
+static inline int cvmx_helper_get_number_of_interfaces(void)
+{
+	return 2;
+}
+
+static inline int cvmx_helper_ports_on_interface(int interface)
+{
+	return 1;
+}
+
+static inline int cvmx_helper_get_ipd_port(int interface, int port)
+{
+	return 0;
+}
+
+static inline int cvmx_helper_ipd_and_packet_input_enable(void)
+{
+	return 0;
+}
+
+static inline void cvmx_ipd_disable(void)
+{ }
+
+static inline void cvmx_ipd_free_ptr(void)
+{ }
+
+static inline void cvmx_pko_disable(void)
+{ }
+
+static inline void cvmx_pko_shutdown(void)
+{ }
+
+static inline int cvmx_pko_get_base_queue_per_core(int port, int core)
+{
+	return port;
+}
+
+static inline int cvmx_pko_get_base_queue(int port)
+{
+	return port;
+}
+
+static inline int cvmx_pko_get_num_queues(int port)
+{
+	return port;
+}
+
+static inline unsigned int cvmx_get_core_num(void)
+{
+	return 0;
+}
+
+static inline void cvmx_pow_work_request_async_nocheck(int scr_addr,
+						       cvmx_pow_wait_t wait)
+{ }
+
+static inline void cvmx_pow_work_request_async(int scr_addr,
+						       cvmx_pow_wait_t wait)
+{ }
+
+static inline struct cvmx_wqe *cvmx_pow_work_response_async(int scr_addr)
+{
+	struct cvmx_wqe *wqe = (void *)(unsigned long)scr_addr;
+
+	return wqe;
+}
+
+static inline struct cvmx_wqe *cvmx_pow_work_request_sync(cvmx_pow_wait_t wait)
+{
+	return (void *)(unsigned long)wait;
+}
+
+static inline int cvmx_spi_restart_interface(int interface,
+					cvmx_spi_mode_t mode, int timeout)
+{
+	return 0;
+}
+
+static inline void cvmx_fau_async_fetch_and_add32(uint64_t scraddr,
+						  enum cvmx_fau_reg_32 reg,
+						  int32_t value)
+{ }
+
+static inline union cvmx_gmxx_rxx_rx_inbnd cvmx_spi4000_check_speed(
+	int interface,
+	int port)
+{
+	union cvmx_gmxx_rxx_rx_inbnd r;
+
+	r.u64 = 0;
+	return r;
+}
+
+static inline void cvmx_pko_send_packet_prepare(uint64_t port, uint64_t queue,
+						cvmx_pko_lock_t use_locking)
+{ }
+
+static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
+		uint64_t queue, union cvmx_pko_command_word0 pko_command,
+		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
+{
+	return 0;
+}
+
+static inline void cvmx_wqe_set_port(struct cvmx_wqe *work, int port)
+{ }
+
+static inline void cvmx_wqe_set_qos(struct cvmx_wqe *work, int qos)
+{ }
+
+static inline int cvmx_wqe_get_qos(struct cvmx_wqe *work)
+{
+	return 0;
+}
+
+static inline void cvmx_wqe_set_grp(struct cvmx_wqe *work, int grp)
+{ }
+
+static inline void cvmx_pow_work_submit(struct cvmx_wqe *wqp, uint32_t tag,
+					enum cvmx_pow_tag_type tag_type,
+					uint64_t qos, uint64_t grp)
+{ }
+
+#define CVMX_ASXX_RX_CLK_SETX(a, b)	((a)+(b))
+#define CVMX_ASXX_TX_CLK_SETX(a, b)	((a)+(b))
+#define CVMX_CIU_TIMX(a)		(a)
+#define CVMX_GMXX_RXX_ADR_CAM0(a, b)	((a)+(b))
+#define CVMX_GMXX_RXX_ADR_CAM1(a, b)	((a)+(b))
+#define CVMX_GMXX_RXX_ADR_CAM2(a, b)	((a)+(b))
+#define CVMX_GMXX_RXX_ADR_CAM3(a, b)	((a)+(b))
+#define CVMX_GMXX_RXX_ADR_CAM4(a, b)	((a)+(b))
+#define CVMX_GMXX_RXX_ADR_CAM5(a, b)	((a)+(b))
+#define CVMX_GMXX_RXX_FRM_CTL(a, b)	((a)+(b))
+#define CVMX_GMXX_RXX_INT_REG(a, b)	((a)+(b))
+#define CVMX_GMXX_SMACX(a, b)		((a)+(b))
+#define CVMX_PIP_PRT_TAGX(a)		(a)
+#define CVMX_POW_PP_GRP_MSKX(a)		(a)
+#define CVMX_POW_WQ_INT_THRX(a)		(a)
+#define CVMX_SPXX_INT_MSK(a)		(a)
+#define CVMX_SPXX_INT_REG(a)		(a)
+#define CVMX_SSO_PPX_GRP_MSK(a)		(a)
+#define CVMX_SSO_WQ_INT_THRX(a)		(a)
+#define CVMX_STXX_INT_MSK(a)		(a)
+#define CVMX_STXX_INT_REG(a)		(a)
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

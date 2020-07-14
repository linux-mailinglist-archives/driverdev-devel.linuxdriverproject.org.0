Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E23F821F2DD
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 15:44:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E872E8918D;
	Tue, 14 Jul 2020 13:44:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CL1SMizwI87n; Tue, 14 Jul 2020 13:44:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1ED7E8915F;
	Tue, 14 Jul 2020 13:44:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 93EAA1BF2A5
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 13:44:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 90BCB8A4B3
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 13:44:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qvDZoLLkqPyN for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 13:44:03 +0000 (UTC)
X-Greylist: delayed 00:08:46 by SQLgrey-1.7.6
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 08F708A35B
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 13:44:03 +0000 (UTC)
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EB0611A11EA;
 Tue, 14 Jul 2020 15:35:16 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DBD111A11E7;
 Tue, 14 Jul 2020 15:35:16 +0200 (CEST)
Received: from fsr-ub1864-126.ea.freescale.net
 (fsr-ub1864-126.ea.freescale.net [10.171.82.212])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id A665A205A4;
 Tue, 14 Jul 2020 15:35:16 +0200 (CEST)
From: Ioana Ciornei <ioana.ciornei@nxp.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/6] staging: dpaa2-ethsw: setup MAC address of switch
 netdevices
Date: Tue, 14 Jul 2020 16:34:31 +0300
Message-Id: <20200714133431.17532-7-ioana.ciornei@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200714133431.17532-1-ioana.ciornei@nxp.com>
References: <20200714133431.17532-1-ioana.ciornei@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Ioana Ciornei <ioana.ciornei@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

At probe time, retrieve the MAC addresses of the switch ports using a
firmware call and use that to setup the switch interface net_device
instead of relying entirely on the user to configure a MAC address on
the interface. In case a switch interface is not connected to a MAC,
thus the dpsw_if_get_port_mac_addr() will return all zeroes, generate a
random MAC address and use that.

This new functionality is dependent on a firmware call which is
available only on newer versions, so depending on the running DPSW
object version skip this step.

Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
---
 drivers/staging/fsl-dpaa2/ethsw/dpsw-cmd.h |  14 +++
 drivers/staging/fsl-dpaa2/ethsw/dpsw.c     | 106 +++++++++++++++++++++
 drivers/staging/fsl-dpaa2/ethsw/dpsw.h     |   9 ++
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c    |  59 +++++++++++-
 drivers/staging/fsl-dpaa2/ethsw/ethsw.h    |   3 +
 5 files changed, 190 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/dpsw-cmd.h b/drivers/staging/fsl-dpaa2/ethsw/dpsw-cmd.h
index 5e1339daa7c7..f100d503bd17 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/dpsw-cmd.h
+++ b/drivers/staging/fsl-dpaa2/ethsw/dpsw-cmd.h
@@ -69,6 +69,10 @@
 #define DPSW_CMDID_FDB_SET_LEARNING_MODE    DPSW_CMD_ID(0x088)
 #define DPSW_CMDID_FDB_DUMP                 DPSW_CMD_ID(0x08A)
 
+#define DPSW_CMDID_IF_GET_PORT_MAC_ADDR     DPSW_CMD_ID(0x0A7)
+#define DPSW_CMDID_IF_GET_PRIMARY_MAC_ADDR  DPSW_CMD_ID(0x0A8)
+#define DPSW_CMDID_IF_SET_PRIMARY_MAC_ADDR  DPSW_CMD_ID(0x0A9)
+
 /* Macros for accessing command fields smaller than 1byte */
 #define DPSW_MASK(field)        \
 	GENMASK(DPSW_##field##_SHIFT + DPSW_##field##_SIZE - 1, \
@@ -369,4 +373,14 @@ struct dpsw_rsp_get_api_version {
 	__le16 version_minor;
 };
 
+struct dpsw_rsp_if_get_mac_addr {
+	__le16 pad;
+	u8 mac_addr[6];
+};
+
+struct dpsw_cmd_if_set_mac_addr {
+	__le16 if_id;
+	u8 mac_addr[6];
+};
+
 #endif /* __FSL_DPSW_CMD_H */
diff --git a/drivers/staging/fsl-dpaa2/ethsw/dpsw.c b/drivers/staging/fsl-dpaa2/ethsw/dpsw.c
index 56b0fa789a67..f8bfe779bd30 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/dpsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/dpsw.c
@@ -1214,3 +1214,109 @@ int dpsw_get_api_version(struct fsl_mc_io *mc_io,
 
 	return 0;
 }
+
+/**
+ * dpsw_if_get_port_mac_addr()
+ * @mc_io:	Pointer to MC portal's I/O object
+ * @cmd_flags:	Command flags; one or more of 'MC_CMD_FLAG_'
+ * @token:	Token of DPSW object
+ * @if_id:	Interface Identifier
+ * @mac_addr:	MAC address of the physical port, if any, otherwise 0
+ *
+ * Return:	Completion status. '0' on Success; Error code otherwise.
+ */
+int dpsw_if_get_port_mac_addr(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
+			      u16 if_id, u8 mac_addr[6])
+{
+	struct dpsw_rsp_if_get_mac_addr *rsp_params;
+	struct fsl_mc_command cmd = { 0 };
+	struct dpsw_cmd_if *cmd_params;
+	int err, i;
+
+	/* prepare command */
+	cmd.header = mc_encode_cmd_header(DPSW_CMDID_IF_GET_PORT_MAC_ADDR,
+					  cmd_flags,
+					  token);
+	cmd_params = (struct dpsw_cmd_if *)cmd.params;
+	cmd_params->if_id = cpu_to_le16(if_id);
+
+	/* send command to mc*/
+	err = mc_send_command(mc_io, &cmd);
+	if (err)
+		return err;
+
+	/* retrieve response parameters */
+	rsp_params = (struct dpsw_rsp_if_get_mac_addr *)cmd.params;
+	for (i = 0; i < 6; i++)
+		mac_addr[5 - i] = rsp_params->mac_addr[i];
+
+	return 0;
+}
+
+/**
+ * dpsw_if_get_primary_mac_addr()
+ * @mc_io:	Pointer to MC portal's I/O object
+ * @cmd_flags:	Command flags; one or more of 'MC_CMD_FLAG_'
+ * @token:	Token of DPSW object
+ * @if_id:	Interface Identifier
+ * @mac_addr:	MAC address of the physical port, if any, otherwise 0
+ *
+ * Return:	Completion status. '0' on Success; Error code otherwise.
+ */
+int dpsw_if_get_primary_mac_addr(struct fsl_mc_io *mc_io, u32 cmd_flags,
+				 u16 token, u16 if_id, u8 mac_addr[6])
+{
+	struct dpsw_rsp_if_get_mac_addr *rsp_params;
+	struct fsl_mc_command cmd = { 0 };
+	struct dpsw_cmd_if *cmd_params;
+	int err, i;
+
+	/* prepare command */
+	cmd.header = mc_encode_cmd_header(DPSW_CMDID_IF_SET_PRIMARY_MAC_ADDR,
+					  cmd_flags,
+					  token);
+	cmd_params = (struct dpsw_cmd_if *)cmd.params;
+	cmd_params->if_id = cpu_to_le16(if_id);
+
+	/* send command to mc*/
+	err = mc_send_command(mc_io, &cmd);
+	if (err)
+		return err;
+
+	/* retrieve response parameters */
+	rsp_params = (struct dpsw_rsp_if_get_mac_addr *)cmd.params;
+	for (i = 0; i < 6; i++)
+		mac_addr[5 - i] = rsp_params->mac_addr[i];
+
+	return 0;
+}
+
+/**
+ * dpsw_if_set_primary_mac_addr()
+ * @mc_io:	Pointer to MC portal's I/O object
+ * @cmd_flags:	Command flags; one or more of 'MC_CMD_FLAG_'
+ * @token:	Token of DPSW object
+ * @if_id:	Interface Identifier
+ * @mac_addr:	MAC address of the physical port, if any, otherwise 0
+ *
+ * Return:	Completion status. '0' on Success; Error code otherwise.
+ */
+int dpsw_if_set_primary_mac_addr(struct fsl_mc_io *mc_io, u32 cmd_flags,
+				 u16 token, u16 if_id, u8 mac_addr[6])
+{
+	struct dpsw_cmd_if_set_mac_addr *cmd_params;
+	struct fsl_mc_command cmd = { 0 };
+	int i;
+
+	/* prepare command */
+	cmd.header = mc_encode_cmd_header(DPSW_CMDID_IF_SET_PRIMARY_MAC_ADDR,
+					  cmd_flags,
+					  token);
+	cmd_params = (struct dpsw_cmd_if_set_mac_addr *)cmd.params;
+	cmd_params->if_id = cpu_to_le16(if_id);
+	for (i = 0; i < 6; i++)
+		cmd_params->mac_addr[i] = mac_addr[5 - i];
+
+	/* send command to mc*/
+	return mc_send_command(mc_io, &cmd);
+}
diff --git a/drivers/staging/fsl-dpaa2/ethsw/dpsw.h b/drivers/staging/fsl-dpaa2/ethsw/dpsw.h
index 25b45850925c..ab63ee4f5cb7 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/dpsw.h
+++ b/drivers/staging/fsl-dpaa2/ethsw/dpsw.h
@@ -580,4 +580,13 @@ int dpsw_get_api_version(struct fsl_mc_io *mc_io,
 			 u16 *major_ver,
 			 u16 *minor_ver);
 
+int dpsw_if_get_port_mac_addr(struct fsl_mc_io *mc_io, u32 cmd_flags, u16 token,
+			      u16 if_id, u8 mac_addr[6]);
+
+int dpsw_if_get_primary_mac_addr(struct fsl_mc_io *mc_io, u32 cmd_flags,
+				 u16 token, u16 if_id, u8 mac_addr[6]);
+
+int dpsw_if_set_primary_mac_addr(struct fsl_mc_io *mc_io, u32 cmd_flags,
+				 u16 token, u16 if_id, u8 mac_addr[6]);
+
 #endif /* __FSL_DPSW_H */
diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index a8fc9bcf3b8a..2fb75a7c9314 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -468,6 +468,7 @@ static int port_carrier_state_sync(struct net_device *netdev)
 			netif_carrier_off(netdev);
 		port_priv->link_state = state.up;
 	}
+
 	return 0;
 }
 
@@ -690,6 +691,46 @@ static int port_fdb_dump(struct sk_buff *skb, struct netlink_callback *cb,
 	return err;
 }
 
+static int ethsw_port_set_mac_addr(struct ethsw_port_priv *port_priv)
+{
+	struct ethsw_core *ethsw = port_priv->ethsw_data;
+	struct net_device *net_dev = port_priv->netdev;
+	struct device *dev = net_dev->dev.parent;
+	u8 mac_addr[ETH_ALEN];
+	int err;
+
+	if (!(ethsw->features & ETHSW_FEATURE_MAC_ADDR))
+		return 0;
+
+	/* Get firmware address, if any */
+	err = dpsw_if_get_port_mac_addr(ethsw->mc_io, 0, ethsw->dpsw_handle,
+					port_priv->idx, mac_addr);
+	if (err) {
+		dev_err(dev, "dpsw_if_get_port_mac_addr() failed\n");
+		return err;
+	}
+
+	/* First check if firmware has any address configured by bootloader */
+	if (!is_zero_ether_addr(mac_addr)) {
+		memcpy(net_dev->dev_addr, mac_addr, net_dev->addr_len);
+	} else {
+		/* No MAC address configured, fill in net_dev->dev_addr
+		 * with a random one
+		 */
+		eth_hw_addr_random(net_dev);
+		dev_dbg_once(dev, "device(s) have all-zero hwaddr, replaced with random\n");
+
+		/* Override NET_ADDR_RANDOM set by eth_hw_addr_random(); for all
+		 * practical purposes, this will be our "permanent" mac address,
+		 * at least until the next reboot. This move will also permit
+		 * register_netdevice() to properly fill up net_dev->perm_addr.
+		 */
+		net_dev->addr_assign_type = NET_ADDR_PERM;
+	}
+
+	return 0;
+}
+
 static const struct net_device_ops ethsw_port_ops = {
 	.ndo_open		= port_open,
 	.ndo_stop		= port_stop,
@@ -712,8 +753,10 @@ static void ethsw_links_state_update(struct ethsw_core *ethsw)
 {
 	int i;
 
-	for (i = 0; i < ethsw->sw_attr.num_ifs; i++)
+	for (i = 0; i < ethsw->sw_attr.num_ifs; i++) {
 		port_carrier_state_sync(ethsw->ports[i]->netdev);
+		ethsw_port_set_mac_addr(ethsw->ports[i]);
+	}
 }
 
 static irqreturn_t ethsw_irq0_handler_thread(int irq_num, void *arg)
@@ -1364,6 +1407,14 @@ static int ethsw_register_notifier(struct device *dev)
 	return err;
 }
 
+static void ethsw_detect_features(struct ethsw_core *ethsw)
+{
+	ethsw->features = 0;
+
+	if (ethsw->major > 8 || (ethsw->major == 8 && ethsw->minor >= 6))
+		ethsw->features |= ETHSW_FEATURE_MAC_ADDR;
+}
+
 static int ethsw_init(struct fsl_mc_device *sw_dev)
 {
 	struct device *dev = &sw_dev->dev;
@@ -1407,6 +1458,8 @@ static int ethsw_init(struct fsl_mc_device *sw_dev)
 		goto err_close;
 	}
 
+	ethsw_detect_features(ethsw);
+
 	err = dpsw_reset(ethsw->mc_io, 0, ethsw->dpsw_handle);
 	if (err) {
 		dev_err(dev, "dpsw_reset err %d\n", err);
@@ -1602,6 +1655,10 @@ static int ethsw_probe_port(struct ethsw_core *ethsw, u16 port_idx)
 	if (err)
 		goto err_port_probe;
 
+	err = ethsw_port_set_mac_addr(port_priv);
+	if (err)
+		goto err_port_probe;
+
 	err = register_netdev(port_netdev);
 	if (err < 0) {
 		dev_err(dev, "register_netdev error %d\n", err);
diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.h b/drivers/staging/fsl-dpaa2/ethsw/ethsw.h
index 0e520fd94dbc..d136dbdcaffa 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.h
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.h
@@ -37,6 +37,8 @@
 #define ETHSW_MAX_FRAME_LENGTH	(DPAA2_MFL - VLAN_ETH_HLEN - ETH_FCS_LEN)
 #define ETHSW_L2_MAX_FRM(mtu)	((mtu) + VLAN_ETH_HLEN + ETH_FCS_LEN)
 
+#define ETHSW_FEATURE_MAC_ADDR	BIT(0)
+
 extern const struct ethtool_ops ethsw_port_ethtool_ops;
 
 struct ethsw_core;
@@ -62,6 +64,7 @@ struct ethsw_core {
 	u16				dpsw_handle;
 	struct dpsw_attr		sw_attr;
 	u16				major, minor;
+	unsigned long			features;
 	int				dev_id;
 	struct ethsw_port_priv		**ports;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

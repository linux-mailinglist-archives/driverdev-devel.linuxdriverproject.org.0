Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B0356A31
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 15:17:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1C51B87C72;
	Wed, 26 Jun 2019 13:17:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mKidS25044-Z; Wed, 26 Jun 2019 13:17:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 218A687C2C;
	Wed, 26 Jun 2019 13:17:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE74F1BF3C8
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 13:17:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AA28F86078
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 13:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZoogJH3MGKVk for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 13:17:30 +0000 (UTC)
X-Greylist: delayed 02:32:48 by SQLgrey-1.7.6
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr740113.outbound.protection.outlook.com [40.107.74.113])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0FDB285F78
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 13:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Analogixsemi.onmicrosoft.com; s=selector1-Analogixsemi-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yi3lOaRNjpTrmFmXdYl/PQ0NsVeyKNC+ASElXEGpzKo=;
 b=Kf9Re21qrukDSujO5dAsU6IXENEmYEIBG7zJWGdJ6mTGNFoBM5hjAzM55pWH8ylWkaNP/BCUmuEhL8X6RrPV7mDvqqsEmv7NxS9Dgyui7RNXSSKljWPo6JNONyryYjoRm7NkRGpKN9F5NFFDm4oGKiE40ARKGtS23ue0uRRpbPA=
Received: from MN2PR04MB5886.namprd04.prod.outlook.com (20.179.22.213) by
 MN2PR04MB6397.namprd04.prod.outlook.com (52.132.170.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.17; Wed, 26 Jun 2019 10:44:38 +0000
Received: from MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::c888:8bbc:aa31:c9c3]) by MN2PR04MB5886.namprd04.prod.outlook.com
 ([fe80::c888:8bbc:aa31:c9c3%5]) with mapi id 15.20.2008.017; Wed, 26 Jun 2019
 10:44:38 +0000
From: Xin Ji <xji@analogixsemi.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, Andrzej Hajda
 <a.hajda@samsung.com>
Subject: [PATCH] Adjust analogix chip driver location
Thread-Topic: [PATCH] Adjust analogix chip driver location
Thread-Index: AQHVLAwnWdhoUTbW6kumQO1/091b5g==
Date: Wed, 26 Jun 2019 10:44:38 +0000
Message-ID: <20190626104430.GA11770@xin-VirtualBox>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR04CA0011.apcprd04.prod.outlook.com
 (2603:1096:203:36::23) To MN2PR04MB5886.namprd04.prod.outlook.com
 (2603:10b6:208:a3::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xji@analogixsemi.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [114.247.245.252]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 47467f28-373f-4d2a-d5f9-08d6fa234901
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR04MB6397; 
x-ms-traffictypediagnostic: MN2PR04MB6397:
x-microsoft-antispam-prvs: <MN2PR04MB6397AD5D9881C35EFC885529C7E20@MN2PR04MB6397.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5;
x-forefront-prvs: 00808B16F3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(366004)(346002)(376002)(136003)(396003)(39850400004)(189003)(199004)(486006)(6436002)(1076003)(66066001)(2501003)(386003)(6506007)(14454004)(476003)(6486002)(4326008)(30864003)(52116002)(53936002)(53946003)(33716001)(8676002)(305945005)(107886003)(3846002)(6116002)(33656002)(26005)(9686003)(7736002)(8936002)(6512007)(68736007)(99286004)(256004)(81166006)(25786009)(316002)(110136005)(14444005)(54906003)(2906002)(5024004)(186003)(86362001)(81156014)(71200400001)(478600001)(102836004)(73956011)(5660300002)(71190400001)(66446008)(66946007)(66476007)(64756008)(66556008)(569006);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6397;
 H:MN2PR04MB5886.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analogixsemi.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: BMtvbgAmcVtTW3s4djDLztAdHX3+n8XyPsfLmcbsM1ot0DC4Bk3q5ekUkno6TXAM6nZCNQRVpr8jk/KSt94TJG7cBbZ/nBUlSxRdrPzSHSqNNLHtJciXt2Gto2yki5Rt7912MzMelsiMLL0gR01XTkQXKLRvpblv27en383KHqb7GQntDQu8lDkuhsnRnlykCBU1ddX7vhH8p+6InnZD2xD1XbUiju5aVecTM/aiaxhVT2UjPEqfO+mAkq2HFL4YQ1pFE57Y00stkw055Qtqacqzt4k15gsF2sjJH1tIEHyNzjx4ux0R3xeeKws68uV34xDrIA3PPyZ7C/M/HJ+nDMpr+ZTmuzYyrgOjoRDNJKojOEI3t415wnzHpNuX7I6OULaNT1KJOD4cmsXGIWpkq9kPCQM/7nKKEcRbBuAdmOY=
Content-ID: <66EB99BD141B9147824AF47B0CE158B6@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analogixsemi.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47467f28-373f-4d2a-d5f9-08d6fa234901
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2019 10:44:38.4694 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b099b0b4-f26c-4cf5-9a0f-d5be9acab205
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xji@analogixsemi.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6397
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
Cc: David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "sjoerd.simons@collabora.co.uk" <sjoerd.simons@collabora.co.uk>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sheng Pan <span@analogixsemi.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Move analogix chip ANX78XX bridge driver into "analogix" directory.

Signed-off-by: Xin Ji <xji@analogixsemi.com>
---
 drivers/gpu/drm/bridge/Kconfig                     |   10 -
 drivers/gpu/drm/bridge/Makefile                    |    3 +-
 drivers/gpu/drm/bridge/analogix-anx78xx.c          | 1485 --------------------
 drivers/gpu/drm/bridge/analogix-anx78xx.h          |  710 ----------
 drivers/gpu/drm/bridge/analogix/Kconfig            |   10 +
 drivers/gpu/drm/bridge/analogix/Makefile           |    2 +
 drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c | 1485 ++++++++++++++++++++
 drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h |  710 ++++++++++
 8 files changed, 2208 insertions(+), 2207 deletions(-)
 delete mode 100644 drivers/gpu/drm/bridge/analogix-anx78xx.c
 delete mode 100644 drivers/gpu/drm/bridge/analogix-anx78xx.h
 create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
 create mode 100644 drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h

diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index ee77746..862789b 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -16,16 +16,6 @@ config DRM_PANEL_BRIDGE
 menu "Display Interface Bridges"
 	depends on DRM && DRM_BRIDGE
 
-config DRM_ANALOGIX_ANX78XX
-	tristate "Analogix ANX78XX bridge"
-	select DRM_KMS_HELPER
-	select REGMAP_I2C
-	---help---
-	  ANX78XX is an ultra-low Full-HD SlimPort transmitter
-	  designed for portable devices. The ANX78XX transforms
-	  the HDMI output of an application processor to MyDP
-	  or DisplayPort.
-
 config DRM_CDNS_DSI
 	tristate "Cadence DPI/DSI bridge"
 	select DRM_KMS_HELPER
diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
index 4934fcf..02cb4cd 100644
--- a/drivers/gpu/drm/bridge/Makefile
+++ b/drivers/gpu/drm/bridge/Makefile
@@ -1,5 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
 obj-$(CONFIG_DRM_CDNS_DSI) += cdns-dsi.o
 obj-$(CONFIG_DRM_DUMB_VGA_DAC) += dumb-vga-dac.o
 obj-$(CONFIG_DRM_LVDS_ENCODER) += lvds-encoder.o
@@ -12,8 +11,8 @@ obj-$(CONFIG_DRM_SII9234) += sii9234.o
 obj-$(CONFIG_DRM_THINE_THC63LVD1024) += thc63lvd1024.o
 obj-$(CONFIG_DRM_TOSHIBA_TC358764) += tc358764.o
 obj-$(CONFIG_DRM_TOSHIBA_TC358767) += tc358767.o
-obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix/
 obj-$(CONFIG_DRM_I2C_ADV7511) += adv7511/
 obj-$(CONFIG_DRM_TI_SN65DSI86) += ti-sn65dsi86.o
 obj-$(CONFIG_DRM_TI_TFP410) += ti-tfp410.o
 obj-y += synopsys/
+obj-y += analogix/
diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix-anx78xx.c
deleted file mode 100644
index 3c7cc5a..0000000
--- a/drivers/gpu/drm/bridge/analogix-anx78xx.c
+++ /dev/null
@@ -1,1485 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright(c) 2016, Analogix Semiconductor.
- *
- * Based on anx7808 driver obtained from chromeos with copyright:
- * Copyright(c) 2013, Google Inc.
- */
-#include <linux/delay.h>
-#include <linux/err.h>
-#include <linux/gpio/consumer.h>
-#include <linux/i2c.h>
-#include <linux/interrupt.h>
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/of_irq.h>
-#include <linux/of_platform.h>
-#include <linux/regmap.h>
-#include <linux/regulator/consumer.h>
-#include <linux/types.h>
-
-#include <drm/drm_atomic_helper.h>
-#include <drm/drm_crtc.h>
-#include <drm/drm_dp_helper.h>
-#include <drm/drm_edid.h>
-#include <drm/drm_print.h>
-#include <drm/drm_probe_helper.h>
-
-#include "analogix-anx78xx.h"
-
-#define I2C_NUM_ADDRESSES	5
-#define I2C_IDX_TX_P0		0
-#define I2C_IDX_TX_P1		1
-#define I2C_IDX_TX_P2		2
-#define I2C_IDX_RX_P0		3
-#define I2C_IDX_RX_P1		4
-
-#define XTAL_CLK		270 /* 27M */
-#define AUX_CH_BUFFER_SIZE	16
-#define AUX_WAIT_TIMEOUT_MS	15
-
-static const u8 anx78xx_i2c_addresses[] = {
-	[I2C_IDX_TX_P0] = TX_P0,
-	[I2C_IDX_TX_P1] = TX_P1,
-	[I2C_IDX_TX_P2] = TX_P2,
-	[I2C_IDX_RX_P0] = RX_P0,
-	[I2C_IDX_RX_P1] = RX_P1,
-};
-
-struct anx78xx_platform_data {
-	struct regulator *dvdd10;
-	struct gpio_desc *gpiod_hpd;
-	struct gpio_desc *gpiod_pd;
-	struct gpio_desc *gpiod_reset;
-
-	int hpd_irq;
-	int intp_irq;
-};
-
-struct anx78xx {
-	struct drm_dp_aux aux;
-	struct drm_bridge bridge;
-	struct i2c_client *client;
-	struct edid *edid;
-	struct drm_connector connector;
-	struct drm_dp_link link;
-	struct anx78xx_platform_data pdata;
-	struct mutex lock;
-
-	/*
-	 * I2C Slave addresses of ANX7814 are mapped as TX_P0, TX_P1, TX_P2,
-	 * RX_P0 and RX_P1.
-	 */
-	struct i2c_client *i2c_dummy[I2C_NUM_ADDRESSES];
-	struct regmap *map[I2C_NUM_ADDRESSES];
-
-	u16 chipid;
-	u8 dpcd[DP_RECEIVER_CAP_SIZE];
-
-	bool powered;
-};
-
-static inline struct anx78xx *connector_to_anx78xx(struct drm_connector *c)
-{
-	return container_of(c, struct anx78xx, connector);
-}
-
-static inline struct anx78xx *bridge_to_anx78xx(struct drm_bridge *bridge)
-{
-	return container_of(bridge, struct anx78xx, bridge);
-}
-
-static int anx78xx_set_bits(struct regmap *map, u8 reg, u8 mask)
-{
-	return regmap_update_bits(map, reg, mask, mask);
-}
-
-static int anx78xx_clear_bits(struct regmap *map, u8 reg, u8 mask)
-{
-	return regmap_update_bits(map, reg, mask, 0);
-}
-
-static bool anx78xx_aux_op_finished(struct anx78xx *anx78xx)
-{
-	unsigned int value;
-	int err;
-
-	err = regmap_read(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL2_REG,
-			  &value);
-	if (err < 0)
-		return false;
-
-	return (value & SP_AUX_EN) == 0;
-}
-
-static int anx78xx_aux_wait(struct anx78xx *anx78xx)
-{
-	unsigned long timeout;
-	unsigned int status;
-	int err;
-
-	timeout = jiffies + msecs_to_jiffies(AUX_WAIT_TIMEOUT_MS) + 1;
-
-	while (!anx78xx_aux_op_finished(anx78xx)) {
-		if (time_after(jiffies, timeout)) {
-			if (!anx78xx_aux_op_finished(anx78xx)) {
-				DRM_ERROR("Timed out waiting AUX to finish\n");
-				return -ETIMEDOUT;
-			}
-
-			break;
-		}
-
-		usleep_range(1000, 2000);
-	}
-
-	/* Read the AUX channel access status */
-	err = regmap_read(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_CH_STATUS_REG,
-			  &status);
-	if (err < 0) {
-		DRM_ERROR("Failed to read from AUX channel: %d\n", err);
-		return err;
-	}
-
-	if (status & SP_AUX_STATUS) {
-		DRM_ERROR("Failed to wait for AUX channel (status: %02x)\n",
-			  status);
-		return -ETIMEDOUT;
-	}
-
-	return 0;
-}
-
-static int anx78xx_aux_address(struct anx78xx *anx78xx, unsigned int addr)
-{
-	int err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_ADDR_7_0_REG,
-			   addr & 0xff);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_ADDR_15_8_REG,
-			   (addr & 0xff00) >> 8);
-	if (err)
-		return err;
-
-	/*
-	 * DP AUX CH Address Register #2, only update bits[3:0]
-	 * [7:4] RESERVED
-	 * [3:0] AUX_ADDR[19:16], Register control AUX CH address.
-	 */
-	err = regmap_update_bits(anx78xx->map[I2C_IDX_TX_P0],
-				 SP_AUX_ADDR_19_16_REG,
-				 SP_AUX_ADDR_19_16_MASK,
-				 (addr & 0xf0000) >> 16);
-
-	if (err)
-		return err;
-
-	return 0;
-}
-
-static ssize_t anx78xx_aux_transfer(struct drm_dp_aux *aux,
-				    struct drm_dp_aux_msg *msg)
-{
-	struct anx78xx *anx78xx = container_of(aux, struct anx78xx, aux);
-	u8 ctrl1 = msg->request;
-	u8 ctrl2 = SP_AUX_EN;
-	u8 *buffer = msg->buffer;
-	int err;
-
-	/* The DP AUX transmit and receive buffer has 16 bytes. */
-	if (WARN_ON(msg->size > AUX_CH_BUFFER_SIZE))
-		return -E2BIG;
-
-	/* Zero-sized messages specify address-only transactions. */
-	if (msg->size < 1)
-		ctrl2 |= SP_ADDR_ONLY;
-	else	/* For non-zero-sized set the length field. */
-		ctrl1 |= (msg->size - 1) << SP_AUX_LENGTH_SHIFT;
-
-	if ((msg->request & DP_AUX_I2C_READ) == 0) {
-		/* When WRITE | MOT write values to data buffer */
-		err = regmap_bulk_write(anx78xx->map[I2C_IDX_TX_P0],
-					SP_DP_BUF_DATA0_REG, buffer,
-					msg->size);
-		if (err)
-			return err;
-	}
-
-	/* Write address and request */
-	err = anx78xx_aux_address(anx78xx, msg->address);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL1_REG,
-			   ctrl1);
-	if (err)
-		return err;
-
-	/* Start transaction */
-	err = regmap_update_bits(anx78xx->map[I2C_IDX_TX_P0],
-				 SP_DP_AUX_CH_CTRL2_REG, SP_ADDR_ONLY |
-				 SP_AUX_EN, ctrl2);
-	if (err)
-		return err;
-
-	err = anx78xx_aux_wait(anx78xx);
-	if (err)
-		return err;
-
-	msg->reply = DP_AUX_I2C_REPLY_ACK;
-
-	if ((msg->size > 0) && (msg->request & DP_AUX_I2C_READ)) {
-		/* Read values from data buffer */
-		err = regmap_bulk_read(anx78xx->map[I2C_IDX_TX_P0],
-				       SP_DP_BUF_DATA0_REG, buffer,
-				       msg->size);
-		if (err)
-			return err;
-	}
-
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
-				 SP_DP_AUX_CH_CTRL2_REG, SP_ADDR_ONLY);
-	if (err)
-		return err;
-
-	return msg->size;
-}
-
-static int anx78xx_set_hpd(struct anx78xx *anx78xx)
-{
-	int err;
-
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_RX_P0],
-				 SP_TMDS_CTRL_BASE + 7, SP_PD_RT);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL3_REG,
-			       SP_HPD_OUT);
-	if (err)
-		return err;
-
-	return 0;
-}
-
-static int anx78xx_clear_hpd(struct anx78xx *anx78xx)
-{
-	int err;
-
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL3_REG,
-				 SP_HPD_OUT);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0],
-			       SP_TMDS_CTRL_BASE + 7, SP_PD_RT);
-	if (err)
-		return err;
-
-	return 0;
-}
-
-static const struct reg_sequence tmds_phy_initialization[] = {
-	{ SP_TMDS_CTRL_BASE +  1, 0x90 },
-	{ SP_TMDS_CTRL_BASE +  2, 0xa9 },
-	{ SP_TMDS_CTRL_BASE +  6, 0x92 },
-	{ SP_TMDS_CTRL_BASE +  7, 0x80 },
-	{ SP_TMDS_CTRL_BASE + 20, 0xf2 },
-	{ SP_TMDS_CTRL_BASE + 22, 0xc4 },
-	{ SP_TMDS_CTRL_BASE + 23, 0x18 },
-};
-
-static int anx78xx_rx_initialization(struct anx78xx *anx78xx)
-{
-	int err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_RX_P0], SP_HDMI_MUTE_CTRL_REG,
-			   SP_AUD_MUTE | SP_VID_MUTE);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0], SP_CHIP_CTRL_REG,
-			       SP_MAN_HDMI5V_DET | SP_PLLLOCK_CKDT_EN |
-			       SP_DIGITAL_CKDT_EN);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0],
-			       SP_SOFTWARE_RESET1_REG, SP_HDCP_MAN_RST |
-			       SP_SW_MAN_RST | SP_TMDS_RST | SP_VIDEO_RST);
-	if (err)
-		return err;
-
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_RX_P0],
-				 SP_SOFTWARE_RESET1_REG, SP_HDCP_MAN_RST |
-				 SP_SW_MAN_RST | SP_TMDS_RST | SP_VIDEO_RST);
-	if (err)
-		return err;
-
-	/* Sync detect change, GP set mute */
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0],
-			       SP_AUD_EXCEPTION_ENABLE_BASE + 1, BIT(5) |
-			       BIT(6));
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0],
-			       SP_AUD_EXCEPTION_ENABLE_BASE + 3,
-			       SP_AEC_EN21);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0], SP_AUDVID_CTRL_REG,
-			       SP_AVC_EN | SP_AAC_OE | SP_AAC_EN);
-	if (err)
-		return err;
-
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_RX_P0],
-				 SP_SYSTEM_POWER_DOWN1_REG, SP_PWDN_CTRL);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0],
-			       SP_VID_DATA_RANGE_CTRL_REG, SP_R2Y_INPUT_LIMIT);
-	if (err)
-		return err;
-
-	/* Enable DDC stretch */
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
-			   SP_DP_EXTRA_I2C_DEV_ADDR_REG, SP_I2C_EXTRA_ADDR);
-	if (err)
-		return err;
-
-	/* TMDS phy initialization */
-	err = regmap_multi_reg_write(anx78xx->map[I2C_IDX_RX_P0],
-				     tmds_phy_initialization,
-				     ARRAY_SIZE(tmds_phy_initialization));
-	if (err)
-		return err;
-
-	err = anx78xx_clear_hpd(anx78xx);
-	if (err)
-		return err;
-
-	return 0;
-}
-
-static const u8 dp_tx_output_precise_tune_bits[20] = {
-	0x01, 0x03, 0x07, 0x7f, 0x71, 0x6b, 0x7f,
-	0x73, 0x7f, 0x7f, 0x00, 0x00, 0x00, 0x00,
-	0x0c, 0x42, 0x1e, 0x3e, 0x72, 0x7e,
-};
-
-static int anx78xx_link_phy_initialization(struct anx78xx *anx78xx)
-{
-	int err;
-
-	/*
-	 * REVISIT : It is writing to a RESERVED bits in Analog Control 0
-	 * register.
-	 */
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2], SP_ANALOG_CTRL0_REG,
-			   0x02);
-	if (err)
-		return err;
-
-	/*
-	 * Write DP TX output emphasis precise tune bits.
-	 */
-	err = regmap_bulk_write(anx78xx->map[I2C_IDX_TX_P1],
-				SP_DP_TX_LT_CTRL0_REG,
-				dp_tx_output_precise_tune_bits,
-				ARRAY_SIZE(dp_tx_output_precise_tune_bits));
-
-	if (err)
-		return err;
-
-	return 0;
-}
-
-static int anx78xx_xtal_clk_sel(struct anx78xx *anx78xx)
-{
-	unsigned int value;
-	int err;
-
-	err = regmap_update_bits(anx78xx->map[I2C_IDX_TX_P2],
-				 SP_ANALOG_DEBUG2_REG,
-				 SP_XTAL_FRQ | SP_FORCE_SW_OFF_BYPASS,
-				 SP_XTAL_FRQ_27M);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL3_REG,
-			   XTAL_CLK & SP_WAIT_COUNTER_7_0_MASK);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL4_REG,
-			   ((XTAL_CLK & 0xff00) >> 2) | (XTAL_CLK / 10));
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
-			   SP_I2C_GEN_10US_TIMER0_REG, XTAL_CLK & 0xff);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
-			   SP_I2C_GEN_10US_TIMER1_REG,
-			   (XTAL_CLK & 0xff00) >> 8);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_MISC_CTRL_REG,
-			   XTAL_CLK / 10 - 1);
-	if (err)
-		return err;
-
-	err = regmap_read(anx78xx->map[I2C_IDX_RX_P0],
-			  SP_HDMI_US_TIMER_CTRL_REG,
-			  &value);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_RX_P0],
-			   SP_HDMI_US_TIMER_CTRL_REG,
-			   (value & SP_MS_TIMER_MARGIN_10_8_MASK) |
-			   ((((XTAL_CLK / 10) >> 1) - 2) << 3));
-	if (err)
-		return err;
-
-	return 0;
-}
-
-static const struct reg_sequence otp_key_protect[] = {
-	{ SP_OTP_KEY_PROTECT1_REG, SP_OTP_PSW1 },
-	{ SP_OTP_KEY_PROTECT2_REG, SP_OTP_PSW2 },
-	{ SP_OTP_KEY_PROTECT3_REG, SP_OTP_PSW3 },
-};
-
-static int anx78xx_tx_initialization(struct anx78xx *anx78xx)
-{
-	int err;
-
-	/* Set terminal resistor to 50 ohm */
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL2_REG,
-			   0x30);
-	if (err)
-		return err;
-
-	/* Enable aux double diff output */
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
-			       SP_DP_AUX_CH_CTRL2_REG, 0x08);
-	if (err)
-		return err;
-
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
-				 SP_DP_HDCP_CTRL_REG, SP_AUTO_EN |
-				 SP_AUTO_START);
-	if (err)
-		return err;
-
-	err = regmap_multi_reg_write(anx78xx->map[I2C_IDX_TX_P0],
-				     otp_key_protect,
-				     ARRAY_SIZE(otp_key_protect));
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
-			       SP_HDCP_KEY_COMMAND_REG, SP_DISABLE_SYNC_HDCP);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL8_REG,
-			   SP_VID_VRES_TH);
-	if (err)
-		return err;
-
-	/*
-	 * DP HDCP auto authentication wait timer (when downstream starts to
-	 * auth, DP side will wait for this period then do auth automatically)
-	 */
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_HDCP_AUTO_TIMER_REG,
-			   0x00);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
-			       SP_DP_HDCP_CTRL_REG, SP_LINK_POLLING);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
-			       SP_DP_LINK_DEBUG_CTRL_REG, SP_M_VID_DEBUG);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2],
-			       SP_ANALOG_DEBUG2_REG, SP_POWERON_TIME_1P5MS);
-	if (err)
-		return err;
-
-	err = anx78xx_xtal_clk_sel(anx78xx);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_DEFER_CTRL_REG,
-			   SP_DEFER_CTRL_EN | 0x0c);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
-			       SP_DP_POLLING_CTRL_REG,
-			       SP_AUTO_POLLING_DISABLE);
-	if (err)
-		return err;
-
-	/*
-	 * Short the link integrity check timer to speed up bstatus
-	 * polling for HDCP CTS item 1A-07
-	 */
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
-			   SP_HDCP_LINK_CHECK_TIMER_REG, 0x1d);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
-			       SP_DP_MISC_CTRL_REG, SP_EQ_TRAINING_LOOP);
-	if (err)
-		return err;
-
-	/* Power down the main link by default */
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
-			       SP_DP_ANALOG_POWER_DOWN_REG, SP_CH0_PD);
-	if (err)
-		return err;
-
-	err = anx78xx_link_phy_initialization(anx78xx);
-	if (err)
-		return err;
-
-	/* Gen m_clk with downspreading */
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
-			       SP_DP_M_CALCULATION_CTRL_REG, SP_M_GEN_CLK_SEL);
-	if (err)
-		return err;
-
-	return 0;
-}
-
-static int anx78xx_enable_interrupts(struct anx78xx *anx78xx)
-{
-	int err;
-
-	/*
-	 * BIT0: INT pin assertion polarity: 1 = assert high
-	 * BIT1: INT pin output type: 0 = push/pull
-	 */
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2], SP_INT_CTRL_REG, 0x01);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2],
-			   SP_COMMON_INT_MASK4_REG, SP_HPD_LOST | SP_HPD_PLUG);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2], SP_DP_INT_MASK1_REG,
-			   SP_TRAINING_FINISH);
-	if (err)
-		return err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_RX_P0], SP_INT_MASK1_REG,
-			   SP_CKDT_CHG | SP_SCDT_CHG);
-	if (err)
-		return err;
-
-	return 0;
-}
-
-static void anx78xx_poweron(struct anx78xx *anx78xx)
-{
-	struct anx78xx_platform_data *pdata = &anx78xx->pdata;
-	int err;
-
-	if (WARN_ON(anx78xx->powered))
-		return;
-
-	if (pdata->dvdd10) {
-		err = regulator_enable(pdata->dvdd10);
-		if (err) {
-			DRM_ERROR("Failed to enable DVDD10 regulator: %d\n",
-				  err);
-			return;
-		}
-
-		usleep_range(1000, 2000);
-	}
-
-	gpiod_set_value_cansleep(pdata->gpiod_reset, 1);
-	usleep_range(1000, 2000);
-
-	gpiod_set_value_cansleep(pdata->gpiod_pd, 0);
-	usleep_range(1000, 2000);
-
-	gpiod_set_value_cansleep(pdata->gpiod_reset, 0);
-
-	/* Power on registers module */
-	anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_POWERDOWN_CTRL_REG,
-			 SP_HDCP_PD | SP_AUDIO_PD | SP_VIDEO_PD | SP_LINK_PD);
-	anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2], SP_POWERDOWN_CTRL_REG,
-			   SP_REGISTER_PD | SP_TOTAL_PD);
-
-	anx78xx->powered = true;
-}
-
-static void anx78xx_poweroff(struct anx78xx *anx78xx)
-{
-	struct anx78xx_platform_data *pdata = &anx78xx->pdata;
-	int err;
-
-	if (WARN_ON(!anx78xx->powered))
-		return;
-
-	gpiod_set_value_cansleep(pdata->gpiod_reset, 1);
-	usleep_range(1000, 2000);
-
-	gpiod_set_value_cansleep(pdata->gpiod_pd, 1);
-	usleep_range(1000, 2000);
-
-	if (pdata->dvdd10) {
-		err = regulator_disable(pdata->dvdd10);
-		if (err) {
-			DRM_ERROR("Failed to disable DVDD10 regulator: %d\n",
-				  err);
-			return;
-		}
-
-		usleep_range(1000, 2000);
-	}
-
-	anx78xx->powered = false;
-}
-
-static int anx78xx_start(struct anx78xx *anx78xx)
-{
-	int err;
-
-	/* Power on all modules */
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2],
-				 SP_POWERDOWN_CTRL_REG,
-				 SP_HDCP_PD | SP_AUDIO_PD | SP_VIDEO_PD |
-				 SP_LINK_PD);
-
-	err = anx78xx_enable_interrupts(anx78xx);
-	if (err) {
-		DRM_ERROR("Failed to enable interrupts: %d\n", err);
-		goto err_poweroff;
-	}
-
-	err = anx78xx_rx_initialization(anx78xx);
-	if (err) {
-		DRM_ERROR("Failed receiver initialization: %d\n", err);
-		goto err_poweroff;
-	}
-
-	err = anx78xx_tx_initialization(anx78xx);
-	if (err) {
-		DRM_ERROR("Failed transmitter initialization: %d\n", err);
-		goto err_poweroff;
-	}
-
-	/*
-	 * This delay seems to help keep the hardware in a good state. Without
-	 * it, there are times where it fails silently.
-	 */
-	usleep_range(10000, 15000);
-
-	return 0;
-
-err_poweroff:
-	DRM_ERROR("Failed SlimPort transmitter initialization: %d\n", err);
-	anx78xx_poweroff(anx78xx);
-
-	return err;
-}
-
-static int anx78xx_init_pdata(struct anx78xx *anx78xx)
-{
-	struct anx78xx_platform_data *pdata = &anx78xx->pdata;
-	struct device *dev = &anx78xx->client->dev;
-
-	/* 1.0V digital core power regulator  */
-	pdata->dvdd10 = devm_regulator_get(dev, "dvdd10");
-	if (IS_ERR(pdata->dvdd10)) {
-		DRM_ERROR("DVDD10 regulator not found\n");
-		return PTR_ERR(pdata->dvdd10);
-	}
-
-	/* GPIO for HPD */
-	pdata->gpiod_hpd = devm_gpiod_get(dev, "hpd", GPIOD_IN);
-	if (IS_ERR(pdata->gpiod_hpd))
-		return PTR_ERR(pdata->gpiod_hpd);
-
-	/* GPIO for chip power down */
-	pdata->gpiod_pd = devm_gpiod_get(dev, "pd", GPIOD_OUT_HIGH);
-	if (IS_ERR(pdata->gpiod_pd))
-		return PTR_ERR(pdata->gpiod_pd);
-
-	/* GPIO for chip reset */
-	pdata->gpiod_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
-
-	return PTR_ERR_OR_ZERO(pdata->gpiod_reset);
-}
-
-static int anx78xx_dp_link_training(struct anx78xx *anx78xx)
-{
-	u8 dp_bw, value;
-	int err;
-
-	err = regmap_write(anx78xx->map[I2C_IDX_RX_P0], SP_HDMI_MUTE_CTRL_REG,
-			   0x0);
-	if (err)
-		return err;
-
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2],
-				 SP_POWERDOWN_CTRL_REG,
-				 SP_TOTAL_PD);
-	if (err)
-		return err;
-
-	err = drm_dp_dpcd_readb(&anx78xx->aux, DP_MAX_LINK_RATE, &dp_bw);
-	if (err < 0)
-		return err;
-
-	switch (dp_bw) {
-	case DP_LINK_BW_1_62:
-	case DP_LINK_BW_2_7:
-	case DP_LINK_BW_5_4:
-		break;
-
-	default:
-		DRM_DEBUG_KMS("DP bandwidth (%#02x) not supported\n", dp_bw);
-		return -EINVAL;
-	}
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL1_REG,
-			       SP_VIDEO_MUTE);
-	if (err)
-		return err;
-
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2],
-				 SP_VID_CTRL1_REG, SP_VIDEO_EN);
-	if (err)
-		return err;
-
-	/* Get DPCD info */
-	err = drm_dp_dpcd_read(&anx78xx->aux, DP_DPCD_REV,
-			       &anx78xx->dpcd, DP_RECEIVER_CAP_SIZE);
-	if (err < 0) {
-		DRM_ERROR("Failed to read DPCD: %d\n", err);
-		return err;
-	}
-
-	/* Clear channel x SERDES power down */
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
-				 SP_DP_ANALOG_POWER_DOWN_REG, SP_CH0_PD);
-	if (err)
-		return err;
-
-	/* Check link capabilities */
-	err = drm_dp_link_probe(&anx78xx->aux, &anx78xx->link);
-	if (err < 0) {
-		DRM_ERROR("Failed to probe link capabilities: %d\n", err);
-		return err;
-	}
-
-	/* Power up the sink */
-	err = drm_dp_link_power_up(&anx78xx->aux, &anx78xx->link);
-	if (err < 0) {
-		DRM_ERROR("Failed to power up DisplayPort link: %d\n", err);
-		return err;
-	}
-
-	/* Possibly enable downspread on the sink */
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
-			   SP_DP_DOWNSPREAD_CTRL1_REG, 0);
-	if (err)
-		return err;
-
-	if (anx78xx->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5) {
-		DRM_DEBUG("Enable downspread on the sink\n");
-		/* 4000PPM */
-		err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
-				   SP_DP_DOWNSPREAD_CTRL1_REG, 8);
-		if (err)
-			return err;
-
-		err = drm_dp_dpcd_writeb(&anx78xx->aux, DP_DOWNSPREAD_CTRL,
-					 DP_SPREAD_AMP_0_5);
-		if (err < 0)
-			return err;
-	} else {
-		err = drm_dp_dpcd_writeb(&anx78xx->aux, DP_DOWNSPREAD_CTRL, 0);
-		if (err < 0)
-			return err;
-	}
-
-	/* Set the lane count and the link rate on the sink */
-	if (drm_dp_enhanced_frame_cap(anx78xx->dpcd))
-		err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
-				       SP_DP_SYSTEM_CTRL_BASE + 4,
-				       SP_ENHANCED_MODE);
-	else
-		err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
-					 SP_DP_SYSTEM_CTRL_BASE + 4,
-					 SP_ENHANCED_MODE);
-	if (err)
-		return err;
-
-	value = drm_dp_link_rate_to_bw_code(anx78xx->link.rate);
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
-			   SP_DP_MAIN_LINK_BW_SET_REG, value);
-	if (err)
-		return err;
-
-	err = drm_dp_link_configure(&anx78xx->aux, &anx78xx->link);
-	if (err < 0) {
-		DRM_ERROR("Failed to configure DisplayPort link: %d\n", err);
-		return err;
-	}
-
-	/* Start training on the source */
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_LT_CTRL_REG,
-			   SP_LT_EN);
-	if (err)
-		return err;
-
-	return 0;
-}
-
-static int anx78xx_config_dp_output(struct anx78xx *anx78xx)
-{
-	int err;
-
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL1_REG,
-				 SP_VIDEO_MUTE);
-	if (err)
-		return err;
-
-	/* Enable DP output */
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL1_REG,
-			       SP_VIDEO_EN);
-	if (err)
-		return err;
-
-	return 0;
-}
-
-static int anx78xx_send_video_infoframe(struct anx78xx *anx78xx,
-					struct hdmi_avi_infoframe *frame)
-{
-	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE];
-	int err;
-
-	err = hdmi_avi_infoframe_pack(frame, buffer, sizeof(buffer));
-	if (err < 0) {
-		DRM_ERROR("Failed to pack AVI infoframe: %d\n", err);
-		return err;
-	}
-
-	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
-				 SP_PACKET_SEND_CTRL_REG, SP_AVI_IF_EN);
-	if (err)
-		return err;
-
-	err = regmap_bulk_write(anx78xx->map[I2C_IDX_TX_P2],
-				SP_INFOFRAME_AVI_DB1_REG, buffer,
-				frame->length);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
-			       SP_PACKET_SEND_CTRL_REG, SP_AVI_IF_UD);
-	if (err)
-		return err;
-
-	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
-			       SP_PACKET_SEND_CTRL_REG, SP_AVI_IF_EN);
-	if (err)
-		return err;
-
-	return 0;
-}
-
-static int anx78xx_get_downstream_info(struct anx78xx *anx78xx)
-{
-	u8 value;
-	int err;
-
-	err = drm_dp_dpcd_readb(&anx78xx->aux, DP_SINK_COUNT, &value);
-	if (err < 0) {
-		DRM_ERROR("Get sink count failed %d\n", err);
-		return err;
-	}
-
-	if (!DP_GET_SINK_COUNT(value)) {
-		DRM_ERROR("Downstream disconnected\n");
-		return -EIO;
-	}
-
-	return 0;
-}
-
-static int anx78xx_get_modes(struct drm_connector *connector)
-{
-	struct anx78xx *anx78xx = connector_to_anx78xx(connector);
-	int err, num_modes = 0;
-
-	if (WARN_ON(!anx78xx->powered))
-		return 0;
-
-	if (anx78xx->edid)
-		return drm_add_edid_modes(connector, anx78xx->edid);
-
-	mutex_lock(&anx78xx->lock);
-
-	err = anx78xx_get_downstream_info(anx78xx);
-	if (err) {
-		DRM_ERROR("Failed to get downstream info: %d\n", err);
-		goto unlock;
-	}
-
-	anx78xx->edid = drm_get_edid(connector, &anx78xx->aux.ddc);
-	if (!anx78xx->edid) {
-		DRM_ERROR("Failed to read EDID\n");
-		goto unlock;
-	}
-
-	err = drm_connector_update_edid_property(connector,
-						 anx78xx->edid);
-	if (err) {
-		DRM_ERROR("Failed to update EDID property: %d\n", err);
-		goto unlock;
-	}
-
-	num_modes = drm_add_edid_modes(connector, anx78xx->edid);
-
-unlock:
-	mutex_unlock(&anx78xx->lock);
-
-	return num_modes;
-}
-
-static const struct drm_connector_helper_funcs anx78xx_connector_helper_funcs = {
-	.get_modes = anx78xx_get_modes,
-};
-
-static enum drm_connector_status anx78xx_detect(struct drm_connector *connector,
-						bool force)
-{
-	struct anx78xx *anx78xx = connector_to_anx78xx(connector);
-
-	if (!gpiod_get_value(anx78xx->pdata.gpiod_hpd))
-		return connector_status_disconnected;
-
-	return connector_status_connected;
-}
-
-static const struct drm_connector_funcs anx78xx_connector_funcs = {
-	.fill_modes = drm_helper_probe_single_connector_modes,
-	.detect = anx78xx_detect,
-	.destroy = drm_connector_cleanup,
-	.reset = drm_atomic_helper_connector_reset,
-	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
-	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
-};
-
-static int anx78xx_bridge_attach(struct drm_bridge *bridge)
-{
-	struct anx78xx *anx78xx = bridge_to_anx78xx(bridge);
-	int err;
-
-	if (!bridge->encoder) {
-		DRM_ERROR("Parent encoder object not found");
-		return -ENODEV;
-	}
-
-	/* Register aux channel */
-	anx78xx->aux.name = "DP-AUX";
-	anx78xx->aux.dev = &anx78xx->client->dev;
-	anx78xx->aux.transfer = anx78xx_aux_transfer;
-
-	err = drm_dp_aux_register(&anx78xx->aux);
-	if (err < 0) {
-		DRM_ERROR("Failed to register aux channel: %d\n", err);
-		return err;
-	}
-
-	err = drm_connector_init(bridge->dev, &anx78xx->connector,
-				 &anx78xx_connector_funcs,
-				 DRM_MODE_CONNECTOR_DisplayPort);
-	if (err) {
-		DRM_ERROR("Failed to initialize connector: %d\n", err);
-		return err;
-	}
-
-	drm_connector_helper_add(&anx78xx->connector,
-				 &anx78xx_connector_helper_funcs);
-
-	err = drm_connector_register(&anx78xx->connector);
-	if (err) {
-		DRM_ERROR("Failed to register connector: %d\n", err);
-		return err;
-	}
-
-	anx78xx->connector.polled = DRM_CONNECTOR_POLL_HPD;
-
-	err = drm_connector_attach_encoder(&anx78xx->connector,
-					   bridge->encoder);
-	if (err) {
-		DRM_ERROR("Failed to link up connector to encoder: %d\n", err);
-		return err;
-	}
-
-	return 0;
-}
-
-static enum drm_mode_status
-anx78xx_bridge_mode_valid(struct drm_bridge *bridge,
-			  const struct drm_display_mode *mode)
-{
-	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
-		return MODE_NO_INTERLACE;
-
-	/* Max 1200p at 5.4 Ghz, one lane */
-	if (mode->clock > 154000)
-		return MODE_CLOCK_HIGH;
-
-	return MODE_OK;
-}
-
-static void anx78xx_bridge_disable(struct drm_bridge *bridge)
-{
-	struct anx78xx *anx78xx = bridge_to_anx78xx(bridge);
-
-	/* Power off all modules except configuration registers access */
-	anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_POWERDOWN_CTRL_REG,
-			 SP_HDCP_PD | SP_AUDIO_PD | SP_VIDEO_PD | SP_LINK_PD);
-}
-
-static void anx78xx_bridge_mode_set(struct drm_bridge *bridge,
-				const struct drm_display_mode *mode,
-				const struct drm_display_mode *adjusted_mode)
-{
-	struct anx78xx *anx78xx = bridge_to_anx78xx(bridge);
-	struct hdmi_avi_infoframe frame;
-	int err;
-
-	if (WARN_ON(!anx78xx->powered))
-		return;
-
-	mutex_lock(&anx78xx->lock);
-
-	err = drm_hdmi_avi_infoframe_from_display_mode(&frame,
-						       &anx78xx->connector,
-						       adjusted_mode);
-	if (err) {
-		DRM_ERROR("Failed to setup AVI infoframe: %d\n", err);
-		goto unlock;
-	}
-
-	err = anx78xx_send_video_infoframe(anx78xx, &frame);
-	if (err)
-		DRM_ERROR("Failed to send AVI infoframe: %d\n", err);
-
-unlock:
-	mutex_unlock(&anx78xx->lock);
-}
-
-static void anx78xx_bridge_enable(struct drm_bridge *bridge)
-{
-	struct anx78xx *anx78xx = bridge_to_anx78xx(bridge);
-	int err;
-
-	err = anx78xx_start(anx78xx);
-	if (err) {
-		DRM_ERROR("Failed to initialize: %d\n", err);
-		return;
-	}
-
-	err = anx78xx_set_hpd(anx78xx);
-	if (err)
-		DRM_ERROR("Failed to set HPD: %d\n", err);
-}
-
-static const struct drm_bridge_funcs anx78xx_bridge_funcs = {
-	.attach = anx78xx_bridge_attach,
-	.mode_valid = anx78xx_bridge_mode_valid,
-	.disable = anx78xx_bridge_disable,
-	.mode_set = anx78xx_bridge_mode_set,
-	.enable = anx78xx_bridge_enable,
-};
-
-static irqreturn_t anx78xx_hpd_threaded_handler(int irq, void *data)
-{
-	struct anx78xx *anx78xx = data;
-	int err;
-
-	if (anx78xx->powered)
-		return IRQ_HANDLED;
-
-	mutex_lock(&anx78xx->lock);
-
-	/* Cable is pulled, power on the chip */
-	anx78xx_poweron(anx78xx);
-
-	err = anx78xx_enable_interrupts(anx78xx);
-	if (err)
-		DRM_ERROR("Failed to enable interrupts: %d\n", err);
-
-	mutex_unlock(&anx78xx->lock);
-
-	return IRQ_HANDLED;
-}
-
-static int anx78xx_handle_dp_int_1(struct anx78xx *anx78xx, u8 irq)
-{
-	int err;
-
-	DRM_DEBUG_KMS("Handle DP interrupt 1: %02x\n", irq);
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2], SP_DP_INT_STATUS1_REG,
-			   irq);
-	if (err)
-		return err;
-
-	if (irq & SP_TRAINING_FINISH) {
-		DRM_DEBUG_KMS("IRQ: hardware link training finished\n");
-		err = anx78xx_config_dp_output(anx78xx);
-	}
-
-	return err;
-}
-
-static bool anx78xx_handle_common_int_4(struct anx78xx *anx78xx, u8 irq)
-{
-	bool event = false;
-	int err;
-
-	DRM_DEBUG_KMS("Handle common interrupt 4: %02x\n", irq);
-
-	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2],
-			   SP_COMMON_INT_STATUS4_REG, irq);
-	if (err) {
-		DRM_ERROR("Failed to write SP_COMMON_INT_STATUS4 %d\n", err);
-		return event;
-	}
-
-	if (irq & SP_HPD_LOST) {
-		DRM_DEBUG_KMS("IRQ: Hot plug detect - cable is pulled out\n");
-		event = true;
-		anx78xx_poweroff(anx78xx);
-		/* Free cached EDID */
-		kfree(anx78xx->edid);
-		anx78xx->edid = NULL;
-	} else if (irq & SP_HPD_PLUG) {
-		DRM_DEBUG_KMS("IRQ: Hot plug detect - cable plug\n");
-		event = true;
-	}
-
-	return event;
-}
-
-static void anx78xx_handle_hdmi_int_1(struct anx78xx *anx78xx, u8 irq)
-{
-	unsigned int value;
-	int err;
-
-	DRM_DEBUG_KMS("Handle HDMI interrupt 1: %02x\n", irq);
-
-	err = regmap_write(anx78xx->map[I2C_IDX_RX_P0], SP_INT_STATUS1_REG,
-			   irq);
-	if (err) {
-		DRM_ERROR("Write HDMI int 1 failed: %d\n", err);
-		return;
-	}
-
-	if ((irq & SP_CKDT_CHG) || (irq & SP_SCDT_CHG)) {
-		DRM_DEBUG_KMS("IRQ: HDMI input detected\n");
-
-		err = regmap_read(anx78xx->map[I2C_IDX_RX_P0],
-				  SP_SYSTEM_STATUS_REG, &value);
-		if (err) {
-			DRM_ERROR("Read system status reg failed: %d\n", err);
-			return;
-		}
-
-		if (!(value & SP_TMDS_CLOCK_DET)) {
-			DRM_DEBUG_KMS("IRQ: *** Waiting for HDMI clock ***\n");
-			return;
-		}
-
-		if (!(value & SP_TMDS_DE_DET)) {
-			DRM_DEBUG_KMS("IRQ: *** Waiting for HDMI signal ***\n");
-			return;
-		}
-
-		err = anx78xx_dp_link_training(anx78xx);
-		if (err)
-			DRM_ERROR("Failed to start link training: %d\n", err);
-	}
-}
-
-static irqreturn_t anx78xx_intp_threaded_handler(int unused, void *data)
-{
-	struct anx78xx *anx78xx = data;
-	bool event = false;
-	unsigned int irq;
-	int err;
-
-	mutex_lock(&anx78xx->lock);
-
-	err = regmap_read(anx78xx->map[I2C_IDX_TX_P2], SP_DP_INT_STATUS1_REG,
-			  &irq);
-	if (err) {
-		DRM_ERROR("Failed to read DP interrupt 1 status: %d\n", err);
-		goto unlock;
-	}
-
-	if (irq)
-		anx78xx_handle_dp_int_1(anx78xx, irq);
-
-	err = regmap_read(anx78xx->map[I2C_IDX_TX_P2],
-			  SP_COMMON_INT_STATUS4_REG, &irq);
-	if (err) {
-		DRM_ERROR("Failed to read common interrupt 4 status: %d\n",
-			  err);
-		goto unlock;
-	}
-
-	if (irq)
-		event = anx78xx_handle_common_int_4(anx78xx, irq);
-
-	/* Make sure we are still powered after handle HPD events */
-	if (!anx78xx->powered)
-		goto unlock;
-
-	err = regmap_read(anx78xx->map[I2C_IDX_RX_P0], SP_INT_STATUS1_REG,
-			  &irq);
-	if (err) {
-		DRM_ERROR("Failed to read HDMI int 1 status: %d\n", err);
-		goto unlock;
-	}
-
-	if (irq)
-		anx78xx_handle_hdmi_int_1(anx78xx, irq);
-
-unlock:
-	mutex_unlock(&anx78xx->lock);
-
-	if (event)
-		drm_helper_hpd_irq_event(anx78xx->connector.dev);
-
-	return IRQ_HANDLED;
-}
-
-static void unregister_i2c_dummy_clients(struct anx78xx *anx78xx)
-{
-	unsigned int i;
-
-	for (i = 0; i < ARRAY_SIZE(anx78xx->i2c_dummy); i++)
-		i2c_unregister_device(anx78xx->i2c_dummy[i]);
-}
-
-static const struct regmap_config anx78xx_regmap_config = {
-	.reg_bits = 8,
-	.val_bits = 8,
-};
-
-static const u16 anx78xx_chipid_list[] = {
-	0x7812,
-	0x7814,
-	0x7818,
-};
-
-static int anx78xx_i2c_probe(struct i2c_client *client,
-			     const struct i2c_device_id *id)
-{
-	struct anx78xx *anx78xx;
-	struct anx78xx_platform_data *pdata;
-	unsigned int i, idl, idh, version;
-	bool found = false;
-	int err;
-
-	anx78xx = devm_kzalloc(&client->dev, sizeof(*anx78xx), GFP_KERNEL);
-	if (!anx78xx)
-		return -ENOMEM;
-
-	pdata = &anx78xx->pdata;
-
-	mutex_init(&anx78xx->lock);
-
-#if IS_ENABLED(CONFIG_OF)
-	anx78xx->bridge.of_node = client->dev.of_node;
-#endif
-
-	anx78xx->client = client;
-	i2c_set_clientdata(client, anx78xx);
-
-	err = anx78xx_init_pdata(anx78xx);
-	if (err) {
-		DRM_ERROR("Failed to initialize pdata: %d\n", err);
-		return err;
-	}
-
-	pdata->hpd_irq = gpiod_to_irq(pdata->gpiod_hpd);
-	if (pdata->hpd_irq < 0) {
-		DRM_ERROR("Failed to get HPD IRQ: %d\n", pdata->hpd_irq);
-		return -ENODEV;
-	}
-
-	pdata->intp_irq = client->irq;
-	if (!pdata->intp_irq) {
-		DRM_ERROR("Failed to get CABLE_DET and INTP IRQ\n");
-		return -ENODEV;
-	}
-
-	/* Map slave addresses of ANX7814 */
-	for (i = 0; i < I2C_NUM_ADDRESSES; i++) {
-		anx78xx->i2c_dummy[i] = i2c_new_dummy(client->adapter,
-						anx78xx_i2c_addresses[i] >> 1);
-		if (!anx78xx->i2c_dummy[i]) {
-			err = -ENOMEM;
-			DRM_ERROR("Failed to reserve I2C bus %02x\n",
-				  anx78xx_i2c_addresses[i]);
-			goto err_unregister_i2c;
-		}
-
-		anx78xx->map[i] = devm_regmap_init_i2c(anx78xx->i2c_dummy[i],
-						       &anx78xx_regmap_config);
-		if (IS_ERR(anx78xx->map[i])) {
-			err = PTR_ERR(anx78xx->map[i]);
-			DRM_ERROR("Failed regmap initialization %02x\n",
-				  anx78xx_i2c_addresses[i]);
-			goto err_unregister_i2c;
-		}
-	}
-
-	/* Look for supported chip ID */
-	anx78xx_poweron(anx78xx);
-
-	err = regmap_read(anx78xx->map[I2C_IDX_TX_P2], SP_DEVICE_IDL_REG,
-			  &idl);
-	if (err)
-		goto err_poweroff;
-
-	err = regmap_read(anx78xx->map[I2C_IDX_TX_P2], SP_DEVICE_IDH_REG,
-			  &idh);
-	if (err)
-		goto err_poweroff;
-
-	anx78xx->chipid = (u8)idl | ((u8)idh << 8);
-
-	err = regmap_read(anx78xx->map[I2C_IDX_TX_P2], SP_DEVICE_VERSION_REG,
-			  &version);
-	if (err)
-		goto err_poweroff;
-
-	for (i = 0; i < ARRAY_SIZE(anx78xx_chipid_list); i++) {
-		if (anx78xx->chipid == anx78xx_chipid_list[i]) {
-			DRM_INFO("Found ANX%x (ver. %d) SlimPort Transmitter\n",
-				 anx78xx->chipid, version);
-			found = true;
-			break;
-		}
-	}
-
-	if (!found) {
-		DRM_ERROR("ANX%x (ver. %d) not supported by this driver\n",
-			  anx78xx->chipid, version);
-		err = -ENODEV;
-		goto err_poweroff;
-	}
-
-	err = devm_request_threaded_irq(&client->dev, pdata->hpd_irq, NULL,
-					anx78xx_hpd_threaded_handler,
-					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
-					"anx78xx-hpd", anx78xx);
-	if (err) {
-		DRM_ERROR("Failed to request CABLE_DET threaded IRQ: %d\n",
-			  err);
-		goto err_poweroff;
-	}
-
-	err = devm_request_threaded_irq(&client->dev, pdata->intp_irq, NULL,
-					anx78xx_intp_threaded_handler,
-					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
-					"anx78xx-intp", anx78xx);
-	if (err) {
-		DRM_ERROR("Failed to request INTP threaded IRQ: %d\n", err);
-		goto err_poweroff;
-	}
-
-	anx78xx->bridge.funcs = &anx78xx_bridge_funcs;
-
-	drm_bridge_add(&anx78xx->bridge);
-
-	/* If cable is pulled out, just poweroff and wait for HPD event */
-	if (!gpiod_get_value(anx78xx->pdata.gpiod_hpd))
-		anx78xx_poweroff(anx78xx);
-
-	return 0;
-
-err_poweroff:
-	anx78xx_poweroff(anx78xx);
-
-err_unregister_i2c:
-	unregister_i2c_dummy_clients(anx78xx);
-	return err;
-}
-
-static int anx78xx_i2c_remove(struct i2c_client *client)
-{
-	struct anx78xx *anx78xx = i2c_get_clientdata(client);
-
-	drm_bridge_remove(&anx78xx->bridge);
-
-	unregister_i2c_dummy_clients(anx78xx);
-
-	kfree(anx78xx->edid);
-
-	return 0;
-}
-
-static const struct i2c_device_id anx78xx_id[] = {
-	{ "anx7814", 0 },
-	{ /* sentinel */ }
-};
-MODULE_DEVICE_TABLE(i2c, anx78xx_id);
-
-#if IS_ENABLED(CONFIG_OF)
-static const struct of_device_id anx78xx_match_table[] = {
-	{ .compatible = "analogix,anx7814", },
-	{ /* sentinel */ },
-};
-MODULE_DEVICE_TABLE(of, anx78xx_match_table);
-#endif
-
-static struct i2c_driver anx78xx_driver = {
-	.driver = {
-		   .name = "anx7814",
-		   .of_match_table = of_match_ptr(anx78xx_match_table),
-		  },
-	.probe = anx78xx_i2c_probe,
-	.remove = anx78xx_i2c_remove,
-	.id_table = anx78xx_id,
-};
-module_i2c_driver(anx78xx_driver);
-
-MODULE_DESCRIPTION("ANX78xx SlimPort Transmitter driver");
-MODULE_AUTHOR("Enric Balletbo i Serra <enric.balletbo@collabora.com>");
-MODULE_LICENSE("GPL v2");
diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.h b/drivers/gpu/drm/bridge/analogix-anx78xx.h
deleted file mode 100644
index 25e063b..0000000
--- a/drivers/gpu/drm/bridge/analogix-anx78xx.h
+++ /dev/null
@@ -1,710 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * Copyright(c) 2016, Analogix Semiconductor. All rights reserved.
- */
-
-#ifndef __ANX78xx_H
-#define __ANX78xx_H
-
-#define TX_P0				0x70
-#define TX_P1				0x7a
-#define TX_P2				0x72
-
-#define RX_P0				0x7e
-#define RX_P1				0x80
-
-/***************************************************************/
-/* Register definition of device address 0x7e                  */
-/***************************************************************/
-
-/*
- * System Control and Status
- */
-
-/* Software Reset Register 1 */
-#define SP_SOFTWARE_RESET1_REG		0x11
-#define SP_VIDEO_RST			BIT(4)
-#define SP_HDCP_MAN_RST			BIT(2)
-#define SP_TMDS_RST			BIT(1)
-#define SP_SW_MAN_RST			BIT(0)
-
-/* System Status Register */
-#define SP_SYSTEM_STATUS_REG		0x14
-#define SP_TMDS_CLOCK_DET		BIT(1)
-#define SP_TMDS_DE_DET			BIT(0)
-
-/* HDMI Status Register */
-#define SP_HDMI_STATUS_REG		0x15
-#define SP_HDMI_AUD_LAYOUT		BIT(3)
-#define SP_HDMI_DET			BIT(0)
-#  define SP_DVI_MODE			0
-#  define SP_HDMI_MODE			1
-
-/* HDMI Mute Control Register */
-#define SP_HDMI_MUTE_CTRL_REG		0x16
-#define SP_AUD_MUTE			BIT(1)
-#define SP_VID_MUTE			BIT(0)
-
-/* System Power Down Register 1 */
-#define SP_SYSTEM_POWER_DOWN1_REG	0x18
-#define SP_PWDN_CTRL			BIT(0)
-
-/*
- * Audio and Video Auto Control
- */
-
-/* Auto Audio and Video Control register */
-#define SP_AUDVID_CTRL_REG		0x20
-#define SP_AVC_OE			BIT(7)
-#define SP_AAC_OE			BIT(6)
-#define SP_AVC_EN			BIT(1)
-#define SP_AAC_EN			BIT(0)
-
-/* Audio Exception Enable Registers */
-#define SP_AUD_EXCEPTION_ENABLE_BASE	(0x24 - 1)
-/* Bits for Audio Exception Enable Register 3 */
-#define SP_AEC_EN21			BIT(5)
-
-/*
- * Interrupt
- */
-
-/* Interrupt Status Register 1 */
-#define SP_INT_STATUS1_REG		0x31
-/* Bits for Interrupt Status Register 1 */
-#define SP_HDMI_DVI			BIT(7)
-#define SP_CKDT_CHG			BIT(6)
-#define SP_SCDT_CHG			BIT(5)
-#define SP_PCLK_CHG			BIT(4)
-#define SP_PLL_UNLOCK			BIT(3)
-#define SP_CABLE_PLUG_CHG		BIT(2)
-#define SP_SET_MUTE			BIT(1)
-#define SP_SW_INTR			BIT(0)
-/* Bits for Interrupt Status Register 2 */
-#define SP_HDCP_ERR			BIT(5)
-#define SP_AUDIO_SAMPLE_CHG		BIT(0)	/* undocumented */
-/* Bits for Interrupt Status Register 3 */
-#define SP_AUD_MODE_CHG			BIT(0)
-/* Bits for Interrupt Status Register 5 */
-#define SP_AUDIO_RCV			BIT(0)
-/* Bits for Interrupt Status Register 6 */
-#define SP_INT_STATUS6_REG		0x36
-#define SP_CTS_RCV			BIT(7)
-#define SP_NEW_AUD_PKT			BIT(4)
-#define SP_NEW_AVI_PKT			BIT(1)
-#define SP_NEW_CP_PKT			BIT(0)
-/* Bits for Interrupt Status Register 7 */
-#define SP_NO_VSI			BIT(7)
-#define SP_NEW_VS			BIT(4)
-
-/* Interrupt Mask 1 Status Registers */
-#define SP_INT_MASK1_REG		0x41
-
-/* HDMI US TIMER Control Register */
-#define SP_HDMI_US_TIMER_CTRL_REG	0x49
-#define SP_MS_TIMER_MARGIN_10_8_MASK	0x07
-
-/*
- * TMDS Control
- */
-
-/* TMDS Control Registers */
-#define SP_TMDS_CTRL_BASE		(0x50 - 1)
-/* Bits for TMDS Control Register 7 */
-#define SP_PD_RT			BIT(0)
-
-/*
- * Video Control
- */
-
-/* Video Status Register */
-#define SP_VIDEO_STATUS_REG		0x70
-#define SP_COLOR_DEPTH_MASK		0xf0
-#define SP_COLOR_DEPTH_SHIFT		4
-#  define SP_COLOR_DEPTH_MODE_LEGACY	0x00
-#  define SP_COLOR_DEPTH_MODE_24BIT	0x04
-#  define SP_COLOR_DEPTH_MODE_30BIT	0x05
-#  define SP_COLOR_DEPTH_MODE_36BIT	0x06
-#  define SP_COLOR_DEPTH_MODE_48BIT	0x07
-
-/* Video Data Range Control Register */
-#define SP_VID_DATA_RANGE_CTRL_REG	0x83
-#define SP_R2Y_INPUT_LIMIT		BIT(1)
-
-/* Pixel Clock High Resolution Counter Registers */
-#define SP_PCLK_HIGHRES_CNT_BASE	(0x8c - 1)
-
-/*
- * Audio Control
- */
-
-/* Number of Audio Channels Status Registers */
-#define SP_AUD_CH_STATUS_REG_NUM	6
-
-/* Audio IN S/PDIF Channel Status Registers */
-#define SP_AUD_SPDIF_CH_STATUS_BASE	0xc7
-
-/* Audio IN S/PDIF Channel Status Register 4 */
-#define SP_FS_FREQ_MASK			0x0f
-#  define SP_FS_FREQ_44100HZ		0x00
-#  define SP_FS_FREQ_48000HZ		0x02
-#  define SP_FS_FREQ_32000HZ		0x03
-#  define SP_FS_FREQ_88200HZ		0x08
-#  define SP_FS_FREQ_96000HZ		0x0a
-#  define SP_FS_FREQ_176400HZ		0x0c
-#  define SP_FS_FREQ_192000HZ		0x0e
-
-/*
- * Micellaneous Control Block
- */
-
-/* CHIP Control Register */
-#define SP_CHIP_CTRL_REG		0xe3
-#define SP_MAN_HDMI5V_DET		BIT(3)
-#define SP_PLLLOCK_CKDT_EN		BIT(2)
-#define SP_ANALOG_CKDT_EN		BIT(1)
-#define SP_DIGITAL_CKDT_EN		BIT(0)
-
-/* Packet Receiving Status Register */
-#define SP_PACKET_RECEIVING_STATUS_REG	0xf3
-#define SP_AVI_RCVD			BIT(5)
-#define SP_VSI_RCVD			BIT(1)
-
-/***************************************************************/
-/* Register definition of device address 0x80                  */
-/***************************************************************/
-
-/* HDCP BCAPS Shadow Register */
-#define SP_HDCP_BCAPS_SHADOW_REG	0x2a
-#define SP_BCAPS_REPEATER		BIT(5)
-
-/* HDCP Status Register */
-#define SP_RX_HDCP_STATUS_REG		0x3f
-#define SP_AUTH_EN			BIT(4)
-
-/*
- * InfoFrame and Control Packet Registers
- */
-
-/* AVI InfoFrame packet checksum */
-#define SP_AVI_INFOFRAME_CHECKSUM	0xa3
-
-/* AVI InfoFrame Registers */
-#define SP_AVI_INFOFRAME_DATA_BASE	0xa4
-
-#define SP_AVI_COLOR_F_MASK		0x60
-#define SP_AVI_COLOR_F_SHIFT		5
-
-/* Audio InfoFrame Registers */
-#define SP_AUD_INFOFRAME_DATA_BASE	0xc4
-#define SP_AUD_INFOFRAME_LAYOUT_MASK	0x0f
-
-/* MPEG/HDMI Vendor Specific InfoFrame Packet type code */
-#define SP_MPEG_VS_INFOFRAME_TYPE_REG	0xe0
-
-/* MPEG/HDMI Vendor Specific InfoFrame Packet length */
-#define SP_MPEG_VS_INFOFRAME_LEN_REG	0xe2
-
-/* MPEG/HDMI Vendor Specific InfoFrame Packet version number */
-#define SP_MPEG_VS_INFOFRAME_VER_REG	0xe1
-
-/* MPEG/HDMI Vendor Specific InfoFrame Packet content */
-#define SP_MPEG_VS_INFOFRAME_DATA_BASE	0xe4
-
-/* General Control Packet Register */
-#define SP_GENERAL_CTRL_PACKET_REG	0x9f
-#define SP_CLEAR_AVMUTE			BIT(4)
-#define SP_SET_AVMUTE			BIT(0)
-
-/***************************************************************/
-/* Register definition of device address 0x70                  */
-/***************************************************************/
-
-/* HDCP Status Register */
-#define SP_TX_HDCP_STATUS_REG		0x00
-#define SP_AUTH_FAIL			BIT(5)
-#define SP_AUTHEN_PASS			BIT(1)
-
-/* HDCP Control Register 0 */
-#define SP_HDCP_CTRL0_REG		0x01
-#define SP_RX_REPEATER			BIT(6)
-#define SP_RE_AUTH			BIT(5)
-#define SP_SW_AUTH_OK			BIT(4)
-#define SP_HARD_AUTH_EN			BIT(3)
-#define SP_HDCP_ENC_EN			BIT(2)
-#define SP_BKSV_SRM_PASS		BIT(1)
-#define SP_KSVLIST_VLD			BIT(0)
-/* HDCP Function Enabled */
-#define SP_HDCP_FUNCTION_ENABLED	(BIT(0) | BIT(1) | BIT(2) | BIT(3))
-
-/* HDCP Receiver BSTATUS Register 0 */
-#define	SP_HDCP_RX_BSTATUS0_REG		0x1b
-/* HDCP Receiver BSTATUS Register 1 */
-#define	SP_HDCP_RX_BSTATUS1_REG		0x1c
-
-/* HDCP Embedded "Blue Screen" Content Registers */
-#define SP_HDCP_VID0_BLUE_SCREEN_REG	0x2c
-#define SP_HDCP_VID1_BLUE_SCREEN_REG	0x2d
-#define SP_HDCP_VID2_BLUE_SCREEN_REG	0x2e
-
-/* HDCP Wait R0 Timing Register */
-#define SP_HDCP_WAIT_R0_TIME_REG	0x40
-
-/* HDCP Link Integrity Check Timer Register */
-#define SP_HDCP_LINK_CHECK_TIMER_REG	0x41
-
-/* HDCP Repeater Ready Wait Timer Register */
-#define SP_HDCP_RPTR_RDY_WAIT_TIME_REG	0x42
-
-/* HDCP Auto Timer Register */
-#define SP_HDCP_AUTO_TIMER_REG		0x51
-
-/* HDCP Key Status Register */
-#define SP_HDCP_KEY_STATUS_REG		0x5e
-
-/* HDCP Key Command Register */
-#define SP_HDCP_KEY_COMMAND_REG		0x5f
-#define SP_DISABLE_SYNC_HDCP		BIT(2)
-
-/* OTP Memory Key Protection Registers */
-#define SP_OTP_KEY_PROTECT1_REG		0x60
-#define SP_OTP_KEY_PROTECT2_REG		0x61
-#define SP_OTP_KEY_PROTECT3_REG		0x62
-#define SP_OTP_PSW1			0xa2
-#define SP_OTP_PSW2			0x7e
-#define SP_OTP_PSW3			0xc6
-
-/* DP System Control Registers */
-#define SP_DP_SYSTEM_CTRL_BASE		(0x80 - 1)
-/* Bits for DP System Control Register 2 */
-#define SP_CHA_STA			BIT(2)
-/* Bits for DP System Control Register 3 */
-#define SP_HPD_STATUS			BIT(6)
-#define SP_STRM_VALID			BIT(2)
-/* Bits for DP System Control Register 4 */
-#define SP_ENHANCED_MODE		BIT(3)
-
-/* DP Video Control Register */
-#define SP_DP_VIDEO_CTRL_REG		0x84
-#define SP_COLOR_F_MASK			0x06
-#define SP_COLOR_F_SHIFT		1
-#define SP_BPC_MASK			0xe0
-#define SP_BPC_SHIFT			5
-#  define SP_BPC_6BITS			0x00
-#  define SP_BPC_8BITS			0x01
-#  define SP_BPC_10BITS			0x02
-#  define SP_BPC_12BITS			0x03
-
-/* DP Audio Control Register */
-#define SP_DP_AUDIO_CTRL_REG		0x87
-#define SP_AUD_EN			BIT(0)
-
-/* 10us Pulse Generate Timer Registers */
-#define SP_I2C_GEN_10US_TIMER0_REG	0x88
-#define SP_I2C_GEN_10US_TIMER1_REG	0x89
-
-/* Packet Send Control Register */
-#define SP_PACKET_SEND_CTRL_REG		0x90
-#define SP_AUD_IF_UP			BIT(7)
-#define SP_AVI_IF_UD			BIT(6)
-#define SP_MPEG_IF_UD			BIT(5)
-#define SP_SPD_IF_UD			BIT(4)
-#define SP_AUD_IF_EN			BIT(3)
-#define SP_AVI_IF_EN			BIT(2)
-#define SP_MPEG_IF_EN			BIT(1)
-#define SP_SPD_IF_EN			BIT(0)
-
-/* DP HDCP Control Register */
-#define SP_DP_HDCP_CTRL_REG		0x92
-#define SP_AUTO_EN			BIT(7)
-#define SP_AUTO_START			BIT(5)
-#define SP_LINK_POLLING			BIT(1)
-
-/* DP Main Link Bandwidth Setting Register */
-#define SP_DP_MAIN_LINK_BW_SET_REG	0xa0
-#define SP_LINK_BW_SET_MASK		0x1f
-#define SP_INITIAL_SLIM_M_AUD_SEL	BIT(5)
-
-/* DP Training Pattern Set Register */
-#define SP_DP_TRAINING_PATTERN_SET_REG	0xa2
-
-/* DP Lane 0 Link Training Control Register */
-#define SP_DP_LANE0_LT_CTRL_REG		0xa3
-#define SP_TX_SW_SET_MASK		0x1b
-#define SP_MAX_PRE_REACH		BIT(5)
-#define SP_MAX_DRIVE_REACH		BIT(4)
-#define SP_PRE_EMP_LEVEL1		BIT(3)
-#define SP_DRVIE_CURRENT_LEVEL1		BIT(0)
-
-/* DP Link Training Control Register */
-#define SP_DP_LT_CTRL_REG		0xa8
-#define SP_LT_ERROR_TYPE_MASK		0x70
-#  define SP_LT_NO_ERROR		0x00
-#  define SP_LT_AUX_WRITE_ERROR		0x01
-#  define SP_LT_MAX_DRIVE_REACHED	0x02
-#  define SP_LT_WRONG_LANE_COUNT_SET	0x03
-#  define SP_LT_LOOP_SAME_5_TIME	0x04
-#  define SP_LT_CR_FAIL_IN_EQ		0x05
-#  define SP_LT_EQ_LOOP_5_TIME		0x06
-#define SP_LT_EN			BIT(0)
-
-/* DP CEP Training Control Registers */
-#define SP_DP_CEP_TRAINING_CTRL0_REG	0xa9
-#define SP_DP_CEP_TRAINING_CTRL1_REG	0xaa
-
-/* DP Debug Register 1 */
-#define SP_DP_DEBUG1_REG		0xb0
-#define SP_DEBUG_PLL_LOCK		BIT(4)
-#define SP_POLLING_EN			BIT(1)
-
-/* DP Polling Control Register */
-#define SP_DP_POLLING_CTRL_REG		0xb4
-#define SP_AUTO_POLLING_DISABLE		BIT(0)
-
-/* DP Link Debug Control Register */
-#define SP_DP_LINK_DEBUG_CTRL_REG	0xb8
-#define SP_M_VID_DEBUG			BIT(5)
-#define SP_NEW_PRBS7			BIT(4)
-#define SP_INSERT_ER			BIT(1)
-#define SP_PRBS31_EN			BIT(0)
-
-/* AUX Misc control Register */
-#define SP_AUX_MISC_CTRL_REG		0xbf
-
-/* DP PLL control Register */
-#define SP_DP_PLL_CTRL_REG		0xc7
-#define SP_PLL_RST			BIT(6)
-
-/* DP Analog Power Down Register */
-#define SP_DP_ANALOG_POWER_DOWN_REG	0xc8
-#define SP_CH0_PD			BIT(0)
-
-/* DP Misc Control Register */
-#define SP_DP_MISC_CTRL_REG		0xcd
-#define SP_EQ_TRAINING_LOOP		BIT(6)
-
-/* DP Extra I2C Device Address Register */
-#define SP_DP_EXTRA_I2C_DEV_ADDR_REG	0xce
-#define SP_I2C_STRETCH_DISABLE		BIT(7)
-
-#define SP_I2C_EXTRA_ADDR		0x50
-
-/* DP Downspread Control Register 1 */
-#define SP_DP_DOWNSPREAD_CTRL1_REG	0xd0
-
-/* DP M Value Calculation Control Register */
-#define SP_DP_M_CALCULATION_CTRL_REG	0xd9
-#define SP_M_GEN_CLK_SEL		BIT(0)
-
-/* AUX Channel Access Status Register */
-#define SP_AUX_CH_STATUS_REG		0xe0
-#define SP_AUX_STATUS			0x0f
-
-/* AUX Channel DEFER Control Register */
-#define SP_AUX_DEFER_CTRL_REG		0xe2
-#define SP_DEFER_CTRL_EN		BIT(7)
-
-/* DP Buffer Data Count Register */
-#define SP_BUF_DATA_COUNT_REG		0xe4
-#define SP_BUF_DATA_COUNT_MASK		0x1f
-#define SP_BUF_CLR			BIT(7)
-
-/* DP AUX Channel Control Register 1 */
-#define SP_DP_AUX_CH_CTRL1_REG		0xe5
-#define SP_AUX_TX_COMM_MASK		0x0f
-#define SP_AUX_LENGTH_MASK		0xf0
-#define SP_AUX_LENGTH_SHIFT		4
-
-/* DP AUX CH Address Register 0 */
-#define SP_AUX_ADDR_7_0_REG		0xe6
-
-/* DP AUX CH Address Register 1 */
-#define SP_AUX_ADDR_15_8_REG		0xe7
-
-/* DP AUX CH Address Register 2 */
-#define SP_AUX_ADDR_19_16_REG		0xe8
-#define SP_AUX_ADDR_19_16_MASK		0x0f
-
-/* DP AUX Channel Control Register 2 */
-#define SP_DP_AUX_CH_CTRL2_REG		0xe9
-#define SP_AUX_SEL_RXCM			BIT(6)
-#define SP_AUX_CHSEL			BIT(3)
-#define SP_AUX_PN_INV			BIT(2)
-#define SP_ADDR_ONLY			BIT(1)
-#define SP_AUX_EN			BIT(0)
-
-/* DP Video Stream Control InfoFrame Register */
-#define SP_DP_3D_VSC_CTRL_REG		0xea
-#define SP_INFO_FRAME_VSC_EN		BIT(0)
-
-/* DP Video Stream Data Byte 1 Register */
-#define SP_DP_VSC_DB1_REG		0xeb
-
-/* DP AUX Channel Control Register 3 */
-#define SP_DP_AUX_CH_CTRL3_REG		0xec
-#define SP_WAIT_COUNTER_7_0_MASK	0xff
-
-/* DP AUX Channel Control Register 4 */
-#define SP_DP_AUX_CH_CTRL4_REG		0xed
-
-/* DP AUX Buffer Data Registers */
-#define SP_DP_BUF_DATA0_REG		0xf0
-
-/***************************************************************/
-/* Register definition of device address 0x72                  */
-/***************************************************************/
-
-/*
- * Core Register Definitions
- */
-
-/* Device ID Low Byte Register */
-#define SP_DEVICE_IDL_REG		0x02
-
-/* Device ID High Byte Register */
-#define SP_DEVICE_IDH_REG		0x03
-
-/* Device version register */
-#define SP_DEVICE_VERSION_REG		0x04
-
-/* Power Down Control Register */
-#define SP_POWERDOWN_CTRL_REG		0x05
-#define SP_REGISTER_PD			BIT(7)
-#define SP_HDCP_PD			BIT(5)
-#define SP_AUDIO_PD			BIT(4)
-#define SP_VIDEO_PD			BIT(3)
-#define SP_LINK_PD			BIT(2)
-#define SP_TOTAL_PD			BIT(1)
-
-/* Reset Control Register 1 */
-#define SP_RESET_CTRL1_REG		0x06
-#define SP_MISC_RST			BIT(7)
-#define SP_VIDCAP_RST			BIT(6)
-#define SP_VIDFIF_RST			BIT(5)
-#define SP_AUDFIF_RST			BIT(4)
-#define SP_AUDCAP_RST			BIT(3)
-#define SP_HDCP_RST			BIT(2)
-#define SP_SW_RST			BIT(1)
-#define SP_HW_RST			BIT(0)
-
-/* Reset Control Register 2 */
-#define SP_RESET_CTRL2_REG		0x07
-#define SP_AUX_RST			BIT(2)
-#define SP_SERDES_FIFO_RST		BIT(1)
-#define SP_I2C_REG_RST			BIT(0)
-
-/* Video Control Register 1 */
-#define SP_VID_CTRL1_REG		0x08
-#define SP_VIDEO_EN			BIT(7)
-#define SP_VIDEO_MUTE			BIT(2)
-#define SP_DE_GEN			BIT(1)
-#define SP_DEMUX			BIT(0)
-
-/* Video Control Register 2 */
-#define SP_VID_CTRL2_REG		0x09
-#define SP_IN_COLOR_F_MASK		0x03
-#define SP_IN_YC_BIT_SEL		BIT(2)
-#define SP_IN_BPC_MASK			0x70
-#define SP_IN_BPC_SHIFT			4
-#  define SP_IN_BPC_12BIT		0x03
-#  define SP_IN_BPC_10BIT		0x02
-#  define SP_IN_BPC_8BIT		0x01
-#  define SP_IN_BPC_6BIT		0x00
-#define SP_IN_D_RANGE			BIT(7)
-
-/* Video Control Register 3 */
-#define SP_VID_CTRL3_REG		0x0a
-#define SP_HPD_OUT			BIT(6)
-
-/* Video Control Register 5 */
-#define SP_VID_CTRL5_REG		0x0c
-#define SP_CSC_STD_SEL			BIT(7)
-#define SP_XVYCC_RNG_LMT		BIT(6)
-#define SP_RANGE_Y2R			BIT(5)
-#define SP_CSPACE_Y2R			BIT(4)
-#define SP_RGB_RNG_LMT			BIT(3)
-#define SP_Y_RNG_LMT			BIT(2)
-#define SP_RANGE_R2Y			BIT(1)
-#define SP_CSPACE_R2Y			BIT(0)
-
-/* Video Control Register 6 */
-#define SP_VID_CTRL6_REG		0x0d
-#define SP_TEST_PATTERN_EN		BIT(7)
-#define SP_VIDEO_PROCESS_EN		BIT(6)
-#define SP_VID_US_MODE			BIT(3)
-#define SP_VID_DS_MODE			BIT(2)
-#define SP_UP_SAMPLE			BIT(1)
-#define SP_DOWN_SAMPLE			BIT(0)
-
-/* Video Control Register 8 */
-#define SP_VID_CTRL8_REG		0x0f
-#define SP_VID_VRES_TH			BIT(0)
-
-/* Total Line Status Low Byte Register */
-#define SP_TOTAL_LINE_STAL_REG		0x24
-
-/* Total Line Status High Byte Register */
-#define SP_TOTAL_LINE_STAH_REG		0x25
-
-/* Active Line Status Low Byte Register */
-#define SP_ACT_LINE_STAL_REG		0x26
-
-/* Active Line Status High Byte Register */
-#define SP_ACT_LINE_STAH_REG		0x27
-
-/* Vertical Front Porch Status Register */
-#define SP_V_F_PORCH_STA_REG		0x28
-
-/* Vertical SYNC Width Status Register */
-#define SP_V_SYNC_STA_REG		0x29
-
-/* Vertical Back Porch Status Register */
-#define SP_V_B_PORCH_STA_REG		0x2a
-
-/* Total Pixel Status Low Byte Register */
-#define SP_TOTAL_PIXEL_STAL_REG		0x2b
-
-/* Total Pixel Status High Byte Register */
-#define SP_TOTAL_PIXEL_STAH_REG		0x2c
-
-/* Active Pixel Status Low Byte Register */
-#define SP_ACT_PIXEL_STAL_REG		0x2d
-
-/* Active Pixel Status High Byte Register */
-#define SP_ACT_PIXEL_STAH_REG		0x2e
-
-/* Horizontal Front Porch Status Low Byte Register */
-#define SP_H_F_PORCH_STAL_REG		0x2f
-
-/* Horizontal Front Porch Statys High Byte Register */
-#define SP_H_F_PORCH_STAH_REG		0x30
-
-/* Horizontal SYNC Width Status Low Byte Register */
-#define SP_H_SYNC_STAL_REG		0x31
-
-/* Horizontal SYNC Width Status High Byte Register */
-#define SP_H_SYNC_STAH_REG		0x32
-
-/* Horizontal Back Porch Status Low Byte Register */
-#define SP_H_B_PORCH_STAL_REG		0x33
-
-/* Horizontal Back Porch Status High Byte Register */
-#define SP_H_B_PORCH_STAH_REG		0x34
-
-/* InfoFrame AVI Packet DB1 Register */
-#define SP_INFOFRAME_AVI_DB1_REG	0x70
-
-/* Bit Control Specific Register */
-#define SP_BIT_CTRL_SPECIFIC_REG	0x80
-#define SP_BIT_CTRL_SELECT_SHIFT	1
-#define SP_ENABLE_BIT_CTRL		BIT(0)
-
-/* InfoFrame Audio Packet DB1 Register */
-#define SP_INFOFRAME_AUD_DB1_REG	0x83
-
-/* InfoFrame MPEG Packet DB1 Register */
-#define SP_INFOFRAME_MPEG_DB1_REG	0xb0
-
-/* Audio Channel Status Registers */
-#define SP_AUD_CH_STATUS_BASE		0xd0
-
-/* Audio Channel Num Register 5 */
-#define SP_I2S_CHANNEL_NUM_MASK		0xe0
-#  define SP_I2S_CH_NUM_1		(0x00 << 5)
-#  define SP_I2S_CH_NUM_2		(0x01 << 5)
-#  define SP_I2S_CH_NUM_3		(0x02 << 5)
-#  define SP_I2S_CH_NUM_4		(0x03 << 5)
-#  define SP_I2S_CH_NUM_5		(0x04 << 5)
-#  define SP_I2S_CH_NUM_6		(0x05 << 5)
-#  define SP_I2S_CH_NUM_7		(0x06 << 5)
-#  define SP_I2S_CH_NUM_8		(0x07 << 5)
-#define SP_EXT_VUCP			BIT(2)
-#define SP_VBIT				BIT(1)
-#define SP_AUDIO_LAYOUT			BIT(0)
-
-/* Analog Debug Register 2 */
-#define SP_ANALOG_DEBUG2_REG		0xdd
-#define SP_FORCE_SW_OFF_BYPASS		0x20
-#define SP_XTAL_FRQ			0x1c
-#  define SP_XTAL_FRQ_19M2		(0x00 << 2)
-#  define SP_XTAL_FRQ_24M		(0x01 << 2)
-#  define SP_XTAL_FRQ_25M		(0x02 << 2)
-#  define SP_XTAL_FRQ_26M		(0x03 << 2)
-#  define SP_XTAL_FRQ_27M		(0x04 << 2)
-#  define SP_XTAL_FRQ_38M4		(0x05 << 2)
-#  define SP_XTAL_FRQ_52M		(0x06 << 2)
-#define SP_POWERON_TIME_1P5MS		0x03
-
-/* Analog Control 0 Register */
-#define SP_ANALOG_CTRL0_REG		0xe1
-
-/* Common Interrupt Status Register 1 */
-#define SP_COMMON_INT_STATUS_BASE	(0xf1 - 1)
-#define SP_PLL_LOCK_CHG			0x40
-
-/* Common Interrupt Status Register 2 */
-#define SP_COMMON_INT_STATUS2		0xf2
-#define SP_HDCP_AUTH_CHG		BIT(1)
-#define SP_HDCP_AUTH_DONE		BIT(0)
-
-#define SP_HDCP_LINK_CHECK_FAIL		BIT(0)
-
-/* Common Interrupt Status Register 4 */
-#define SP_COMMON_INT_STATUS4_REG	0xf4
-#define SP_HPD_IRQ			BIT(6)
-#define SP_HPD_ESYNC_ERR		BIT(4)
-#define SP_HPD_CHG			BIT(2)
-#define SP_HPD_LOST			BIT(1)
-#define SP_HPD_PLUG			BIT(0)
-
-/* DP Interrupt Status Register */
-#define SP_DP_INT_STATUS1_REG		0xf7
-#define SP_TRAINING_FINISH		BIT(5)
-#define SP_POLLING_ERR			BIT(4)
-
-/* Common Interrupt Mask Register */
-#define SP_COMMON_INT_MASK_BASE		(0xf8 - 1)
-
-#define SP_COMMON_INT_MASK4_REG		0xfb
-
-/* DP Interrupts Mask Register */
-#define SP_DP_INT_MASK1_REG		0xfe
-
-/* Interrupt Control Register */
-#define SP_INT_CTRL_REG			0xff
-
-/***************************************************************/
-/* Register definition of device address 0x7a                  */
-/***************************************************************/
-
-/* DP TX Link Training Control Register */
-#define SP_DP_TX_LT_CTRL0_REG		0x30
-
-/* PD 1.2 Lint Training 80bit Pattern Register */
-#define SP_DP_LT_80BIT_PATTERN0_REG	0x80
-#define SP_DP_LT_80BIT_PATTERN_REG_NUM	10
-
-/* Audio Interface Control Register 0 */
-#define SP_AUD_INTERFACE_CTRL0_REG	0x5f
-#define SP_AUD_INTERFACE_DISABLE	0x80
-
-/* Audio Interface Control Register 2 */
-#define SP_AUD_INTERFACE_CTRL2_REG	0x60
-#define SP_M_AUD_ADJUST_ST		0x04
-
-/* Audio Interface Control Register 3 */
-#define SP_AUD_INTERFACE_CTRL3_REG	0x62
-
-/* Audio Interface Control Register 4 */
-#define SP_AUD_INTERFACE_CTRL4_REG	0x67
-
-/* Audio Interface Control Register 5 */
-#define SP_AUD_INTERFACE_CTRL5_REG	0x68
-
-/* Audio Interface Control Register 6 */
-#define SP_AUD_INTERFACE_CTRL6_REG	0x69
-
-/* Firmware Version Register */
-#define SP_FW_VER_REG			0xb7
-
-#endif
diff --git a/drivers/gpu/drm/bridge/analogix/Kconfig b/drivers/gpu/drm/bridge/analogix/Kconfig
index e930ff9..dfe84f5 100644
--- a/drivers/gpu/drm/bridge/analogix/Kconfig
+++ b/drivers/gpu/drm/bridge/analogix/Kconfig
@@ -1,4 +1,14 @@
 # SPDX-License-Identifier: GPL-2.0-only
+config DRM_ANALOGIX_ANX78XX
+	tristate "Analogix ANX78XX bridge"
+	select DRM_KMS_HELPER
+	select REGMAP_I2C
+	---help---
+	  ANX78XX is an ultra-low Full-HD SlimPort transmitter
+	  designed for portable devices. The ANX78XX transforms
+	  the HDMI output of an application processor to MyDP
+	  or DisplayPort.
+
 config DRM_ANALOGIX_DP
 	tristate
 	depends on DRM
diff --git a/drivers/gpu/drm/bridge/analogix/Makefile b/drivers/gpu/drm/bridge/analogix/Makefile
index fdbf3fd..d4c54ac 100644
--- a/drivers/gpu/drm/bridge/analogix/Makefile
+++ b/drivers/gpu/drm/bridge/analogix/Makefile
@@ -1,3 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
+
 analogix_dp-objs := analogix_dp_core.o analogix_dp_reg.o
 obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix_dp.o
diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
new file mode 100644
index 0000000..3c7cc5a
--- /dev/null
+++ b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
@@ -0,0 +1,1485 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright(c) 2016, Analogix Semiconductor.
+ *
+ * Based on anx7808 driver obtained from chromeos with copyright:
+ * Copyright(c) 2013, Google Inc.
+ */
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/gpio/consumer.h>
+#include <linux/i2c.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_irq.h>
+#include <linux/of_platform.h>
+#include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <linux/types.h>
+
+#include <drm/drm_atomic_helper.h>
+#include <drm/drm_crtc.h>
+#include <drm/drm_dp_helper.h>
+#include <drm/drm_edid.h>
+#include <drm/drm_print.h>
+#include <drm/drm_probe_helper.h>
+
+#include "analogix-anx78xx.h"
+
+#define I2C_NUM_ADDRESSES	5
+#define I2C_IDX_TX_P0		0
+#define I2C_IDX_TX_P1		1
+#define I2C_IDX_TX_P2		2
+#define I2C_IDX_RX_P0		3
+#define I2C_IDX_RX_P1		4
+
+#define XTAL_CLK		270 /* 27M */
+#define AUX_CH_BUFFER_SIZE	16
+#define AUX_WAIT_TIMEOUT_MS	15
+
+static const u8 anx78xx_i2c_addresses[] = {
+	[I2C_IDX_TX_P0] = TX_P0,
+	[I2C_IDX_TX_P1] = TX_P1,
+	[I2C_IDX_TX_P2] = TX_P2,
+	[I2C_IDX_RX_P0] = RX_P0,
+	[I2C_IDX_RX_P1] = RX_P1,
+};
+
+struct anx78xx_platform_data {
+	struct regulator *dvdd10;
+	struct gpio_desc *gpiod_hpd;
+	struct gpio_desc *gpiod_pd;
+	struct gpio_desc *gpiod_reset;
+
+	int hpd_irq;
+	int intp_irq;
+};
+
+struct anx78xx {
+	struct drm_dp_aux aux;
+	struct drm_bridge bridge;
+	struct i2c_client *client;
+	struct edid *edid;
+	struct drm_connector connector;
+	struct drm_dp_link link;
+	struct anx78xx_platform_data pdata;
+	struct mutex lock;
+
+	/*
+	 * I2C Slave addresses of ANX7814 are mapped as TX_P0, TX_P1, TX_P2,
+	 * RX_P0 and RX_P1.
+	 */
+	struct i2c_client *i2c_dummy[I2C_NUM_ADDRESSES];
+	struct regmap *map[I2C_NUM_ADDRESSES];
+
+	u16 chipid;
+	u8 dpcd[DP_RECEIVER_CAP_SIZE];
+
+	bool powered;
+};
+
+static inline struct anx78xx *connector_to_anx78xx(struct drm_connector *c)
+{
+	return container_of(c, struct anx78xx, connector);
+}
+
+static inline struct anx78xx *bridge_to_anx78xx(struct drm_bridge *bridge)
+{
+	return container_of(bridge, struct anx78xx, bridge);
+}
+
+static int anx78xx_set_bits(struct regmap *map, u8 reg, u8 mask)
+{
+	return regmap_update_bits(map, reg, mask, mask);
+}
+
+static int anx78xx_clear_bits(struct regmap *map, u8 reg, u8 mask)
+{
+	return regmap_update_bits(map, reg, mask, 0);
+}
+
+static bool anx78xx_aux_op_finished(struct anx78xx *anx78xx)
+{
+	unsigned int value;
+	int err;
+
+	err = regmap_read(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL2_REG,
+			  &value);
+	if (err < 0)
+		return false;
+
+	return (value & SP_AUX_EN) == 0;
+}
+
+static int anx78xx_aux_wait(struct anx78xx *anx78xx)
+{
+	unsigned long timeout;
+	unsigned int status;
+	int err;
+
+	timeout = jiffies + msecs_to_jiffies(AUX_WAIT_TIMEOUT_MS) + 1;
+
+	while (!anx78xx_aux_op_finished(anx78xx)) {
+		if (time_after(jiffies, timeout)) {
+			if (!anx78xx_aux_op_finished(anx78xx)) {
+				DRM_ERROR("Timed out waiting AUX to finish\n");
+				return -ETIMEDOUT;
+			}
+
+			break;
+		}
+
+		usleep_range(1000, 2000);
+	}
+
+	/* Read the AUX channel access status */
+	err = regmap_read(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_CH_STATUS_REG,
+			  &status);
+	if (err < 0) {
+		DRM_ERROR("Failed to read from AUX channel: %d\n", err);
+		return err;
+	}
+
+	if (status & SP_AUX_STATUS) {
+		DRM_ERROR("Failed to wait for AUX channel (status: %02x)\n",
+			  status);
+		return -ETIMEDOUT;
+	}
+
+	return 0;
+}
+
+static int anx78xx_aux_address(struct anx78xx *anx78xx, unsigned int addr)
+{
+	int err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_ADDR_7_0_REG,
+			   addr & 0xff);
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_ADDR_15_8_REG,
+			   (addr & 0xff00) >> 8);
+	if (err)
+		return err;
+
+	/*
+	 * DP AUX CH Address Register #2, only update bits[3:0]
+	 * [7:4] RESERVED
+	 * [3:0] AUX_ADDR[19:16], Register control AUX CH address.
+	 */
+	err = regmap_update_bits(anx78xx->map[I2C_IDX_TX_P0],
+				 SP_AUX_ADDR_19_16_REG,
+				 SP_AUX_ADDR_19_16_MASK,
+				 (addr & 0xf0000) >> 16);
+
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static ssize_t anx78xx_aux_transfer(struct drm_dp_aux *aux,
+				    struct drm_dp_aux_msg *msg)
+{
+	struct anx78xx *anx78xx = container_of(aux, struct anx78xx, aux);
+	u8 ctrl1 = msg->request;
+	u8 ctrl2 = SP_AUX_EN;
+	u8 *buffer = msg->buffer;
+	int err;
+
+	/* The DP AUX transmit and receive buffer has 16 bytes. */
+	if (WARN_ON(msg->size > AUX_CH_BUFFER_SIZE))
+		return -E2BIG;
+
+	/* Zero-sized messages specify address-only transactions. */
+	if (msg->size < 1)
+		ctrl2 |= SP_ADDR_ONLY;
+	else	/* For non-zero-sized set the length field. */
+		ctrl1 |= (msg->size - 1) << SP_AUX_LENGTH_SHIFT;
+
+	if ((msg->request & DP_AUX_I2C_READ) == 0) {
+		/* When WRITE | MOT write values to data buffer */
+		err = regmap_bulk_write(anx78xx->map[I2C_IDX_TX_P0],
+					SP_DP_BUF_DATA0_REG, buffer,
+					msg->size);
+		if (err)
+			return err;
+	}
+
+	/* Write address and request */
+	err = anx78xx_aux_address(anx78xx, msg->address);
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL1_REG,
+			   ctrl1);
+	if (err)
+		return err;
+
+	/* Start transaction */
+	err = regmap_update_bits(anx78xx->map[I2C_IDX_TX_P0],
+				 SP_DP_AUX_CH_CTRL2_REG, SP_ADDR_ONLY |
+				 SP_AUX_EN, ctrl2);
+	if (err)
+		return err;
+
+	err = anx78xx_aux_wait(anx78xx);
+	if (err)
+		return err;
+
+	msg->reply = DP_AUX_I2C_REPLY_ACK;
+
+	if ((msg->size > 0) && (msg->request & DP_AUX_I2C_READ)) {
+		/* Read values from data buffer */
+		err = regmap_bulk_read(anx78xx->map[I2C_IDX_TX_P0],
+				       SP_DP_BUF_DATA0_REG, buffer,
+				       msg->size);
+		if (err)
+			return err;
+	}
+
+	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
+				 SP_DP_AUX_CH_CTRL2_REG, SP_ADDR_ONLY);
+	if (err)
+		return err;
+
+	return msg->size;
+}
+
+static int anx78xx_set_hpd(struct anx78xx *anx78xx)
+{
+	int err;
+
+	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_RX_P0],
+				 SP_TMDS_CTRL_BASE + 7, SP_PD_RT);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL3_REG,
+			       SP_HPD_OUT);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static int anx78xx_clear_hpd(struct anx78xx *anx78xx)
+{
+	int err;
+
+	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL3_REG,
+				 SP_HPD_OUT);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0],
+			       SP_TMDS_CTRL_BASE + 7, SP_PD_RT);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static const struct reg_sequence tmds_phy_initialization[] = {
+	{ SP_TMDS_CTRL_BASE +  1, 0x90 },
+	{ SP_TMDS_CTRL_BASE +  2, 0xa9 },
+	{ SP_TMDS_CTRL_BASE +  6, 0x92 },
+	{ SP_TMDS_CTRL_BASE +  7, 0x80 },
+	{ SP_TMDS_CTRL_BASE + 20, 0xf2 },
+	{ SP_TMDS_CTRL_BASE + 22, 0xc4 },
+	{ SP_TMDS_CTRL_BASE + 23, 0x18 },
+};
+
+static int anx78xx_rx_initialization(struct anx78xx *anx78xx)
+{
+	int err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_RX_P0], SP_HDMI_MUTE_CTRL_REG,
+			   SP_AUD_MUTE | SP_VID_MUTE);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0], SP_CHIP_CTRL_REG,
+			       SP_MAN_HDMI5V_DET | SP_PLLLOCK_CKDT_EN |
+			       SP_DIGITAL_CKDT_EN);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0],
+			       SP_SOFTWARE_RESET1_REG, SP_HDCP_MAN_RST |
+			       SP_SW_MAN_RST | SP_TMDS_RST | SP_VIDEO_RST);
+	if (err)
+		return err;
+
+	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_RX_P0],
+				 SP_SOFTWARE_RESET1_REG, SP_HDCP_MAN_RST |
+				 SP_SW_MAN_RST | SP_TMDS_RST | SP_VIDEO_RST);
+	if (err)
+		return err;
+
+	/* Sync detect change, GP set mute */
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0],
+			       SP_AUD_EXCEPTION_ENABLE_BASE + 1, BIT(5) |
+			       BIT(6));
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0],
+			       SP_AUD_EXCEPTION_ENABLE_BASE + 3,
+			       SP_AEC_EN21);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0], SP_AUDVID_CTRL_REG,
+			       SP_AVC_EN | SP_AAC_OE | SP_AAC_EN);
+	if (err)
+		return err;
+
+	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_RX_P0],
+				 SP_SYSTEM_POWER_DOWN1_REG, SP_PWDN_CTRL);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_RX_P0],
+			       SP_VID_DATA_RANGE_CTRL_REG, SP_R2Y_INPUT_LIMIT);
+	if (err)
+		return err;
+
+	/* Enable DDC stretch */
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
+			   SP_DP_EXTRA_I2C_DEV_ADDR_REG, SP_I2C_EXTRA_ADDR);
+	if (err)
+		return err;
+
+	/* TMDS phy initialization */
+	err = regmap_multi_reg_write(anx78xx->map[I2C_IDX_RX_P0],
+				     tmds_phy_initialization,
+				     ARRAY_SIZE(tmds_phy_initialization));
+	if (err)
+		return err;
+
+	err = anx78xx_clear_hpd(anx78xx);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static const u8 dp_tx_output_precise_tune_bits[20] = {
+	0x01, 0x03, 0x07, 0x7f, 0x71, 0x6b, 0x7f,
+	0x73, 0x7f, 0x7f, 0x00, 0x00, 0x00, 0x00,
+	0x0c, 0x42, 0x1e, 0x3e, 0x72, 0x7e,
+};
+
+static int anx78xx_link_phy_initialization(struct anx78xx *anx78xx)
+{
+	int err;
+
+	/*
+	 * REVISIT : It is writing to a RESERVED bits in Analog Control 0
+	 * register.
+	 */
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2], SP_ANALOG_CTRL0_REG,
+			   0x02);
+	if (err)
+		return err;
+
+	/*
+	 * Write DP TX output emphasis precise tune bits.
+	 */
+	err = regmap_bulk_write(anx78xx->map[I2C_IDX_TX_P1],
+				SP_DP_TX_LT_CTRL0_REG,
+				dp_tx_output_precise_tune_bits,
+				ARRAY_SIZE(dp_tx_output_precise_tune_bits));
+
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static int anx78xx_xtal_clk_sel(struct anx78xx *anx78xx)
+{
+	unsigned int value;
+	int err;
+
+	err = regmap_update_bits(anx78xx->map[I2C_IDX_TX_P2],
+				 SP_ANALOG_DEBUG2_REG,
+				 SP_XTAL_FRQ | SP_FORCE_SW_OFF_BYPASS,
+				 SP_XTAL_FRQ_27M);
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL3_REG,
+			   XTAL_CLK & SP_WAIT_COUNTER_7_0_MASK);
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL4_REG,
+			   ((XTAL_CLK & 0xff00) >> 2) | (XTAL_CLK / 10));
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
+			   SP_I2C_GEN_10US_TIMER0_REG, XTAL_CLK & 0xff);
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
+			   SP_I2C_GEN_10US_TIMER1_REG,
+			   (XTAL_CLK & 0xff00) >> 8);
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_MISC_CTRL_REG,
+			   XTAL_CLK / 10 - 1);
+	if (err)
+		return err;
+
+	err = regmap_read(anx78xx->map[I2C_IDX_RX_P0],
+			  SP_HDMI_US_TIMER_CTRL_REG,
+			  &value);
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_RX_P0],
+			   SP_HDMI_US_TIMER_CTRL_REG,
+			   (value & SP_MS_TIMER_MARGIN_10_8_MASK) |
+			   ((((XTAL_CLK / 10) >> 1) - 2) << 3));
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static const struct reg_sequence otp_key_protect[] = {
+	{ SP_OTP_KEY_PROTECT1_REG, SP_OTP_PSW1 },
+	{ SP_OTP_KEY_PROTECT2_REG, SP_OTP_PSW2 },
+	{ SP_OTP_KEY_PROTECT3_REG, SP_OTP_PSW3 },
+};
+
+static int anx78xx_tx_initialization(struct anx78xx *anx78xx)
+{
+	int err;
+
+	/* Set terminal resistor to 50 ohm */
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_AUX_CH_CTRL2_REG,
+			   0x30);
+	if (err)
+		return err;
+
+	/* Enable aux double diff output */
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
+			       SP_DP_AUX_CH_CTRL2_REG, 0x08);
+	if (err)
+		return err;
+
+	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
+				 SP_DP_HDCP_CTRL_REG, SP_AUTO_EN |
+				 SP_AUTO_START);
+	if (err)
+		return err;
+
+	err = regmap_multi_reg_write(anx78xx->map[I2C_IDX_TX_P0],
+				     otp_key_protect,
+				     ARRAY_SIZE(otp_key_protect));
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
+			       SP_HDCP_KEY_COMMAND_REG, SP_DISABLE_SYNC_HDCP);
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL8_REG,
+			   SP_VID_VRES_TH);
+	if (err)
+		return err;
+
+	/*
+	 * DP HDCP auto authentication wait timer (when downstream starts to
+	 * auth, DP side will wait for this period then do auth automatically)
+	 */
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_HDCP_AUTO_TIMER_REG,
+			   0x00);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
+			       SP_DP_HDCP_CTRL_REG, SP_LINK_POLLING);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
+			       SP_DP_LINK_DEBUG_CTRL_REG, SP_M_VID_DEBUG);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2],
+			       SP_ANALOG_DEBUG2_REG, SP_POWERON_TIME_1P5MS);
+	if (err)
+		return err;
+
+	err = anx78xx_xtal_clk_sel(anx78xx);
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_AUX_DEFER_CTRL_REG,
+			   SP_DEFER_CTRL_EN | 0x0c);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
+			       SP_DP_POLLING_CTRL_REG,
+			       SP_AUTO_POLLING_DISABLE);
+	if (err)
+		return err;
+
+	/*
+	 * Short the link integrity check timer to speed up bstatus
+	 * polling for HDCP CTS item 1A-07
+	 */
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
+			   SP_HDCP_LINK_CHECK_TIMER_REG, 0x1d);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
+			       SP_DP_MISC_CTRL_REG, SP_EQ_TRAINING_LOOP);
+	if (err)
+		return err;
+
+	/* Power down the main link by default */
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
+			       SP_DP_ANALOG_POWER_DOWN_REG, SP_CH0_PD);
+	if (err)
+		return err;
+
+	err = anx78xx_link_phy_initialization(anx78xx);
+	if (err)
+		return err;
+
+	/* Gen m_clk with downspreading */
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
+			       SP_DP_M_CALCULATION_CTRL_REG, SP_M_GEN_CLK_SEL);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static int anx78xx_enable_interrupts(struct anx78xx *anx78xx)
+{
+	int err;
+
+	/*
+	 * BIT0: INT pin assertion polarity: 1 = assert high
+	 * BIT1: INT pin output type: 0 = push/pull
+	 */
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2], SP_INT_CTRL_REG, 0x01);
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2],
+			   SP_COMMON_INT_MASK4_REG, SP_HPD_LOST | SP_HPD_PLUG);
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2], SP_DP_INT_MASK1_REG,
+			   SP_TRAINING_FINISH);
+	if (err)
+		return err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_RX_P0], SP_INT_MASK1_REG,
+			   SP_CKDT_CHG | SP_SCDT_CHG);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static void anx78xx_poweron(struct anx78xx *anx78xx)
+{
+	struct anx78xx_platform_data *pdata = &anx78xx->pdata;
+	int err;
+
+	if (WARN_ON(anx78xx->powered))
+		return;
+
+	if (pdata->dvdd10) {
+		err = regulator_enable(pdata->dvdd10);
+		if (err) {
+			DRM_ERROR("Failed to enable DVDD10 regulator: %d\n",
+				  err);
+			return;
+		}
+
+		usleep_range(1000, 2000);
+	}
+
+	gpiod_set_value_cansleep(pdata->gpiod_reset, 1);
+	usleep_range(1000, 2000);
+
+	gpiod_set_value_cansleep(pdata->gpiod_pd, 0);
+	usleep_range(1000, 2000);
+
+	gpiod_set_value_cansleep(pdata->gpiod_reset, 0);
+
+	/* Power on registers module */
+	anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_POWERDOWN_CTRL_REG,
+			 SP_HDCP_PD | SP_AUDIO_PD | SP_VIDEO_PD | SP_LINK_PD);
+	anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2], SP_POWERDOWN_CTRL_REG,
+			   SP_REGISTER_PD | SP_TOTAL_PD);
+
+	anx78xx->powered = true;
+}
+
+static void anx78xx_poweroff(struct anx78xx *anx78xx)
+{
+	struct anx78xx_platform_data *pdata = &anx78xx->pdata;
+	int err;
+
+	if (WARN_ON(!anx78xx->powered))
+		return;
+
+	gpiod_set_value_cansleep(pdata->gpiod_reset, 1);
+	usleep_range(1000, 2000);
+
+	gpiod_set_value_cansleep(pdata->gpiod_pd, 1);
+	usleep_range(1000, 2000);
+
+	if (pdata->dvdd10) {
+		err = regulator_disable(pdata->dvdd10);
+		if (err) {
+			DRM_ERROR("Failed to disable DVDD10 regulator: %d\n",
+				  err);
+			return;
+		}
+
+		usleep_range(1000, 2000);
+	}
+
+	anx78xx->powered = false;
+}
+
+static int anx78xx_start(struct anx78xx *anx78xx)
+{
+	int err;
+
+	/* Power on all modules */
+	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2],
+				 SP_POWERDOWN_CTRL_REG,
+				 SP_HDCP_PD | SP_AUDIO_PD | SP_VIDEO_PD |
+				 SP_LINK_PD);
+
+	err = anx78xx_enable_interrupts(anx78xx);
+	if (err) {
+		DRM_ERROR("Failed to enable interrupts: %d\n", err);
+		goto err_poweroff;
+	}
+
+	err = anx78xx_rx_initialization(anx78xx);
+	if (err) {
+		DRM_ERROR("Failed receiver initialization: %d\n", err);
+		goto err_poweroff;
+	}
+
+	err = anx78xx_tx_initialization(anx78xx);
+	if (err) {
+		DRM_ERROR("Failed transmitter initialization: %d\n", err);
+		goto err_poweroff;
+	}
+
+	/*
+	 * This delay seems to help keep the hardware in a good state. Without
+	 * it, there are times where it fails silently.
+	 */
+	usleep_range(10000, 15000);
+
+	return 0;
+
+err_poweroff:
+	DRM_ERROR("Failed SlimPort transmitter initialization: %d\n", err);
+	anx78xx_poweroff(anx78xx);
+
+	return err;
+}
+
+static int anx78xx_init_pdata(struct anx78xx *anx78xx)
+{
+	struct anx78xx_platform_data *pdata = &anx78xx->pdata;
+	struct device *dev = &anx78xx->client->dev;
+
+	/* 1.0V digital core power regulator  */
+	pdata->dvdd10 = devm_regulator_get(dev, "dvdd10");
+	if (IS_ERR(pdata->dvdd10)) {
+		DRM_ERROR("DVDD10 regulator not found\n");
+		return PTR_ERR(pdata->dvdd10);
+	}
+
+	/* GPIO for HPD */
+	pdata->gpiod_hpd = devm_gpiod_get(dev, "hpd", GPIOD_IN);
+	if (IS_ERR(pdata->gpiod_hpd))
+		return PTR_ERR(pdata->gpiod_hpd);
+
+	/* GPIO for chip power down */
+	pdata->gpiod_pd = devm_gpiod_get(dev, "pd", GPIOD_OUT_HIGH);
+	if (IS_ERR(pdata->gpiod_pd))
+		return PTR_ERR(pdata->gpiod_pd);
+
+	/* GPIO for chip reset */
+	pdata->gpiod_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
+
+	return PTR_ERR_OR_ZERO(pdata->gpiod_reset);
+}
+
+static int anx78xx_dp_link_training(struct anx78xx *anx78xx)
+{
+	u8 dp_bw, value;
+	int err;
+
+	err = regmap_write(anx78xx->map[I2C_IDX_RX_P0], SP_HDMI_MUTE_CTRL_REG,
+			   0x0);
+	if (err)
+		return err;
+
+	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2],
+				 SP_POWERDOWN_CTRL_REG,
+				 SP_TOTAL_PD);
+	if (err)
+		return err;
+
+	err = drm_dp_dpcd_readb(&anx78xx->aux, DP_MAX_LINK_RATE, &dp_bw);
+	if (err < 0)
+		return err;
+
+	switch (dp_bw) {
+	case DP_LINK_BW_1_62:
+	case DP_LINK_BW_2_7:
+	case DP_LINK_BW_5_4:
+		break;
+
+	default:
+		DRM_DEBUG_KMS("DP bandwidth (%#02x) not supported\n", dp_bw);
+		return -EINVAL;
+	}
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL1_REG,
+			       SP_VIDEO_MUTE);
+	if (err)
+		return err;
+
+	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2],
+				 SP_VID_CTRL1_REG, SP_VIDEO_EN);
+	if (err)
+		return err;
+
+	/* Get DPCD info */
+	err = drm_dp_dpcd_read(&anx78xx->aux, DP_DPCD_REV,
+			       &anx78xx->dpcd, DP_RECEIVER_CAP_SIZE);
+	if (err < 0) {
+		DRM_ERROR("Failed to read DPCD: %d\n", err);
+		return err;
+	}
+
+	/* Clear channel x SERDES power down */
+	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
+				 SP_DP_ANALOG_POWER_DOWN_REG, SP_CH0_PD);
+	if (err)
+		return err;
+
+	/* Check link capabilities */
+	err = drm_dp_link_probe(&anx78xx->aux, &anx78xx->link);
+	if (err < 0) {
+		DRM_ERROR("Failed to probe link capabilities: %d\n", err);
+		return err;
+	}
+
+	/* Power up the sink */
+	err = drm_dp_link_power_up(&anx78xx->aux, &anx78xx->link);
+	if (err < 0) {
+		DRM_ERROR("Failed to power up DisplayPort link: %d\n", err);
+		return err;
+	}
+
+	/* Possibly enable downspread on the sink */
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
+			   SP_DP_DOWNSPREAD_CTRL1_REG, 0);
+	if (err)
+		return err;
+
+	if (anx78xx->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5) {
+		DRM_DEBUG("Enable downspread on the sink\n");
+		/* 4000PPM */
+		err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
+				   SP_DP_DOWNSPREAD_CTRL1_REG, 8);
+		if (err)
+			return err;
+
+		err = drm_dp_dpcd_writeb(&anx78xx->aux, DP_DOWNSPREAD_CTRL,
+					 DP_SPREAD_AMP_0_5);
+		if (err < 0)
+			return err;
+	} else {
+		err = drm_dp_dpcd_writeb(&anx78xx->aux, DP_DOWNSPREAD_CTRL, 0);
+		if (err < 0)
+			return err;
+	}
+
+	/* Set the lane count and the link rate on the sink */
+	if (drm_dp_enhanced_frame_cap(anx78xx->dpcd))
+		err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
+				       SP_DP_SYSTEM_CTRL_BASE + 4,
+				       SP_ENHANCED_MODE);
+	else
+		err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
+					 SP_DP_SYSTEM_CTRL_BASE + 4,
+					 SP_ENHANCED_MODE);
+	if (err)
+		return err;
+
+	value = drm_dp_link_rate_to_bw_code(anx78xx->link.rate);
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
+			   SP_DP_MAIN_LINK_BW_SET_REG, value);
+	if (err)
+		return err;
+
+	err = drm_dp_link_configure(&anx78xx->aux, &anx78xx->link);
+	if (err < 0) {
+		DRM_ERROR("Failed to configure DisplayPort link: %d\n", err);
+		return err;
+	}
+
+	/* Start training on the source */
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0], SP_DP_LT_CTRL_REG,
+			   SP_LT_EN);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static int anx78xx_config_dp_output(struct anx78xx *anx78xx)
+{
+	int err;
+
+	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL1_REG,
+				 SP_VIDEO_MUTE);
+	if (err)
+		return err;
+
+	/* Enable DP output */
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_VID_CTRL1_REG,
+			       SP_VIDEO_EN);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static int anx78xx_send_video_infoframe(struct anx78xx *anx78xx,
+					struct hdmi_avi_infoframe *frame)
+{
+	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE];
+	int err;
+
+	err = hdmi_avi_infoframe_pack(frame, buffer, sizeof(buffer));
+	if (err < 0) {
+		DRM_ERROR("Failed to pack AVI infoframe: %d\n", err);
+		return err;
+	}
+
+	err = anx78xx_clear_bits(anx78xx->map[I2C_IDX_TX_P0],
+				 SP_PACKET_SEND_CTRL_REG, SP_AVI_IF_EN);
+	if (err)
+		return err;
+
+	err = regmap_bulk_write(anx78xx->map[I2C_IDX_TX_P2],
+				SP_INFOFRAME_AVI_DB1_REG, buffer,
+				frame->length);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
+			       SP_PACKET_SEND_CTRL_REG, SP_AVI_IF_UD);
+	if (err)
+		return err;
+
+	err = anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P0],
+			       SP_PACKET_SEND_CTRL_REG, SP_AVI_IF_EN);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static int anx78xx_get_downstream_info(struct anx78xx *anx78xx)
+{
+	u8 value;
+	int err;
+
+	err = drm_dp_dpcd_readb(&anx78xx->aux, DP_SINK_COUNT, &value);
+	if (err < 0) {
+		DRM_ERROR("Get sink count failed %d\n", err);
+		return err;
+	}
+
+	if (!DP_GET_SINK_COUNT(value)) {
+		DRM_ERROR("Downstream disconnected\n");
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int anx78xx_get_modes(struct drm_connector *connector)
+{
+	struct anx78xx *anx78xx = connector_to_anx78xx(connector);
+	int err, num_modes = 0;
+
+	if (WARN_ON(!anx78xx->powered))
+		return 0;
+
+	if (anx78xx->edid)
+		return drm_add_edid_modes(connector, anx78xx->edid);
+
+	mutex_lock(&anx78xx->lock);
+
+	err = anx78xx_get_downstream_info(anx78xx);
+	if (err) {
+		DRM_ERROR("Failed to get downstream info: %d\n", err);
+		goto unlock;
+	}
+
+	anx78xx->edid = drm_get_edid(connector, &anx78xx->aux.ddc);
+	if (!anx78xx->edid) {
+		DRM_ERROR("Failed to read EDID\n");
+		goto unlock;
+	}
+
+	err = drm_connector_update_edid_property(connector,
+						 anx78xx->edid);
+	if (err) {
+		DRM_ERROR("Failed to update EDID property: %d\n", err);
+		goto unlock;
+	}
+
+	num_modes = drm_add_edid_modes(connector, anx78xx->edid);
+
+unlock:
+	mutex_unlock(&anx78xx->lock);
+
+	return num_modes;
+}
+
+static const struct drm_connector_helper_funcs anx78xx_connector_helper_funcs = {
+	.get_modes = anx78xx_get_modes,
+};
+
+static enum drm_connector_status anx78xx_detect(struct drm_connector *connector,
+						bool force)
+{
+	struct anx78xx *anx78xx = connector_to_anx78xx(connector);
+
+	if (!gpiod_get_value(anx78xx->pdata.gpiod_hpd))
+		return connector_status_disconnected;
+
+	return connector_status_connected;
+}
+
+static const struct drm_connector_funcs anx78xx_connector_funcs = {
+	.fill_modes = drm_helper_probe_single_connector_modes,
+	.detect = anx78xx_detect,
+	.destroy = drm_connector_cleanup,
+	.reset = drm_atomic_helper_connector_reset,
+	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
+	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+};
+
+static int anx78xx_bridge_attach(struct drm_bridge *bridge)
+{
+	struct anx78xx *anx78xx = bridge_to_anx78xx(bridge);
+	int err;
+
+	if (!bridge->encoder) {
+		DRM_ERROR("Parent encoder object not found");
+		return -ENODEV;
+	}
+
+	/* Register aux channel */
+	anx78xx->aux.name = "DP-AUX";
+	anx78xx->aux.dev = &anx78xx->client->dev;
+	anx78xx->aux.transfer = anx78xx_aux_transfer;
+
+	err = drm_dp_aux_register(&anx78xx->aux);
+	if (err < 0) {
+		DRM_ERROR("Failed to register aux channel: %d\n", err);
+		return err;
+	}
+
+	err = drm_connector_init(bridge->dev, &anx78xx->connector,
+				 &anx78xx_connector_funcs,
+				 DRM_MODE_CONNECTOR_DisplayPort);
+	if (err) {
+		DRM_ERROR("Failed to initialize connector: %d\n", err);
+		return err;
+	}
+
+	drm_connector_helper_add(&anx78xx->connector,
+				 &anx78xx_connector_helper_funcs);
+
+	err = drm_connector_register(&anx78xx->connector);
+	if (err) {
+		DRM_ERROR("Failed to register connector: %d\n", err);
+		return err;
+	}
+
+	anx78xx->connector.polled = DRM_CONNECTOR_POLL_HPD;
+
+	err = drm_connector_attach_encoder(&anx78xx->connector,
+					   bridge->encoder);
+	if (err) {
+		DRM_ERROR("Failed to link up connector to encoder: %d\n", err);
+		return err;
+	}
+
+	return 0;
+}
+
+static enum drm_mode_status
+anx78xx_bridge_mode_valid(struct drm_bridge *bridge,
+			  const struct drm_display_mode *mode)
+{
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		return MODE_NO_INTERLACE;
+
+	/* Max 1200p at 5.4 Ghz, one lane */
+	if (mode->clock > 154000)
+		return MODE_CLOCK_HIGH;
+
+	return MODE_OK;
+}
+
+static void anx78xx_bridge_disable(struct drm_bridge *bridge)
+{
+	struct anx78xx *anx78xx = bridge_to_anx78xx(bridge);
+
+	/* Power off all modules except configuration registers access */
+	anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_POWERDOWN_CTRL_REG,
+			 SP_HDCP_PD | SP_AUDIO_PD | SP_VIDEO_PD | SP_LINK_PD);
+}
+
+static void anx78xx_bridge_mode_set(struct drm_bridge *bridge,
+				const struct drm_display_mode *mode,
+				const struct drm_display_mode *adjusted_mode)
+{
+	struct anx78xx *anx78xx = bridge_to_anx78xx(bridge);
+	struct hdmi_avi_infoframe frame;
+	int err;
+
+	if (WARN_ON(!anx78xx->powered))
+		return;
+
+	mutex_lock(&anx78xx->lock);
+
+	err = drm_hdmi_avi_infoframe_from_display_mode(&frame,
+						       &anx78xx->connector,
+						       adjusted_mode);
+	if (err) {
+		DRM_ERROR("Failed to setup AVI infoframe: %d\n", err);
+		goto unlock;
+	}
+
+	err = anx78xx_send_video_infoframe(anx78xx, &frame);
+	if (err)
+		DRM_ERROR("Failed to send AVI infoframe: %d\n", err);
+
+unlock:
+	mutex_unlock(&anx78xx->lock);
+}
+
+static void anx78xx_bridge_enable(struct drm_bridge *bridge)
+{
+	struct anx78xx *anx78xx = bridge_to_anx78xx(bridge);
+	int err;
+
+	err = anx78xx_start(anx78xx);
+	if (err) {
+		DRM_ERROR("Failed to initialize: %d\n", err);
+		return;
+	}
+
+	err = anx78xx_set_hpd(anx78xx);
+	if (err)
+		DRM_ERROR("Failed to set HPD: %d\n", err);
+}
+
+static const struct drm_bridge_funcs anx78xx_bridge_funcs = {
+	.attach = anx78xx_bridge_attach,
+	.mode_valid = anx78xx_bridge_mode_valid,
+	.disable = anx78xx_bridge_disable,
+	.mode_set = anx78xx_bridge_mode_set,
+	.enable = anx78xx_bridge_enable,
+};
+
+static irqreturn_t anx78xx_hpd_threaded_handler(int irq, void *data)
+{
+	struct anx78xx *anx78xx = data;
+	int err;
+
+	if (anx78xx->powered)
+		return IRQ_HANDLED;
+
+	mutex_lock(&anx78xx->lock);
+
+	/* Cable is pulled, power on the chip */
+	anx78xx_poweron(anx78xx);
+
+	err = anx78xx_enable_interrupts(anx78xx);
+	if (err)
+		DRM_ERROR("Failed to enable interrupts: %d\n", err);
+
+	mutex_unlock(&anx78xx->lock);
+
+	return IRQ_HANDLED;
+}
+
+static int anx78xx_handle_dp_int_1(struct anx78xx *anx78xx, u8 irq)
+{
+	int err;
+
+	DRM_DEBUG_KMS("Handle DP interrupt 1: %02x\n", irq);
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2], SP_DP_INT_STATUS1_REG,
+			   irq);
+	if (err)
+		return err;
+
+	if (irq & SP_TRAINING_FINISH) {
+		DRM_DEBUG_KMS("IRQ: hardware link training finished\n");
+		err = anx78xx_config_dp_output(anx78xx);
+	}
+
+	return err;
+}
+
+static bool anx78xx_handle_common_int_4(struct anx78xx *anx78xx, u8 irq)
+{
+	bool event = false;
+	int err;
+
+	DRM_DEBUG_KMS("Handle common interrupt 4: %02x\n", irq);
+
+	err = regmap_write(anx78xx->map[I2C_IDX_TX_P2],
+			   SP_COMMON_INT_STATUS4_REG, irq);
+	if (err) {
+		DRM_ERROR("Failed to write SP_COMMON_INT_STATUS4 %d\n", err);
+		return event;
+	}
+
+	if (irq & SP_HPD_LOST) {
+		DRM_DEBUG_KMS("IRQ: Hot plug detect - cable is pulled out\n");
+		event = true;
+		anx78xx_poweroff(anx78xx);
+		/* Free cached EDID */
+		kfree(anx78xx->edid);
+		anx78xx->edid = NULL;
+	} else if (irq & SP_HPD_PLUG) {
+		DRM_DEBUG_KMS("IRQ: Hot plug detect - cable plug\n");
+		event = true;
+	}
+
+	return event;
+}
+
+static void anx78xx_handle_hdmi_int_1(struct anx78xx *anx78xx, u8 irq)
+{
+	unsigned int value;
+	int err;
+
+	DRM_DEBUG_KMS("Handle HDMI interrupt 1: %02x\n", irq);
+
+	err = regmap_write(anx78xx->map[I2C_IDX_RX_P0], SP_INT_STATUS1_REG,
+			   irq);
+	if (err) {
+		DRM_ERROR("Write HDMI int 1 failed: %d\n", err);
+		return;
+	}
+
+	if ((irq & SP_CKDT_CHG) || (irq & SP_SCDT_CHG)) {
+		DRM_DEBUG_KMS("IRQ: HDMI input detected\n");
+
+		err = regmap_read(anx78xx->map[I2C_IDX_RX_P0],
+				  SP_SYSTEM_STATUS_REG, &value);
+		if (err) {
+			DRM_ERROR("Read system status reg failed: %d\n", err);
+			return;
+		}
+
+		if (!(value & SP_TMDS_CLOCK_DET)) {
+			DRM_DEBUG_KMS("IRQ: *** Waiting for HDMI clock ***\n");
+			return;
+		}
+
+		if (!(value & SP_TMDS_DE_DET)) {
+			DRM_DEBUG_KMS("IRQ: *** Waiting for HDMI signal ***\n");
+			return;
+		}
+
+		err = anx78xx_dp_link_training(anx78xx);
+		if (err)
+			DRM_ERROR("Failed to start link training: %d\n", err);
+	}
+}
+
+static irqreturn_t anx78xx_intp_threaded_handler(int unused, void *data)
+{
+	struct anx78xx *anx78xx = data;
+	bool event = false;
+	unsigned int irq;
+	int err;
+
+	mutex_lock(&anx78xx->lock);
+
+	err = regmap_read(anx78xx->map[I2C_IDX_TX_P2], SP_DP_INT_STATUS1_REG,
+			  &irq);
+	if (err) {
+		DRM_ERROR("Failed to read DP interrupt 1 status: %d\n", err);
+		goto unlock;
+	}
+
+	if (irq)
+		anx78xx_handle_dp_int_1(anx78xx, irq);
+
+	err = regmap_read(anx78xx->map[I2C_IDX_TX_P2],
+			  SP_COMMON_INT_STATUS4_REG, &irq);
+	if (err) {
+		DRM_ERROR("Failed to read common interrupt 4 status: %d\n",
+			  err);
+		goto unlock;
+	}
+
+	if (irq)
+		event = anx78xx_handle_common_int_4(anx78xx, irq);
+
+	/* Make sure we are still powered after handle HPD events */
+	if (!anx78xx->powered)
+		goto unlock;
+
+	err = regmap_read(anx78xx->map[I2C_IDX_RX_P0], SP_INT_STATUS1_REG,
+			  &irq);
+	if (err) {
+		DRM_ERROR("Failed to read HDMI int 1 status: %d\n", err);
+		goto unlock;
+	}
+
+	if (irq)
+		anx78xx_handle_hdmi_int_1(anx78xx, irq);
+
+unlock:
+	mutex_unlock(&anx78xx->lock);
+
+	if (event)
+		drm_helper_hpd_irq_event(anx78xx->connector.dev);
+
+	return IRQ_HANDLED;
+}
+
+static void unregister_i2c_dummy_clients(struct anx78xx *anx78xx)
+{
+	unsigned int i;
+
+	for (i = 0; i < ARRAY_SIZE(anx78xx->i2c_dummy); i++)
+		i2c_unregister_device(anx78xx->i2c_dummy[i]);
+}
+
+static const struct regmap_config anx78xx_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+};
+
+static const u16 anx78xx_chipid_list[] = {
+	0x7812,
+	0x7814,
+	0x7818,
+};
+
+static int anx78xx_i2c_probe(struct i2c_client *client,
+			     const struct i2c_device_id *id)
+{
+	struct anx78xx *anx78xx;
+	struct anx78xx_platform_data *pdata;
+	unsigned int i, idl, idh, version;
+	bool found = false;
+	int err;
+
+	anx78xx = devm_kzalloc(&client->dev, sizeof(*anx78xx), GFP_KERNEL);
+	if (!anx78xx)
+		return -ENOMEM;
+
+	pdata = &anx78xx->pdata;
+
+	mutex_init(&anx78xx->lock);
+
+#if IS_ENABLED(CONFIG_OF)
+	anx78xx->bridge.of_node = client->dev.of_node;
+#endif
+
+	anx78xx->client = client;
+	i2c_set_clientdata(client, anx78xx);
+
+	err = anx78xx_init_pdata(anx78xx);
+	if (err) {
+		DRM_ERROR("Failed to initialize pdata: %d\n", err);
+		return err;
+	}
+
+	pdata->hpd_irq = gpiod_to_irq(pdata->gpiod_hpd);
+	if (pdata->hpd_irq < 0) {
+		DRM_ERROR("Failed to get HPD IRQ: %d\n", pdata->hpd_irq);
+		return -ENODEV;
+	}
+
+	pdata->intp_irq = client->irq;
+	if (!pdata->intp_irq) {
+		DRM_ERROR("Failed to get CABLE_DET and INTP IRQ\n");
+		return -ENODEV;
+	}
+
+	/* Map slave addresses of ANX7814 */
+	for (i = 0; i < I2C_NUM_ADDRESSES; i++) {
+		anx78xx->i2c_dummy[i] = i2c_new_dummy(client->adapter,
+						anx78xx_i2c_addresses[i] >> 1);
+		if (!anx78xx->i2c_dummy[i]) {
+			err = -ENOMEM;
+			DRM_ERROR("Failed to reserve I2C bus %02x\n",
+				  anx78xx_i2c_addresses[i]);
+			goto err_unregister_i2c;
+		}
+
+		anx78xx->map[i] = devm_regmap_init_i2c(anx78xx->i2c_dummy[i],
+						       &anx78xx_regmap_config);
+		if (IS_ERR(anx78xx->map[i])) {
+			err = PTR_ERR(anx78xx->map[i]);
+			DRM_ERROR("Failed regmap initialization %02x\n",
+				  anx78xx_i2c_addresses[i]);
+			goto err_unregister_i2c;
+		}
+	}
+
+	/* Look for supported chip ID */
+	anx78xx_poweron(anx78xx);
+
+	err = regmap_read(anx78xx->map[I2C_IDX_TX_P2], SP_DEVICE_IDL_REG,
+			  &idl);
+	if (err)
+		goto err_poweroff;
+
+	err = regmap_read(anx78xx->map[I2C_IDX_TX_P2], SP_DEVICE_IDH_REG,
+			  &idh);
+	if (err)
+		goto err_poweroff;
+
+	anx78xx->chipid = (u8)idl | ((u8)idh << 8);
+
+	err = regmap_read(anx78xx->map[I2C_IDX_TX_P2], SP_DEVICE_VERSION_REG,
+			  &version);
+	if (err)
+		goto err_poweroff;
+
+	for (i = 0; i < ARRAY_SIZE(anx78xx_chipid_list); i++) {
+		if (anx78xx->chipid == anx78xx_chipid_list[i]) {
+			DRM_INFO("Found ANX%x (ver. %d) SlimPort Transmitter\n",
+				 anx78xx->chipid, version);
+			found = true;
+			break;
+		}
+	}
+
+	if (!found) {
+		DRM_ERROR("ANX%x (ver. %d) not supported by this driver\n",
+			  anx78xx->chipid, version);
+		err = -ENODEV;
+		goto err_poweroff;
+	}
+
+	err = devm_request_threaded_irq(&client->dev, pdata->hpd_irq, NULL,
+					anx78xx_hpd_threaded_handler,
+					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
+					"anx78xx-hpd", anx78xx);
+	if (err) {
+		DRM_ERROR("Failed to request CABLE_DET threaded IRQ: %d\n",
+			  err);
+		goto err_poweroff;
+	}
+
+	err = devm_request_threaded_irq(&client->dev, pdata->intp_irq, NULL,
+					anx78xx_intp_threaded_handler,
+					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
+					"anx78xx-intp", anx78xx);
+	if (err) {
+		DRM_ERROR("Failed to request INTP threaded IRQ: %d\n", err);
+		goto err_poweroff;
+	}
+
+	anx78xx->bridge.funcs = &anx78xx_bridge_funcs;
+
+	drm_bridge_add(&anx78xx->bridge);
+
+	/* If cable is pulled out, just poweroff and wait for HPD event */
+	if (!gpiod_get_value(anx78xx->pdata.gpiod_hpd))
+		anx78xx_poweroff(anx78xx);
+
+	return 0;
+
+err_poweroff:
+	anx78xx_poweroff(anx78xx);
+
+err_unregister_i2c:
+	unregister_i2c_dummy_clients(anx78xx);
+	return err;
+}
+
+static int anx78xx_i2c_remove(struct i2c_client *client)
+{
+	struct anx78xx *anx78xx = i2c_get_clientdata(client);
+
+	drm_bridge_remove(&anx78xx->bridge);
+
+	unregister_i2c_dummy_clients(anx78xx);
+
+	kfree(anx78xx->edid);
+
+	return 0;
+}
+
+static const struct i2c_device_id anx78xx_id[] = {
+	{ "anx7814", 0 },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(i2c, anx78xx_id);
+
+#if IS_ENABLED(CONFIG_OF)
+static const struct of_device_id anx78xx_match_table[] = {
+	{ .compatible = "analogix,anx7814", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, anx78xx_match_table);
+#endif
+
+static struct i2c_driver anx78xx_driver = {
+	.driver = {
+		   .name = "anx7814",
+		   .of_match_table = of_match_ptr(anx78xx_match_table),
+		  },
+	.probe = anx78xx_i2c_probe,
+	.remove = anx78xx_i2c_remove,
+	.id_table = anx78xx_id,
+};
+module_i2c_driver(anx78xx_driver);
+
+MODULE_DESCRIPTION("ANX78xx SlimPort Transmitter driver");
+MODULE_AUTHOR("Enric Balletbo i Serra <enric.balletbo@collabora.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h
new file mode 100644
index 0000000..25e063b
--- /dev/null
+++ b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h
@@ -0,0 +1,710 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright(c) 2016, Analogix Semiconductor. All rights reserved.
+ */
+
+#ifndef __ANX78xx_H
+#define __ANX78xx_H
+
+#define TX_P0				0x70
+#define TX_P1				0x7a
+#define TX_P2				0x72
+
+#define RX_P0				0x7e
+#define RX_P1				0x80
+
+/***************************************************************/
+/* Register definition of device address 0x7e                  */
+/***************************************************************/
+
+/*
+ * System Control and Status
+ */
+
+/* Software Reset Register 1 */
+#define SP_SOFTWARE_RESET1_REG		0x11
+#define SP_VIDEO_RST			BIT(4)
+#define SP_HDCP_MAN_RST			BIT(2)
+#define SP_TMDS_RST			BIT(1)
+#define SP_SW_MAN_RST			BIT(0)
+
+/* System Status Register */
+#define SP_SYSTEM_STATUS_REG		0x14
+#define SP_TMDS_CLOCK_DET		BIT(1)
+#define SP_TMDS_DE_DET			BIT(0)
+
+/* HDMI Status Register */
+#define SP_HDMI_STATUS_REG		0x15
+#define SP_HDMI_AUD_LAYOUT		BIT(3)
+#define SP_HDMI_DET			BIT(0)
+#  define SP_DVI_MODE			0
+#  define SP_HDMI_MODE			1
+
+/* HDMI Mute Control Register */
+#define SP_HDMI_MUTE_CTRL_REG		0x16
+#define SP_AUD_MUTE			BIT(1)
+#define SP_VID_MUTE			BIT(0)
+
+/* System Power Down Register 1 */
+#define SP_SYSTEM_POWER_DOWN1_REG	0x18
+#define SP_PWDN_CTRL			BIT(0)
+
+/*
+ * Audio and Video Auto Control
+ */
+
+/* Auto Audio and Video Control register */
+#define SP_AUDVID_CTRL_REG		0x20
+#define SP_AVC_OE			BIT(7)
+#define SP_AAC_OE			BIT(6)
+#define SP_AVC_EN			BIT(1)
+#define SP_AAC_EN			BIT(0)
+
+/* Audio Exception Enable Registers */
+#define SP_AUD_EXCEPTION_ENABLE_BASE	(0x24 - 1)
+/* Bits for Audio Exception Enable Register 3 */
+#define SP_AEC_EN21			BIT(5)
+
+/*
+ * Interrupt
+ */
+
+/* Interrupt Status Register 1 */
+#define SP_INT_STATUS1_REG		0x31
+/* Bits for Interrupt Status Register 1 */
+#define SP_HDMI_DVI			BIT(7)
+#define SP_CKDT_CHG			BIT(6)
+#define SP_SCDT_CHG			BIT(5)
+#define SP_PCLK_CHG			BIT(4)
+#define SP_PLL_UNLOCK			BIT(3)
+#define SP_CABLE_PLUG_CHG		BIT(2)
+#define SP_SET_MUTE			BIT(1)
+#define SP_SW_INTR			BIT(0)
+/* Bits for Interrupt Status Register 2 */
+#define SP_HDCP_ERR			BIT(5)
+#define SP_AUDIO_SAMPLE_CHG		BIT(0)	/* undocumented */
+/* Bits for Interrupt Status Register 3 */
+#define SP_AUD_MODE_CHG			BIT(0)
+/* Bits for Interrupt Status Register 5 */
+#define SP_AUDIO_RCV			BIT(0)
+/* Bits for Interrupt Status Register 6 */
+#define SP_INT_STATUS6_REG		0x36
+#define SP_CTS_RCV			BIT(7)
+#define SP_NEW_AUD_PKT			BIT(4)
+#define SP_NEW_AVI_PKT			BIT(1)
+#define SP_NEW_CP_PKT			BIT(0)
+/* Bits for Interrupt Status Register 7 */
+#define SP_NO_VSI			BIT(7)
+#define SP_NEW_VS			BIT(4)
+
+/* Interrupt Mask 1 Status Registers */
+#define SP_INT_MASK1_REG		0x41
+
+/* HDMI US TIMER Control Register */
+#define SP_HDMI_US_TIMER_CTRL_REG	0x49
+#define SP_MS_TIMER_MARGIN_10_8_MASK	0x07
+
+/*
+ * TMDS Control
+ */
+
+/* TMDS Control Registers */
+#define SP_TMDS_CTRL_BASE		(0x50 - 1)
+/* Bits for TMDS Control Register 7 */
+#define SP_PD_RT			BIT(0)
+
+/*
+ * Video Control
+ */
+
+/* Video Status Register */
+#define SP_VIDEO_STATUS_REG		0x70
+#define SP_COLOR_DEPTH_MASK		0xf0
+#define SP_COLOR_DEPTH_SHIFT		4
+#  define SP_COLOR_DEPTH_MODE_LEGACY	0x00
+#  define SP_COLOR_DEPTH_MODE_24BIT	0x04
+#  define SP_COLOR_DEPTH_MODE_30BIT	0x05
+#  define SP_COLOR_DEPTH_MODE_36BIT	0x06
+#  define SP_COLOR_DEPTH_MODE_48BIT	0x07
+
+/* Video Data Range Control Register */
+#define SP_VID_DATA_RANGE_CTRL_REG	0x83
+#define SP_R2Y_INPUT_LIMIT		BIT(1)
+
+/* Pixel Clock High Resolution Counter Registers */
+#define SP_PCLK_HIGHRES_CNT_BASE	(0x8c - 1)
+
+/*
+ * Audio Control
+ */
+
+/* Number of Audio Channels Status Registers */
+#define SP_AUD_CH_STATUS_REG_NUM	6
+
+/* Audio IN S/PDIF Channel Status Registers */
+#define SP_AUD_SPDIF_CH_STATUS_BASE	0xc7
+
+/* Audio IN S/PDIF Channel Status Register 4 */
+#define SP_FS_FREQ_MASK			0x0f
+#  define SP_FS_FREQ_44100HZ		0x00
+#  define SP_FS_FREQ_48000HZ		0x02
+#  define SP_FS_FREQ_32000HZ		0x03
+#  define SP_FS_FREQ_88200HZ		0x08
+#  define SP_FS_FREQ_96000HZ		0x0a
+#  define SP_FS_FREQ_176400HZ		0x0c
+#  define SP_FS_FREQ_192000HZ		0x0e
+
+/*
+ * Micellaneous Control Block
+ */
+
+/* CHIP Control Register */
+#define SP_CHIP_CTRL_REG		0xe3
+#define SP_MAN_HDMI5V_DET		BIT(3)
+#define SP_PLLLOCK_CKDT_EN		BIT(2)
+#define SP_ANALOG_CKDT_EN		BIT(1)
+#define SP_DIGITAL_CKDT_EN		BIT(0)
+
+/* Packet Receiving Status Register */
+#define SP_PACKET_RECEIVING_STATUS_REG	0xf3
+#define SP_AVI_RCVD			BIT(5)
+#define SP_VSI_RCVD			BIT(1)
+
+/***************************************************************/
+/* Register definition of device address 0x80                  */
+/***************************************************************/
+
+/* HDCP BCAPS Shadow Register */
+#define SP_HDCP_BCAPS_SHADOW_REG	0x2a
+#define SP_BCAPS_REPEATER		BIT(5)
+
+/* HDCP Status Register */
+#define SP_RX_HDCP_STATUS_REG		0x3f
+#define SP_AUTH_EN			BIT(4)
+
+/*
+ * InfoFrame and Control Packet Registers
+ */
+
+/* AVI InfoFrame packet checksum */
+#define SP_AVI_INFOFRAME_CHECKSUM	0xa3
+
+/* AVI InfoFrame Registers */
+#define SP_AVI_INFOFRAME_DATA_BASE	0xa4
+
+#define SP_AVI_COLOR_F_MASK		0x60
+#define SP_AVI_COLOR_F_SHIFT		5
+
+/* Audio InfoFrame Registers */
+#define SP_AUD_INFOFRAME_DATA_BASE	0xc4
+#define SP_AUD_INFOFRAME_LAYOUT_MASK	0x0f
+
+/* MPEG/HDMI Vendor Specific InfoFrame Packet type code */
+#define SP_MPEG_VS_INFOFRAME_TYPE_REG	0xe0
+
+/* MPEG/HDMI Vendor Specific InfoFrame Packet length */
+#define SP_MPEG_VS_INFOFRAME_LEN_REG	0xe2
+
+/* MPEG/HDMI Vendor Specific InfoFrame Packet version number */
+#define SP_MPEG_VS_INFOFRAME_VER_REG	0xe1
+
+/* MPEG/HDMI Vendor Specific InfoFrame Packet content */
+#define SP_MPEG_VS_INFOFRAME_DATA_BASE	0xe4
+
+/* General Control Packet Register */
+#define SP_GENERAL_CTRL_PACKET_REG	0x9f
+#define SP_CLEAR_AVMUTE			BIT(4)
+#define SP_SET_AVMUTE			BIT(0)
+
+/***************************************************************/
+/* Register definition of device address 0x70                  */
+/***************************************************************/
+
+/* HDCP Status Register */
+#define SP_TX_HDCP_STATUS_REG		0x00
+#define SP_AUTH_FAIL			BIT(5)
+#define SP_AUTHEN_PASS			BIT(1)
+
+/* HDCP Control Register 0 */
+#define SP_HDCP_CTRL0_REG		0x01
+#define SP_RX_REPEATER			BIT(6)
+#define SP_RE_AUTH			BIT(5)
+#define SP_SW_AUTH_OK			BIT(4)
+#define SP_HARD_AUTH_EN			BIT(3)
+#define SP_HDCP_ENC_EN			BIT(2)
+#define SP_BKSV_SRM_PASS		BIT(1)
+#define SP_KSVLIST_VLD			BIT(0)
+/* HDCP Function Enabled */
+#define SP_HDCP_FUNCTION_ENABLED	(BIT(0) | BIT(1) | BIT(2) | BIT(3))
+
+/* HDCP Receiver BSTATUS Register 0 */
+#define	SP_HDCP_RX_BSTATUS0_REG		0x1b
+/* HDCP Receiver BSTATUS Register 1 */
+#define	SP_HDCP_RX_BSTATUS1_REG		0x1c
+
+/* HDCP Embedded "Blue Screen" Content Registers */
+#define SP_HDCP_VID0_BLUE_SCREEN_REG	0x2c
+#define SP_HDCP_VID1_BLUE_SCREEN_REG	0x2d
+#define SP_HDCP_VID2_BLUE_SCREEN_REG	0x2e
+
+/* HDCP Wait R0 Timing Register */
+#define SP_HDCP_WAIT_R0_TIME_REG	0x40
+
+/* HDCP Link Integrity Check Timer Register */
+#define SP_HDCP_LINK_CHECK_TIMER_REG	0x41
+
+/* HDCP Repeater Ready Wait Timer Register */
+#define SP_HDCP_RPTR_RDY_WAIT_TIME_REG	0x42
+
+/* HDCP Auto Timer Register */
+#define SP_HDCP_AUTO_TIMER_REG		0x51
+
+/* HDCP Key Status Register */
+#define SP_HDCP_KEY_STATUS_REG		0x5e
+
+/* HDCP Key Command Register */
+#define SP_HDCP_KEY_COMMAND_REG		0x5f
+#define SP_DISABLE_SYNC_HDCP		BIT(2)
+
+/* OTP Memory Key Protection Registers */
+#define SP_OTP_KEY_PROTECT1_REG		0x60
+#define SP_OTP_KEY_PROTECT2_REG		0x61
+#define SP_OTP_KEY_PROTECT3_REG		0x62
+#define SP_OTP_PSW1			0xa2
+#define SP_OTP_PSW2			0x7e
+#define SP_OTP_PSW3			0xc6
+
+/* DP System Control Registers */
+#define SP_DP_SYSTEM_CTRL_BASE		(0x80 - 1)
+/* Bits for DP System Control Register 2 */
+#define SP_CHA_STA			BIT(2)
+/* Bits for DP System Control Register 3 */
+#define SP_HPD_STATUS			BIT(6)
+#define SP_STRM_VALID			BIT(2)
+/* Bits for DP System Control Register 4 */
+#define SP_ENHANCED_MODE		BIT(3)
+
+/* DP Video Control Register */
+#define SP_DP_VIDEO_CTRL_REG		0x84
+#define SP_COLOR_F_MASK			0x06
+#define SP_COLOR_F_SHIFT		1
+#define SP_BPC_MASK			0xe0
+#define SP_BPC_SHIFT			5
+#  define SP_BPC_6BITS			0x00
+#  define SP_BPC_8BITS			0x01
+#  define SP_BPC_10BITS			0x02
+#  define SP_BPC_12BITS			0x03
+
+/* DP Audio Control Register */
+#define SP_DP_AUDIO_CTRL_REG		0x87
+#define SP_AUD_EN			BIT(0)
+
+/* 10us Pulse Generate Timer Registers */
+#define SP_I2C_GEN_10US_TIMER0_REG	0x88
+#define SP_I2C_GEN_10US_TIMER1_REG	0x89
+
+/* Packet Send Control Register */
+#define SP_PACKET_SEND_CTRL_REG		0x90
+#define SP_AUD_IF_UP			BIT(7)
+#define SP_AVI_IF_UD			BIT(6)
+#define SP_MPEG_IF_UD			BIT(5)
+#define SP_SPD_IF_UD			BIT(4)
+#define SP_AUD_IF_EN			BIT(3)
+#define SP_AVI_IF_EN			BIT(2)
+#define SP_MPEG_IF_EN			BIT(1)
+#define SP_SPD_IF_EN			BIT(0)
+
+/* DP HDCP Control Register */
+#define SP_DP_HDCP_CTRL_REG		0x92
+#define SP_AUTO_EN			BIT(7)
+#define SP_AUTO_START			BIT(5)
+#define SP_LINK_POLLING			BIT(1)
+
+/* DP Main Link Bandwidth Setting Register */
+#define SP_DP_MAIN_LINK_BW_SET_REG	0xa0
+#define SP_LINK_BW_SET_MASK		0x1f
+#define SP_INITIAL_SLIM_M_AUD_SEL	BIT(5)
+
+/* DP Training Pattern Set Register */
+#define SP_DP_TRAINING_PATTERN_SET_REG	0xa2
+
+/* DP Lane 0 Link Training Control Register */
+#define SP_DP_LANE0_LT_CTRL_REG		0xa3
+#define SP_TX_SW_SET_MASK		0x1b
+#define SP_MAX_PRE_REACH		BIT(5)
+#define SP_MAX_DRIVE_REACH		BIT(4)
+#define SP_PRE_EMP_LEVEL1		BIT(3)
+#define SP_DRVIE_CURRENT_LEVEL1		BIT(0)
+
+/* DP Link Training Control Register */
+#define SP_DP_LT_CTRL_REG		0xa8
+#define SP_LT_ERROR_TYPE_MASK		0x70
+#  define SP_LT_NO_ERROR		0x00
+#  define SP_LT_AUX_WRITE_ERROR		0x01
+#  define SP_LT_MAX_DRIVE_REACHED	0x02
+#  define SP_LT_WRONG_LANE_COUNT_SET	0x03
+#  define SP_LT_LOOP_SAME_5_TIME	0x04
+#  define SP_LT_CR_FAIL_IN_EQ		0x05
+#  define SP_LT_EQ_LOOP_5_TIME		0x06
+#define SP_LT_EN			BIT(0)
+
+/* DP CEP Training Control Registers */
+#define SP_DP_CEP_TRAINING_CTRL0_REG	0xa9
+#define SP_DP_CEP_TRAINING_CTRL1_REG	0xaa
+
+/* DP Debug Register 1 */
+#define SP_DP_DEBUG1_REG		0xb0
+#define SP_DEBUG_PLL_LOCK		BIT(4)
+#define SP_POLLING_EN			BIT(1)
+
+/* DP Polling Control Register */
+#define SP_DP_POLLING_CTRL_REG		0xb4
+#define SP_AUTO_POLLING_DISABLE		BIT(0)
+
+/* DP Link Debug Control Register */
+#define SP_DP_LINK_DEBUG_CTRL_REG	0xb8
+#define SP_M_VID_DEBUG			BIT(5)
+#define SP_NEW_PRBS7			BIT(4)
+#define SP_INSERT_ER			BIT(1)
+#define SP_PRBS31_EN			BIT(0)
+
+/* AUX Misc control Register */
+#define SP_AUX_MISC_CTRL_REG		0xbf
+
+/* DP PLL control Register */
+#define SP_DP_PLL_CTRL_REG		0xc7
+#define SP_PLL_RST			BIT(6)
+
+/* DP Analog Power Down Register */
+#define SP_DP_ANALOG_POWER_DOWN_REG	0xc8
+#define SP_CH0_PD			BIT(0)
+
+/* DP Misc Control Register */
+#define SP_DP_MISC_CTRL_REG		0xcd
+#define SP_EQ_TRAINING_LOOP		BIT(6)
+
+/* DP Extra I2C Device Address Register */
+#define SP_DP_EXTRA_I2C_DEV_ADDR_REG	0xce
+#define SP_I2C_STRETCH_DISABLE		BIT(7)
+
+#define SP_I2C_EXTRA_ADDR		0x50
+
+/* DP Downspread Control Register 1 */
+#define SP_DP_DOWNSPREAD_CTRL1_REG	0xd0
+
+/* DP M Value Calculation Control Register */
+#define SP_DP_M_CALCULATION_CTRL_REG	0xd9
+#define SP_M_GEN_CLK_SEL		BIT(0)
+
+/* AUX Channel Access Status Register */
+#define SP_AUX_CH_STATUS_REG		0xe0
+#define SP_AUX_STATUS			0x0f
+
+/* AUX Channel DEFER Control Register */
+#define SP_AUX_DEFER_CTRL_REG		0xe2
+#define SP_DEFER_CTRL_EN		BIT(7)
+
+/* DP Buffer Data Count Register */
+#define SP_BUF_DATA_COUNT_REG		0xe4
+#define SP_BUF_DATA_COUNT_MASK		0x1f
+#define SP_BUF_CLR			BIT(7)
+
+/* DP AUX Channel Control Register 1 */
+#define SP_DP_AUX_CH_CTRL1_REG		0xe5
+#define SP_AUX_TX_COMM_MASK		0x0f
+#define SP_AUX_LENGTH_MASK		0xf0
+#define SP_AUX_LENGTH_SHIFT		4
+
+/* DP AUX CH Address Register 0 */
+#define SP_AUX_ADDR_7_0_REG		0xe6
+
+/* DP AUX CH Address Register 1 */
+#define SP_AUX_ADDR_15_8_REG		0xe7
+
+/* DP AUX CH Address Register 2 */
+#define SP_AUX_ADDR_19_16_REG		0xe8
+#define SP_AUX_ADDR_19_16_MASK		0x0f
+
+/* DP AUX Channel Control Register 2 */
+#define SP_DP_AUX_CH_CTRL2_REG		0xe9
+#define SP_AUX_SEL_RXCM			BIT(6)
+#define SP_AUX_CHSEL			BIT(3)
+#define SP_AUX_PN_INV			BIT(2)
+#define SP_ADDR_ONLY			BIT(1)
+#define SP_AUX_EN			BIT(0)
+
+/* DP Video Stream Control InfoFrame Register */
+#define SP_DP_3D_VSC_CTRL_REG		0xea
+#define SP_INFO_FRAME_VSC_EN		BIT(0)
+
+/* DP Video Stream Data Byte 1 Register */
+#define SP_DP_VSC_DB1_REG		0xeb
+
+/* DP AUX Channel Control Register 3 */
+#define SP_DP_AUX_CH_CTRL3_REG		0xec
+#define SP_WAIT_COUNTER_7_0_MASK	0xff
+
+/* DP AUX Channel Control Register 4 */
+#define SP_DP_AUX_CH_CTRL4_REG		0xed
+
+/* DP AUX Buffer Data Registers */
+#define SP_DP_BUF_DATA0_REG		0xf0
+
+/***************************************************************/
+/* Register definition of device address 0x72                  */
+/***************************************************************/
+
+/*
+ * Core Register Definitions
+ */
+
+/* Device ID Low Byte Register */
+#define SP_DEVICE_IDL_REG		0x02
+
+/* Device ID High Byte Register */
+#define SP_DEVICE_IDH_REG		0x03
+
+/* Device version register */
+#define SP_DEVICE_VERSION_REG		0x04
+
+/* Power Down Control Register */
+#define SP_POWERDOWN_CTRL_REG		0x05
+#define SP_REGISTER_PD			BIT(7)
+#define SP_HDCP_PD			BIT(5)
+#define SP_AUDIO_PD			BIT(4)
+#define SP_VIDEO_PD			BIT(3)
+#define SP_LINK_PD			BIT(2)
+#define SP_TOTAL_PD			BIT(1)
+
+/* Reset Control Register 1 */
+#define SP_RESET_CTRL1_REG		0x06
+#define SP_MISC_RST			BIT(7)
+#define SP_VIDCAP_RST			BIT(6)
+#define SP_VIDFIF_RST			BIT(5)
+#define SP_AUDFIF_RST			BIT(4)
+#define SP_AUDCAP_RST			BIT(3)
+#define SP_HDCP_RST			BIT(2)
+#define SP_SW_RST			BIT(1)
+#define SP_HW_RST			BIT(0)
+
+/* Reset Control Register 2 */
+#define SP_RESET_CTRL2_REG		0x07
+#define SP_AUX_RST			BIT(2)
+#define SP_SERDES_FIFO_RST		BIT(1)
+#define SP_I2C_REG_RST			BIT(0)
+
+/* Video Control Register 1 */
+#define SP_VID_CTRL1_REG		0x08
+#define SP_VIDEO_EN			BIT(7)
+#define SP_VIDEO_MUTE			BIT(2)
+#define SP_DE_GEN			BIT(1)
+#define SP_DEMUX			BIT(0)
+
+/* Video Control Register 2 */
+#define SP_VID_CTRL2_REG		0x09
+#define SP_IN_COLOR_F_MASK		0x03
+#define SP_IN_YC_BIT_SEL		BIT(2)
+#define SP_IN_BPC_MASK			0x70
+#define SP_IN_BPC_SHIFT			4
+#  define SP_IN_BPC_12BIT		0x03
+#  define SP_IN_BPC_10BIT		0x02
+#  define SP_IN_BPC_8BIT		0x01
+#  define SP_IN_BPC_6BIT		0x00
+#define SP_IN_D_RANGE			BIT(7)
+
+/* Video Control Register 3 */
+#define SP_VID_CTRL3_REG		0x0a
+#define SP_HPD_OUT			BIT(6)
+
+/* Video Control Register 5 */
+#define SP_VID_CTRL5_REG		0x0c
+#define SP_CSC_STD_SEL			BIT(7)
+#define SP_XVYCC_RNG_LMT		BIT(6)
+#define SP_RANGE_Y2R			BIT(5)
+#define SP_CSPACE_Y2R			BIT(4)
+#define SP_RGB_RNG_LMT			BIT(3)
+#define SP_Y_RNG_LMT			BIT(2)
+#define SP_RANGE_R2Y			BIT(1)
+#define SP_CSPACE_R2Y			BIT(0)
+
+/* Video Control Register 6 */
+#define SP_VID_CTRL6_REG		0x0d
+#define SP_TEST_PATTERN_EN		BIT(7)
+#define SP_VIDEO_PROCESS_EN		BIT(6)
+#define SP_VID_US_MODE			BIT(3)
+#define SP_VID_DS_MODE			BIT(2)
+#define SP_UP_SAMPLE			BIT(1)
+#define SP_DOWN_SAMPLE			BIT(0)
+
+/* Video Control Register 8 */
+#define SP_VID_CTRL8_REG		0x0f
+#define SP_VID_VRES_TH			BIT(0)
+
+/* Total Line Status Low Byte Register */
+#define SP_TOTAL_LINE_STAL_REG		0x24
+
+/* Total Line Status High Byte Register */
+#define SP_TOTAL_LINE_STAH_REG		0x25
+
+/* Active Line Status Low Byte Register */
+#define SP_ACT_LINE_STAL_REG		0x26
+
+/* Active Line Status High Byte Register */
+#define SP_ACT_LINE_STAH_REG		0x27
+
+/* Vertical Front Porch Status Register */
+#define SP_V_F_PORCH_STA_REG		0x28
+
+/* Vertical SYNC Width Status Register */
+#define SP_V_SYNC_STA_REG		0x29
+
+/* Vertical Back Porch Status Register */
+#define SP_V_B_PORCH_STA_REG		0x2a
+
+/* Total Pixel Status Low Byte Register */
+#define SP_TOTAL_PIXEL_STAL_REG		0x2b
+
+/* Total Pixel Status High Byte Register */
+#define SP_TOTAL_PIXEL_STAH_REG		0x2c
+
+/* Active Pixel Status Low Byte Register */
+#define SP_ACT_PIXEL_STAL_REG		0x2d
+
+/* Active Pixel Status High Byte Register */
+#define SP_ACT_PIXEL_STAH_REG		0x2e
+
+/* Horizontal Front Porch Status Low Byte Register */
+#define SP_H_F_PORCH_STAL_REG		0x2f
+
+/* Horizontal Front Porch Statys High Byte Register */
+#define SP_H_F_PORCH_STAH_REG		0x30
+
+/* Horizontal SYNC Width Status Low Byte Register */
+#define SP_H_SYNC_STAL_REG		0x31
+
+/* Horizontal SYNC Width Status High Byte Register */
+#define SP_H_SYNC_STAH_REG		0x32
+
+/* Horizontal Back Porch Status Low Byte Register */
+#define SP_H_B_PORCH_STAL_REG		0x33
+
+/* Horizontal Back Porch Status High Byte Register */
+#define SP_H_B_PORCH_STAH_REG		0x34
+
+/* InfoFrame AVI Packet DB1 Register */
+#define SP_INFOFRAME_AVI_DB1_REG	0x70
+
+/* Bit Control Specific Register */
+#define SP_BIT_CTRL_SPECIFIC_REG	0x80
+#define SP_BIT_CTRL_SELECT_SHIFT	1
+#define SP_ENABLE_BIT_CTRL		BIT(0)
+
+/* InfoFrame Audio Packet DB1 Register */
+#define SP_INFOFRAME_AUD_DB1_REG	0x83
+
+/* InfoFrame MPEG Packet DB1 Register */
+#define SP_INFOFRAME_MPEG_DB1_REG	0xb0
+
+/* Audio Channel Status Registers */
+#define SP_AUD_CH_STATUS_BASE		0xd0
+
+/* Audio Channel Num Register 5 */
+#define SP_I2S_CHANNEL_NUM_MASK		0xe0
+#  define SP_I2S_CH_NUM_1		(0x00 << 5)
+#  define SP_I2S_CH_NUM_2		(0x01 << 5)
+#  define SP_I2S_CH_NUM_3		(0x02 << 5)
+#  define SP_I2S_CH_NUM_4		(0x03 << 5)
+#  define SP_I2S_CH_NUM_5		(0x04 << 5)
+#  define SP_I2S_CH_NUM_6		(0x05 << 5)
+#  define SP_I2S_CH_NUM_7		(0x06 << 5)
+#  define SP_I2S_CH_NUM_8		(0x07 << 5)
+#define SP_EXT_VUCP			BIT(2)
+#define SP_VBIT				BIT(1)
+#define SP_AUDIO_LAYOUT			BIT(0)
+
+/* Analog Debug Register 2 */
+#define SP_ANALOG_DEBUG2_REG		0xdd
+#define SP_FORCE_SW_OFF_BYPASS		0x20
+#define SP_XTAL_FRQ			0x1c
+#  define SP_XTAL_FRQ_19M2		(0x00 << 2)
+#  define SP_XTAL_FRQ_24M		(0x01 << 2)
+#  define SP_XTAL_FRQ_25M		(0x02 << 2)
+#  define SP_XTAL_FRQ_26M		(0x03 << 2)
+#  define SP_XTAL_FRQ_27M		(0x04 << 2)
+#  define SP_XTAL_FRQ_38M4		(0x05 << 2)
+#  define SP_XTAL_FRQ_52M		(0x06 << 2)
+#define SP_POWERON_TIME_1P5MS		0x03
+
+/* Analog Control 0 Register */
+#define SP_ANALOG_CTRL0_REG		0xe1
+
+/* Common Interrupt Status Register 1 */
+#define SP_COMMON_INT_STATUS_BASE	(0xf1 - 1)
+#define SP_PLL_LOCK_CHG			0x40
+
+/* Common Interrupt Status Register 2 */
+#define SP_COMMON_INT_STATUS2		0xf2
+#define SP_HDCP_AUTH_CHG		BIT(1)
+#define SP_HDCP_AUTH_DONE		BIT(0)
+
+#define SP_HDCP_LINK_CHECK_FAIL		BIT(0)
+
+/* Common Interrupt Status Register 4 */
+#define SP_COMMON_INT_STATUS4_REG	0xf4
+#define SP_HPD_IRQ			BIT(6)
+#define SP_HPD_ESYNC_ERR		BIT(4)
+#define SP_HPD_CHG			BIT(2)
+#define SP_HPD_LOST			BIT(1)
+#define SP_HPD_PLUG			BIT(0)
+
+/* DP Interrupt Status Register */
+#define SP_DP_INT_STATUS1_REG		0xf7
+#define SP_TRAINING_FINISH		BIT(5)
+#define SP_POLLING_ERR			BIT(4)
+
+/* Common Interrupt Mask Register */
+#define SP_COMMON_INT_MASK_BASE		(0xf8 - 1)
+
+#define SP_COMMON_INT_MASK4_REG		0xfb
+
+/* DP Interrupts Mask Register */
+#define SP_DP_INT_MASK1_REG		0xfe
+
+/* Interrupt Control Register */
+#define SP_INT_CTRL_REG			0xff
+
+/***************************************************************/
+/* Register definition of device address 0x7a                  */
+/***************************************************************/
+
+/* DP TX Link Training Control Register */
+#define SP_DP_TX_LT_CTRL0_REG		0x30
+
+/* PD 1.2 Lint Training 80bit Pattern Register */
+#define SP_DP_LT_80BIT_PATTERN0_REG	0x80
+#define SP_DP_LT_80BIT_PATTERN_REG_NUM	10
+
+/* Audio Interface Control Register 0 */
+#define SP_AUD_INTERFACE_CTRL0_REG	0x5f
+#define SP_AUD_INTERFACE_DISABLE	0x80
+
+/* Audio Interface Control Register 2 */
+#define SP_AUD_INTERFACE_CTRL2_REG	0x60
+#define SP_M_AUD_ADJUST_ST		0x04
+
+/* Audio Interface Control Register 3 */
+#define SP_AUD_INTERFACE_CTRL3_REG	0x62
+
+/* Audio Interface Control Register 4 */
+#define SP_AUD_INTERFACE_CTRL4_REG	0x67
+
+/* Audio Interface Control Register 5 */
+#define SP_AUD_INTERFACE_CTRL5_REG	0x68
+
+/* Audio Interface Control Register 6 */
+#define SP_AUD_INTERFACE_CTRL6_REG	0x69
+
+/* Firmware Version Register */
+#define SP_FW_VER_REG			0xb7
+
+#endif
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

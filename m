Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F275AF5B6
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 08:24:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2922687C0C;
	Wed, 11 Sep 2019 06:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4JhIojCOcsDX; Wed, 11 Sep 2019 06:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE7FB86101;
	Wed, 11 Sep 2019 06:24:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A99481BF263
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 06:24:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A6C4D844D6
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 06:24:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eoYQ3UxCog7o for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 06:24:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mxout017.mail.hostpoint.ch (mxout017.mail.hostpoint.ch
 [217.26.49.177])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D693F844C9
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 06:24:06 +0000 (UTC)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout017.mail.hostpoint.ch with esmtp (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7w2r-000P9p-GC; Wed, 11 Sep 2019 08:24:01 +0200
Received: from [83.150.61.156] (helo=volery)
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2 (FreeBSD))
 (envelope-from <sandro@volery.com>)
 id 1i7w2r-0005Mp-An; Wed, 11 Sep 2019 08:24:01 +0200
X-Authenticated-Sender-Id: sandro@volery.com
Date: Wed, 11 Sep 2019 08:23:59 +0200
From: Sandro Volery <sandro@volery.com>
To: gregkh@linuxfoundation.org, davem@davemloft.net, aaro.koskinen@iki.fi,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: octeon: Avoid several usecases of strcpy
Message-ID: <20190911062359.GA14886@volery>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

strcpy was used multiple times in strcpy to write into dev->name.
I replaced them with strscpy.

Signed-off-by: Sandro Volery <sandro@volery.com>
---
 drivers/staging/octeon/ethernet.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 8889494adf1f..cf8e9a23ebf9 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -784,7 +784,7 @@ static int cvm_oct_probe(struct platform_device *pdev)
 			priv->imode = CVMX_HELPER_INTERFACE_MODE_DISABLED;
 			priv->port = CVMX_PIP_NUM_INPUT_PORTS;
 			priv->queue = -1;
-			strcpy(dev->name, "pow%d");
+			strscpy(dev->name, "pow%d", sizeof(dev->name));
 			for (qos = 0; qos < 16; qos++)
 				skb_queue_head_init(&priv->tx_free_list[qos]);
 			dev->min_mtu = VLAN_ETH_ZLEN - mtu_overhead;
@@ -856,39 +856,39 @@ static int cvm_oct_probe(struct platform_device *pdev)
 
 			case CVMX_HELPER_INTERFACE_MODE_NPI:
 				dev->netdev_ops = &cvm_oct_npi_netdev_ops;
-				strcpy(dev->name, "npi%d");
+				strscpy(dev->name, "npi%d", sizeof(dev->name));
 				break;
 
 			case CVMX_HELPER_INTERFACE_MODE_XAUI:
 				dev->netdev_ops = &cvm_oct_xaui_netdev_ops;
-				strcpy(dev->name, "xaui%d");
+				strscpy(dev->name, "xaui%d", sizeof(dev->name));
 				break;
 
 			case CVMX_HELPER_INTERFACE_MODE_LOOP:
 				dev->netdev_ops = &cvm_oct_npi_netdev_ops;
-				strcpy(dev->name, "loop%d");
+				strscpy(dev->name, "loop%d", sizeof(dev->name));
 				break;
 
 			case CVMX_HELPER_INTERFACE_MODE_SGMII:
 				priv->phy_mode = PHY_INTERFACE_MODE_SGMII;
 				dev->netdev_ops = &cvm_oct_sgmii_netdev_ops;
-				strcpy(dev->name, "eth%d");
+				strscpy(dev->name, "eth%d", sizeof(dev->name));
 				break;
 
 			case CVMX_HELPER_INTERFACE_MODE_SPI:
 				dev->netdev_ops = &cvm_oct_spi_netdev_ops;
-				strcpy(dev->name, "spi%d");
+				strscpy(dev->name, "spi%d", sizeof(dev->name));
 				break;
 
 			case CVMX_HELPER_INTERFACE_MODE_GMII:
 				priv->phy_mode = PHY_INTERFACE_MODE_GMII;
 				dev->netdev_ops = &cvm_oct_rgmii_netdev_ops;
-				strcpy(dev->name, "eth%d");
+				strscpy(dev->name, "eth%d", sizeof(dev->name));
 				break;
 
 			case CVMX_HELPER_INTERFACE_MODE_RGMII:
 				dev->netdev_ops = &cvm_oct_rgmii_netdev_ops;
-				strcpy(dev->name, "eth%d");
+				strscpy(dev->name, "eth%d", sizeof(dev->name));
 				cvm_set_rgmii_delay(priv, interface,
 						    port_index);
 				break;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

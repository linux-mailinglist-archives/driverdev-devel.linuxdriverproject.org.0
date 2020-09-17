Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A1A26D949
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 12:42:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 710B586FEC;
	Thu, 17 Sep 2020 10:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pj4PyO7p-n-M; Thu, 17 Sep 2020 10:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62C0C86FF2;
	Thu, 17 Sep 2020 10:42:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33F3A1BF387
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2ECAB875E2
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pTf0jZpk2OmZ for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9AF4887400
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02092221E3;
 Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600339342;
 bh=l8+mYv084D4frOVuw6OrW0ntYZbpPSfoQqaxrT6lcCY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Jv7YW6NGNBqfYcj0bEnYGgszSVaxcjX9SrEZYLacnezvfTO7yrB+HK1nheaZgiAkZ
 djs+DNTgguP7ry7pzcWtyc3JOv3C4gkSBq6glxLE8emVHGFUiJyCLjQnAeSKn1LNPg
 hsS7hkRpMUi3whOrR5oKSTepXW6k77q8ojgKyEU0=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kIrMp-005WZf-Rt; Thu, 17 Sep 2020 12:42:19 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH v4 7/8] staging: hikey9xx: phy-hi3670-usb3: change some DT
 properties
Date: Thu, 17 Sep 2020 12:42:11 +0200
Message-Id: <da128b9943bcb6a3d44a9512cedc7fa7a4aedee6.1600338981.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1600338981.git.mchehab+huawei@kernel.org>
References: <cover.1600338981.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Do some changes at the DT properties in order to make it
follow the phy-hi3660-usb3 example and to simplify
usb3-phy-tx-vboost-lvl name.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/phy-hi3670-usb3.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
index cb0bfcbbfbfa..42dbc20a0b9a 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
@@ -627,18 +627,18 @@ static int hi3670_phy_probe(struct platform_device *pdev)
 		return PTR_ERR(priv->sctrl);
 	}
 
-	priv->usb31misc = syscon_regmap_lookup_by_phandle(dev->of_node,
-							  "hisilicon,usb31-misc-syscon");
+	/* node of hi3670 phy is a sub-node of usb3_otg_bc */
+	priv->usb31misc = syscon_node_to_regmap(dev->parent->of_node);
 	if (IS_ERR(priv->usb31misc)) {
-		dev_err(dev, "no hisilicon,usb31-misc-syscon\n");
+		dev_err(dev, "no hisilicon,usb3-otg-bc-syscon\n");
 		return PTR_ERR(priv->usb31misc);
 	}
 
-	if (of_property_read_u32(dev->of_node, "eye-diagram-param",
+	if (of_property_read_u32(dev->of_node, "hisilicon,eye-diagram-param",
 				 &priv->eye_diagram_param))
 		priv->eye_diagram_param = KIRIN970_USB_DEFAULT_PHY_PARAM;
 
-	if (of_property_read_u32(dev->of_node, "usb3-phy-tx-vboost-lvl",
+	if (of_property_read_u32(dev->of_node, "hisilicon,tx-vboost-lvl",
 				 &priv->tx_vboost_lvl))
 		priv->eye_diagram_param = KIRIN970_USB_DEFAULT_PHY_VBOOST;
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

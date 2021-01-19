Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 292E42FB56F
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 11:44:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6AB2120465;
	Tue, 19 Jan 2021 10:44:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uIffsh4QQSFO; Tue, 19 Jan 2021 10:44:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1B740203D9;
	Tue, 19 Jan 2021 10:44:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9592F1BF9B2
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 84BA4203FE
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:44:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pop+qc2ZNaVZ for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 10:44:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 4E224203CC
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 10:44:47 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6213023132;
 Tue, 19 Jan 2021 10:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611053086;
 bh=rLzU+XPDcS60e7yQChZgksvBlUX5FDeW8KQxqXYWVoI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=T3i6ILf7eVGYddJ6d7TRX09RZnnbVH11fpIeQSteBB1bP+lzt+OKl+adxuwyWhnQr
 CYFLlB2W7OSb0OcnBK0IwrOvgqH5Lwk+w3Hs1olDtYOUVlHeRxtFm+FD8YEOqbqGvI
 pM7HzfyHWdezIIvYJBRWANprbSRKMZrInoyTKf+dYoL4/aJ0xpG2FV4aWGcZ99JTME
 E5n/qskYotlIu56ai/yWQvP9ORgFVl0XnFazMLoH/0ZzeMITUacOzzykTGp931MwHZ
 PjT9t3yeDWLdG7Y/YRLtGM8RkW92E4TwnF8DlRNPkI55filKPZx/0hQDYKHN3ARzxx
 VY3hYxklGsMyw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1oVA-000u2J-6h; Tue, 19 Jan 2021 11:44:44 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 3/5] staging: hikey9xx: phy-hi3670-usb3:
 hi3670_is_abbclk_seleted() returns bool
Date: Tue, 19 Jan 2021 11:44:41 +0100
Message-Id: <a579004cfa0cb3cca55c2124a8574a7aeb4eacc3.1611052729.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611052729.git.mchehab+huawei@kernel.org>
References: <cover.1611052729.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linux-kernel@vger.kernel.org, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are a few issues on this function:

1. Instead of using 1/0 for true/false, change the type to boolean;
2. there's a typo there:
	seleted -> selected
3. It's logic is reversed.

Address them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/phy-hi3670-usb3.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
index cffe6c58dfd7..8918f3665f8e 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
@@ -326,24 +326,24 @@ static int hi3670_phy_set_params(struct hi3670_priv *priv)
 	return ret;
 }
 
-static int hi3670_is_abbclk_seleted(struct hi3670_priv *priv)
+static bool hi3670_is_abbclk_selected(struct hi3670_priv *priv)
 {
 	u32 reg;
 
 	if (!priv->sctrl) {
 		dev_err(priv->dev, "priv->sctrl is null!\n");
-		return 1;
+		return false;
 	}
 
 	if (regmap_read(priv->sctrl, SCTRL_SCDEEPSLEEPED, &reg)) {
 		dev_err(priv->dev, "SCTRL_SCDEEPSLEEPED read failed!\n");
-		return 1;
+		return false;
 	}
 
 	if ((reg & USB_CLK_SELECTED) == 0)
-		return 1;
+		return false;
 
-	return 0;
+	return true;
 }
 
 static int hi3670_config_phy_clock(struct hi3670_priv *priv)
@@ -351,7 +351,7 @@ static int hi3670_config_phy_clock(struct hi3670_priv *priv)
 	u32 val, mask;
 	int ret;
 
-	if (hi3670_is_abbclk_seleted(priv)) {
+	if (!hi3670_is_abbclk_selected(priv)) {
 		/* usb refclk iso disable */
 		ret = regmap_write(priv->peri_crg, PERI_CRG_ISODIS,
 				   USB_REFCLK_ISO_EN);
@@ -568,7 +568,7 @@ static int hi3670_phy_exit(struct phy *phy)
 	if (ret)
 		goto out;
 
-	if (hi3670_is_abbclk_seleted(priv)) {
+	if (!hi3670_is_abbclk_selected(priv)) {
 		/* disable usb_tcxo_en */
 		ret = regmap_write(priv->pctrl, PCTRL_PERI_CTRL3,
 				   USB_TCXO_EN << PCTRL_PERI_CTRL3_MSK_START);
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D85A2F7402
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Jan 2021 09:10:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA37A8748D;
	Fri, 15 Jan 2021 08:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jdQL-AAqzOpp; Fri, 15 Jan 2021 08:10:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5311D8747D;
	Fri, 15 Jan 2021 08:10:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 338A71BF311
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 08:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2EB5886CBA
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 08:10:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jQpSSXh1+Osv for <devel@linuxdriverproject.org>;
 Fri, 15 Jan 2021 08:10:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E52C385727
 for <devel@driverdev.osuosl.org>; Fri, 15 Jan 2021 08:10:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 67DCA22240;
 Fri, 15 Jan 2021 08:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610698207;
 bh=xa37m5Q/FryyLUx/FnM3xo2yMtvSkpnfWMgpl5fR0oo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ENL5Yll/V6vbZpJaTVYA9JC4Zdt7I2HM1M9TfWMmpm2UWAT+JCFsfw1jke1IKtAom
 cnwhDNE9qXXscQQIAl8R3ivBOteDVxjyHY/HV8YpKLmuipzwAJIpe5WvUi00nuNJUS
 pu9NZfFHM1bfzpDKv38jUVXh8et947jmSmCumagywtProc5S2mXapRWKQbgTR9pkYD
 fi6gZT3C4slT4q96k4TYm92cNAYuzKVkdNQjMcLb6aRcbc0j7QS57ShlhZDR7qf2VF
 JpWCjb+TQWQLj8Dds3bXYFu/EemULFyA+kf5tPWROQNatnWHMauRH6AJbrreMsk9Fb
 6yLvg1sQMeS9Q==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l0KBJ-00FiGM-0p; Fri, 15 Jan 2021 09:10:05 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 3/4] staging: hikey9xx: phy-hi3670-usb3.c:
 hi3670_is_abbclk_seleted() returns bool
Date: Fri, 15 Jan 2021 09:10:02 +0100
Message-Id: <d1e0d94381e214157545d6808835fdfe99448f76.1610697726.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1610697726.git.mchehab+huawei@kernel.org>
References: <cover.1610697726.git.mchehab+huawei@kernel.org>
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

Instead of using 1/0 for true/false, change the type to boolean
and change the returned value.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/phy-hi3670-usb3.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
index cffe6c58dfd7..b5fed306fcbf 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
@@ -326,24 +326,24 @@ static int hi3670_phy_set_params(struct hi3670_priv *priv)
 	return ret;
 }
 
-static int hi3670_is_abbclk_seleted(struct hi3670_priv *priv)
+static bool hi3670_is_abbclk_seleted(struct hi3670_priv *priv)
 {
 	u32 reg;
 
 	if (!priv->sctrl) {
 		dev_err(priv->dev, "priv->sctrl is null!\n");
-		return 1;
+		return true;
 	}
 
 	if (regmap_read(priv->sctrl, SCTRL_SCDEEPSLEEPED, &reg)) {
 		dev_err(priv->dev, "SCTRL_SCDEEPSLEEPED read failed!\n");
-		return 1;
+		return true;
 	}
 
 	if ((reg & USB_CLK_SELECTED) == 0)
-		return 1;
+		return true;
 
-	return 0;
+	return false;
 }
 
 static int hi3670_config_phy_clock(struct hi3670_priv *priv)
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

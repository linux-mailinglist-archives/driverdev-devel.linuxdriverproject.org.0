Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E477119354
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 22:10:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A853287CB8;
	Tue, 10 Dec 2019 21:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXdttUV9RSY9; Tue, 10 Dec 2019 21:10:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9127787C94;
	Tue, 10 Dec 2019 21:10:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8CE201BF580
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:09:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 86EC8870C7
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 21:09:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2-z1zHPTHrcV for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 21:09:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AA2FF87113
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 21:09:57 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89207246BB;
 Tue, 10 Dec 2019 21:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012197;
 bh=Q/WB4rKuF1LKvZvuCApJ15O1SGEplzZkLXpoMKEtV/Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qOmECpCTbb5ZPyZ7l8DeqHwuPnxF+SaH+zP6hQ52/PsAVMSXlajGWvpjHDhrfoH/q
 uYvH7Jp+NbdhPveAMDy6ffvfDjk/6roiAJ2iGDxAblsJqbdoc+VmN1buchQrJytXLd
 kQuGPf3gGtqDbHkSATXf52WIg6sDIx3mEzi/x+VE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 151/350] media: imx7-mipi-csis: Add a check for
 devm_regulator_get
Date: Tue, 10 Dec 2019 16:04:16 -0500
Message-Id: <20191210210735.9077-112-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Chuhong Yuan <hslester96@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Chuhong Yuan <hslester96@gmail.com>

[ Upstream commit a0219deefe9ee5006a28d48522f76b217d198c51 ]

devm_regulator_get may return an error but mipi_csis_phy_init misses
a check for it.
This may lead to problems when regulator_set_voltage uses the unchecked
pointer.
This patch adds a check for devm_regulator_get to avoid potential risk.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>
Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 73d8354e618c4..e50b1f88e25b5 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
 static int mipi_csis_phy_init(struct csi_state *state)
 {
 	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
+	if (IS_ERR(state->mipi_phy_regulator))
+		return PTR_ERR(state->mipi_phy_regulator);
 
 	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
 				     1000000);
@@ -966,7 +968,10 @@ static int mipi_csis_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	mipi_csis_phy_init(state);
+	ret = mipi_csis_phy_init(state);
+	if (ret < 0)
+		return ret;
+
 	mipi_csis_phy_reset(state);
 
 	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

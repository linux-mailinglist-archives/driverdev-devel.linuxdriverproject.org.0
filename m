Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3865668C4A
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 15:50:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D573E20496;
	Mon, 15 Jul 2019 13:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OiS+6jqmP-lf; Mon, 15 Jul 2019 13:50:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4DC7F21503;
	Mon, 15 Jul 2019 13:50:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D4F9F1BF96A
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 13:50:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D08CB8539A
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 13:50:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VWfEUg4k4eQv for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 13:50:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1340F852DB
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 13:50:42 +0000 (UTC)
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1FFC2083D;
 Mon, 15 Jul 2019 13:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563198641;
 bh=9RWCdpj4FaAC0utpfRuO4Yp0UWaH+OBlUkFuQKg44D8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=N6XUR3gc5Qada/QD19H9qJn4KCmHCMzXbpIjjeHiKs8vyEB38pQTsphYv66J0BOMw
 nTGtXP+UDwP+E1uakAZIUHhuGZ+6n6qfG4XbHwXNvOx/Wi41BVMGkEmiiHKIvKQzxn
 qyXdr+cIzwHDfMFG0UXeKgbJUufqV1rb80cuZRzo=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 068/249] media: imx7-mipi-csis: Propagate the
 error if clock enabling fails
Date: Mon, 15 Jul 2019 09:43:53 -0400
Message-Id: <20190715134655.4076-68-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Fabio Estevam <festevam@gmail.com>

[ Upstream commit 2b393f91c651c16d5c09f5c7aa689e58a79df34e ]

Currently the return value from clk_bulk_prepare_enable() is checked,
but it is not propagate it in the case of failure.

Fix it and also move the error message to the caller of
mipi_csis_clk_enable().

Signed-off-by: Fabio Estevam <festevam@gmail.com>
Reviewed-by: Rui Miguel Silva <rmfrfs@gmail.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 19455f425416..7d7bdfdd852a 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -456,13 +456,9 @@ static void mipi_csis_set_params(struct csi_state *state)
 			MIPI_CSIS_CMN_CTRL_UPDATE_SHADOW_CTRL);
 }
 
-static void mipi_csis_clk_enable(struct csi_state *state)
+static int mipi_csis_clk_enable(struct csi_state *state)
 {
-	int ret;
-
-	ret = clk_bulk_prepare_enable(state->num_clks, state->clks);
-	if (ret < 0)
-		dev_err(state->dev, "failed to enable clocks\n");
+	return clk_bulk_prepare_enable(state->num_clks, state->clks);
 }
 
 static void mipi_csis_clk_disable(struct csi_state *state)
@@ -973,7 +969,11 @@ static int mipi_csis_probe(struct platform_device *pdev)
 	if (ret < 0)
 		return ret;
 
-	mipi_csis_clk_enable(state);
+	ret = mipi_csis_clk_enable(state);
+	if (ret < 0) {
+		dev_err(state->dev, "failed to enable clocks: %d\n", ret);
+		return ret;
+	}
 
 	ret = devm_request_irq(dev, state->irq, mipi_csis_irq_handler,
 			       0, dev_name(dev), state);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

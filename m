Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4A6369F27
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Apr 2021 08:46:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D7FC60C12;
	Sat, 24 Apr 2021 06:46:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BBAywwjxFKQk; Sat, 24 Apr 2021 06:46:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E4A16072C;
	Sat, 24 Apr 2021 06:46:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B3891BF39E
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 06:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1B2434066B
 for <devel@linuxdriverproject.org>; Sat, 24 Apr 2021 06:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n_H93_LssH7f for <devel@linuxdriverproject.org>;
 Sat, 24 Apr 2021 06:45:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A743B40132
 for <devel@driverdev.osuosl.org>; Sat, 24 Apr 2021 06:45:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1DEEE6157F;
 Sat, 24 Apr 2021 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619246733;
 bh=Rq+16yz5e8SlR4lBpfokaa5W2Lfu4S58C8WlJJgkO5E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kYIdg4OV1jct1026KcMw/JQaQTKIREfQPahmBEkCnjksQjgwD6leEnmpbV2TsIuEl
 HwAG2v6KdNW/kvf/B3qmCc1Z46D+UiGos6lRhv98+/mMgBA9N/qTzgnC05HVkFYfgx
 4MPKd+XjXEcUNWS7JpOru09dc9t+4PtlPl1JADDDbuNxS1IN6XsyCka7bbL659GGWE
 XDxuaKQtHV+hjyvkrQc76icj1ij2zHyEtyc4flcA6qfh8WceXwI8wm/3dCMG/86GL1
 9Hc+4lLvXQDFR9WWp8mO+m4cf8NVw5IjTGmmXt8nBjonoY2MjqG61s6Tifu747Sihz
 9my6arjIfH0SA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1laC2l-004JeO-93; Sat, 24 Apr 2021 08:45:31 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 14/78] staging: media: imx7-mipi-csis: use
 pm_runtime_resume_and_get()
Date: Sat, 24 Apr 2021 08:44:24 +0200
Message-Id: <d5f5cb75e48ef7386f83ed023ec3dc1f5be5d08f.1619191723.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1619191723.git.mchehab+huawei@kernel.org>
References: <cover.1619191723.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, mauro.chehab@huawei.com,
 Shawn Guo <shawnguo@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
added pm_runtime_resume_and_get() in order to automatically handle
dev->power.usage_count decrement on errors.

Use the new API, in order to cleanup the error check logic.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 025fdc488bd6..1dc680d94a46 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -695,11 +695,10 @@ static int mipi_csis_s_stream(struct v4l2_subdev *mipi_sd, int enable)
 
 		mipi_csis_clear_counters(state);
 
-		ret = pm_runtime_get_sync(&state->pdev->dev);
-		if (ret < 0) {
-			pm_runtime_put_noidle(&state->pdev->dev);
+		ret = pm_runtime_resume_and_get(&state->pdev->dev);
+		if (ret < 0)
 			return ret;
-		}
+
 		ret = v4l2_subdev_call(state->src_sd, core, s_power, 1);
 		if (ret < 0 && ret != -ENOIOCTLCMD)
 			goto done;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEDC23A3B3
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Aug 2020 13:59:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E580A87A8D;
	Mon,  3 Aug 2020 11:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OdCDIEWOY2+r; Mon,  3 Aug 2020 11:59:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0D765879F0;
	Mon,  3 Aug 2020 11:59:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B3AD21BF255
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 11:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AD8FC86759
 for <devel@linuxdriverproject.org>; Mon,  3 Aug 2020 11:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qhEIyhFJNtMy for <devel@linuxdriverproject.org>;
 Mon,  3 Aug 2020 11:59:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A415786746
 for <devel@driverdev.osuosl.org>; Mon,  3 Aug 2020 11:59:19 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 2415758666F959E4BACB;
 Mon,  3 Aug 2020 19:59:16 +0800 (CST)
Received: from localhost (10.174.179.108) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Mon, 3 Aug 2020
 19:59:05 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <digetx@gmail.com>, <mchehab@kernel.org>, <gregkh@linuxfoundation.org>,
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <hverkuil-cisco@xs4all.nl>
Subject: [PATCH -next] media: staging: tegra-vde: Mark
 tegra_vde_runtime_suspend as __maybe_unused
Date: Mon, 3 Aug 2020 19:59:01 +0800
Message-ID: <20200803115901.44068-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.108]
X-CFilter-Loop: Reflected
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If CONFIG_PM is not set, gcc warns:

drivers/staging/media/tegra-vde/vde.c:916:12:
 warning: 'tegra_vde_runtime_suspend' defined but not used [-Wunused-function]

Make it __maybe_unused to fix this.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/media/tegra-vde/vde.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index a3c24d96d5b9..2d043d518eef 100644
--- a/drivers/staging/media/tegra-vde/vde.c
+++ b/drivers/staging/media/tegra-vde/vde.c
@@ -913,7 +913,7 @@ static irqreturn_t tegra_vde_isr(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
-static int tegra_vde_runtime_suspend(struct device *dev)
+static __maybe_unused int tegra_vde_runtime_suspend(struct device *dev)
 {
 	struct tegra_vde *vde = dev_get_drvdata(dev);
 	int err;
-- 
2.17.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

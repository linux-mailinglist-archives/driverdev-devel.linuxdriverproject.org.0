Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A0D2E11E0
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 03:18:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 198B32D941;
	Wed, 23 Dec 2020 02:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxmhSsg6Mtvu; Wed, 23 Dec 2020 02:18:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 973E4274DB;
	Wed, 23 Dec 2020 02:18:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CEAE1BF301
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 02:18:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1907185F61
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 02:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WEY_72BNXvLT for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 02:18:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B5ED285F2B
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 02:18:35 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C06E52313F;
 Wed, 23 Dec 2020 02:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1608689915;
 bh=b6cgy4nxUBBV3LxGk89o8QHFcm84B1/gituP4rGZFoM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TKl5uUqQ98qVKqPcmmWzN6v2jGwCdHeRGBNb3ckNtOR9nQA9hvNumw9ezUF0jLJTz
 cILaB/QPPbLY7B3eRyM88iyidpkdjllTTc8TFQ3aRxw/U1rMOg2bjJTXegR1dT/i2i
 Rj7ZaXWMfGs9I62NtcMtFXEvkXCu88Lv6iFNUNxE7sDxfG4eHdIXcvyy/YlUmd3vvL
 jnRYuL0yW86SUo6LeYOdk7DrKLb5/mfIWkMbyBnI00/Lu9pNsldjew9RQkpzLtvc+y
 lF8um6gEHxbcGed2hjX0R4GTl7dxwm68BAI1gUhT0X2WjL+VQMd1sOVzvDL+y7/HjR
 XtGIXWnX4Ca4A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 016/130] staging: ks7010: fix missing
 destroy_workqueue() on error in ks7010_sdio_probe
Date: Tue, 22 Dec 2020 21:16:19 -0500
Message-Id: <20201223021813.2791612-16-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223021813.2791612-1-sashal@kernel.org>
References: <20201223021813.2791612-1-sashal@kernel.org>
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Qinglang Miao <miaoqinglang@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Qinglang Miao <miaoqinglang@huawei.com>

[ Upstream commit d1e7550ad081fa5e9260f636dd51e1c496e0fd5f ]

Add the missing destroy_workqueue() before return from
ks7010_sdio_probe in the error handling case.

Signed-off-by: Qinglang Miao <miaoqinglang@huawei.com>
Link: https://lore.kernel.org/r/20201028091552.136445-1-miaoqinglang@huawei.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/ks7010/ks7010_sdio.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 4b379542ecd50..bd864f9ce37ac 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -1028,10 +1028,12 @@ static int ks7010_sdio_probe(struct sdio_func *func,
 
 	ret = register_netdev(priv->net_dev);
 	if (ret)
-		goto err_free_netdev;
+		goto err_destroy_wq;
 
 	return 0;
 
+ err_destroy_wq:
+	destroy_workqueue(priv->wq);
  err_free_netdev:
 	free_netdev(netdev);
  err_release_irq:
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

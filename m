Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA5339D58
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 13:40:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 774B28680D;
	Sat,  8 Jun 2019 11:40:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id epZkJTS28l14; Sat,  8 Jun 2019 11:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E8DE186761;
	Sat,  8 Jun 2019 11:40:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F99B1BF389
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 996868674D
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qyAvThBxJ6tM for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 11:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1380D84442
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 11:40:00 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31583214D8;
 Sat,  8 Jun 2019 11:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559993999;
 bh=JiwfaLUvaigiDjDpiLv7jum12sUQVhzcqO8BoTfA/M4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zyisYZ/5M0OUNPS9FGqekYFnSIopHzqCtRJB5Beomu/u0Dw7TND38jPWOULpbOPEG
 DhW5YMR+qR3/bxytiZmxtChMr/9SOP1x4xHnBkvo7exBgBcX0M2klBWZ+XZXxPJYNk
 enrM0WIppmFBmnEVwWA8DedJy2A6VLhTNBvqF2ss=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 07/70] staging: wilc1000: Fix some double unlock
 bugs in wilc_wlan_cleanup()
Date: Sat,  8 Jun 2019 07:38:46 -0400
Message-Id: <20190608113950.8033-7-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190608113950.8033-1-sashal@kernel.org>
References: <20190608113950.8033-1-sashal@kernel.org>
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
 linux-wireless@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dan Carpenter <dan.carpenter@oracle.com>

[ Upstream commit fea69916360468e364a4988db25a5afa835f3406 ]

If ->hif_read_reg() or ->hif_write_reg() fail then the code unlocks
and keeps executing.  It should just return.

Fixes: c5c77ba18ea6 ("staging: wilc1000: Add SDIO/SPI 802.11 driver")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/wilc1000/wilc_wlan.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index c2389695fe20..70b1ab21f8a3 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -1076,13 +1076,17 @@ void wilc_wlan_cleanup(struct net_device *dev)
 	acquire_bus(wilc, WILC_BUS_ACQUIRE_AND_WAKEUP);
 
 	ret = wilc->hif_func->hif_read_reg(wilc, WILC_GP_REG_0, &reg);
-	if (!ret)
+	if (!ret) {
 		release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+		return;
+	}
 
 	ret = wilc->hif_func->hif_write_reg(wilc, WILC_GP_REG_0,
 					(reg | ABORT_INT));
-	if (!ret)
+	if (!ret) {
 		release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
+		return;
+	}
 
 	release_bus(wilc, WILC_BUS_RELEASE_ALLOW_SLEEP);
 	wilc->hif_func->hif_deinit(NULL);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

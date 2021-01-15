Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F552F7400
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Jan 2021 09:10:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A59087472;
	Fri, 15 Jan 2021 08:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZsP70LPgXrnx; Fri, 15 Jan 2021 08:10:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FAF28743A;
	Fri, 15 Jan 2021 08:10:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 645931BF311
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 08:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 60ECF85FD7
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 08:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uV8exqlL96vo for <devel@linuxdriverproject.org>;
 Fri, 15 Jan 2021 08:10:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D818F810B6
 for <devel@driverdev.osuosl.org>; Fri, 15 Jan 2021 08:10:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 620E0221F7;
 Fri, 15 Jan 2021 08:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610698207;
 bh=73sR10wECqQUqw6UkBdoCbc/733OkO6ECg5/oQb+LQs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TDeJ13UnQ2lDho86FNm1kzDSYFy/JyoRSLcyTR1ThPh4oyE5KB0MUNeYoWCdPoPxx
 qrvfRwzSKi3uXv/mzkwRhKMxULAVoxcP/bs0aXA6q8VN1wAu0tWUrLt8mHHz2kQ8ml
 KeZ4AtFrBkrvn0jV0ZSK/NMtDs/kUk7RlS4+uBhNVH2QppXgiQ0Mu3FU7GUNeDxyp+
 UGzhv5WhHPq8UmVnpAemj2PPPZLZwfQwMmARIE3mo3ebSl88gZt4BFiRytBDTwp48h
 9r1TCACFI7s/Vqs2C/BkbCdSSWt1FF2AchEclBi439B7EXXeQlSnJstbP97dVfvXKA
 EsBkESookIyYQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l0KBJ-00FiGK-00; Fri, 15 Jan 2021 09:10:05 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 2/4] staging: hikey9xx: phy-hi3670-usb3.c: adjust retry
 logic
Date: Fri, 15 Jan 2021 09:10:01 +0100
Message-Id: <8a5d59d49acba14d0cc9f8e720d9892a21240d22.1610697726.git.mchehab+huawei@kernel.org>
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

Instead of running a loop up to 100k times, add a small
delay inside it, running it up to 10 times, waiting up
to 100-200 us.

It should be noticed that I don't have the datasheet for
this PHY. So, not sure if this time will cover all
situations.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/phy-hi3670-usb3.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/hikey9xx/phy-hi3670-usb3.c b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
index 722cabaa9bd9..cffe6c58dfd7 100644
--- a/drivers/staging/hikey9xx/phy-hi3670-usb3.c
+++ b/drivers/staging/hikey9xx/phy-hi3670-usb3.c
@@ -185,7 +185,7 @@ static int hi3670_phy_cr_start(struct regmap *usb31misc, int direction)
 static int hi3670_phy_cr_wait_ack(struct regmap *usb31misc)
 {
 	u32 reg;
-	int retry = 100000;
+	int retry = 10;
 	int ret;
 
 	while (retry-- > 0) {
@@ -198,6 +198,8 @@ static int hi3670_phy_cr_wait_ack(struct regmap *usb31misc)
 		ret = hi3670_phy_cr_clk(usb31misc);
 		if (ret)
 			return ret;
+
+		usleep_range(10, 20);
 	}
 
 	return -ETIMEDOUT;
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

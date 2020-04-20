Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ACA1B1225
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 18:46:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 828F986055;
	Mon, 20 Apr 2020 16:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8vaek_a8oJiN; Mon, 20 Apr 2020 16:45:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C26285F33;
	Mon, 20 Apr 2020 16:45:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C91F1BF327
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 16:45:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 88CE287E4A
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 16:45:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4U-YQAuF3AYt for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 16:45:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1978287D9F
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 16:45:55 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BF7C42082E;
 Mon, 20 Apr 2020 16:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587401154;
 bh=fv/lZWyp1Aft98ogIw8t/4eMXXzbCLcv2G1lVAOZ1yc=;
 h=From:To:Cc:Subject:Date:From;
 b=FytvsLPO1qjDOsqBLmjS8rlHk5u6Gxu6b5ozlwazJJeDui4mL32amBn+k9YBU8U2T
 pfKXden7VKuQf0iELAMaXVMV9xFy7OvI1Ho3k+bTh9drJVPqqGbQGSAJ5YYWO0hLFp
 lT/HuYCyrzkf2HcIXNMC/l170xqFXQD8aXh0SPTM=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jQZYO-009jWn-V1; Mon, 20 Apr 2020 18:45:52 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH] media: staging: rkisp1 Kconfig: depends on OF
Date: Mon, 20 Apr 2020 18:45:47 +0200
Message-Id: <56aaef4ea1c26d90952841fa32b2a14bcc27582a.1587401141.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.2
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

building it with a random config causes a warning:

WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
  Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=y] && (ARCH_ROCKCHIP || COMPILE_TEST [=y]) && OF [=n]
  Selected by [y]:
  - VIDEO_ROCKCHIP_ISP1 [=y] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=y] && VIDEO_V4L2 [=y] && (ARCH_ROCKCHIP || COMPILE_TEST [=y])

Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Reported-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/rkisp1/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/Kconfig b/drivers/staging/media/rkisp1/Kconfig
index 5ecbefa0f5ec..07e4a6e4458e 100644
--- a/drivers/staging/media/rkisp1/Kconfig
+++ b/drivers/staging/media/rkisp1/Kconfig
@@ -2,7 +2,7 @@
 
 config VIDEO_ROCKCHIP_ISP1
 	tristate "Rockchip Image Signal Processing v1 Unit driver"
-	depends on VIDEO_V4L2
+	depends on VIDEO_V4L2 && OF
 	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	select MEDIA_CONTROLLER
 	select VIDEO_V4L2_SUBDEV_API
-- 
2.25.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

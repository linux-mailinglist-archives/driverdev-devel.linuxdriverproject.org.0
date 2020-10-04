Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F09E282BA1
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 18:00:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E96085C88;
	Sun,  4 Oct 2020 16:00:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p6oRm-HySkqd; Sun,  4 Oct 2020 16:00:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47B7B85C77;
	Sun,  4 Oct 2020 16:00:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 86D691BF371
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 16:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6A7E02010E
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 16:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R9CgFauB+r7E for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 16:00:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id D8EE12010A
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 16:00:35 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a6.dynamic.kabel-deutschland.de
 [95.90.213.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32B7B206C1;
 Sun,  4 Oct 2020 16:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601827235;
 bh=7ffqmwDcNKq4pWlTL0AOzTA9uCl5ZE31pG3i8SCLvKM=;
 h=From:To:Cc:Subject:Date:From;
 b=uFKswsHeB63Uvpt3WKgSqQEoBSFe5mIBCVnNEoEJTxAVxB0KON+h9SroHmjcwlIzl
 44HPpR2+5Lzv+SIgqSTPvVvDGsfNQROYPWZlQltc5Y9DlgnoyAZCE3kU/sWp8IjVbn
 UAVQaVC/BMwfh21+BOoFjU24fJztwOrSx5OW/2d4=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kP6R6-00056H-Ab; Sun, 04 Oct 2020 18:00:32 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH] media: zoran.rst: place it at the right place this time
Date: Sun,  4 Oct 2020 18:00:30 +0200
Message-Id: <0cef13d883e4644b4cf9b521d3f3e45355e60566.1601827201.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Rob Herring <robh@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 mjpeg-users@lists.sourceforge.net, Corentin Labbe <clabbe@baylibre.com>,
 mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I was too quick moving zoran.rst... it ends that the original
patch didn't do the right thing and forgot to update the files
that references it.

Fix it.

Fixes: 6b90346919d4 ("media: zoran: move documentation file to the right place")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../driver-api/media/drivers/{v4l-drivers => }/zoran.rst        | 0
 MAINTAINERS                                                     | 2 +-
 drivers/staging/media/zoran/Kconfig                             | 2 +-
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename Documentation/driver-api/media/drivers/{v4l-drivers => }/zoran.rst (100%)

diff --git a/Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst b/Documentation/driver-api/media/drivers/zoran.rst
similarity index 100%
rename from Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst
rename to Documentation/driver-api/media/drivers/zoran.rst
diff --git a/MAINTAINERS b/MAINTAINERS
index ba5eb1dff9c2..7a12633747c8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -19247,7 +19247,7 @@ L:	linux-media@vger.kernel.org
 S:	Maintained
 W:	http://mjpeg.sourceforge.net/driver-zoran/
 Q:	https://patchwork.linuxtv.org/project/linux-media/list/
-F:	Documentation/media/v4l-drivers/zoran.rst
+F:	Documentation/driver-api/media/drivers/zoran.rst
 F:	drivers/staging/media/zoran/
 
 ZPOOL COMPRESSED PAGE STORAGE API
diff --git a/drivers/staging/media/zoran/Kconfig b/drivers/staging/media/zoran/Kconfig
index 492507030276..7874842033ca 100644
--- a/drivers/staging/media/zoran/Kconfig
+++ b/drivers/staging/media/zoran/Kconfig
@@ -8,7 +8,7 @@ config VIDEO_ZORAN
 	  36057/36067 PCI controller chipset. This includes the Iomega
 	  Buz, Pinnacle DC10+ and the Linux Media Labs LML33. There is
 	  a driver homepage at <http://mjpeg.sf.net/driver-zoran/>. For
-	  more information, check <file:Documentation/media/v4l-drivers/zoran.rst>.
+	  more information, check <file:Documentation/driver-api/media/drivers/zoran.rst>.
 
 	  To compile this driver as a module, choose M here: the
 	  module will be called zr36067.
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

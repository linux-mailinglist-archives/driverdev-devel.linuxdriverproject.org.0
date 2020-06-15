Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C81B1F8D5D
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jun 2020 07:43:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7DDAA241A8;
	Mon, 15 Jun 2020 05:43:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qm3QMvMI7IO2; Mon, 15 Jun 2020 05:43:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3F49224981;
	Mon, 15 Jun 2020 05:43:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B4B91BF97D
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 05:43:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 07DBB240DF
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 05:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wbbAp3spVdOJ for <devel@linuxdriverproject.org>;
 Mon, 15 Jun 2020 05:43:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 565B020434
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 05:43:07 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D627F2070E;
 Mon, 15 Jun 2020 05:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592199787;
 bh=i+KcznjcHmFJXCMts75e4liweyEkr+LWYq1E5sBldjU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hxWwBhqMMBx3qmznipb/y2csGiLWi1WNhOYFFa/PHNKmaNcxazt6OYtWOn1lZewDg
 JfBfku8IMnhAgVsqaFPIvo+gWvgaScSJp3/C2qX16nQQ596fH1C/76oYZaIFahfVeI
 QIUt08pndiHgPuJWifq4HXp2TkNdpIrsOI3x7DP8=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jkhtg-009hQx-Ni; Mon, 15 Jun 2020 07:43:04 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 2/2] media: atomisp: fix help message for ISP2401 selection
Date: Mon, 15 Jun 2020 07:43:04 +0200
Message-Id: <52b8bb5c7ebf039b4b7f72f250cbe897a0671b34.1592199777.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <a6fa7016f510f13ed6e31052b8bcf83e4680d899.1592199777.git.mchehab+huawei@kernel.org>
References: <a6fa7016f510f13ed6e31052b8bcf83e4680d899.1592199777.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I'm pretty sure I named this right, but it sounds that I ended
doing something weird maybe while solving some conflict.

So, fix the title of this config var.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/Kconfig b/drivers/staging/media/atomisp/Kconfig
index fea06cb0eb48..37577bb72998 100644
--- a/drivers/staging/media/atomisp/Kconfig
+++ b/drivers/staging/media/atomisp/Kconfig
@@ -22,7 +22,7 @@ config VIDEO_ATOMISP
 	  module will be called atomisp
 
 config VIDEO_ATOMISP_ISP2401
-	bool "VIDEO_ATOMISP_ISP2401"
+	bool "Use Intel Atom ISP on Cherrytail/Anniedale (ISP2401)"
 	depends on VIDEO_ATOMISP
 	help
 	  Enable support for Atom ISP2401-based boards.
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

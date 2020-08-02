Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6FA23561D
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 11:22:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8A2A420472;
	Sun,  2 Aug 2020 09:22:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hdXJTP9lSUiU; Sun,  2 Aug 2020 09:22:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AFE9820454;
	Sun,  2 Aug 2020 09:22:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 77F4F1BF421
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 09:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 750D088031
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 09:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ICE7oHICku29 for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 09:21:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A5DF187FEA
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 09:21:56 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BC22120738;
 Sun,  2 Aug 2020 09:21:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596360116;
 bh=be34PBBJyc6qL1vpriQhJlTvltd+3yYKM1ILsPRj030=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A0WTxxVPKAYt+Yav8MlI4ckK6QyRkvG/FML0m7Z88nkruJRahxaqhWGEb+AXkRjoS
 MKZz/G6tF3IFGX1oKZih/xlSeVEn6+zjW/MCk8QRzOTMnmRI/StkmDi72j3yR4zy/D
 U3SnL26JoLWZ5CYxlPe+4kcHDgr0xab0XdCJfaD8=
Date: Sun, 2 Aug 2020 11:21:39 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Michael Straube <straube.linux@gmail.com>
Subject: [PATCH] staging: most: fix up movement of USB driver
Message-ID: <20200802092139.GA140088@kroah.com>
References: <7c18e466-0941-ee7e-9a0f-5a993c993152@gmail.com>
 <20200802091831.GA139182@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200802091831.GA139182@kroah.com>
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
Cc: devel@driverdev.osuosl.org, christian.gromm@microchip.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When moving the most usb driver out of staging, we forgot to remove the
subdirectory out of the staging Makefile as well.

Fixes: 97a6f772f36b ("drivers: most: add USB adapter driver")
Cc: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Michael Straube <straube.linux@gmail.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/most/Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/most/Makefile b/drivers/staging/most/Makefile
index a803a98654a8..7c10b84ebac0 100644
--- a/drivers/staging/most/Makefile
+++ b/drivers/staging/most/Makefile
@@ -6,4 +6,3 @@ obj-$(CONFIG_MOST_SOUND)	+= sound/
 obj-$(CONFIG_MOST_VIDEO)	+= video/
 obj-$(CONFIG_MOST_DIM2)	+= dim2/
 obj-$(CONFIG_MOST_I2C)	+= i2c/
-obj-$(CONFIG_MOST_USB)	+= usb/
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

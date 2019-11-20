Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFAD103BEB
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 14:39:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52F3E885FC;
	Wed, 20 Nov 2019 13:39:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Onh-BpYJN5no; Wed, 20 Nov 2019 13:39:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE9AE885D9;
	Wed, 20 Nov 2019 13:39:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5FA5C1BF379
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 13:39:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5D8EE885D8
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 13:39:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HObBEDW-3iYV for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 13:39:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E42B8885D9
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 13:39:15 +0000 (UTC)
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BEB4224FA;
 Wed, 20 Nov 2019 13:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574257155;
 bh=Z+eZq7iwaPRpNAmDEUhF3PizbEv3Dh2gfpmI5l4V05M=;
 h=From:To:Cc:Subject:Date:From;
 b=uBE6mFT2S2HqG0fxEeNser1ycs5Wah7tXw+553v0tnVu76p1E/2bfxulblhcJm445
 M2KCMFt1flU9UnhKlPQrdxQoKu4FI3MQG9sY0sd4ylQ5GSG2YhD41hinHq2qiYUNQs
 jwxrxF4zdDduA9a0oclRRcJewaFRIEPK5flDDcgU=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] staging: fbtft: Fix Kconfig indentation
Date: Wed, 20 Nov 2019 21:39:11 +0800
Message-Id: <20191120133911.13539-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/staging/fbtft/Kconfig | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/fbtft/Kconfig b/drivers/staging/fbtft/Kconfig
index d994aea84b21..19d9d88e9150 100644
--- a/drivers/staging/fbtft/Kconfig
+++ b/drivers/staging/fbtft/Kconfig
@@ -95,8 +95,8 @@ config FB_TFT_PCD8544
 	  Generic Framebuffer support for PCD8544
 
 config FB_TFT_RA8875
-        tristate "FB driver for the RA8875 LCD Controller"
-        depends on FB_TFT
+	tristate "FB driver for the RA8875 LCD Controller"
+	depends on FB_TFT
 	help
 	  Generic Framebuffer support for RA8875
 
@@ -132,10 +132,10 @@ config FB_TFT_SSD1289
 	  Framebuffer support for SSD1289
 
 config FB_TFT_SSD1305
-        tristate "FB driver for the SSD1305 OLED Controller"
-        depends on FB_TFT
-        help
-          Framebuffer support for SSD1305
+	tristate "FB driver for the SSD1305 OLED Controller"
+	depends on FB_TFT
+	help
+	  Framebuffer support for SSD1305
 
 config FB_TFT_SSD1306
 	tristate "FB driver for the SSD1306 OLED Controller"
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

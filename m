Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7074103BE7
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 14:39:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9DD02885E3;
	Wed, 20 Nov 2019 13:39:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yN4c+XVgAiqS; Wed, 20 Nov 2019 13:39:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CE60F87E3C;
	Wed, 20 Nov 2019 13:39:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FD9A1BF379
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 13:39:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D56A86C20
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 13:39:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h6xFnF6Un0bU for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 13:39:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E810486C08
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 13:39:02 +0000 (UTC)
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20045224FC;
 Wed, 20 Nov 2019 13:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574257142;
 bh=k/mv4PS0TLJKwjt0TZMF7T/0k8AV9H/Q16jTqG7uIuY=;
 h=From:To:Cc:Subject:Date:From;
 b=Rabewv/y32lMIGOLe4tNDHM38aoxfLCz6lEKA9krmxp1i7buorqMVPsyKrOo1GC1n
 NScw+IWF/K1O1L7Az40t5TzLAgzlyPC7uh+fotuimBAMHSnuqHsTZAUpNj2kSPkrbH
 gJQOEQls2mHu88UXqrVw5qIWyrHCA7zgpyWkILOc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] staging: nvec: Fix Kconfig indentation
Date: Wed, 20 Nov 2019 21:38:58 +0800
Message-Id: <20191120133858.13369-1-krzk@kernel.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>, linux-tegra@vger.kernel.org,
 ac100@lists.launchpad.net
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
 drivers/staging/nvec/Kconfig | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/nvec/Kconfig b/drivers/staging/nvec/Kconfig
index 5c12cacf75e1..9fa98c16f1d9 100644
--- a/drivers/staging/nvec/Kconfig
+++ b/drivers/staging/nvec/Kconfig
@@ -8,7 +8,7 @@ config MFD_NVEC
 	    controller.
 
 	    To compile this driver as a module, say M here: the module will be
-            called mfd-nvec
+	    called mfd-nvec
 
 config KEYBOARD_NVEC
 	tristate "Keyboard on nVidia compliant EC"
@@ -18,7 +18,7 @@ config KEYBOARD_NVEC
 	  a nVidia compliant embedded controller.
 
 	  To compile this driver as a module, say M here: the module will be
-          called keyboard-nvec
+	  called keyboard-nvec
 
 config SERIO_NVEC_PS2
 	tristate "PS2 on nVidia EC"
@@ -28,7 +28,7 @@ config SERIO_NVEC_PS2
 	  to a nVidia compliant embedded controller.
 
 	  To compile this driver as a module, say M here: the module will be
-          called serio-nvec-ps2
+	  called serio-nvec-ps2
 
 
 config NVEC_POWER
@@ -39,7 +39,7 @@ config NVEC_POWER
 	  nVidia compliant embedded controllers.
 
 	  To compile this driver as a module, say M here: the module will be
-          called nvec-power
+	  called nvec-power
 
 
 config NVEC_PAZ00
@@ -50,5 +50,5 @@ config NVEC_PAZ00
 	  devices, e.g. Toshbia AC100 and Dynabooks AZ netbooks.
 
 	  To compile this driver as a module, say M here: the module will be
-          called nvec-paz00
+	  called nvec-paz00
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

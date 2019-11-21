Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40041052FE
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Nov 2019 14:29:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D14F88846;
	Thu, 21 Nov 2019 13:29:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hj+yhliLoPd1; Thu, 21 Nov 2019 13:29:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2AE888800;
	Thu, 21 Nov 2019 13:28:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 28F3E1BF844
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 13:28:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2579288805
 for <devel@linuxdriverproject.org>; Thu, 21 Nov 2019 13:28:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kd5LRXeKlVMx for <devel@linuxdriverproject.org>;
 Thu, 21 Nov 2019 13:28:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A70DC88800
 for <devel@driverdev.osuosl.org>; Thu, 21 Nov 2019 13:28:55 +0000 (UTC)
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5DE222070B;
 Thu, 21 Nov 2019 13:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574342935;
 bh=KDXZLoZXII0XBYiXxrDn8rRTuxKp5hQffiXRs1dksfI=;
 h=From:To:Cc:Subject:Date:From;
 b=rHHWHGGMDd8c5KD9Vxi2iNLjJlNUZiFZPr2FpoQlumnebSp0HyNhcz5VhLZ/swDTf
 IN/XxtfUi5pCIG7qM1NBXhED54nhmve7ic9DLnspvYZea6ti6+CUi2mdNcmgzl2nQa
 +QT0ajVcd0GayhN1cqY5hDvO+cNwp9SdvfsAt+a8=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] staging: fwserial: Fix Kconfig indentation (seven spaces)
Date: Thu, 21 Nov 2019 21:28:51 +0800
Message-Id: <20191121132851.29072-1-krzk@kernel.org>
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
 Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adjust indentation from seven spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^       /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/staging/fwserial/Kconfig | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/fwserial/Kconfig b/drivers/staging/fwserial/Kconfig
index d21124a1a127..6964aac2a7ed 100644
--- a/drivers/staging/fwserial/Kconfig
+++ b/drivers/staging/fwserial/Kconfig
@@ -1,8 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0
 config FIREWIRE_SERIAL
-       tristate "TTY over Firewire"
-       depends on FIREWIRE && TTY
-       help
+	tristate "TTY over Firewire"
+	depends on FIREWIRE && TTY
+	help
 	  This enables TTY over IEEE 1394, providing high-speed serial
 	  connectivity to cabled peers. This driver implements a
 	  ad-hoc transport protocol and is currently limited to
@@ -14,17 +14,17 @@ config FIREWIRE_SERIAL
 if FIREWIRE_SERIAL
 
 config FWTTY_MAX_TOTAL_PORTS
-       int "Maximum number of serial ports supported"
-       default "64"
-       help
+	int "Maximum number of serial ports supported"
+	default "64"
+	help
 	  Set this to the maximum number of serial ports you want the
 	  firewire-serial driver to support.
 
 config FWTTY_MAX_CARD_PORTS
-       int "Maximum number of serial ports supported per adapter"
-       range 0 FWTTY_MAX_TOTAL_PORTS
-       default "32"
-       help
+	int "Maximum number of serial ports supported per adapter"
+	range 0 FWTTY_MAX_TOTAL_PORTS
+	default "32"
+	help
 	  Set this to the maximum number of serial ports each firewire
 	  adapter supports. The actual number of serial ports registered
 	  is set with the module parameter "ttys".
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

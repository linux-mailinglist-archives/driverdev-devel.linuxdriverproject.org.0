Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A87103BE9
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 14:39:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8F45E885F1;
	Wed, 20 Nov 2019 13:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vRUUt8H94vz3; Wed, 20 Nov 2019 13:39:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B79D9885D5;
	Wed, 20 Nov 2019 13:39:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA1251BF379
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 13:39:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E70FF20438
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 13:39:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DexVvvUCuwCM for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 13:39:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 4B1C1203DE
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 13:39:11 +0000 (UTC)
Received: from localhost.localdomain (unknown [118.189.143.39])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDFCC224FC;
 Wed, 20 Nov 2019 13:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574257151;
 bh=e7qNNmsSecBU8hJ2XxG0kI51Dv6sbTVW7xZ1AeP3diU=;
 h=From:To:Cc:Subject:Date:From;
 b=G4mPsB4C3OxVOv8OFWCQ8Jf8WnA7vHVOuDtIOkuum+7Xx9EPVUYKIa3U463eGvOes
 xiGleVKSE3WUTBg9CX2JHqPesBh4a/ADFA8n0V4qwDy+lNSWGgnHOSg6XQuxHWo0Il
 FeGWFC22EKEcD5AgnWPKEPw86fgly99oeoG/ZCUw=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] staging: fwserial: Fix Kconfig indentation
Date: Wed, 20 Nov 2019 21:39:07 +0800
Message-Id: <20191120133907.13483-1-krzk@kernel.org>
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

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/staging/fwserial/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fwserial/Kconfig b/drivers/staging/fwserial/Kconfig
index 9543f8454af9..d21124a1a127 100644
--- a/drivers/staging/fwserial/Kconfig
+++ b/drivers/staging/fwserial/Kconfig
@@ -3,7 +3,7 @@ config FIREWIRE_SERIAL
        tristate "TTY over Firewire"
        depends on FIREWIRE && TTY
        help
-          This enables TTY over IEEE 1394, providing high-speed serial
+	  This enables TTY over IEEE 1394, providing high-speed serial
 	  connectivity to cabled peers. This driver implements a
 	  ad-hoc transport protocol and is currently limited to
 	  Linux-to-Linux communication.
@@ -17,7 +17,7 @@ config FWTTY_MAX_TOTAL_PORTS
        int "Maximum number of serial ports supported"
        default "64"
        help
-          Set this to the maximum number of serial ports you want the
+	  Set this to the maximum number of serial ports you want the
 	  firewire-serial driver to support.
 
 config FWTTY_MAX_CARD_PORTS
@@ -25,7 +25,7 @@ config FWTTY_MAX_CARD_PORTS
        range 0 FWTTY_MAX_TOTAL_PORTS
        default "32"
        help
-          Set this to the maximum number of serial ports each firewire
+	  Set this to the maximum number of serial ports each firewire
 	  adapter supports. The actual number of serial ports registered
 	  is set with the module parameter "ttys".
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

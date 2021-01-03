Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE4B2E8E82
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Jan 2021 22:40:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B55AC8704C;
	Sun,  3 Jan 2021 21:40:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z4T+iVgdm0Ob; Sun,  3 Jan 2021 21:40:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1BD1187040;
	Sun,  3 Jan 2021 21:40:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 05E5A1BF322
 for <devel@linuxdriverproject.org>; Sun,  3 Jan 2021 21:40:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0253486503
 for <devel@linuxdriverproject.org>; Sun,  3 Jan 2021 21:40:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ax3DuBkZyO5T for <devel@linuxdriverproject.org>;
 Sun,  3 Jan 2021 21:40:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8E62986501
 for <devel@driverdev.osuosl.org>; Sun,  3 Jan 2021 21:40:39 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 99523207C9;
 Sun,  3 Jan 2021 21:40:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609710039;
 bh=X0Qnf29HvUG5MVRglG62WSELeOBBKlggCIn7y1gKqAQ=;
 h=From:To:Cc:Subject:Date:From;
 b=euCS7wCByJf2ytbpHmzliXnBAPCBP+kng8zlCoMHX8V2iMaVOVb/jNKR41/xt4ibs
 9SqDPlUGxJ7e54/jv7UoUC3+cEAW+HgYL/s915ai8k18SudPCIhD+GY0aJp3Npco8r
 H1M2BvxONrw47E3dUPxXrGPhO7Ml/rgLG7icmZjjZzuQhe+uKstj5C/aTSN4XO1VcQ
 2C1qZriJ8ernUuXTNQvpOtBNB9cE5BHItZOYRdZUO4ExtqUR203svEjxib5yeO7AFp
 o2oOUPhTDPRUL9JLAgwQiRDPYGY2LI7KSAZbyTZ4bm3Mjkbwl86hJ5/8n43+zmqwAW
 EMgz6LI0ZSpIA==
From: Arnd Bergmann <arnd@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl819x: select CONFIG_CRC32
Date: Sun,  3 Jan 2021 22:40:28 +0100
Message-Id: <20210103214034.1995821-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Arnd Bergmann <arnd@arndb.de>, Necip Fazil Yildiran <fazilyildiran@gmail.com>,
 linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

Without crc32 support, the drivers fail to link:

ERROR: modpost: "crc32_le" [drivers/staging/rtl8192e/rtllib_crypt_wep.ko] undefined!
ERROR: modpost: "crc32_le" [drivers/staging/rtl8192e/rtllib_crypt_tkip.ko] undefined!
ERROR: modpost: "crc32_le" [drivers/staging/rtl8192u/r8192u_usb.ko] undefined!

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/rtl8192e/Kconfig | 1 +
 drivers/staging/rtl8192u/Kconfig | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/staging/rtl8192e/Kconfig b/drivers/staging/rtl8192e/Kconfig
index 03fcc23516fd..963a2ffbc1fb 100644
--- a/drivers/staging/rtl8192e/Kconfig
+++ b/drivers/staging/rtl8192e/Kconfig
@@ -3,6 +3,7 @@ config RTLLIB
 	tristate "Support for rtllib wireless devices"
 	depends on WLAN && m
 	select LIB80211
+	select CRC32
 	help
 	  If you have a wireless card that uses rtllib, say
 	  Y. Currently the only card is the rtl8192e.
diff --git a/drivers/staging/rtl8192u/Kconfig b/drivers/staging/rtl8192u/Kconfig
index ef883d462d3d..f3b112a058ca 100644
--- a/drivers/staging/rtl8192u/Kconfig
+++ b/drivers/staging/rtl8192u/Kconfig
@@ -5,6 +5,7 @@ config RTL8192U
 	depends on m
 	select WIRELESS_EXT
 	select WEXT_PRIV
+	select CRC32
 	select CRYPTO
 	select CRYPTO_AES
 	select CRYPTO_CCM
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6952E343E0C
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 11:36:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD6C5605CD;
	Mon, 22 Mar 2021 10:36:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L7Bhndx7t81S; Mon, 22 Mar 2021 10:36:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C304605C2;
	Mon, 22 Mar 2021 10:36:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AD28F1BF3A1
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 10:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9B87D402B2
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 10:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UGVAG0sMLo4Y for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 10:35:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5233C402AD
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 10:35:49 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EC0176196F;
 Mon, 22 Mar 2021 10:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1616409348;
 bh=9rqVGkwYGZJxK/AGPwtJFqRPeHaoL8wIILYKBok34r4=;
 h=From:To:Cc:Subject:Date:From;
 b=HQKezWEm8wNqf1V7MQfWl7VHYkmqAw6oVJPEezvuKMjP1HFR2JrgoFHXj+S8T48Yy
 GeEaimTC8DIDH7Dc/2pfA3+q6sp3UYFb35qwVUFnI17aDZlcxi9QKiukhMuM6uceoh
 U0pjgZmzFjbJVZY3NmAsJKEo7+2G/9Bvi1JBAvxzLPOUIHCx5fkuZ3xn031n0nC2z7
 z+BGrneGPteuAXx0EaxbhD9vyPZKu5eHVAerUJz6+7d/LXAyy4ofyOUt2Bc4pHnRxp
 2KyGEdQTO2JyvSWaQILBVzffHUvkCzqvT4a4pPIMzJzMKL3BzTan6hkNZ73WKr8H2b
 4H8czhxrIbDxg==
From: Arnd Bergmann <arnd@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging/rtl8192u: avoid Wempty-body warning
Date: Mon, 22 Mar 2021 11:35:39 +0100
Message-Id: <20210322103545.704121-1-arnd@kernel.org>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Arnd Bergmann <arnd@arndb.de>

This driver has a few disabled diagnostics, which can probably
just get removed, or might still be helpful:

drivers/staging/rtl8192u/r8192U_core.c: In function 'rtl8192_set_rxconf':
drivers/staging/rtl8192u/r8192U_core.c:767:45: error: suggest braces around empty body in an 'if' statement [-Werror=empty-body]
  767 |                 DMESG("NIC in promisc mode");
      |                                             ^
drivers/staging/rtl8192u/r8192U_core.c: In function 'rtl819xusb_rx_command_packet':
drivers/staging/rtl8192u/r8192U_core.c:883:80: error: suggest braces around empty body in an 'if' statement [-Werror=empty-body]
  883 |                 DMESG("rxcommandpackethandle819xusb: It is a command packet\n");
      |                                                                                ^

Changing the empty macro to no_printk() to shut up the compiler warnings
and add format string checking.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/rtl8192u/r8192U.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
index ec33fb9122e9..4013107cd93a 100644
--- a/drivers/staging/rtl8192u/r8192U.h
+++ b/drivers/staging/rtl8192u/r8192U.h
@@ -46,9 +46,9 @@
 #define KEY_BUF_SIZE    5
 
 #define	RX_SMOOTH_FACTOR		20
-#define DMESG(x, a...)
-#define DMESGW(x, a...)
-#define DMESGE(x, a...)
+#define DMESG(x, a...)  no_printk(x, ##a)
+#define DMESGW(x, a...) no_printk(x, ##a)
+#define DMESGE(x, a...) no_printk(x, ##a)
 extern u32 rt_global_debug_component;
 #define RT_TRACE(component, x, args...) \
 	do {							\
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

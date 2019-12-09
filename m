Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3D911705C
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Dec 2019 16:26:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 152BB8829B;
	Mon,  9 Dec 2019 15:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y72M-zirEcfo; Mon,  9 Dec 2019 15:26:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6FBFF87A30;
	Mon,  9 Dec 2019 15:26:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A70DB1BF3BD
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 15:26:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9E77186DF3
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 15:26:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8GAl5FCJcNvc for <devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 15:26:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 62560868A8
 for <devel@driverdev.osuosl.org>; Mon,  9 Dec 2019 15:26:06 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M42fG-1ieKid0LRY-000151; Mon, 09 Dec 2019 16:13:03 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: "David S. Miller" <davem@davemloft.net>, Krzysztof Halasa <khc@pm.waw.pl>
Subject: [PATCH 1/4] [net-next] wan: remove stale Kconfig entries
Date: Mon,  9 Dec 2019 16:12:53 +0100
Message-Id: <20191209151256.2497534-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:CkrStfIYTzF8e0ZsmC4BTh+wVolul/QnLLzXa343jmnTeqwbqXb
 LsR93n5bWNb02++P6oufU6SKVuU5KdLPlFk+yzjXmriasdpR0ZgMaS9T8iFXzhooaEPI5Lq
 kRJOXUmecRs60oPAGVp4YirW5D5iMLEUdLKey9SWT/TK0HdtUrzvLPtu+VIjpPmrRbdWYsM
 LXf0J0p37numsUlcpjfZA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:BwAPd3Ehk5M=:aNGEGrY2ccjKxCX8uLDqSF
 HTUQQqeHxc5W5113c39BzazZKWSmWAskcCg3EkEI2vONt9l9YNphH3d9ORwPSOP9TEojytFHZ
 fCRHjnnKTGoA3A1e0CEvWJOrh/g/pmnOoRk4Q4gPraGE6G9MhCluvSLTHVDW8SRCQqoTdOtJ9
 2c7EMDiQOaXOpyHXbjX3gnoJfyIHaTm882NGi1va6rn27Nl90J6yZPCTyAlmhNRri1nuuYhOS
 B6o9rX9A2G6yvKBjdb5+SbagmL2ItydbuQO6d7DBY2g/i8IaqPtz/l5kUT7DAq8QIQKsUkSgM
 uzqPE2gp0NnY6xxGE3eyn++ZZMIgirl5Uuf/IWyDLfCgv2ECgk28OogVGQTfDlw3200Nk2D9E
 Yxsh4WiBXiOaDw29BATGp5EN8VXo9hJ4rcNdmwrg5YctwQMQ3kBknwzenYP9/EYdsOmUEBQXc
 caDgXOdoULAUKjb+9hWHz5Dop/j6mdWyujzJCPv2y9bRbXUeESoypbCDizKUhQTBHxxPLSDXp
 SS7l+qHbh6gpmyCHYwpt2YLn6rQ7qe4nG68GBILA7pK3U8IGUh/YzECKS4klCXIryPNkPpKMl
 Ia7km2nIwHgf+bn45i5iXl6d5YMcI20X00q74bAh28S9WfLxBJHABZWKcufLE9IhanvcILnNa
 +m6N/PhLEoEuPQogCGEMGXC6ZKONjTFXYFh1rea5XO4I1o3YOQR/e07eYRXVkogu6bKYlbt52
 GbyK6T85kXR8gK9e3hAwiSRXm9M335qKkO7+RxmfVrA5yJRCoiXSgWmj0JX/kCmU08hUZ5YQQ
 547sZ07YnH0mog43/Qdup0tFE62A9QXCzCy4wkcZl0hOPSyly0Ae9CiDmPqnfoZxgfozhOorD
 PaFobXkGjzM3fxFTbYbw==
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
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The dscc4 driver was recently removed, but these
Kconfig entries remain, so remove them as well.

Fixes: 28c9eb9042a9 ("net/wan: dscc4: remove broken dscc4 driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/net/wan/Kconfig | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/drivers/net/wan/Kconfig b/drivers/net/wan/Kconfig
index bf2fe1d602ea..59b25d7e13e8 100644
--- a/drivers/net/wan/Kconfig
+++ b/drivers/net/wan/Kconfig
@@ -289,30 +289,6 @@ config SLIC_DS26522
 	  To compile this driver as a module, choose M here: the
 	  module will be called slic_ds26522.
 
-config DSCC4_PCISYNC
-	bool "Etinc PCISYNC features"
-	depends on DSCC4
-	help
-	  Due to Etinc's design choice for its PCISYNC cards, some operations
-	  are only allowed on specific ports of the DSCC4. This option is the
-	  only way for the driver to know that it shouldn't return a success
-	  code for these operations.
-
-	  Please say Y if your card is an Etinc's PCISYNC.
-
-config DSCC4_PCI_RST
-	bool "Hard reset support"
-	depends on DSCC4
-	help
-	  Various DSCC4 bugs forbid any reliable software reset of the ASIC.
-	  As a replacement, some vendors provide a way to assert the PCI #RST
-	  pin of DSCC4 through the GPIO port of the card. If you choose Y,
-	  the driver will make use of this feature before module removal
-	  (i.e. rmmod). The feature is known to be available on Commtech's
-	  cards. Contact your manufacturer for details.
-
-	  Say Y if your card supports this feature.
-
 config IXP4XX_HSS
 	tristate "Intel IXP4xx HSS (synchronous serial port) support"
 	depends on HDLC && IXP4XX_NPE && IXP4XX_QMGR
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

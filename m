Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D2A18D6A0
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 19:14:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5109F25E37;
	Fri, 20 Mar 2020 18:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9f0xFFQPzzmr; Fri, 20 Mar 2020 18:14:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 33C7121539;
	Fri, 20 Mar 2020 18:14:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BA25A1BF317
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 18:14:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B28F4888A4
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 18:14:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f0+gGJnVsX-6 for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 18:14:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D05088874
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 18:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584728066;
 bh=NVeH1dn/ScU37/5w8nAopqBEabpDsLhr8PY522Oluf4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=byjtBHFYxpwYw471ZevoY3znIOQpJT4UPv2P5NGrIYHZzxMA1oCwRoKn3QmcwCxB8
 FTB8VkxIy9P5tx31BeAKhHX3p/Vg6B/knShXMMwRGb/Zfkk39X8clO61oshnSZfHwF
 SKeFfZDutDfkFeyoRUUj3OtvO3enchP0bNLhlnp8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1N7zFZ-1jKIEs3q9D-014y8B; Fri, 20 Mar 2020 19:14:26 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Use BIT() macro in vnt_mac_reg_bits_*
 functions
Date: Fri, 20 Mar 2020 19:13:26 +0100
Message-Id: <20200320181326.12156-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:japkTAZTvJrWPT6iJs0JHtU2NsctqO1+FSu2OWQ+Yt+bbaOGmPd
 RVb9VKbF8MpuokKF2fXXRIuYCajnrH1hwx1dDyyMjacRRhp93/FkcZzAty49Xk4CWIl0yr5
 p/boc7X632/Txp3Zu7hNBT7GOR1Fwx9D9PtVx2TTXOYOmoBUYpxfu8Fvrw08Nw4uakDTmYg
 J6bT/dBIJ/+iw+wxv6GAA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:+3GjvuRnz/Y=:vFxGFFT5TELS3m8Xv/Av9f
 bFkZoQGaNhuTnC5yElBDg3orTyD7JiUCJoiJyLLcaYL556yjDnHNJKoUEMJqinJIZTyIaxmct
 auP6uVbDSshq+lWcSu0JkD3fBYB20WRGgAskSwmtWxQeVop0MvwRs6ynP3vYDdjtLuNx4GeLR
 AuYIuYRTcSbQaP9CtDQ0QLYpgfygM74/pxJlHY46tzBFgNfsSpILD/J5q6iFhpu0DieaMH3dr
 E5zlrKBl8G3reNBpijYBfRumvNFlmC29i+6lHzFN5RaYISDTXO+O8VOQiY/wejQS0rRLFUTtd
 sbt67aU3Q3xXC/nm6Tj2SNf82O4wht00q0DozpL3HY2ahOtPWmNS30SpeqbxxMiRJ+/QMlVh5
 dIeRCUEJ3aRxnFfvY+zdmo0CBhjWRYLbsl14wDUEbHWP+l8h+J6inXGpjVQUEZ24L+Wg5IuJH
 P1QLb1LHrdXvExSqqBl8w5hLOvbd86xEBLIvYEZrn6FYzz7iq/faNylbf2IvSq4fr7JExYBYs
 P5Bxq2SqxjH/XDeDVEZe1kkS72FwzJUh8s7skI1utNaSQ2vmZYhsP1fTymdvtWXIIh9kdzSiQ
 fcY5cPlfDp6tefnWyzRR6vsquOd8gXv6+O2L/t+WpVFc+zVB8oekveHnsRMB/ZogsRzLNnA/8
 lLDh9PdfibKVqydz6AJQmNpPXH2xJsJoHa29T+Rwg6Ur/96geFijs5+CCA7i4sA9zxjDCYlKI
 GVGii4nf+LEbp9BdQFGLuFqu58W1lWg2TWlxQvuHWv8E0lXYfLu/PT9I0NUw4kVVm/ADMezr7
 ymM3RlbIs7ZwFfiuKDVL+0VMLH8L+2kd+hKMHGQ//70147Cu6A1jsLLJydOv2oGQvwWmXFN+n
 ON0XXoaB7PpZE59PQCGLZn1t1sFIGgHwFyBR2E+hHfzGivcUEpNmnIZPHp855KNOG6ya9Sanr
 TR4d2XBgn4VVMgoWeDfLAVyEY6YcGApnwRxG7VT+Lh2znLpaRp9st80EDUTEO+GRawbdT7QQK
 +1yWfTOPCHGLnYyZjv7BoPePLeI9oBNEzjipR9ZG4hguZrK8atGFuCxyzIF9VdY5M81nDswb2
 gARwBj8U9bSEycurNkc4Gw7w3ah4u6HO9C1rQY/yJ5fUZwO1tjw58qxAPvpniSm9rDAJESKs4
 aNI84XFMl6my5wTEPQdd36QDPa7xdkLXp+dkfndb9/5BJxY2eQAcylTc0TAJ1s7wvmZm4jb++
 MTkXNWjw/SoSndo3T
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The last parameter in the functions vnt_mac_reg_bits_on and
vnt_mac_reg_bits_off defines the bits to set or unset. So, it's more
clear to use the BIT() macro instead of an hexadecimal value.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 5 +++--
 drivers/staging/vt6656/card.c     | 4 +++-
 drivers/staging/vt6656/main_usb.c | 3 ++-
 3 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index f18e059ce66b..a29d9f4f575e 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -22,6 +22,7 @@
  *
  */

+#include <linux/bits.h>
 #include "mac.h"
 #include "baseband.h"
 #include "rf.h"
@@ -468,7 +469,7 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		if (ret)
 			goto end;

-		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, 0x01);
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, BIT(0));
 		if (ret)
 			goto end;
 	} else if (priv->rf_type == RF_VT3226D0) {
@@ -477,7 +478,7 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		if (ret)
 			goto end;

-		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, 0x01);
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, BIT(0));
 		if (ret)
 			goto end;
 	}
diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 7958fc165462..dc3ab10eb630 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -26,6 +26,7 @@
  *
  */

+#include <linux/bits.h>
 #include "device.h"
 #include "card.h"
 #include "baseband.h"
@@ -63,7 +64,8 @@ void vnt_set_channel(struct vnt_private *priv, u32 connection_channel)
 	vnt_mac_reg_bits_on(priv, MAC_REG_MACCR, MACCR_CLRNAV);

 	/* Set Channel[7] = 0 to tell H/W channel is changing now. */
-	vnt_mac_reg_bits_off(priv, MAC_REG_CHANNEL, 0xb0);
+	vnt_mac_reg_bits_off(priv, MAC_REG_CHANNEL,
+			     (BIT(7) | BIT(5) | BIT(4)));

 	vnt_control_out(priv, MESSAGE_TYPE_SELECT_CHANNEL,
 			connection_channel, 0, 0, NULL);
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 5e48b3ddb94c..1196b6e28c22 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -21,6 +21,7 @@
  */
 #undef __NO_VERSION__

+#include <linux/bits.h>
 #include <linux/etherdevice.h>
 #include <linux/file.h>
 #include "device.h"
@@ -370,7 +371,7 @@ static int vnt_init_registers(struct vnt_private *priv)
 	if (ret)
 		goto end;

-	ret = vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL0, 0x01);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL0, BIT(0));
 	if (ret)
 		goto end;

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

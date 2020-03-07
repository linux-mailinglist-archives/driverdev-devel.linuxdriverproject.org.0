Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1925B17CDAF
	for <lists+driverdev-devel@lfdr.de>; Sat,  7 Mar 2020 11:51:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E7A8884DE;
	Sat,  7 Mar 2020 10:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ek3rKv6sqOI; Sat,  7 Mar 2020 10:51:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E11DB884B2;
	Sat,  7 Mar 2020 10:51:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 168351BF5F8
 for <devel@linuxdriverproject.org>; Sat,  7 Mar 2020 10:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1275885085
 for <devel@linuxdriverproject.org>; Sat,  7 Mar 2020 10:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uBwal49DFQVy for <devel@linuxdriverproject.org>;
 Sat,  7 Mar 2020 10:51:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 33AEF85640
 for <devel@driverdev.osuosl.org>; Sat,  7 Mar 2020 10:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1583578227;
 bh=m/2yOii9GTOFmXitzlRFIRYOK4ogqrwhgzd5gIHiD2c=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=CrlEqLGfTluS781kQikcgSfuMNXwVTycxpScN4ET7vkgVn/zRuKQdx9C6XiCjPgpF
 OXN0MTEGOB3qMSsTVy2jBnA0Xh9HZcWW9+dajJX0QmMYsksVQtk9urCxoRnq3NQScz
 aUS3P/ymbRzuLweRDE8UiHlB0rrS2PUjWo0opWUc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MZTqW-1ioxbJ1T0A-00WY6y; Sat, 07 Mar 2020 11:50:27 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Use BIT_ULL() macro instead of bit shift
 operation
Date: Sat,  7 Mar 2020 11:49:29 +0100
Message-Id: <20200307104929.7710-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:jWIm+lfcudgmy2y27XLt/W6/L36/oomYEd3rwqai1CelUY23z3h
 C57pIPeR6zLhm8xl1G1W8aZDffT4bY7dYSb3ANGBbO0BX0R2mlIp2JHW5P9u1w5vw4Bu1W/
 ggH112BFIFhQNd+vDjFQtuE5+i5A718+WfPPe6OYRIbnNXsOndB/RmG8UJy6j75dTleh3+P
 ZxRutwIYi3KgJPcW8z7QA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:zF6BmCqcQmc=:iJO98o1L7n/lsy2XwjsOw5
 nBS15YSBF0xJwAFdU/3m+GAhnmLuWhHxGVo8Uk6Z3aEZo9iULEHfhzo03kBzsPugMCnr5XKEv
 gxGKvcJuU7yxuv4nABCBwdlMqQLueMq5/zLcT8zPMNtzatbu4Riby3gm/iHHgvcs/TZ2cnkd4
 UaV3HeSlrq6dvgrp3bsSpAceJ/J7y0IAbhxQXgReFYZGFXaezVKZqVFVPsUDT0m6MaN8e6/H/
 nf/OulJdjaJHJ6wr1h0QXsXSYwjJlzo9jqS2MpcKuIZ/qs9RymPcel+Vi2o2G4C0csvkVb/s8
 DUXyRWnDCcFubEbZ5I8Op/rAWzpgnjv9+e64GZGTATtChhA2ngQHv4+HrIq2000FgRE016iQR
 ziQ/5MbdSCKejawrh1x4Z1djiy3UMN7F+N/uptmAyAEyBuTqd3TSlz4SyI7075MUjEV52wDPx
 WAiQwetlTlVz12u/NBOPxjLeN2ETbxuzbAwlRduDt+VxHweyBL8GytoS9v57zhyLvCiRC/ged
 5ZKv8eRiBIqj3NkKSJoQKa4HC1Kr5Hx0S6EB8f2F8IYBZfhvZn1rrjq1LJv1lxznk0f3x/VgS
 ORZDULM+iEXbORPn1ntY4RhJBBTbgiars0V2kZu2iq0bf5UQ5azacrPCOXOxD1f/xEUTW/Sh5
 bdh10eqUSt4fPyZMGWDBdCJ1aS+qN7J/VSX/PDqf+uL2nzGP/ShJjCfDeUGDM6GDHygefr16w
 +7ENfqJwNlAIxMts+uIlj4haa5zEXC4AaBzjKFUEOqGnQUw0VPXUw+9Tdju6WcAKvYgtcLFhx
 AO8437daahzDzpizmWKo26yW6Pph0LJJ1mD60q/lzsu9lRJqhek6hRpvQUwCELPlIcC+jyrSq
 qDkQmENt4qmKiPltFEF7okzZDNMnMSy33lelQMkp23Vqm4UcWsG+AoMVtuFqHsJZdiEVBSGle
 dQtsE8B4P7VYdwOHCN2IXhdOpco8sMROqe2G9SDfbf3E0jptrGO4EdJA2SP4HoK9VAf4IyPaP
 90LjOPmxHRmGNToubNPB1py9e09WxPISPgkMelSdH7OXHPEESiAXhTqvO31R6CZU64BatHAp5
 dzxiO/NghwFcaQXZZO+ThxPzHw9odTEWA5t21gsBOpAz1mx6vHRVtz/j4FzEF4l1X379xJNPB
 gnYKF0r8Fc2Zc/AZuzTvc4+T0YrLxzuvOFNuXtlVUiLFZXXtOlYiaU+d7kyYi9M45tBMOOkHb
 nSeR96LgmWy1uwV5h
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

Replace the bit left shift operation with the BIT_ULL() macro and remove
the unnecessary "and" operation against the bit_nr variable.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/main_usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 5e48b3ddb94c..f7ca9e97594d 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -21,6 +21,7 @@
  */
 #undef __NO_VERSION__

+#include <linux/bits.h>
 #include <linux/etherdevice.h>
 #include <linux/file.h>
 #include "device.h"
@@ -802,8 +803,7 @@ static u64 vnt_prepare_multicast(struct ieee80211_hw *hw,

 	netdev_hw_addr_list_for_each(ha, mc_list) {
 		bit_nr = ether_crc(ETH_ALEN, ha->addr) >> 26;
-
-		mc_filter |= 1ULL << (bit_nr & 0x3f);
+		mc_filter |= BIT_ULL(bit_nr);
 	}

 	priv->mc_list_count = mc_list->count;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

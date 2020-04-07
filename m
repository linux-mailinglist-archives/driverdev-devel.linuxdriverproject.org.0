Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D0A1A1163
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 18:31:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF8F587C76;
	Tue,  7 Apr 2020 16:31:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eC2PKNg1ZqQr; Tue,  7 Apr 2020 16:31:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CFA0F87C70;
	Tue,  7 Apr 2020 16:31:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF6751BF47F
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id ABB3987B2B
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 16:31:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v6IdiiXR6P7K for <devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 16:31:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4285187ACE
 for <devel@driverdev.osuosl.org>; Tue,  7 Apr 2020 16:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586277048;
 bh=sgFBcuEhJ09mNWZg34/SHX56SC+2GL9Chr9TTaUeP1s=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=jAeeiq8O37DIgn86++v52pz6abQzqk8q2GvBdYWbXyjsbslLvM5GYwplpqNy0MUMm
 v2cFFMXIWeQXKDCCg+S7VYPu+KAD8viGtH42Bnl0TMtSmYYCF12ckO5vkFt8AXHFln
 2/6UaW+6jn7eg9H3+wqYIO/ex+TH6AEyucIufvWA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MirjS-1ipqDk1z6q-00exHd; Tue, 07 Apr 2020 18:30:48 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: vt6656: Use define instead of magic number for
 tx_rate
Date: Tue,  7 Apr 2020 18:29:58 +0200
Message-Id: <20200407162959.7318-2-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200407162959.7318-1-oscar.carter@gmx.com>
References: <20200407162959.7318-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:szOayLQTAId7qo7NZHx+GS0NJkVobbE+8kh0SBj1Vzt8VOCnrLb
 7prfRQgPnbAcLNmGEadMG+UrXL6t9H1IAFTQFOMaXA1UFufJdWF9rK4ZH6UbqKF83dV9sir
 hJZT8SZv1/uq5H5+rflLgcnx9WHENFR0pFD+8CHnm19AiOfbBWUrE/NO9I+9YMjmQPLIInR
 hDlWJHmAVs/3MGHbVWnXA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:9q6i7Pi+KZs=:liAxVS0Sfys8sbMV+1krZD
 GSDfkUf0M3erwlSu4xcmTnwwVH0CCs8e4ZgfB1GtOLzMihnM8fd3Z1uQLSOpjuEEeTWN+sAOU
 k5giVl0TdfI7GDHo7pBxiAc39pG4u7erXdkbWdWl4RXGGunpWbvD8dQDeAvhcuUx7GbKdQJmi
 N8f1q2HbFmAiEaueZc3rv4omPIM6rrrLo0BVnOL320099qaohKTsjQgYXbUNCBBUIC2OVTuNG
 9welrHpM2vCFETiHfg9/nxs9A6RA2DSgnIBm+HOv+JO0xxvSxV76eRMlk9tU8GryxW2WYRj7X
 5IrK/jAsL5qZHxqGxC6pLP+h+lnvKU/vKdssMsEq8XaO0prP7Dyo17VYoDCZo1SzW9t+SGzhx
 YK3kNIjGon4nELMO1eb9ijnOwfmFde5adv1dvm0bKhxY3MLiOuwngHaNNVBz15OdMHZvUAyXg
 daBRiuXvrlD54vYuknJsB9rYLVZeQjHxrFFoV+pN8IyWoz/sygVrtDJHMi2RZ5pIaouo6dndW
 hkPmglSqR4D7LF+yjbCYBXlfuTgoXJZYeH++QGJYj8O1xMuze7uMZ2wMDAObG9UGfyOEj1T3x
 a7z6+K5h4+oMbJiUcs1iRtQuYo35LXdJTtkHM1SIk5bFSDzGTm6rkG8dLJDgAcLRdkHcuwBtk
 ttxO034yFgG5ncoh3+6DUOwq4PY/fgkQyOx8JUjI9vDY7oXRBcBOw3EBUKtKmIM3BxUp7N6G7
 8iJyF8TLn728r3QSmpcsUOifZPamWWg49uUG5gRZaW8rHdRx7ooJqa2rEOJHc4UIFGm6R0Gh8
 ZE8EEbwqif9b44NhOTbWpjj33zP7htBN63v4Ey3WfEl962zmVgSuhEcTNJZqy2yKTLVVrrzw0
 5U0BeVv3s1RdvYfJ+E9ogGRUjO0AaZNhAtLFk+qVk1gLAqNwBwUipkx0b/q8FNH+uwHML7G+H
 vpXFG3ELgKKZOLnNRP0DkIeL34jZri+WNRfMtWSxCVSqDKuo7JHopTVk3CwXveCrbOl/u/aax
 Bt7mnSFfjUWZki1Dy7Mw378RVx5MmNysKWsSG0YfXlKC87qmEzATLy/V/AQCTcnE779is1Tdm
 h6tPIWfsgIDoxij7ra6In1BMWwTyqr4Mc7LWA3OMZE9BkKAoV6V0rpoBFm9+vhoGu1Cg6Cxiz
 /lUZhIx6G0z5Fg16CzFv5zzJF2lEoLtnlYSlFBMid1axRJh7IsQGZLwmdvs8ffjLLNRhFB8iF
 BFcZjljnwjRseSd+v
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
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the define RATE_11M present in the file "device.h" instead of the
magic number 3. So the code is more clear.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index a19a563d8bcc..092e56668a09 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -24,6 +24,7 @@

 #include <linux/bits.h>
 #include <linux/kernel.h>
+#include "device.h"
 #include "mac.h"
 #include "baseband.h"
 #include "rf.h"
@@ -141,7 +142,7 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,

 	rate = (unsigned int)vnt_frame_time[tx_rate];

-	if (tx_rate <= 3) {
+	if (tx_rate <= RATE_11M) {
 		if (preamble_type == 1)
 			preamble = 96;
 		else
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

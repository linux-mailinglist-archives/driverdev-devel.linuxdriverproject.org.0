Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF752CD5E2
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 13:51:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1212787524;
	Thu,  3 Dec 2020 12:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PIGkxxzAo_JJ; Thu,  3 Dec 2020 12:51:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A25AC87506;
	Thu,  3 Dec 2020 12:51:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0FA91BF344
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:51:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9CF7887506
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QkmjmR7YNXjO for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 12:51:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B6BDC87511
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 12:50:59 +0000 (UTC)
Received: from orion.localdomain ([95.118.71.13]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MZSJa-1khzyO1t2c-00WUVz; Thu, 03 Dec 2020 13:48:10 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 08/11] drivers: staging: rtl8188eu: remove unneeded
 MODULE_VERSION() call
Date: Thu,  3 Dec 2020 13:48:00 +0100
Message-Id: <20201203124803.23390-8-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201203124803.23390-1-info@metux.net>
References: <20201203124803.23390-1-info@metux.net>
X-Provags-ID: V03:K1:1MQuKEnM71T5YF6xscjABxnKeVTYqBar5OW8Npo4jNGlsiQjuP+
 /rda2rr2UVdGioxR7J2JitRU7UNNpKt9hmwIqtTuSXWRoKu9UPiI9jJ80fnI6ioBVYmIJjp
 mKrv15PfkGRggVX+jaT5clh1yzdaBsFku+utkSx37mlc3l9Iec6uXljBFVpjcqBUhf2haIh
 TVeBgHnA/fhQgbnyEUZug==
X-UI-Out-Filterresults: notjunk:1;V03:K0:AzWa5wuY4Pg=:pQLme33YNK+Eu2A4O3Q+zg
 f4uvVbaGrAndTnPfz3x8TCOKOgDyyFjODoZB3JCTdibbaXFbqsojJIllGl2ld1SQED31ijaiy
 KLs5sw9C2GREl6oF6Kr99PvL4UzMKK6v/3dCypSn9wuanIM8qWDaAX1T3V2TlmKTxTA7iSC4w
 dCVEFNQW1VsHBkRDQiTXj2G5LkW6fujTkXZ3ZKmMv7Y+R0VIRgbghpq9DxpufhUOEI5ZuwRIg
 Qha0BXUyp7JU8LIZ7uAqEVvctZXScbL2kdc1/CVdgnBmhdZYbSozAMpHWqn3UNuJf2RUuNeYN
 OXlEaGrCwHnHLZdGpo0AIAnubOfjpgVeaNRThvT/RbHjh+oJjjtY8j6eAEy4p/915I/cW/iJU
 s5zjeGNYw8xfpBlRlsRmhPwJxX/IRsuRMrlNK5HGveIE7HLfRSzwvzc+HS1Y7
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
Cc: devel@driverdev.osuosl.org, toddpoynor@google.com, sbranden@broadcom.com,
 rjui@broadcom.com, speakup@linux-speakup.org, rcy@google.com,
 f.fainelli@gmail.com, rspringer@google.com, laurent.pinchart@ideasonboard.com,
 netdev@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 mchehab@kernel.org, nsaenzjulienne@suse.de, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove MODULE_VERSION(), as it doesn't seem to serve any practical purpose.
For in-kernel drivers, the kernel version matters most. The driver received
lots of changes, while module version remained constant, since it landed
in mainline, back 7 years ago.

Signed-off-by: Enrico Weigelt <info@metux.net>
---
 drivers/staging/rtl8188eu/os_dep/os_intfs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/os_dep/os_intfs.c b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
index e291df87f620..258d7a13467a 100644
--- a/drivers/staging/rtl8188eu/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8188eu/os_dep/os_intfs.c
@@ -18,7 +18,6 @@
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Realtek Wireless Lan Driver");
 MODULE_AUTHOR("Realtek Semiconductor Corp.");
-MODULE_VERSION(DRIVERVERSION);
 MODULE_FIRMWARE("rtlwifi/rtl8188eufw.bin");
 
 #define RTW_NOTCH_FILTER 0 /* 0:Disable, 1:Enable, */
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

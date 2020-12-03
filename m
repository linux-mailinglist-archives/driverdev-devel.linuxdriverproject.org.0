Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9402CD5E4
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 13:51:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2213187BC0;
	Thu,  3 Dec 2020 12:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dtvxdpTut+Th; Thu,  3 Dec 2020 12:51:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C112B87C05;
	Thu,  3 Dec 2020 12:51:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A02A1BF344
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:51:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5504B8751E
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sya1iL1HDqBw for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 12:51:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71EC687506
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 12:50:59 +0000 (UTC)
Received: from orion.localdomain ([95.118.71.13]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MC0HF-1ksnqw3rED-00CUou; Thu, 03 Dec 2020 13:48:12 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 10/11] drivers: staging: rtl8723bs: remove unneeded
 MODULE_VERSION() call
Date: Thu,  3 Dec 2020 13:48:02 +0100
Message-Id: <20201203124803.23390-10-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201203124803.23390-1-info@metux.net>
References: <20201203124803.23390-1-info@metux.net>
X-Provags-ID: V03:K1:hQGIBq/BUgPqVCEvTnHhF20SdK3ePaui9xmOcpQzW4CBNAeGWxQ
 6dlSkT/baOy2QIyYpoUTMDbZ2qRYy4QjbRiOimlX7nHiu4rtmkCbU1n8XpdkUUpsT0mbrRL
 WBjJEIOolFjHbZbrlYh0Zk0i6Fx0S5oT7x3/eVUw+uDgdZQatf8trTDNYxSRVqcNyslMLb2
 XU8R0s82TL/NGrQRwrvFQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:6RGQO+J5kMs=:v3LsgrUhYwB/y2iFa9vQb0
 e9xMagAtqCzJZABxOcvKblZxcYBWxuUc24caTFsDorn7uMCod/SwqUO2GGuwV6TBgQkXbPO02
 D/JHB4OqicEPtdfEuyFV61vR/qSYC0VXf1xbLCMI5NgG/0uNcRw0Q2Xt8r0bI/Ddsh4dFnMF/
 urhCr2E9ERtkx29wO/7oRLcYIwvMJEuVAUoxZx1MnuXMGKnNmtX+jmn1olRVtuUNZ+B5dyblv
 fxVK8Run2oS5tkGetn/m/47SbXm4O55qofzlt88pIZ2jGmWEXM7GtghDJiyNnu6QkA8Vy5x3z
 g7FysiqrU9ZGLIEchhQubxA+p5Tgga9IvKv13o91HqKJn4vMEfWO1UIo7Q9497g5dmL45LILn
 BiOwG/cgPZos9Iz+uH3ci9MhBU1afUIuEH2Ov1SoqH098lBEXHRVhK4Zw2NcR
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

Remove MODULE_VERSION(), as it doesn't seem to have any pratical purpose.
The code received lots of huge changes, but module version remained constant,
since it landed in mainline tree, back 11 years go. Unmaintained version
numbers aren't actually useful. For in-tree drivers, the kernel version
really matters.

Signed-off-by: Enrico Weigelt <info@metux.net>
---
 drivers/staging/rtl8192u/r8192U_core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 27dc181c4c9b..da871f45042a 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -90,7 +90,6 @@ static const struct usb_device_id rtl8192_usb_id_tbl[] = {
 };
 
 MODULE_LICENSE("GPL");
-MODULE_VERSION("V 1.1");
 MODULE_DEVICE_TABLE(usb, rtl8192_usb_id_tbl);
 MODULE_DESCRIPTION("Linux driver for Realtek RTL8192 USB WiFi cards");
 
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

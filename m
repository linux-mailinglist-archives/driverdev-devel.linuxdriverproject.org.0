Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 779A433A9BE
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 04:08:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C3514308C;
	Mon, 15 Mar 2021 03:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fe97BMdoL7k7; Mon, 15 Mar 2021 03:08:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B93BC42FBE;
	Mon, 15 Mar 2021 03:08:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 559531BF3E5
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 03:08:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 51D2642FBE
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 03:08:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9gEqpdwgXUlL for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 03:08:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.135])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E3BE42FBC
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:08:23 +0000 (UTC)
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id 9A34BA80E5;
 Mon, 15 Mar 2021 11:08:19 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [124.126.19.250])
 by smtp.263.net (postfix) whith ESMTP id
 P13096T140547589097216S1615777695681307_; 
 Mon, 15 Mar 2021 11:08:20 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <165e4deda2583fa7c5e784b9575b96a8>
X-RL-SENDER: maqianga@uniontech.com
X-SENDER: maqianga@uniontech.com
X-LOGIN-NAME: maqianga@uniontech.com
X-FST-TO: gregkh@linuxfoundation.org
X-SENDER-IP: 124.126.19.250
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Qiang Ma <maqianga@uniontech.com>
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com,
 singhalsimran0@gmail.com, matthew.v.deangelis@gmail.com,
 john.oldman@polehill.co.uk, izabela.bakollari@gmail.com
Subject: [PATCH] staging: rtl8723bs: add spaces between operators
Date: Mon, 15 Mar 2021 11:08:13 +0800
Message-Id: <20210315030813.19445-1-maqianga@uniontech.com>
X-Mailer: git-send-email 2.20.1
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
 Qiang Ma <maqianga@uniontech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add spaces between operators for a better readability
in function 'rtw_secgetmic'.

Signed-off-by: Qiang Ma <maqianga@uniontech.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 6d53c08b29d1..3e576cbe4712 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -397,7 +397,7 @@ void rtw_secgetmic(struct mic_data *pmicdata, u8 *dst)
 		rtw_secmicappendbyte(pmicdata, 0);
 	/*  The appendByte function has already computed the result. */
 	secmicputuint32(dst, pmicdata->L);
-	secmicputuint32(dst+4, pmicdata->R);
+	secmicputuint32(dst + 4, pmicdata->R);
 	/*  Reset to the empty message. */
 	secmicclear(pmicdata);
 }
-- 
2.20.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

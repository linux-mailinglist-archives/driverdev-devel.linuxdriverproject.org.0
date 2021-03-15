Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CD033A974
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 02:57:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C8D040197;
	Mon, 15 Mar 2021 01:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kAnE5BHMo1Do; Mon, 15 Mar 2021 01:57:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 91246400CC;
	Mon, 15 Mar 2021 01:57:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1787E1BF363
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 01:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D0664891C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 01:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yGU7OaHUk2Ni for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 01:57:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.133])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D798F4891B
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 01:57:13 +0000 (UTC)
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id 7AC3ECC582;
 Mon, 15 Mar 2021 09:57:07 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [124.126.19.250])
 by smtp.263.net (postfix) whith ESMTP id
 P13096T140547972355840S1615773422010804_; 
 Mon, 15 Mar 2021 09:57:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5d4a416a5e24dd612bca4bf23bd86190>
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
 hannes@cmpxchg.org, john.oldman@polehill.co.uk, longman@redhat.com,
 izabela.bakollari@gmail.com
Subject: [PATCH] Staging: rtl8723bs/core: fix space coding style issue
Date: Mon, 15 Mar 2021 09:56:59 +0800
Message-Id: <20210315015659.2402-1-maqianga@uniontech.com>
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

Add one space around (on each side of) '*' binary operators.

Signed-off-by: Qiang Ma <maqianga@uniontech.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index a311595deafb..6d53c08b29d1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -319,7 +319,7 @@ static u32 secmicgetuint32(u8 *p)
 	u32 res = 0;
 
 	for (i = 0; i < 4; i++)
-		res |= ((u32)(*p++)) << (8*i);
+		res |= ((u32)(*p++)) << (8 * i);
 
 	return res;
 }
-- 
2.20.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

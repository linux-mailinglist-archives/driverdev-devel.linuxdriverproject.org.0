Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0203F336C74
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Mar 2021 07:50:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 14C8743138;
	Thu, 11 Mar 2021 06:50:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3HJUl4fQmsoE; Thu, 11 Mar 2021 06:50:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E2F243019;
	Thu, 11 Mar 2021 06:50:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 051EA1BF83A
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 06:50:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6F194B530
 for <devel@linuxdriverproject.org>; Thu, 11 Mar 2021 06:50:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r_YW3uCZQo0B for <devel@linuxdriverproject.org>;
 Thu, 11 Mar 2021 06:50:05 +0000 (UTC)
X-Greylist: delayed 00:07:42 by SQLgrey-1.8.0
Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.131])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BD6004B058
 for <devel@driverdev.osuosl.org>; Thu, 11 Mar 2021 06:50:04 +0000 (UTC)
Received: from localhost (unknown [192.168.167.13])
 by lucky1.263xmail.com (Postfix) with ESMTP id 75780B9537;
 Thu, 11 Mar 2021 14:42:17 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [124.126.19.250])
 by smtp.263.net (postfix) whith ESMTP id
 P13096T140547930396416S1615444930647858_; 
 Thu, 11 Mar 2021 14:42:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d8c1f2d985e4f62e926dd6d185b2772d>
X-RL-SENDER: penghaob@uniontech.com
X-SENDER: penghaob@uniontech.com
X-LOGIN-NAME: penghaob@uniontech.com
X-FST-TO: gregkh@linuxfoundation.org
X-SENDER-IP: 124.126.19.250
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Hao Peng <penghaob@uniontech.com>
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com,
 izabela.bakollari@gmail.com
Subject: [PATCH] staging: rtl8723bs: add initial value
Date: Thu, 11 Mar 2021 14:38:38 +0800
Message-Id: <20210311063838.19756-1-penghaob@uniontech.com>
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
Cc: devel@driverdev.osuosl.org, Hao Peng <penghaob@uniontech.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add initial value for some uninitialized variable and array.

Signed-off-by: Hao Peng <penghaob@uniontech.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index b6f944b37b08..ceea160db38a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -206,8 +206,8 @@ void expire_timeout_chk(struct adapter *padapter)
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	u8 chk_alive_num = 0;
-	char chk_alive_list[NUM_STA];
-	int i;
+	char chk_alive_list[NUM_STA] = {0};
+	int i = 0;
 
 	spin_lock_bh(&pstapriv->auth_list_lock);
 
@@ -308,7 +308,7 @@ void expire_timeout_chk(struct adapter *padapter)
 				}
 			}
 			if (pmlmeext->active_keep_alive_check) {
-				int stainfo_offset;
+				int stainfo_offset = 0;
 
 				stainfo_offset = rtw_stainfo_offset(pstapriv, psta);
 				if (stainfo_offset_valid(stainfo_offset))
-- 
2.20.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

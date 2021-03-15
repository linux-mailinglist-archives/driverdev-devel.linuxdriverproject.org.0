Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BADB33B0C9
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 12:16:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E50C430E8;
	Mon, 15 Mar 2021 11:16:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Flki8t_yRE1L; Mon, 15 Mar 2021 11:16:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79683430D9;
	Mon, 15 Mar 2021 11:16:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C3571BF39C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 11:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EDE524AAEE
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 11:16:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v0ou4s2EtAjh for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 11:16:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.132])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 349054C4BF
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 11:16:20 +0000 (UTC)
Received: from localhost (unknown [192.168.167.225])
 by lucky1.263xmail.com (Postfix) with ESMTP id 37D18F2D33;
 Mon, 15 Mar 2021 19:16:18 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [124.126.19.250])
 by smtp.263.net (postfix) whith ESMTP id
 P2274T140461670921984S1615806972641643_; 
 Mon, 15 Mar 2021 19:16:18 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5029d3549c0123fd912d29e648a7e3c9>
X-RL-SENDER: penghaob@uniontech.com
X-SENDER: penghaob@uniontech.com
X-LOGIN-NAME: penghaob@uniontech.com
X-FST-TO: gregkh@linuxfoundation.org
X-SENDER-IP: 124.126.19.250
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Hao Peng <penghaob@uniontech.com>
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com,
 izabela.bakollari@gmail.com, penghaob@uniontech.com
Subject: [PATCH] staging: rts5208: add empty line in general.c
Date: Mon, 15 Mar 2021 19:12:20 +0800
Message-Id: <20210315111220.27090-1-penghaob@uniontech.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add one empty line upon return for easy reading.

Signed-off-by: Hao Peng <penghaob@uniontech.com>
---
 drivers/staging/rts5208/general.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rts5208/general.c b/drivers/staging/rts5208/general.c
index 0f912b011064..1ddfbc5aecb7 100644
--- a/drivers/staging/rts5208/general.c
+++ b/drivers/staging/rts5208/general.c
@@ -20,6 +20,7 @@ int bit1cnt_long(u32 data)
 			cnt++;
 		data >>= 1;
 	}
+
 	return cnt;
 }
 
-- 
2.20.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

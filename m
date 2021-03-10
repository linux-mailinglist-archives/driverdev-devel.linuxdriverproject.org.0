Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EADE6333B9F
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 12:42:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6E6884385;
	Wed, 10 Mar 2021 11:42:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OwFlLU2WLpeC; Wed, 10 Mar 2021 11:42:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 154B284323;
	Wed, 10 Mar 2021 11:42:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 303C71BF3C6
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 11:42:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2AA8B84354
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 11:42:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7IyAUPbqFOzn for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 11:42:03 +0000 (UTC)
X-Greylist: delayed 00:06:36 by SQLgrey-1.8.0
Received: from lucky1.263xmail.com (lucky1.263xmail.com [211.157.147.131])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CD2D84323
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 11:42:03 +0000 (UTC)
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 2F791B9494;
 Wed, 10 Mar 2021 19:35:20 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [124.126.19.250])
 by smtp.263.net (postfix) whith ESMTP id
 P24304T139685143766784S1615376108869662_; 
 Wed, 10 Mar 2021 19:35:20 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4ec89a2957857c08fc507248c6268e1d>
X-RL-SENDER: guolongji@uniontech.com
X-SENDER: guolongji@uniontech.com
X-LOGIN-NAME: guolongji@uniontech.com
X-FST-TO: gregkh@linuxfoundation.org
X-SENDER-IP: 124.126.19.250
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Longji Guo <guolongji@uniontech.com>
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com,
 matthew.v.deangelis@gmail.com, dan.carpenter@oracle.com,
 amarjargal16@gmail.com, vkor@vkten.in, pterjan@google.com
Subject: [PATCH] Staging: rtl8723bs/core: fix coding style issue
Date: Wed, 10 Mar 2021 19:35:03 +0800
Message-Id: <20210310113503.1352-1-guolongji@uniontech.com>
X-Mailer: git-send-email 2.30.1
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
Cc: devel@driverdev.osuosl.org, Longji Guo <guolongji@uniontech.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Move operators and spaces before tabs to fix coding style issues.

Signed-off-by: Longji Guo <guolongji@uniontech.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 3c9dbd7443d9..f249193edeb3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -576,7 +576,7 @@ union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_fram
 			prtnframe = precv_frame;
 
 			/* get ether_type */
-			ptr = ptr+pfhdr->attrib.hdrlen+pfhdr->attrib.iv_len+LLC_HEADER_SIZE;
+			ptr = ptr + pfhdr->attrib.hdrlen + pfhdr->attrib.iv_len + LLC_HEADER_SIZE;
 			memcpy(&be_tmp, ptr, 2);
 			ether_type = ntohs(be_tmp);
 
-- 
2.30.1



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

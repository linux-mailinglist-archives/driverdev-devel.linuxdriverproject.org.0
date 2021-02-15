Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B98B031BA37
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 14:21:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 107D486F9C;
	Mon, 15 Feb 2021 13:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8h1muv8Bu62o; Mon, 15 Feb 2021 13:21:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 385C1859ED;
	Mon, 15 Feb 2021 13:21:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 556F71BF27C
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 13:21:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5202A8687B
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 13:21:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8XmM93o132PG for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 13:21:02 +0000 (UTC)
X-Greylist: delayed 00:17:39 by SQLgrey-1.7.6
Received: from m12-12.163.com (m12-12.163.com [220.181.12.12])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3C2D386870
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 13:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=jn5wFcSnmHdT53x+ii
 MLKfUla40lhRJCtIiyrfo//Ws=; b=KDqFfmZAXyjBHk/duvm36y+5BNTvSf1mLX
 m9Nt9b9wtWaVdtd6oHf1iM0ZFmdY3ekqBeY79Qmi1/99Nbd068aKoVKJ3ELcMcKx
 L+ZNnyczg3stPmguqEML1ltvhJPW0FVMbDUUbFDJycgils9/ex0Sw7+PXL11miEI
 ud+A35qEs=
Received: from localhost.localdomain (unknown [125.70.196.55])
 by smtp8 (Coremail) with SMTP id DMCowAAXWOMOcSpgGXoLQw--.51584S2;
 Mon, 15 Feb 2021 21:03:14 +0800 (CST)
From: Chen Lin <chen45464546@163.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: Remove unused function pointer typedef
 wi_act_func
Date: Mon, 15 Feb 2021 21:02:54 +0800
Message-Id: <1613394174-3826-1-git-send-email-chen45464546@163.com>
X-Mailer: git-send-email 1.7.9.5
X-CM-TRANSID: DMCowAAXWOMOcSpgGXoLQw--.51584S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Xw1xuF4rXF4DXF1xXry5Arb_yoWxAFc_C3
 yftrs7Gry8AF1Syw47trZ5X3y0gF1xXw4vq3Z0vrZ8Zan09FW5C34qqr17CF45W397KF93
 Ca1vvrZakry8JjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUn5GYPUUUUU==
X-Originating-IP: [125.70.196.55]
X-CM-SenderInfo: hfkh0kqvuwkkiuw6il2tof0z/1tbiyhI6nlQHLJEUfgAAs4
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
Cc: devel@driverdev.osuosl.org, Chen Lin <chen.lin5@zte.com.cn>,
 foxhlchen@gmail.com, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Chen Lin <chen.lin5@zte.com.cn>

Remove the 'wi_act_func' typedef as it is not used.

Signed-off-by: Chen Lin <chen.lin5@zte.com.cn>
---
 drivers/staging/rtl8723bs/include/rtw_mp.h |    2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
index ab7cd51..2ea7100 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mp.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
@@ -31,8 +31,6 @@ struct mp_wiparam {
 	u32 io_value;
 };
 
-typedef void(*wi_act_func)(void *padapter);
-
 struct mp_tx {
 	u8 stop;
 	u32 count, sended;
-- 
1.7.9.5


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

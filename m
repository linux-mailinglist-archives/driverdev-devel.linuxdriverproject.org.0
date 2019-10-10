Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FE64D2DD6
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 17:36:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E5CF58863E;
	Thu, 10 Oct 2019 15:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y-VMOY0HAz8T; Thu, 10 Oct 2019 15:36:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2810D88618;
	Thu, 10 Oct 2019 15:36:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48EA31BF3D5
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 15:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 45B4587E9B
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 15:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dixtAm8x8d4p for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 15:36:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A7A8F87E91
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 15:36:00 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 8494E1E0C49B7AF93035;
 Thu, 10 Oct 2019 23:35:55 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Thu, 10 Oct 2019
 23:35:48 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <shobhitkukreti@gmail.com>,
 <hariprasad.kelam@gmail.com>, <benniciemanuel78@gmail.com>,
 <nishkadg.linux@gmail.com>, <madhumithabiw@gmail.com>, <arnd@arndb.de>,
 <kai.heng.feng@canonical.com>
Subject: [PATCH -next] staging: rtl8723bs: Remove unnecessary null check
Date: Thu, 10 Oct 2019 23:33:25 +0800
Message-ID: <20191010153325.16836-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Null check before kfree is redundant, so remove it.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 5044f73..74b097a 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1141,8 +1141,7 @@ void rtw_ndev_destructor(struct net_device *ndev)
 {
 	DBG_871X(FUNC_NDEV_FMT "\n", FUNC_NDEV_ARG(ndev));
 
-	if (ndev->ieee80211_ptr)
-		kfree(ndev->ieee80211_ptr);
+	kfree(ndev->ieee80211_ptr);
 }
 
 void rtw_dev_unload(struct adapter *padapter)
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33366CF054
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 03:18:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A9C387D73;
	Tue,  8 Oct 2019 01:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4mCuDQTD6YqC; Tue,  8 Oct 2019 01:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 45CE887D3D;
	Tue,  8 Oct 2019 01:18:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C543A1BF2F3
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 01:18:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BE65887BFE
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 01:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g5hOmb+MYdSw for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 01:18:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A055D8609B
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 01:18:02 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 57C0ED2760F0F4D673C2;
 Tue,  8 Oct 2019 09:17:59 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Tue, 8 Oct 2019
 09:17:52 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <dan.carpenter@oracle.com>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH v2] staging: rtl8723bs: Remove set but not used variable 'i'
Date: Tue, 8 Oct 2019 09:25:03 +0800
Message-ID: <1570497903-37077-1-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/rtl8723bs/core/rtw_xmit.c: In function update_attrib:
drivers/staging/rtl8723bs/core/rtw_xmit.c:680:7: warning: variable i set but not used [-Wunused-but-set-variable]

It is not used since commit 554c0a3abf21 ("staging:
Add rtl8723bs sdio wifi driver")

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index b5dcb78..c50d05e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -675,7 +675,6 @@ static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)

 static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib *pattrib)
 {
-	uint i;
 	struct pkt_file pktfile;
 	struct sta_info *psta = NULL;
 	struct ethhdr etherhdr;
@@ -689,7 +688,7 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 	DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib);

 	_rtw_open_pktfile(pkt, &pktfile);
-	i = _rtw_pktfile_read(&pktfile, (u8 *)&etherhdr, ETH_HLEN);
+	_rtw_pktfile_read(&pktfile, (u8 *)&etherhdr, ETH_HLEN);

 	pattrib->ether_type = ntohs(etherhdr.h_proto);

--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

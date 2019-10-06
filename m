Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8639CCFC2
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 11:03:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0102285F0B;
	Sun,  6 Oct 2019 09:03:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wAlTS-vwGEat; Sun,  6 Oct 2019 09:03:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A0E385DF2;
	Sun,  6 Oct 2019 09:03:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD3D41BF357
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 09:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B9F1720366
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 09:03:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KKpMoFt057TF for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 09:03:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id E8AF020372
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 09:03:00 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 2483851B9565DFC3ABAB;
 Sun,  6 Oct 2019 17:02:56 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Sun, 6 Oct 2019
 17:02:48 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <colin.king@canonical.com>,
 <hdegoede@redhat.com>, <hardiksingh.k@gmail.com>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 4/5] staging: rtl8723bs: Remove set but not used variables
 'ppp', 'type', 'data'
Date: Sun, 6 Oct 2019 17:09:58 +0800
Message-ID: <1570352999-45790-5-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570352999-45790-1-git-send-email-zhengbin13@huawei.com>
References: <1570352999-45790-1-git-send-email-zhengbin13@huawei.com>
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

drivers/staging/rtl8723bs/core/rtw_recv.c: In function validate_80211w_mgmt:
drivers/staging/rtl8723bs/core/rtw_recv.c:1415:8: warning: variable ppp set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/core/rtw_recv.c: In function validate_80211w_mgmt:
drivers/staging/rtl8723bs/core/rtw_recv.c:1403:5: warning: variable type set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/core/rtw_recv.c: In function recvframe_defrag:
drivers/staging/rtl8723bs/core/rtw_recv.c:1713:6: warning: variable data set but not used [-Wunused-but-set-variable]

They are not used since commit 554c0a3abf21 ("staging:
Add rtl8723bs sdio wifi driver")

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 687ff3c..7fa8c84 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -1400,10 +1400,8 @@ static sint validate_80211w_mgmt(struct adapter *adapter, union recv_frame *prec
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 	u8 *ptr = precv_frame->u.hdr.rx_data;
-	u8 type;
 	u8 subtype;

-	type =  GetFrameType(ptr);
 	subtype = GetFrameSubType(ptr); /* bit(7)~bit(2) */

 	/* only support station mode */
@@ -1412,9 +1410,8 @@ static sint validate_80211w_mgmt(struct adapter *adapter, union recv_frame *prec
 		/* unicast management frame decrypt */
 		if (pattrib->privacy && !(IS_MCAST(GetAddr1Ptr(ptr))) &&
 			(subtype == WIFI_DEAUTH || subtype == WIFI_DISASSOC || subtype == WIFI_ACTION)) {
-			u8 *ppp, *mgmt_DATA;
+			u8 *mgmt_DATA;
 			u32 data_len = 0;
-			ppp = GetAddr2Ptr(ptr);

 			pattrib->bdecrypted = 0;
 			pattrib->encrypt = _AES_;
@@ -1709,7 +1706,7 @@ static union recv_frame *recvframe_defrag(struct adapter *adapter,
 					  struct __queue *defrag_q)
 {
 	struct list_head	 *plist, *phead;
-	u8 *data, wlanhdr_offset;
+	u8  wlanhdr_offset;
 	u8 curfragnum;
 	struct recv_frame_hdr *pfhdr, *pnfhdr;
 	union recv_frame *prframe, *pnextrframe;
@@ -1739,8 +1736,6 @@ static union recv_frame *recvframe_defrag(struct adapter *adapter,

 	plist = get_next(plist);

-	data = get_recvframe_data(prframe);
-
 	while (phead != plist) {
 		pnextrframe = (union recv_frame *)plist;
 		pnfhdr = &pnextrframe->u.hdr;
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

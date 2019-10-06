Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 261CBCCFC1
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 11:03:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51E888798A;
	Sun,  6 Oct 2019 09:03:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d-wNIWucmU2h; Sun,  6 Oct 2019 09:03:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 857E287916;
	Sun,  6 Oct 2019 09:03:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B1FF01BF20D
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 09:03:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AEAFB87917
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 09:03:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id blDbdy51DuY6 for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 09:02:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D95A87916
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 09:02:59 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 1358768513F59F69730F;
 Sun,  6 Oct 2019 17:02:56 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Sun, 6 Oct 2019
 17:02:48 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <colin.king@canonical.com>,
 <hdegoede@redhat.com>, <hardiksingh.k@gmail.com>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 3/5] staging: rtl8723bs: Remove set but not used variable
 'prwskeylen'
Date: Sun, 6 Oct 2019 17:09:57 +0800
Message-ID: <1570352999-45790-4-git-send-email-zhengbin13@huawei.com>
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

drivers/staging/rtl8723bs/core/rtw_security.c: In function rtw_tkip_encrypt:
drivers/staging/rtl8723bs/core/rtw_security.c:660:6: warning: variable prwskeylen set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/core/rtw_security.c: In function rtw_tkip_decrypt:
drivers/staging/rtl8723bs/core/rtw_security.c:768:6: warning: variable prwskeylen set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/core/rtw_security.c: In function rtw_aes_encrypt:
drivers/staging/rtl8723bs/core/rtw_security.c:1528:6: warning: variable prwskeylen set but not used [-Wunused-but-set-variable]

It is not used since commit 554c0a3abf21 ("staging:
Add rtl8723bs sdio wifi driver")

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 5ffaf9b..ed1d854 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -656,7 +656,6 @@ u32 rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 	u8   hw_hdr_offset = 0;
 	struct arc4context mycontext;
 	sint			curfragnum, length;
-	u32 prwskeylen;

 	u8 *pframe, *payload, *iv, *prwskey;
 	union pn48 dot11txpn;
@@ -703,8 +702,6 @@ u32 rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 				/* prwskey =&stainfo->dot118021x_UncstKey.skey[0]; */
 				prwskey = pattrib->dot118021x_UncstKey.skey;

-			prwskeylen = 16;
-
 			for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
 				iv = pframe+pattrib->hdrlen;
 				payload = pframe+pattrib->iv_len+pattrib->hdrlen;
@@ -764,7 +761,6 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 	u8 crc[4];
 	struct arc4context mycontext;
 	sint			length;
-	u32 prwskeylen;

 	u8 *pframe, *payload, *iv, *prwskey;
 	union pn48 dot11txpn;
@@ -819,10 +815,8 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 				/* DBG_871X("rx bc/mc packets, to perform sw rtw_tkip_decrypt\n"); */
 				/* prwskey = psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey; */
 				prwskey = psecuritypriv->dot118021XGrpKey[prxattrib->key_index].skey;
-				prwskeylen = 16;
 			} else {
 				prwskey = &stainfo->dot118021x_UncstKey.skey[0];
-				prwskeylen = 16;
 			}

 			iv = pframe+prxattrib->hdrlen;
@@ -1524,7 +1518,6 @@ u32 rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)

 	/* Intermediate Buffers */
 	sint	curfragnum, length;
-	u32 prwskeylen;
 	u8 *pframe, *prwskey;	/*  *payload,*iv */
 	u8   hw_hdr_offset = 0;
 	/* struct	sta_info 	*stainfo = NULL; */
@@ -1551,8 +1544,6 @@ u32 rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 			/* prwskey =&stainfo->dot118021x_UncstKey.skey[0]; */
 			prwskey = pattrib->dot118021x_UncstKey.skey;

-		prwskeylen = 16;
-
 		for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
 			if ((curfragnum+1) == pattrib->nr_frags) {	/* 4 the last fragment */
 				length = pattrib->last_txcmdsz-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

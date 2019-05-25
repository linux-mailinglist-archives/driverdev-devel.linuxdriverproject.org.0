Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C832A4E7
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 16:37:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E144889FA;
	Sat, 25 May 2019 14:37:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fgg+85oBb45X; Sat, 25 May 2019 14:37:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C9E0088251;
	Sat, 25 May 2019 14:37:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A09571BF2E3
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 14:37:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9B72A88271
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 14:37:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ddkvr7lsHktQ for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 14:37:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8BD9F88251
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 14:37:10 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 94ED52BC17B17C2CD713;
 Sat, 25 May 2019 22:37:02 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Sat, 25 May 2019
 22:36:52 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <himadri18.07@gmail.com>, <arnd@arndb.de>
Subject: [PATCH -next] staging: rtl8723bs: hal: Remove set but not used
 variable 'no_res' and 'phal'
Date: Sat, 25 May 2019 22:36:40 +0800
Message-ID: <20190525143640.13356-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
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

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c: In function xmit_xmitframes:
drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c:205:5: warning: variable no_res set but not used [-Wunused-but-set-variable]
drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c: In function rtl8723bs_free_xmit_priv:
drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c:640:23: warning: variable phal set but not used [-Wunused-but-set-variable]

They are never used and can be removed.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 7b06aab04ee6..9cf8da799ade 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -202,7 +202,7 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 	s32 err, ret;
 	u32 k = 0;
 	struct hw_xmit *hwxmits, *phwxmit;
-	u8 no_res, idx, hwentry;
+	u8 idx, hwentry;
 	struct tx_servq *ptxservq;
 	struct list_head *sta_plist, *sta_phead, *frame_plist, *frame_phead;
 	struct xmit_frame *pxmitframe;
@@ -213,7 +213,6 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 	int inx[4];
 
 	err = 0;
-	no_res = false;
 	hwxmits = pxmitpriv->hwxmits;
 	hwentry = pxmitpriv->hwxmit_entry;
 	ptxservq = NULL;
@@ -637,7 +636,6 @@ s32 rtl8723bs_init_xmit_priv(struct adapter *padapter)
 
 void rtl8723bs_free_xmit_priv(struct adapter *padapter)
 {
-	struct hal_com_data *phal;
 	struct xmit_priv *pxmitpriv;
 	struct xmit_buf *pxmitbuf;
 	struct __queue *pqueue;
@@ -645,7 +643,6 @@ void rtl8723bs_free_xmit_priv(struct adapter *padapter)
 	struct list_head tmplist;
 
 
-	phal = GET_HAL_DATA(padapter);
 	pxmitpriv = &padapter->xmitpriv;
 	pqueue = &pxmitpriv->pending_xmitbuf_queue;
 	phead = get_list_head(pqueue);
-- 
2.17.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

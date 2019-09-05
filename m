Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A58AA729
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 17:22:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2682F2043E;
	Thu,  5 Sep 2019 15:22:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UpLMUAa5+BZa; Thu,  5 Sep 2019 15:22:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1B5782046B;
	Thu,  5 Sep 2019 15:22:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7B1D41BF36D
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 15:22:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7843686B02
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 15:22:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id moAYK2PMR7Hm for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 15:22:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F0EA486B00
 for <devel@driverdev.osuosl.org>; Thu,  5 Sep 2019 15:22:29 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <colin.king@canonical.com>)
 id 1i5tad-0007qi-Pw; Thu, 05 Sep 2019 15:22:27 +0000
From: Colin King <colin.king@canonical.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH][V2] staging: rtl8723bs: hal: remove redundant variable n
Date: Thu,  5 Sep 2019 16:22:27 +0100
Message-Id: <20190905152227.4610-1-colin.king@canonical.com>
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

The variable n is being assigned a value that is never read inside
an if statement block, the assignment is redundant and can be removed.
With this removed, n is only being used for a constant loop bounds
check, so replace n with that value instead and remove n completely.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>

---

V2: remove the variable n completely, thanks to Dan Carpenter for
    spotting this.

---
 drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
index 032d01834f3f..0f3301091258 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_recv.c
@@ -502,7 +502,7 @@ s32 rtl8723bs_init_recv_priv(struct adapter *padapter)
  */
 void rtl8723bs_free_recv_priv(struct adapter *padapter)
 {
-	u32 i, n;
+	u32 i;
 	struct recv_priv *precvpriv;
 	struct recv_buf *precvbuf;
 
@@ -514,9 +514,8 @@ void rtl8723bs_free_recv_priv(struct adapter *padapter)
 	/* 3 2. free all recv buffers */
 	precvbuf = (struct recv_buf *)precvpriv->precv_buf;
 	if (precvbuf) {
-		n = NR_RECVBUFF;
 		precvpriv->free_recv_buf_queue_cnt = 0;
-		for (i = 0; i < n ; i++) {
+		for (i = 0; i < NR_RECVBUFF; i++) {
 			list_del_init(&precvbuf->list);
 			rtw_os_recvbuf_resource_free(padapter, precvbuf);
 			precvbuf++;
@@ -525,7 +524,6 @@ void rtl8723bs_free_recv_priv(struct adapter *padapter)
 	}
 
 	if (precvpriv->pallocated_recv_buf) {
-		n = NR_RECVBUFF * sizeof(struct recv_buf) + 4;
 		kfree(precvpriv->pallocated_recv_buf);
 		precvpriv->pallocated_recv_buf = NULL;
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

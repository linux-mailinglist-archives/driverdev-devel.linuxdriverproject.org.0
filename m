Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7CE384F4
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 09:26:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35A7184368;
	Fri,  7 Jun 2019 07:26:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QHVFlqRBhZ4W; Fri,  7 Jun 2019 07:26:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 024D682FF1;
	Fri,  7 Jun 2019 07:26:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 340961BF333
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:26:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2F05A83365
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 07:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HNhfBUR7gnZt for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 07:26:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6612E82FF1
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 07:26:20 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id d126so691169pfd.2
 for <devel@driverdev.osuosl.org>; Fri, 07 Jun 2019 00:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RHp0gi/48bOa8/Rqc3wrZHO7g1dd2fqBOo8d3cKHVd8=;
 b=YlPxnTWs1Db3XxOmrIVpsiS+zz1DOoim8YylrKOUIvOP+KfoTF8EJAfKwgtA+PuB1n
 wIbK2dxr0BzsPS1EkncyM9+PzxvSDPIAMVm8yVC5no4JKGsE1R9SC9noMOOUWRdqqgVL
 aa7DCNeCsS+L7dKEpz8mVQp1yeeFt9d70mEODCR45xBjBICw8K52ZzVTWWK1+icbrnZM
 6p7s/Rrn2pFrxfEd0RJEBxzw82gJt1gxnDCyd6kkzdgSI2pBXAiwHu6UoT++0jn/5AMK
 CMEQjaHWwgg9IEQP6RqulACHcsIZdhenauihd0XSrmyQNptxxf1dWFj44T1q5/UQJD9D
 AR8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RHp0gi/48bOa8/Rqc3wrZHO7g1dd2fqBOo8d3cKHVd8=;
 b=S8zyxB5FYIlOiRkEgY0tGjaVwXm6oDs6t4xp4YwRK+osligX1H1BvxAHTsE83wJgn0
 G00gpLKHg1933qYYPayxcFVHe4Z7eJWg/2LE/PfKydFEr0DJYzWtfFTNG9VZrWCXCSID
 O64GmGqEEl7FoHxJ8is2B2nf9XTX4THhlIrsKOMvNSMwyWqESzqser33euSPi0r3FnF3
 mZ9PYdcujxT0R8/6CoSUupBotdKKEc4ZholyCXJRu+dL/2/VfzfOAa6sHyJmTgXJtks8
 3+weHUogjO9EtkqFlxzpMgkwBtJ7ayJvc0T8mIc8P8nI16G4X1NwD1h5aoMiDSq42T1X
 IV/g==
X-Gm-Message-State: APjAAAWEjicT0oGrVBg9YUykD+MRZhUYIlkrJ2e3TleouEhwGA32RTQv
 VZzBIBl+jdW33WPNxtzJEuA=
X-Google-Smtp-Source: APXvYqyFFpgVvXGUljtZMEgXl89xecDcSzKMmLa6XlYTpXlwWL6P++R4tmpvuvlORrtyAaof4A0P2w==
X-Received: by 2002:a62:5801:: with SMTP id m1mr57777269pfb.32.1559892380106; 
 Fri, 07 Jun 2019 00:26:20 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id c9sm1955344pfn.3.2019.06.07.00.26.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 00:26:19 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] staging: rtl8723bs: rtw_os_recv_resource_alloc(): Change
 type
Date: Fri,  7 Jun 2019 12:56:08 +0530
Message-Id: <20190607072609.28620-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove assignment of the return value of rtw_os_recv_resource_alloc as
this assignment at the call site is never used.
Remove return statement from rtw_os_recv_resource_alloc() as its return
variable is never used.
Change the type of the function to void.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c      | 2 +-
 drivers/staging/rtl8723bs/include/recv_osdep.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c  | 6 +-----
 3 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index b9c9bba1a335..687ff3c6f09f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -67,7 +67,7 @@ sint _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
 
 		list_add_tail(&(precvframe->u.list), &(precvpriv->free_recv_queue.queue));
 
-		res = rtw_os_recv_resource_alloc(padapter, precvframe);
+		rtw_os_recv_resource_alloc(padapter, precvframe);
 
 		precvframe->u.hdr.len = 0;
 
diff --git a/drivers/staging/rtl8723bs/include/recv_osdep.h b/drivers/staging/rtl8723bs/include/recv_osdep.h
index 6fea0e948271..0e1baf170cfb 100644
--- a/drivers/staging/rtl8723bs/include/recv_osdep.h
+++ b/drivers/staging/rtl8723bs/include/recv_osdep.h
@@ -22,7 +22,7 @@ int	rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter);
 void rtw_free_recv_priv (struct recv_priv *precvpriv);
 
 
-int rtw_os_recv_resource_alloc(struct adapter *padapter, union recv_frame *precvframe);
+void rtw_os_recv_resource_alloc(struct adapter *padapter, union recv_frame *precvframe);
 void rtw_os_recv_resource_free(struct recv_priv *precvpriv);
 
 
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 67ec336264e5..45145efa3f68 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -21,13 +21,9 @@ void rtw_os_free_recvframe(union recv_frame *precvframe)
 }
 
 /* alloc os related resource in union recv_frame */
-int rtw_os_recv_resource_alloc(struct adapter *padapter, union recv_frame *precvframe)
+void rtw_os_recv_resource_alloc(struct adapter *padapter, union recv_frame *precvframe)
 {
-	int	res = _SUCCESS;
-
 	precvframe->u.hdr.pkt_newalloc = precvframe->u.hdr.pkt = NULL;
-
-	return res;
 }
 
 /* free os related resource in union recv_frame */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F033AFDF
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:47:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 42789872A6;
	Mon, 10 Jun 2019 07:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dAx3+74NBRSB; Mon, 10 Jun 2019 07:47:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFA4786E48;
	Mon, 10 Jun 2019 07:47:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F97B1BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5685E81D87
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mRixrsA6-Oqu for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:47:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8F9B68507B
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:47:23 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id d21so3309381plr.3
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:47:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Fn6ChKIli9psP35ZIQ1ICM5w9ZWGG1zh47Xynm61E2o=;
 b=kJnfpDoz+v60uZMYK4+sEpaqckYHJkGooweOt2UU9760+s82zxC4PTJ8OEfYktiMPD
 ZMWmz6yPsKDClemXKOPgh4PucCM09bbT095AjIHE3mXPjsCounokoGGCM2PwMKf6PvTe
 IPr8nYnxQV7RbliKTlaEKqX1sygnlHx0fRxt+aE3ox9eQpB7ssmEEdtuEmneslBsncUK
 IvTbcvvGXQlyo1GIvG9sCtnH9YBfI9phu5Z2VT3svfiQviu0BjwJOqK1omo1V2le+YQJ
 ZyZivv/FT8RJ025VLwHkZv4/9df4hj0p068vQWWYt3o8AZExVty+D+WdMcEbuh+fLAgS
 eVJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Fn6ChKIli9psP35ZIQ1ICM5w9ZWGG1zh47Xynm61E2o=;
 b=uWz6UeatXmzLO8EFon8qg+7RlB9/zOTIboRoqeWevBBm/YRxNdT0g5rLyroEL2s1l9
 tcTGwXkGT2as0D3ePuZ/1ViQcenLuZI+p4C7ixStILsr0RD9r0RmtW4s1m/VZklrZRmy
 eL6eVWup8GV2u7bsCn0450/eN7j9AXJRsWhEHtF3AqEb5KoxrKNojDQ8FdKfGDoe+Ldp
 F+5zZlSQAPa8WpVloZ/5T6y/s3FI/XZ92gPgHu9S3YOFRgCQHJ7ENVM1l2pUqNzNbN79
 IZ8ca4HiZPCbRAV+yB2b6BrjLR1LJJz2RxHfqgLN/m5CbRBER4LB2lVo8uhsJIFH1ajt
 /1hg==
X-Gm-Message-State: APjAAAXPB3oTXTpoLVlmBI6agpfDeQtwfNE1t/xj7E1u3GhZXfkQIxst
 ZW/oSxKU6hy+IXaw7/yxKt4=
X-Google-Smtp-Source: APXvYqw+x5Np87rge6leS0FMr0Up+JG9Q+HB39VbhJy0/NFONlVL8UQVj7R9x3LDM0j0yPE+prKI+A==
X-Received: by 2002:a17:902:b18e:: with SMTP id
 s14mr8357901plr.229.1560152843269; 
 Mon, 10 Jun 2019 00:47:23 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id f2sm8120965pgs.83.2019.06.10.00.47.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 00:47:22 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH v2 01/10] staging: rtl8723bs: Change type of
 rtw_os_recv_resource_alloc()
Date: Mon, 10 Jun 2019 13:17:01 +0530
Message-Id: <20190610074710.15677-1-nishkadg.linux@gmail.com>
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
Changes in v2:
- Send as part of a patch series.

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

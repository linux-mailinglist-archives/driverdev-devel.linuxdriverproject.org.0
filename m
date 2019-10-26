Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A12DE5A62
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 14:12:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7C5C920439;
	Sat, 26 Oct 2019 12:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3V9dkkwU0nad; Sat, 26 Oct 2019 12:11:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DE1EB2040A;
	Sat, 26 Oct 2019 12:11:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 76EFD1BF3D1
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7326887404
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 12:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SirZXT9Ls2wt for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 12:11:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4AB2787082
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 12:11:53 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id s1so5203271wro.0
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 05:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wlIbY6qWygm8S+/7/rhkO5IYEXU3HNNCNBVMVh8yCIg=;
 b=QkRz5TS+iFvdmdL9sc6n1xAKsruuwESTowZ3YOng6vNzBeGUCxtdG9ZD1o/nLWBi1F
 XzwYmeAtVbEWNdP13i9fCTMDU9AmpypPofoC5yYQtleVGLYLAsNz0yzGaZE/k2cWEAHe
 VI/dxAyAfql6ZsxEHjzGSoxKusK5p+tpCkW/+pAlpnbxZnF/6GHuQvqJZEHJf2GxsfJJ
 TIvgcSaEbFixcMwQTzPrmktGoUHtBrNR26O0ezgcyLLrl9BqYB8iro1TrEVgEl1TiNRn
 AyoFDrzsJVlo9VLXTkS9gqnXYt7fqyVs0hlwuz3QoNvqnDzk9RWfOS8yVxsTis73wKdN
 Hz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wlIbY6qWygm8S+/7/rhkO5IYEXU3HNNCNBVMVh8yCIg=;
 b=Dd0djgRnZhfsfQeqPjAvGVZRvJlgVb/82VhUIyFhxlE48RUcNlKiAAM+mIzYG78/Zq
 ia7CwheTlSLQcuR1kccR2RWbY8N1idRilA7r2pqnnuNfnrFHFZzUjWVwlT+oB73Cex7w
 E9SiAmpxbctmSwJrBHd34c0af/YyF5YrcUPmYq7hBYLocuSMnG8aMmjBeCGpYmrGyLa5
 33N7H+h2PGTGGHQLLFAgEOzLgrJlCzhFMDJDwly40le0qzCQ9jJFu0mYgitsqmYwFWDH
 kefURIMy9/ePnW1Y0nj9TtgaN8XuN5DBB7PNmurmIWyxOZnJars2PmGpdj6NOfeNnzYg
 wlig==
X-Gm-Message-State: APjAAAVp2U/KBK3y7WxZQHLnLGVqUR07QZaluqb3t7lCaFZd9pTY+r3l
 x7XQgKPvd5gOeVoLpOlcBKI=
X-Google-Smtp-Source: APXvYqxuZDSI7upYqoj7hx/zA0PUVltdu969pgZg2g35ChqNdRhbXhQ1UyaBC9aHvldnmchGah3vgg==
X-Received: by 2002:adf:e488:: with SMTP id i8mr7185919wrm.302.1572091911725; 
 Sat, 26 Oct 2019 05:11:51 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id v8sm5789906wra.79.2019.10.26.05.11.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Oct 2019 05:11:50 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/7] staging: rtl8188eu: cleanup comments in rtw_sta_mgt.c
Date: Sat, 26 Oct 2019 14:11:29 +0200
Message-Id: <20191026121135.181897-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup comments in rtw_sta_mgt.c to use kernel block comment style
and not exceed 80 characters line length.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 91a30142c567..cbe970979eb0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -199,10 +199,13 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 		pstapriv->asoc_sta_count++;
 		spin_unlock_bh(&pstapriv->sta_hash_lock);
 
-/*  Commented by Albert 2009/08/13 */
-/*  For the SMC router, the sequence number of first packet of WPS handshake will be 0. */
-/*  In this case, this packet will be dropped by recv_decache function if we use the 0x00 as the default value for tid_rxseq variable. */
-/*  So, we initialize the tid_rxseq variable as the 0xffff. */
+		/* Commented by Albert 2009/08/13
+		 * For the SMC router, the sequence number of first packet of
+		 * WPS handshake will be 0. In this case, this packet will be
+		 * dropped by recv_decache function if we use the 0x00 as the
+		 * default value for tid_rxseq variable. So, we initialize the
+		 * tid_rxseq variable as the 0xffff.
+		 */
 
 		for (i = 0; i < 16; i++)
 			memcpy(&psta->sta_recvpriv.rxcache.tid_rxseq[i], &wRxSeqInitialValue, 2);
@@ -296,7 +299,9 @@ u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 
 	del_timer_sync(&psta->addba_retry_timer);
 
-	/* for A-MPDU Rx reordering buffer control, cancel reordering_ctrl_timer */
+	/* for A-MPDU Rx reordering buffer control, cancel
+	 * reordering_ctrl_timer
+	 */
 	for (i = 0; i < 16; i++) {
 		struct list_head *phead, *plist;
 		struct recv_frame *prframe;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA3D3AFE0
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 09:47:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BEB62854DB;
	Mon, 10 Jun 2019 07:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 98HIRXY2uH04; Mon, 10 Jun 2019 07:47:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9330B85308;
	Mon, 10 Jun 2019 07:47:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EFC611BF410
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ED46E85308
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 07:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id intfxs2oZbho for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 07:47:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6A83285258
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 07:47:25 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id bh12so3307134plb.4
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 00:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qYLC3k12H87sqyROomxEYSZqi3clFWpevzu3WjkHTP8=;
 b=kGzB4eJywtsuaLOc9PEZXILeAi/U0RQuQuVKZZBFXFkZ6z4u/ZHSUV0ol5LabZbmNV
 BsinEATJ9dtj1D+YZH+b/D2x7YDdB7fUmREfytu0z8OsuuWkvmWv6Yjsku/2Mx8nBros
 aOMvkznSAZsaIJypebBRu2bk44KSPk1uMXDJowiqgdmmpfiKIC3yYjKXAaAFdpCe8Yv/
 f6CCNU6J5rd84OoYD+byWUNXYi0vOINpQoD0OjWYvAG4TK+/bygrGNH0FIE8Mx7Fy0IA
 q768L9aoNZ0HiesZhMMTLwhWoUkPOcBxiuX8Q6XEZhiIiizuQagBLl4+P/LWp7BDFz3R
 +cdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qYLC3k12H87sqyROomxEYSZqi3clFWpevzu3WjkHTP8=;
 b=XQQ/Q8QqVWvlswxeb23YhOzDN5xzn8KUdonsy7pLXzDnqHnj/GPBE9KMysDqKJ69tF
 HHtNcJ8FTMtDblML2qIsrPashbiw8QyWgMywkBHu3KdOgdk018J1Slibvxdl2/fc3QHz
 3vHwu0IRdovnMPetggK13C3Zke0U9JOWRU4wGMYq5XyxezIvkFztQZkL1UJOVlJFF5em
 MTBZpjNzyCr6h0hTCiUZnnE9d7Kje1azKs02ouBMPRx2+SHLKT3M0nRmMESXHEbf8FMf
 o9RndpfAiLyGcYxr0WgNV1jPxgLrNc2VuvER+6TDFbtBEuSXiCal3XxhMRrmwqTrRO+d
 68wA==
X-Gm-Message-State: APjAAAWJ12iqb9lKMArw/SuW30XRPBxxutfgXOkk2OTUSGo4IrhgfZG0
 MvbZZVqyV3lQIAVx2G76MPc=
X-Google-Smtp-Source: APXvYqz5jN9L+CA/JQlwaBTAe2J7KI+2f2bMqasSo2yqAHvXTSWBmXHsaLHEyqkzMqUDdsXVgk55cQ==
X-Received: by 2002:a17:902:ac82:: with SMTP id
 h2mr69747322plr.303.1560152845095; 
 Mon, 10 Jun 2019 00:47:25 -0700 (PDT)
Received: from localhost.localdomain ([171.79.92.225])
 by smtp.gmail.com with ESMTPSA id f2sm8120965pgs.83.2019.06.10.00.47.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 10 Jun 2019 00:47:24 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH v2 02/10] staging: rtl8723bs: Change type of
 rtw_os_recvbuf_resource_free()
Date: Mon, 10 Jun 2019 13:17:02 +0530
Message-Id: <20190610074710.15677-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190610074710.15677-1-nishkadg.linux@gmail.com>
References: <20190610074710.15677-1-nishkadg.linux@gmail.com>
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

Change return type of function rtw_os_recvbuf_resource_free to void as
its return value is never stored, checked or otherwise used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Send as part of patch series.

 drivers/staging/rtl8723bs/include/recv_osdep.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c  | 6 +-----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/recv_osdep.h b/drivers/staging/rtl8723bs/include/recv_osdep.h
index 0e1baf170cfb..1056f615d0f9 100644
--- a/drivers/staging/rtl8723bs/include/recv_osdep.h
+++ b/drivers/staging/rtl8723bs/include/recv_osdep.h
@@ -29,7 +29,7 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv);
 void rtw_os_free_recvframe(union recv_frame *precvframe);
 
 
-int rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf);
+void rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf);
 
 _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8 *pdata);
 void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt_attrib *pattrib);
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 45145efa3f68..3fe9c2255edd 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -46,16 +46,12 @@ void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
 }
 
 /* free os related resource in struct recv_buf */
-int rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf)
+void rtw_os_recvbuf_resource_free(struct adapter *padapter, struct recv_buf *precvbuf)
 {
-	int ret = _SUCCESS;
-
 	if (precvbuf->pskb)
 	{
 		dev_kfree_skb_any(precvbuf->pskb);
 	}
-	return ret;
-
 }
 
 _pkt *rtw_os_alloc_msdu_pkt(union recv_frame *prframe, u16 nSubframe_Length, u8 *pdata)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

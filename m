Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1197ECCE
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:42:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8855023143;
	Fri,  2 Aug 2019 06:42:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2yS+zMYxc1M7; Fri,  2 Aug 2019 06:42:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E5C842305A;
	Fri,  2 Aug 2019 06:42:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37A281BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 34DD822EC1
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2bYis76iskzC for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:42:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B0D142049B
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:42:35 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id az7so33229922plb.5
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MgzHRU1XPgIdqQO0ON7dCJfYK+IhoYBZaKc1fe6/LcM=;
 b=tQZyR9ltQv0nuCh2d2BG9lzxrXuB4bWlUn7AY9QKMEZazWjimhE29fP7ySD/gvho75
 50/Uca60cg0jN2sqSpPGKjmmWoQ/P+gbFf1W1hAevKDwC51PPh8qKp9Iz5zpuwo9IkYl
 kEfsixVa+oEpPyhXlt2hAa623OFINyK5D08NJ0KhCXYgk8IEKUFFRF4ICO5Vbbr9sip8
 iz3/Uon3KI1cxAt/ZBFKFIM0MhT+FTJgg2s1sr+kVFtmeXhEbvjO7FrOuwFFa+V2qmzE
 msIX35lRcktTX5YL/1xpXFd0nQVN2cG2Tn/4p9sFxSX93sKBTJMaBuUAyZvBkR1+pr9Y
 RBvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MgzHRU1XPgIdqQO0ON7dCJfYK+IhoYBZaKc1fe6/LcM=;
 b=LMnokZ0/sjHHwYkDcJr6e1F1fxCNDqkwiWXhxqqN/1+5WBTyPUQuWmGZ/kH8DmIevP
 y58gcIUlCkJa7Jsnh6Ljz4KBfMmJgSQWLlU4ZxgZT1AepHsU1W49YxLw6e38IXgFPwJr
 hZRVwRH/D+vYZk7WawtJ4l/YnDRgujQLZ9MIAs1ffs4bbA7lqDX+2QvwiHnjvqc5ObZf
 nWP3cdj37W1k2A5Uv8D9Jiv/57yDl2bltqvrn18ylE6PINnLXtgaS/mFLy7pFo2Rb6tN
 zgHUZQHG93qZUkza21Tj6wcI7xD+UCey6dHJAHq6AqaR09k8jjKfoXAvDgz6E0P0ChmA
 lRgA==
X-Gm-Message-State: APjAAAXUGPHOWhhGocgfwME0vYtaND4A/x5rCyrxvrNiu5LMxfcAzhyK
 FoiDrG2lQfi1XvH/OK8uzw4=
X-Google-Smtp-Source: APXvYqx/9pJv1AK78kJhjf4I2yhxmdQ0QoXEnVzR1OgJz1SkFtXj82zrpinln2NPH7Nz1of91TVU3w==
X-Received: by 2002:a17:902:1004:: with SMTP id
 b4mr132029066pla.325.1564728155440; 
 Thu, 01 Aug 2019 23:42:35 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id v138sm84934268pfc.15.2019.08.01.23.42.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:42:34 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 5/9] staging: rtl8712: r8712_os_recvbuf_resource_free():
 Change return type
Date: Fri,  2 Aug 2019 12:12:08 +0530
Message-Id: <20190802064212.30476-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190802064212.30476-1-nishkadg.linux@gmail.com>
References: <20190802064212.30476-1-nishkadg.linux@gmail.com>
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

Change return type of r8712_os_recvbuf_resource_free from int to void as
it always returns _SUCCESS and this return value is never stored,
checked or otherwise used. Remove return statement accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c | 5 ++---
 drivers/staging/rtl8712/recv_osdep.h | 4 ++--
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 682f5b2802ee..215fca4abb3a 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -59,8 +59,8 @@ int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,
 }
 
 /*free os related resource in struct recv_buf*/
-int r8712_os_recvbuf_resource_free(struct _adapter *padapter,
-			     struct recv_buf *precvbuf)
+void r8712_os_recvbuf_resource_free(struct _adapter *padapter,
+				    struct recv_buf *precvbuf)
 {
 	if (precvbuf->pskb)
 		dev_kfree_skb_any(precvbuf->pskb);
@@ -68,7 +68,6 @@ int r8712_os_recvbuf_resource_free(struct _adapter *padapter,
 		usb_kill_urb(precvbuf->purb);
 		usb_free_urb(precvbuf->purb);
 	}
-	return _SUCCESS;
 }
 
 void r8712_handle_tkip_mic_err(struct _adapter *adapter, u8 bgroup)
diff --git a/drivers/staging/rtl8712/recv_osdep.h b/drivers/staging/rtl8712/recv_osdep.h
index 3cfafef1af91..792f9cfbacd9 100644
--- a/drivers/staging/rtl8712/recv_osdep.h
+++ b/drivers/staging/rtl8712/recv_osdep.h
@@ -32,8 +32,8 @@ void r8712_os_recv_resource_alloc(struct _adapter *padapter,
 				  union recv_frame *precvframe);
 int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,
 				    struct recv_buf *precvbuf);
-int r8712_os_recvbuf_resource_free(struct _adapter *padapter,
-				   struct recv_buf *precvbuf);
+void r8712_os_recvbuf_resource_free(struct _adapter *padapter,
+				    struct recv_buf *precvbuf);
 void r8712_init_recv_timer(struct recv_reorder_ctrl *preorder_ctrl);
 
 #endif
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

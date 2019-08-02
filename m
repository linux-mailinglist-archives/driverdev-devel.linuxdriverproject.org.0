Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C9A7ECCA
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:42:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 314ED87954;
	Fri,  2 Aug 2019 06:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hZMX5byftt09; Fri,  2 Aug 2019 06:42:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD096878EA;
	Fri,  2 Aug 2019 06:42:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 704FD1BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6D6568843F
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7OWlmDJacBON for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:42:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DC31688427
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:42:24 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id g2so35506312pfq.0
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wJebj2glaUXp6muVa3C8SVVj0HU5LmG3hEjOR8AVVxM=;
 b=jX5SBRJYzJ9FlKwErBmnERKINaSlNW7ZMOZXWvWiARwJyhYYqblPJtdpVxPCrLmza6
 CFKMPE1z3YW+OExnm1PvhkDHFSifm1ETIPfoKR2bk7QLx6X8V6zYVRVvI/6UU/bqXKPN
 RTg32rSFxegq0dRGbrytH4bu32azPna+kCIbUkK73x5JRUoICWML4g/5yDyKS1+CyTEZ
 oNGc3PCWnMGI+JrjUnOLLrt6JYp8M3RoWMK9MWbzmw9RtQMLyyA7moX93v8v6+r5vou2
 lOKgdrRIIciJf+v+CgVUhfJrgQ1eJx+mSNhPlAY5KwZXh0Xe4P4xbvrCagPyLF42HhbB
 CsIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wJebj2glaUXp6muVa3C8SVVj0HU5LmG3hEjOR8AVVxM=;
 b=DFqHdca6AD4heEtPIlQoGIi6kKklQiwxLxSklL8upL9nPnoKhdpqUr9Oc8rpqrFZl4
 ctQGGhXALjOm5VW7U/WPWN+iN7v6Ne7QT2Hqn42mzbXEtrQIbJHgPi66p6PpdTL7NpMk
 AiEouK37CE45XAHkO7ztVpy0LePj+yeyTEqOY3aY59WGsti937YWNRX9SmL3GsPPrUr+
 vCWqnYY3gK6ijS8SskZVEThwqAzDkNRNbNbke2qhmumbjjieVWcfHn9GMPk1mnPZQWhX
 p83XIoQnwfkGT3xfl2XMompOKRPVx43ccZehOE6pNxG405wqzqioOC90lKuzTizFL2N8
 t7fQ==
X-Gm-Message-State: APjAAAVxz/PqG3wN08Ikqe0jUF2lCsCm5vKTTdJ6qLZq3YXkuw/L4aIc
 J8S6J0W0hM97gAiWYPsBjawa5mIp2vI=
X-Google-Smtp-Source: APXvYqziTANylnCLEROq3aDc4x1g6wzlHr7yRymf1skk8tRrhr3fnFce1E/DyXTo6xV8/z4IkHV6eQ==
X-Received: by 2002:a63:2157:: with SMTP id s23mr5942808pgm.167.1564728144475; 
 Thu, 01 Aug 2019 23:42:24 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id v138sm84934268pfc.15.2019.08.01.23.42.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:42:23 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 1/9] staging: rtl8712: r8712_os_recv_resource_alloc(): Change
 return type
Date: Fri,  2 Aug 2019 12:12:04 +0530
Message-Id: <20190802064212.30476-1-nishkadg.linux@gmail.com>
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

Change return type of function r8712_os_recv_resource_alloc from int to
void as its return value is never used.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/recv_linux.c | 5 ++---
 drivers/staging/rtl8712/recv_osdep.h | 4 ++--
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/recv_linux.c b/drivers/staging/rtl8712/recv_linux.c
index 70a4dcd4a1e5..aaa77823115a 100644
--- a/drivers/staging/rtl8712/recv_linux.c
+++ b/drivers/staging/rtl8712/recv_linux.c
@@ -29,12 +29,11 @@
 
 /*init os related resource in struct recv_priv*/
 /*alloc os related resource in union recv_frame*/
-int r8712_os_recv_resource_alloc(struct _adapter *padapter,
-				 union recv_frame *precvframe)
+void r8712_os_recv_resource_alloc(struct _adapter *padapter,
+				  union recv_frame *precvframe)
 {
 	precvframe->u.hdr.pkt_newalloc = NULL;
 	precvframe->u.hdr.pkt = NULL;
-	return _SUCCESS;
 }
 
 /*alloc os related resource in struct recv_buf*/
diff --git a/drivers/staging/rtl8712/recv_osdep.h b/drivers/staging/rtl8712/recv_osdep.h
index dcd3b484c793..c93ba4c3eb9b 100644
--- a/drivers/staging/rtl8712/recv_osdep.h
+++ b/drivers/staging/rtl8712/recv_osdep.h
@@ -28,8 +28,8 @@ void r8712_handle_tkip_mic_err(struct _adapter *padapter, u8 bgroup);
 int r8712_init_recv_priv(struct recv_priv *precvpriv,
 			 struct _adapter *padapter);
 void r8712_free_recv_priv(struct recv_priv *precvpriv);
-int r8712_os_recv_resource_alloc(struct _adapter *padapter,
-				 union recv_frame *precvframe);
+void r8712_os_recv_resource_alloc(struct _adapter *padapter,
+				  union recv_frame *precvframe);
 int r8712_os_recvbuf_resource_alloc(struct _adapter *padapter,
 				    struct recv_buf *precvbuf);
 int r8712_os_recvbuf_resource_free(struct _adapter *padapter,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

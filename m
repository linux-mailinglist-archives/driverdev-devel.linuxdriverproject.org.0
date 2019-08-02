Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 188CA7ECCB
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 08:42:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9C6C98796A;
	Fri,  2 Aug 2019 06:42:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qHmnIGwgLTzB; Fri,  2 Aug 2019 06:42:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ADB668793D;
	Fri,  2 Aug 2019 06:42:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A24841BF27A
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9C8F08843F
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 06:42:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T+ZqjLfvT1nU for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 06:42:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5EB5588427
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 06:42:27 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id y15so35510882pfn.5
 for <devel@driverdev.osuosl.org>; Thu, 01 Aug 2019 23:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nRgdwl+XwQgO17oZp+jtHw6cGamRvQaJwB/U3Q20EtI=;
 b=n/NbihgGKaioHauAqpYwxmgArr3oggFcWZsUtHKfTh0c75HnkdZ6sUZ33dVnk7E2Vy
 +8yUxVlKb04C9/0ETZ1aIArX7uFUsZmcpxJxSErjcGScYZod8W5wU3DpVG9WW6EAPclE
 jawWhG5zdV1rzX4H3A/1k4gl1NKD6N6SVQwfAr5tM0F/6iWY8bWM3LEkUP8i0+NmYRen
 IBWOSPpJ1NxLk7vdR1l3w3UXgCeGUhj8DBoOoWIdtHgeXL2xbc+/APwxlWmc/ISIimw7
 RHSJBvIihi6Ase+frHlLNQC9wpiJUaiYJqpI4XAmuhj4YneGMR+44RW8NxrrIssA5KB0
 fR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nRgdwl+XwQgO17oZp+jtHw6cGamRvQaJwB/U3Q20EtI=;
 b=ETKiYTS+sdj1m37KXpuI3Yps7r1m5zU7RZF6jvKabBET9eF84CD0wG7HHmbztCy7J9
 xNvIj24wP6hQTHfG77hbjOPElWfNVVSOX/xFCE1WmpLm6FiP6fgQzLioiRWi/FIR4kUt
 r7E4XHZdmZjtt2ufL8ExR1rdRblxgZHJNz3VditiwtJNmm5fOs0YhKrwn47CuA8lgKPG
 df1c3AAWRr76Lu9OD2+rwUnI7uFPuzngzKojfI8o84zb7QKdyX2Eck/V1viR1p4llDXK
 L8QPzhFC0F6sebbxYuAVTXPw4PaKkCHbcR83M9Gr66/JNyR8Vv1y8s9WAz7t4eowfwzA
 LO5Q==
X-Gm-Message-State: APjAAAX4KSkW12L8n8laRNM9crUkyY7gd5makMFu1xrfMwJUfAU7p5ww
 VmmQK/qjqiZDO/xG7oEfrFg=
X-Google-Smtp-Source: APXvYqwLdzSpVdYI0iQLzEcA/a/k6z5q982vNR22t4mjFhEtbRSwVKqLbc5nq9r1Dbc2SO7mqJa5kg==
X-Received: by 2002:a62:3883:: with SMTP id
 f125mr58365502pfa.258.1564728147108; 
 Thu, 01 Aug 2019 23:42:27 -0700 (PDT)
Received: from localhost.localdomain ([122.163.105.8])
 by smtp.gmail.com with ESMTPSA id v138sm84934268pfc.15.2019.08.01.23.42.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 23:42:26 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 2/9] staging: rtl8712: _r8712_init_recv_priv(): Change return
 type
Date: Fri,  2 Aug 2019 12:12:05 +0530
Message-Id: <20190802064212.30476-2-nishkadg.linux@gmail.com>
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

Change return type of _r8712_init_recv_priv as its return value is never
checked or used. Modify return statements accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/recv_osdep.h   | 2 +-
 drivers/staging/rtl8712/rtl871x_recv.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/recv_osdep.h b/drivers/staging/rtl8712/recv_osdep.h
index c93ba4c3eb9b..7a0fa227de73 100644
--- a/drivers/staging/rtl8712/recv_osdep.h
+++ b/drivers/staging/rtl8712/recv_osdep.h
@@ -18,7 +18,7 @@
 #include "drv_types.h"
 #include <linux/skbuff.h>
 
-sint _r8712_init_recv_priv(struct recv_priv *precvpriv,
+void _r8712_init_recv_priv(struct recv_priv *precvpriv,
 			   struct _adapter *padapter);
 void _r8712_free_recv_priv(struct recv_priv *precvpriv);
 s32  r8712_recv_entry(union recv_frame *precv_frame);
diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index 9969e5265a40..79c7a329e9f6 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -48,7 +48,7 @@ void _r8712_init_sta_recv_priv(struct sta_recv_priv *psta_recvpriv)
 	_init_queue(&psta_recvpriv->defrag_q);
 }
 
-sint _r8712_init_recv_priv(struct recv_priv *precvpriv,
+void _r8712_init_recv_priv(struct recv_priv *precvpriv,
 			   struct _adapter *padapter)
 {
 	sint i;
@@ -64,7 +64,7 @@ sint _r8712_init_recv_priv(struct recv_priv *precvpriv,
 				sizeof(union recv_frame) + RXFRAME_ALIGN_SZ,
 				GFP_ATOMIC);
 	if (precvpriv->pallocated_frame_buf == NULL)
-		return _FAIL;
+		return;
 	kmemleak_not_leak(precvpriv->pallocated_frame_buf);
 	precvpriv->precv_frame_buf = precvpriv->pallocated_frame_buf +
 				    RXFRAME_ALIGN_SZ -
@@ -80,7 +80,7 @@ sint _r8712_init_recv_priv(struct recv_priv *precvpriv,
 		precvframe++;
 	}
 	precvpriv->rx_pending_cnt = 1;
-	return r8712_init_recv_priv(precvpriv, padapter);
+	r8712_init_recv_priv(precvpriv, padapter);
 }
 
 void _r8712_free_recv_priv(struct recv_priv *precvpriv)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

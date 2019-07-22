Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E2CC86FC13
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 11:24:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E29CA8565B;
	Mon, 22 Jul 2019 09:24:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6azEDyEIRTJw; Mon, 22 Jul 2019 09:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF1FD85570;
	Mon, 22 Jul 2019 09:24:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CC1951BF302
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:24:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B408B2042A
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gfCjsCfB5mO5 for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 09:24:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id C830E20448
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 09:24:05 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id y8so18940215plr.12
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 02:24:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VshO/bo8gDNA5q24fGExh+skSdpfpJLHclA5+qk7yAo=;
 b=KBbQHbXJAxHjd6rhNmFrEHzlAx0ac/nF6rv38x7WH+gPLl0gqSjwwAMnfhJ1eygaRZ
 wLuidnyMx+reB2+d42w8iXofu3O53yOBYW3w0CtaoaTKNyhkEHjiSaaZDVGdD3T/w7UD
 JvMshwwqo2dtcnSZ4h6hzz+ll0abDwk00nhQWON3vwZ8byizW6DT4LpNmEotegRd0+tA
 PXDndUxAmCvjhPNGsVbpMbquAVaATtUiUdlw8n6ZVl/xD0yyJh+EN1zaznL+Ob8Ru3hM
 ZguUgryKgnnnkPWg4yXg8Bg0YbOzeaohD93DL4kNwtRQsMlADeSQDtpLVWuPNlcwMfGY
 M5zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VshO/bo8gDNA5q24fGExh+skSdpfpJLHclA5+qk7yAo=;
 b=LJE/1r35HthF+5qPcdUNlJI50jUqCrb+zD+PfW0bQs9mn4UkTPjHbUudzm0bSWiQLm
 +98mRoC2HCw0xb80y8EAYz0PwwjtHZJUj/2JM1FLnJnxRtMkM1pwcfmSSOcgy/H4gXS1
 6MWkt7xyWfSTxd/Ea1jsEhHGWz4xSlF77iqJjQPNqxZFMYJYKNWI4+hSiW9ZQZJT84XZ
 0YTv/BcZHX1Xj4XD+Rmu6j3QDrjBAXsgIIDq6H2onqxba0ltjP9cirruMYojw8rGiR9z
 tK0BdcVAr8GouyMcWHfg/DQEgvub7aOS7zl3vXwNdtY5rgj31MjLNbKXzpuwRsnT59Z1
 Lb+A==
X-Gm-Message-State: APjAAAVqdFHyYh9f4wqCRmbsjga5NjQ7VpBP4FcTSOHfBgQ2PGTXNboX
 Xq7Wlg8DB2BGg7u5FDOMIvo=
X-Google-Smtp-Source: APXvYqy/7lxlYozDw0vKyUBz+MzvG5c6zS+yJYV58QvBTtQtnCk/nKGEWBKjQ+rfABW26f58WvjeRw==
X-Received: by 2002:a17:902:ab8f:: with SMTP id
 f15mr73506497plr.159.1563787445470; 
 Mon, 22 Jul 2019 02:24:05 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id f19sm52010125pfk.180.2019.07.22.02.24.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 02:24:05 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 5/8] staging: rtl8712: init_mp_priv(): Change return values
Date: Mon, 22 Jul 2019 14:53:38 +0530
Message-Id: <20190722092341.21030-5-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190722092341.21030-1-nishkadg.linux@gmail.com>
References: <20190722092341.21030-1-nishkadg.linux@gmail.com>
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

Change return values of init_mp_priv from _SUCCESS/_FAIL to 0/-ENOMEM
respectively.
Remove label that returns the required value and return the values
directly as they are set.
Consequently remove now-unnecessary return variable.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mp.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index edd3da05fc06..1a39a96b726f 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -35,7 +35,7 @@ static void _init_mp_priv_(struct mp_priv *pmp_priv)
 
 static int init_mp_priv(struct mp_priv *pmp_priv)
 {
-	int i, res;
+	int i;
 	struct mp_xmit_frame *pmp_xmitframe;
 
 	_init_mp_priv_(pmp_priv);
@@ -45,8 +45,7 @@ static int init_mp_priv(struct mp_priv *pmp_priv)
 				sizeof(struct mp_xmit_frame) + 4,
 				GFP_ATOMIC);
 	if (!pmp_priv->pallocated_mp_xmitframe_buf) {
-		res = _FAIL;
-		goto _exit_init_mp_priv;
+		return -ENOMEM;
 	}
 	pmp_priv->pmp_xmtframe_buf = pmp_priv->pallocated_mp_xmitframe_buf +
 			 4 -
@@ -62,9 +61,7 @@ static int init_mp_priv(struct mp_priv *pmp_priv)
 		pmp_xmitframe++;
 	}
 	pmp_priv->free_mp_xmitframe_cnt = NR_MP_XMITFRAME;
-	res = _SUCCESS;
-_exit_init_mp_priv:
-	return res;
+	return 0;
 }
 
 static int free_mp_priv(struct mp_priv *pmp_priv)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFCB6FC0F
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 11:24:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EDCCE2037B;
	Mon, 22 Jul 2019 09:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DFobmZv8iN3D; Mon, 22 Jul 2019 09:23:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3CD5A203CC;
	Mon, 22 Jul 2019 09:23:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A371F1BF302
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:23:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9E92785264
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 09:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rt4YqZ5MWRCW for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 09:23:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1464585218
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 09:23:53 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id p184so17078986pfp.7
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 02:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jbkBekStEE2br7BsMXukGUopo9d1X1jGvnV15xw/Tl4=;
 b=qLViEZE17ELhPm3W1OHTAbL/kDERuE/O8/4OubJmZVsuCysMkSH3EVzla20asD6Xgm
 0wtHWFQR/0VlsMyzLN47guTuAsPDKUhe1Jm7xkL1LHr8pF7Uwyc+m6Yav/M/zcwGwA4Q
 bg3DAgye247iAudkiHU+g2VJDlMY0XKwSG3jJIO7G2kD8mxkoUHZ+QY2l9D/x00WQwxQ
 sx2sBi08dBeGpAKvEB2mgzqPI79l5qWBCVxAIWYY91ltDs8mSb29AjxVGMIqConm1St4
 +BcVjqzTnut9kLSpQKgodhot1WAnxaPwq8iJ2cO2XVHBmrABxKBZuYhgwDk0ZFSCaLAJ
 oX3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jbkBekStEE2br7BsMXukGUopo9d1X1jGvnV15xw/Tl4=;
 b=LgBbqXqiOYC10RVKhK8LTVZCnXqfwEkhIKLU7YAIO6UQzhgR2MmNOA/GUSIbkJXH/3
 avh6cbJQJNKzsve/pl2SW+iZSECgnzVVUVF+xhASf7noUI5D2lzNZNS4qV2qEmXqcbau
 pODs6D2ZkcocxVwRlG7Q6fyMWPeqFKTpxQBC0vsbvH7kWT3iLgJ9hvgMzJd10s1wPW9N
 roHhXN1tiRpBHGPSYZ2zbXe7l0fmVdS5b7Ij49HwyUc9hjRbbCgc8yEs5GSZXb6znveZ
 SboCtD4AayNkgYM+PhFtu33t7qUTiLl2ePJzhpkH76Y/l+jIjGgdIscXUnBTeZx78o37
 P1iw==
X-Gm-Message-State: APjAAAVKcJr9yCe5vIIrNNzEfDUr4v4xyBE1PMr/aIvDFzU4Nxv9qz7y
 ZK+rU3U4GlOmp2jGJeCMT1I9MxE7
X-Google-Smtp-Source: APXvYqzUBkLURerdGxHEw1nkuQaEbtNbZgXStDmy4Dh2MHHLqjog6SulGfKs95s1RhPaJJqw3k68Pw==
X-Received: by 2002:a17:90a:db08:: with SMTP id
 g8mr73530605pjv.39.1563787433665; 
 Mon, 22 Jul 2019 02:23:53 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id f19sm52010125pfk.180.2019.07.22.02.23.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 02:23:53 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 1/8] staging: rtl8712: r8712_init_mlme_priv(): Change return
 values
Date: Mon, 22 Jul 2019 14:53:34 +0530
Message-Id: <20190722092341.21030-1-nishkadg.linux@gmail.com>
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

Change return values of r8712_init_mlme_priv from _SUCCESS/_FAIL to
0/-ENOMEM respectively. Modify call site accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c     | 2 +-
 drivers/staging/rtl8712/rtl871x_mlme.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index b554cf8bd679..b4059ea17e5c 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -302,7 +302,7 @@ u8 r8712_init_drv_sw(struct _adapter *padapter)
 	padapter->cmdpriv.padapter = padapter;
 	if (r8712_init_evt_priv(&padapter->evtpriv))
 		return _FAIL;
-	if (r8712_init_mlme_priv(padapter) == _FAIL)
+	if (r8712_init_mlme_priv(padapter))
 		return _FAIL;
 	_r8712_init_xmit_priv(&padapter->xmitpriv, padapter);
 	_r8712_init_recv_priv(&padapter->recvpriv, padapter);
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 0cc879a4d43f..a4922af61acd 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -53,7 +53,7 @@ int r8712_init_mlme_priv(struct _adapter *padapter)
 	pbuf = kmalloc_array(MAX_BSS_CNT, sizeof(struct wlan_network),
 			     GFP_ATOMIC);
 	if (!pbuf)
-		return _FAIL;
+		return -ENOMEM;
 	pmlmepriv->free_bss_buf = pbuf;
 	pnetwork = (struct wlan_network *)pbuf;
 	for (i = 0; i < MAX_BSS_CNT; i++) {
@@ -67,7 +67,7 @@ int r8712_init_mlme_priv(struct _adapter *padapter)
 	pmlmepriv->sitesurveyctrl.traffic_busy = false;
 	/* allocate DMA-able/Non-Page memory for cmd_buf and rsp_buf */
 	r8712_init_mlme_timer(padapter);
-	return _SUCCESS;
+	return 0;
 }
 
 struct wlan_network *_r8712_alloc_network(struct mlme_priv *pmlmepriv)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

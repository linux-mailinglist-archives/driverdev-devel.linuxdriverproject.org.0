Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FAF303B8
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:02:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1FAD6203E3;
	Thu, 30 May 2019 21:02:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P+Z8eDbunCvt; Thu, 30 May 2019 21:02:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 968BE203D3;
	Thu, 30 May 2019 21:02:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 204CF1BF365
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:02:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1D6F48832D
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:02:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJqptufV2-a8 for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:01:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 905328815D
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:01:59 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id c5so3037926pll.11
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 14:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7Rn97JUHpPdwbaTRS8tnudORzMA93pypME0DorT8PkU=;
 b=s1e9vPO0dPnKr5tdgPBRSA/qnQqXa1DW92dSBMji9f3tCWJgXJSxnznuxExoZcKnDX
 w+1+YQBiafAqRcil8a1d4G5emjeVAnM5i75yj2alJ/rP32bfhW8ZwMe2PR9w1tkcp93w
 eyQXqBcc3lKktB/2hvpwPzKxoB8M5iSlIkPGcl3IkMRlaBYieyLs+2hNxbW3FCgx0D1x
 5npfgpnPozJg4aSYUzfkYLXbtTRRqc6geqXLN5iG7q7JN7euMr1BiP//JJ6Zp87NxTFK
 v+d53/EL3wwdthCd4xVNS6ZHCvDf0myst+ZiRbzEpWeNoV1DaTkcGZqlxOKxcq46lApF
 /CGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7Rn97JUHpPdwbaTRS8tnudORzMA93pypME0DorT8PkU=;
 b=d6h18xpbZKi57iB8HHDMxn7+d7yh+ZxRzLOK5Nian9AtAroWexZtoNl3BthBK656w1
 BxBxxVXbJG8oU6QE1vmKltUsoQoDBuu+Esz1efjNNw9gKWKK685q10KP9rz5eoXuBxV4
 1UZrWRfO0TcMh22VbzIKSz65brNT7lAaXcY+H0xaa8mhPhnnfZH1PN+SwDyt+/pTQwfK
 J/ODUYOgueKnzH+AYT4+rlJXqzCEDaSpaU5nwTvR8T7/m06xKYsvQ9yarmYqV2RanNf7
 4q6PNsI68amXX8yxPWBscU8pxYSs+oacXL28VVnvp49FUk1mN1N60I3ER/9ForFyp1b7
 FSYA==
X-Gm-Message-State: APjAAAU65JKR4sq3F5iiT84AmmKXO0Daupf6RJKU/8qwCHuzKgfkGL4f
 Hx/+7g6PoeCxAXB+Uv0mTAg=
X-Google-Smtp-Source: APXvYqze68sDz+9fHQdmX4fZfLlak8YACBHqxghtnA6yXVdJFsh7XE1rOnmJBthbr6hYsYY7VVyzhw==
X-Received: by 2002:a17:902:b18c:: with SMTP id
 s12mr5312637plr.181.1559250119189; 
 Thu, 30 May 2019 14:01:59 -0700 (PDT)
Received: from localhost.localdomain ([47.15.209.13])
 by smtp.gmail.com with ESMTPSA id p21sm3790104pfn.129.2019.05.30.14.01.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 14:01:58 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, himadri18.07@gmail.com,
 colin.king@canonical.com, straube.linux@gmail.com, yangx92@hotmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: Remove function alloc_network
Date: Fri, 31 May 2019 02:31:41 +0530
Message-Id: <20190530210141.30221-1-nishkadg.linux@gmail.com>
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

Remove function alloc_network as it does nothing except call
_r8712_alloc_network. Further, to maintain consistency with
the names of other functions, rename _r8712_alloc_network as
r8712_alloc_network.
Also change the corresponding calls to either function
accordingly.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c  | 2 +-
 drivers/staging/rtl8712/rtl871x_mlme.c | 9 ++-------
 drivers/staging/rtl8712/rtl871x_mlme.h | 2 +-
 3 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 05a78ac24987..7c437ee9e022 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -880,7 +880,7 @@ void r8712_createbss_cmd_callback(struct _adapter *padapter,
 		}
 		r8712_indicate_connect(padapter);
 	} else {
-		pwlan = _r8712_alloc_network(pmlmepriv);
+		pwlan = r8712_alloc_network(pmlmepriv);
 		if (!pwlan) {
 			pwlan = r8712_get_oldest_wlan_network(
 				&pmlmepriv->scanned_queue);
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index f6ba3e865a30..3b6846c43d72 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -70,7 +70,7 @@ int r8712_init_mlme_priv(struct _adapter *padapter)
 	return _SUCCESS;
 }
 
-struct wlan_network *_r8712_alloc_network(struct mlme_priv *pmlmepriv)
+struct wlan_network *r8712_alloc_network(struct mlme_priv *pmlmepriv)
 {
 	unsigned long irqL;
 	struct wlan_network *pnetwork;
@@ -210,11 +210,6 @@ void r8712_free_mlme_priv(struct mlme_priv *pmlmepriv)
 	kfree(pmlmepriv->free_bss_buf);
 }
 
-static struct	wlan_network *alloc_network(struct mlme_priv *pmlmepriv)
-{
-	return _r8712_alloc_network(pmlmepriv);
-}
-
 /*
  * return the wlan_network with the matching addr
  * Shall be called under atomic context...
@@ -388,7 +383,7 @@ static void update_scanned_network(struct _adapter *adapter,
 		} else {
 			/* Otherwise just pull from the free list */
 			/* update scan_time */
-			pnetwork = alloc_network(pmlmepriv);
+			pnetwork = r8712_alloc_network(pmlmepriv);
 			if (!pnetwork)
 				return;
 			bssid_ex_sz = r8712_get_wlan_bssid_ex_sz(target);
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.h b/drivers/staging/rtl8712/rtl871x_mlme.h
index 8a54181f4816..3973a49dc32e 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.h
+++ b/drivers/staging/rtl8712/rtl871x_mlme.h
@@ -196,7 +196,7 @@ void _r8712_join_timeout_handler(struct _adapter *adapter);
 void r8712_scan_timeout_handler(struct _adapter *adapter);
 void _r8712_dhcp_timeout_handler(struct _adapter *adapter);
 void _r8712_wdg_timeout_handler(struct _adapter *adapter);
-struct wlan_network *_r8712_alloc_network(struct mlme_priv *pmlmepriv);
+struct wlan_network *r8712_alloc_network(struct mlme_priv *pmlmepriv);
 sint r8712_if_up(struct _adapter *padapter);
 void r8712_joinbss_reset(struct _adapter *padapter);
 unsigned int r8712_restructure_ht_ie(struct _adapter *padapter, u8 *in_ie,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

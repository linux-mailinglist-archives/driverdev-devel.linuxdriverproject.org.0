Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D685667A4
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 09:18:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1F6BC2279E;
	Fri, 12 Jul 2019 07:18:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N6kqiwwQsV8d; Fri, 12 Jul 2019 07:18:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 62C4122795;
	Fri, 12 Jul 2019 07:18:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19DFD1BF255
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1648587633
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I0OY9u3YmSYn for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 07:18:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 430A68763C
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 07:18:21 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id b7so4338776pls.6
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 00:18:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9rOCl9Gd+8qfAPeInD+u8m/REclLKt9vXciOwfFiePo=;
 b=VILjmMPfIR6eNCMIIkb4q6FctQcFerWAHRSNeEaKQEnQd+mhkFiwFECjXMFRxWIIRe
 v4pXv5UnUcIRjv6gYW2vVt6lIWfedXT1H0FqzDxLEnXJzPzftlHzKAOIbFI0vEq5rRef
 UXr/ZXWYsVopUUWT+M7cRLC3rR6QkT70WEoxxC0EzmkJkjo3mxQZYWH7KAfN4D08oxCI
 zf0L+QcKSOYUXNihil9q5D9Y6ESytnSbLOfZfqV454epMCBqfvCGhycZwQyMGLmAoBWZ
 w7dH20ZorTCMSxF2/C8TC+OnOWVNpmPRuJkae3qc/5U5dzmLMsXdT0brNbxIi8FoZEUI
 a+Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9rOCl9Gd+8qfAPeInD+u8m/REclLKt9vXciOwfFiePo=;
 b=QZN9v/kg8IIfY+VJ7y47ayZDB1Y4GJm+awJQhJGQ0XyiG3xkCgOD5kPhfTVSkptQ3o
 JDu/7rUixSnkGNT8PEKkCExw44XEQZ9cuS8gHzvHPN6QxQpccXw7D6LjyMspmuG5cljD
 sAbB3oNP89LtqW/HEXqFBqDLrhFMakcsi+at55a54flEIHDPm4NmVS4kzU7Xw/2zfGSl
 2Wr3HITUkyroDp5vJnGj2dvRkD2i/lB4ofKAA4HDDlJhoeu66yvE78m1xP06Hvr1a5ZT
 Iqqs3jUyHeJ3EGEweNcuMOOPqvt7Z8cqsDImH9g3LZowtLVzExakHxZSlVYsFRRIaMeC
 OjfA==
X-Gm-Message-State: APjAAAVMojims8WQpcWhUH+5Shz+CXWsPs8mM17ihLIJ4498kRJkI2BA
 lWQb0+WSSv6Ccqo9cJMWgWc=
X-Google-Smtp-Source: APXvYqzkgGcZiOIL9YMNRxOI4FZZdOfCgGrpXd9vwBwI9YQaTf3f7h+DcQw6+894VmLPieY/d0TanA==
X-Received: by 2002:a17:902:2a29:: with SMTP id
 i38mr9753330plb.46.1562915900982; 
 Fri, 12 Jul 2019 00:18:20 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id b126sm14019422pfa.126.2019.07.12.00.18.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 00:18:20 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 6/8] staging: rtl8188eu: Replace function rtw_alloc_network()
Date: Fri, 12 Jul 2019 12:47:43 +0530
Message-Id: <20190712071746.2474-6-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712071746.2474-1-nishkadg.linux@gmail.com>
References: <20190712071746.2474-1-nishkadg.linux@gmail.com>
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

Change external call site of _rtw_alloc_network to rtw_alloc_network.
Remove function rtw_alloc_network as all it does is call
_rtw_alloc_network.
Rename _rtw_alloc_network to rtw_alloc_network to maintain compatibility
with call sites. Keep its type as non-static (even though the old
rtw_alloc_network was static) as this functionality is used in other
files as well.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_cmd.c     | 2 +-
 drivers/staging/rtl8188eu/core/rtw_mlme.c    | 9 ++-------
 drivers/staging/rtl8188eu/include/rtw_mlme.h | 2 +-
 3 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index a24b40761af2..815dfee11968 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -1200,7 +1200,7 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 
 		rtw_indicate_connect(padapter);
 	} else {
-		pwlan = _rtw_alloc_network(pmlmepriv);
+		pwlan = rtw_alloc_network(pmlmepriv);
 		spin_lock_bh(&pmlmepriv->scanned_queue.lock);
 		if (!pwlan) {
 			pwlan = rtw_get_oldest_wlan_network(&pmlmepriv->scanned_queue);
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 43c7531e777e..1ec3b237212e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -104,7 +104,7 @@ void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv)
 	}
 }
 
-struct wlan_network *_rtw_alloc_network(struct mlme_priv *pmlmepriv)
+struct wlan_network *rtw_alloc_network(struct mlme_priv *pmlmepriv)
 					/* _queue *free_queue) */
 {
 	struct wlan_network *pnetwork;
@@ -119,7 +119,7 @@ struct wlan_network *_rtw_alloc_network(struct mlme_priv *pmlmepriv)
 	list_del_init(&pnetwork->list);
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
-		 ("_rtw_alloc_network: ptr=%p\n", &pnetwork->list));
+		 ("rtw_alloc_network: ptr=%p\n", &pnetwork->list));
 	pnetwork->network_type = 0;
 	pnetwork->fixed = false;
 	pnetwork->last_scanned = jiffies;
@@ -272,11 +272,6 @@ u8 *rtw_get_beacon_interval_from_ie(u8 *ie)
 	return ie + 8;
 }
 
-static struct wlan_network *rtw_alloc_network(struct mlme_priv *pmlmepriv)
-{
-	return _rtw_alloc_network(pmlmepriv);
-}
-
 int rtw_is_same_ibss(struct adapter *adapter, struct wlan_network *pnetwork)
 {
 	int ret = true;
diff --git a/drivers/staging/rtl8188eu/include/rtw_mlme.h b/drivers/staging/rtl8188eu/include/rtw_mlme.h
index 9abb7c320192..010f0c42368a 100644
--- a/drivers/staging/rtl8188eu/include/rtw_mlme.h
+++ b/drivers/staging/rtl8188eu/include/rtw_mlme.h
@@ -333,7 +333,7 @@ void rtw_dynamic_check_timer_handlder(struct timer_list *t);
 
 void rtw_free_mlme_priv_ie_data(struct mlme_priv *pmlmepriv);
 
-struct wlan_network *_rtw_alloc_network(struct mlme_priv *pmlmepriv);
+struct wlan_network *rtw_alloc_network(struct mlme_priv *pmlmepriv);
 
 int rtw_if_up(struct adapter *padapter);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

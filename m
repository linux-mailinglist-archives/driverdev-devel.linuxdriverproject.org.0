Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AFC4CD32
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 13:53:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0BBC286027;
	Thu, 20 Jun 2019 11:53:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3PcVnMAw0uD2; Thu, 20 Jun 2019 11:53:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA33585FAA;
	Thu, 20 Jun 2019 11:53:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0CAC41BF578
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C5E1585FF3
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5P68IJkJQyLL for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 11:53:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E180C85FB2
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 11:53:30 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 81so1525106pfy.13
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 04:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cUntAQYe+wfYggukV2RCh/FIcUiSmjEU8qT0jYze2OI=;
 b=gO8feUPiVQGviUPkcXRL0eBAzzIiiRU5/Rehtmm0uvvPgTJtTiiPY/VfvGKnE0ODZ9
 9JHzbKYkRnUziGmdLcIxo+itak7RnlwUOq4gUw88ybvw1AwbnsxOPAoIVvfz9TKuj41J
 fzny34kcoU6hFsaWSKtSwsWu+/pDYmLwpfEeznnUWf5T1b9iWvcBLTv9lsXjCQhNJXjE
 29xjdETf47GoBgeaa8A1Y6BoadqDB8oxbVCj7zckOyfwHHyBvuDkmtj4AJodRE4Ovupg
 K1xqzPhfXmN50v9PQYhYYpdbDURDXzgeJuC29cysFbacG8li7JFyb3RiCaHwEBD/GVXj
 KxFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cUntAQYe+wfYggukV2RCh/FIcUiSmjEU8qT0jYze2OI=;
 b=htDAolwk4yYDoODJy0U+pHWYNIPxMx+7rF+spXo3xyVZpQMeJqutl1Kx5L7Cdl+jXu
 LN8k1NsGuTSBGmzc9qI6gxCIOuCSaOb+NdpcukTJiOFMf8HPiaVao9ONgr7wCyYyBnMD
 jiCTFAgNUrp6mwMtPgtYNYBIg4W62n/Nmpx8OvpeJXfjs4ABCTzFGgCr1cubgKRZUN7v
 /PQJ52XbVItSWN5a47f/UrWXHa5C4c9HF4YMellABoQdOmr6zCN21nwIHtv24zyDyq4m
 Z4rbq9tZBafWeWBvCQIoqcabOE2a2bNTJOoa3zaSa4e8pWenhprqSZhyhi5JNJUnbnuj
 T+gw==
X-Gm-Message-State: APjAAAUvnCU695QSMCZCv7/hLPur1corPRdOCnWPnuvE5ie1+//vY976
 /WGc96RhzzIK8P+dF2vvdgo=
X-Google-Smtp-Source: APXvYqxYiqX2uHLgD+rryePgrJrIhL+awHH+NS3SnAzaEXVDEnZOrcOSQQ2Y04gy3XpVm1eLf9a5Fw==
X-Received: by 2002:a17:90a:ae12:: with SMTP id
 t18mr2788735pjq.32.1561031610369; 
 Thu, 20 Jun 2019 04:53:30 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id c124sm21738079pfa.115.2019.06.20.04.53.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 04:53:30 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 04/10] staging: rtl8712: r8712_joinbss_cmd(): Change return
 values and type
Date: Thu, 20 Jun 2019 17:22:58 +0530
Message-Id: <20190620115304.3210-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190620115304.3210-1-nishkadg.linux@gmail.com>
References: <20190620115304.3210-1-nishkadg.linux@gmail.com>
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

Change return values of function r8712_joinbss_cmd from _SUCCESS/_FAIL
to 0/-ENOMEM respectively.
Change return type from u8 to int to accommodate return of -ENOMEM.

Similarly, change the return values (_SUCCESS to 0 and _FAIL to -ENOMEM
or -EINVAL) and type (sint to int) of the call site of r8712_joinbss_cmd,
r8712_select_and_join_from_scan, as one of the branches of
r8712_select_and_join_from_scan directly returns the return value of
r8712_joinbss_cmd.

Modify the call sites of r8712_select_and_join_from_scan to check for
0 instead of _SUCCESS.

Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c       | 6 +++---
 drivers/staging/rtl8712/rtl871x_cmd.h       | 4 ++--
 drivers/staging/rtl8712/rtl871x_ioctl_set.c | 2 +-
 drivers/staging/rtl8712/rtl871x_mlme.c      | 8 +++-----
 drivers/staging/rtl8712/rtl871x_mlme.h      | 2 +-
 5 files changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 01146d9c3a9b..9cc6a370102b 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -434,7 +434,7 @@ int r8712_createbss_cmd(struct _adapter *padapter)
 	return 0;
 }
 
-u8 r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)
+int r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)
 {
 	struct wlan_bssid_ex *psecnetwork;
 	struct cmd_obj		*pcmd;
@@ -449,7 +449,7 @@ u8 r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)
 	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_START_TO_LINK);
 	pcmd = kmalloc(sizeof(*pcmd), GFP_ATOMIC);
 	if (!pcmd)
-		return _FAIL;
+		return -ENOMEM;
 
 	/* for hidden ap to set fw_state here */
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE | WIFI_ADHOC_STATE) !=
@@ -566,7 +566,7 @@ u8 r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)
 	pcmd->rsp = NULL;
 	pcmd->rspsz = 0;
 	r8712_enqueue_cmd(pcmdpriv, pcmd);
-	return _SUCCESS;
+	return 0;
 }
 
 u8 r8712_disassoc_cmd(struct _adapter *padapter) /* for sta_mode */
diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 6ea1bafd8acc..7d4da8ea95ec 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -714,8 +714,8 @@ u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 			struct ndis_802_11_ssid *pssid);
 int r8712_createbss_cmd(struct _adapter *padapter);
 u8 r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key);
-u8 r8712_joinbss_cmd(struct _adapter *padapter,
-		     struct wlan_network *pnetwork);
+int r8712_joinbss_cmd(struct _adapter *padapter,
+		      struct wlan_network *pnetwork);
 u8 r8712_disassoc_cmd(struct _adapter *padapter);
 u8 r8712_setopmode_cmd(struct _adapter *padapter,
 		 enum NDIS_802_11_NETWORK_INFRASTRUCTURE networktype);
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_set.c b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
index d0274c65d17e..f3c0a9348f56 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_set.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_set.c
@@ -66,7 +66,7 @@ static u8 do_join(struct _adapter *padapter)
 	}
 
 	ret = r8712_select_and_join_from_scan(pmlmepriv);
-	if (ret == _SUCCESS) {
+	if (!ret) {
 		mod_timer(&pmlmepriv->assoc_timer,
 			  jiffies + msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 	} else {
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index f6ba3e865a30..b260c29ea4bd 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -548,8 +548,7 @@ void r8712_surveydone_event_callback(struct _adapter *adapter, u8 *pbuf)
 			if (!check_fwstate(pmlmepriv, _FW_LINKED)) {
 				set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
 
-				if (r8712_select_and_join_from_scan(pmlmepriv)
-				    == _SUCCESS) {
+				if (!r8712_select_and_join_from_scan(pmlmepriv)) {
 					mod_timer(&pmlmepriv->assoc_timer, jiffies +
 						  msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 				} else {
@@ -574,8 +573,7 @@ void r8712_surveydone_event_callback(struct _adapter *adapter, u8 *pbuf)
 		} else {
 			pmlmepriv->to_join = false;
 			set_fwstate(pmlmepriv, _FW_UNDER_LINKING);
-			if (r8712_select_and_join_from_scan(pmlmepriv) ==
-			    _SUCCESS)
+			if (!r8712_select_and_join_from_scan(pmlmepriv))
 				mod_timer(&pmlmepriv->assoc_timer, jiffies +
 					  msecs_to_jiffies(MAX_JOIN_TIMEOUT));
 			else
@@ -1106,7 +1104,7 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 				pnetwork = pnetwork_max_rssi;
 				goto ask_for_joinbss;
 			}
-			return _FAIL;
+			return -EINVAL;
 		}
 		pnetwork = container_of(pmlmepriv->pscanned,
 					struct wlan_network, list);
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.h b/drivers/staging/rtl8712/rtl871x_mlme.h
index 8a54181f4816..9e8343139414 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.h
+++ b/drivers/staging/rtl8712/rtl871x_mlme.h
@@ -172,7 +172,7 @@ void r8712_wpspbc_event_callback(struct _adapter *adapter, u8 *pbuf);
 void r8712_free_network_queue(struct _adapter *adapter);
 int r8712_init_mlme_priv(struct _adapter *adapter);
 void r8712_free_mlme_priv(struct mlme_priv *pmlmepriv);
-sint r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv);
+int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv);
 sint r8712_set_key(struct _adapter *adapter,
 		   struct security_priv *psecuritypriv, sint keyid);
 sint r8712_set_auth(struct _adapter *adapter,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

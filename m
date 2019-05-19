Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F37A222751
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 18:44:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9E753858BF;
	Sun, 19 May 2019 16:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XBKhqD0umpAp; Sun, 19 May 2019 16:44:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1954E85785;
	Sun, 19 May 2019 16:44:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB5AD1BF2F4
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 16:44:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A848C22253
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 16:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oEjgxhiZST-u for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 16:44:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 3DE6A2155D
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 16:44:52 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id g69so5578809plb.7
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 09:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=onWg9sXJkwr5YDouwUnwMigAm53+6Ypsow5mIz9jnVY=;
 b=DsCB2O3R3rEIST8TFYsL76ySpcSxa2N2xCasptSobJ7Wpiu/A0m518d6+7QBQGFRRe
 qxABKKsMQLE3ZKvSzzNSkx2REVO//M3z/mKDpfR607d35S9GYBB6N5kA581JGnG0E6lj
 CU7RGFMW9ERAIRyjjRthI71b2jjKaLqFt9V5eh83suyYye+DNItxj6Y4E5c9f3BXD2sT
 Mkc5b6dwGR83UGASHefQCGaQ60BpSmDuqnT2v2MQl5Y0YB55O4hz0pN34SosRhf+zf46
 XfvPM1yT9Nm2gR4DiqvwStHv5/LBXhO/nFnI7r6+hMSerChNlgOPhVvFtCVaugpMc7/G
 jp5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=onWg9sXJkwr5YDouwUnwMigAm53+6Ypsow5mIz9jnVY=;
 b=sTf7LrpvWBKe5L7MqDr9xJx4uIncKekhgPLJTsPb7znbQ/UVksz3nSxLObco5aLZBq
 fOPhD1IxDzl2UGTEyIT/4hQ0Wfk0658JNB8sfMPQU5/SYgHSJFhbB4rGEZjqRcqS1kiz
 +q9oVsv7upAroriAAnU5Y6bMwtU5eO4RW0ulBaBNyjbTuGXqECzQTYMV9OCsgxc6XTcw
 fhk/dWNv5Zjf/TPnTZA1PXhsINuPyCLx9A+FAURkuHfFzlVrUcm9TnhtjI5xBTbLKb27
 JzrGOvYUYSu8AnQclzC3EJAGI5wd/+4oYK4/Se9kBtCGZgTxp9pkSefzgzWM4TQJrt38
 AeWA==
X-Gm-Message-State: APjAAAUXeYKkMvO4oVNnW2qvdc7EwM7DTwiOqK5SwUUoUXPV80is+1RE
 4ZPXWLGmHDMUJ1OB6Vkmp7k=
X-Google-Smtp-Source: APXvYqyLtcTyGcxDncp6K5Uf7tQPnwHwO5gdsxW9nfOf4fMa5PVWAmaLsk5dmK4ctZrfjihhZ8UhOg==
X-Received: by 2002:a17:902:6a83:: with SMTP id
 n3mr71412894plk.109.1558284291995; 
 Sun, 19 May 2019 09:44:51 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id q75sm21542256pfa.175.2019.05.19.09.44.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 09:44:51 -0700 (PDT)
Date: Sun, 19 May 2019 22:14:45 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Anirudh Rayabharam <anirudh.rayabharam@gmail.com>,
 Murray McAllister <murray.mcallister@insomniasec.com>,
 Kimberly Brown <kimbrownkd@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: rtw_ap: fix Unneeded variable:
 "ret". Return "0"
Message-ID: <20190519164445.GA5268@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes below warnings reported by coccicheck

drivers/staging/rtl8723bs/core/rtw_ap.c:1400:5-8: Unneeded variable:
"ret". Return "0" on line 1441
drivers/staging/rtl8723bs/core/rtw_ap.c:2195:5-8: Unneeded variable:
"ret". Return "0" on line 2205

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index bc02306..a1b5ba4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1397,7 +1397,6 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 {
 	struct list_head	*plist, *phead;
-	int ret = 0;
 	struct rtw_wlan_acl_node *paclnode;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
@@ -1438,7 +1437,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 
 	DBG_871X("%s, acl_num =%d\n", __func__, pacl_list->num);
 
-	return ret;
+	return 0;
 }
 
 u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
@@ -2192,7 +2191,6 @@ u8 ap_free_sta(
 int rtw_sta_flush(struct adapter *padapter)
 {
 	struct list_head	*phead, *plist;
-	int ret = 0;
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
@@ -2202,7 +2200,7 @@ int rtw_sta_flush(struct adapter *padapter)
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(padapter->pnetdev));
 
 	if ((pmlmeinfo->state&0x03) != WIFI_FW_AP_STATE)
-		return ret;
+		return 0;
 
 	spin_lock_bh(&pstapriv->asoc_list_lock);
 	phead = &pstapriv->asoc_list;
@@ -2227,7 +2225,7 @@ int rtw_sta_flush(struct adapter *padapter)
 
 	associated_clients_update(padapter, true);
 
-	return ret;
+	return 0;
 }
 
 /* called > TSR LEVEL for USB or SDIO Interface*/
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

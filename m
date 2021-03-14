Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B6633A4A3
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 13:09:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B02783A44;
	Sun, 14 Mar 2021 12:09:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mz0GU2vxHgX5; Sun, 14 Mar 2021 12:09:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DA86838B2;
	Sun, 14 Mar 2021 12:09:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 023791BF42C
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 12:09:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E4CA14013F
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 12:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A2BeayiyZI3y for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 12:09:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 636A24013B
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 12:09:09 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id o16so1829442pgu.3
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 05:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tSwQ5EcWg3awmwQMzgNvLXu7oi/qxaOHnnZlTPm/bVw=;
 b=EWQzjW/yfEBxPr/dHU5uqEa697ufnOwEn1rhfZHBltOq1/FAiHcCF3INoSnfBrY1Xt
 rhrnSDarJXE893hgqJ5bFNojduVXN0frWiKxZ/w6I75l/4kjMCx5+aWT/V8fcQErYGhy
 aM+Vc8XiRpoAbZfsHC5ygLqUKdKjl4Ni0QjMQX/eH5FYAtTidg1UXDuen0kQd0awJftM
 dHwAgebT3xm5l3YkaINSF6wgIS1fKuHnbnup4RAyajViroAZm6wp0EMt28RxH9CpusHm
 Pkmd0WUBRkcIv99RCO58GBJ6ZZFHwHA77CyJNH5fr89dz8jChvyncrR75v4T//BKWnzZ
 ++9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tSwQ5EcWg3awmwQMzgNvLXu7oi/qxaOHnnZlTPm/bVw=;
 b=ns59VWem1C/sITJ2W2dMYgpMETzLdhNndI/1tJnYx34UpdEyDE9mEfs0Xwvo7pq/dm
 AXq9PPOPZt+1bQKGJFInvp7xqfwhxiSEaBGbItZFMxDJymwsMzpfHQ+i1HxxKlZvj9xw
 KAoNQjy1U/eUZKF8tyoGj1zC0icSN6N+pH5n2jt1RzFYvlYMJ7tucD9e61aXc/KirpIp
 IP81P7qIhwPZ/F3Xz4j75BAKBrLZrCIrMvb9FZXkBaT/ty+CIHWJ3vhE9sLNVCBuq77L
 vYGTz3BAQ6kylnE0/j896xu778XfJG0KlG/X2WtVqLc8TOZ2IfS2nUUyZKT7LCXNkVGB
 z0cQ==
X-Gm-Message-State: AOAM533e3eQUMS/3opZWBneerweahGkAB0zH9ez0mwwtpcehVuIb1AUK
 bdamzUzwAwG3qj10TRp4d6Y=
X-Google-Smtp-Source: ABdhPJxNyRkAIGO9w4c+qNbpk4hl9cL7UODpDOIBT4thzXFlXXLnvBUlGx297eEoGPG+71dAkDbztQ==
X-Received: by 2002:a63:130f:: with SMTP id i15mr6165786pgl.287.1615723748918; 
 Sun, 14 Mar 2021 05:09:08 -0700 (PDT)
Received: from localhost.localdomain ([121.135.181.35])
 by smtp.gmail.com with ESMTPSA id d124sm10863337pfa.149.2021.03.14.05.09.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 05:09:08 -0700 (PDT)
From: HyeonggonYoo <42.hyeyoo@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8723bs: fixed a brace coding style
Date: Sun, 14 Mar 2021 12:08:58 +0000
Message-Id: <20210314120858.37951-1-42.hyeyoo@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, HyeonggonYoo <42.hyeyoo@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed a coding style issue - unnecessary braces for single statement

Signed-off-by: Hyeonggon Yoo <42.hyeyoo@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 25 ++++++++++--------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 3fe79169a811..974657b18678 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -676,11 +676,10 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
 	struct wlan_bssid_ex		*pdev_network = &padapter->registrypriv.dev_network;
 	u8 res = _SUCCESS;
 
-	if (pmlmepriv->assoc_ssid.SsidLength == 0) {
+	if (pmlmepriv->assoc_ssid.SsidLength == 0)
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for Any SSid:%s\n", pmlmepriv->assoc_ssid.Ssid));
-	} else {
+	else
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for SSid:%s\n", pmlmepriv->assoc_ssid.Ssid));
-	}
 
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 	if (pcmd == NULL) {
@@ -767,11 +766,10 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	u32 tmp_len;
 	u8 *ptmp = NULL;
 
-	if (pmlmepriv->assoc_ssid.SsidLength == 0) {
+	if (pmlmepriv->assoc_ssid.SsidLength == 0)
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("+Join cmd: Any SSid\n"));
-	} else {
+	else
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+Join cmd: SSid =[%s]\n", pmlmepriv->assoc_ssid.Ssid));
-	}
 
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 	if (pcmd == NULL) {
@@ -810,11 +808,10 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 
 	psecuritypriv->authenticator_ie[0] = (unsigned char)psecnetwork->IELength;
 
-	if ((psecnetwork->IELength-12) < (256-1)) {
+	if ((psecnetwork->IELength-12) < (256-1))
 		memcpy(&psecuritypriv->authenticator_ie[1], &psecnetwork->IEs[12], psecnetwork->IELength-12);
-	} else {
+	else
 		memcpy(&psecuritypriv->authenticator_ie[1], &psecnetwork->IEs[12], (256-1));
-	}
 
 	psecnetwork->IELength = 0;
 	/*  Added by Albert 2009/02/18 */
@@ -970,17 +967,15 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 
 	memcpy(psetstakey_para->addr, sta->hwaddr, ETH_ALEN);
 
-	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
+	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
 		psetstakey_para->algorithm = (unsigned char) psecuritypriv->dot11PrivacyAlgrthm;
-	} else {
+	else
 		GET_ENCRY_ALGO(psecuritypriv, sta, psetstakey_para->algorithm, false);
-	}
 
-	if (unicast_key == true) {
+	if (unicast_key == true)
 		memcpy(&psetstakey_para->key, &sta->dot118021x_UncstKey, 16);
-	} else {
+	else
 		memcpy(&psetstakey_para->key, &psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, 16);
-	}
 
 	/* jeff: set this because at least sw key is ready */
 	padapter->securitypriv.busetkipkey = true;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

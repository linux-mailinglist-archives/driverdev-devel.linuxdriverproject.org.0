Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162C07808F
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Jul 2019 19:10:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2A448882C;
	Sun, 28 Jul 2019 17:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0hM5V5kCHvVU; Sun, 28 Jul 2019 17:10:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E432E88877;
	Sun, 28 Jul 2019 17:10:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B32851BF2A4
 for <devel@linuxdriverproject.org>; Sun, 28 Jul 2019 17:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A71D788021
 for <devel@linuxdriverproject.org>; Sun, 28 Jul 2019 17:10:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zi8VBTMyTZav for <devel@linuxdriverproject.org>;
 Sun, 28 Jul 2019 17:10:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0DD1E8780E
 for <devel@driverdev.osuosl.org>; Sun, 28 Jul 2019 17:10:20 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id u14so26804915pfn.2
 for <devel@driverdev.osuosl.org>; Sun, 28 Jul 2019 10:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=+ie1/65OogncqBLm8paVI+xNAYcHACakcqTpgCaKRoo=;
 b=C1Q0BC6wJ0fW7eX6dC4Lvh6W9hZ+vruPiVGULGETpItFfMw+v1cCyZQTlJblo1y9rH
 qEFYABw3GJiPW58eVdw2ecRIkJtrZNcChFf6XKhFK8yOigyr1ADU1iz30gqSk/WuJBQI
 /BPWoNtbwwjK8IKWYhl8zntlVJkpJZkqZxG4MXG5GqRW/ykZ67nZGV9ppe+m4f3F2zim
 J2KyTUO/F6LBxUQO07NubAmLuOKcHSfGd1WTDDGibT/w+sIlxXDUQqLP7E3do1HrK/BE
 muX1tGxHrHvGilzxtk5hz9eKCKU6T143Z8vc4SjxhyfptwFmo3d/1XyxAFqlw4e5AYEs
 PGjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=+ie1/65OogncqBLm8paVI+xNAYcHACakcqTpgCaKRoo=;
 b=LOLh5l/RluqdUtV+OAs0e4jim7K6mcG/3HiefkpP3fEJpWtdDXJt595bUy7YEfqcEO
 YM5qXGxO1QagWMN9kYt3Rd2sWfBuw+A28zPA+Q9IA8qMchCS6J8NJH7BKmXcgrvybXI3
 sLj52x8rtuToQQwoteB7cfxfkBVmnq8nbHX/sIehxL+AyiFWUq2db5mtPW9rnXFgOBm/
 fy/3068bLVckTp3g9WlYcbrPSzRa6AvC3KS1NTCW9FCBp//A6Z6SIeJmeVZcaNtjXrHP
 WVihFduTag1uIXhEQWoUWy8QjjIgLFekA4aHreIQLf38cFwRrcr9vCVJp5uhX0Nb5q0I
 qSdg==
X-Gm-Message-State: APjAAAXV8fKwjfl058CEn7YSwVXiAJoVsIXhtTFNoYkLOWBK8pWWEjVh
 jtemcU+BuaYRrWJRlUVLTPk=
X-Google-Smtp-Source: APXvYqzzg3CLUGTxhcUrrvB7SCYXo+eACek1oEag2YoPdG53MCruTMHE3GvDhrHRKYPaZ2w9z9WLLw==
X-Received: by 2002:a63:2a08:: with SMTP id q8mr68402063pgq.415.1564333819477; 
 Sun, 28 Jul 2019 10:10:19 -0700 (PDT)
Received: from saurav ([219.91.254.41])
 by smtp.gmail.com with ESMTPSA id d17sm68582409pgl.66.2019.07.28.10.10.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 10:10:19 -0700 (PDT)
Date: Sun, 28 Jul 2019 22:40:12 +0530
From: Saurav-Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org;, nishkadg.linux@gmail.com;,
 hardiksingh.k@gmail.com;, anirudh.rayabharam@gmail.com;,
 kimbrownkd@gmail.com;;, devel@driverdev.osuosl.org;,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: Remove Unnecessary parentheses
Message-ID: <20190728171009.GA19211@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removed Unnecessary parentheses around "padapter->mlmepriv",
"pmlmeext->mlmext_info" and "pmlmeinfo->network"

Signed-off-by: Saurav-Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 7bd5c61b055c..ba30ba04a103 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -17,7 +17,7 @@ extern unsigned char WFD_OUI[];
 
 void init_mlme_ap_info(struct adapter *padapter)
 {
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
 
@@ -34,9 +34,9 @@ void init_mlme_ap_info(struct adapter *padapter)
 void free_mlme_ap_info(struct adapter *padapter)
 {
 	struct sta_info *psta = NULL;
-	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 
 	/* stop_ap_mode(padapter); */
 
@@ -58,9 +58,9 @@ void free_mlme_ap_info(struct adapter *padapter)
 static void update_BCNTIM(struct adapter *padapter)
 {
 	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
-	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
-	struct wlan_bssid_ex *pnetwork_mlmeext = &(pmlmeinfo->network);
+	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
+	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
+	struct wlan_bssid_ex *pnetwork_mlmeext = &pmlmeinfo->network;
 	unsigned char *pie = pnetwork_mlmeext->IEs;
 
 	/* DBG_871X("%s\n", __func__); */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

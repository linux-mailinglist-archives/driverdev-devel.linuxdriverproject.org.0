Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B516807CA
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 20:48:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE0C7872F8;
	Sat,  3 Aug 2019 18:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9M1tVzGOTg53; Sat,  3 Aug 2019 18:48:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8AC6787120;
	Sat,  3 Aug 2019 18:48:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2270F1BF341
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 18:48:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1DC4387E07
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 18:48:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q5rQJOWV+aQl for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 18:48:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 842F487DD4
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 18:48:01 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id i189so37625470pfg.10
 for <devel@driverdev.osuosl.org>; Sat, 03 Aug 2019 11:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=O24CGlpU7GxbFYpQ9DBeLLnNxoanFFZw8HOML2aKsNI=;
 b=gk508qLwNPBoTV5i2hwOxU4O56vtLXHrrP4fH1UEIA5tTUVTIGgc50bIfOdj2YoGH2
 AdbmRxCZkxmASUIZaGJOSwnTpQcI3G/Gp8XpSwKNQidltzHWNIIRpJSduGvzlBFAt7My
 p+uZE8TNpbvCNqOBVT0T1mwiC33rQ3/lOyHtfcsw67deEfUOA3RdrWFYp7Li9NFKkIge
 LqtvDYaT9jt40yaGRf8H0JsY3myNcyM3at4a2S1jetvuCLKoOMtXE3sQgT7MZ3zx3Jxa
 uPdWkSy/aapi+BRmkY0FCLVq5mW5jspDkGt+PbhSdJSMKr+M0uCzAONbE4vZfxtCGJVa
 Ridg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=O24CGlpU7GxbFYpQ9DBeLLnNxoanFFZw8HOML2aKsNI=;
 b=d60Upm4FpE1ECDFBLriLp6OJlVZaSPlOaoHAyTkr9C4ATLzq2a5neRdifXtAUA8uNx
 tviLH8kbU4nMmrA/p+ANYEgea+WQBrdW6k4jP4dTGTfN3vw5aO4xu0CQyGQtrfTB/DFD
 B2cfd87cMBiZzhKVh4VazU6XFOFzUBN6LgoNNi4n/awPPkfdGh26vdRr3jxa1u2G0i8p
 RDHRmEfRYKUeg1leoX+WR0JlO40gx4VXfcI5AuJS5PqSm0lBkCCOX08+MzF1020AUiCJ
 RBkZMdr5rWHgM6xhLVTQWrSKyA6AjLKsc1xrlEk6b0r1KECJPS2cYqrRlD+3QwMZX7HI
 qu7A==
X-Gm-Message-State: APjAAAX9zwuh/0DNp53gF3XeRar9Gt/VZK1qMq8dfNPG4itxNm+nNhGb
 ugwtOCOrmNuMcWYstKtcGWP3/psUjoY=
X-Google-Smtp-Source: APXvYqwvDmtZ7ao/wcupufphnigZ+aFsxktEBsAJwf6730FHf8QB8cG+00r+N8fKDjrqhOB30K7zRw==
X-Received: by 2002:a65:6817:: with SMTP id l23mr89084717pgt.46.1564858080905; 
 Sat, 03 Aug 2019 11:48:00 -0700 (PDT)
Received: from saurav ([123.201.163.103])
 by smtp.gmail.com with ESMTPSA id 67sm54731323pfd.177.2019.08.03.11.47.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 11:48:00 -0700 (PDT)
Date: Sun, 4 Aug 2019 00:17:54 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org;, saurav.girepunje@gmail.com;,
 nishkadg.linux@gmail.com;, hadess@hadess.net;,
 mamtashukla555@gmail.com;, anirudh.rayabharam@gmail.com;,
 hardiksingh.k@gmail.com;, puranjay12@gmail.com;,
 kimbrownkd@gmail.com;, devel@driverdev.osuosl.org;,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: Remove Unnecessary parentheses
Message-ID: <20190803184750.GA23507@saurav>
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

Remove Unnecessary parentheses around padapter->mlmepriv,
pmlmeext->mlmext_info and pmlmeinfo->network in rtw_ap.c

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 78b5782fb675..45a745696af6 100644
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5F4338A93
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 11:51:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 951334ED6C;
	Fri, 12 Mar 2021 10:51:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TfhrH05FJv95; Fri, 12 Mar 2021 10:51:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 72CE84ED27;
	Fri, 12 Mar 2021 10:51:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 732DA1BF34F
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 10:51:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6FA38844F4
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 10:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IQbwTVN9wHYF for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 10:51:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC3B9844F0
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 10:51:41 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 b2-20020a7bc2420000b029010be1081172so14902060wmj.1
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 02:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=1xqbdJpzo9WZ92Ur0/uK5J2PqPmNSDd9F341QSbm7Dc=;
 b=Uednlt9G1tV+9cEcaaO0SYY595OIOPWY2an+lijefiDCw63Slkl4s3uLeIjeZ+kcJs
 UMXDatma8bhnWRY3BDLMJCDcKKHqlhwVRytm6MhgpuAIJ7sDfma/3l/FqsXkOIi8z7Tk
 0PVT9AGsMg2MAHfkoPgRZ0eTF89vf0Pr3A9s8wbsBCHChJ7Sdo5H3RdvbguBliYy3Rjz
 b/TnzvPVRuq4ZZC7l6NkWgQsc4wG44EM2jjt4sqSTXE6P3b7M8/1DXuxInh32oDpek+p
 Pgyb1GSjO/lZjWpFRBgd8DUy9GpscmKKoXfwIK7jrUCdNrJYnY+oXVhHQnIJ71dgrB46
 j8UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=1xqbdJpzo9WZ92Ur0/uK5J2PqPmNSDd9F341QSbm7Dc=;
 b=N2gAoAbtzN4HShnxSjq9bvXwtMAxZOJljfSaapajkGGrNBQ1D4HBIRLFcLzeZU+FYm
 MsfmMV7VetQd56OAj+aNvR3/SyJDYd7cmw5660spjHeafLoH9pNVOwVBrqKfX8g6FiNl
 zShyBum2TeT3Rl2hq0GG1ckDJtcHfo2tau1d2eD7wVeB6WanKg5qxtIzNLQBJRY81j9t
 OrgcXzmZllKhNt7YG1U82oFY7TNiq8lORJIZhRQgCCzoBWY7M1XDGYAYFKRX5aSb9Mmi
 3O36wRQbT+XZGZEQ5geDwcOj8Hiu3iF5FkIgoWlX3xbIG0xQuKslWb4KOOGpJKWndB+6
 F8ig==
X-Gm-Message-State: AOAM531KNF24bj9N+b2hW9anJ7Z+mUtjhXAdOk8urDHb3wkC8a/zLb1h
 R6iYHoHnlyJl7bBsx4srAOc=
X-Google-Smtp-Source: ABdhPJz8WmWHma02Qb3eE+57SlmK2DG0BHdrPgW/wZYw4VMHeb/PSXzvltZe0dT2YwqDuAhm+KdUUA==
X-Received: by 2002:a1c:7519:: with SMTP id o25mr12440710wmc.103.1615546300066; 
 Fri, 12 Mar 2021 02:51:40 -0800 (PST)
Received: from agape.jhs ([5.171.81.107])
 by smtp.gmail.com with ESMTPSA id n6sm8481257wrw.63.2021.03.12.02.51.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 02:51:39 -0800 (PST)
Date: Fri, 12 Mar 2021 11:51:37 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: put quoted string in a single line
Message-ID: <20210312105134.GA6079@agape.jhs>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch issues:

WARNING: quoted string split across lines
+		DBG_871X("HT: STA %pM HT Capabilities "
+			   "Info: 0x%04x\n", MAC_ARG(psta->hwaddr), ht_capab);

WARNING: quoted string split across lines
+			DBG_871X("%s STA %pM - no "
+				   "greenfield, num of non-gf stations %d\n",

WARNING: quoted string split across lines
+			DBG_871X("%s STA %pM - 20 MHz HT, "
+				   "num of 20MHz HT STAs %d\n",

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index b6f944b37b08..b8706e1eb8ca 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -2009,8 +2009,8 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 	if (psta->flags & WLAN_STA_HT) {
 		u16 ht_capab = le16_to_cpu(psta->htpriv.ht_cap.cap_info);
 
-		DBG_871X("HT: STA %pM HT Capabilities "
-			   "Info: 0x%04x\n", MAC_ARG(psta->hwaddr), ht_capab);
+		DBG_871X("HT: STA %pM HT Capabilities Info: 0x%04x\n",
+			 MAC_ARG(psta->hwaddr), ht_capab);
 
 		if (psta->no_ht_set) {
 			psta->no_ht_set = 0;
@@ -2022,10 +2022,9 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 				psta->no_ht_gf_set = 1;
 				pmlmepriv->num_sta_ht_no_gf++;
 			}
-			DBG_871X("%s STA %pM - no "
-				   "greenfield, num of non-gf stations %d\n",
-				   __func__, MAC_ARG(psta->hwaddr),
-				   pmlmepriv->num_sta_ht_no_gf);
+			DBG_871X("%s STA %pM - no greenfield, num of non-gf stations %d\n",
+				 __func__, MAC_ARG(psta->hwaddr),
+				 pmlmepriv->num_sta_ht_no_gf);
 		}
 
 		if ((ht_capab & IEEE80211_HT_CAP_SUP_WIDTH) == 0) {
@@ -2033,10 +2032,9 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 				psta->ht_20mhz_set = 1;
 				pmlmepriv->num_sta_ht_20mhz++;
 			}
-			DBG_871X("%s STA %pM - 20 MHz HT, "
-				   "num of 20MHz HT STAs %d\n",
-				   __func__, MAC_ARG(psta->hwaddr),
-				   pmlmepriv->num_sta_ht_20mhz);
+			DBG_871X("%s STA %pM - 20 MHz HT, num of 20MHz HT STAs %d\n",
+				 __func__, MAC_ARG(psta->hwaddr),
+				 pmlmepriv->num_sta_ht_20mhz);
 		}
 
 	} else {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

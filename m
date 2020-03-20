Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5FC18D836
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 20:14:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 341AB86F45;
	Fri, 20 Mar 2020 19:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KOppMmylF7Jc; Fri, 20 Mar 2020 19:14:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B09E686C47;
	Fri, 20 Mar 2020 19:14:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 15CFD1BF3D0
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 19:14:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 12E0286C47
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 19:14:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 08yVIeH4Sc0j for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 19:14:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 41EB786C45
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 19:14:35 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id 26so3752945wmk.1
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 12:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F3DRIuFvLAn4sQyGNJkixzkoSFpSmglRsC01IEMoyeY=;
 b=Vbec061iRyMXEkUcEti9RH855qeclgISN6hc+wsL9Pl06Di0rpMbYDCxo4CCcQgdJx
 lMI78hYGhEK5HhIn8ih40S0xbFJ1Hl3JCnKwIp6+QYrGNhKLbix0cs/H1Bb8TjhXvPCS
 zKUULGMdgjhstQZLbIwJj4+Y0xGODzbjTr/R9XOIion4qA/vUXjDOXhATwj0dGX7bRnh
 LLe1/F1vmLeob7aDoEfMAkDJNlkP1340jQ/vedbU05WTe+wdVoctGTRylO4OjKicbtYm
 7DFPCd/5Vy7iBdj48fTd7P7EPhlbUMITZ/bNI6Gf9zt96tPoYvn2cCFd5wPYMejwza7c
 F0BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F3DRIuFvLAn4sQyGNJkixzkoSFpSmglRsC01IEMoyeY=;
 b=ChoVqx2FhXgiVn+BkOtqspMOv9c2f7Qu5JhpW5Xx/y93iKjFEJMbYpVewvqnorxzFf
 3P+3TFiaZuDaEL4SQXD8UHwtWNTLn9YM42LE+DHKS2HO+qSVEPSXHzSwwXkY2vScEUDi
 01Ke85WYf7P7ZjjfyUskEM052XsTs2f5p8cwfCYkuibOL82+XFpY3Lxunn2MEMWq6l6f
 QTjI1z3PzYqlNqYANgWidKT/Q++435Y5+i1B+AIVD/bcnQskxK8oLoKnGCJsxKjqlAvs
 mu+wjtDxGTINrUurzjHpJ/EXHmyhR9jIw6yQajOoKI5QLhRW89U5peGA7KCtszxqW+Jt
 41mg==
X-Gm-Message-State: ANhLgQ0998siaDHrcwWVaIEdLlV32cotmHTFMip8Xqdv21DBETx7kkDm
 4KWWeRQ/jzF133920FDrJWs=
X-Google-Smtp-Source: ADFU+vs6wRCA+4528+CDV2keByZ63N1T/6GuAeTpM5TJv+nqd6zmZ6bBx+9kkvlM1suNwci6vqAznw==
X-Received: by 2002:a1c:b60b:: with SMTP id g11mr12499629wmf.175.1584731673433; 
 Fri, 20 Mar 2020 12:14:33 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-020.092.219.pools.vodafone-ip.de. [92.219.207.20])
 by smtp.gmail.com with ESMTPSA id u7sm8988595wme.43.2020.03.20.12.14.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 12:14:32 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: remove some 5 GHz code
Date: Fri, 20 Mar 2020 20:13:05 +0100
Message-Id: <20200320191305.10425-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

According to the TODO code valid only for 5 GHz should be removed.

- find and remove remaining code valid only for 5 GHz. Most of the obvious
  ones have been removed, but things like channel > 14 still exist.

Remove if statement that checks for channel > 14 from rtw_ieee80211.c.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index 29f615443e8f..e186982d5908 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -236,14 +236,10 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 	ie = rtw_set_ie(ie, _SSID_IE_, pdev_network->ssid.ssid_length, pdev_network->ssid.ssid, &sz);
 
 	/* supported rates */
-	if (pregistrypriv->wireless_mode == WIRELESS_11ABGN) {
-		if (pdev_network->Configuration.DSConfig > 14)
-			wireless_mode = WIRELESS_11A_5N;
-		else
-			wireless_mode = WIRELESS_11BG_24N;
-	} else {
+	if (pregistrypriv->wireless_mode == WIRELESS_11ABGN)
+		wireless_mode = WIRELESS_11BG_24N;
+	else
 		wireless_mode = pregistrypriv->wireless_mode;
-	}
 
 	rtw_set_supported_rate(pdev_network->SupportedRates, wireless_mode);
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

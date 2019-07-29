Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0823F7831B
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 03:39:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 836B5869A5;
	Mon, 29 Jul 2019 01:39:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kih0z8WHhJJp; Mon, 29 Jul 2019 01:39:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 324778698D;
	Mon, 29 Jul 2019 01:39:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57AD51BF34F
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 01:39:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 551148679E
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 01:39:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6yu_eHTW3_Gd for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 01:39:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E5AFC843FE
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 01:39:30 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id r7so27132362pfl.3
 for <devel@driverdev.osuosl.org>; Sun, 28 Jul 2019 18:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=c1uHsnX/WnSI8+586zLkoV7QQKmUDl0aRnKS/YZ6qok=;
 b=Ui5138LAx1zch27e5gPKEmiSWQ+NzklokjKVFqbDa6+NKrrizvMsmt9IMLEyjY6IlU
 NcTAeyYC/T7fHKXBVkquD46FoM0XbyvxFbY4/gluvDrn1vx3Y21WKT8SUleD0m+4tRuu
 OWKUbWAWHvOgy6KgX6bNc+FnZIq9ttf+kyZwk/ksE2Cf5ut/iO5tJMo/ANyu/mGoxWKk
 j6dWgdxUs3GpXKMCuSzB05gKBF/jpJVwX11RsfG/LMwuxmd0aDmqxGmTyjChKnkqCvJp
 8z1CYkh2nIarGkUjjnnXGs+tTiKY7T1wRQV1wnlNUyVY3ayhIRIe6jR4iNLECPBqk6jn
 VJ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=c1uHsnX/WnSI8+586zLkoV7QQKmUDl0aRnKS/YZ6qok=;
 b=sUOZ97HP6r7GSDQamPMtNJcrNFLeLNrEWfIwQg1UqWQocKlw4rcrGfFfbyZ56EaeFS
 8QKVe5NyFXmBhhid3RQ/igyXBiuO0jAyMzAThU7MywRlv8yLGNsh9sVGk0gGiKocfZV6
 6bECX9SDB7lq8lftK9wHoNxVNr9gBnOuskuxCh8U9maBRdqLCWKCZNEdNLrPDmXTrqF+
 OQ7BG3Dj5mch8yZz1dN5CDrKfOtgJr21tyq9s0B+tGu2oVc8fAyOQmdcqDWd33vBZX6C
 VM3lugH+h/Os0Sefl7ZEc/Orey4+vCw5mzS4sQZTvECYGrSKWGGDVoHn25JqD8FpdfK5
 P1QQ==
X-Gm-Message-State: APjAAAXqsNSGkxvFAr0Z3EikvChn7eiXjnR4zFgCQfFXJo9/h1QoXZQY
 I/OD9kwbJcdYJHD6uZlDxBA=
X-Google-Smtp-Source: APXvYqycYQSy4zkpEsmQu71+26qyTxUjbC0/UDcbpxafuc8TBJr+JD80Sx7p9BHNQ1ct8aFBsLHaTw==
X-Received: by 2002:a17:90a:26e4:: with SMTP id
 m91mr109783963pje.93.1564364370481; 
 Sun, 28 Jul 2019 18:39:30 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.86.126])
 by smtp.gmail.com with ESMTPSA id w197sm74139684pfd.41.2019.07.28.18.39.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Jul 2019 18:39:29 -0700 (PDT)
Date: Mon, 29 Jul 2019 07:09:22 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Mukesh Ojha <mojha@codeaurora.org>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Jeeeun Evans <jeeeunevans@gmail.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8723bs: core: Remove unneeded variables
 sgi_20m,sgi_40m and sgi_80m
Message-ID: <20190729013922.GA5379@hari-Inspiron-1545>
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

htpriv.sgi_* variables are of type u8 ,instead of storing them in local
variables ,its better to read value directly from structure.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index b5dcb78..0690d5e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -346,21 +346,18 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 
 u8 query_ra_short_GI(struct sta_info *psta)
 {
-	u8 sgi = false, sgi_20m = false, sgi_40m = false, sgi_80m = false;
-
-	sgi_20m = psta->htpriv.sgi_20m;
-	sgi_40m = psta->htpriv.sgi_40m;
+	u8 sgi = false;
 
 	switch (psta->bw_mode) {
 	case CHANNEL_WIDTH_80:
-		sgi = sgi_80m;
+		sgi = false;
 		break;
 	case CHANNEL_WIDTH_40:
-		sgi = sgi_40m;
+		sgi = psta->htpriv.sgi_40m;
 		break;
 	case CHANNEL_WIDTH_20:
 	default:
-		sgi = sgi_20m;
+		sgi = psta->htpriv.sgi_20m;
 		break;
 	}
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

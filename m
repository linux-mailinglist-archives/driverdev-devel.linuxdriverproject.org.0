Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC26F3408CD
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:27:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6D72C432AF;
	Thu, 18 Mar 2021 15:27:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2duAOKLtY7-x; Thu, 18 Mar 2021 15:27:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1DCA4328B;
	Thu, 18 Mar 2021 15:27:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 257761BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 147CA4EE16
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AzcB0FsixCL3 for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:26:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29EF34EE06
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:26:58 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 m20-20020a7bcb940000b029010cab7e5a9fso5657515wmi.3
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0qS9Nz47GTA8hTM4G9C1C/c06jObHEFBEpZEFEihqQM=;
 b=GHvqEhNZPk7En0bu8SNS4PHj7+qaRQIKk/GyeuFTF7DBSKZIVYJTS+0OeGN8PKdZsK
 hWv3avjboz6t+nLbeMZGu8BRrwQ5VTF8a4GPJytJ7aaOWXUQSaaOahvquWOgYXgLdH5P
 FDUNPbnimEMnOQyz3B2pp/sePtX0Do325iCaPbm4yBzTRryM5ExXQC74fv4wjrzosaMP
 jPJ/BRWREWLuhW06cqH2yvAPZMwqxtdeD6zwfj/8dxTYSSAXkp+BC+aOj418E3jlGRDH
 YDEdptLM3lTBLnNjJOA/c9JoOYWM8U8GCYP37FrheUcn/BGgSKGtMXFp+OC6tEmvMhW1
 YDPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0qS9Nz47GTA8hTM4G9C1C/c06jObHEFBEpZEFEihqQM=;
 b=lgn+GL578CWSD182c6+Gk0a9QitaBBmdCALVRftN1DkXslmR/MxX0WDHNWKyaOY3IM
 5xW+qvO5M0sLfqPki53Ts44ZymgGQwR+sSKPCiM4+lJ7SkcRY7xDbYEFXMIyFT42bBJX
 IIT2tKw3LMsSQcFrF4fghfT0msyshEtTx5qnEtMv7o74JVsgcbqYJhh3lvd5/hHurN3o
 U/b4GdqxjfCC+DNDCVtFOzSY2hRDaXN7Sv3JMzk1m6KV8uIMTucbnrLa3wjhzWRtYR20
 eCVquLuYD+T1woXHxRIdbTgElY50VLnz7fRM4P9wTx0IzzlXGqf58FrRXct4fVGZDb92
 BIGg==
X-Gm-Message-State: AOAM531+VNYXBkqoR3j6nwd9O7KypHdN2z/z1KK95MeLH++E4DWiuBBt
 3u19u3NYKhraQCeipUisaI4=
X-Google-Smtp-Source: ABdhPJwiZkQjE8LoYd0zm415v3NGd4TK/aoNr2cdHbGBz7nBN+bhrv8Hfn+BheuvQNPal/gZ8+M7UA==
X-Received: by 2002:a05:600c:2053:: with SMTP id
 p19mr4143861wmg.87.1616081216478; 
 Thu, 18 Mar 2021 08:26:56 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id e17sm4202947wra.65.2021.03.18.08.26.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:26:56 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 05/15] staging: rtl8723bs: remove unnecessary logging in
 core/rtw_wlan_util.c
Date: Thu, 18 Mar 2021 16:26:00 +0100
Message-Id: <20210318152610.16758-6-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210318152610.16758-1-fabioaiuto83@gmail.com>
References: <YFMb+7jjmj7Oty8B@kroah.com>
 <20210318152610.16758-1-fabioaiuto83@gmail.com>
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
 Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch.pl issues:

WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1140: FILE: drivers/staging/rtl8723bs/core/rtw_wlan_util.c:1140:
+	DBG_871X("%s\n", __func__);

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 355e43c4cf9a..c267f1b546a4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1137,8 +1137,6 @@ void HTOnAssocRsp(struct adapter *padapter)
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 
-	DBG_871X("%s\n", __func__);
-
 	if ((pmlmeinfo->HT_info_enable) && (pmlmeinfo->HT_caps_enable)) {
 		pmlmeinfo->HT_enable = 1;
 	} else {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

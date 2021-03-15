Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F9233AFB0
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:14:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F2726F504;
	Mon, 15 Mar 2021 10:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KYAeUV0aTqPE; Mon, 15 Mar 2021 10:14:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A153760707;
	Mon, 15 Mar 2021 10:14:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC33E1BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B8A46833DB
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id asO2PPC6vofZ for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:14:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 144E8833CA
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:14:42 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 j4-20020a05600c4104b029010c62bc1e20so19102253wmi.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=So7Sq781A1ayPY0NQcU/yfj8RcUkjakOhLcaEWlMRK4=;
 b=LIwaOHbmdOXVmOFip+Pt4d6F2/YZM/eLtPX75E7O4vlRA2sjKChWt+qSZ7hlvaHEc3
 5PuHbGulKAr71RAz1ouqqE8IAorwKCLTJrXxE4fixKwl/L9dNTSu2DdsDm7DjnRUO6Iy
 Yu+5IjM278yGAzcv6FYc7XIXjj1eeigG5vkW1ak2NAKgNDT4dRhHfc6hyFmBcClcLgGb
 dmxQqo6jg3PQBLE1NP+aY1XBNdQbrPjfoqDIVr0hp/RKxzXZIOBdIpl5UU7vF5cu885y
 6cHgS4Y51HSVMLHxegDkq3KBuBJyMHG/c7i/pEGVAfV52s/0JgVZOUhBQc/TBg1qEHbU
 RrUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=So7Sq781A1ayPY0NQcU/yfj8RcUkjakOhLcaEWlMRK4=;
 b=D7VzNswoymFstUkAJd/mJqqsMiU0KB22xacdkcW0ADRhBOca/U45fh4sLpn5KTiaTd
 bYYBITcJ/TrxnlFTb56A6hIbhzXAsVKipZV1Mrdvb1SHQWJNeKqPCBd81LZhjo1G0mtd
 tJ3qabKgLilFR0LViXtI/mW+e8BGa5ZIPhr7QZ5uQVdVF6jz4QWuqz+qP4h6H0AOKRtp
 B7znJ47EAZCbWgMRHQA2mu1ddKjszyT7CoIDQ8yuV4r375roj9bcmbW51cpGSHXfnjFa
 DuAMs4DXMo5yrj8Lt3vDGjAcP1DxZEDOlzYBYe3GFNvW+jiZcdtaJO6bG1s5nGbSX2Tn
 wxxg==
X-Gm-Message-State: AOAM533p/G04tE/yY90om6BXAi7i2cxgdbsNFHEdBjSlaDOXRxy82qxH
 l9UlhArGjG9hKTu+O2Q/DIC6XR1QTQw=
X-Google-Smtp-Source: ABdhPJziM+yqT1i0A+Paka7NOxDCJ8fwYZzhAp0jfWCHoiVM42G0HUK1qVzq0MTUyCkgin1fO0Jf1g==
X-Received: by 2002:a05:600c:4112:: with SMTP id
 j18mr25273837wmi.143.1615803281225; 
 Mon, 15 Mar 2021 03:14:41 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id d29sm17745519wra.51.2021.03.15.03.14.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:14:40 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:14:38 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 03/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_QOS_OPTIMIZATION
Message-ID: <a63664946ac3c79832b7e97c42e825ac5c1ab252.1615801721.git.fabioaiuto83@gmail.com>
References: <cover.1615801721.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615801721.git.fabioaiuto83@gmail.com>
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

remove conditional code blocks checked by unused CONFIG_QOS_OPTIMIZATION

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index d643e9a59e6b..270f93e90e07 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -121,11 +121,7 @@ int rtw_mc2u_disable = 0;
 
 static int rtw_80211d;
 
-#ifdef CONFIG_QOS_OPTIMIZATION
-static int rtw_qos_opt_enable = 1;/* 0: disable, 1:enable */
-#else
 static int rtw_qos_opt_enable;/* 0: disable, 1:enable */
-#endif
 module_param(rtw_qos_opt_enable, int, 0644);
 
 static char *ifname = "wlan%d";
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

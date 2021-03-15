Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E5733AFAF
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:14:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3234147A73;
	Mon, 15 Mar 2021 10:14:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wmatIAaXttKl; Mon, 15 Mar 2021 10:14:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF8AF47AB4;
	Mon, 15 Mar 2021 10:14:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B403E1BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9337E430A3
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:14:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Jjc1fRAK4uo for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:14:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D80F40139
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:14:29 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 j4-20020a05600c4104b029010c62bc1e20so19101846wmi.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mQOBEyLYdYQLwsFjsoZC+4HNJORLWbz6l9M/l9A8vgI=;
 b=DLeUlgl2zpkPYM+W54rpptv7s5OIErLTMH+G4VGB9vxqnEjUF0L0jhHJdO6CMpI6eA
 DE2m/tnWe4w3ekHnXQ99li8M82FMQDwN3wz5XedObL2xWGHnCwNVPoTVoeJEBI3B3iMS
 gyLbwfO3W6h6+EJrKr5WPyTAuCGDsyDX3eY1cLtlnQO2EEMCLyeaaVLdiVkTTI+j6TbZ
 AwFJrUxVo3y0gIDO06DYwLIQJDmQ0ghDJuzyHby6zdYCweAZiiaUpRTSga1bBf8oG4ur
 Y/sbAdn+lyquheac9EEwnDCgCE5n9WAP45bocOh3RTbXR7NFI2ezrDUfteCAODN5MA4W
 kKwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mQOBEyLYdYQLwsFjsoZC+4HNJORLWbz6l9M/l9A8vgI=;
 b=IQ5WOrMJilCUzinHJ460+pDqXnsJWPV03Hlk3dhgmUTW5x0I4AwVbb+dbSD1Gy4gNC
 kAUMTjWXAP9945wxB3863ck1+vZ5Iq+I6OF+lzD3a07kBgNUaObKprFz1EzT6LpSGCbP
 l8eHqOMA6PU2jMAi7HYDpHbAQHQfdGhnZ0epa8KFqPWCn18LAfDiSZC5N8HpoCYPYSip
 fLzYOyMp87EwFtn9N2JKQJo2F0vj5jkLhikueapuQiIvVPFPSvNo2Cuu5+KgwaO1kd8w
 AiQVRAuVuz2WHN/ITljNp3REPJ6Quvn6UwW6rGXpWeII2X8rfLX0gZcG6fGD5wp3YHaS
 bMxQ==
X-Gm-Message-State: AOAM532i1wro6W9bqyaYN2HGyMosLn8dHivHfOq2JCQm/4QLYe6jWyAg
 TKXK9vsO2n5ld3uU+/+VshE=
X-Google-Smtp-Source: ABdhPJyNK7zMaQleVZUz0Ju+KCytVu/+knSBFoen8mfYpueyoJPzCTyRaXRNxcawOUzZxHaUaxwKfw==
X-Received: by 2002:a1c:68c5:: with SMTP id
 d188mr24557292wmc.119.1615803267757; 
 Mon, 15 Mar 2021 03:14:27 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id s18sm20718524wrr.27.2021.03.15.03.14.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:14:27 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:14:25 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 02/15] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_HW_PWRP_DETECTION
Message-ID: <a7330c5f934a49ebba43b671d6fb78b50c903504.1615801721.git.fabioaiuto83@gmail.com>
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

remove conditional code blocks checked by unused CONFIG_HW_PWRP_DETECTION

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index d8cdce0539af..d643e9a59e6b 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -113,11 +113,7 @@ static int rtw_enusbss;/* 0:disable, 1:enable */
 
 static int rtw_hwpdn_mode = 2;/* 0:disable, 1:enable, 2: by EFUSE config */
 
-#ifdef CONFIG_HW_PWRP_DETECTION
-static int rtw_hwpwrp_detect = 1;
-#else
 static int rtw_hwpwrp_detect; /* HW power  ping detect 0:disable , 1:enable */
-#endif
 
 static int rtw_hw_wps_pbc;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

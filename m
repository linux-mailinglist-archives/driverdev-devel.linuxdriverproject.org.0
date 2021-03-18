Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2B33408C3
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:26:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5ED843291;
	Thu, 18 Mar 2021 15:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g_GA4iexwv3m; Thu, 18 Mar 2021 15:26:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35C524328B;
	Thu, 18 Mar 2021 15:26:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B3B761BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:26:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A0EED8429E
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:26:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GWtJ5WQcKTiA for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:26:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E63938429A
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:26:32 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id o16so5986957wrn.0
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iJ20k2nsi7wytUeT8FCZKrmbGkKdU/RgkQ+a0TC7OQE=;
 b=G0s7Kqy7VkWSxBXMj91ohjkHUF0EOeMEmbX5KxkbHelbGRXr2XoEZPHDZWkwWcPmJI
 6V2iJIumNKC8ldX4rTkf0N30YDl61NJ0dpXawTBctpPjt549DzpPtKdYUNEYFvkCyHN7
 eKptIzsqkrDF5MUlGTTxp8SJNRksS6WYyt3olIlVEsSwsmOVCyU0PCc8ohwxRBvgSWcy
 +fTF3qN/oQZToYf/Xg7JTbJPFNNRISMGDQ8ouZvd+4nnvj8Vzw29GxEKhjOsjvYjakVR
 Pihef+3ZZoWBuS5d49LHDN4U+Sh57X19R9ruuDLcnkKDokO68K/yWAqb52Pdd8xoo5JJ
 H/VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iJ20k2nsi7wytUeT8FCZKrmbGkKdU/RgkQ+a0TC7OQE=;
 b=QgN5s8vediFJRsToYw4NdvlcvFLR0u2INZzBBDmYvHHQ7A6UoXUoec7k1/5opgDImP
 4qh4xDHIK91VEKDgqfFXg1xvSkHcgB2ziWMG5/Ve5x1LBRFlouIPxP7H5LeUzMDKJt2i
 4BUqUZgurdAZF63ReLhzdKGJRMkYvGn4rBy4H6Iy7CZhgullKwPnj+J3yjyi6TchCkRU
 trMMekey4ZDObUWk1Gx31HD9lBrGz+6L6bUU5E0Ekm7/Z68JwrPYYvZoYmZqqe4nechO
 VRps55314Hq9u5LEbnJ3nUNw9PCVx/Tz2NNU0eobE/eBLxCfclIcUB2kvLW2Xnthh5xi
 ipTA==
X-Gm-Message-State: AOAM533CkT3Kmje4KKjTYuQ/16b19EjVKtg/1dP9m9mLMiFQVLO/5f/r
 ZY5hh85wCHM4QMosXd62iAA=
X-Google-Smtp-Source: ABdhPJxf9HS2e+hvUtN2MaOnIe+5QyeCgZQItldzx95yjF97R6SGf4VjiVhdkBQA/VhuAkMisFVvrQ==
X-Received: by 2002:adf:e809:: with SMTP id o9mr10519749wrm.110.1616081191146; 
 Thu, 18 Mar 2021 08:26:31 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id x11sm2606850wmi.3.2021.03.18.08.26.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:26:30 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 00/15] remove unnecessary logging
Date: Thu, 18 Mar 2021 16:25:55 +0100
Message-Id: <20210318152610.16758-1-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <YFMb+7jjmj7Oty8B@kroah.com>
References: <YFMb+7jjmj7Oty8B@kroah.com>
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

remove unnsecessary loggings warned by checkpatch

Fabio Aiuto (15):
  staging: rtl8723bs: remove unnecessary logging in core/rtw_ap.c
  staging: rtl8723bs: remove unnecessary logging in core/rtw_mlme.c
  staging: rtl8723bs: remove unnecessary logging in core/rtw_mlme_ext.c
  staging: rtl8723bs: remove unnecessary logging in core/rtw_pwrctrl.c
  staging: rtl8723bs: remove unnecessary logging in core/rtw_wlan_util.c
  staging: rtl8723bs: remove unnecessary logging in hal/HalBtcOutSrc.h
  staging: rtl8723bs: remove unnecessary logging in hal/hal_com_phycfg.c
  staging: rtl8723bs: remove unnecessary logging in hal/odm.c
  staging: rtl8723bs: remove unnecessary logging in hal/odm_debug.h
  staging: rtl8723bs: remove unnecessary logging in hal/rtl8723b_cmd.c
  staging: rtl8723bs: remove unnecessary logging in
    hal/rtl8723b_hal_init.c
  staging: rtl8723bs: remove unnecessary logging in
    os_dep/ioctl_cfg80211.c
  staging: rtl8723bs: remove unnecessary logging in os_dep/ioctl_linux.c
  staging: rtl8723bs: remove unnecessary logging in os_dep/os_intfs.c
  staging: rtl8723bs: remove unnecessary logging in os_dep/wifi_regd.c

 drivers/staging/rtl8723bs/core/rtw_ap.c       | 26 --------------
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |  6 +---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 36 +------------------
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  5 ---
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  2 --
 drivers/staging/rtl8723bs/hal/HalBtcOutSrc.h  |  8 -----
 .../staging/rtl8723bs/hal/hal_com_phycfg.c    |  4 ---
 drivers/staging/rtl8723bs/hal/odm.c           |  2 --
 drivers/staging/rtl8723bs/hal/odm_debug.h     |  2 --
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  | 13 -------
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  4 ---
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 14 --------
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |  9 -----
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |  7 ----
 drivers/staging/rtl8723bs/os_dep/wifi_regd.c  |  2 --
 15 files changed, 2 insertions(+), 138 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1917433AFA8
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 11:14:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67D4B82B53;
	Mon, 15 Mar 2021 10:14:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8n3ozbLSorzU; Mon, 15 Mar 2021 10:14:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8634E82B51;
	Mon, 15 Mar 2021 10:14:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79B561BF384
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:13:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 680BB44BA4
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 10:13:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WRmavlo2aELF for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 10:13:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6FE8544A94
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:13:54 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id e18so5378324wrt.6
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 03:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ZliOoleFek+zCl9Sad4KdcKZMptN2E4YKVdq/7vIxK4=;
 b=Xn3jkFwLBknSuHhSk/6vF8vuP8p9Bv0DVAAF+23s+0IYdd3CqUjZVMTBi3jvHbXPz0
 hziY03u2usakOa/KQr02jJziFGjoe/2d9wWpefZaZgz0wb8MKK0fm/yH/fWD/d0jJULr
 cbbbxdkO1+NDLZQxKdS9PSD2z5kNEGvcOnG1k0r6zWGdPIg9+o9kO3Z7ynYNzWJCb1v9
 ZsHgYP5fPvAw+1RXQAxdJrzAl1ZMDylXSH2poTXXJag5/KZVbM7E0EqZ1pCRlYpUo3TK
 lgSISNR2JMTX4SEr/WI43iMWXd0fPyN1agG5dpn5N3qjl0ThxXDusBxLupaI6rtUCnGD
 Ih4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ZliOoleFek+zCl9Sad4KdcKZMptN2E4YKVdq/7vIxK4=;
 b=gE1mYFNlvd66OAzTdK/TyXdJT4XKFtTgb1+kMqrTczXLfRtiRvmqYI403vE/glUCds
 benq/1SeIfJYyzr1SbMpmxPQIWEKdipQiqRF6dGY8oCOPtf8/oG9XeDeoweHOxAyOsfr
 IbVo8+8oeCk/9gL8OSCOgG0W3e51BfU/EptJ6Nn10jEUlX1nBW/iyA0aHRrw+2ucbD7A
 f6NQJL6U1Wi11CaUprv7VU16XdaOiwCttP4jMv3Qc32xQTTEvTbm2yNj7jVQCmGyFrUU
 MH8GISCZxY+NMLWsY4GF0Eg96cuiDV6Fzwfh1zrhnaD9CHDYjqXBGBzwb7dBgVwWuvDJ
 RAGw==
X-Gm-Message-State: AOAM532ingmh47LshQptCIpYYamGQzpcLCfWUWKfv6YCF1ZFJYQ1WmCl
 0wMwYLj0QGEKAb8Vg7WlLM4=
X-Google-Smtp-Source: ABdhPJzclMNZmPb2xWLeA2pLOny/6YhDnLUvik2kcgDRX076RVtc5FRJItVJmpx5pmGhJb3TPMjN5Q==
X-Received: by 2002:adf:a703:: with SMTP id c3mr10943533wrd.72.1615803232583; 
 Mon, 15 Mar 2021 03:13:52 -0700 (PDT)
Received: from agape.jhs ([5.171.72.229])
 by smtp.gmail.com with ESMTPSA id j30sm20195654wrj.62.2021.03.15.03.13.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 03:13:52 -0700 (PDT)
Date: Mon, 15 Mar 2021 11:13:49 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 00/15] staging: rtl8723bs: remove unused code blocks
Message-ID: <cover.1615801721.git.fabioaiuto83@gmail.com>
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

Remove unused code blocks as required in TODO file

Fabio Aiuto (15):
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_AUTO_AP_MODE
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_HW_PWRP_DETECTION
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_QOS_OPTIMIZATION
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_AP_WOWLAN
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_PM
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_SIGNAL_DISPLAY_DBM
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_BACKGROUND_NOISE_MONITOR
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_SKIP_SIGNAL_SCALE_MAPPING
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_GPIO_API
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_EXT_CLK
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_CHECK_BT_HANG
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_SDIO_TX_TASKLET
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_SW_CHANNEL_PLAN
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_C2H_PACKET_EN
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_ODM_ADAPTIVITY

 drivers/staging/rtl8723bs/core/rtw_ap.c       |   4 -
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |   3 -
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 250 -------------
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  35 --
 drivers/staging/rtl8723bs/core/rtw_recv.c     |  32 --
 .../staging/rtl8723bs/core/rtw_wlan_util.c    | 126 -------
 drivers/staging/rtl8723bs/core/rtw_xmit.c     |   5 -
 drivers/staging/rtl8723bs/hal/hal_com.c       |  37 --
 drivers/staging/rtl8723bs/hal/odm_HWConfig.c  |   9 -
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  | 339 ------------------
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c   |   3 -
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  71 ----
 .../staging/rtl8723bs/hal/rtl8723bs_xmit.c    |   8 -
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  | 126 -------
 drivers/staging/rtl8723bs/hal/sdio_ops.c      |  37 --
 drivers/staging/rtl8723bs/include/drv_types.h |   6 -
 .../rtl8723bs/include/drv_types_sdio.h        |   5 -
 drivers/staging/rtl8723bs/include/hal_com.h   |  10 -
 .../staging/rtl8723bs/include/hal_com_h2c.h   |  30 --
 drivers/staging/rtl8723bs/include/hal_data.h  |   5 -
 drivers/staging/rtl8723bs/include/hal_intf.h  |   3 -
 .../staging/rtl8723bs/include/osdep_service.h |   7 -
 .../staging/rtl8723bs/include/rtl8723b_cmd.h  |   6 -
 .../staging/rtl8723bs/include/rtl8723b_hal.h  |  11 -
 drivers/staging/rtl8723bs/include/rtw_mp.h    |   3 -
 drivers/staging/rtl8723bs/include/rtw_recv.h  |   5 -
 drivers/staging/rtl8723bs/include/rtw_xmit.h  |   4 -
 drivers/staging/rtl8723bs/include/sdio_ops.h  |   7 -
 drivers/staging/rtl8723bs/include/sta_info.h  |   5 -
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |   8 -
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 130 +------
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   | 142 --------
 drivers/staging/rtl8723bs/os_dep/recv_linux.c |  41 ---
 33 files changed, 1 insertion(+), 1512 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B876A3396A3
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 19:33:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE6A78430B;
	Fri, 12 Mar 2021 18:33:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3dNDAHJjysTj; Fri, 12 Mar 2021 18:33:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9193083F69;
	Fri, 12 Mar 2021 18:33:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C0AB1BF3C0
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 18:33:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B164840B9
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 18:33:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fpNHiibmRj2d for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 18:33:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 381818404A
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 18:33:19 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 m20-20020a7bcb940000b029010cab7e5a9fso16361475wmi.3
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 10:33:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=KgZGZquzp5af/SHw1iWV2nRB1+CRMBJEbwCFEObh3NM=;
 b=VDDL6Ua0hzlTTGNcpWRtmN8dLMeoEkJcWpgkRm31GRw96kaaG3d1T1dAs/OTOH66Xw
 LuyPcyA5pF8k8lfQUDjeldNLpZCixGyu/llbp15CPxAtswQzt9WVkXEHPaXyZY2S/L6a
 j1WwOVZaaBt8VKYHZ6tdHxZejaV7/xnI1y5zafxXCrHx7w0aTBSvxNfhsZdhgNGNMuYb
 vGmqITWHv6WkpqKx9sen3wdzB7LlTHDYy5EVKDrSOVQNIPz3XTkHFrXWYMbCjtIH/U+p
 Nk/ashmVmRW+2vI1ASl+ASsqc9KqqVF2rRRd1WaYsbtWsyF76yqKPcrXcNmgXoOLJX9a
 6Sng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=KgZGZquzp5af/SHw1iWV2nRB1+CRMBJEbwCFEObh3NM=;
 b=mDmAv4/Qfx7A3S4NMmo6Y5BtcpShGu6yTt7RnVgtOqYCDKdY8gMNiVxGFUWeSEddhf
 BonA6WkI82cKNEj1VVIsLAwCzezR6bDwxG5wtqZM106NlWGt8cDZg1z0KgxxsbD4ElLy
 3evJizpjkwkT/y8af2ibzQRY+zdRvDzU5dYasBU+skjkuNlASMPVuz4AxziBBb30C4DU
 /L1Xd9JORXVNTRVsJVITgyWT1Te0+Sc6F3h4XGwCSTp3tqjMNnUcWVr4arNYCgfBAt7E
 dnOcK52Hdxn1QXR+m1rBUSNCq8ELcDpBjTtD4TS5VvpiqCnAoGEXJkg+RWAg/aSIC/dA
 3FsA==
X-Gm-Message-State: AOAM5314dcJIP5UQi6MHrT9dQxCXsFzIrfjFkjfZC3z4usQ2nboQigm7
 Pm56dO8ALNuTTjTAgiOlnEzUVQrJLHe1NA==
X-Google-Smtp-Source: ABdhPJyZ5qpiW6Y9BFniryM+5gZi/dKyEJmSWOQ4Hs/w4TJVWfbPB+O2i/a+7zMwB/rr3KQ8RQqX8g==
X-Received: by 2002:a1c:f20f:: with SMTP id s15mr14000151wmc.35.1615573997384; 
 Fri, 12 Mar 2021 10:33:17 -0800 (PST)
Received: from agape.jhs ([151.57.163.80])
 by smtp.gmail.com with ESMTPSA id s18sm9821074wrr.27.2021.03.12.10.33.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 10:33:17 -0800 (PST)
Date: Fri, 12 Mar 2021 19:33:13 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/4] staging: rtl8723bs: remove unused code blocks
Message-ID: <cover.1615572985.git.fabioaiuto83@gmail.com>
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

This patch set removes unused code blocks as required in TODO file:

	find and remove code blocks guarded by never set CONFIG_FOO defines

Changes in v2:
	- modified sunject lines to make them unique
	- added a patch previously excluded (removal of
	  CONFIG_PNO_SET_DEBUG code)

Fabio Aiuto (4):
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_PNO_SET_DEBUG
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_PNO_SUPPORT
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_WOWLAN
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_TCP_CSUM_OFFLOAD_RX

 drivers/staging/rtl8723bs/core/rtw_mlme.c     |   3 -
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  24 +-
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  61 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  | 872 +-----------------
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  43 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  | 253 +----
 drivers/staging/rtl8723bs/hal/sdio_ops.c      |   4 +-
 drivers/staging/rtl8723bs/include/autoconf.h  |   3 -
 drivers/staging/rtl8723bs/include/drv_types.h |   5 -
 .../rtl8723bs/include/drv_types_sdio.h        |   2 +-
 .../staging/rtl8723bs/include/hal_com_h2c.h   |  88 +-
 drivers/staging/rtl8723bs/include/hal_intf.h  |   5 -
 .../staging/rtl8723bs/include/rtl8723b_cmd.h  |   4 +-
 .../staging/rtl8723bs/include/rtl8723b_hal.h  |  17 -
 .../staging/rtl8723bs/include/rtl8723b_spec.h |  10 -
 drivers/staging/rtl8723bs/include/rtw_mp.h    |   3 -
 .../staging/rtl8723bs/include/rtw_pwrctrl.h   |  62 --
 drivers/staging/rtl8723bs/include/rtw_recv.h  |   5 -
 .../staging/rtl8723bs/include/rtw_security.h  |   3 -
 drivers/staging/rtl8723bs/include/sdio_ops.h  |   8 +-
 drivers/staging/rtl8723bs/include/sta_info.h  |   5 -
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  56 --
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |   3 -
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   | 238 +----
 drivers/staging/rtl8723bs/os_dep/recv_linux.c |   8 -
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c  |   5 -
 26 files changed, 28 insertions(+), 1762 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

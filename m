Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CAE33A751
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 19:12:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 851D083C9B;
	Sun, 14 Mar 2021 18:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g4gh5hfRwEF4; Sun, 14 Mar 2021 18:12:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8E7183AD5;
	Sun, 14 Mar 2021 18:12:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2ED011BF414
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 18:12:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1600640167
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 18:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mN5PQDM1oWqa for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 18:12:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 60E1D40162
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 18:12:11 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 c76-20020a1c9a4f0000b029010c94499aedso18917502wme.0
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 11:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=SYAbB9XrQfsURJ4pHZt6jSpiz+XrWOVC6B16BC7Az3E=;
 b=CPw0waUPUxTTA2v7BYebc42Sp9zi+3eZpIhLJvzVWfOeVzSVjdQU89pOGceOkGO7Zy
 FhlHGK3An2H6Bvna7PFmEVLUtX1czAjnWCKUDBWus2m+njgEX/S/edaPpbDW2Ai+p6GS
 S33cHHbWkHPC7G36DrKqZUdNzWxOIrXgcp2wJe3wNDpTSZznay2BXyfaCQqGzsSzP/Ub
 Dc8SceXByapmvdARIBBelLiRXAGhFelzaB6ml8VmEw3imAuvyY9Gjl378mD/htojsZlB
 GWcGfWBeHkG0XnqIrbPbWtA28f8Yy83IilgLRvsjTNMq++io0cl9v213VGn7OZA1QjHs
 Clgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=SYAbB9XrQfsURJ4pHZt6jSpiz+XrWOVC6B16BC7Az3E=;
 b=OepCQ644Q3sRFGIqDjAIE/yJO5vWw8eQV8RISv/jAjd6c3aJgOimRwl8Q+enWz7DcS
 nnWKZra0lt5whzoewVzMojhZBgbz3+rPkk4pjclbDTKAllehFcnKXdzAbiIeGeWXlH9g
 F3aUWebu2I9Pq96NLCGn8vcF//rm3BxkI3Cx/wUaz8/d4B5FxFzOyvCzv2ieOfjJTcSR
 A+7RrUetAR94e0rjimMZr1qCDST0m6Jw26GCse1qok2TVaZdOYSgbmqNgwZ8okt4cWnY
 zB6UqVoIMVG5QxfGEScxjg93eTPuXahecGm0BXknttDfoarI83ns446lzLIgmVaCUl/7
 vttA==
X-Gm-Message-State: AOAM533b6lNikQX1qMoLseaKDTDGaKUWtbt6Rr2Bgo5AWV6tgacVfnUd
 4AuBwES5uMTzdkicdgf59M8=
X-Google-Smtp-Source: ABdhPJx/mYM8jvNC+wUJ+EtT6juW0035mjOUQlEU+BR37tzR6MHP2psPqVIgwKZiduAW/zideFpEKg==
X-Received: by 2002:a1c:df8a:: with SMTP id w132mr22504509wmg.53.1615745529550; 
 Sun, 14 Mar 2021 11:12:09 -0700 (PDT)
Received: from agape.jhs (an-19-176-195.service.infuturo.it. [151.19.176.195])
 by smtp.gmail.com with ESMTPSA id
 j13sm15872736wrt.29.2021.03.14.11.12.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 11:12:09 -0700 (PDT)
Date: Sun, 14 Mar 2021 19:12:06 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 0/2] staging: rtl8723bs: remove unused code blocks
Message-ID: <cover.1615744948.git.fabioaiuto83@gmail.com>
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

This patch set removes unused code clocks as required in TODO file:

	find and remove code blocks guarded by never set CONFIG_FOO defines

Changes in v3:
	- rebase of remaining conflicting patches

Changes in v2:
	- modified subject lines to make them unique
	- added a patch previously excluded (removal of
	  CONFIG_PNO_SET_DEBUG code) 

Fabio Aiuto (2):
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_PNO_SUPPORT
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_WOWLAN

 drivers/staging/rtl8723bs/core/rtw_mlme.c     |   3 -
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  24 +-
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  61 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  | 825 +-----------------
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c |  43 +-
 drivers/staging/rtl8723bs/hal/sdio_halinit.c  | 248 +-----
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
 .../staging/rtl8723bs/include/rtw_security.h  |   3 -
 drivers/staging/rtl8723bs/include/sdio_ops.h  |   8 +-
 drivers/staging/rtl8723bs/include/sta_info.h  |   5 -
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  56 --
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |   3 -
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   | 238 +----
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c  |   5 -
 24 files changed, 29 insertions(+), 1696 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

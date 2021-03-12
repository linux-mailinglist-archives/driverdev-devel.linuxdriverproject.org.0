Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D141D3392A3
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 17:05:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 69BF14EDA0;
	Fri, 12 Mar 2021 16:05:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z934Ax83Am6Z; Fri, 12 Mar 2021 16:05:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 67ECA4ED92;
	Fri, 12 Mar 2021 16:04:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C913D1BF27F
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 16:04:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6267844DA
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 16:04:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pJkzMwzDrBw6 for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 16:04:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 12B6D844C9
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 16:04:48 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 u5-20020a7bcb050000b029010e9316b9d5so12530585wmj.2
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=911lViraCeCDDonFvbzk1PwdqXX0VvPPRGufvR8lLF0=;
 b=QcJXRZzwbcFRo2C3M118l/xt1FxW9ZJIe0QGGDZLtp+Dx11+vxFcHotuO+3Trk6+U7
 f8soVjwWLNjN460qKl29lDQL+YsXCCu6gVHMNozpKVAvrqzKOsf6AKYu+5PrJdHKifz+
 V+MMuVpauHFRH6O/DT+7FIkpQC5gzHvwruD6P8PkcUvGtpzr+tfGHqM0UCa5MZqRBKCj
 FITwigGk/XCp5MTm2KpuyEjwqWf1UmlKY3sgxphZDj3ZVseGaEKXFd262kt3pHylD3o7
 Jdf+rO9leZraclB0oiUf4FgCRiVdxXsQ/LfXooRGUg2aMaayCp7R7A3UMGZ+LCu/bCtI
 z+uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=911lViraCeCDDonFvbzk1PwdqXX0VvPPRGufvR8lLF0=;
 b=Hzt4iEHVMqVcziI5qJQQHaxDyz+xCL4cRTVSDe3fO6MlKQH586x8F0wkJS8CbPwF7W
 0maSFM8yL+OzaJFFOkyD85lfzuXoNrJOoS2uHbXgUlRE+1NnabXXh9kLxki0nvtmf1v5
 hFUveLdGpz+3R9CG3+ejpbuyOu6MY+FJbjUk6Ndfo8+/ZoSe0ersWe1KLOlOozFD8CoQ
 kobr1ixesvyXyZJ6nsioU3Wh4vuJUDMGgo1ximoLjvmu2ItHgnGUmyMSe+o6R6LDFaFa
 70Fpuw2wudmS+1BM+XMKD5uPu4HnlrEe4dJw/S+MazjchVo6h9S/uJM+N5HvcogkQorS
 mBKQ==
X-Gm-Message-State: AOAM531VpyObV25AEAQYzVPndshyKuBB2/LqEy1hT0pkTt+PbNGAbm4Q
 shuucGfmr2xvaAHrFuGruSo=
X-Google-Smtp-Source: ABdhPJysRBNqoa7MBuhgUe3qBVFQXqrPwqRjtSF4MHU26ACWQAn97uaMpH/uy4k6XnJzWsPMhb8rvw==
X-Received: by 2002:a1c:541a:: with SMTP id i26mr13414317wmb.75.1615565087273; 
 Fri, 12 Mar 2021 08:04:47 -0800 (PST)
Received: from agape.jhs ([5.171.80.73])
 by smtp.gmail.com with ESMTPSA id 4sm2728852wma.0.2021.03.12.08.04.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 08:04:47 -0800 (PST)
Date: Fri, 12 Mar 2021 17:04:43 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 0/3] staging: rtl8723bs: remove unused code blocks
Message-ID: <cover.1615561446.git.fabioaiuto83@gmail.com>
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

This patch set removes unused code blocks as required in 
TODO file:

	find and remove code blocks guarded by never set CONFIG_FOO defines

Fabio Aiuto (3):
  staging: rtl8723bs: remove unused code blocks
  staging: rtl8723bs: remove unused code blocks
  staging: rtl8723bs: remove unused code blocks

 drivers/staging/rtl8723bs/core/rtw_mlme.c     |   3 -
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  24 +-
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  61 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  | 824 +-----------------
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
 drivers/staging/rtl8723bs/include/rtw_recv.h  |   5 -
 .../staging/rtl8723bs/include/rtw_security.h  |   3 -
 drivers/staging/rtl8723bs/include/sdio_ops.h  |   8 +-
 drivers/staging/rtl8723bs/include/sta_info.h  |   5 -
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  56 --
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |   3 -
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   | 238 +----
 drivers/staging/rtl8723bs/os_dep/recv_linux.c |   8 -
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c  |   5 -
 26 files changed, 28 insertions(+), 1709 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

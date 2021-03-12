Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 685D5339244
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 16:50:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A9AC6FAF7;
	Fri, 12 Mar 2021 15:49:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dt9uFfuEChLJ; Fri, 12 Mar 2021 15:49:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A69A26FACB;
	Fri, 12 Mar 2021 15:49:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD4EA1BF2A0
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 15:49:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C92CB44969
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 15:49:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4RCer7tadcLL for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 15:49:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C526B447DA
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 15:49:45 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id e9so2038383wrw.10
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 07:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=911lViraCeCDDonFvbzk1PwdqXX0VvPPRGufvR8lLF0=;
 b=HZ3ewtUl1VxLbKTMtsq1IEmvqlGeZktls8LAZpY8mMwirzJhA8bZ52FFv5Y5zmIOLm
 PDtxP/V6c5vWXcG15QqhtYQuUC0DfE1AFCEyJz4Gfekuw4uBow+Adqz2p6FP0kUCMSZ+
 ILjYX20eg1eJGMnWi8A2IJhNAFAKLabAJTnUiiYrm55GVZuRNWIKkIz5Yy06KRr5l5dK
 WbVFQLwA2k4HjQlEMnO8xt8V2P5zSuEmCUgcpSFelH8Zv16GEVewQ5EyuNGeta4w4Ihs
 SCb7wUHd3mya0XuWZES2N7WHm0GorfmVRjZz4XfOG+sPNRjqj2jnb1OZbqaEGHzB3XZP
 yVcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=911lViraCeCDDonFvbzk1PwdqXX0VvPPRGufvR8lLF0=;
 b=FoNyV5aqoNAMrzBeQqS1PT65CK/AhSHSzlIfeyITYL0BTcA0ezYLxybejd6ZBm+rwK
 osozASi7zIZ9fwRkNvjOz6HkvKXMMkbt/67PiVE8IntBiymbtB/npuR37LXDrwfM9b0K
 KAOR0rZxsg5nOckap3f6JrxMEYVi+qn0zlgUcGhLGD0CYYlFdluJnHIsOosvr/GYZV4v
 ZHL+9oWSXrptEXMRGWzfxxfC2JuFxkOViJwQOzVeNys3RXxUU+eZVh//jKaolBm92zT4
 I68AxpQTZOH8L7tHYLK0qR/35KltRime7R56TpRpSsU1TszBFIuCLl4EwlCRAJOEwqJ6
 CR2w==
X-Gm-Message-State: AOAM531dKohGW1yDEMIEIWZj1PAu+aSpKC8cID6yBOttb4u9ievdNMtX
 Heqy8Np7/YuVQr6cYZ+Ds+Q=
X-Google-Smtp-Source: ABdhPJzQYwhPyXuYHRLqsQz45nAp8CnUXw3lIBqINyabNntEV6KA/aAY5quUJiodM6dqZDOK2YTQ4Q==
X-Received: by 2002:adf:a59a:: with SMTP id g26mr14777779wrc.271.1615564183837; 
 Fri, 12 Mar 2021 07:49:43 -0800 (PST)
Received: from agape.jhs ([5.171.80.73])
 by smtp.gmail.com with ESMTPSA id j203sm2690138wmj.40.2021.03.12.07.49.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 07:49:43 -0800 (PST)
Date: Fri, 12 Mar 2021 16:49:40 +0100
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
Cc: devel@driverdev.osuosl.org, linux.kernel@vger.kernel.org
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B66A33EDA6
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 10:58:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E97B483F5E;
	Wed, 17 Mar 2021 09:58:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lQ_Dr40_oKkD; Wed, 17 Mar 2021 09:58:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 224C68385D;
	Wed, 17 Mar 2021 09:58:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C240B1BF831
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 09:58:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B15078385D
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 09:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XAxra9XeVCXx for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 09:58:16 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F10F08354B
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 09:58:15 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id z2so1142435wrl.5
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 02:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=x4zh4SNUmcfd2PXUC3KyCVi6qa14IVpwvMxxZz19GaU=;
 b=a+fxMkr21025v8KyzUdXrHu0dkOQedksKKsOdtCdbozifiP7HUxsiq8WwUYFv5yXqY
 Dq9Ix4ayo29vQ81Q6uxaSlkUyLq/luxJaaceVjuNNHz1qpfUlE6+BvZRRAX0j81RDM+y
 N88dn11gu8L5l0nNkQRK+fAxX09ViWrAF5FKriIM0WlOQjBqgB8hcYzHLH0KL0sVIzHZ
 vU/0tkGnMMUd7n1G4V5hJHim0LuWHBTJI2gQsk0vTHELkPG5xBKeEeIWiUaqmnTzUxBy
 CaQXIYKXWV0mH4M3HAkMPpQGpw7XqSWp7YvT1aI7B149oHdm0knz+JypbLgtIFRn7qsB
 sdDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=x4zh4SNUmcfd2PXUC3KyCVi6qa14IVpwvMxxZz19GaU=;
 b=UXWgTf5I3cyVa+Spxd3LC0i5Rv2I44abKNiMPGYlbF6XaFnT+VWVww6D7IhoiWxWlT
 Z1ZkdKiXSHOfzG11F7ZCDYBiNPtVoN/hlZY13HXlJmE2l4XcCYHyaiBPWm29xNt4acSu
 qwttNXzpHucK7JiWl0M62y6NJHwufuOVgYTIaMGQ7bbcbMlNrn7WLW8wSO14xAIYjntQ
 P88Up/lMdTAZe64epw7EbR8MbFj9DPZ6h8nOhr1xw4IFm8JrTpI+KLFOGYhx0FE72CD9
 rNBnsRW03zwY/vdyUy+S7T4Ss0EteU6Ww/3LGybmlbNr/VGo8v/O9BTTAPtnpg2E8Cuk
 t1rQ==
X-Gm-Message-State: AOAM530+/IZXdPWlsbDA7jaDBbKtPm8TQmmHFlzGkJpzmebj8TnD1fqk
 CZUSg2ebvi3lE+rzpx4EhuA=
X-Google-Smtp-Source: ABdhPJwTcvpEVOYb4EuzFW/uyLjNVrrSMdeNkMba8xfez82DYHzbAp0Qpw68j/p/jevJnjVKztXRww==
X-Received: by 2002:a05:6000:1803:: with SMTP id
 m3mr3610739wrh.50.1615975094162; 
 Wed, 17 Mar 2021 02:58:14 -0700 (PDT)
Received: from agape.jhs ([5.171.81.191])
 by smtp.gmail.com with ESMTPSA id w131sm1998871wmb.8.2021.03.17.02.58.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 02:58:13 -0700 (PDT)
Date: Wed, 17 Mar 2021 10:58:12 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfounddation.org
Subject: staging: rtl8723bs: remove unused code blocks completed?
Message-ID: <20210317095812.GA2270@agape.jhs>
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

Hi,

I'm trying to search other unused code blocks:

grep -r '^\(#ifdef \|#if defined(\|#ifndef \)CONFIG_' drivers/staging/rtl8723bs/

drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:#if defined(CONFIG_PM)
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:#if defined(CONFIG_PM)
drivers/staging/rtl8723bs/os_dep/ioctl_linux.c:#if defined(CONFIG_WEXT_PRIV)
drivers/staging/rtl8723bs/include/drv_conf.h:#ifndef CONFIG_RTW_HIQ_FILTER
drivers/staging/rtl8723bs/include/autoconf.h:#ifndef CONFIG_WIRELESS_EXT

all blocks left are checked by existing defines.
Could we apply this?

thank you,

fabio

diff --git a/drivers/staging/rtl8723bs/TODO b/drivers/staging/rtl8723bs/TODO
index 45065fd3fd5d..afa620ceb2d8 100644
--- a/drivers/staging/rtl8723bs/TODO
+++ b/drivers/staging/rtl8723bs/TODO
@@ -1,5 +1,4 @@
 TODO:
-- find and remove code blocks guarded by never set CONFIG_FOO defines
 - find and remove remaining code valid only for 5 GHz. Most of the obvious
   ones have been removed, but things like channel > 14 still exist.
 - find and remove any code for other chips that is left over
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

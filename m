Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E53327F15
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Mar 2021 14:12:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5430243075;
	Mon,  1 Mar 2021 13:12:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8-cmT1Oyb0Z2; Mon,  1 Mar 2021 13:12:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 754E742FF8;
	Mon,  1 Mar 2021 13:12:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ABCAB1BF372
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A75724ECD6
 for <devel@linuxdriverproject.org>; Mon,  1 Mar 2021 13:12:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DJ3cmGEfHdK7 for <devel@linuxdriverproject.org>;
 Mon,  1 Mar 2021 13:12:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 190444EC99
 for <devel@driverdev.osuosl.org>; Mon,  1 Mar 2021 13:12:30 +0000 (UTC)
Received: by mail-pg1-f182.google.com with SMTP id o10so11531509pgg.4
 for <devel@driverdev.osuosl.org>; Mon, 01 Mar 2021 05:12:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=gkAKu8GClHQzid7P3VQcTN/lyGRM5PxUHs0Bh6E5MeY=;
 b=VP5mvurktIf3RN8PGiTMAMdv9mIBdC/OnFceU1BPuXXqj0tuj8TB90vuPD9tSvwKK8
 /ms0vinyz1GUVpUKTkmvoq3eZc8HwpqK+nUCtN4yP2BrUEUSErgnLtt1Us2IiXduotEl
 8SXfB63IEJ+Oo2RhScaySKFGiCrUjNzfTG1dGSF0s/jP/gfDziW2G1kEtMqruFIJnYI6
 nVxkAFUp/p3JmxtUQBa1lPiCiLQ0/wejBX1rUpNS6PUz59ajBrRXuSoPr85ronQpFWJw
 5ku4Irc/iXkeGONa48vFoJWDPxj5z6/21PpNcS283oJWas/dnfC33QU4fuAfGth5YYgH
 bw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=gkAKu8GClHQzid7P3VQcTN/lyGRM5PxUHs0Bh6E5MeY=;
 b=JQn4dby4+kw6JY5y6Qx3ccAlCM1YPWjooVdn+VET8EhaOjigP/7z0EpWpJF7DirTfy
 lwmewsFgPj0RkzkJyv2Z7lfvNMIT+MXsrm3DvEPtYzUMrs2B3DfHk2nWMrABmKtR7W7M
 ZduhtBcWxAEbGu9Sr/ZebaPrKIaWe8e0Xz3bzSRNXVD6XeKyZx4saz7b3daz7VcVDfBX
 GohfTo7ihXxXWoe3n+ZPaIgZ4PC/hvxqs/22oAVVaQXDXJt9VwSJLh+VzLsB0mkhqh0P
 Y0MeJmyavHX8l5hQw6tsxgvsqxLX6uw1LAErZn+EJoemghNLTGsBWw1nIdDgdHF6Sfw7
 WMPw==
X-Gm-Message-State: AOAM533JxPVrQPrVfC6P9WF4ucg8sbPQadcbiYIdp+aRNF+rk/Z5aTtx
 0mW2uSsRS9H9yhuQWiQt+Q==
X-Google-Smtp-Source: ABdhPJwLqSG8lbLPF3Q8cD1qVvpSJfdIZ3H0Ieo412PtrmPAhtgR7yld5j3WPPSBlKW+o+jqull2Hg==
X-Received: by 2002:a63:4e26:: with SMTP id c38mr13812794pgb.81.1614604350374; 
 Mon, 01 Mar 2021 05:12:30 -0800 (PST)
Received: from mainframe ([139.193.28.239])
 by smtp.gmail.com with ESMTPSA id m6sm3823014pff.197.2021.03.01.05.12.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Mar 2021 05:12:29 -0800 (PST)
Date: Mon, 1 Mar 2021 20:12:22 +0700
From: Candy Febriyanto <cfebriyanto@gmail.com>
To: gregkh@linuxfoundation.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org
Subject: [PATCH 0/3] staging: rtl8723bs: Replace sprintf with scnprintf
Message-ID: <cover.1614603705.git.cfebriyanto@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset replaces most calls to sprintf with scnprintf, thereby
preventing potential buffer overflows. The rest I left alone because
they write to a buffer passed by a caller that doesn't pass its size
alongside it.

Candy Febriyanto (3):
  staging: rtl8723bs: core: Replace sprintf with scnprintf
  staging: rtl8723bs: hal: Replace sprintf with scnprintf
  staging: rtl8723bs: os_dep: Replace sprintf with scnprintf

 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  3 +-
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c  |  4 +-
 drivers/staging/rtl8723bs/hal/hal_com.c       | 45 ++++++++++---------
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 20 +++++----
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c |  6 +--
 5 files changed, 41 insertions(+), 37 deletions(-)

-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

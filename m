Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CD833A3AC
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 10:04:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEB9C6F48E;
	Sun, 14 Mar 2021 09:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BDK_wZNxwsNg; Sun, 14 Mar 2021 09:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 860CE605BE;
	Sun, 14 Mar 2021 09:04:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9FD951BF94D
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 09:03:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 808C9442AB
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 09:03:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y-_9cziB50JN for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 09:03:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com
 [IPv6:2a00:1450:4864:20::233])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6EBA845D94
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 09:03:41 +0000 (UTC)
Received: by mail-lj1-x233.google.com with SMTP id 15so12620390ljj.0
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 01:03:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X8n4cikQJdHTIiRxlL6pQYUz7x1I5c7q0U0cLWIHRy4=;
 b=KqWgI/G6Xa7DX7SPRHyjRYVfDTeqsVaVQPKSn777bpuBc33MXF7vbB0cADsrOhcfkz
 2WZLhI+nr6NxAH1cEnuQHz47oWYE6a2cJ7r+Rra8h4dt43kpggypxMjXavSEpzHQYXlU
 WBfgyuUVc9jXLVqVEKBxXnhtJmj5hf5DEzboNX1XpsgiwZnos26FcvJbZVpf5pQwO2jh
 hrfJQa2aBWZw05Nhs3y/SYQkwyOp6ncDwgVcZvGAM4PlrROfIfrfWljvnWra7+ZJryOW
 K1bp4ITWbm9Zi1Rzh50/2qLr2PJdrx8ueP1tdzpAv9ZH80kxLiEhymcrp03X3iFE/lCp
 Bc+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=X8n4cikQJdHTIiRxlL6pQYUz7x1I5c7q0U0cLWIHRy4=;
 b=h4gjX+yEdbBJ6v4ywC3W53D8pH5a3W8OMwMxrGMkPBKuUtuxscTgXhv069s3yGN3nW
 FZ1J0cPfGwfxpoDI4o4y++TE536pVwGmb8OE6l/eyLJAYovRcq0i51NBAr3nEpg+0L3k
 bX0xxznyKXRRT99/ctrk8Gvlp+hpoZhzjYhVeflvpygutKXEIm34CUTQ0Plj9bpIEMcm
 Pu5JIrEatck8BMEb7LMcdmBzrkZNMamQ+mOxR0CNDeIpny4/HnUvv1gfkfnBa4V6WE/o
 /sbckF8BMAt3GTzR9MW10NK81YpYUvf0FLUJlhwA4j/HM5Sbu87jFOVLVCoFUAZyAbAS
 EvJg==
X-Gm-Message-State: AOAM533+8xVwzkcu4UHby6ZanFpPRmt8oahui8VYpMLrjEf+/QJCFucC
 vFDxyU6bt9IgmPs1yiQ8R6A=
X-Google-Smtp-Source: ABdhPJwBLsagmfK7HJUQZkVc1/tNtDamblgfF9hZ8n8IiOYyJcLHPtAsde4BauAuhaNIpqkjOwOfiw==
X-Received: by 2002:a2e:88cc:: with SMTP id a12mr7258686ljk.402.1615712619300; 
 Sun, 14 Mar 2021 01:03:39 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id p5sm2541096ljj.26.2021.03.14.01.03.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 01:03:38 -0800 (PST)
Received: (nullmailer pid 21227 invoked by uid 1000);
 Sun, 14 Mar 2021 09:03:26 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 0/4] staging:r8188eu: remove unnecessary definitions from
 wifi.h
Date: Sun, 14 Mar 2021 12:02:43 +0300
Message-Id: <20210314090247.21181-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: Brooke Basile <brookebasile@gmail.com>, devel@driverdev.osuosl.org,
 Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Shreeya Patel <shreeya.patel23498@gmail.com>,
 Mrinal Pandey <mrinalmni@gmail.com>, Simon Fong <simon.fodin@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

wifi.h contains unnecessary definitions. Some of them are not used
at all, some can be replaced with native definitions.

Ivan Safonov (4):
  staging:r8188eu: replace get_(d|s)a with ieee80211_get_(D|S)A
  staging:r8188eu: remove unused definitions from wifi.h
  staging:r8188eu: replace cap_* definitions with native kernel
    WLAN_CAPABILITY_*
  staging:r8188eu: use ieee80211_is_ctl instead IsFrameTypeCtrl

 .../staging/rtl8188eu/core/rtw_ieee80211.c    |   6 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c |  12 +-
 drivers/staging/rtl8188eu/core/rtw_recv.c     |   4 +-
 .../staging/rtl8188eu/hal/rtl8188e_rxdesc.c   |   8 +-
 drivers/staging/rtl8188eu/include/wifi.h      | 156 ------------------
 5 files changed, 16 insertions(+), 170 deletions(-)

-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

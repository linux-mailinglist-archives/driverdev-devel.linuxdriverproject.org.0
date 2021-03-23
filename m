Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F8B345EB5
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 13:58:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C91040387;
	Tue, 23 Mar 2021 12:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q0H-D9f0cswD; Tue, 23 Mar 2021 12:58:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C8F7A402C3;
	Tue, 23 Mar 2021 12:58:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 511691BF371
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4045960833
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VVcT7pXvXfsx for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 12:58:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 835EE60831
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 12:58:14 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id b16so23348707eds.7
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 05:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hWRwPMPyX/TOjV6wMeQIWCYqUEDrv7MaokSiTNE+z1Q=;
 b=EJX4dEYfgttXfvSIYC3NixLUAiCTc92+Wfpj0ft0JiMAppD2byG9JeeSGM+DmCV6vf
 Pu0C+a6ExiF8+/z+dwGxAvvIFOlwW5unWlFgIMS6jf+UO+DZsa/lZMgJfBM0nVhNOmnm
 poiY7wotFZVup44kG21ZBD/IzztcIDusNimsb+4IYrUURH7Nz2EU01d/KkKBU664gd9I
 GG/Xp4reD9X8lGf2LOZkQiv+HoLqD1H8I73Fsc+L37+910t1dBA6eVVfGVtbOY9J5PSU
 x3/av06lPkGLjxW38/VyKjFRBTNAx4faJrNRz7Y9NPeK1HMdz7qdjhd2gILywUYiSwlt
 oYBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hWRwPMPyX/TOjV6wMeQIWCYqUEDrv7MaokSiTNE+z1Q=;
 b=XEIJOkeHqbu1Gkk8IszPDGbxErOvGph5EC8kt8ohwQDPHXZP+AKYKAVfvOZAViL1MR
 +fT5W6uUQb8O9SYvXr9IgnxjrHRThxux51X+AY5XAvIkX1pWe3bk5W3kiXWzZpQdtaji
 bJrtiZA3ABwL5NOn50PpVw/+YB3BiLOukf4AhJPMAVw6HXuYarZudjURtkH94xrbLXlI
 yvxr7iwAjbGKpZoaTsMz/xgSqDfu1Ie8Eic7MtE8pqPLedaIV3b3y7aK+4vYujUoOrQm
 /lzj0ZVEgn9FDcndBobSGaw8WrJffcfTSbth7zhLXoWkBJeOozCZiJy9QA5FeWvg3AMf
 dj0A==
X-Gm-Message-State: AOAM5323tYmFqmMfUmrcT8Qx/3aTM5K4Q8wSg/LBcoTrHN+lSxBx+urc
 QOCP+sO2ROoElj+oKI/MmSg=
X-Google-Smtp-Source: ABdhPJzlh9pl/Zz4UK/qFA8OMPYJ9G2G4rQRzaY5UlJCiSqDlwnk8XIKW8oH5f5cuppgrRpHjSQjTQ==
X-Received: by 2002:a05:6402:b70:: with SMTP id
 cb16mr4521183edb.11.1616504292747; 
 Tue, 23 Mar 2021 05:58:12 -0700 (PDT)
Received: from agape ([151.57.211.10])
 by smtp.gmail.com with ESMTPSA id q26sm11184723eja.45.2021.03.23.05.58.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 05:58:12 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 0/9] fix extern declarations checkpatch issues
Date: Tue, 23 Mar 2021 13:56:27 +0100
Message-Id: <cover.1616503354.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <YFjBHNkQFlFzZKpV@kroah.com>
References: <YFjBHNkQFlFzZKpV@kroah.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix extern declaration issues warned by checkpatch.

Changes in v2:
	- removal of prototypes when function can be static
	- move of static function defs inside file to let the code compile
	- split last patch in two patches (one patch for blank line removal)

Fabio Aiuto (9):
  staging: rtl8723bs: removed function prototypes in core/rtw_efuse.c
  staging: rtl8723bs: moved function prototype out of
    core/rtw_ioctl_set.c and core/rtw_mlme.c
  staging: rtl8723bs: removed function prototypes and made statics in
    core/rtw_recv.c
  staging: rtl8723bs: delete extern declarations in core/rtw_wlan_util.c
  staging: rtl8723bs: remove function prototypes in hal/odm.c
  staging: rtl8723bs: move function prototypes out of os_dep/int_fs.c
  staging: rtl8723bs: remove undefined function prototype in of
    os_dep/sdio_intf.c
  staging: rtl8723bs: remove unnecessary extern in os_dep/sdio_intf.c
  staging: rtl8723bs: remove blank line os_dep/os_intfs.c

 drivers/staging/rtl8723bs/core/rtw_efuse.c    |   14 +-
 .../staging/rtl8723bs/core/rtw_ioctl_set.c    |    1 -
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |    2 -
 drivers/staging/rtl8723bs/core/rtw_recv.c     |  441 ++---
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |    3 -
 drivers/staging/rtl8723bs/hal/odm.c           | 1717 ++++++++---------
 .../staging/rtl8723bs/include/osdep_intf.h    |    2 +
 .../staging/rtl8723bs/include/rtw_ioctl_set.h |    2 +
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |    2 -
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |    5 +-
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c  |    3 -
 11 files changed, 1038 insertions(+), 1154 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

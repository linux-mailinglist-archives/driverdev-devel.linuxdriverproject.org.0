Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C604F67D
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2019 17:23:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2DDF085DE1;
	Sat, 22 Jun 2019 15:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B0sBFV57SbTn; Sat, 22 Jun 2019 15:23:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8CF8D85DDC;
	Sat, 22 Jun 2019 15:23:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA3231BF301
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 15:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9EA1D85DDC
 for <devel@linuxdriverproject.org>; Sat, 22 Jun 2019 15:23:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kKcOs9RqfhJm for <devel@linuxdriverproject.org>;
 Sat, 22 Jun 2019 15:23:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 870CE85DCF
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 15:23:42 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 19so5083241pfa.4
 for <devel@driverdev.osuosl.org>; Sat, 22 Jun 2019 08:23:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=64rfDwm6z7J4Eoudftbx7Yfz/GS48slNahoFEbbSYSE=;
 b=Z/D+kKMAPiM4pEcdUvCNl5F7O3CiZW2+XmJ2as8DlefeTMFa0yFNJhqUTQn/PtIevr
 2ZZ7i7nZIc9OIdLxISeALY4bNAiRDPxlVusMksKmeIZGaomsmGDBurrc0x6gpktsiOQD
 O8GBmFIZXbtpABoX0q0gpe5bQ8rcJz5oUlcHijBKF8Hd1gcSXizUQbTIOz/2J/EuP2yi
 tQ1FtX4sDXevE8ByGVS5grPjTmEZ+R15l4XmoHe81bXSiOu0/PqqU4H5/uFo+P9oh8t7
 e82YskjeLArnAAc9Iu+Lwek2fyCh4BJKtTiZAKaEDao6JwyDoPu907wLn+r7vu06FYs+
 kHZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=64rfDwm6z7J4Eoudftbx7Yfz/GS48slNahoFEbbSYSE=;
 b=gopSS6igu9muosJHH/teG5ZY3jvIQQP7c73qt7KGc7nn9Xz5R2yv3s63YAgZf7JMDx
 vn1Jf0ldHqVH9dPGqG6eyaXbOYp9DF15NqZQLZKIdaTQy7kdueGrLCbmyoAgH0VO8jLC
 ZStoGQvjrsbU5Bhjd69Nd2jrUjohVBpxux5hHW8BEedPv82aodXycyeCiKwE/F3NvOT+
 wCBCeT9bzouQycT5yz20Z1/Uxq2QPxyO89UcR7bq5VJgv7mtDDwicl0kH2WA1FLr1wD0
 OAeD+tHTmTReTirA1QJ+VllwyHbUC9rZaHu+V3xgZPKcJLfLXvp6JIgh3LZ0/5sT0qme
 KPyw==
X-Gm-Message-State: APjAAAUTWAO0IBZkpXmjmg02eLvnBVtTLMFlIJoi15EuV1g+675168Vc
 jgWLvpPQKp4c6Q8M4byIpV4=
X-Google-Smtp-Source: APXvYqytvQnckoLSzsyVUDjnEMPO07TkPNcRcqkfFHTQs/ML7iouJlHa6Nwq3nmlLLp9664WpvLU4A==
X-Received: by 2002:a63:63c1:: with SMTP id
 x184mr17894625pgb.213.1561217021616; 
 Sat, 22 Jun 2019 08:23:41 -0700 (PDT)
Received: from localhost.localdomain (c-98-210-58-162.hsd1.ca.comcast.net.
 [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id l44sm12496777pje.29.2019.06.22.08.23.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 22 Jun 2019 08:23:40 -0700 (PDT)
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bastien Nocera <hadess@hadess.net>, Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 0/2] Modify functions return type to void
Date: Sat, 22 Jun 2019 08:23:06 -0700
Message-Id: <cover.1561215416.git.shobhitkukreti@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, Shobhit Kukreti <shobhitkukreti@gmail.com>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patchset modifies two function return types to void.
The return values of the function are never checked and they always return success.
This resolves coccicheck Unneeded variable warnings

PATCH[1/2] : This patch modifies return type of function loadparam() to void. 

PATCH[2/2] : This patch modifies return type of rtw_reset_drv_sw() to void.

Shobhit Kukreti (2):
  staging: rtl8723bs: os_dep: Modify return type of function
    loadparam(..)     to void
  staging: rtl8723bs: os_dep: Modify return type of function    
    rtw_reset_drv_sw() to void.

 drivers/staging/rtl8723bs/include/osdep_intf.h | 2 +-
 drivers/staging/rtl8723bs/os_dep/os_intfs.c    | 8 ++------
 2 files changed, 3 insertions(+), 7 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

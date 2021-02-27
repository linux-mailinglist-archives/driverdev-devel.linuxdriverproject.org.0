Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B63D4326F1E
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Feb 2021 23:23:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 423996F487;
	Sat, 27 Feb 2021 22:23:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7zSKTmBuqaJR; Sat, 27 Feb 2021 22:23:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8403D6F482;
	Sat, 27 Feb 2021 22:23:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AEAA21BF41C
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 22:23:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9E1EA4315B
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 22:23:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ELqepp-LbwJs for <devel@linuxdriverproject.org>;
 Sat, 27 Feb 2021 22:23:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E963D43094
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 22:23:09 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id u4so19449974lfs.0
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 14:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mksrx6ET/Hi3zXR5ldh0btRvfU1cL3yeWq6vtOUAmxQ=;
 b=R+p9IfoeRbrkWOMrjUbmqPZI2Gks/lZnqT3xU5U/JOiUgMbBpj3P5DA/p1TYEmIs9Z
 G8hT78Oj9nzgSG68YfnOjVRqs0AFo0xL30oVaQQVM7F3+TMvApD1Rhaybz2bcfkOfjnT
 oXpBb4fsxB5rUnxBPKf57QuHFS48k1E6dHhhNEjuJTjnAc59MU/Zlbzdd0KetAirSbpl
 XePT5V5jQgi8b/0n41hXwWNwzIi2fLjyEJPbz2WOM/EO3rEJHH3vOHqsGyqJRcRUdF2Z
 RoHasZSU6CLilx/cO217rLMY8FjoiwQhRReKrIIPsgLSy0BZKqo8wDqGhO89umUPQ71L
 CDVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mksrx6ET/Hi3zXR5ldh0btRvfU1cL3yeWq6vtOUAmxQ=;
 b=gJkBcoQjZtIhkvi7pESBuykabPsKtW7HW7k+z4ab0Rss9qod9DWwYxDn+vgiDysdQb
 pbSul5H6BkRby+gemzi0hDwNC//5bI1e7PHS7lhukfh9ycZB4Rkz8J0ulKUzZVWdFdFg
 UzHZg2djP2tZs41r7Vw0wVutYWWpVUvHoJ92CVR5ArhRFEZ2GrfM+Z0rRoxQkP0xrsWn
 MGLy4tPv2TyQL0wgFjO/xi1902jAsumMDPhjp75DCrrScrp6AU9d0axs7B5YrasEh25o
 d71/WihL2dRJXzz/lpMxVWuZfaSWA9qssorm8cyP6FOTbF9KQi2mjEvdCToyGFGwNdHP
 v0eQ==
X-Gm-Message-State: AOAM532zWYIIpz5aHXgjVh0qj3AvcOUUxDDnS1UvPKPLoih78mRuTDPd
 J0R0h5La+97hMcxBbXuNaFQ=
X-Google-Smtp-Source: ABdhPJwocTf3bMMm/ErWN5uaeWhJ9aOlcfwhnkZL/WKpZo9hZIsoaD+BKCZ0jP0QdTgGwRZ0a6FfVw==
X-Received: by 2002:a19:c74d:: with SMTP id x74mr4805280lff.223.1614464587761; 
 Sat, 27 Feb 2021 14:23:07 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id 194sm765210lfd.116.2021.02.27.14.23.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Feb 2021 14:23:07 -0800 (PST)
Received: (nullmailer pid 581541 invoked by uid 1000);
 Sat, 27 Feb 2021 22:23:06 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/4] staging:rtl8712: avoid unnecessary definitions in wifi.h
Date: Sun, 28 Feb 2021 01:22:33 +0300
Message-Id: <20210227222236.581490-1-insafonov@gmail.com>
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 linux-kernel@vger.kernel.org, Pascal Terjan <pterjan@google.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

wifi.h contains unnecessary definitions. Some of them are not used
at all, some can be replaced with native definitions. 

Ivan Safonov (4):
  staging:rtl8712: replace get_(d|s)a with ieee80211_get_(D|S)A
  staging:rtl8712: remove unused definitions from wifi.h
  staging:rtl8712: use IEEE80211_FCTL_* kernel definitions
  staging:rtl8712: replace cap_* definitions with native kernel
    WLAN_CAPABILITY_*

 drivers/staging/rtl8712/ieee80211.c    |   6 +-
 drivers/staging/rtl8712/rtl871x_recv.c |   4 +-
 drivers/staging/rtl8712/wifi.h         | 178 +++----------------------
 3 files changed, 27 insertions(+), 161 deletions(-)

-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

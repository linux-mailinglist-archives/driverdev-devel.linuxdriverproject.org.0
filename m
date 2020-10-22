Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE5A295E8F
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 14:38:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A80186BC2;
	Thu, 22 Oct 2020 12:38:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kOClh-LU63jC; Thu, 22 Oct 2020 12:38:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D0EE86943;
	Thu, 22 Oct 2020 12:38:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3C2AC1BF479
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 12:38:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2EFE2871B8
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 12:38:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cUjTbtqevEqK for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 12:38:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3FF3A86864
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 12:38:51 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id d24so1736743ljg.10
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 05:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oiRF2TVvC2JKxZjhWhHlnAiwNuh4ArQq7xIf42QtBeY=;
 b=oeKXu2zWy4qLY/qcxmuPbxmk5RVDc95obP9hCD4UsUjpjM3NEg7y03p3nagoNOPC5y
 dm8sYIQEMaETxUJUCsKxpgmgFcVVAxmy3Wv9DzHAZpQj8ljaf1fY1//ZMn4GkV7hMKWr
 7R/xgpcyNChO5OE/BvDD8+KBGROtmK9d0yfg5gB6T8e2Wyqj8xmmrVFWLqrjcklvRoQm
 FzWAgNPfUJjJw5AdbMRWE0b20sKD+vGS9b9ELNB7JKX/Hdeu1BJR76UokXN5pnTaZkeh
 58jXMt3nLGtwf/DT+eXwL9DdElejtrrNt1oejo8M10B4XVUVdoSh5uO+S8NpjVNXnegP
 MWdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oiRF2TVvC2JKxZjhWhHlnAiwNuh4ArQq7xIf42QtBeY=;
 b=Idq707AeRUEKJdV58exLW4eckWoLnw7VN3fjj0ghKi6woPYsUU5pDvsMp4vITUlb3e
 YwkTTCl7jCnfI+yi51Hv7DBxrE1KH7373crL9pHvJPppc5BLC5m3YhWpU4aa7JWN79Ku
 vZTnM6UZ80KINPTEsU7GjrZNwdtJkS+5oHV0nBiX/cDRvL7z51A8jBk0mnoKZQ1RLoPI
 mmSAwrY1xfUt7ghnCRzd5C4De++ryCQ04ul7EZGP5D0EBy1nQnOjcQ4eOMn9L+KyFH0z
 MboZiuUvNaL8hXvUF8a+DvjP4mxcPfD0z3aDe3aH9w4KBznvVL+p6J2XIdil0XHvvWw9
 X/Wg==
X-Gm-Message-State: AOAM531hRPVLyR5ES+34znMdtp4AvaxjkDrYTU27kim6EM6NPMS4ymVn
 CNM0qqm2+Ylwtv0PuID0SpQ=
X-Google-Smtp-Source: ABdhPJzuQP4FfEKfQoW+vFT0rJDVx1r2KahTpK/DhL8IX81DwJs8y/fVdgZBJn5wWuhQf4woxHsyLg==
X-Received: by 2002:a2e:b890:: with SMTP id r16mr859706ljp.7.1603370329378;
 Thu, 22 Oct 2020 05:38:49 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id u26sm261631lfu.13.2020.10.22.05.38.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Oct 2020 05:38:48 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging/rtl8192u/ieee80211: remove debugging line
Date: Thu, 22 Oct 2020 05:35:45 -0700
Message-Id: <20201022123545.4530-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Elena Afanasova <eafanasova@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary debug line from rtl8192u_dot11d_init().

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/dot11d.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/dot11d.c b/drivers/staging/rtl8192u/ieee80211/dot11d.c
index f972edcde8a0..ddaf66fa0f93 100644
--- a/drivers/staging/rtl8192u/ieee80211/dot11d.c
+++ b/drivers/staging/rtl8192u/ieee80211/dot11d.c
@@ -14,8 +14,6 @@ void rtl8192u_dot11d_init(struct ieee80211_device *ieee)
 	memset(dot11d_info->channel_map, 0, MAX_CHANNEL_NUMBER + 1);
 	memset(dot11d_info->max_tx_pwr_dbm_list, 0xFF, MAX_CHANNEL_NUMBER + 1);
 	RESET_CIE_WATCHDOG(ieee);
-
-	netdev_info(ieee->dev, "%s\n", __func__);
 }
 EXPORT_SYMBOL(rtl8192u_dot11d_init);
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

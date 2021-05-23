Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CD338D816
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 May 2021 03:22:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF0FA402B2;
	Sun, 23 May 2021 01:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SA1nri8USXHC; Sun, 23 May 2021 01:22:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 511E840112;
	Sun, 23 May 2021 01:22:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C99241BF34F
 for <devel@linuxdriverproject.org>; Sun, 23 May 2021 01:21:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C5CCA40112
 for <devel@linuxdriverproject.org>; Sun, 23 May 2021 01:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HGFs9p584Fqa for <devel@linuxdriverproject.org>;
 Sun, 23 May 2021 01:21:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 434F7400AC
 for <devel@driverdev.osuosl.org>; Sun, 23 May 2021 01:21:59 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id s4so11296820plg.12
 for <devel@driverdev.osuosl.org>; Sat, 22 May 2021 18:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rZLMwrwoWbCg/v+lj66B9bF4EwQ+53RhCXa2pttSH+U=;
 b=eeTsfBvwR54RLh4sTqitl96CNbW4TOPaI9jD3PEjeN0QZSkQN79cGZPkjnglLpbmkD
 6AKO7VDYpMdRhpy3wfbIK1DvcHK0doPEl7TInTIk/XKkF5U/YTjtL8I2pND4BNvfmzq0
 /EE+iQaymTDmc5Xcjka7p8cMMpPrMaxKqf7dfeT+Z97W5CWia1q2NsnnmuvuxvLzJKhd
 dhntJdv7dC1/cf/bxzJEaLFDPpmnhYAdONgKcDeS0n3NOw6jOzRsQmraToGKS15biPLI
 oAa+9V3r/KMq2tiVhcPTouzCZpYwJt5YnG1DlOCdnNAZ1e1BWFc2BJdmWvKmOJTdevLd
 Vudg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rZLMwrwoWbCg/v+lj66B9bF4EwQ+53RhCXa2pttSH+U=;
 b=lbBM3pjSwTRdYRlfRDVOoIKabaYeagP/wxpuX8FA8ugViTgdtorqSmjmMp4cWlljLz
 zE0UyZsuSHAvflS9DM9iN/DOPWKFRQofVr7QkWfFj658z3w97TGdvqYuVgfoXkiUVY4n
 iJE93GeexMx36rJgBqNHHv+5m9QBz/FEQBZP4mhcuQF7IHL1jcPjwLH6fksRu7sTvqO3
 dZOymyIVhshEu0N9j9tc/7HPlcax6NSnBjPz0hV9oNpNAOc4/QGEjwTLCK7exmW3RY5/
 xoaYE9tW5tSMaYFzGJIYfhEQgnNfyNvJVG5L9yGfZUAWA2Q+LXUitZ5RCIgTaPYHyHmf
 m3cQ==
X-Gm-Message-State: AOAM533Au46/z5rr1P44aJZGMTKCabVZy/22weTnMVR2UoKcaMzynu3Z
 q9qoNa4Tv5bU0SvpRfTrXZQ=
X-Google-Smtp-Source: ABdhPJyKBePgJnhHbP3VFEGgLgb+hp1uRd0xW7MDn9suVRcDFBJFh+PTqpnUKkjGhQ6WRHwcs0m+3g==
X-Received: by 2002:a17:90b:100f:: with SMTP id
 gm15mr17930445pjb.197.1621732918708; 
 Sat, 22 May 2021 18:21:58 -0700 (PDT)
Received: from localhost.localdomain ([2001:2d8:e530:8db9:b405:6cb7:e0c:6068])
 by smtp.gmail.com with ESMTPSA id
 v18sm7842415pff.90.2021.05.22.18.21.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 22 May 2021 18:21:58 -0700 (PDT)
From: Donggyu Kim <a29661498@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Fixed a coding style issue - missing a blank line after
 declarations
Date: Sun, 23 May 2021 10:21:51 +0900
Message-Id: <20210523012151.3873-1-a29661498@gmail.com>
X-Mailer: git-send-email 2.30.1 (Apple Git-130)
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
Cc: devel@driverdev.osuosl.org, Donggyu Kim <a29661498@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Signed-off-by:Donggyu Kim <a29661498@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index e1a8f8b47edd..40d99644ddc7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1337,6 +1337,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 static void dynamic_chk_wk_hdl(struct adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv;
+    
 	pmlmepriv = &(padapter->mlmepriv);
 
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
-- 
2.30.1 (Apple Git-130)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

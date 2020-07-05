Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC00214948
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 02:22:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EC7FC86C34;
	Sun,  5 Jul 2020 00:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YsrILbLpqfKh; Sun,  5 Jul 2020 00:22:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 446B886CE4;
	Sun,  5 Jul 2020 00:22:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 03E1C1BF8C7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE25B20401
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rn5Biy8SBpxP
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by silver.osuosl.org (Postfix) with ESMTPS id F3570203FF
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 00:22:37 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id q198so31897755qka.2
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 04 Jul 2020 17:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KlydMnz4HoWmqFqALWcB92BjpmX+bYwyrUXSmDzYt6A=;
 b=L/9tx8h1sYP2EKEVJiMXN33RSsLozkEi+wCIGcE3JIJNYE7z2+/VNFwEb+VbFUb/8R
 IJB5aawlMmIag0ycuILr+2V1ED/QhG8DK/Rbp/tUagHATxR4GskFWVum3un4uHrFv66t
 2WX4R79iilHp9DonOHKD9g6bd3ZGYB4zohjzDDuHzJPnQXTW21fRZfhgi0bVRYEHwqJY
 +07f8pEsEFMoBRvitJwEFIyDiMtY8hn6++5D+NwFl1nAaj3pMSlmQC2tdFWA44EkD+Qm
 BAGqP07PxYN7d4NFR/3Q3JiElD8m6/EWVywHKnVpKzSJ0z/ZLL79TRPd3u+ciG9UVxOw
 Mh/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KlydMnz4HoWmqFqALWcB92BjpmX+bYwyrUXSmDzYt6A=;
 b=OcrNpUb3DZR3Nows4W7YzTGppo7Cq8kBxPRimFNv7j+98n4og6wCeBlod17dpNj63S
 QE9NpwDR+V2R1pcI29WmLlWN18pYtTF4ek14TtP6YFbwZp2RwrLgYA8TkUaxeQmpbO8B
 pzX23/cEldIH44/Enx/ZRE6d1EI9KNdL4JhKHEQAnd7W7l1C7CQC2CDiZzJAnA7mJZ47
 7pCLfG0GxiRtOYsTSjQHotg3JYT2ncAA/+VWMUncNxVnYrYoG0FVXfBk1CHXMeUvD7dY
 2PpD47VEWee0c8zIlJsu6lQ7Vuox6vpMgLD8gAOMKgLociXtj/Ained7hRBq8EwCZIMc
 tO3g==
X-Gm-Message-State: AOAM531yJYKd7ad6o7BbvgneEVVLExMFKLueoeU0Cth9TcITjFq2kSp3
 0Wbhtskg3kgbW+I+eTSTwYWvxKFLYsapTg==
X-Google-Smtp-Source: ABdhPJwK5CmHcimtuoeKdrSp9XzpAjsKw3d8TG0qbWyDQDC4NFQYvSXRXjUI4NmRAXv8nYrVszWYlg==
X-Received: by 2002:a37:b987:: with SMTP id
 j129mr39528551qkf.120.1593908557082; 
 Sat, 04 Jul 2020 17:22:37 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:1a4c:230b:91f2:972d])
 by smtp.gmail.com with ESMTPSA id v62sm10254072qkb.81.2020.07.04.17.22.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jul 2020 17:22:36 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH 3/5] staging: rtl8712: Use ETH_ALEN instead of hardcoded value
Date: Sat,  4 Jul 2020 21:22:13 -0300
Message-Id: <20200705002215.17968-4-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200705002215.17968-1-mukadr@gmail.com>
References: <20200705002215.17968-1-mukadr@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use macro ETH_ALEN which defines the number of octets in
an ethernet address.

Signed-off-by: Mauro Dreissig <mukadr@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index d3fc6fa9a715..d53efdfc9bf0 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -343,7 +343,7 @@ uint rtl8712_hal_init(struct _adapter *padapter)
 	/* Fix the RX FIFO issue(USB error) */
 	r8712_write8(padapter, 0x1025fe5C, r8712_read8(padapter, 0x1025fe5C)
 		     | BIT(7));
-	for (i = 0; i < 6; i++)
+	for (i = 0; i < ETH_ALEN; i++)
 		padapter->eeprompriv.mac_addr[i] = r8712_read8(padapter,
 							       MACID + i);
 	return _SUCCESS;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

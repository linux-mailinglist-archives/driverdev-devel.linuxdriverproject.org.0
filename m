Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F403D1E76
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Jul 2021 08:46:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C8D4A60AD1;
	Thu, 22 Jul 2021 06:46:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HbCD_89SEL7o; Thu, 22 Jul 2021 06:46:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2C959607D1;
	Thu, 22 Jul 2021 06:46:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FCFC1BF853
 for <devel@linuxdriverproject.org>; Thu, 22 Jul 2021 06:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4B6D4607D1
 for <devel@linuxdriverproject.org>; Thu, 22 Jul 2021 06:45:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s1b46YMC8XJW for <devel@linuxdriverproject.org>;
 Thu, 22 Jul 2021 06:45:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0AB80607A7
 for <devel@linuxdriverproject.org>; Thu, 22 Jul 2021 06:45:57 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id b12so3350152plh.10
 for <devel@linuxdriverproject.org>; Wed, 21 Jul 2021 23:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fw3QO0Ew1JZY9jnJW7me+DwKMzS227iyDtJpX04hNio=;
 b=GggpUqKC4Sw2Ojb8zCBwz+j86/6MTuQg6FtyKIxj8MqZqj38K0CS3jgQzzlqM9EMhr
 2lBKXQpCJ07xU+N8evg9ox01V/L8l3EQQL8eTxwLxw/CaW9HqmJLgZTE+GmJPaYQUhPG
 XVI9OlbDPF6Or4g1Ffkf9n+TnahSfTu48+XsJ6Rk/0L5JwwN5wzF++cH09EFg3Y8DyQa
 tUp24zBfoaWxuif0uevvdzCzBBQ+gmQNLxJ20BnTVv0bRW2FOvSani/oGxA/xakLwgV2
 W7QDnPmor1qItOV0gUExVWbNtH9H+V3Ykgg+tjM7RqhFd62eooIbVREl3Oy2CjnRDs82
 P8xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fw3QO0Ew1JZY9jnJW7me+DwKMzS227iyDtJpX04hNio=;
 b=WUDjmpa0P5bZpxHvm1yuQi0evH4QyEFzlv9Uo1FNrgBBbJ0hh6lVB1IvseWYLw9QQv
 8tzO9ypmuHwFJD5SepQdG4dsUFNMhliN1IKIbv1bAP9fQDA4MCdGmStyihgToaQuxASn
 rrTdalEV6/aSdXSPdAtKDoiFQYdQ/f8TKeJ+5FSBNQlLLFP37zdrZokfKmcPplVhCIuy
 ubQ3SlJIcYRJjIplYJJjAV7VGV202abvjQaDdW+x3uL50w4kn02gY+sWmJdYNw9nfZ79
 ChAo+/aovHK3CRgojJHFcXTFyplqhynZeRkka8ZxfVEcwpmSfgE3QKlCiU/+PHNqYDcv
 DxQw==
X-Gm-Message-State: AOAM531SUM+Yr7qdd2yx0Q3gp/3KhfKvcocAIjV3gVuzlMMBFFvxkGuj
 cr7KxzsCbqWLDCNZsH6klr8=
X-Google-Smtp-Source: ABdhPJz6jj2dk3kdEDEqnPpzBRT9KXR7wQc33gzWSnhSDJbmSnzibeMN/IKcy/Gp0OsOtrHARGyKhA==
X-Received: by 2002:a63:358:: with SMTP id 85mr3258325pgd.258.1626936357431;
 Wed, 21 Jul 2021 23:45:57 -0700 (PDT)
Received: from localhost.localdomain ([2402:e280:2130:198:9b25:1cfb:9ff3:2a8f])
 by smtp.gmail.com with ESMTPSA id 2sm33733194pgz.26.2021.07.21.23.45.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 23:45:56 -0700 (PDT)
From: Benjamin Philip <benjamin.philip495@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH v2] staging: rtl8188eu: remove unnecessary blank lines in
 core/rtw_ap.c
Date: Thu, 22 Jul 2021 12:14:51 +0530
Message-Id: <20210722064451.10331-1-benjamin.philip495@gmail.com>
X-Mailer: git-send-email 2.31.1
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
Cc: devel mailing list <devel@linuxdriverproject.org>,
 Benjamin Philip <benjamin.philip495@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes some checkpatch checks for blank lines before
and after braces in drivers/staging/rtl8188eu/core/rtw_ap.c

Signed-off-by: Benjamin Philip <benjamin.philip495@gmail.com>
---

This patch fixes some checkpatch.pl CHECKs for blank lines.

I have tested my changes by compiling them. I also used
checkpatch.pl, which did not issue any checks, warnings or
errors for my patch.

This is my first patch to the kernel. If I have erred in the patch sending
workflow in any way, I will be glad to resend it in the correct manner.

I also apologize for not build-testing my patch before submiting v1 of
the patch and for wasting your time by doing so.

 drivers/staging/rtl8188eu/core/rtw_ap.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index b817aa8b9de4..a2aeb78733d5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -381,7 +381,6 @@ void add_RATid(struct adapter *padapter, struct sta_info *psta, u8 rssi_level)
 		/* set ra_id, init_rate */
 		psta->raid = raid;
 		psta->init_rate = init_rate;
-
 	}
 }
 
@@ -453,7 +452,6 @@ static void update_bmc_sta(struct adapter *padapter)
 		spin_lock_bh(&psta->lock);
 		psta->state = _FW_LINKED;
 		spin_unlock_bh(&psta->lock);
-
 	}
 }
 
@@ -1140,7 +1138,6 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 
 static void update_bcn_vendor_spec_ie(struct adapter *padapter, u8 *oui)
 {
-
 	if (!memcmp(WPS_OUI, oui, 4))
 		update_bcn_wps_ie(padapter);
 }
-- 
2.31.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

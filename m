Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4555345AB3
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 10:23:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A950A6081A;
	Tue, 23 Mar 2021 09:23:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ve7-jSoF1klb; Tue, 23 Mar 2021 09:23:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA2BF60807;
	Tue, 23 Mar 2021 09:23:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F01A1BF2AE
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 09:23:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E09540371
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 09:23:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TDJReVGkWmFi for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 09:23:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com
 [IPv6:2607:f8b0:4864:20::f2a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C0584036F
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 09:23:30 +0000 (UTC)
Received: by mail-qv1-xf2a.google.com with SMTP id x16so10099665qvk.3
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 02:23:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DIUTi3R3RnB8XZ8jIbE4k6ovrlYAEKEjVvCfRHAa3YY=;
 b=Qyhflb+Jy0x/CtJUmFkcfrx5cigGsMFv/x9a1d297V2amuvC2Z27kO9LxUAwAvud6U
 T+pP5jcozfXcai8/QfsUGkHIo2ytvLUbXlopRKGRgCDfUj044RkX7wlnPNRq8RvXRQ85
 t5TEN0btcsIE6r68x70rqJ7Ho2mMvIvUORpe3fVcgV9ZS3QGSRLA/tXu4/qM4/CISATA
 K3OEtamYzc5lB9qUsmFJxK+xennbJt4Wa7v9tSKnmTkb5sSIFJ0mUxiM27RLocTbRI5u
 3ZHicfdpTpLCjHlXddfLmArIpPXWrr3+lKdYvua3jvYr7Jgd/ywxpKwV5SZ1dP0Pp8Ml
 aYxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DIUTi3R3RnB8XZ8jIbE4k6ovrlYAEKEjVvCfRHAa3YY=;
 b=soYSOek280NVAydZIWHZbYBb7zHxhYBhaDuzLFTtpACeEnQ4O6VkZeUodipxPz4/zR
 IgSnhSw66faoBVs4Tb/VAy1hOwi6AteVBXhCTkc0H+gd2ArPx8SMkCbEWtlLLw5DJwky
 9CeZspG8aIX2+xwPtaHWAO6YPFYKuPab0VJIfxa+C2Opm4cjrMX7OvYlq7vU3v1xz/fI
 xMkJ+5/A8+iFEGi0yi9VQxSMpM3Lx26IplDlkNXoNYofwCMJ49evnfwfpHecILwzwbtJ
 LWB3l5Idttrj7t9xFjMUHvO3XSdbe8HpHBwg6ACxwwmoxx0FhfeJI3Z8z5k0XLdpqZal
 Gp7A==
X-Gm-Message-State: AOAM532VQla7gLPrjhNWb7Wp3f/ypsRjBEQ3i3fZ72bUzISMIQL6bn6l
 CO+bLQEfwFcB2FisT3fdN+0=
X-Google-Smtp-Source: ABdhPJyY2Q706FR1fjy1C40dVBmor49bh/PRsL4RequqwGGgmHpwUfW0UVy8yoYHEz75RyKfWzMJ2w==
X-Received: by 2002:a0c:f6cf:: with SMTP id d15mr3847201qvo.62.1616491409335; 
 Tue, 23 Mar 2021 02:23:29 -0700 (PDT)
Received: from localhost.localdomain ([143.244.44.229])
 by smtp.gmail.com with ESMTPSA id j26sm10597974qtp.30.2021.03.23.02.23.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 02:23:28 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com, unixbhaskar@gmail.com,
 yanaijie@huawei.com, amarjargal16@gmail.com, matthew.v.deangelis@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2]staging: rtl8723bs: Trivial typo fix
Date: Tue, 23 Mar 2021 14:53:00 +0530
Message-Id: <20210323092300.1740913-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.31.0
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

s/netowrk/network/

..and an extra space has removed from the sentence.

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
  Changes from V1:
  I have missed to remove an extra space in the sentence,
  corrected,Greg pointed out,thanks.

 drivers/staging/rtl8723bs/core/rtw_mlme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 2c9425e2a1e9..562bc929be4c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -599,7 +599,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 		}

 		if (rtw_roam_flags(adapter)) {
-			/* TODO: don't  select netowrk in the same ess as oldest if it's new enough*/
+			/* TODO: don't select network in the same ess as oldest if it's new enough*/
 		}

 		if (oldest == NULL || time_after(oldest->last_scanned, pnetwork->last_scanned))
--
2.31.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

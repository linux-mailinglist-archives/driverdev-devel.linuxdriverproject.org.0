Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D3F20D059
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 19:16:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70D1387400;
	Mon, 29 Jun 2020 17:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fEjy2Nsn57Q; Mon, 29 Jun 2020 17:16:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67A2F8730F;
	Mon, 29 Jun 2020 17:16:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E6321BF34C
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:16:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 973F88730F
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 17:16:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Is_zaP-I7kfZ for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 17:16:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BEDE586F27
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 17:16:49 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id s10so17272011wrw.12
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 10:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/AxbpdcHiw/57CHMJ7xpxqgYfQdZczHJYp1MAsDX43Y=;
 b=rpmNg9w/3E0zMNlLG1raYG1/UxOIIlTW68NocFRo+88EeK3tMtRAcrzCYHZKctzMqb
 W540F3Vg47a/dBMpHJQ/o3sqh/M+jK5egjQXfs93zthRONVC10H7Vx5V3pH66eKyePDF
 drmkLMRW6Iv17UAV/GPUiR/BlfHIwAEYbwDdqfkwytbwXqKKWBbFRjdxcy/Vw+XJuzkK
 ABBN9fF/THs0twqcw7trLlD99xkrHiULIh9OX8DSKkr7EnR1U1l6VOakg2dEqtaKaueo
 MXAUWVg2Ib9j6/2On6MEXNBN1Cyb96pWxsIadQ+TpVZbEyE2jSdF6kLCgEVpNYw6B+LI
 LwdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/AxbpdcHiw/57CHMJ7xpxqgYfQdZczHJYp1MAsDX43Y=;
 b=AuGdMtU3npDk9GBAKNAxmNMsDoO03VjSAjgWjU69/sBqWuRy7OJpZSTIqsa1zbkCcQ
 nlHb+NERLs12AOmsB+uC4cZ2gzb6fVzEH9YZ+lDTbGj2SmYBhPCiZ47JxxeAkm1tPE62
 pP3ywGnJgaURFraM3JQL0+BtPPS+JFh7x1bYXqu3uDJhd6unuq3ZyOlAymOTjgqwinhH
 l/3EGJKd6blxTQkhoUZpnhPpD8TZ3qYlshB3YUrcv6UvHY4KJxUsXcfhkwaeDJScqruC
 jG19coWZOlY2qSENGnnjYqpRHGtXUt/zM8lbJrnh8iAnxk3FsUcFtEIRtSVXg+sO84lS
 UrOQ==
X-Gm-Message-State: AOAM532qjh2FdkLugq8zpCfWwpLbEQ8v4M3Kvp7QIX+31vY5nnyUxq/A
 CfrVRqflmfZs3Xu85j+UBdE=
X-Google-Smtp-Source: ABdhPJxWgsvGcIlPWyFh+Qe6tqa2H1kaQYicf6+/H2QtbvZIyg8lEgBQA2xo3nZciQA2TuCnosuo+Q==
X-Received: by 2002:a5d:5084:: with SMTP id a4mr18528004wrt.191.1593451008291; 
 Mon, 29 Jun 2020 10:16:48 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-011-230-176.178.011.pools.vodafone-ip.de. [178.11.230.176])
 by smtp.gmail.com with ESMTPSA id n14sm432728wro.81.2020.06.29.10.16.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 10:16:47 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/3] staging: rtl8188eu: remove some ieee80211 constants from
 wifi.h
Date: Mon, 29 Jun 2020 19:14:03 +0200
Message-Id: <20200629171405.7711-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, hdegoede@redhat.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The constants IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL and
IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA are not used in the driver
code and, if ever needed, available from 'include/linux/ieee80211.h'.
Remove them from wifi.h.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/include/wifi.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index 667055796b66..e12e3d0a45e0 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -453,10 +453,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 				Below is the definition for 802.11n
 ------------------------------------------------------------------------------*/
 
-/* 802.11 BAR control masks */
-#define IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL     0x0000
-#define IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA  0x0004
-
 /**
  * struct rtw_ieee80211_ht_cap - HT additional information
  *
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

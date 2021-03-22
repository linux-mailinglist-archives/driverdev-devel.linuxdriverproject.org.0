Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2893A344753
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 15:33:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1E1C607A7;
	Mon, 22 Mar 2021 14:33:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7B09lSywasO9; Mon, 22 Mar 2021 14:33:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0EFA66078D;
	Mon, 22 Mar 2021 14:33:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3407A1BF35E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 306D660659
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vUVLdgF8Ltoj for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 14:32:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 84B6E605C6
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 14:32:29 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id h10so19584479edt.13
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4BEr+U22XVWAeunLqffU23P7ZmiKVWme3aB7fB0BhsU=;
 b=vRgM409JQtnaRPNCwgrkhaPbRUwTSPN7dO4zkE0qRY7n4AVs4z/J05XI3BUQCIJmM/
 mGJTKIqdpDgogPfs6603CGeQgY0E1HV69uMBNkPAKfgbjYiYkZaZfXQUFzNzNMBHrqPm
 oe2jZGqRxVebAp/b6Q9F45Fd4mz2nATSnHJUq/yaLUysOAH/FmWGaHJZjRdOnWdoQ6Wv
 LciAueRc7O52PqBAFxfqjC/Nz3papznAA0+Qb8VHouGFGwwLuz9XAiE5U4LnV3X9swDT
 IIkdKNQ1uPR398m2nlqhakxKbrc9LppnqfErieu6SfJ2tajNYUdOMm+s63w145DlIC5h
 wK6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4BEr+U22XVWAeunLqffU23P7ZmiKVWme3aB7fB0BhsU=;
 b=c1vymX26Z99FXbb5LMJicJLS+POMt9l845TPLAIdlNYEJ1jeIymc9C7qfPlHuA+ViF
 mDJtmebA+GMTJkIabPrW6+Fv1MfYNC10U/3QISRUQ8ggw0offmRetrFHDCRCaJeJ8hrG
 A9MLjAKuPN7j0s+EE6LXWsg4EaflsX9xwtPyYFbiIyV4FsI7GFmVPY50Wde1rJSJYNak
 u94aTwawVKOI54cRgiRkjhCzm2J0AFWyBir05uv9ZRxJYyQNcXOl4KF59MyMYZMvBO98
 1CcfVkpkUXxAEcs870X2B5xrJw+xY2fYX2oQa74d/xkV3MmjVjD5B6yP96zM9LW10qwt
 mrCg==
X-Gm-Message-State: AOAM532QPQDmfHIDsVF42IA/CM5CBKJw4ScTil0FGOqZFLTXLoyuIk24
 osKPW0qYMztMq3zX3Qny7Bg=
X-Google-Smtp-Source: ABdhPJyPBriehihrYHP4J6IqMkH+J388wKRJBSIJkfPlD/9VgyKvBz8dBo5mY6zis1Ypdk35A021RA==
X-Received: by 2002:a05:6402:438f:: with SMTP id
 o15mr26161782edc.123.1616423547888; 
 Mon, 22 Mar 2021 07:32:27 -0700 (PDT)
Received: from agape ([151.57.176.11])
 by smtp.gmail.com with ESMTPSA id t12sm11828460edy.56.2021.03.22.07.32.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 07:32:27 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 07/11] staging: rtl8723bs: delete extern declarations in
 core/rtw_wlan_util.c
Date: Mon, 22 Mar 2021 15:31:45 +0100
Message-Id: <8dcec67cedad47b2e7d54ad90507658b1c5747ce.1616422773.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616422773.git.fabioaiuto83@gmail.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
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

fix the following checkpatch issues:

WARNING: externs should be avoided in .c files
28: FILE: drivers/staging/rtl8723bs/core/rtw_wlan_util.c:28:
+extern unsigned char RTW_WPA_OUI[];
--
WARNING: externs should be avoided in .c files
29: FILE: drivers/staging/rtl8723bs/core/rtw_wlan_util.c:29:
+extern unsigned char WPA_TKIP_CIPHER[4];

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index bfd55a0356f5..760b0ea4e9bd 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -25,9 +25,6 @@ static unsigned char AIRGOCAP_OUI[] = {0x00, 0x0a, 0xf5};
 static unsigned char RSN_TKIP_CIPHER[4] = {0x00, 0x0f, 0xac, 0x02};
 static unsigned char WPA_TKIP_CIPHER[4] = {0x00, 0x50, 0xf2, 0x02};
 
-extern unsigned char RTW_WPA_OUI[];
-extern unsigned char WPA_TKIP_CIPHER[4];
-
 #define R2T_PHY_DELAY	(0)
 
 /* define WAIT_FOR_BCN_TO_MIN	(3000) */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

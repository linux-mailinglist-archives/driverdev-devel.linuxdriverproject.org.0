Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8BD2A9819
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Nov 2020 16:11:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A1979869A9;
	Fri,  6 Nov 2020 15:10:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8LzMoW5UV4Ei; Fri,  6 Nov 2020 15:10:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0941186990;
	Fri,  6 Nov 2020 15:10:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 17E981BF28D
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 15:10:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 107932E12B
 for <devel@linuxdriverproject.org>; Fri,  6 Nov 2020 15:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e9Hh2wUHPu5U for <devel@linuxdriverproject.org>;
 Fri,  6 Nov 2020 15:10:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 25C672E129
 for <devel@driverdev.osuosl.org>; Fri,  6 Nov 2020 15:10:37 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id 11so1314296qkd.5
 for <devel@driverdev.osuosl.org>; Fri, 06 Nov 2020 07:10:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=PD7QQRv+MIfve+JLTyRulZvQFoTHtxEldwj7POOmMgs=;
 b=hypKjflcw6ncJ0jL80dlK+JMKmcFYBbsFlOoWh19RvKF9ytGdt03GtzACR0FGuk/N7
 O5/FV8PfBIx1/S69/dCbBno4H1xmzQoZxsHub2D0pIdGtBmHybG+HwzWHf641B3e+UyV
 YLRiocXNUkXFCin/eR7nt8dndLlC+S3Z1iLqhg3MvUYgfHYkBnHk99tFdMGOOfKVdih+
 RsBPODHRq7+nhDOsQyIhGt8qyic4uvEaRNaIJP60C8z8O+7fhRg/dh3smdc4JfrIy/yT
 GShsKpVeAjZRz2rQ09kF11GFqMSqUlBYnFnyAUUbedQbqqJkO5AsJQ2XA4jDvXvDq5YE
 iVpA==
X-Gm-Message-State: AOAM5300AC+WKczyhSkJbO5+lM1S4kPojlKSfoZubt7VMuhEz1BPWwKr
 Ldd6JJrZXtJgZ9KO+O6JbiQ=
X-Google-Smtp-Source: ABdhPJzc5clA3GvckM/GbhKOMdm13E1fsB5UAjFnANpe8KDkmaIry5vMNMVoMHctKPFbWlK1YVP66g==
X-Received: by 2002:a37:7e43:: with SMTP id z64mr2027820qkc.184.1604675436236; 
 Fri, 06 Nov 2020 07:10:36 -0800 (PST)
Received: from ?IPv6:2600:1700:1850:1780:6d4e:4120:8f66:6d6?
 ([2600:1700:1850:1780:6d4e:4120:8f66:6d6])
 by smtp.gmail.com with ESMTPSA id 21sm66020qkv.78.2020.11.06.07.10.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Nov 2020 07:10:35 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>, Larry Finger <Larry.Finger@lwfinger.net>
From: Brian O'Keefe <bokeefe@alum.wpi.edu>
Subject: [PATCH] staging: rtl8723bs: Add 024c:0627 to the list of SDIO
 device-ids
Message-ID: <b9e1523f-2ba7-fb82-646a-37f095b4440e@alum.wpi.edu>
Date: Fri, 6 Nov 2020 10:10:34 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add 024c:0627 to the list of SDIO device-ids, based on hardware found in
the wild. This hardware exists on at least some Acer SW1-011 tablets.

Signed-off-by: Brian O'Keefe <bokeefe@alum.wpi.edu>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
---
  drivers/staging/rtl8723bs/os_dep/sdio_intf.c | 1 +
  1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c 
b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 5b1392deb0a7..7256d55fcc1b 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -21,6 +21,7 @@ static const struct sdio_device_id sdio_ids[] =
  	{ SDIO_DEVICE(0x024c, 0x0525), },
  	{ SDIO_DEVICE(0x024c, 0x0623), },
  	{ SDIO_DEVICE(0x024c, 0x0626), },
+	{ SDIO_DEVICE(0x024c, 0x0627), },
  	{ SDIO_DEVICE(0x024c, 0xb723), },
  	{ /* end: all zeroes */				},
  };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

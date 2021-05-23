Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0096F38D813
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 May 2021 03:09:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C33DE83ABC;
	Sun, 23 May 2021 01:09:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZsVkkgyJSbT; Sun, 23 May 2021 01:09:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AD2183A42;
	Sun, 23 May 2021 01:09:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 42C2A1BF34F
 for <devel@linuxdriverproject.org>; Sun, 23 May 2021 01:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EAB840264
 for <devel@linuxdriverproject.org>; Sun, 23 May 2021 01:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P7Xh4L8cz7QF for <devel@linuxdriverproject.org>;
 Sun, 23 May 2021 01:09:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E8EA4024F
 for <devel@driverdev.osuosl.org>; Sun, 23 May 2021 01:09:00 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id l70so17379405pga.1
 for <devel@driverdev.osuosl.org>; Sat, 22 May 2021 18:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=u+JTr1DzWPJ6RU74A+9o6Y1iT1dJ7tDFLQK5aO+Ifzk=;
 b=brY/Fu7HPg10d6tX+EkasktE5pyfRtN/CCK8R399sNunTerryH9CCpM0HcH73I+JVk
 WgItXbOKMj7GsexIPKMxwCJ6WQcj40HPxpjDmlCoa3re3UQvVj/r+78YA/StBDgmMSqY
 1o7lXqcmO0bDDa9IlgmAzI22i5X2y2HqKnT/9Zwv5Nyg8yLTBaB/7jIsaaZLwztjsY3t
 4X8YrQCcqRbjvjg1FUdLcOLtT5wIfZMXgZcMeMpSOEv9l6fEhoFeFasUxAyw1AXWyFBl
 hLSkQQcMxB8U9FUmma8o2qnpgsEY+X29GughpqnTXsg3MBLOnOUM/Etjzr4O9viQWiMi
 lrHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=u+JTr1DzWPJ6RU74A+9o6Y1iT1dJ7tDFLQK5aO+Ifzk=;
 b=gEe2nyykPGPV9ePuw14BlmVyLHk5QjS0Dj035AOrGm5STbue6j/+WLKJIrrHP+Ag76
 xUZernl7ROS9yT9jwSve08COZbNZc+RHqzHGQP38d1Sy+EfR792M5mCD5BHHiqdR7ugc
 xrVGnA9To26Cgx2b/Sc5A6NHd2ytxycv/TYhiTx7gXwdcALtmjSht2STPWzMK7u5ijbZ
 Q4dMH8EDmLZxAstX/xHtEDGlhgkiBnF7pYSz30idCVRv8pLvyopG3477ln3ii+I+Eynk
 vw4Kzm8mK4hJvaVMhNSYskhRPY/0jgyl4YUNyg+1fOtkFAyflqx3BMQUXgdW4NgVoRXn
 rFkw==
X-Gm-Message-State: AOAM53164qUVIo6xb+KZBnYfzkgVBFgMx/Oe8m8OONQBu3GraE00Oqws
 tB8u7GurJeUVgIyZBg6S3xg=
X-Google-Smtp-Source: ABdhPJyOeMQR/h2uAtMntpzaDr+AwxWvv6G+cxS1sOx9587k2tdwCFkKh3+3F9ObpLT3J4LTUq9QzQ==
X-Received: by 2002:a62:92cd:0:b029:28f:29e6:449 with SMTP id
 o196-20020a6292cd0000b029028f29e60449mr17721317pfd.75.1621732139784; 
 Sat, 22 May 2021 18:08:59 -0700 (PDT)
Received: from localhost.localdomain ([2001:2d8:e530:8db9:b405:6cb7:e0c:6068])
 by smtp.gmail.com with ESMTPSA id
 k7sm11438493pjj.46.2021.05.22.18.08.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 22 May 2021 18:08:59 -0700 (PDT)
From: tco0427 <a29661498@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Fixed a coding style issue - missing a blank line after
 declarations
Date: Sun, 23 May 2021 10:08:52 +0900
Message-Id: <20210523010852.3593-1-a29661498@gmail.com>
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

From: Donggyu Kim <a29661498@gmail.com>

Signed-off-by: Donggyu Kim <a29661498@gmail.com>
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

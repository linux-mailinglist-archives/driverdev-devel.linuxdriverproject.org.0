Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC2C22D6C3
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jul 2020 12:31:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE76086FD3;
	Sat, 25 Jul 2020 10:31:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lo4a8hRCBrEu; Sat, 25 Jul 2020 10:31:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 94C4E862C7;
	Sat, 25 Jul 2020 10:30:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 55DAE1BF5EA
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 10:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5247888A33
 for <devel@linuxdriverproject.org>; Sat, 25 Jul 2020 10:30:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4FooJp135cZ7 for <devel@linuxdriverproject.org>;
 Sat, 25 Jul 2020 10:30:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8683286E21
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 10:30:56 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id l2so271208pff.0
 for <devel@driverdev.osuosl.org>; Sat, 25 Jul 2020 03:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=57uUt3PSE6mzDygoHqoCo++awV+qrNFKFMncsAlSLb8=;
 b=MeRVsiWKP7IpjY2Oleb7YUL7lIACw3+XAuJEJydUpvT1lXp/Ggq/oYMqWLUKNFnDyD
 ihmn35hiaWGUdd16rTB0GNhBaAZH6AssqQKlw1Pa/QjDGMfCeIaNFc7G/zmAyMHIzBiE
 c01X/Aiw11Xwbnao+Z8ePHD/p0o4b6hE4+hnBq8ZZLmADRnE4NHtYdwHdN2RsaKR6hQB
 A3KHpI/mnkkEAbeXEv1kooxNEnCtuBkSoN8uc+C6a7JsbhB5jzUCC8XS6Ld6QiUbVxRn
 AzCepakLEAZPBQvv/UICiOMnXSnwmZaixcN8hUemd/vUFuzjl1146BOu4NUfJV5hun4O
 GhyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=57uUt3PSE6mzDygoHqoCo++awV+qrNFKFMncsAlSLb8=;
 b=eFP0/PIF/uSx+Ym4iC6QpFElpdXJkNBwvOaKwqVatwpw+MpctxftJC6pHFh4tPRuE7
 GHUUihw7giTmSaSagbhM75y/8yaYxBvlRmpI6NNwkBQ5vpRn/B/jKqeMQcC7ekd1YYqT
 q19C3Yc5VAers6hfmw2c5GtHoLh0ustH/CLJiHkl9LW9CGz9nQ3Kqr8Xgaeb37DStpz8
 QBFeMScC/DsxiJFgGnrlckcufC9Twty8tJsHfCne0iOYFcMv4+kG6nxxcMAilACl22j0
 BR8PlwRNZFbOSRAevtfMLlICNrKoQ3MuARVJCXTSZy2tDDRVThsnIjaWT5hVRwe33As+
 aHnA==
X-Gm-Message-State: AOAM530CQZX1drk4d0PXMpT4izgOFNRbLvzZkbJk/5CA2D8fSsvL+vTw
 Xqy9cuB9biFYjLcW2vCPv2g=
X-Google-Smtp-Source: ABdhPJxPbDsWd3Twe2k17iP3Lf2crJgVogIVE5m2sfYrBO5WFpidaZYLbL8d2Hz/VRJvYkmkGOLYGQ==
X-Received: by 2002:a63:338c:: with SMTP id
 z134mr11756797pgz.245.1595673055726; 
 Sat, 25 Jul 2020 03:30:55 -0700 (PDT)
Received: from localhost.localdomain ([106.51.23.74])
 by smtp.gmail.com with ESMTPSA id e18sm8964956pff.37.2020.07.25.03.30.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Jul 2020 03:30:54 -0700 (PDT)
From: Anant Thazhemadam <anant.thazhemadam@gmail.com>
To: 
Subject: [PATCH] Fix one coding style issue
Date: Sat, 25 Jul 2020 16:00:03 +0530
Message-Id: <20200725103008.7261-1-anant.thazhemadam@gmail.com>
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
Cc: Merwin Trever Ferrao <merwintf@gmail.com>, anant.thazhemadam@gmail.com,
 devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The coding style issue that raised an error (upon checking against
checkpatch.pl) has been fixed.
Exactly one coding style issue has been fixed; as required by Task 10
of the Eudyptula Challenge.

Signed-off-by: Anant Thazhemadam <anant.thazhemadam@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 21f6652dd69f..dc22ee9c24ad 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -718,7 +718,9 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 				res = _FAIL;
 			}
 		} else {
-			RT_TRACE(_module_rtl871x_security_c_, _drv_err_, ("%s: stainfo==NULL!!!\n",__func__));
+			RT_TRACE(_module_rtl871x_security_c_, _drv_err_,
+				 ("%s: stainfo==NULL!!!\n", __func__)
+				);
 			res = _FAIL;
 		}
 	}
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

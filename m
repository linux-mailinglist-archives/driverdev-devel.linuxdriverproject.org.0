Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E175333D777
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:31:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C8D94EC8F;
	Tue, 16 Mar 2021 15:31:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9btt4J6ST-F3; Tue, 16 Mar 2021 15:31:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47B404EBBD;
	Tue, 16 Mar 2021 15:31:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF3181BF301
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:31:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9CB0D6F633
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:31:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lCs1F9iCHnvO for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:31:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C71A1606AF
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:31:30 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 c76-20020a1c9a4f0000b029010c94499aedso1725645wme.0
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Xkkz4qFDCYezzcD58zfpYKxKF1qCq8JreKSFWUuXhwI=;
 b=NnYEhjWkh5mSf8B3jqCCngmLral9xAMV12mzGTVtb/SeS7aQ+6Mqnm6Rp1lkWd96fI
 2Z3pUod1sHFcH/CAbqj6bXWHdihPXJQCPHaarljHtePY3wxqQR19DCK9o0HhUb6DRpir
 A/ijeOpkExxe2eAQF0zmWOaByPAsUKfRGnf+EEvnkDsAtPNOig/Cz8uYfI7nEF3NG8dk
 Ld4ZJ6gH+Yx/xluTe5d0oh3K66fD61XwoqjRR1adCcwf5sv2tGhoG1nBLVWmQjF2rjpa
 uHjKQ7GRxnmMGZl42CvIxy3K284qWkEc45zNNZBWtu4NVz1F2f/EJL+Iqgm5wvtSn8Ea
 WPoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Xkkz4qFDCYezzcD58zfpYKxKF1qCq8JreKSFWUuXhwI=;
 b=AXKvQd7LQDUlhsSV/2DT5KX2QMRueMwq+pwFSQlPs84e57q1nTQeHEYMyR3VvrzcPK
 2q6Dugd4BINXWSm1nGBI6ViE+Wn6REiHAcX9PEYMEm2wZEIDs2hSntpMSOnvKrM97XCV
 +N2x/p2w208agEjNlF6o414kuLfyXrib3APSRWHwlQSKTn4mZlugpiOIyuYoHSQw4QbE
 +YnrT+sHoSVti0HecJaLS7EMCFbFJ32rI0TzsfjlN4vrPin/gEqklviY6Ikqi26w9Eqn
 aaLprscaO99g8wjJufwOE2YFUKTkHU6s0Xp1Mp9FaFpxcamyCyFiewv+zVZezHSzpnXa
 H/kg==
X-Gm-Message-State: AOAM5333OMhkIt3oPZ3VdbdD2Pw7IOMuu6IcR6CqY4VcrgxDkw9NpQrs
 hsuHNkNOJv6WPrMniycs1P0=
X-Google-Smtp-Source: ABdhPJzcWzdUD4ECfZSm5UKn7dJW6GFGjculnxAmM6rt4p/B80/gDAp8lW35WQhQtAMFGoWVa5FVwQ==
X-Received: by 2002:a1c:2683:: with SMTP id m125mr209385wmm.178.1615908688656; 
 Tue, 16 Mar 2021 08:31:28 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id h9sm2116330wmb.35.2021.03.16.08.31.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:31:28 -0700 (PDT)
Date: Tue, 16 Mar 2021 16:31:25 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 05/12] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_VALIDATE_SSID
Message-ID: <d1eb0c9ca2309f87e346ce71febb870872bf2cff.1615907632.git.fabioaiuto83@gmail.com>
References: <cover.1615907632.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615907632.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove conditional code blocks checked by unused
CONFIG_VALIDATE_SSID

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ioctl_set.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index c9418bfb2a00..5929a7bf7db6 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -33,17 +33,6 @@ u8 rtw_validate_ssid(struct ndis_802_11_ssid *ssid)
 		goto exit;
 	}
 
-#ifdef CONFIG_VALIDATE_SSID
-	for (i = 0; i < ssid->SsidLength; i++) {
-		/* wifi, printable ascii code must be supported */
-		if (!((ssid->Ssid[i] >= 0x20) && (ssid->Ssid[i] <= 0x7e))) {
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("ssid has non-printable ascii\n"));
-			ret = false;
-			break;
-		}
-	}
-#endif /* CONFIG_VALIDATE_SSID */
-
 exit:
 	return ret;
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

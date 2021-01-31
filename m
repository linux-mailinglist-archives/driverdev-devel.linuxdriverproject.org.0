Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 099A3309B11
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 09:10:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A45785D39;
	Sun, 31 Jan 2021 08:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3gJCErxY5K-c; Sun, 31 Jan 2021 08:10:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3B55185BEE;
	Sun, 31 Jan 2021 08:10:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A9DFD1BF352
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 08:10:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8F42120107
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 08:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mSicddSTv0+c for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 08:10:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by silver.osuosl.org (Postfix) with ESMTPS id A52E81FC94
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 08:10:23 +0000 (UTC)
Received: by mail-lj1-f169.google.com with SMTP id e18so15602540lja.12
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 00:10:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VXMDrOK2wYAdD9AnIGGKDk+V0hqpb9XtfbS5RIo5bX8=;
 b=tqdBWQWxpXuIo4/bRKgDNbLFcyBsEs0mz4mV4E9ov6aX5p7A+kfrTIQ8agJRtfim6Q
 MJA6+J9hNj/RVDmi8U/F0Nzg461c7PHCcln6jmUYrFQVPyh7eqxzbeWv1E2FuXlBy7fa
 OCaOPFzxLtGMlXkGWUnft6n5sZyI0VehWX2tFes6/BLv0jsJw6lEvgrbuRWXikIPLbrT
 nybwPt29ENeF51MTt1DV2pvthuGxRecnrDgd8OIC0UWlEOXzxcH7wShrq63jF7JLXqNp
 4Tp1ooqHwwuipc6zQhvItuDQeIQAHPjqrmOAzUwcl1Oq7NzFExoHKS7Q7GxQxONjdszJ
 5FzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VXMDrOK2wYAdD9AnIGGKDk+V0hqpb9XtfbS5RIo5bX8=;
 b=jTK9kV+6gzdmh3IZ/Q47dLVQuSYJyCEiFwWh+Iv7QTlZHra+FT3hFxcrSTMzbDzP3d
 GF/X3T9nxhccTmPhBNzFJ2cbA8vQNCzD/vB0TyX+dHfZHEVkFgkjnAX6LZ8Wcy+LJUgw
 pzrai9KX5NmjvTKUUdywq5PUCdXPdpovGQSV2ecz9VXvCFf/6QxJw5vbbJEg09mP1vWc
 e7dfr1oE8+oL1+HG4WWbIUd+Ph5SZhRv8A+3AbQsmFpnOGoZNyU2oy5CLxa40YrcUoaf
 jAOdWqgjQVJZhW+/v2p6Teqv8uRJdOZIUrE9jBV/kRJkrTGiILLFykXlD1fLgyup9yiV
 Kvmw==
X-Gm-Message-State: AOAM530R7EIX1kh+syeH3jxnHe3fvir9O/mK+A3imZoFsJ/NNqhyZow9
 C9ZQkz+byBZVy6Zhh5Q3yMA=
X-Google-Smtp-Source: ABdhPJxhfUlaL+LZHKWobW2QhhbzABZvM3E5RZ52/smu6D+bfr0BMaijWFcrafNm762rB63RgLV4iw==
X-Received: by 2002:a2e:a555:: with SMTP id e21mr6980662ljn.423.1612080621747; 
 Sun, 31 Jan 2021 00:10:21 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id 24sm2569970lfy.32.2021.01.31.00.10.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 00:10:20 -0800 (PST)
Received: (nullmailer pid 25313 invoked by uid 1000);
 Sun, 31 Jan 2021 08:09:32 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging:rtl8712: remove unused enum WIFI_STATUS_CODE
Date: Sun, 31 Jan 2021 11:09:13 +0300
Message-Id: <20210131080912.25264-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Pascal Terjan <pterjan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Improve readability.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8712/wifi.h | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 601d4ff607bc..1b32b3510093 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -101,20 +101,6 @@ enum WIFI_REASON_CODE	{
 	_RSON_PMK_NOT_AVAILABLE_	= 24,
 };
 
-enum WIFI_STATUS_CODE {
-	_STATS_SUCCESSFUL_		= 0,
-	_STATS_FAILURE_			= 1,
-	_STATS_CAP_FAIL_		= 10,
-	_STATS_NO_ASOC_			= 11,
-	_STATS_OTHER_			= 12,
-	_STATS_NO_SUPP_ALG_		= 13,
-	_STATS_OUT_OF_AUTH_SEQ_		= 14,
-	_STATS_CHALLENGE_FAIL_		= 15,
-	_STATS_AUTH_TIMEOUT_		= 16,
-	_STATS_UNABLE_HANDLE_STA_	= 17,
-	_STATS_RATE_FAIL_		= 18,
-};
-
 enum WIFI_REG_DOMAIN {
 	DOMAIN_FCC	= 1,
 	DOMAIN_IC	= 2,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

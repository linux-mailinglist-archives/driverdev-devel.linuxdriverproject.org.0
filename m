Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 464524AF65
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 03:14:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F572866AB;
	Wed, 19 Jun 2019 01:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8SdmEtyWI2NM; Wed, 19 Jun 2019 01:14:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4F80B86651;
	Wed, 19 Jun 2019 01:14:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D284A1BF276
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 01:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CFC72879FC
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 01:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N40VPtN-h8JJ for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 01:14:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5321A87933
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 01:14:48 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id v9so8615994pgr.13
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 18:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=Pji7lKgrO/kCVnYgvDkmXNm8qNW9reyHS5Rp4oBPXfM=;
 b=hw+6B+Exze8ZdzgLnsyml7I9sVxD8thWvlLSiyktfXW32+8AKxutW1Y2PcCVCMW9ZJ
 uv9hHZYx5wztPs27FcyWjxAIVcC3L4H4l3F1lRQQq+/WYtawCgUnvnqNr0RnqpoVBDM6
 9sJJDhNhgiaWyKHXf927VUeGACCpjNCMnPVwqSEjg8vcqxbD9xbd8GmGv4ulSN9mDxZO
 +nALWgDN9dWZytsRnGGir5AJ6YjThE1drp7BJVGFYpsERvS73hWgVhy/2RF79J5+gVIv
 CvQOJMeoWDqwrau4shH3Mv7ffbs5zJUrHFJtlQKy6KsKzjD4v3iVOapY3qLuVS346QkK
 MTSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=Pji7lKgrO/kCVnYgvDkmXNm8qNW9reyHS5Rp4oBPXfM=;
 b=KE8Ms27CarwW6bmrDTGB5p1WNRWbaQp5swn310wy8Tp09EYlw+DV6uuMKJcczu15iP
 Z3ldBJlSCfT9Dp30S6uc1zH12e0ZQbfEZXbQ53KDMHlQ5692n3o8JDkXjaemabZSuPv3
 q5K860l5c78uOAkfViiKx0rTRCnPadv/7yGO1NYecwb/VUf+ALA4e6P0k1otVnPbc1Gp
 iAVbFzDL1Cgc4cL7Umo4QAqDjpI+mMfvvImDgZaPVqT3Mn8gpI+n/G//YHzDFW7pJ0C/
 ZLShw83mV9fvFX/+sXpSxiVMMUdOAeDEDgWRH02/FMHqUlukNyxATdc7+7XQT/z5Kyv8
 l6/Q==
X-Gm-Message-State: APjAAAVDG+fVL+Fpu2yIUOVizGupMsNDXg5sJNg6TY41F4D5rFFQ4J/8
 NSp/a+asOmL5UU3If8UYQoQ=
X-Google-Smtp-Source: APXvYqwZoi9mR/P+Z1XfZa+SWxO/ROXPckbCO4waB6NLC+c8mvtlOPTb03RK/0zNmTEOlLeNsxGl6A==
X-Received: by 2002:a17:90a:9f0b:: with SMTP id
 n11mr8046154pjp.98.1560906887809; 
 Tue, 18 Jun 2019 18:14:47 -0700 (PDT)
Received: from t-1000 (c-98-210-58-162.hsd1.ca.comcast.net. [98.210.58.162])
 by smtp.gmail.com with ESMTPSA id m11sm3147174pjv.21.2019.06.18.18.14.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 18:14:47 -0700 (PDT)
Date: Tue, 18 Jun 2019 18:14:44 -0700
From: Shobhit Kukreti <shobhitkukreti@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bastien Nocera <hadess@hadess.net>, Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: hal: Remove True/False Comparisons
Message-ID: <20190619011441.GA30949@t-1000>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: shobhitkukreti@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removing comparisons to True/False in if statements.

Checkpatch reported:
CHECK: Using comparison to true is error prone

Signed-off-by: Shobhit Kukreti <shobhitkukreti@gmail.com>
---
 drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
index eb6e07e..8e4caee 100644
--- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
+++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
@@ -1421,7 +1421,7 @@ static void halbtc8723b1ant_PsTdma(
 
 
 	if (bTurnOn) {
-		if (pBtLinkInfo->bSlaveRole == true)
+		if (pBtLinkInfo->bSlaveRole)
 			psTdmaByte4Val = psTdmaByte4Val | 0x1;  /* 0x778 = 0x1 at wifi slot (no blocking BT Low-Pri pkts) */
 
 
@@ -2337,9 +2337,9 @@ static void halbtc8723b1ant_ActionWifiConnected(PBTC_COEXIST pBtCoexist)
 					);
 			}
 		} else if (
-			(pCoexSta->bPanExist == false) &&
-			(pCoexSta->bA2dpExist == false) &&
-			(pCoexSta->bHidExist == false)
+			(!pCoexSta->bPanExist) &&
+			(!pCoexSta->bA2dpExist) &&
+			(!pCoexSta->bHidExist)
 		)
 			halbtc8723b1ant_PowerSaveState(pBtCoexist, BTC_PS_WIFI_NATIVE, 0x0, 0x0);
 		else
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

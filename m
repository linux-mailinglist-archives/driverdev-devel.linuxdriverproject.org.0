Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA7C5AA3B
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 12:37:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3DFC1881E2;
	Sat, 29 Jun 2019 10:37:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fs4K7YTMbKNA; Sat, 29 Jun 2019 10:37:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B70A4881D9;
	Sat, 29 Jun 2019 10:37:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 712191BF405
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:37:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6E970881D9
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 10:37:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xMo+q22JpLYr for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 10:36:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA38A881CC
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 10:36:59 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id f25so3723048pgv.10
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 03:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=9mH2XccuZeODfxZbBcYEVAm/fyB1IljuBm5N/klAdV0=;
 b=vZQWoed5/6nx3bfawcj951wiGTtCCPQtMTXJMr6fDiwrBnAWwz6KKXR/9l4nkzd70Z
 VA6Bjw0K9xF87awHmDkarSSkRLSKLu5snbe4CdFZg+fI5kU9fIoDUtsC2XJrXR2ooONa
 UDuFnLjLEmraTlueTcZPECMeY4rx6dfdOkDqIsqrcK3VTaPMxxzvAupGNlLYhNS9FWJm
 A2RHauruG9OVU49OzYa3F9HsiSHp3h+TOPF0RAmgmLxELvokE5jGKhL8Rx4QcrrZhcGr
 n1Hjgz5d/dd9tGS56PM8W3osOFT+e/6i17Pe9kz09J7O9+H/c8m/HNErKVMNuVqMtpV1
 Xn8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=9mH2XccuZeODfxZbBcYEVAm/fyB1IljuBm5N/klAdV0=;
 b=TYqyRnL2vU7UgEb0LKrKS9J82MQNQRWC7hH274zOnEcJAGr4Ius1RR943Eqo6MIFXy
 +Nl2qMMUbDegG32GjVNUnn+AHg3spD+Qie/nW6PcxzTBHRGP3DgG6C/G/3L6dPyJrHT3
 IPIvpfFm39Quu4y4LkEB/fDPNPyAaI8CTBZnsjCjc3+gccpImF5iIHBnhuZhjp86S/jZ
 d9XWMRH+SU2MFEXWJm27GTUq3640j8t4fXmaloY49OqBgNa58JWrdHzsEjkFS02MtoSO
 u2y6vbhjsadLG9u70dLvFoA6UFTkRheHz1U9wNAw5KrXiPo9EGbOmhNDECl+wBfDgRRX
 vilw==
X-Gm-Message-State: APjAAAXBHZhvMLaV6bLwuobRNmQqOUu+GQchDPUeXdiVQCTjfDl8FXEi
 39yO0PYU3+KhVZTnm9wYM6U=
X-Google-Smtp-Source: APXvYqyFJ1ddt4Ke79mZkiwYHtw/sfjAsdAF2EVubRYaC1xaRMEHJi/B/IFd5JKTq9jouIoZ1WsRvg==
X-Received: by 2002:a63:4006:: with SMTP id n6mr13228072pga.403.1561804619567; 
 Sat, 29 Jun 2019 03:36:59 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id k3sm4566600pgo.81.2019.06.29.03.36.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 03:36:59 -0700 (PDT)
Date: Sat, 29 Jun 2019 16:06:54 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 09/10] staging/rtl8723bs/hal: fix comparison to true/false is
 error prone
Message-ID: <20190629103654.GA15592@hari-Inspiron-1545>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix below issues reported by checkpatch

CHECK: Using comparison to false is error prone
CHECK: Using comparison to true is error prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_com.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_com.c b/drivers/staging/rtl8723bs/hal/hal_com.c
index 2763479..d3025ca 100644
--- a/drivers/staging/rtl8723bs/hal/hal_com.c
+++ b/drivers/staging/rtl8723bs/hal/hal_com.c
@@ -140,7 +140,7 @@ u8 hal_com_config_channel_plan(
 	}
 
 	if (
-		(false == pHalData->bDisableSWChannelPlan) &&
+		(!pHalData->bDisableSWChannelPlan) &&
 		rtw_is_channel_plan_valid(sw_channel_plan)
 	)
 		chnlPlan = sw_channel_plan;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

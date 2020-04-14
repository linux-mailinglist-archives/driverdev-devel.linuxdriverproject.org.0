Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 092CD1A788F
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 12:39:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0198E85533;
	Tue, 14 Apr 2020 10:39:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZbkF3bMIidvD; Tue, 14 Apr 2020 10:39:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 080BC845C0;
	Tue, 14 Apr 2020 10:39:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B0E71BF255
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 10:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 44BEB8462A
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 10:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w6hvotNw4Gc0 for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 10:39:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 165AC845C0
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 10:39:27 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id i10so13709924wrv.10
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 03:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=oxvQlRsffaRa1NodizK6Br3j1HOkDXlCeGnv2LmuSWI=;
 b=lj/uGfhbz4egaV+UnAbsxUn1CLKh0qjYU2+LwcluDaE8/HfN9lqui58xiPaVTPNlEz
 Tvrw9UOSoPYH94mDVBxiTXwWkip64+s0qhXnAOwMsi7rDhVCIMwK2MjpjW+I3q0V4dZL
 FET3+ROtaDQoSLv/8v85tZsgNFsIBXHBbuh7L3zMzGQHuiLitSWfn6s9wM/sJ7ynG/Wq
 TKy5D3v6NDGPMWbnv2i5MjW9E/UCetI9K0pN3zK9nO+HtVabtpJcclkn4wLFvBFsuBcP
 YFNFmKF5JAfBAWyJgtEBnBWORX7l7/G1NCtv/tRbMwKZQFwIdWO2gy/2IdLJVrk8gCVk
 kyLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=oxvQlRsffaRa1NodizK6Br3j1HOkDXlCeGnv2LmuSWI=;
 b=s/tjb5tfSjsWWgrFVO4q+mt53QXAdgLjt2KFCcwaSbBSdZPDxJWC3N7BpiO891IdwJ
 XzUlzjLQ86LXqs4wKmm+UHfz6J3dIIduPLHFYSXnl5YVhYJFmNoxSlEM+F+7cXaTpaZX
 fKVqWtNKDZx0Has7tO7DjnJH4xuYwZob/VuKO1/YwGKmyQPo9D2WATekCIJtmUBV6Zc3
 YlcP6Q3Gw3Giy/EbeS4raFHac7tnjTJvYE6qkS9gEi6S46DVit8ruKq8NlxWCb9cwNrM
 +R/08Tcvw9nyRI34Ml05n9MW8LGJN3s2ubF9frqrQAZLD1ujliHdsFIm3xvgF02mvYuR
 snlA==
X-Gm-Message-State: AGi0PuZuIkxMDr1WcIBZQ+RNsyb2q+/UHBuJMbSjvFgL0qOidPyIXEet
 7nREiRRf+HsaYbEm1OWDC/c=
X-Google-Smtp-Source: APiQypICmu9fPjO1czZST40gVi6c2FnDtlUHGNYPi09uSumvOoAMgSrHl5Jd30B+iwbGMGkCUx5VVQ==
X-Received: by 2002:adf:82b1:: with SMTP id 46mr16032416wrc.44.1586860765578; 
 Tue, 14 Apr 2020 03:39:25 -0700 (PDT)
Received: from [192.168.43.18] (94.197.121.244.threembb.co.uk.
 [94.197.121.244])
 by smtp.gmail.com with ESMTPSA id u17sm20301174wra.63.2020.04.14.03.39.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 03:39:25 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH] staging: vt6656: Power save stop wake_up_count wrap around.
Message-ID: <fce47bb5-7ca6-7671-5094-5c6107302f2b@gmail.com>
Date: Tue, 14 Apr 2020 11:39:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 linux-wireless@vger.kernel.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

conf.listen_interval can sometimes be zero causing wake_up_count
to wrap around up to many beacons too late causing
CTRL-EVENT-BEACON-LOSS as in.

wpa_supplicant[795]: message repeated 45 times: [..CTRL-EVENT-BEACON-LOSS ]

Fixes: 43c93d9bf5e2 ("staging: vt6656: implement power saving code.")
Cc: stable <stable@vger.kernel.org>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/usbpipe.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index eae211e5860f..91b62c3dff7b 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -207,7 +207,8 @@ static void vnt_int_process_data(struct vnt_private *priv)
 				priv->wake_up_count =
 					priv->hw->conf.listen_interval;
 
-			--priv->wake_up_count;
+			if (priv->wake_up_count)
+				--priv->wake_up_count;
 
 			/* Turn on wake up to listen next beacon */
 			if (priv->wake_up_count == 1)
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

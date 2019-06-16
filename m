Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6248F4734D
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 07:16:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 04CEA8639E;
	Sun, 16 Jun 2019 05:16:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CRkkm+HQkPDv; Sun, 16 Jun 2019 05:16:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CCBD86254;
	Sun, 16 Jun 2019 05:16:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 59B211BF588
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 05:16:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5699A85AA1
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 05:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7XzHEUvzq2Ss for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 05:16:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E01A85A37
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 05:16:26 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id f25so3898076pgv.10
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2019 22:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=+nuBJ9f4dkhbGZ0ut/+UiUe+NLKEceMx/7LyP3DsD7I=;
 b=TuUAr0n8xoqntV8JDFYaOXCTj8WoMRADx5SOFlvQX8eeiUrl0v5LFBLbeT0qQSZKft
 BNTVgHkm/15dKOyKyky4fMDx7LLcQxJgsFJScN6zp/K9CcF3ZuPKFFjGf506ieiRcgy5
 z02tq9L9vf4W1uFDdtJIqoCU6Ym8lhRP2NELJrDXAYbhfqAFiiSOeEXeZvNGFlVan4RR
 rOWM3KNJ+3ItmsiDPm4CMVUu4bYlMcRfJdqhVdQL0Hp/cEDhHLKtDcwMxclW/X5nBiA6
 Twjpa4Uj6lwhND4smeCP85XPz56i6kuUbZelanCYNtfOYZ5CEfiCDyvWXfjazZD1QxQ+
 a4Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=+nuBJ9f4dkhbGZ0ut/+UiUe+NLKEceMx/7LyP3DsD7I=;
 b=iCDvVZDJ07bq7mkoNsfWhY7lrdT8aXZaQWRYoZOSkGkbypCFXPxUTk36XqfUcIBWcJ
 TXFaQ0KCyGZitcwywYjaZ4QzoDaa0E6ISp5cfa9c09t+KThGJqvfsbo3Ijvl2YUJMKpP
 sPHvO2/xn7yYfrmUodePwi15wfrZV4Z201622nceNDvsIkWez81+bpbjmdzWBjwQV+DC
 ezCAXH8lFKyXcnauBrZnrsH5xa2oHN7QFhCYgcu4uXLm8uU0zV4O/nLVOsDGtYzDTvdp
 MaQxlIb9zS3UsK3VwlZCDUZ0oOWnde2NVro7CENIUOXwp6FhNohdofbtK5ljL+fourcr
 ud/A==
X-Gm-Message-State: APjAAAXTdnl5mEzTCU5DrTzRG+TB3J8CNpZyGki0RWk5qDTEbtq+VC5L
 QApSbuk6+octys7jjADCrgM=
X-Google-Smtp-Source: APXvYqzaLkgQ1lCpEB3AodJVPvf0hYY8zED3KEEWHv555lmDex7XAGPOcuctnWNIUPj4OSUo3sRvLg==
X-Received: by 2002:aa7:9ab5:: with SMTP id x21mr10583861pfi.139.1560662185746; 
 Sat, 15 Jun 2019 22:16:25 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id q7sm8638868pfb.32.2019.06.15.22.16.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 22:16:24 -0700 (PDT)
Date: Sun, 16 Jun 2019 10:46:19 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Jeeeun Evans <jeeeunevans@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Quytelda Kahja <quytelda@tamalin.org>,
 Omer Efrat <omer.efrat@tandemg.com>, Arnd Bergmann <arnd@arndb.de>,
 Puranjay Mohan <puranjay12@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: os_dep: Make use rtw_zmalloc
Message-ID: <20190616051619.GA15036@hari-Inspiron-1545>
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

rtw_malloc with memset can be replaced with rtw_zmalloc.

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 9bc6856..aa7cc50 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -1078,12 +1078,10 @@ static int cfg80211_rtw_add_key(struct wiphy *wiphy, struct net_device *ndev,
 	DBG_871X("pairwise =%d\n", pairwise);
 
 	param_len = sizeof(struct ieee_param) + params->key_len;
-	param = rtw_malloc(param_len);
+	param = rtw_zmalloc(param_len);
 	if (param == NULL)
 		return -1;
 
-	memset(param, 0, param_len);
-
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
 	memset(param->sta_addr, 0xff, ETH_ALEN);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

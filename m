Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCAE02678F2
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Sep 2020 10:49:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E37E873E6;
	Sat, 12 Sep 2020 08:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FUgL8A4UFkSp; Sat, 12 Sep 2020 08:49:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4CBA873EB;
	Sat, 12 Sep 2020 08:49:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E63561BF393
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 08:49:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E308387335
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 08:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LFjn8qGAruo9 for <devel@linuxdriverproject.org>;
 Sat, 12 Sep 2020 08:49:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A9F2887322
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 08:49:30 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id nw23so16593482ejb.4
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 01:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vNlcCZ2ctZFFGstfG2NKpVykJlm+0Zhh9Bla/mclhFc=;
 b=b5Gfedz+gPp1+6RaUAV8zy7K0+p3KhfHTn+qPPoyqH3KbpB65P5djELc54graLZ02E
 Qb1vT/w0dtsRJTz/IgaEI2QDX+xtbqcMrYyljB4exoZKWc2Mt70kiq2R8TgaW+KNWVZA
 pu0vg03fJMuxxmTjLHfi1xSK5OY5EZYOCHflacdIGsIGJlSYjV15ig3VUB8vdNo54ACc
 /Q57jsXENF7LQElqCavaMlKgzNoNtHhOi7spWhzQJxCrQGgoEhm1ku28Q//io5bStOBU
 RS/wHotpf6GxTG2jeoixrCmJ3ASkevow47N5nNKzTk0pwNrX4mQcQN86UzrOFhhg+/iJ
 RFZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vNlcCZ2ctZFFGstfG2NKpVykJlm+0Zhh9Bla/mclhFc=;
 b=FL+dUSs+rrdIAMxjG4H+yDzFBshnOQshXs8umA20jNQTgZKuiZSSsiixqcBHL9J8gr
 Bk7WV8DkT0CBlM4/DIOdwMTQHTUVJ+RC/XmFIaCvMihCpJGpMUydsOcIVaxnCi9NEsFA
 88UTeIEUhtWGHVUM6Sa7+pjsfyEhuu31U0hgwCSHsmBVsXdvQCXWF19LZfw4wdHv0HcG
 61UXslpxJtuUSjj44DzqvnpxvnCSWQOusRxdJoWwHH94MARrRwyXxJ/H7PxjkM/kFnd8
 tSztPp2Th5tBieR8Br1CW05zQmY7pkIKR/Wq5wmMElG66jkLWe4ReHjxTxu4lf+EDauY
 JPUg==
X-Gm-Message-State: AOAM530x48aBRgDufp2wL22gFBH22AiJP5eDu8mUMUdUmkL6quxxA8Zf
 ZpSK6UZo9i2eV5MNurVP40Y=
X-Google-Smtp-Source: ABdhPJyNhpZuABz226SaBqkEh/eIC2A49g89/wT+lhD7ZhN9X8FCmqedCOT6RtxRrTDv6Mu18ouZkQ==
X-Received: by 2002:a17:906:ce30:: with SMTP id
 sd16mr5235036ejb.53.1599900569117; 
 Sat, 12 Sep 2020 01:49:29 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id s23sm4009598edt.10.2020.09.12.01.49.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Sep 2020 01:49:28 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/5] staging: rtl8723bs: remove comparsions to true
Date: Sat, 12 Sep 2020 10:45:19 +0200
Message-Id: <20200912084520.8383-4-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200912084520.8383-1-straube.linux@gmail.com>
References: <20200912084520.8383-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, hdegoede@redhat.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unnecessary comparsions to boolean values.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 7733d076af85..cad35ce0c21a 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1767,9 +1767,9 @@ void update_wireless_mode(struct adapter *padapter)
 		else if (pmlmeinfo->HT_enable)
 			network_type = WIRELESS_11_24N;
 
-		if ((cckratesonly_included(rate, ratelen)) == true)
+		if (cckratesonly_included(rate, ratelen))
 			network_type |= WIRELESS_11B;
-		else if ((cckrates_included(rate, ratelen)) == true)
+		else if (cckrates_included(rate, ratelen))
 			network_type |= WIRELESS_11BG;
 		else
 			network_type |= WIRELESS_11G;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

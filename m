Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B7E85AF0
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 08:40:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3CCFB861F2;
	Thu,  8 Aug 2019 06:40:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SYFogdwAM4CL; Thu,  8 Aug 2019 06:40:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE9A686204;
	Thu,  8 Aug 2019 06:40:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1ADC71BF83A
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0F60285B7C
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 06:40:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c83kTElR+aBf for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 06:40:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 44AA386B68
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 06:40:41 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id i18so43511623pgl.11
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 23:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0shRX1RkGBH82fQ9NmeAWqmxQnZG6gsS0m/Rau3QFWE=;
 b=nwcICWoKA3FiSCgprGfoiZQEPREabtg1pkSC8AqaI69q5XFFNEBDviimeh6oh7oSek
 rxMot2ZDsPsm2hwtgCn2e8LoWsdawKp3iphPcVD6+VZAclamilzURzwwVDHE5Oewbp2P
 ARhkHGL72afnF6z+f02l9+wNPzgMQPmZqwpPKQBKC8f3kC6N7bqGH5Lu0odQ3b/78pr3
 HOJEeBalTd+DFpKtTPdS53fkvaE0oOdjEX77UYNIOmHkj/Ls/1vRKlV7dJ4fa5399axm
 ang+wtWX+JqdYZhzFf1BT+4g96a6Ja4zrXFRNhUM1hgCWWzEvoV8XE5842b7K+H5980y
 U4FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0shRX1RkGBH82fQ9NmeAWqmxQnZG6gsS0m/Rau3QFWE=;
 b=QdalvhvA3gc2fOTC2dp/SHDr4w0fsD7LOq4BjhCIC2GWx65MU9GKLnFp4KO0q6c/H4
 ReyArm9eXYpVGU2Cr/Q3A9uyDYSX2oQz8zxmIusyBrve0/PD7jFb45sUGWxDtH3TyyV4
 wwedX5+0P0IEZBWe9iCT8BDtcSzjX1QJC+UY54hYhUGvD+seZHG+hwp5yPAKDay4Eqel
 x2vQOSx4OsAMEcH8JRI6IXHkjrGwU6X52iww/4iXG6HgLCNpILCvezD7HUtIUZS7BGjF
 xP9bmk2OEIs8zUYZZpAWMEtgqKKEuj7FlUmCv3BOqqdZY+leCOhx+ziH69OkcxPn1b4u
 ex8w==
X-Gm-Message-State: APjAAAXhNv/9aOVWokBwaB4ZHvaAmD0N22SG6q9XrL/QvdIh0hXn+No1
 RJ6uceuZuKsz5hbByk0uFx0=
X-Google-Smtp-Source: APXvYqywWMoFOOVu91tVDuUonQg4VMJ2w2bI6sSNMbtbxEe3imkkBcvhPlQUiBrQgfzOtVAWKCNJHw==
X-Received: by 2002:a17:90a:ac0e:: with SMTP id
 o14mr2442400pjq.142.1565246440908; 
 Wed, 07 Aug 2019 23:40:40 -0700 (PDT)
Received: from localhost.localdomain ([122.163.44.6])
 by smtp.gmail.com with ESMTPSA id m101sm1213950pjb.7.2019.08.07.23.40.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 23:40:40 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 06/10] staging: rtl8712: init_default_value(): Change return
 type
Date: Thu,  8 Aug 2019 12:10:08 +0530
Message-Id: <20190808064012.12661-6-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190808064012.12661-1-nishkadg.linux@gmail.com>
References: <20190808064012.12661-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change return type of init_default_value from u8 to void as it always
returns _SUCCESS. Remove now-unnecessary return statement.
Modify call site to simply call the function.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/os_intfs.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
index b4059ea17e5c..c98acf4f6fff 100644
--- a/drivers/staging/rtl8712/os_intfs.c
+++ b/drivers/staging/rtl8712/os_intfs.c
@@ -258,7 +258,7 @@ void r8712_stop_drv_timers(struct _adapter *padapter)
 	del_timer_sync(&padapter->mlmepriv.sitesurveyctrl.sitesurvey_ctrl_timer);
 }
 
-static u8 init_default_value(struct _adapter *padapter)
+static void init_default_value(struct _adapter *padapter)
 {
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
@@ -292,7 +292,6 @@ static u8 init_default_value(struct _adapter *padapter)
 	r8712_init_registrypriv_dev_network(padapter);
 	r8712_update_registrypriv_dev_network(padapter);
 	/*misc.*/
-	return _SUCCESS;
 }
 
 u8 r8712_init_drv_sw(struct _adapter *padapter)
@@ -316,8 +315,7 @@ u8 r8712_init_drv_sw(struct _adapter *padapter)
 	r8712_init_bcmc_stainfo(padapter);
 	r8712_init_pwrctrl_priv(padapter);
 	mp871xinit(padapter);
-	if (init_default_value(padapter) != _SUCCESS)
-		return _FAIL;
+	init_default_value(padapter);
 	r8712_InitSwLeds(padapter);
 	return _SUCCESS;
 }
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

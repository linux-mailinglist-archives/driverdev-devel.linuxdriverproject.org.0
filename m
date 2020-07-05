Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 452C7214D2A
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 16:36:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0EDFB8886B;
	Sun,  5 Jul 2020 14:36:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kN-FISkFWj2y; Sun,  5 Jul 2020 14:36:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 82019887D3;
	Sun,  5 Jul 2020 14:36:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 77C201BF36F
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 67FDD2206D
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EnaQ4IcnJNzc
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by silver.osuosl.org (Postfix) with ESMTPS id BD466220D0
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 14:36:11 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id h17so257930qvr.0
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 05 Jul 2020 07:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KlydMnz4HoWmqFqALWcB92BjpmX+bYwyrUXSmDzYt6A=;
 b=oAeChJBBK3aIP+6KGjVQiB+6mCn/jV50m28KZDnFNGI7FpYoD6T3oiWDROnYOFj67f
 zkZJ224ZJijDFDOrCHxG3XdOITo9X3KGFfn7zjvPTkPYsLBwImTVhMUhuXW36QIUYFi5
 BtW+rZpFTsM4yKH/swhZ4KPHPn3I5QhV8QqaxrpBL61+YjQt1+NP6+yUpAAAC+ntK4o1
 SdW267yKoOLf6ujesMmkb5E0yscbtU7QqHO2o19vENqq0TSj259IExLg+GfpSPfg+YWu
 JDtN/Gmsjwg0IYeeVgKGdrzmYslboc0aigZ+e2xUCOZQ9pLyr5CB8N7KPqH+8XlDrm31
 s4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KlydMnz4HoWmqFqALWcB92BjpmX+bYwyrUXSmDzYt6A=;
 b=fDJYlDKnBudtiiDm3KPXp0SIanhE288ar7q+1XLMbQWl3Jy/4FECutDZFEqCfHvRJ0
 OjuFxvYS75jNGjcSQDxRMWmLsMqaimTHG5RTyaVVuLdFvp0nM/kjNjDQhlYNcukbfPfl
 fF4eMTpiMF8zHuHJb0CaZdNZcqnLtEm3BgwDFC3HRCQdfMyKheg+LQXGBEgooRo4R2UH
 Sq5a9w+NJ4aoHNUjkkarEpWpmI+lL1gR9OC4IKtm3PcAo8hYZv8Pm3BuJC0jDI3w665h
 y18Ro4k04eUITpKwZjMuexL88z+ybBdhJVNILX7GOG+R4smzHrqMvWjBM8JRZAWQHEsp
 72TA==
X-Gm-Message-State: AOAM533m8huwivJUUnqE70JOOsLUB/UG1E2+odl8F6brlrMwUCKlqtZ0
 ushz4aXLUS2ahAmVyx2MZCs=
X-Google-Smtp-Source: ABdhPJysnN5ZzCDEFxgIyS9x40CDlKwNW2+/R5czDJUyWcHVdPGTO3VRGQuGH7rKB10KGrq3O2Ofrg==
X-Received: by 2002:a0c:f691:: with SMTP id p17mr43939182qvn.157.1593959770786; 
 Sun, 05 Jul 2020 07:36:10 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:569e:3621:89b:963e])
 by smtp.gmail.com with ESMTPSA id
 j198sm15903286qke.71.2020.07.05.07.36.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jul 2020 07:36:10 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH v2 3/5] staging: rtl8712: Use ETH_ALEN instead of hardcoded
 value
Date: Sun,  5 Jul 2020 11:35:50 -0300
Message-Id: <20200705143552.9368-4-mukadr@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200705143552.9368-1-mukadr@gmail.com>
References: <20200705143552.9368-1-mukadr@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use macro ETH_ALEN which defines the number of octets in
an ethernet address.

Signed-off-by: Mauro Dreissig <mukadr@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index d3fc6fa9a715..d53efdfc9bf0 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -343,7 +343,7 @@ uint rtl8712_hal_init(struct _adapter *padapter)
 	/* Fix the RX FIFO issue(USB error) */
 	r8712_write8(padapter, 0x1025fe5C, r8712_read8(padapter, 0x1025fe5C)
 		     | BIT(7));
-	for (i = 0; i < 6; i++)
+	for (i = 0; i < ETH_ALEN; i++)
 		padapter->eeprompriv.mac_addr[i] = r8712_read8(padapter,
 							       MACID + i);
 	return _SUCCESS;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

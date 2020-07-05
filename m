Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F31214E61
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Jul 2020 20:09:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D70487FB5;
	Sun,  5 Jul 2020 18:09:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TFOPnFUCedZN; Sun,  5 Jul 2020 18:09:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46A9D87EAC;
	Sun,  5 Jul 2020 18:09:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A4631BF3E6
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 18:09:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6662187EA7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 18:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hkcSCBYEiehZ
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 18:09:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B1D3287E6E
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  5 Jul 2020 18:09:52 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id u12so27386713qth.12
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 05 Jul 2020 11:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UKqD/THH94C6Bll3GwSfhcIIb/nG2A05yYwAITqj2Jc=;
 b=B+mwmxgheauG9DSdxP5uiLVewDFXtx16UiyXgy2pXeQTww73Tb3R4Z790wK0vS2u+C
 APyEKIZIRo5EY0wFeRDGTa9krTZnGJC1VJ0PkGSxE2qkfHFcPIhs5SlwHAT955Hd0uE5
 2XdJLuSg0C25jeS56SIutVq+Y+LUkhOxccA/heYm0/M+RKUjWj+7mWbf01AaUFBMNOoC
 xay0vWir99cga/TMRzdHt448tFv5+GIsasyLM/XrEwSSpfmWNKJRNy5YSdHG7/RXpcXP
 QO0ohsfXJSKrEmdDaQa0zKIPekesvK7Y+AAxA+tKrqNunZ6Wg+w6Dpd90OOTfzzilE21
 U74g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UKqD/THH94C6Bll3GwSfhcIIb/nG2A05yYwAITqj2Jc=;
 b=CrOA+wa3T0dQ93SP3JZ2QFGBIEAI6fd/PfSTXjtkSW0cF+pUT18xQR26+zOEIy+Yna
 XjFUTO0dit1aFQW780g5wusqKWzz8wLgevOuO37XSc1ZwlcTa5qamnf176hRUz2bgZ44
 cRLwcSyk1cZBusHcAodMF8UBPYgx/NXZPWf/k4bCzCeyOnAM72ZB5D/Y+EaMXhgy6TaT
 hAQ63hBrgzeeLy49lLc2b7JDhNSmtf+Ra3WWOFzw6nTQ5o455lNmitT3abwGqs0Auy98
 UWnx5qq1azOk/6Kp13pN4G4V2a/QCWxdnF3ej1Iwc9u7FGrgqJJaiuzfdheJW9kvfVOx
 xenw==
X-Gm-Message-State: AOAM532ZInCJY1GatuGWadzc0ScuIl9Dl6d0vM/bLEMJpcGNR9m0w9XW
 dsBSBJN6OkNlJ6etv4sOT8E=
X-Google-Smtp-Source: ABdhPJw29QNyT/beBuA+Kr6x973Z8DLmLEFO+aBpa9U9udUk3NgvXPKCUUzACH+Pwdzw0Q3fg4BBUw==
X-Received: by 2002:aed:2f46:: with SMTP id l64mr11830932qtd.1.1593972591650; 
 Sun, 05 Jul 2020 11:09:51 -0700 (PDT)
Received: from localhost.localdomain ([2804:14d:7481:1475:569e:3621:89b:963e])
 by smtp.gmail.com with ESMTPSA id
 r7sm17196650qtm.66.2020.07.05.11.09.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jul 2020 11:09:51 -0700 (PDT)
From: Mauro Dreissig <mukadr@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com, driverdev-devel@linuxdriverproject.org
Subject: [PATCH] staging: rtl8712: Annotate r8712_sitesurvey_cmd()
Date: Sun,  5 Jul 2020 15:09:44 -0300
Message-Id: <20200705180944.20958-1-mukadr@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add __must_hold() sparse annotation to r8712_sitesurvey_cmd(),
replacing the comments on top of the function.

Signed-off-by: Mauro Dreissig <mukadr@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index 26b618008fcf..c7523072a660 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -168,14 +168,9 @@ void r8712_free_cmd_obj(struct cmd_obj *pcmd)
 	kfree(pcmd);
 }
 
-/*
- *	r8712_sitesurvey_cmd(~)
- *		### NOTE:#### (!!!!)
- *		MUST TAKE CARE THAT BEFORE CALLING THIS FUNC,
- *		YOU SHOULD HAVE LOCKED pmlmepriv->lock
- */
 u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 			struct ndis_802_11_ssid *pssid)
+	__must_hold(&padapter->mlmepriv.lock)
 {
 	struct cmd_obj	*ph2c;
 	struct sitesurvey_parm	*psurveyPara;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

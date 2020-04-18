Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ED21AF2E3
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Apr 2020 19:37:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD131882BA;
	Sat, 18 Apr 2020 17:37:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Isf7ukqGF1P; Sat, 18 Apr 2020 17:37:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1AE2387535;
	Sat, 18 Apr 2020 17:37:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 97A371BF417
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 17:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9278D203A0
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 17:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WuONMh4xz-6I for <devel@linuxdriverproject.org>;
 Sat, 18 Apr 2020 17:37:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 71A1E20016
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 17:37:38 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id r26so6431082wmh.0
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 10:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=kd5smkYSSB4FMGfeUinz8PyTLct8IRvqqCqI7WSgIBU=;
 b=NuegS+6RU6ia5geEkqb5kLREoT0jq0nUGis6p1b9XDHVbMAwKxa3ZGYieIlqBtIfzt
 cAYjqY8Vy0CpSgf/GWrNZp5teinkmGXZKGyswMKqt2r/tzMa/53Y0ar2yYsvdTh0LfXL
 rgsbj3CMiA3xS3IEISmciPQFV/NQ5qpwCLgOnQg683wwQ5WBaiEA9XzZ5t4kbOmnJSEF
 JGQAaE/wx1hvD0JZtbrUDYrJeGWeWIIAx1ruNcX27W89IEps9/Uil8Dfv16gFAsACMj4
 5i5MzOKPDECSE5BDBY7f9eBfLy15DaKLTh/BwzAS0MkSrXTBHXuYsELn0hMVMWC6lQL0
 uplA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=kd5smkYSSB4FMGfeUinz8PyTLct8IRvqqCqI7WSgIBU=;
 b=Mc4ExAJ2bVYGwMNA/cTpGIRZ5GS126D9bCQPuQ5F0aE+ZY7DWmShhVrSQkHVxvITqD
 dFxMPuKJF7cgQCezq7r9pXvabBvoutPAmPxMgVAKgDs807bq6qj1BEz5Cfz9TuRZ+I71
 KfJjC2MzDk/79T+CBUKZznxpfNUXhdKV4THyfIXd2MxnV9RPfz8+1HFewOBN1n66iKdg
 b7+w+Kwn3fvPaLrDT4pQAHEiamBUnCNqXziIXObvjwIdb0mY3AyFKrFgSrGMr07xo+Y3
 cDQZr5ObN6FTr4XEKDV6aIKQKbheq1gVC+P2aMD397fkK8gk2X+XtmLerLHPhngaCUfd
 Kgng==
X-Gm-Message-State: AGi0PuZM8PLo7FFKspyvmvqiWWQCsIhmfSkenNw8GOhIctUIM4ucBXNn
 bA8Zb8Pv+LFwB2AAzMm8/+c=
X-Google-Smtp-Source: APiQypIY70su8W+ZNnjqvova5Wr4ao3gpM7K7eZKfG1Rg0ssq+ak32kSc0NvFKqyax3G/SUvXbiWxw==
X-Received: by 2002:a1c:b144:: with SMTP id a65mr9733624wmf.54.1587231456994; 
 Sat, 18 Apr 2020 10:37:36 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.57.threembb.co.uk. [188.29.165.57])
 by smtp.gmail.com with ESMTPSA id
 s8sm6929138wru.38.2020.04.18.10.37.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 10:37:36 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH ] staging: vt6656: Fix calling conditions of vnt_set_bss_mode
Message-ID: <c64e7134-c1a1-ecd1-1e0c-e0bfe002740b@gmail.com>
Date: Sat, 18 Apr 2020 18:37:35 +0100
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
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

vnt_set_bss_mode needs to be called on all changes to BSS_CHANGED_BASIC_RATES,
BSS_CHANGED_ERP_PREAMBLE and BSS_CHANGED_ERP_SLOT

Remove all other calls and vnt_update_ifs which is called in vnt_set_bss_mode.

Fixes an issue that preamble mode is not being updated correctly.

Fixes: c12603576e06 ("staging: vt6656: Only call vnt_set_bss_mode on basic rates change.")
Cc: stable <stable@vger.kernel.org>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index fcd0fe5e6d72..85d4133315b1 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -625,8 +625,6 @@ static int vnt_add_interface(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
 
 	priv->op_mode = vif->type;
 
-	vnt_set_bss_mode(priv);
-
 	/* LED blink on TX */
 	vnt_mac_set_led(priv, LEDSTS_STS, LEDSTS_INTER);
 
@@ -706,7 +704,6 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
 		priv->basic_rates = conf->basic_rates;
 
 		vnt_update_top_rates(priv);
-		vnt_set_bss_mode(priv);
 
 		dev_dbg(&priv->usb->dev, "basic rates %x\n", conf->basic_rates);
 	}
@@ -735,11 +732,14 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
 			priv->short_slot_time = false;
 
 		vnt_set_short_slot_time(priv);
-		vnt_update_ifs(priv);
 		vnt_set_vga_gain_offset(priv, priv->bb_vga[0]);
 		vnt_update_pre_ed_threshold(priv, false);
 	}
 
+	if (changed & (BSS_CHANGED_BASIC_RATES | BSS_CHANGED_ERP_PREAMBLE |
+		       BSS_CHANGED_ERP_SLOT))
+		vnt_set_bss_mode(priv);
+
 	if (changed & (BSS_CHANGED_TXPOWER | BSS_CHANGED_BANDWIDTH))
 		vnt_rf_setpower(priv, conf->chandef.chan);
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

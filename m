Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCC71AF2E0
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Apr 2020 19:37:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39EF0863A1;
	Sat, 18 Apr 2020 17:37:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MkEOEAfx0ew7; Sat, 18 Apr 2020 17:37:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 216BB860CF;
	Sat, 18 Apr 2020 17:37:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 774081BF417
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 17:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 70EB6872A6
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 17:37:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xwL6KGCJEPAJ for <devel@linuxdriverproject.org>;
 Sat, 18 Apr 2020 17:37:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 96CB8862B7
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 17:37:22 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id g12so6412835wmh.3
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 10:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=kd5smkYSSB4FMGfeUinz8PyTLct8IRvqqCqI7WSgIBU=;
 b=m0YBAMO+WbOSfBzFNh/zTyWpfKuquX6JVZcYc1RO47R4U8ERmZkkp77mvErsv2TMNx
 AHnJWPahXlZRTaR3gKiIXUg5S0UU6XY0yM8HrzQOBA0ebNTbTzk1CKyuXm6nH+7Kwc+n
 yHoH6IffyFpAPWwPKG6R4Rd6lCiC7MWXDlWLJdRw3Un+Gf2DQsmMCL4TqLgZgCf0W7pj
 uwGWhJKD67nwdaciNeAxwx8afn8aG0s4dbCE4C7Mt2Plmx2f9YCi+BoPGNbMtJqeqiTs
 fAqyjV+X3NQXPQUji5TFPnQ+j0MSt/c4AJNtWbI0rt8SnZKQcxRdGmRJs9RaWhiy6Oe0
 tAMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=kd5smkYSSB4FMGfeUinz8PyTLct8IRvqqCqI7WSgIBU=;
 b=eWoDhQuPCgxT7/xAFTIY6ff7TsYnOQLKZWCMMkHEWVhzgtHqNhDG6D30bvlQOLEd0a
 /TVG6+gGQjXvrUVO7WhrBZqJ57pYDNZwXC3ez1Ju0siESwTAKnjoQITYbTZMaOHLZXXu
 zR6TORNTr+Y1+OPNBvBjjnGX9d0IyI84SyZiwMYbHQWqd0GZeOVBDVBPfYmzPjVV69cg
 hwROutFWPa8TOm4WMKpby6lajAUrTTui1DR9AqopuEWkXVVMOlkDd6mGZ9Sq2450kV5n
 j9RC4KH9tc+ysV45SwoIdtQ2kuUli6vP4+U4ZK2CwYyWjstzJyqL2Q0/hvTWlCbd6MQN
 pW3g==
X-Gm-Message-State: AGi0PuZ5BSIWoc2yQ4tbWl63ofuLyecg97WSL5SUU9OTKbGAUByJoXb9
 2t/P1lv3Xx++F0SEqwSiaPA=
X-Google-Smtp-Source: APiQypLmOvCvSP1tOFtJN3HPdd0wH3K3oZRVBMMLldEYYyymUSSE1PdrjmMe/joQM3JgTjuqqDCilw==
X-Received: by 2002:a7b:c3cf:: with SMTP id t15mr9224669wmj.34.1587231441017; 
 Sat, 18 Apr 2020 10:37:21 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.57.threembb.co.uk. [188.29.165.57])
 by smtp.gmail.com with ESMTPSA id
 q187sm12501075wma.41.2020.04.18.10.37.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 10:37:20 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH ] staging: vt6656: Fix calling conditions of vnt_set_bss_mode
Message-ID: <44110801-6234-50d8-c583-9388f04b486c@gmail.com>
Date: Sat, 18 Apr 2020 18:37:18 +0100
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

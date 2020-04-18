Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1B01AF26A
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Apr 2020 18:43:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB3768644F;
	Sat, 18 Apr 2020 16:43:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 41mCAwjSQUpH; Sat, 18 Apr 2020 16:43:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 71E7784C1E;
	Sat, 18 Apr 2020 16:43:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A13741BF479
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 16:43:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 991BA86B90
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 16:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oG1cRJdoq-Hb for <devel@linuxdriverproject.org>;
 Sat, 18 Apr 2020 16:43:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AFD5A86838
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 16:43:28 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id i10so6627321wrv.10
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 09:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=iNg283N5W06QIOUQwrr2Mr28fG26BEGAnQLlw95W7Vk=;
 b=l4uwzmH+jB63wEowrpIUnU4NvYXXNyzkgm3JWMrire8H4Fyl7C7U+UXIK7Xt9fxuhY
 weY5EYdExkKjbUQ2bW/+ylqeBqJu5TLyetCQjiwLYxnOD31WMsm2Dx48jd4dgeUnHtgO
 /fukPtmyddwX/PrW5rH7o+3WevBP1qT7oPx4rfwKQy3sOUTYtvXop5cjTkuD1YDxjjlW
 H7ZRR6dE/PZeNL9/CfO90f+e7xK1E6YlV7cuvFSKNKf79d7mWexVWqkTa19igO7lUPbD
 yw/4GTxcQAffh4u0dPV9es/MCvJ59/+zAw98c71u8fsiZ9WrGwSTfw1xJAgYUwvurlWE
 8LvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=iNg283N5W06QIOUQwrr2Mr28fG26BEGAnQLlw95W7Vk=;
 b=jI9xmW8Yyu1PzDF1B5SN80BRdNtae+5EVRgabFiAKhcBQfqVYHmg8NuKzxp/iU4ehU
 AY8Z3llEalgngqSuIZrHBEMWB6QuxSOiNMO5amPZwdzXZzrRePJTarUyzZaJOQ/JgoRZ
 wjHowcyGR+drE0WMucRwB3iB/L4fXl9QzkPm4fyPzLpkF3w9T2epwy3R6Qy657uu2boc
 qUNWYEmLTLOYGbtcZ5RwfB1N+EP7cDWbMb86wHeSJBL+RSZlw5ZH/2CueprZ036XJMxH
 VnzsKVntYqXJc41vHlOH1A/mp1SnnpR982LpuML+9bkMLKsNmfMnwUTjMktA+caaJH69
 n8jg==
X-Gm-Message-State: AGi0PuZLDq7K+jb3GVOSNoRXcdnUEaZIrKF19f1eoLYb3R7a47Lp//VU
 QkT/4RhbUaKERSCvpeHJibw=
X-Google-Smtp-Source: APiQypId+j/j49QIFvlMqBsMHGeD1CVJ88jDuC8ok/VU2cD12xD/KDvuO7yl6NvnrkAnOwTjg/uVTw==
X-Received: by 2002:adf:8b45:: with SMTP id v5mr10396563wra.175.1587228207209; 
 Sat, 18 Apr 2020 09:43:27 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.57.threembb.co.uk. [188.29.165.57])
 by smtp.gmail.com with ESMTPSA id
 i97sm38784035wri.1.2020.04.18.09.43.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 09:43:26 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH] staging: vt6656: Fix drivers TBTT timing counter.
Message-ID: <375d0b25-e8bc-c8f7-9b10-6cc705d486ee@gmail.com>
Date: Sat, 18 Apr 2020 17:43:24 +0100
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

The drivers TBTT counter is not synchronized with mac80211 timestamp.

Reorder the functions and use vnt_update_next_tbtt to do the final
synchronize.

Fixes: c15158797df6 ("staging: vt6656: implement TSF counter")
Cc: stable <stable@vger.kernel.org>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index b2729d5eadfb..4213679345eb 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -762,12 +762,15 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
 			vnt_mac_reg_bits_on(priv, MAC_REG_TFTCTL,
 					    TFTCTL_TSFCNTREN);
 
-			vnt_adjust_tsf(priv, conf->beacon_rate->hw_value,
-				       conf->sync_tsf, priv->current_tsf);
-
 			vnt_mac_set_beacon_interval(priv, conf->beacon_int);
 
 			vnt_reset_next_tbtt(priv, conf->beacon_int);
+
+			vnt_adjust_tsf(priv, conf->beacon_rate->hw_value,
+				       conf->sync_tsf, priv->current_tsf);
+
+			vnt_update_next_tbtt(priv,
+					     conf->sync_tsf, conf->beacon_int);
 		} else {
 			vnt_clear_current_tsf(priv);
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

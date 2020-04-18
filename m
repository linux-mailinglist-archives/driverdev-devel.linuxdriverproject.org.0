Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 561C11AF24C
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Apr 2020 18:24:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9586B860D6;
	Sat, 18 Apr 2020 16:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q6Tdf7AVMGRW; Sat, 18 Apr 2020 16:24:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A1DB85721;
	Sat, 18 Apr 2020 16:24:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C23C51BF479
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 16:24:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BEB55877A0
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 16:24:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nciNS5Sk-iyA for <devel@linuxdriverproject.org>;
 Sat, 18 Apr 2020 16:24:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F1D24872A6
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 16:24:53 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id d17so6582006wrg.11
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 09:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=XGEj3VJB73XMSjdKjc291NmLGevIXZKdlnrTsayg+jI=;
 b=SIZzTwJn1Yk5or/nLv3lvJko9gK7r7meNLSAizJaXd2P+BkrneGSkZaX7F7PvWRHGx
 tskb8uW80qPF4B1Wflmodvg1Ku2ssALa/mnOMD8UHGbC9M0bNUFmUvDgCxh1hSsv+OuC
 NCqnDREXNCtElIaiBEXV9lOObMRnMql0d8Aiec9C6IW0u/cpOFUjFQg771wuAuTLdSgw
 18yYusrLrPg86sbv1amNBFhJVoauC+mJqk8fmg6gEQohbqRyVOFwX0Ra/bupcedSVs58
 2/P9WYshzBp/Jssq94je885lPDRKRsVQQK7dpP3fimazY1DB/0ByqQV0StDCVbQIu/Ml
 gHcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=XGEj3VJB73XMSjdKjc291NmLGevIXZKdlnrTsayg+jI=;
 b=QQJClttgq3TcMBvIrnm3RBi+H/ToI3uyMmHqyFPBdKj/we5a6mFThZ8K4TiMfxG6Q6
 WBA/5yF8gvIZs627HpOh/e4QB8Jpj/Dr4EFf1oQZu06IsUR8MrX9WdGaq3FQBfsZofoZ
 O2WV0y/L5eVW9Wn4GRJ4CC0F2KL92y5mbhCHEvU0wzWeER54HiMgMShufi029LZ/2mTs
 qEs6hztxw54Q4dAk5ZEX00U2hbtYd9R+tx2cWYAjRDl2WVzDseE0sHjDqRGpIL9GRbmv
 nSSUu0UICY3vYsw7jCTKHvMAoH182i6kYWypEl9gcuxgBNtY2thrursc066C7IRA6Dm7
 Pi4A==
X-Gm-Message-State: AGi0Puay2uEmX4MoAx5wC72cgVsDA6Ja9TVZAs7MtXV/Q8E74P/GAGc5
 juriDVwuB9/fQ+dxTjVKJHM=
X-Google-Smtp-Source: APiQypJ6/MElbXcE0UnT48kiPNKQIpXKPuGW3gXNfoZXTy3FbSd75/GBbPf07PiHkG4fgsT381XeUQ==
X-Received: by 2002:a5d:4447:: with SMTP id x7mr9540180wrr.299.1587227092419; 
 Sat, 18 Apr 2020 09:24:52 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.57.threembb.co.uk. [188.29.165.57])
 by smtp.gmail.com with ESMTPSA id
 x18sm35822640wrs.11.2020.04.18.09.24.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 18 Apr 2020 09:24:51 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH] staging: vt6656: Don't set RCR_MULTICAST or RCR_BROADCAST by
 default.
Message-ID: <2c24c33d-68c4-f343-bd62-105422418eac@gmail.com>
Date: Sat, 18 Apr 2020 17:24:50 +0100
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

mac80211/users control whether multicast is on or off don't enable it by default.

Fixes an issue when multicast/broadcast is always on allowing other beacons through
in power save.

Fixes: db8f37fa3355 ("staging: vt6656: mac80211 conversion: main_usb add functions...")
Cc: stable <stable@vger.kernel.org>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 3c76d3cb5bbe..b2729d5eadfb 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -801,15 +801,11 @@ static void vnt_configure(struct ieee80211_hw *hw,
 {
 	struct vnt_private *priv = hw->priv;
 	u8 rx_mode = 0;
-	int rc;
 
 	*total_flags &= FIF_ALLMULTI | FIF_OTHER_BSS | FIF_BCN_PRBRESP_PROMISC;
 
-	rc = vnt_control_in(priv, MESSAGE_TYPE_READ, MAC_REG_RCR,
-			    MESSAGE_REQUEST_MACREG, sizeof(u8), &rx_mode);
-
-	if (!rc)
-		rx_mode = RCR_MULTICAST | RCR_BROADCAST;
+	vnt_control_in(priv, MESSAGE_TYPE_READ, MAC_REG_RCR,
+		       MESSAGE_REQUEST_MACREG, sizeof(u8), &rx_mode);
 
 	dev_dbg(&priv->usb->dev, "rx mode in = %x\n", rx_mode);
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

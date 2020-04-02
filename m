Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B03B19CC7D
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 23:41:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2551587612;
	Thu,  2 Apr 2020 21:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A-zemd0nVOJd; Thu,  2 Apr 2020 21:41:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D8C90875E2;
	Thu,  2 Apr 2020 21:41:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AA8E41BF3E5
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 21:41:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9FD0B204AD
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 21:41:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gMM039biGYb3 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 21:41:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 901F11FFC1
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 21:41:38 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id m17so5989843wrw.11
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 14:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=d2LuQ9+tNaM4iX/cPzhdZ44JC45KzMGRSOTVMyTga64=;
 b=c79F/GVEsGXKxyOu7A9T1Qfohd2O5y0eRvw8sV/dT6rBmaI28MM9db9/0HN9CPuXzL
 361BRQBo8MFfwCZr3fpIwnlZR5Mup51v4ON7YZ66/4Uo18Fa/oC3UZ8M7dFXuBLkgMmF
 DiHM6zR0vLV2JRMww5ocIJsvGwvJjf5Nph6YIPup8ybhLWqYSVidC2iEdlYdCwruhP6u
 ZxQZlaadfZpKkmEoyo+5KQ6BsF2nIVyUHnqcjRky61V9oqT++hDaZr7ij5cjIqLA8//C
 8d9+HstFCYn0kV0EirNcFnc8T6Sew/u5rN7+H9fTL0NsFPuWmz/pdRo6piRwjIrEHbV1
 i92A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=d2LuQ9+tNaM4iX/cPzhdZ44JC45KzMGRSOTVMyTga64=;
 b=OkSSkDscpEJisOBkAXLS/cPZBj19YUU6CUx9E383yZsfi4hde/qZcK6X/kIC4Rx1nY
 n6OJqB+/vc4oZVSlmji9NW1BAOesBiJStcUBIUXURO9HXk98dtz5gMA5yItE8vrb39eK
 JJzTuh1GUfv9thD1MpOrsmMRCmowLGFyUGltzhMYooXoPRazC+RboBbuBVe4jdRp8n42
 8IiZrkv9KXcJJPejjm1bNaa03HKaPdCSHfPrR3h4EQNenAnNY9M1cSfZoQ2tHTsCxk+C
 ot3Fr77b/keiU5ODHVPVY8y19zd7nabz3IcGi06S2sR/AywfmKEQWg9dTVr0NDf5yO7Z
 wMOw==
X-Gm-Message-State: AGi0PuaUSCNvQhRfRDK0OgH/bRgaFN6ftM/AhUnyR4jiVd03BDeAoJ7P
 v9F2KE/U93cei9N95COqrb5CWCUi
X-Google-Smtp-Source: APiQypLTExJmoPfCrwiXbr6n2YgIiH3ReADoHv65LIhP5tC20uJdWQFk4OyVzCWisp79x/KL6F59qw==
X-Received: by 2002:a5d:5230:: with SMTP id i16mr5423057wra.15.1585863697150; 
 Thu, 02 Apr 2020 14:41:37 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.56.threembb.co.uk. [188.29.165.56])
 by smtp.gmail.com with ESMTPSA id
 91sm3123622wrf.79.2020.04.02.14.41.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 14:41:36 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/2] staging: vt6656: set all ofdm rates to default
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <9a52d7f4-dd3e-efdc-eef8-bb794f7dea6d@gmail.com>
Date: Thu, 2 Apr 2020 22:41:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
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
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

mac80211 rate control decides which odfm rates to use so all of
them should be set enabled at the appropriate bit rate.

This means vnt_get_ofdm_rate is no longer required.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/card.c | 54 +++--------------------------------
 1 file changed, 4 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..4abbe9b30b65 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -100,48 +100,6 @@ static u16 vnt_get_cck_rate(struct vnt_private *priv, u16 rate_idx)
 	return RATE_1M;
 }
 
-/*
- * Description: Get OFDM mode basic rate
- *
- * Parameters:
- *  In:
- *      priv		- The adapter to be set
- *      rate_idx	- Receiving data rate
- *  Out:
- *      none
- *
- * Return Value: response Control frame rate
- *
- */
-static u16 vnt_get_ofdm_rate(struct vnt_private *priv, u16 rate_idx)
-{
-	u16 ui = rate_idx;
-
-	dev_dbg(&priv->usb->dev, "%s basic rate: %d\n",
-		__func__,  priv->basic_rates);
-
-	if (!vnt_ofdm_min_rate(priv)) {
-		dev_dbg(&priv->usb->dev, "%s (NO OFDM) %d\n",
-			__func__, rate_idx);
-		if (rate_idx > RATE_24M)
-			rate_idx = RATE_24M;
-		return rate_idx;
-	}
-
-	while (ui > RATE_11M) {
-		if (priv->basic_rates & (1 << ui)) {
-			dev_dbg(&priv->usb->dev, "%s rate: %d\n",
-				__func__, ui);
-			return ui;
-		}
-		ui--;
-	}
-
-	dev_dbg(&priv->usb->dev, "%s basic rate: 24M\n", __func__);
-
-	return RATE_24M;
-}
-
 /*
  * Description: Calculate TxRate and RsvTime fields for RSPINF in OFDM mode.
  *
@@ -289,20 +247,16 @@ void vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
 	vnt_calculate_ofdm_rate(RATE_24M, bb_type, &tx_rate[4], &rsv_time[4]);
 
 	/*RSPINF_a_36*/
-	vnt_calculate_ofdm_rate(vnt_get_ofdm_rate(priv, RATE_36M),
-				bb_type, &tx_rate[5], &rsv_time[5]);
+	vnt_calculate_ofdm_rate(RATE_36M, bb_type, &tx_rate[5], &rsv_time[5]);
 
 	/*RSPINF_a_48*/
-	vnt_calculate_ofdm_rate(vnt_get_ofdm_rate(priv, RATE_48M),
-				bb_type, &tx_rate[6], &rsv_time[6]);
+	vnt_calculate_ofdm_rate(RATE_48M, bb_type, &tx_rate[6], &rsv_time[6]);
 
 	/*RSPINF_a_54*/
-	vnt_calculate_ofdm_rate(vnt_get_ofdm_rate(priv, RATE_54M),
-				bb_type, &tx_rate[7], &rsv_time[7]);
+	vnt_calculate_ofdm_rate(RATE_54M, bb_type, &tx_rate[7], &rsv_time[7]);
 
 	/*RSPINF_a_72*/
-	vnt_calculate_ofdm_rate(vnt_get_ofdm_rate(priv, RATE_54M),
-				bb_type, &tx_rate[8], &rsv_time[8]);
+	vnt_calculate_ofdm_rate(RATE_54M, bb_type, &tx_rate[8], &rsv_time[8]);
 
 	put_unaligned(phy[0].len, (u16 *)&data[0]);
 	data[2] = phy[0].signal;
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

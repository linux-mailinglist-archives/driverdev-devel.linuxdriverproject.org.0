Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 842FC1C110C
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 May 2020 12:43:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C5B78AA28;
	Fri,  1 May 2020 10:43:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1LJ5yz89FgmY; Fri,  1 May 2020 10:43:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C35F8AA1C;
	Fri,  1 May 2020 10:43:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4AB191BF357
 for <devel@linuxdriverproject.org>; Fri,  1 May 2020 10:43:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3F4098AA1C
 for <devel@linuxdriverproject.org>; Fri,  1 May 2020 10:43:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8jydwcLWUSlW for <devel@linuxdriverproject.org>;
 Fri,  1 May 2020 10:43:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E1D218AA18
 for <devel@driverdev.osuosl.org>; Fri,  1 May 2020 10:43:28 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id l18so343011wrn.6
 for <devel@driverdev.osuosl.org>; Fri, 01 May 2020 03:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=oLW9QP+uFGtsQ3xitP0v7EQjyBZf41Mp396PMAaih5A=;
 b=lt8r7KZmIrSb+h7Kq01GabPqoAJcdIIaoL1HtjyFmdjosIaCSl4BII75tL1IYdSG3z
 7EN+A6EfOul+LdCgtmY4htqbh6PLpJ5FXblp6djtII7DGpkVUncLLZP3/7NqznYwneLs
 TQu1T6GB7hR1DfVm69BzA2+xRYg+sCtAQeEOXoD2rK5xzWhSdWBGvziOHCH5v5oQvA8N
 AyGDrJGwZuBKetuzKLr+9i3/KeDsrhIIeR/TwTM+UReP4tlkOQxqH2+fL7D+aspSwrRi
 PHzsYcZdRka/EtyyQlxS4B2JH+OHyUnd3zbLhvveOwwqug1hMWZuZMJGT/C8wcdqQ8t+
 c9Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=oLW9QP+uFGtsQ3xitP0v7EQjyBZf41Mp396PMAaih5A=;
 b=drPhy5nD8hzOK5TB9CoYV/ZFKFsh0qB3ujF5ODTysxnxe3Z4MzErLZhw5XYcCiN5dU
 VXNORxpG5L2LfuLYbTGlFbBPHM3CNjJJtoiL4mnsMsADI9FtMrANH1Jpp0TKwM+w3SwO
 SMKwwroeIAL/jfQ1Cof1PZfcsnJFMvgSH0taPCKpg7znuswwwMuWjFDvqVFw4fV4y5RF
 Mk+EYBYBOZxLvXdkNiYQlnIlzUX6Zttt4YcLmzY05XK8zOjAl/Gf3lOQVB612B1K06ki
 35kva+IeRASreCOC+hZEkheOYt+uiryWHGAHWzblUQMBhiN/Or1u3CtxgdF0vHBpENfS
 DeZA==
X-Gm-Message-State: AGi0PubRkcBWIlgBbuFWyjBvrygF/Epjs6yYutlkWooDCNQ5J0p7aQnI
 ndqiHfmiOcUz2ptDewJOIqQ=
X-Google-Smtp-Source: APiQypIwB3DpAzLiDZDKqvBs2eET4ezmu9OlTO4vA1B6CgCw90t+Q73igEikzDaW7CC6/o/IVfoslg==
X-Received: by 2002:adf:fcc8:: with SMTP id f8mr3526222wrs.230.1588329807308; 
 Fri, 01 May 2020 03:43:27 -0700 (PDT)
Received: from [192.168.43.18] (94.197.121.192.threembb.co.uk.
 [94.197.121.192])
 by smtp.gmail.com with ESMTPSA id a24sm3336487wmb.24.2020.05.01.03.43.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 May 2020 03:43:26 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <malcolmpriestley@gmail.com>
Subject: [PATCH] staging: vt6656: Return on isr0 when zero.
Message-ID: <8dccc74d-d0bb-e8e7-df81-dfd81e3fd7d8@gmail.com>
Date: Fri, 1 May 2020 11:43:25 +0100
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
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When isr0 is zero there is nothing more todo so return and
pull following code in.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/usbpipe.c | 47 ++++++++++++++++----------------
 1 file changed, 23 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index 91b62c3dff7b..e8efdeadb1a7 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -196,32 +196,31 @@ static void vnt_int_process_data(struct vnt_private *priv)
 	if (int_data->tsr3 & TSR_VALID)
 		vnt_int_report_rate(priv, int_data->pkt3, int_data->tsr3);
 
-	if (int_data->isr0 != 0) {
-		if (int_data->isr0 & ISR_BNTX &&
-		    priv->op_mode == NL80211_IFTYPE_AP)
-			vnt_schedule_command(priv, WLAN_CMD_BECON_SEND);
-
-		if (int_data->isr0 & ISR_TBTT &&
-		    priv->hw->conf.flags & IEEE80211_CONF_PS) {
-			if (!priv->wake_up_count)
-				priv->wake_up_count =
-					priv->hw->conf.listen_interval;
-
-			if (priv->wake_up_count)
-				--priv->wake_up_count;
-
-			/* Turn on wake up to listen next beacon */
-			if (priv->wake_up_count == 1)
-				vnt_schedule_command(priv,
-						     WLAN_CMD_TBTT_WAKEUP);
-		}
-		priv->current_tsf = le64_to_cpu(int_data->tsf);
+	if (!int_data->isr0)
+		return;
+
+	if (int_data->isr0 & ISR_BNTX && priv->op_mode == NL80211_IFTYPE_AP)
+		vnt_schedule_command(priv, WLAN_CMD_BECON_SEND);
+
+	if (int_data->isr0 & ISR_TBTT &&
+	    priv->hw->conf.flags & IEEE80211_CONF_PS) {
+		if (!priv->wake_up_count)
+			priv->wake_up_count = priv->hw->conf.listen_interval;
 
-		low_stats->dot11RTSSuccessCount += int_data->rts_success;
-		low_stats->dot11RTSFailureCount += int_data->rts_fail;
-		low_stats->dot11ACKFailureCount += int_data->ack_fail;
-		low_stats->dot11FCSErrorCount += int_data->fcs_err;
+		if (priv->wake_up_count)
+			--priv->wake_up_count;
+
+		/* Turn on wake up to listen next beacon */
+		if (priv->wake_up_count == 1)
+			vnt_schedule_command(priv, WLAN_CMD_TBTT_WAKEUP);
 	}
+
+	priv->current_tsf = le64_to_cpu(int_data->tsf);
+
+	low_stats->dot11RTSSuccessCount += int_data->rts_success;
+	low_stats->dot11RTSFailureCount += int_data->rts_fail;
+	low_stats->dot11ACKFailureCount += int_data->ack_fail;
+	low_stats->dot11FCSErrorCount += int_data->fcs_err;
 }
 
 static void vnt_start_interrupt_urb_complete(struct urb *urb)
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

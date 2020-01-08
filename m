Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18448134F07
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jan 2020 22:41:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 77B83868F6;
	Wed,  8 Jan 2020 21:41:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id krT+l1daGra2; Wed,  8 Jan 2020 21:41:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45E448684A;
	Wed,  8 Jan 2020 21:41:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8ECCF1BF5AD
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 21:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 875CF8458C
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 21:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PYzL-C06LJJm for <devel@linuxdriverproject.org>;
 Wed,  8 Jan 2020 21:41:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E03148448B
 for <devel@driverdev.osuosl.org>; Wed,  8 Jan 2020 21:41:39 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id y11so5058532wrt.6
 for <devel@driverdev.osuosl.org>; Wed, 08 Jan 2020 13:41:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=2JUVfNzHf+ca/9tZv9C1SpG19oFH7h7lcov5JLIj/5o=;
 b=e1yQJuwzXb2HuGF+soaET59HI3jvktyr0R9WCDWnwMLHtrYpSyZBV34Gaiavz+E5Ow
 Vpt21NH3occ7mkgbJfImF62tr1kjtGd5TD8lKOgy8uIiBrcoHcNs4crPXf7V4spUfcI7
 pQcPslZhx6FXJKKHkxwifofhFcF88Tk4r26L9j5Mbk5SZA0G7ACi9pSiwFYHiulhTSSN
 HcHJzcu0YpdYLKDmNab/70rVPiTL+Gkg4+nSbBclU7Fxt5ICv0nUXn86/GGhQkyDd3Bz
 dUerKxuaTwgddlslUJrjYazx8KDNdl/WWLLa2QfERdmd819yCGElhfOYg5A8W00eid8e
 M4AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=2JUVfNzHf+ca/9tZv9C1SpG19oFH7h7lcov5JLIj/5o=;
 b=YwL014BahFXUxO3rDZ1LoA/EYPjD8FTvrCQZx0xI8E+qYyaZK0pau+TF09/CcHzzm+
 cbn0UATHepz8LbxQ+V91CP9FRZaZK8MiiLQ8u91M2zHncmsYTTKubBYnzhQu7Y5Z0Rgl
 /8AHmSDpPyxaBlZoBdAzwFVcZCoK+osgstYN3m+SlkVeN6i13sScx9ai9zuNIblmGyL7
 6/X2V68wASjodT7ZlbDiW+7lBUvETPn4XD6m49tvdkR9c5eSkEijD4RSuNkj0aiKWM1Q
 x3EMUTD1xQjY8yo8RQ9ZGQXpZ0cRo1ztRckyXhaH936dZWH533n+pUnzYPc3mLmCUOJ1
 49PQ==
X-Gm-Message-State: APjAAAUOED8OIuDMjNlhD0BbNqfx2z86q4H4mQhbFfOKiCy4V94I5mrV
 Edxo+wbIzOcMsvpcuyohdFF2JH9G
X-Google-Smtp-Source: APXvYqyJ2krz4MvBICvakmgMj9j5yZmm+tCsq/FzNmhwtc5bHCCfLxxwBvMJY2xBZy5PeOBSsvV1fw==
X-Received: by 2002:a5d:530e:: with SMTP id e14mr6753862wrv.250.1578519698177; 
 Wed, 08 Jan 2020 13:41:38 -0800 (PST)
Received: from [192.168.43.18] (188.29.164.206.threembb.co.uk.
 [188.29.164.206])
 by smtp.gmail.com with ESMTPSA id n67sm451583wmf.46.2020.01.08.13.41.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 13:41:37 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 3/4] staging: vt6656: Fix false Tx excessive retries reporting.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <340f1f7f-c310-dca5-476f-abc059b9cd97@gmail.com>
Date: Wed, 8 Jan 2020 21:41:36 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The driver reporting  IEEE80211_TX_STAT_ACK is not being handled
correctly. The driver should only report on TSR_TMO flag is not
set indicating no transmission errors and when not IEEE80211_TX_CTL_NO_ACK
is being requested.

Cc: stable <stable@vger.kernel.org>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/int.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/int.c b/drivers/staging/vt6656/int.c
index f40947955675..af215860be4c 100644
--- a/drivers/staging/vt6656/int.c
+++ b/drivers/staging/vt6656/int.c
@@ -99,9 +99,11 @@ static int vnt_int_report_rate(struct vnt_private *priv, u8 pkt_no, u8 tsr)
 
 	info->status.rates[0].count = tx_retry;
 
-	if (!(tsr & (TSR_TMO | TSR_RETRYTMO))) {
+	if (!(tsr & TSR_TMO)) {
 		info->status.rates[0].idx = idx;
-		info->flags |= IEEE80211_TX_STAT_ACK;
+
+		if (!(info->flags & IEEE80211_TX_CTL_NO_ACK))
+			info->flags |= IEEE80211_TX_STAT_ACK;
 	}
 
 	ieee80211_tx_status_irqsafe(priv->hw, context->skb);
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

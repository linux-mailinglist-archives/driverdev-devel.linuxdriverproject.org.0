Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4E81B6607
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 23:14:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E49DE86E23;
	Thu, 23 Apr 2020 21:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HQz3WGKuGdm8; Thu, 23 Apr 2020 21:14:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C967286DE7;
	Thu, 23 Apr 2020 21:14:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60B511BF2E5
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 21:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5D51686DE8
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 21:14:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rl8H6a0ZgLrC for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 21:14:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A54F386DE7
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 21:14:31 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id f13so8280542wrm.13
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 14:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=UqaUzhYpxz0lrWzJ6DPc0vNRY+etRrC0oeksk1Ww4Gs=;
 b=X2cJfeRWZp0JzMd8jTTQTj/Rb9Dl4QcQ4QoXMJZVALw3/l3qK8TpKqATlP4WVHvGDl
 N6bbd0rPPK49L39qy86FyYkc6bT8dPCdCwITha53gNhvImFyWSBpt3q1v9/xEnhNGJH7
 hj/7pcZS9qGaeJzB1OABn7AeB2MFfNEPIbFJnL3kmntVHsZhBy4heVBXnc4HNXfEoXAk
 V749tq9CvafXPuchZkyzNqSGFJ9IqKp6LYYOJ+hQn7LsL7BHt1kC2zgLqySoFZy5EI5h
 ekc84s/IrDp8rzqgm5bYwCcmwHcGeM8iKifX7VnwoGrfmH4rSDxwg9fuYLnVdla4uYyV
 bAHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=UqaUzhYpxz0lrWzJ6DPc0vNRY+etRrC0oeksk1Ww4Gs=;
 b=DfF7Y85r29E6w5gCZ5h5ynchteyGIJ7EwWgQLTe9AQ9gVLHoRN+4eBBpd9tNCqTj/y
 L6psMuVgD0BSH+maE/WvBSzjutvXQj80sJF+uMdEX/sQiHM9j4AzR6oXBndBYugLUfkV
 0BG7eQpS7rl3KWycKCb2E93DdZRnzu2+euscolwcf5+p6UdbKU0S3uipPvTvrR0ehuEf
 BfzIB/8zoVcuMfxBBKsGgIJw0a8ivJaXr9QiFSur+jzzL6n8OR6wLx0LK5KsvebqJ1Tj
 F8wMToadu1O2jjXCHJg86N9g7Wk0TJqAAJ7+O5bGcDAZUQMXndsTdMqweu0EfNAWE3yT
 K+gw==
X-Gm-Message-State: AGi0PubmeUEumehjUPEnjYtkU3MEyaNSSksPWMp//igFSb+QmTW279T0
 0jMdH0lgLLe2WRS67bNB/4w=
X-Google-Smtp-Source: APiQypLJzaiDg90Z9WoWkrOF+3EiBl2eIFduhI556E3nTfHEb6slLEJsFaZbrZWwnZWngt+HJKL13g==
X-Received: by 2002:a5d:5085:: with SMTP id a5mr7552471wrt.394.1587676470238; 
 Thu, 23 Apr 2020 14:14:30 -0700 (PDT)
Received: from [192.168.43.18] (94.197.120.138.threembb.co.uk.
 [94.197.120.138])
 by smtp.gmail.com with ESMTPSA id j68sm5538616wrj.32.2020.04.23.14.14.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 14:14:29 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/2] staging: vt6656: Remove set short time in
 vnt_init_registers.
Message-ID: <a2bfc4f5-3f7f-3718-6056-2907a004477f@gmail.com>
Date: Thu, 23 Apr 2020 22:14:28 +0100
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

The short time is set in vnt_bss_info_changed no need to set it
here.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 4bca0b99cf45..c0545932866c 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -401,19 +401,6 @@ static int vnt_init_registers(struct vnt_private *priv)
 	dev_dbg(&priv->usb->dev, "Network address = %pM\n",
 		priv->current_net_addr);
 
-	/*
-	 * set BB and packet type at the same time
-	 * set Short Slot Time, xIFS, and RSPINF
-	 */
-	if (priv->bb_type == BB_TYPE_11A)
-		priv->short_slot_time = true;
-	else
-		priv->short_slot_time = false;
-
-	ret = vnt_set_short_slot_time(priv);
-	if (ret)
-		goto end;
-
 	priv->radio_ctl = priv->eeprom[EEP_OFS_RADIOCTL];
 
 	if ((priv->radio_ctl & EEP_RADIOCTL_ENABLE) != 0) {
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

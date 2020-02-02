Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 368F714FD0E
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Feb 2020 13:27:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 337422048C;
	Sun,  2 Feb 2020 12:27:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tp2LkN+StHYN; Sun,  2 Feb 2020 12:27:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8CAE120480;
	Sun,  2 Feb 2020 12:27:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22F871BF239
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 12:27:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1A43286133
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 12:27:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Z0x46fTZy-i for <devel@linuxdriverproject.org>;
 Sun,  2 Feb 2020 12:27:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 37A6786156
 for <devel@driverdev.osuosl.org>; Sun,  2 Feb 2020 12:27:30 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id m16so14385276wrx.11
 for <devel@driverdev.osuosl.org>; Sun, 02 Feb 2020 04:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=IZlLOQyp62ykJD13LCRO0yd0g3YOI4L9Cfoqf+OJ1ac=;
 b=IoSJMGPjzVrIR30XKtivH8bXL/UMpssbQF9np3kKDvhfqV6JgBF8YekhOghnjcNbx9
 +z2BIViWpZe9XFiiSxUqMSWkFDayj9ZzoXYXMDuJHEwJjxWW4k55Y6elvxqhGYT7fU+u
 HHfhgsAyzMn8ZHLn59FLx8K96cRlcYd99UPz3amH8ogVbk+0Y4TBFBd/sMxpkQJG+wji
 1jXGD1UziEHpgpaqi2eAyEgAqQw+Ax74fSVh2UN5mFoafsHhv6CaMl00VQYFO4YVYSAI
 Sg4xJbfdFg8lFaTi6faFILno/ObL+EwQBVZVfIDR1bNEEfBrsbuYs0j0FaPT+B6OiZaL
 aBXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=IZlLOQyp62ykJD13LCRO0yd0g3YOI4L9Cfoqf+OJ1ac=;
 b=AJrqYIcNxLQAwyJP5Ju7prS3lnt8pzXJS1OwwSlYP/wtK+3DEoTD5cyjj3RyxxYxfP
 uUhNnxnzLM21FzFFoAIjIGfFBy/4iYE56dlCoz1phwAEak5b+Cm84wgwDNufgajwagmm
 4oc270pOdWcPryQn5o0/AAty1s5AfuEV0N7b9LvtpXZeNrWdAMx3VT/J7PTXrEwEzOYm
 hQrLvszX2YfunJ1ovlGSmmr7bWgIVHXxX9ROwTqFKls+sSVXNecfQ89hmF3Lj0czPrm4
 v/OSmhojGi9U05nUNiedTI9baBc/1/aaYDTzp75KPgg6Y0p3gLgwi+4VJjhOkq0EVUQO
 KXMA==
X-Gm-Message-State: APjAAAUDNptDPspDPqC7LHFS/ilNw6p9AVje7hvldHXIlZhH9nfQaPBz
 Y/l4NxHeJJO5GAWAKaPzw3c8HwSU
X-Google-Smtp-Source: APXvYqxMNkadPtwzcDYNPhLpggDxO4GDsCsSW7fyo+EFOP4rIEtEL4tnoN0DWyFP1eViLUF7e5/FDA==
X-Received: by 2002:adf:f0ca:: with SMTP id x10mr7776349wro.423.1580646448367; 
 Sun, 02 Feb 2020 04:27:28 -0800 (PST)
Received: from [192.168.43.18] (92.40.248.192.threembb.co.uk. [92.40.248.192])
 by smtp.gmail.com with ESMTPSA id
 b16sm21796403wrj.23.2020.02.02.04.27.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 Feb 2020 04:27:27 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/2] staging: vt6656: fix sign of rx_dbm to bb_pre_ed_rssi.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <9b3b92d6-3672-00be-d0b5-ccd222236ba9@gmail.com>
Date: Sun, 2 Feb 2020 12:27:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
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

bb_pre_ed_rssi is an u8 rx_dm always returns negative signed
values add minus operator to always yield positive.

fixes issue where rx sensitivity is always set to maximum because
the unsigned numbers were always greater then 100.

Cc: stable <stable@vger.kernel.org>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/dpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6656/dpc.c b/drivers/staging/vt6656/dpc.c
index 821aae8ca402..a0b60e7d1086 100644
--- a/drivers/staging/vt6656/dpc.c
+++ b/drivers/staging/vt6656/dpc.c
@@ -98,7 +98,7 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 
 	vnt_rf_rssi_to_dbm(priv, tail->rssi, &rx_dbm);
 
-	priv->bb_pre_ed_rssi = (u8)rx_dbm + 1;
+	priv->bb_pre_ed_rssi = (u8)-rx_dbm + 1;
 	priv->current_rssi = priv->bb_pre_ed_rssi;
 
 	skb_pull(skb, sizeof(*head));
-- 
2.25.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

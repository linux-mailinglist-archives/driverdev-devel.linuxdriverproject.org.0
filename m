Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 156BC213A11
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jul 2020 14:29:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD269266D1;
	Fri,  3 Jul 2020 12:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dwe3jo-LCgcI; Fri,  3 Jul 2020 12:28:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7360E26634;
	Fri,  3 Jul 2020 12:28:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D96601BF302
 for <devel@linuxdriverproject.org>; Fri,  3 Jul 2020 12:28:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D403688DBE
 for <devel@linuxdriverproject.org>; Fri,  3 Jul 2020 12:28:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wofFU34t0jVE for <devel@linuxdriverproject.org>;
 Fri,  3 Jul 2020 12:28:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 451EC88DBC
 for <devel@driverdev.osuosl.org>; Fri,  3 Jul 2020 12:28:51 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id d18so21902820edv.6
 for <devel@driverdev.osuosl.org>; Fri, 03 Jul 2020 05:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MdPnMWpdzrbRt67bwm1DSi25zLJwZoxDBnLs4+Vo1Kc=;
 b=LeMr/3viJFTLuBiXm/1Gt2XOp4NVt1yhM5S3mpv6VmpbHpvTW4gvNROilqjboxI90e
 CHB658uMrK6NWt/ID3/dbE4aRCfOphioEgOf9uRpa/cr3z8+QVl8WZkJWSUHjh8ShbRx
 Ck+4JK7AblunoWpQLcXnqSKbmMzB1ktpxgIGKS/UIgqNwIZj/pWxtDXa2ZF+OBwksdWd
 unlgRahUuLGiSJwi75cDzeYLJb4Un8fZ+gxVtda7AzZTN0vjQFuP3Xydl4+7A32eZpv3
 mhi9TDvp5Xh+8tY6JrzML8UW9y4juWEbAGP7kQ9oGT+LYXRHOqPrjjOUtzLx+98zdX7T
 BX/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MdPnMWpdzrbRt67bwm1DSi25zLJwZoxDBnLs4+Vo1Kc=;
 b=jDgX6AUN+oxQDHLim43OpTC6TN8+cWniTZUxJKQOUWprZrq0KouxrR1FkINTzjPbUa
 S9G931UiC52JKHJPyigN4XEsNWuFv5vCUCgW8dRsQgAYi64+Xdkq0A111ToBByn/gaqF
 oclpJuW37U79QGk+l7pCXZGGjPpxO4+gM6vgBkIPTULnob4gP5erSPNBMutoIdOhc/4y
 dLKvVLMy7rdizE1A3n8KK2/wa1wzJUnzK++tGBqMh17GGaDgToEhusHTkmf+AC8XiKVC
 AKB7vHM6LTgJD0ZBnZQaQxJWLJ6sw3oZXE8dEM7LrNWu951YBcwKxSu2IYLUqW9zQyeq
 ZhYQ==
X-Gm-Message-State: AOAM533PIBV0m7DW1Q24zlpCjfG3zTVjP8AUQDRMPg0jWtjPB84BEldl
 IdROicrcFa6PpHPVGgZigmM=
X-Google-Smtp-Source: ABdhPJyuADDVczzLUiRgHzdRGkfyQZ3YqlbQwkJymMzIlE8zKSBrh4pk7w+rI9DPgXDii1avw4XleQ==
X-Received: by 2002:a50:a701:: with SMTP id h1mr39251800edc.170.1593779329629; 
 Fri, 03 Jul 2020 05:28:49 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-057.092.219.pools.vodafone-ip.de. [92.219.207.57])
 by smtp.gmail.com with ESMTPSA id v5sm8979874eje.88.2020.07.03.05.28.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jul 2020 05:28:49 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8192u: remove GPL boiler plate text
Date: Fri,  3 Jul 2020 14:26:03 +0200
Message-Id: <20200703122604.12096-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The SPDX identifier is a legally binding shorthand, which
can be used instead of the full boiler plate text.

The file ieee80211_module.c has a proper SPDX line, so the
GPL boiler plate text is not needed.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 .../rtl8192u/ieee80211/ieee80211_module.c        | 16 ----------------
 1 file changed, 16 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index a5a1b14f5a40..c52540b734fd 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -9,22 +9,6 @@
  *  <jkmaline@cc.hut.fi>
  *  Copyright (c) 2002-2003, Jouni Malinen <jkmaline@cc.hut.fi>
  *
- *  This program is free software; you can redistribute it and/or modify it
- *  under the terms of version 2 of the GNU General Public License as
- *  published by the Free Software Foundation.
- *
- *  This program is distributed in the hope that it will be useful, but WITHOUT
- *  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- *  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- *  more details.
- *
- *  You should have received a copy of the GNU General Public License along with
- *  this program; if not, write to the Free Software Foundation, Inc., 59
- *  Temple Place - Suite 330, Boston, MA  02111-1307, USA.
- *
- *  The full GNU General Public License is included in this distribution in the
- *  file called LICENSE.
- *
  *  Contact Information:
  *  James P. Ketrenos <ipw2100-admin@linux.intel.com>
  *  Intel Corporation, 5200 N.E. Elam Young Parkway, Hillsboro, OR 97124-6497
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 228C2323DE
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 18:35:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 76C528550D;
	Sun,  2 Jun 2019 16:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0X2Omj2iPvC5; Sun,  2 Jun 2019 16:35:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 42DDC8526D;
	Sun,  2 Jun 2019 16:35:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DDB9B1BF5A9
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 16:35:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D64062078B
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 16:35:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SexkUgjxzmdo for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 16:35:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 0835D204A3
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 16:35:46 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id c6so5894958wml.0
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 09:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bPqNziqN3jwSyP9jBiLarbBjFW7IRf4d6KG+ehEQH8I=;
 b=i/GiEXl3PBCQeCimNLpYhU4zywZjhwiXRNfQ3cpTZcTQxDmQSWyACTwX2HXvQBeysq
 oxRGLsVqO1D2udN0vLI8C3R05npvkHO2cAInkULu5L/MK0i04zXRRk8cRAZhJNBvk/9l
 mz1F/ZFBurdBA5k4o3udZ+WvTuLxxVcSr2xAbu9aWeiNUnhOCv2/Piz8JTThQ91RWA6L
 PF5iip+gG8OaY8tRu9bnbxOLfkKqZ+GO+DATgkn+D5FqQOaB04RYr9EyCKys7PGaFQ8i
 +Rv6/6k+dN+nebejHRvb4f93IuPXOO39AXM5YF+5gI3HQfCbfHYj7nTxzyEokjbBZBaN
 +ZuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bPqNziqN3jwSyP9jBiLarbBjFW7IRf4d6KG+ehEQH8I=;
 b=CjAv1Q+JYYA5Tty3Hjp+Tha3AaI28ZFtMtCoSFSCewDiHptcTeima64YxWzjf5i2y8
 xGutiVLPi3kZ33RwZDsU5hBbuTtJrYZVJoIlSRo72ZGrcK5iEp8twI9wHbEcywc9kFzY
 jCFwEGrlODBjdnZ0LrGfp74caKMzW5/u3EG4TFz5n+/nTlsHLSRsEnNJ75pUzF+LW5ly
 rQYnymuaVRLw+SClo6Lpela4EfYqftDnqRyd2tffeTUA1/Tq0CKqqIN84/DI/9sTJxi0
 Eez70K/6+Aq1ePTEt4q5Ts33V+oFvlnkNpYtiOk4LN8F+xkjimy6ceNL50WxA5dPRpeH
 4pjQ==
X-Gm-Message-State: APjAAAVS6FQLSdH0lnc6qhnxi/fGYNNM+3FNyGeeYjkbhEaVp40BQvSe
 efAFNLWsSwdOnWTWUjIEDGs=
X-Google-Smtp-Source: APXvYqxA0qvxMUvIHbPuyM/mUzR6nerSvsGDgs42I8IrUoZjKBqn/jV19eLqdUpRR1hmQOS+IFWrPA==
X-Received: by 2002:a1c:ce:: with SMTP id 197mr11801235wma.48.1559493344522;
 Sun, 02 Jun 2019 09:35:44 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id c5sm6639273wma.19.2019.06.02.09.35.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 09:35:44 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: remove redundant definition of
 ETH_ALEN
Date: Sun,  2 Jun 2019 18:35:27 +0200
Message-Id: <20190602163528.28495-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ETH_ALEN is defined in linux/if_ether.h which is included by
osdep_service.h, so remove the redundant definition from ieee80211.h.

osdep_service.h:33:#include <linux/etherdevice.h>
etherdevice.h:25:#include <linux/if_ether.h>

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/include/ieee80211.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index c60b833ca110..d43aa4304ca5 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -14,7 +14,6 @@
 
 #define MGMT_QUEUE_NUM 5
 
-#define ETH_ALEN	6
 #define ETH_TYPE_LEN		2
 #define PAYLOAD_TYPE_LEN	1
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

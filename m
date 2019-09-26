Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C3ECBEC93
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Sep 2019 09:32:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBEBF86879;
	Thu, 26 Sep 2019 07:31:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9HwwD3GFLuL3; Thu, 26 Sep 2019 07:31:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 201B2839C1;
	Thu, 26 Sep 2019 07:31:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A8271BF342
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 07:31:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1F4F08499E
 for <devel@linuxdriverproject.org>; Thu, 26 Sep 2019 07:31:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PDfBV6ToCpQM for <devel@linuxdriverproject.org>;
 Thu, 26 Sep 2019 07:31:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 622008453F
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 07:31:53 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id x10so1066740pgi.5
 for <devel@driverdev.osuosl.org>; Thu, 26 Sep 2019 00:31:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l//Gs0c7u01pz7zaVnzd0AwQx7M2oEVS4q0mnEANanc=;
 b=H7BAJ4jCpJt+fZsE6GrQ1gcZfxD5OuWtfNaN49jSCDoYjSYCdoIRv+uM41mMeQHaqn
 9qnTiB88cP5r5aLV1wnpcoJo2wy6ZkJJqtMdcJWP1x+Od9spM4qjoXm/HAXxtQwSuL4H
 iITXTCLElpKMrHg4rtporTc83SUs0dLLbKn57euB60RNtsOgRF3mAXjjm0776+rx6H+O
 TGsDX/+G1ikhxSHO3F7VlzKHlcElomZrlUIwziebywqG3yHIOFdwtcNmGFwAX/KXdXvQ
 ZZRJ40V7IT0C2Tx4X3E9a9FHsMSk15/J2ZhD2IlHo+4qRUG8SxyL9FGxVHhLvs+6JQIK
 7S8g==
X-Gm-Message-State: APjAAAU+24d+Fx3eYjIbmy30ksqSkitAa2XyILZyLDqfCLUxxeETFxQy
 nOupTOmXR/GCy/5dMW6PdrNB75+obiTROg==
X-Google-Smtp-Source: APXvYqwqr9ObHLgAsANuqN/VDH/rHyyWlH2MoqZFXC3aCXP8ZedkRrcb/NTTeCvd0dwkVTkQPnOnNA==
X-Received: by 2002:a17:90a:236f:: with SMTP id
 f102mr2087877pje.130.1569483112674; 
 Thu, 26 Sep 2019 00:31:52 -0700 (PDT)
Received: from black.wifi.public.euroopa.ee (99-48-196-88.sta.estpak.ee.
 [88.196.48.99])
 by smtp.googlemail.com with ESMTPSA id u31sm3092013pgn.93.2019.09.26.00.31.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 00:31:51 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8188eu: fix HighestRate check in
 odm_ARFBRefresh_8188E()
Date: Thu, 26 Sep 2019 10:31:38 +0300
Message-Id: <20190926073138.12109-1-efremov@linux.com>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Denis Efremov <efremov@linux.com>, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It's incorrect to compare HighestRate with 0x0b twice in the following
manner "if (HighestRate > 0x0b) ... else if (HighestRate > 0x0b) ...". The
"else if" branch is constantly false. The second comparision should be
with 0x03 according to the max_rate_idx in ODM_RAInfo_Init().

Cc: Larry Finger <Larry.Finger@lwfinger.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Michael Straube <straube.linux@gmail.com>
Cc: stable@vger.kernel.org
Signed-off-by: Denis Efremov <efremov@linux.com>
---
 drivers/staging/rtl8188eu/hal/hal8188e_rate_adaptive.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/hal8188e_rate_adaptive.c b/drivers/staging/rtl8188eu/hal/hal8188e_rate_adaptive.c
index 9ddd51685063..5792f491b59a 100644
--- a/drivers/staging/rtl8188eu/hal/hal8188e_rate_adaptive.c
+++ b/drivers/staging/rtl8188eu/hal/hal8188e_rate_adaptive.c
@@ -409,7 +409,7 @@ static int odm_ARFBRefresh_8188E(struct odm_dm_struct *dm_odm, struct odm_ra_inf
 		pRaInfo->PTModeSS = 3;
 	else if (pRaInfo->HighestRate > 0x0b)
 		pRaInfo->PTModeSS = 2;
-	else if (pRaInfo->HighestRate > 0x0b)
+	else if (pRaInfo->HighestRate > 0x03)
 		pRaInfo->PTModeSS = 1;
 	else
 		pRaInfo->PTModeSS = 0;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

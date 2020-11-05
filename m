Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 063882A7625
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 04:48:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F6D685566;
	Thu,  5 Nov 2020 03:48:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wf606sM7eyig; Thu,  5 Nov 2020 03:48:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED1E685507;
	Thu,  5 Nov 2020 03:48:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF2EA1BF31C
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A8600203DD
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vwyiZHd2SPAR for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 03:48:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by silver.osuosl.org (Postfix) with ESMTPS id B6ACE20377
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 03:48:09 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id s10so412214ioe.1
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 19:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k80CcVAqwcU/fHTAk6XVOjxvhN4AIfZv8jlW+iQqs8s=;
 b=csv9UxyVJW7JhF+k3wMgQPsZgjOM7KStiEjJUv4zPjABxZLwwMWdoVy/LcggGFfQBP
 MdwBIVX27X6TcG4e+vy/FcESevFYNLylj16RZkN2Ni3OpgEYt0vBUGwllWtp3TqggLfX
 5QAXYbNRgbCw7hLkgGiNf4hMfmLrFS5h0rcXrTh20GYqz5nn9nAKSR3Oy3bEq2Uiazpy
 O2i2LodnF+cF5xzKdmYbDY5m9SoiWwOt3iQqdJnTjqXQGnwFg5eEOGparxzyJYWvV9zT
 GxqEd5P4hcqts/m5obTnvvgLc4MbjHqhPZJdh0WEhAv5q7cATIY6DKlkVZDu39ILPDfA
 4lPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k80CcVAqwcU/fHTAk6XVOjxvhN4AIfZv8jlW+iQqs8s=;
 b=r3R08Y+GuvmyWTGAkWcHXrktW8BEolYyv/LqPNiRK2J6jHHftnYwUvCyk5oNMqXtp/
 G4t8jEZADpjig8tyqdRD407hp9HcqAOcJ6BWDoTuHg8F7M+pn0UuV0+InFSNJNiDfaSd
 a3UIUPnFqjqr9bkyeypkPSuaO+HMeIierPowBomVoKkzNGYNYJZd5n2ObOCtCyC5taa6
 FwzhCQ+OsDMoYC6IKyiNB3narc6KoKbbQxgs4/nQzp1HFXFLG0o55UhhMBEMdQNFaLiC
 3uftLrm2pe/Sg9um971VkFMvUPx0aQSnPm2+Bx6lrso3yYfKJ3NOA1AtDzeFy3EVocR9
 CsJA==
X-Gm-Message-State: AOAM5300pxzH1aaifrgZUQBvCeMV1hezIxw+9vRokWicfAx4u/mEhInB
 lGxT9AVQ/PfQJBRI8RHk/CY=
X-Google-Smtp-Source: ABdhPJw6hLdNWVJk8o6s71rRevUeu4s2y5EoaCC+fEague22GEKsV8H5kJWBdcilE6UYRrq1ZlyZMQ==
X-Received: by 2002:a02:9981:: with SMTP id a1mr595055jal.54.1604548089110;
 Wed, 04 Nov 2020 19:48:09 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id p6sm172877ilc.26.2020.11.04.19.48.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 19:48:08 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/9] staging: rtl8723bs: use %pM format for MAC addresses
Date: Wed,  4 Nov 2020 21:47:47 -0600
Message-Id: <20201105034754.12383-2-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201105034754.12383-1-ross.schm.dev@gmail.com>
References: <20201105034754.12383-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use %pM format instead of custom printing code.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index e42d8c18e1ae..08abfb8ec4c7 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -1231,19 +1231,8 @@ static void Hal_EfuseParseMACAddr_8723BS(
 	}
 /* 	NicIFSetMacAddress(padapter, padapter->PermanentAddress); */
 
-	RT_TRACE(
-		_module_hci_hal_init_c_,
-		_drv_notice_,
-		(
-			"Hal_EfuseParseMACAddr_8723BS: Permanent Address = %02x-%02x-%02x-%02x-%02x-%02x\n",
-			pEEPROM->mac_addr[0],
-			pEEPROM->mac_addr[1],
-			pEEPROM->mac_addr[2],
-			pEEPROM->mac_addr[3],
-			pEEPROM->mac_addr[4],
-			pEEPROM->mac_addr[5]
-		)
-	);
+	RT_TRACE(_module_hci_hal_init_c_, _drv_notice_,
+		 ("Hal_EfuseParseMACAddr_8723BS: Permanent Address = %pM\n", pEEPROM->mac_addr));
 }
 
 static void Hal_EfuseParseBoardType_8723BS(
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

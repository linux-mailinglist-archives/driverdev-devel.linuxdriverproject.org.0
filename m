Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E23B8E03
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Sep 2019 11:48:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 58A5981B71;
	Fri, 20 Sep 2019 09:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OrMk9GGQz-e8; Fri, 20 Sep 2019 09:48:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6828815EF;
	Fri, 20 Sep 2019 09:48:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD72A1BF399
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 09:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D9BE32037B
 for <devel@linuxdriverproject.org>; Fri, 20 Sep 2019 09:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EFlJZ0MCBCTh for <devel@linuxdriverproject.org>;
 Fri, 20 Sep 2019 09:48:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 4A21420343
 for <devel@driverdev.osuosl.org>; Fri, 20 Sep 2019 09:48:11 +0000 (UTC)
Received: from mail-wm1-f71.google.com ([209.85.128.71])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <connor.kuehl@canonical.com>) id 1iBFWL-0005B3-51
 for devel@driverdev.osuosl.org; Fri, 20 Sep 2019 09:48:09 +0000
Received: by mail-wm1-f71.google.com with SMTP id h6so974647wmb.2
 for <devel@driverdev.osuosl.org>; Fri, 20 Sep 2019 02:48:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=B0gRBX2sU0Z6OKmHo7Z4yIU03olB4csImxHyIILBwAA=;
 b=GMBXYUlEbHIUUSEEQEnsrOLNLYgHoTG72xyDQcI/m9VvNJiMKPAsUEoC49EvOvznQX
 luTSBU0Fhvl2oHeQn4uGVIhQc+WGYyGvFJkiTXZ2HgKf/cgyvYXmtdKEq7xQhdZHvpWQ
 x7RURu81B7Tsdtjl9Djy+TuEKjMvl8bZswFujp+UBGRWT8MQw/wf8cD0avzpz9qGkTQo
 4tFvpdkUeUbff0JbLBFqxwSVSBYashQJ84ZFNe5fIJXtxpsAsXuM7nX/zrFXKSLKB71D
 MK+RqUvh6tw2Wg13uMxtQN3FUqCLiouD6xpmV0cS0Kk+SAu14vj8YOCf3jAQb/Vh7Ss1
 w7sw==
X-Gm-Message-State: APjAAAVlLy5P8XrbKOudEy4jKFOOl/pFvvjVmIGTMz0y/6yDSOrQRP4S
 Xb0VSL7Z5BU6no5Jrqd73RUTFkz6bi2EJ/pbGXKXwRoMhcmFbLQHf7VmnaXuBQkw6RTC5sF/8dy
 nYJOGYUwsz/8GHazgVloMVBDg3tq9ysRuD2uTqDo=
X-Received: by 2002:a5d:430f:: with SMTP id h15mr11239568wrq.177.1568972888916; 
 Fri, 20 Sep 2019 02:48:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxVRY04L0KSUugiU+ntxgo+Wvpl8BGaO0LusgrffrFde1j3tGSNP2BDAc7riJC99gqoaqgZaw==
X-Received: by 2002:a5d:430f:: with SMTP id h15mr11239545wrq.177.1568972888657; 
 Fri, 20 Sep 2019 02:48:08 -0700 (PDT)
Received: from canonical.c.hoisthospitality.com
 (static-dcd-cqq-121001.business.bouyguestelecom.com. [212.194.121.1])
 by smtp.gmail.com with ESMTPSA id z9sm2104375wrp.26.2019.09.20.02.48.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Sep 2019 02:48:07 -0700 (PDT)
From: Connor Kuehl <connor.kuehl@canonical.com>
To: Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8188eu: remove unnecessary self-assignment
Date: Fri, 20 Sep 2019 11:48:07 +0200
Message-Id: <20190920094807.9217-1-connor.kuehl@canonical.com>
X-Mailer: git-send-email 2.17.1
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is a self-assignment which is redundant. Fix this by removing the
self-assignment.

Addresses-Coverity: ("Self assignment")

Signed-off-by: Connor Kuehl <connor.kuehl@canonical.com>
---
 drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
index 086f98d38cba..57ae0e83dd3e 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_hal_init.c
@@ -552,7 +552,6 @@ void Hal_ReadAntennaDiversity88E(struct adapter *pAdapter, u8 *PROMContent, bool
 			pHalData->AntDivCfg = 1; /*  0xC1[3] is ignored. */
 	} else {
 		pHalData->AntDivCfg = 0;
-		pHalData->TRxAntDivType = pHalData->TRxAntDivType; /*  The value in the driver setting of device manager. */
 	}
 	DBG_88E("EEPROM : AntDivCfg = %x, TRxAntDivType = %x\n", pHalData->AntDivCfg, pHalData->TRxAntDivType);
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

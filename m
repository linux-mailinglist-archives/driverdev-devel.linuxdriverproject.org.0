Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EDE556E7
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 20:17:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BD5685F8A;
	Tue, 25 Jun 2019 18:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MuYrPvrcUn4L; Tue, 25 Jun 2019 18:17:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C102B85F33;
	Tue, 25 Jun 2019 18:17:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 791AE1BF3CE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7420F85F33
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ibE_SPaZ9Xlx for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 18:17:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4E93D85F8A
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 18:17:49 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id p184so9895340pfp.7
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aU2lMvLMFAmaKI8o4T7rqGlAgr2Pw6XZztA93JG4rHk=;
 b=gQR9fXq3UuoEG38nYSFjn/jYpxHF3CwwiCJnG9Xw+c+dDhrtbEN/t2RU3NPTjWlui1
 0V8KRf7ev8ab//Ln103JjWmC1bprusm+pLDC8P12cIyo2wwHMQBOfuhNROvDi4h4Icw9
 YTSODvePzhJI8J7tXbxsWpiKlPmUh2Z/Ul4cMqK3toqCHw5ZPNXImBFShsPWmeIvPQnS
 ouIBJPMyD75jwIPCRPSvNhdd2GRLKr81vogDepRgtLFyT/mYji5kVuH99dO1ZIDQNRNU
 +IZDZ33GowF3JPpe4MyedUEDaRG8qxbJql+J0gs/RFetskMCSmqWQ5usARYIP1RNQOjm
 ZHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aU2lMvLMFAmaKI8o4T7rqGlAgr2Pw6XZztA93JG4rHk=;
 b=gV8mOcq7Jd+XgT8Z+9aEyCz4pJ4mH3LH1dKG+CFBSrEpTPuOe86HYeA3Y4K5jwV66z
 SJN5gTEEG/ghmrtxMV15BZBnWLLJY8XNpOLbkuSMgnkzrGPsi8y6ZgG6DmeILeg6lej4
 M9oq1hHtvgQXUHLbcmenjzOdw0VnUqTvDWlSY0Md8qeOUO9EXO3gxM8jShfWuZ0W3KHq
 DSyD8HUEczCtySo7DuRz0mJZLxtG//TlzyOQHAUT11xn64+WHa+219NhZYxL+p59Lpir
 m0RZ7w+CBLWOXFcmOVJ+V2mDTnEQ4d2Z7w8BsJEgOZPzY+odhuN0moT0AArAcfMuRPXe
 GlhA==
X-Gm-Message-State: APjAAAXBtp4j/PiEO1BzC5Nch5wz3+h88At5xnITKGuF32uUjQ99MejK
 pkL5X+faghnNjNfpu1hCR38=
X-Google-Smtp-Source: APXvYqytoKvzSIiaV2WUSp6pnmGIovjzqqXmYErctBokbL2fxUoiR9YWs2fG7CHyUZHe2v2TFWAVmg==
X-Received: by 2002:a63:fa4e:: with SMTP id g14mr40143275pgk.237.1561486668887; 
 Tue, 25 Jun 2019 11:17:48 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:48 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 8/9] staging: vc04_services: Remove function
 output_timeout_error()
Date: Tue, 25 Jun 2019 23:47:08 +0530
Message-Id: <20190625181710.2267-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190625181710.2267-1-nishkadg.linux@gmail.com>
References: <20190625181710.2267-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function output_timeout_error as it was only called by
vchiq_arm_force_suspend, which was deleted in a previous patch.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 36 -------------------
 1 file changed, 36 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index a97076c18a0f..ebf7e2a3bd3b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2705,42 +2705,6 @@ vchiq_platform_check_suspend(struct vchiq_state *state)
 	return;
 }
 
-static void
-output_timeout_error(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-	char err[50] = "";
-	int vc_use_count = arm_state->videocore_use_count;
-	int active_services = state->unused_service;
-	int i;
-
-	if (!arm_state->videocore_use_count) {
-		snprintf(err, sizeof(err), " Videocore usecount is 0");
-		goto output_msg;
-	}
-	for (i = 0; i < active_services; i++) {
-		struct vchiq_service *service_ptr = state->services[i];
-
-		if (service_ptr && service_ptr->service_use_count &&
-			(service_ptr->srvstate != VCHIQ_SRVSTATE_FREE)) {
-			snprintf(err, sizeof(err), " %c%c%c%c(%d) service has "
-				"use count %d%s", VCHIQ_FOURCC_AS_4CHARS(
-					service_ptr->base.fourcc),
-				 service_ptr->client_id,
-				 service_ptr->service_use_count,
-				 service_ptr->service_use_count ==
-					 vc_use_count ? "" : " (+ more)");
-			break;
-		}
-	}
-
-output_msg:
-	vchiq_log_error(vchiq_susp_log_level,
-		"timed out waiting for vc suspend (%d).%s",
-		 arm_state->autosuspend_override, err);
-
-}
-
 void
 vchiq_check_suspend(struct vchiq_state *state)
 {
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

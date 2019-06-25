Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 536DE556E4
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 20:17:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0B3687B4F;
	Tue, 25 Jun 2019 18:17:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iHuuAsm0EThf; Tue, 25 Jun 2019 18:17:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E33887B08;
	Tue, 25 Jun 2019 18:17:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7462A1BF3CE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C29920798
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CW5uoQ70KULL for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 18:17:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 395682079C
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 18:17:42 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id v9so9326714pgr.13
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6OE9g8UxPWrlkp4I1s8MLnXbmsIfGkjszHg/VwiGeEI=;
 b=PkcnIeQzs1zfKtuo3z5TFZlEfPLQDxByeWDqKTvjmHFMvYz7goekr2Man0wK+dYbWA
 fN37jKHynn81HP6qHvzpkH5KxUlLABHF0NTKGaUGEFZ5/Muwt3mgxqJUmcS3gB4xusR7
 PAzlc0WsUR+wpCoLxQA7Y3q/pj8W5JExqojbqEREDdPr2iPYMY+GzCwenTueuLZGk8aH
 ot5kyZFDDfOcKjqTpt9n/vH3tncH+PZJbyLLlC5810OZjIME1ku2MF8ITuuoo3qtK48Q
 44Eu2FNwFqFulfggzkhbHftgU5GSg5GclOUnpOQDd9J5KKO2vlH8K3Ogdqv7gCfTq2qm
 roxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6OE9g8UxPWrlkp4I1s8MLnXbmsIfGkjszHg/VwiGeEI=;
 b=dcU8Tv1B7tIUBpp0kFOqcVhyr63hDjw41913jRuP92dvlxaswiHJdj13r5d81Lbc7C
 AYs8y3CJ9WyaBk36HUgpJlybKjCWlJKVew59IsSM9j06fCsU0Nh1mO6OaKje8w7l8Ar1
 +fVMZPNlcZt2cg0N/ga4gKtnBAihwW4BeuclOV2A7ObM4lcu/LaK8h+lkNazc7U8/8OM
 ZzIkgFYsPGo9OlMiFSjyniFtT9D+EOs+K7ktxo0TMhiJTLGMnGhBYoOwaLwUevxKAGaG
 hGsjlF2V/2//ZMGKA7qZFVSY3NXCPB+6bnw0tQBvJDEZ+0n+UF+Vu3lhIQDCwWPek6f9
 RW1Q==
X-Gm-Message-State: APjAAAVKfcHxBNmKkBw3djU04uUVzkr8i2Tf0DlIDgzDfMcAOkRHRs8N
 P+bt2Cmfd4m1Hlm6zjZsBcc=
X-Google-Smtp-Source: APXvYqydZ9SS49WOaaOPUIdJjRrGZB4Pi4MNamUCtvrLZ1terMbJPUqVgdk8zJy2zhwcaEkFBfNwHw==
X-Received: by 2002:a63:88c7:: with SMTP id
 l190mr33994930pgd.240.1561486661850; 
 Tue, 25 Jun 2019 11:17:41 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:41 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 6/9] staging: vc04_services: Remove
 vchiq_use_service_no_resume()
Date: Tue, 25 Jun 2019 23:47:06 +0530
Message-Id: <20190625181710.2267-6-nishkadg.linux@gmail.com>
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

Remove unused function vchiq_use_service_no_resume.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 14 --------------
 .../vc04_services/interface/vchiq_arm/vchiq_if.h   |  2 --
 2 files changed, 16 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 6e59470d44ab..a97076c18a0f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -3072,20 +3072,6 @@ static void suspend_timer_callback(struct timer_list *t)
 	vchiq_check_suspend(state);
 }
 
-VCHIQ_STATUS_T
-vchiq_use_service_no_resume(VCHIQ_SERVICE_HANDLE_T handle)
-{
-	VCHIQ_STATUS_T ret = VCHIQ_ERROR;
-	struct vchiq_service *service = find_service_by_handle(handle);
-
-	if (service) {
-		ret = vchiq_use_internal(service->state, service,
-				USE_TYPE_SERVICE_NO_RESUME);
-		unlock_service(service);
-	}
-	return ret;
-}
-
 VCHIQ_STATUS_T
 vchiq_use_service(VCHIQ_SERVICE_HANDLE_T handle)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 5445f201e284..c23bd105c40f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -107,8 +107,6 @@ extern VCHIQ_STATUS_T vchiq_open_service(VCHIQ_INSTANCE_T instance,
 extern VCHIQ_STATUS_T vchiq_close_service(VCHIQ_SERVICE_HANDLE_T service);
 extern VCHIQ_STATUS_T vchiq_remove_service(VCHIQ_SERVICE_HANDLE_T service);
 extern VCHIQ_STATUS_T vchiq_use_service(VCHIQ_SERVICE_HANDLE_T service);
-extern VCHIQ_STATUS_T vchiq_use_service_no_resume(
-	VCHIQ_SERVICE_HANDLE_T service);
 extern VCHIQ_STATUS_T vchiq_release_service(VCHIQ_SERVICE_HANDLE_T service);
 extern VCHIQ_STATUS_T
 vchiq_queue_message(VCHIQ_SERVICE_HANDLE_T handle,
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

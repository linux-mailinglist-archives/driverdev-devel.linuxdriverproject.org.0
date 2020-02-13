Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 355AC15CB9F
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Feb 2020 21:02:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6BFC821F5A;
	Thu, 13 Feb 2020 20:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id psHocAQGTT6y; Thu, 13 Feb 2020 20:02:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8AAAC21561;
	Thu, 13 Feb 2020 20:02:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 378E01BF3B1
 for <devel@linuxdriverproject.org>; Thu, 13 Feb 2020 20:02:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 306168740E
 for <devel@linuxdriverproject.org>; Thu, 13 Feb 2020 20:02:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mGePmrO5t0Z7 for <devel@linuxdriverproject.org>;
 Thu, 13 Feb 2020 20:02:42 +0000 (UTC)
X-Greylist: delayed 00:22:38 by SQLgrey-1.7.6
Received: from mail-qk1-f202.google.com (mail-qk1-f202.google.com
 [209.85.222.202])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7530A8733E
 for <devel@driverdev.osuosl.org>; Thu, 13 Feb 2020 20:02:42 +0000 (UTC)
Received: by mail-qk1-f202.google.com with SMTP id a132so4506966qkg.5
 for <devel@driverdev.osuosl.org>; Thu, 13 Feb 2020 12:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=H0CRRWznpHCtJBjvV1YZITyrv/qml/zlEqYkl1RhjGY=;
 b=dCQ8V8xEJjfhN1P3rrsqyVpHqKLsC+D4H7Oi7emDI7ySwXSM1iPb2d2kkbUifTfn4w
 p28kAxnCd9fCwzD7BNLxe0SRVBlPD7Oj0hI+/CAhqn3SKpJit024KYKwfs4+oTPpX62p
 OwhiHuG2mGPqVFjmzNETYoyCLjn3ZoZSB74V/4TFe9+GLZ1VGtMGv8IAO0AkFhh6v3A5
 642jRcKO+WLFehUqjz4RoBLtt3aLxyp+gwt4+RQJ/4iNs2iEDCDWasBPreOIjs7amdOq
 6eryMj17lS2WUQ2hjNKRpDrp3y6T3SSHUcVsrL9O2z683z491JUUDEmt24IM4dDB5b8S
 u96Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=H0CRRWznpHCtJBjvV1YZITyrv/qml/zlEqYkl1RhjGY=;
 b=mroWPBQx5O4bHZcS+DzhJgdDaTFtfu/Rt87GAQq0oCzy8/togk2nWbZX3gKjbB2HGz
 FjCUNe4TFzghUZLdp+rSapQV/84zgX1A33u3j8eGmanECmDlGV8UQeHK+/Uhw57ctCjB
 P9nVV/bB1slteAeMiaaCLapQkBl3I/7kUkhd+VWghZ+JBce/Kvwj81U2MPvbe4zcaPnn
 Jknw2dV9EZXoUYKfURzeQsfbiUFhHFrO3FsL6ZZ3RyEBFmY+6MFc350yh2hy4fabnXpa
 2/4V7hB7JuKHfK3E0Wkmtb2AQLAY418/yubL8kTE+M4mhZg7YKdVzcbaLT9jtI0t5VTW
 mIHg==
X-Gm-Message-State: APjAAAX9+mnUidtdt5AJnTgvWFnSV0nikE3xDgqsKVC1r79TrTidoYRW
 ZMpUIHpdzdMK+EN6xpBKp4F77yeuacJ4vfTd4gI=
X-Google-Smtp-Source: APXvYqwKwfKvQbqxfvLBoVLf2hSFqmtM3vtBL3Q1aQ5rXPaT88hpM15E3P82LP5BLu3x+pz5ZhorDweEVgluY0UVq+U=
X-Received: by 2002:a0c:fa4b:: with SMTP id k11mr24763908qvo.55.1581622802876; 
 Thu, 13 Feb 2020 11:40:02 -0800 (PST)
Date: Thu, 13 Feb 2020 14:40:01 -0500
Message-Id: <20200213194001.130110-1-marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH] staging: vc04_services: Fix wrong early return in
 next_service_by_instance()
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If kref_get_unless_zero() fails, we should keep looking for the
next service, since the callers of this function expect that a NULL
return value means there are no more.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index d7d7f4d9d57f..edcd97373809 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -252,11 +252,15 @@ next_service_by_instance(struct vchiq_state *state,
 	struct vchiq_service *service;
 
 	rcu_read_lock();
-	service = __next_service_by_instance(state, instance, pidx);
-	if (service && kref_get_unless_zero(&service->ref_count))
-		service = rcu_pointer_handoff(service);
-	else
-		service = NULL;
+	while (1) {
+		service = __next_service_by_instance(state, instance, pidx);
+		if (!service)
+			break;
+		if (kref_get_unless_zero(&service->ref_count)) {
+			service = rcu_pointer_handoff(service);
+			break;
+		}
+	}
 	rcu_read_unlock();
 	return service;
 }
-- 
2.25.0.225.g125e21ebc7-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

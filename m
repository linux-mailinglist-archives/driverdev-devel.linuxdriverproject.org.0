Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2654415B1DA
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 21:29:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBA2087D0E;
	Wed, 12 Feb 2020 20:29:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Zgw8yhK1Njf; Wed, 12 Feb 2020 20:29:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5B4F87D05;
	Wed, 12 Feb 2020 20:29:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2FBE31BF3C4
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 20:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2C74585308
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 20:29:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MwPAnGPbDtWK for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 20:29:36 +0000 (UTC)
X-Greylist: delayed 01:46:01 by SQLgrey-1.7.6
Received: from mail-qv1-f73.google.com (mail-qv1-f73.google.com
 [209.85.219.73])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0A85084B55
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 20:29:36 +0000 (UTC)
Received: by mail-qv1-f73.google.com with SMTP id k2so2092998qvu.22
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 12:29:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=xaHikqo8uj3LPQIwtJG1BZ6E5u8UOeGpD80vt3j29n8=;
 b=qf6MOYxXP3YPQ1eXMwjB7PnTcf/wcXnwPhFTJeuGp9ZmYwi7QRu9R+9VictvmSlVfo
 KfT5Sd5bvTLyWmYZTgH1DU8Lk9u4DEMN9zglMsc3aZoukdnFPn04lXLW8z3R1t/B2aUt
 6ObAV9qZchMtD0mzzSIRb22jqtjSMN84EgS3pR4BEYIFv46U01Vyg91DyYOX+Slm4iYW
 hpPmjF56wBmbuH2QoKBuWjb8WEv0hDYG0XAlKetYqTjSBp8QyD8ws8uLYD6CfVmUdQdG
 9YKo1Ym2zeTPBwDkAcRLgWVO6y9MiLTkKJQknyyfjGUATW+H0VEUJGtgMcRkbJEx/Sv4
 uQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=xaHikqo8uj3LPQIwtJG1BZ6E5u8UOeGpD80vt3j29n8=;
 b=lYaTOURPBBgU76uVHI2jd/seM5J3Kx3J2qTzE5TstvjM6zS3EUCkWfooRPmAStnt0d
 9X8RUgUuxLm+ki6xUugO9kgeixSOMWhtZoA1hPRFZskCckKl21ksi6iub16SYp4jmVJb
 vxt6TTVSZ5/UvJiaPhYA51s0rHXmTJnpGWEEjV02OL292I3CDF9B9CQOv4nrk3M7z6eB
 4kBJ5xGtJPpyuPzFM2s7OYoLqXzKIHAscWCR0K/8UvQEPP4u9CgouDVWj/3omvYxMsU4
 Ig4lRLo2J4N8/+bBIwhodc7lzOTk6qREXGOBW3X/cq+ISuX31DwPQdfZNxjCTgYQpzMa
 nPhw==
X-Gm-Message-State: APjAAAV+RSGHwoeZdaci0oTM7TDrq995gEBDAxBwDP7IEJdAxBGKbcWK
 G6DP3oW56yfOXraTNweJuBvWH9ML4yBmM9kenEI=
X-Google-Smtp-Source: APXvYqzm4DXE5pFIr/V5mpzREkOty2EYQp7Z8b0GMnmFtZ/9weAVH/BFM/5D4W2Gsz5KrwIxwT+xVBpvO2C/6qLk3uU=
X-Received: by 2002:ac8:4b50:: with SMTP id e16mr8054032qts.89.1581533014693; 
 Wed, 12 Feb 2020 10:43:34 -0800 (PST)
Date: Wed, 12 Feb 2020 13:43:29 -0500
In-Reply-To: <cover.1581532523.git.marcgonzalez@google.com>
Message-Id: <ed8b0034e316b2a81b621e9fca43f8368334b191.1581532523.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH 1/5] staging: vc04_services: remove unused function
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

vchiq_get_service_fourcc() doesn't seem to be used anywhere

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c        | 8 --------
 .../staging/vc04_services/interface/vchiq_arm/vchiq_if.h  | 2 --
 2 files changed, 10 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index d5957411d906..4f8b59deaec9 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -315,14 +315,6 @@ vchiq_get_service_userdata(unsigned int handle)
 	return service ? service->base.userdata : NULL;
 }
 
-int
-vchiq_get_service_fourcc(unsigned int handle)
-{
-	struct vchiq_service *service = handle_to_service(handle);
-
-	return service ? service->base.fourcc : 0;
-}
-
 static void
 mark_service_closing_internal(struct vchiq_service *service, int sh_thread)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 07c6a3db5ab6..39b77ea19210 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -13,7 +13,6 @@
 #define VCHIQ_MAKE_FOURCC(x0, x1, x2, x3) \
 			(((x0) << 24) | ((x1) << 16) | ((x2) << 8) | (x3))
 #define VCHIQ_GET_SERVICE_USERDATA(service) vchiq_get_service_userdata(service)
-#define VCHIQ_GET_SERVICE_FOURCC(service)   vchiq_get_service_fourcc(service)
 
 enum vchiq_reason {
 	VCHIQ_SERVICE_OPENED,         /* service, -, -             */
@@ -128,7 +127,6 @@ extern enum vchiq_status vchiq_bulk_receive_handle(unsigned int service,
 	enum vchiq_bulk_mode mode);
 extern int   vchiq_get_client_id(unsigned int service);
 extern void *vchiq_get_service_userdata(unsigned int service);
-extern int   vchiq_get_service_fourcc(unsigned int service);
 extern void vchiq_get_config(struct vchiq_config *config);
 extern enum vchiq_status vchiq_set_service_option(unsigned int service,
 	enum vchiq_service_option option, int value);
-- 
2.25.0.225.g125e21ebc7-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

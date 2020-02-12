Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E282415B023
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 19:48:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 60C6B20797;
	Wed, 12 Feb 2020 18:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yvnD8KucICjF; Wed, 12 Feb 2020 18:48:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D07A420780;
	Wed, 12 Feb 2020 18:48:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A3CE31BF2E5
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 18:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 947CC2048E
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 18:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J1jnOTnaBDJ6 for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 18:48:42 +0000 (UTC)
X-Greylist: delayed 00:05:04 by SQLgrey-1.7.6
Received: from mail-qt1-f202.google.com (mail-qt1-f202.google.com
 [209.85.160.202])
 by silver.osuosl.org (Postfix) with ESMTPS id BC7A920481
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 18:48:42 +0000 (UTC)
Received: by mail-qt1-f202.google.com with SMTP id c10so1876438qtk.18
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 10:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=WdGiGfpb5gg3RqJI90ZZhxX/hv8rwpQi11672qMYmdU=;
 b=N51Xh0cyfhtxEOHMRKVuVd8SM7Xx/LjYtozOsjfkCms+UMosTljhG2RweFL69GCPiK
 /JWGtHELom5RLcIT9qWjb/KJhN+P2074JP1OY2hejNDLrNsiuK+jzV13iCVi/19laCc9
 c3UvmayJUwbkWidT8yb0S1MnLTUrguSN+k6R6NXLHzebee5uY/e2jcvm9F9XJpCRgR2+
 SiduIhkSNwDOuxRaI9/RIllcmIGBqMMlj2nnWR0oWnJQq+mdA9fKF6JgrqrJTgTHLcEC
 X77IoVqp5ZMojgHgH9TLChqsSY9ueAHhKzQIKZqg+OHO+TNDGlqnnwMratHGp+8rVKeA
 2AiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=WdGiGfpb5gg3RqJI90ZZhxX/hv8rwpQi11672qMYmdU=;
 b=XndlDUL2xbfC1IoKXJgoe1qEDnFMVR8XPF4QFRgm0+MxF8Uz6tTVP90dmdKdrxLvIO
 HotloGZOKvZqeHIM8lZCJnbzh7sh+HIx69+WxETmmQSWeIxi9jy9aFLfgSAOqeuHKerM
 gSaDHC2ORnhl4kxUFVseyd7NXSbJBvYDuV+KoVPw40R34gg5s5TyQEY75tGZ+hx9nM1N
 RBaQOnctoB7uBq85Yd+FiLIlaJZGUKIFDPyfhFC1risRNzKEc2qXAE/+CiKUYklD3Xjw
 oNvyKmIuOvMCoaA6tn83NQ3wNe8cMzNavvAYQDfn7g3YhnKrTrH5lGHJ4yKROYaVuU5+
 XXww==
X-Gm-Message-State: APjAAAVCSRpveStcZjpqJGGdFKJvWUtq+QGWYkNQnJPXaOLE90kX54qg
 +Sq25w4+BsvsmK2j+Tj8dW0Pj6TR22dxtpoOCDo=
X-Google-Smtp-Source: APXvYqyaJm1rLglUusFiqJgEBo62Yc/cLr5VeLjHo+oflwkU5oLZ9EvkWDDGl1KDLanXaUcBb3t3tPTCivIZFYOq/YM=
X-Received: by 2002:ae9:e844:: with SMTP id a65mr3491557qkg.127.1581533017028; 
 Wed, 12 Feb 2020 10:43:37 -0800 (PST)
Date: Wed, 12 Feb 2020 13:43:31 -0500
In-Reply-To: <cover.1581532523.git.marcgonzalez@google.com>
Message-Id: <feadcde28a987fad12011a5f17b29f2147c09e12.1581532523.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH 3/5] staging: vc04_services: fix indentation alignment in a
 few places
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

This fixes some checkpatch warnings about incorrect indentation levels

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 72bfa0f73958..b2d9013b7f79 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2413,13 +2413,13 @@ vchiq_open_service_internal(struct vchiq_service *service, int client_id)
 			status = VCHIQ_RETRY;
 			vchiq_release_service_internal(service);
 		} else if ((service->srvstate != VCHIQ_SRVSTATE_OPEN) &&
-			(service->srvstate != VCHIQ_SRVSTATE_OPENSYNC)) {
+			   (service->srvstate != VCHIQ_SRVSTATE_OPENSYNC)) {
 			if (service->srvstate != VCHIQ_SRVSTATE_CLOSEWAIT)
 				vchiq_log_error(vchiq_core_log_level,
-					"%d: osi - srvstate = %s (ref %d)",
-					service->state->id,
-					srvstate_names[service->srvstate],
-					service->ref_count);
+						"%d: osi - srvstate = %s (ref %d)",
+						service->state->id,
+						srvstate_names[service->srvstate],
+						service->ref_count);
 			status = VCHIQ_ERROR;
 			VCHIQ_SERVICE_STATS_INC(service, error_count);
 			vchiq_release_service_internal(service);
@@ -3427,8 +3427,8 @@ int vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 	int err;
 
 	len = scnprintf(buf, sizeof(buf), "Service %u: %s (ref %u)",
-		service->localport, srvstate_names[service->srvstate],
-		service->ref_count - 1); /*Don't include the lock just taken*/
+			service->localport, srvstate_names[service->srvstate],
+			service->ref_count - 1); /*Don't include the lock just taken*/
 
 	if (service->srvstate != VCHIQ_SRVSTATE_FREE) {
 		char remoteport[30];
-- 
2.25.0.225.g125e21ebc7-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

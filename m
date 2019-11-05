Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D9BF09DF
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 23:52:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 741B122668;
	Tue,  5 Nov 2019 22:52:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oDcVSeU6+HW2; Tue,  5 Nov 2019 22:52:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 45CCD22201;
	Tue,  5 Nov 2019 22:52:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 04BED1BF2A0
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 22:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 01B1487D33
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 22:52:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CLc9cyHShwbQ for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 22:52:30 +0000 (UTC)
X-Greylist: delayed 00:18:30 by SQLgrey-1.7.6
Received: from mail-pl1-f201.google.com (mail-pl1-f201.google.com
 [209.85.214.201])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6D84387D28
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 22:52:30 +0000 (UTC)
Received: by mail-pl1-f201.google.com with SMTP id f7so3327394plj.12
 for <devel@driverdev.osuosl.org>; Tue, 05 Nov 2019 14:52:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=CCGiR1f3G25IecrMOhR3o2w4VVtVsavel19sWd21L/Q=;
 b=HxboiFGL7EacmtgiJIJKPgwMQ5HvfyO44M1uCpq9L2OB6Wqt8hodAIHgfqQajG2sdq
 GAOzA9GLQRy0Wv3L7jiJvzF7x2ueMeaI11npMhOEr2Dx0fS3MMHH2C2LwbBBHoFrrToQ
 8+qfMihz8r/eZFVaFpX2inEgaKB2hz0JovS3xDlh9QvddzxIw1ds0F0UAXTHlzjuQZlS
 /xdV4r7fnVnZj5B6MTR26y8IpHXLLYsp1sB06LpYVkvMJyBvGtoFgdyo4hA8lT9kKuod
 f81znkpqTlTej26R/S61esEKyO0qJcf4ZeyWPmKNmcJuj0yQ3uzN6/bUD8qNBBon9U0X
 SVkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=CCGiR1f3G25IecrMOhR3o2w4VVtVsavel19sWd21L/Q=;
 b=r4ao+jjSOUaHnY7Np7vtykxExmDdqBIjhmoSZuWPlU/KqsvrW5pqYQw33WsUhXfDN+
 uFLPzp0xYYUhXfgZs7BKggqExn2qGUmHZ6oO0WKKBxtkCjoCFqo4hRfTxmwVw7BxxE8Q
 zIhdO/opoE32FVyYyFjXs0oNHoFW20UbOMjgDPlJvbnoRubo6ldA+VrwKQQDiVCYkg+a
 AwhQYIUjcirIZEN7nuHl2EcHc6VUGK6wuxO1Voj7wQboeTRQOv7wPOR6qVQwjKuFsX3W
 wNaVjuo0RavWy9soJ0lEQHLYefnDfOnGF1oiwPrsgmN10qcFjcJONxP99eJuVsh9WFHv
 AHxg==
X-Gm-Message-State: APjAAAVYzyepuRWvEmyvt+5gdcnqJsoyMczK2PXfdavM533KlmyZYAyE
 a2AOMsDYzSuDxVvTVDwMQiX8IySaCNW+kPTuU3c=
X-Google-Smtp-Source: APXvYqysIxf3gMu5pDoZdzpYQDAfsN5pEGEnRrYsepXfhGfT99H3oJu5d7E72/WCgJPnDXnBJHrqpenVm3+jcgqbMeI=
X-Received: by 2002:a1f:7c01:: with SMTP id x1mr4999439vkc.15.1572992877621;
 Tue, 05 Nov 2019 14:27:57 -0800 (PST)
Date: Tue,  5 Nov 2019 17:27:56 -0500
Message-Id: <20191105222756.25369-1-marcgonzalez@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH] staging: vchiq: Have vchiu_queue_init() return 0 on success.
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It could be confusing to return 1 on success and 0 on error
given the style elswhere.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c    | 2 +-
 .../staging/vc04_services/interface/vchiq_arm/vchiq_util.c    | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 17a4f2c8d8b1..c76d5b2e0701 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -579,7 +579,7 @@ static struct shim_service *service_alloc(VCHIQ_INSTANCE_T instance,
 	(void)instance;
 
 	if (service) {
-		if (vchiu_queue_init(&service->queue, 64)) {
+		if (!vchiu_queue_init(&service->queue, 64)) {
 			service->callback = setup->callback;
 			service->callback_param = setup->callback_param;
 		} else {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
index 5e6d3035dc05..644844d88fed 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
@@ -24,9 +24,9 @@ int vchiu_queue_init(struct vchiu_queue *queue, int size)
 				 GFP_KERNEL);
 	if (!queue->storage) {
 		vchiu_queue_delete(queue);
-		return 0;
+		return -ENOMEM;
 	}
-	return 1;
+	return 0;
 }
 
 void vchiu_queue_delete(struct vchiu_queue *queue)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6B6556DE
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 20:17:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DDCA5207A2;
	Tue, 25 Jun 2019 18:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXxLNWvSOrgt; Tue, 25 Jun 2019 18:17:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B2332078C;
	Tue, 25 Jun 2019 18:17:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B3EE61BF3CE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AEF4E20781
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I2eecAeZQr80 for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 18:17:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 6876F203C7
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 18:17:25 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id k8so9283492plt.3
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ic2sos3p2ZO51dPXYEpE88vNYNF9xpgqADXaFZWGMEA=;
 b=BtjPMi1+Roch459MDj3Oht2eS9e6nKl1QAR6lmeAee2jCJb7iKVK8kfRlDB1ZsZziM
 /VOV/m5RebeHOGoZHds8M1Y33qn6ZZ9xz4GyP5ATCD6q8YYgLZilB9XC6as/8dZHZDax
 I9IZRxdLrghDjbaLK29OTAcGO3vZoSs6f06t5PsNRZ9RwXYQAPfMuE4mxturp8tMw0Ke
 EdLggZl0UQ472RYIaY7S5eVQbqLpCbL9sHOyHfoprpiV7wd4xHPZa90Jm2SBcl1H70LC
 +gMKHt1UnjDkrzDTco17QZJV90nn8SaNevFW2+5Gyy3PoYuYkWsK1AMr3OxKMRNn8frd
 ABtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ic2sos3p2ZO51dPXYEpE88vNYNF9xpgqADXaFZWGMEA=;
 b=nyy/UgDiYvYZu9LDEteUbDEnlEhOoQ2hJQVDrw1o5xdBsQwrvMfy+jpUn4/yeml0r8
 UxjvQP9P/dBuI+MAYnHvhPu8TlWZh82znN7OkIRtooivzrBiaOXISdYqyBXrytlE+/do
 OxbtpLsjsNVcAjhyp3S6YC5AMGjjaNRgC7f4wNJmhHA3VA0eLCI+Egld6HJH2EtGjz7Q
 fUcHeHNlexbhLKc2r3S+50nJZ/2kKWT/CjQzQW0Qba+wjgEOMNIcbxp6TgLdSyRHgLXw
 KL7gGIMNLqPahK7f9MD3z8y2XWo4wL61q75yFG5GkBTV56XPLxjUbp+9Ww7arimDIPH3
 V6sQ==
X-Gm-Message-State: APjAAAX/LhbpjRLtOrGAVSAZkCmCxDtGQ3Xgfr/P1tcmOuoUGtsLRq+V
 OO1cjVPJHf0EULYkOYXrFco=
X-Google-Smtp-Source: APXvYqzFgH6YNemAXMamssS24KzgeSF3SUtZouLUzp2jMdNUAptfS71nh+KiZb/gK5Cr/UGn9yaGjA==
X-Received: by 2002:a17:902:22:: with SMTP id 31mr40001pla.15.1561486645099;
 Tue, 25 Jun 2019 11:17:25 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:24 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 1/9] staging: vc04_services: Remove function
 vchiu_queue_is_full()
Date: Tue, 25 Jun 2019 23:47:01 +0530
Message-Id: <20190625181710.2267-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove unused function vchiu_queue_is_full.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_util.c   | 5 -----
 .../staging/vc04_services/interface/vchiq_arm/vchiq_util.h   | 1 -
 2 files changed, 6 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
index 8ee85c5e6f77..5e6d3035dc05 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
@@ -39,11 +39,6 @@ int vchiu_queue_is_empty(struct vchiu_queue *queue)
 	return queue->read == queue->write;
 }
 
-int vchiu_queue_is_full(struct vchiu_queue *queue)
-{
-	return queue->write == queue->read + queue->size;
-}
-
 void vchiu_queue_push(struct vchiu_queue *queue, struct vchiq_header *header)
 {
 	if (!queue->initialized)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
index ee1459468171..f03a4250de0d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
@@ -40,7 +40,6 @@ extern int  vchiu_queue_init(struct vchiu_queue *queue, int size);
 extern void vchiu_queue_delete(struct vchiu_queue *queue);
 
 extern int vchiu_queue_is_empty(struct vchiu_queue *queue);
-extern int vchiu_queue_is_full(struct vchiu_queue *queue);
 
 extern void vchiu_queue_push(struct vchiu_queue *queue,
 			     struct vchiq_header *header);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

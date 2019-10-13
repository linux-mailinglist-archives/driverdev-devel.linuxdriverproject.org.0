Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AD5D5771
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 20:48:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C135186969;
	Sun, 13 Oct 2019 18:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7jFkS2fSr8ak; Sun, 13 Oct 2019 18:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2CDD8682C;
	Sun, 13 Oct 2019 18:48:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A07741BF2A3
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 18:48:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8123B8682C
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 18:48:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6dXmP9LpO6DJ for <devel@linuxdriverproject.org>;
 Sun, 13 Oct 2019 18:48:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D82A686816
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 18:48:09 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id c3so7002888plo.2
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 11:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CeolOloPmeT1KftxvZqohSF0GTQr4950rvmG7EqO4RI=;
 b=LMJEV2LhnI60/Nw7SKRueRtun4v6UR9IX/6grkybDx8B+B0v9Ehmq6AwMQD3EnrlLz
 T31x4qCb0dMOf96n28fKNB7hh9OLhM+Gen0FZnmcaQi5qagwAWTwUurck+1UcqCNvQJm
 eKkovSONyDfHxxNvIVqjDHRfn4uRAtXwsX5wu0e8o+U1xDma0HpRZz2QP+UqEKyoL9sN
 nW+nKDBLr38INuRZIvYyEqIKUtH3TcQK8hA8Tbm8E9zpyUqYlm3psGqz08rio7VRLRd3
 Ysg6cQCKIBmQmssIEBwctG8ph8/cwb7BTONUhV8DvCnwDzDx6Y4O7M5hUa/rUWf2uMHp
 mXxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CeolOloPmeT1KftxvZqohSF0GTQr4950rvmG7EqO4RI=;
 b=ZUiac/0oz8C/YnvxSbEzl0gvKEtNy0XDzDCHCnoW6OCqaQa3dJamLGPkTKni/B5s3U
 NM+J6xqYJeMvkNox/BJgZ0K4vKhCKT79KnROkH8tafzt7v05BLILXjjj5wDkhK+M402X
 B5GurwUbN6b+xmXqi3bIiMnR0jilrJIQ2UKYzyPJ/A6y4H18wtZXD3MvUG/fUCbHWu8w
 D9EVHqh2XDnjJf3INn/Ngld50wAflBvO2QAJQwFCmv3qWaEcjPE/X2jH+j9NKGGaUuQc
 HMb1RsTm5r1GpV1R+z4UI0w4nui7r8NK4nOmaWZx7OMTF6QbfxRMESzRszc487jUP0Ni
 mzYA==
X-Gm-Message-State: APjAAAW7Zroa+UjSTsd3n6qYloxaykX4c59w/iuFUMwv3ERk3NnTkjiY
 0OqjjPLN4kvMkaiOYmwWLJQ=
X-Google-Smtp-Source: APXvYqwgOspCeAA1P9HhtOsCDHA+mh6Kslt8WDA4XoK+Jt4+cpb0481gXLa03aXA8nFDe2MgtkqcEg==
X-Received: by 2002:a17:902:bd05:: with SMTP id
 p5mr25785990pls.203.1570992489363; 
 Sun, 13 Oct 2019 11:48:09 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id 4sm13813926pja.29.2019.10.13.11.48.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 11:48:08 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04_services: use DIV_ROUND_UP helper macro
Date: Sun, 13 Oct 2019 21:47:50 +0300
Message-Id: <20191013184750.32766-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, wahrenst@gmx.net,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace open-coded division calculation with the DIV_ROUND_UP
helper macro for better readability.
Issue found using coccinelle:
@@
expression n,d;
@@
(
- ((n + d - 1) / d)
+ DIV_ROUND_UP(n,d)
|
- ((n + (d - 1)) / d)
+ DIV_ROUND_UP(n,d)
)

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_core.h    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 63f71b2a492f..75104986201b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -60,8 +60,8 @@ vchiq_static_assert(IS_POW2(VCHIQ_MAX_SLOTS_PER_SIDE));
 
 #define VCHIQ_SLOT_MASK        (VCHIQ_SLOT_SIZE - 1)
 #define VCHIQ_SLOT_QUEUE_MASK  (VCHIQ_MAX_SLOTS_PER_SIDE - 1)
-#define VCHIQ_SLOT_ZERO_SLOTS  ((sizeof(struct vchiq_slot_zero) + \
-	VCHIQ_SLOT_SIZE - 1) / VCHIQ_SLOT_SIZE)
+#define VCHIQ_SLOT_ZERO_SLOTS  DIV_ROUND_UP(sizeof(struct vchiq_slot_zero), \
+					    VCHIQ_SLOT_SIZE)
 
 #define VCHIQ_MSG_PADDING            0  /* -                                 */
 #define VCHIQ_MSG_CONNECT            1  /* -                                 */
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

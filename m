Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C502100D
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 23:33:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E98678742D;
	Thu, 16 May 2019 21:33:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rkWgCjlMV07a; Thu, 16 May 2019 21:33:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0165087370;
	Thu, 16 May 2019 21:33:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B389A1BF2B6
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 21:33:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AFD0021553
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 21:33:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FMh9-1ZQlcpi for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 21:33:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id EE4A122650
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 21:33:46 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id l17so4887703otq.1
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 14:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RLsybBG6sLbUggVAi7bXCzaTyEG1llzt4l8NvXBkWD0=;
 b=kQKmujFhtAo72AB0snHcaDCif3+naULFQoilmAIC6cMGnoXGg8ewZ21JUB4lOVYrqn
 ziRwjT6PsQTzua7xc3imb9UZ4NgeYhIEclPb/biFpQyoDbDFAidppg+ZW3qHPFUXx0ze
 5IfccJ4XP9KqRDLcfeOaEywCQOBdZZYgC0GDrZWN+2m3m3f856Op6UdFGfgCGpOJ6QAl
 XXlLDRMeCUo3PgBP/hzld3xTl1ISadWuhZWoCvRqCNp1Qkc85SGbOHdmYMnoRrFT0++7
 rMqZUYKbrckThZrps3MkJEXsX5U4dRBUE5FB9eYeCVbeOysRMEsHfr2+3ePDXRIYTIjy
 zJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RLsybBG6sLbUggVAi7bXCzaTyEG1llzt4l8NvXBkWD0=;
 b=PFkKOR3ASrEGZfXwTpkK9HZVA00awNHqqfUFkaY+j62BCMDrPr7r98F9i7ta0C3hq6
 XXbvcHm4mDyGvhZC4SelWhLx8RmWAsmjpwQqafGn4j52e5QZIlvG1vvAj9g4Sm7DYcM3
 R314tncD3n+8iXJIbypl2RDGW60ftsF3ryVTYcvSHYR6MWBA3ZQo8n7k8+JpEDqEFASh
 CYp4bOp/QxlH7IUq3vOFDqvOsuiY1owqUCjIpzYQLOH/BK3udYDpTEwU+TRw2p2yEH7W
 ruLN3y7D+R+2fqqqagHhi4O8koce/uwNYruVQAFqeNomNa2SDTfEXLCWq6XbadrZ1v0I
 lApw==
X-Gm-Message-State: APjAAAWjOdR5q9GyO+gC1Cp59eV8WdXT/823k+xdIWilN25ZZ+B4vFmW
 O9ZKq5nSqm7SUHyJBYA3M0o=
X-Google-Smtp-Source: APXvYqw0GRwZ6MwUBRMhC/o2jF6nAxZtFpTyzX3MJ5sppTLWqV91vvWY1S8vKT1erdagGfEuy/oJcg==
X-Received: by 2002:a9d:7154:: with SMTP id y20mr7131771otj.369.1558042425977; 
 Thu, 16 May 2019 14:33:45 -0700 (PDT)
Received: from madhuleo ([2605:6000:1023:606d:10b5:228a:3958:f004])
 by smtp.gmail.com with ESMTPSA id 69sm2282544oty.46.2019.05.16.14.33.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 14:33:44 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com, gregkh@linuxfoundation.org,
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] Staging: bcm2835-camera: Prefer kernel types
Date: Thu, 16 May 2019 16:33:40 -0500
Message-Id: <20190516213340.9311-1-madhumithabiw@gmail.com>
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
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the warning issued by checkpatch
Prefer kernel type 'u32' over 'uint32_t'.
Along with that include a blank line after a declaration
to maintain Linux kernel coding style.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v2:
- Modified subject line
- Included one more change in control.c
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 3 ++-
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h | 4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 74410fedffad..5ad957e23895 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -52,7 +52,8 @@ static const s64 ev_bias_qmenu[] = {
 static const s64 iso_qmenu[] = {
 	0, 100000, 200000, 400000, 800000,
 };
-static const uint32_t iso_values[] = {
+
+static const u32 iso_values[] = {
 	0, 100, 200, 400, 800,
 };
 
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index d1c57edbe2b8..90793c9f9a0f 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -309,7 +309,7 @@ struct mmal_msg_port_parameter_set {
 	u32 port_handle;      /* port */
 	u32 id;     /* Parameter ID  */
 	u32 size;      /* Parameter size */
-	uint32_t value[MMAL_WORKER_PORT_PARAMETER_SPACE];
+	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
 };
 
 struct mmal_msg_port_parameter_set_reply {
@@ -331,7 +331,7 @@ struct mmal_msg_port_parameter_get_reply {
 	u32 status;           /* Status of mmal_port_parameter_get call */
 	u32 id;     /* Parameter ID  */
 	u32 size;      /* Parameter size */
-	uint32_t value[MMAL_WORKER_PORT_PARAMETER_SPACE];
+	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
 };
 
 /* event messages */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

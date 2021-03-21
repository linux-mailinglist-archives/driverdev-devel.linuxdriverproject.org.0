Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 056A43430E2
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Mar 2021 05:37:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 03D6540239;
	Sun, 21 Mar 2021 04:36:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TtlxAtOhiu3O; Sun, 21 Mar 2021 04:36:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 548484022E;
	Sun, 21 Mar 2021 04:36:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD3951BF4DD
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 04:36:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B118A4022E
 for <devel@linuxdriverproject.org>; Sun, 21 Mar 2021 04:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uHcZ7OTXB4KL for <devel@linuxdriverproject.org>;
 Sun, 21 Mar 2021 04:36:47 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qv1-xf36.google.com (mail-qv1-xf36.google.com
 [IPv6:2607:f8b0:4864:20::f36])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B78240175
 for <devel@driverdev.osuosl.org>; Sun, 21 Mar 2021 04:36:47 +0000 (UTC)
Received: by mail-qv1-xf36.google.com with SMTP id d10so7114593qve.7
 for <devel@driverdev.osuosl.org>; Sat, 20 Mar 2021 21:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cgjAg1npPwTI8+HwC0MGr8ZbYybNytKphsGDAOhPsLY=;
 b=lwHRgJHdI6PktQQz+JEk7ibvwGgLSHWbswwbhRcQtaWhd1D4wiYoI/VUQ0xImq30sE
 Emkoh8JenvMIL6SQ0PRKXCz2ImFsqBfT+ud3SqaKfF1ZWyUlCVG6U15ocldNqYp2cnbK
 FLBQ5RIS3tp8kh21ibc1+6kj92XD3nzZOV+j79j05u+yKLwJQtV5fgxy5+iiDRCYprZl
 qx/QlkOUS27EIdYVS999uEBUQRssRjQl4QQQPEr5TZ1FzGZ/BKef2fPyioHfPM1RHRoc
 uLS9bGQQWA++uTdTRCp7MMbrApuSYXOYLfElyc+JNbPjBKQOFzazVm8HI0CZTMXisee8
 8HBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cgjAg1npPwTI8+HwC0MGr8ZbYybNytKphsGDAOhPsLY=;
 b=SVw/38NeDNhZDQJLJ4erbi2gy2zi8Tk3gCI9dICwliw5TaDtZCCMt37fbXEoFEUtxh
 MytXGNw56S4ajvrYRYMZ+hfZRir1rV4z/dY2BdD1I8zPtQT/CuL1rP7ZeO0o56jze7hw
 BDcxdf+j4WqdhUixf76TNHWLE3fg6sDiEUiZiJLiZMqi48/bZE2TA5ogX6wVvUYCIC/J
 RTQJMnFWiG52mgyJSEhqvuOSXZlRoEK1bBNCVdpBB8HY6wkHWbi8odMgUMTPCHFyXHJz
 ZXIWSOnkuelWv6J57VnBLygzqobdzmsR+9js3Ih7nFuFXnPl0ju6Xw2ciGJ4R0s6mVLH
 FiCQ==
X-Gm-Message-State: AOAM532Mm7YmHrdYt0RmKEw70OQiRO7eqkWZn09X7RioPlerYERAsl74
 Epz+ErulHSBEZvMyMa7abZw=
X-Google-Smtp-Source: ABdhPJwxQQTq0TQ2vHLqc8iL7D4hvrPZfup+rA2DXEXO0JzU0c5JzdZxhK0ebgZ/ZoOT1R5RsPLsYg==
X-Received: by 2002:ad4:4d92:: with SMTP id cv18mr15892707qvb.5.1616301405966; 
 Sat, 20 Mar 2021 21:36:45 -0700 (PDT)
Received: from localhost.localdomain ([138.199.13.177])
 by smtp.gmail.com with ESMTPSA id o125sm8006024qkf.87.2021.03.20.21.36.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Mar 2021 21:36:45 -0700 (PDT)
From: Bhaskar Chowdhury <unixbhaskar@gmail.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org, jacopo@jmondi.org,
 dave.stevenson@raspberrypi.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: vchiq: Typo fixes
Date: Sun, 21 Mar 2021 10:06:29 +0530
Message-Id: <20210321043629.585758-1-unixbhaskar@gmail.com>
X-Mailer: git-send-email 2.31.0
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
Cc: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


s/sepecific/specific/
s/comonent/component/

Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>
---
 drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 9097bcbd67d8..06bca7be5203 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -432,7 +432,7 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 	m.u.buffer_from_host.buffer_header.pts = MMAL_TIME_UNKNOWN;
 	m.u.buffer_from_host.buffer_header.dts = MMAL_TIME_UNKNOWN;

-	/* clear buffer type sepecific data */
+	/* clear buffer type specific data */
 	memset(&m.u.buffer_from_host.buffer_header_type_specific, 0,
 	       sizeof(m.u.buffer_from_host.buffer_header_type_specific));

@@ -927,7 +927,7 @@ static int port_info_get(struct vchiq_mmal_instance *instance,
 	return ret;
 }

-/* create comonent on vc */
+/* create component on vc */
 static int create_component(struct vchiq_mmal_instance *instance,
 			    struct vchiq_mmal_component *component,
 			    const char *name)
--
2.31.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

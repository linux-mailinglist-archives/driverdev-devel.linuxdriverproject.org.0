Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A71422DD96
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 11:15:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D75B188852;
	Sun, 26 Jul 2020 09:15:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id umuYck6-rPgv; Sun, 26 Jul 2020 09:15:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 43C9A8816F;
	Sun, 26 Jul 2020 09:15:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F1F4B1BF35E
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:15:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EEE4988171
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:15:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pEetUv3BxQG1 for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 09:15:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 790C88816F
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 09:15:11 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id mt12so165240pjb.4
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 02:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gqsz2+R48srpESLq+ec96ZXtSgH1w2eJBdh6duitcjs=;
 b=rqW9TyJPPGeHjxPLemQmlKL8ITcw+Hx2rBaR2fL8cFQCuByvgN4XFxxaSm3Xvj1rvj
 58sNFDKRJfaZqlWzvcJxg6Y1awM4Uhlxh8QU0uxjhZCgy1+vwLVLw7UF8fHNHcEB1vbN
 eDGzpcDhqToR9D5EoSWoemqvr/lJhL+aWjtWJ3qqfPbqCyU1IficLgTBvNmEBT/nA2rB
 GxYuNQt9GmikOg7xhxbPDYJzX4DDmALTqXQzrcE1GXwUhVJxPNXtosysVgzJGWIE5FK6
 VvI8VamMvEZIjSPLblRWJc+zpU2JK46m9NBqttpK09QyeDVYybkJjxAWzhkxWBFhfaQQ
 JBpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gqsz2+R48srpESLq+ec96ZXtSgH1w2eJBdh6duitcjs=;
 b=fj6poNeh4EXT25vXgzpWc7WC6CUs4QwP9R3J6HaD/5Ld+ZgEqmaQG9DwUfJU/1pIQK
 8lsgcj+UEld+R9MqGfioRex4fe7MHm/gLv32uXjBMEwX4nYsX+hGDj0mB7Jo/IAoZUNs
 Z/vUB6u6T2+w0WwsMjd5GiD/tec2FkOmaFf5e64esZzmBgkXCcUUsYWiU7TtcaoKgK7y
 VD+iayDLqLHZsMZn3S0jWpz66/A9cm5jLIEwFcKJdOJ5KC/G8hk3h4a24fRWpXksOAjy
 YWqY1LhNIDDY4av/bpQy6RcNoc2x8I9C9oSo7bConfYGNh0pEP0pyMZ4BF3tu4ILlY/y
 YJKg==
X-Gm-Message-State: AOAM530z/utEjrA/YAWFYAcC5q941kvRRjwINHllYO1Nujj+7e7qeWlk
 McjMMvsaV0SZmRpgzugnRii9jfKEjFs=
X-Google-Smtp-Source: ABdhPJy1GXHYwnH0qCgksHECal1EE5PZaUsJgsr/UBBcTcxGQJXfIy2IVlYBLr66WYfcrTsoQ9Z+Jw==
X-Received: by 2002:a17:90b:ec8:: with SMTP id
 gz8mr7662770pjb.87.1595754911011; 
 Sun, 26 Jul 2020 02:15:11 -0700 (PDT)
Received: from localhost.localdomain ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id a129sm1608215pfd.165.2020.07.26.02.15.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 02:15:10 -0700 (PDT)
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org
Subject: [PATCH v3 4/4] staging: media: atomisp: fix line length exceeds
Date: Sun, 26 Jul 2020 14:35:16 +0530
Message-Id: <20200726090512.20574-4-bharadwaj.rohit8@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200726062541.11304-1-bharadwaj.rohit8@gmail.com>
References: <20200726062541.11304-1-bharadwaj.rohit8@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

this patch fixes the line length exceeded error from checkpatch.pl

Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
---
v3: change patch subject prefix
v2: split patch into sequence of patches 
v1: fix all coding style issues in single patch

 drivers/staging/media/atomisp/pci/sh_css_firmware.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
index 2208453cbef0..6e8f45e38804 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
@@ -243,7 +243,8 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
 	firmware_header = (struct firmware_header *)fw_data;
 	file_header = &firmware_header->file_header;
 	binaries = &firmware_header->binary_header;
-	strscpy(FW_rel_ver_name, file_header->version, min(sizeof(FW_rel_ver_name), sizeof(file_header->version)));
+	strscpy(FW_rel_ver_name, file_header->version,
+		min(sizeof(FW_rel_ver_name), sizeof(file_header->version)));
 	ret = sh_css_check_firmware_version(dev, fw_data);
 	if (ret) {
 		IA_CSS_ERROR("CSS code version (%s) and firmware version (%s) mismatch!",
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

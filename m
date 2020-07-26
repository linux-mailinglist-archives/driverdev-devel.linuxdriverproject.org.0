Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A01922DD91
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 11:13:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D364E87A8A;
	Sun, 26 Jul 2020 09:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UhJAsM6VSBG1; Sun, 26 Jul 2020 09:13:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2DFE987A2F;
	Sun, 26 Jul 2020 09:13:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 662311BF35E
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:13:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6091421515
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:13:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p61fta3UNI5P for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 09:13:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 9E8BD2046F
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 09:13:47 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id gc9so7573204pjb.2
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 02:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YrDgYZhjs1dj+8x3jneSfgyJjO2u96etnTlFhv2uD5Q=;
 b=O8omzwuVaU5WpP5ANvYJmgdSo2734rVpHeVjVUNFCUEYHRy7brOubHlafXonDyCBDL
 K5tHSyY7aR8rZUuZlCCo1vPFpzVVRP9zNftg1RoKEN7PBDz6TyAyR6U1mWy5+CbEIvvi
 72nPZuecnR8KdRcywUa6/8uisBab0Mj74VHXP9VJPa8yrE5SjYEmKg0X7BkpUPHkSQJM
 UNhzpVvQV+8NQFbHbsQbHOYX7w3oMrqimIMDbJ2/dkmzGBYplpx98V/ABkdUKJlHzM3K
 tlLx7Ub0doH2ksikXDzGMB1mRljaMfM3phexXZELbUbIYIrD1L7C3R/bgpDmSLod+g0M
 mNGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YrDgYZhjs1dj+8x3jneSfgyJjO2u96etnTlFhv2uD5Q=;
 b=N1wNbfZMySKYuDJIJ9Cjh4zQaRdm7f+BtHA4TqQRijnDU5RB8QV1RHVpG5HKKdSMGS
 MvcX5xXyxTkj2UcRpd86vd50hXq3b0SalcZuJPf5quZeE3kfGfdzI96O+/mA33T3RFDL
 D7rSNA54uCDb3Jr/sjZBZtGYbPquPpSjct4pH+Y6RbduOGPogpTjDMQbd6SqJwN6j4s8
 g3HYeNPc6R19HZICC6vqmJ5R/XZDbgnvfHOvEBqrrVowtwvkkW8ht98Ts/X89x7yHsVX
 QnTzN48XQnZN6xp8RY5uAetkDOfww1siacCMZ8iKgom4ahzLvdqJVj5D5Noh069eS3Wk
 Tauw==
X-Gm-Message-State: AOAM531Bxrleu5C7CtAHBopQxy2SzEacPOnu2vFXTYAo2hUq2dCVN3oc
 y9as5j/aqQxwR7v/cZVQAMw=
X-Google-Smtp-Source: ABdhPJxdkf2ND/mYSXvcgMk1H1J9dTstyoPN/OMg8rtJHrd4W0n49n/FZHLqpK4peSZGSxa3ir6Bng==
X-Received: by 2002:a17:902:c3ca:: with SMTP id
 j10mr15399183plj.171.1595754827175; 
 Sun, 26 Jul 2020 02:13:47 -0700 (PDT)
Received: from localhost.localdomain ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id a129sm1608215pfd.165.2020.07.26.02.13.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 02:13:46 -0700 (PDT)
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org
Subject: [PATCH v3 3/4] staging: media: atomisp: fix trailing statement of if
Date: Sun, 26 Jul 2020 14:35:14 +0530
Message-Id: <20200726090512.20574-3-bharadwaj.rohit8@gmail.com>
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

this patch fixes the error from checkpatch.pl which says that trailing statements after if keyword to be on next line

Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
---
v3: change patch subject prefix
v2: split patch into sequence of patches 
v1: fix all coding style issues in single patch

 drivers/staging/media/atomisp/pci/sh_css_firmware.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
index 988785ab6c95..2208453cbef0 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
@@ -115,7 +115,8 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
 		return -EINVAL;
 
 	/* Special case: only one binary in fw */
-	if (!bi) bi = (const struct ia_css_fw_info *)fw;
+	if (!bi)
+		bi = (const struct ia_css_fw_info *)fw;
 
 	name = fw + bi->blob.prog_name_offset;
 	blob = (const unsigned char *)fw + bi->blob.offset;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

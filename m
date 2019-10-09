Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF5DD19FE
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 22:43:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 06CA823335;
	Wed,  9 Oct 2019 20:43:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HwQv-PPVAVXs; Wed,  9 Oct 2019 20:43:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB9F01FEAB;
	Wed,  9 Oct 2019 20:43:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3282F1BF41B
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 20:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2EB6F86AE6
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 20:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AXXFN81s8ClQ for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 20:43:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0C27186AE0
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 20:43:25 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id p14so4705983wro.4
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 13:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lpln8geciAg4JbtsomIIKLOvA7kf5IwzYvS8cTZ6WVo=;
 b=Zq3v1jke+W/GXtjRbhGK/s7oBsB1wxO6GbK2me7gUkAwQawUoK/3KI/TseJwLbGnzt
 ARybW3WTsltkrseBEKdY/nn2GxLEHDFLv8nf5sLBx4Np1p9VXzLM0QiawEVcf71ZfDYq
 McMmuR9U9XSaD0qwNvPfnALJ+yniImr45Gc9gI8DgkmPct4ytA8kKU8Uesmj0Yc7Ohdi
 3Gd7wLNwvwwqIPr3Xw2llSqbV5CK+Ou4BDbD9GwH07EOsr+jQZRPh7NWW6dOClPjMFVW
 uFFduiRwcygYh199z6579/wKVKMjOrGmfLkI3e0TrWzKiAjSuUtUs2FkhSm3YehUag0a
 lUxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lpln8geciAg4JbtsomIIKLOvA7kf5IwzYvS8cTZ6WVo=;
 b=eSAwAzw125BAp7IH8eXIW9Uosa2Spks2eU5CTD0Z/bPlX9N7BWU/JAwI45txZvlCqZ
 1q+RUB3GTi28NWVi4U+lvcCemMuzUn5takG5AY2XVMnJS1md0KJF38XP59J89MG1Tw9g
 5JqfLYIzERup0XNpkoI3vOUzitsW5r//AbPTFafC/d42vT/AqqIhUtmfjBEe6NUBQ2ib
 6H/xB3l/V6WpHKaKIjCjBp7WvjpnmzZb6oJxFbEps8zI2btm053KAXg5aVkWiz/N/JCo
 DnElCeilNApVykK/9hP6uAAzNvSoPjxIFlwwDrmkJEf2okQKgE8qCG5zqionPhMGpO3S
 0IbA==
X-Gm-Message-State: APjAAAVNQuuMqqqv+s4BpWfEG05ocH3I2/zizb29TexzamjfXem9Qn3f
 8GOM2FTo0bpb4xFpFqqVA7fHe/3pzOg8g08=
X-Google-Smtp-Source: APXvYqwmkgUaym+RBIuuknYDK4XTZEQuWJzx9o7ZWqA1RdSGXschjm+nGXM4knVx56JAXAXYj0eAHQ==
X-Received: by 2002:a5d:4a81:: with SMTP id o1mr4349969wrq.291.1570653803279; 
 Wed, 09 Oct 2019 13:43:23 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id f8sm3601546wmb.37.2019.10.09.13.43.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 13:43:22 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: qlge: Fix multiple assignments warning by splitting
 the assignement into two each
Date: Wed,  9 Oct 2019 21:43:11 +0100
Message-Id: <20191009204311.7988-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 GR-Linux-NIC-Dev@marvell.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix multiple assignments warning " check
 issued by checkpatch.pl tool:
"CHECK: multiple assignments should be avoided".

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/qlge/qlge_dbg.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
index 086f067fd899..69bd4710c5ec 100644
--- a/drivers/staging/qlge/qlge_dbg.c
+++ b/drivers/staging/qlge/qlge_dbg.c
@@ -141,8 +141,10 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
 	u32 *direct_ptr, temp;
 	u32 *indirect_ptr;
 
-	xfi_direct_valid = xfi_indirect_valid = 0;
-	xaui_direct_valid = xaui_indirect_valid = 1;
+	xfi_indirect_valid = 0;
+	xfi_direct_valid = xfi_indirect_valid;
+	xaui_indirect_valid = 1;
+	xaui_direct_valid = xaui_indirect_valid
 
 	/* The XAUI needs to be read out per port */
 	status = ql_read_other_func_serdes_reg(qdev,
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

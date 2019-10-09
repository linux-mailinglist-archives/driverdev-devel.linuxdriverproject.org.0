Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B6CD196D
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 22:10:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2993987C0E;
	Wed,  9 Oct 2019 20:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cz+iQuzlL8Nt; Wed,  9 Oct 2019 20:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7592A86489;
	Wed,  9 Oct 2019 20:10:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94F3F1BF41B
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 20:10:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8453F878E6
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 20:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F6Y3MMD0Aaqk for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 20:10:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ACF4E86489
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 20:10:49 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id j18so4543985wrq.10
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 13:10:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lpln8geciAg4JbtsomIIKLOvA7kf5IwzYvS8cTZ6WVo=;
 b=L0zXhNw7qBam7wrKS7JhTdw08I1S4PNNqW1Az7P9Jems3tOv0VwUV61koAjx/VsqKn
 iyJltod0nZI1EPU4GZCDGAWhTUeD2qRkZKHi9xvMGIyAulkgZerJbEomKDVcsgvf9gNa
 w1M43aRwXw2kR0AbKBoQZTXAwkBhOQaCu9HYE2lbjQXHipLtd6j4pZ+2ZPq1R/NVb2bq
 gAxOPGCtJ/NQCiwrOe8Fv4aRrOVAk02mvtJwHuakxadtuuoCiDN8kemyz5PmuwavrQpD
 ztIpGrkobMqQtWbbeR1o3pG/uVUtV6eEKyGj7DnEJ404xn1SnMAf8YBS7zH0IA3h0DdQ
 P2FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Lpln8geciAg4JbtsomIIKLOvA7kf5IwzYvS8cTZ6WVo=;
 b=fsaBsjlxPNi4D1zGuU3eIjuo+t3ziaG6kksP5GM3fhULiJUOpaIMXN5OJURFgnuW2B
 M4iDgKozdE6S4wAtF0xMhYrDaRw8jbLXkInZpeWip3gEynRO0ZXJ3N5dKEkjL5qI1hPM
 IAx1ErztyOwqFN84eMd9UzY6jqkmH99LWmdLVv0vEWoYxRNSWGMXzcx0x8qbck1S1Ukg
 yffNzbwJI0+W3+Sw3WE4VQILfqNg5kEjbilJymFW27tdKWM4NnjY4nC4rwJP3Vf8l9Ud
 MVO6v69ikW65mm94ZsPLIHQWm7h7syFPbnCf+yHAe7hELpB2Q7o5o2nwXrhoe8uHYMPI
 Fg/A==
X-Gm-Message-State: APjAAAVZumOQWl2TJqMPmfFuKkHn4zn/gT89ntaU90Gr4Lor2K/MCKKr
 h3RCPxWSdHXIYkx6eotCrvOe4EoJ+r9RIa4=
X-Google-Smtp-Source: APXvYqwXoGBj3tn3XNFibK0HKaQfnFrBsFLbTYl9IfV4unRtbFWvuRg6s36sD0W1E4YCoCwyweLdCg==
X-Received: by 2002:adf:9b89:: with SMTP id d9mr4366751wrc.275.1570651848011; 
 Wed, 09 Oct 2019 13:10:48 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id g3sm4638311wro.14.2019.10.09.13.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 13:10:47 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: qlge: Fix multiple assignments warning by splitting
 the assignement into two each
Date: Wed,  9 Oct 2019 21:10:29 +0100
Message-Id: <20191009201029.7051-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, grekh@linuxfoundation.org,
 Jules Irenge <jbi.octave@gmail.com>, GR-Linux-NIC-Dev@marvell.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
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

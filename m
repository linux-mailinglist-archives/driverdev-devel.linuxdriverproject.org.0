Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AC15519BB55
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 07:36:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1312487635;
	Thu,  2 Apr 2020 05:36:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6TWJOCa+pPOR; Thu,  2 Apr 2020 05:36:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0738D86C0E;
	Thu,  2 Apr 2020 05:36:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C2D51BF863
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 05:36:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7931586C34
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 05:36:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Am8ZwLIFaZF4 for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 05:36:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5D2D886C0E
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 05:36:28 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id d17so1349543pgo.0
 for <devel@driverdev.osuosl.org>; Wed, 01 Apr 2020 22:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qRIzo5o5vpllI++B3nY//4/moCStw1oArBNgpNNZWE0=;
 b=YX4kK4/l4v2Dc+sIlNifTF+eu7cc0Xwqmrkw6+903BF5W9hYTPcWEQ1O8+LgEOjeXJ
 QXFfirICEm2ToMk+K+f0BAw2q3aM4+7i/mtghVUotn2aFVQr/rkHHVy4LVTDEhrRC3q5
 bG9OMYPBR3q3H/nLiX2GyaPOIqz5tskvc9Oyg/MuabGNsxkYzFRjlQCzUafRlE5XYHAq
 lXfnvpaasLeK+GEb7tU+b2Xxu9ZrwbqDiVUXeweP+wX9flK1mvhJRUyrWxmL/Prxknt4
 lE9I+3V7sQZxFcL0CdBjr6rIg+ML2jv5LdLcdtU2QhmAsVwdSUHcvQAgE6VYtTngmeYK
 qj2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qRIzo5o5vpllI++B3nY//4/moCStw1oArBNgpNNZWE0=;
 b=luabK5ylgzAt0TvQq1P0wo9X5yuttcDHp8vbPIwP8TVZQUrPB4Am7kzs2QEuaGjbPc
 zblehuinzJHIgZisbgYZZhDhelMljwmNsZZDoyDxDlRubMfGLVkzClAW3z2YGM1X+eez
 DcfffH3LqnST/E20ml8O47RyCJFJMozHR19xNfJLQaURqjqgvh/8oAYisw92Dg8xy3EP
 MHIlINu3+bOkZcN/65O55mHhxE8+rBhthhdCHDX98VTkg4Hvyj+2k46+ce2SXB/wV/ND
 faFZWrk7mFPgZ4ielVH5f+zwaSh/gtkJ8A/+0IDdZj34pDPA7KCEo4prQ8bUn/OK0vFU
 lqRA==
X-Gm-Message-State: AGi0PuawBrO0cl0aM/ieikIcQOdMPmG/z+IjKYw+kxvdsmDOQs/iXrj5
 hvjFi09OUhA0tS5zQlDRFyg=
X-Google-Smtp-Source: APiQypIAgreB/HoC94SMNNTLUG92Y3nyUkudT6yq5FXpvuXoHAEl+87D1f6IfaXfXj/J4INNUM45eg==
X-Received: by 2002:a62:7950:: with SMTP id u77mr1573409pfc.34.1585805788026; 
 Wed, 01 Apr 2020 22:36:28 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id y28sm2863136pfp.128.2020.04.01.22.36.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Apr 2020 22:36:27 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>, Ben Chan <benchan@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] staging: gasket: Fix comment 75 character limit warning
Date: Wed,  1 Apr 2020 22:36:17 -0700
Message-Id: <20200402053617.826678-3-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200402053617.826678-1-jbwyatt4@gmail.com>
References: <20200402053617.826678-1-jbwyatt4@gmail.com>
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
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix 75 character limit warning in comment reported by checkpatch.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index f48209ec7d24..5ad15f398893 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -50,8 +50,8 @@
 #define NUM_NODES 1
 
 /*
- * The total number of entries in the page table. Should match the value read
- * from the register APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_SIZE.
+ * The total number of entries in the page table. Should match the
+ * value read from the register APEX_BAR2_REG_KERNEL_HIB_PAGE_TABLE_SIZE.
  */
 #define APEX_PAGE_TABLE_TOTAL_ENTRIES 8192
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

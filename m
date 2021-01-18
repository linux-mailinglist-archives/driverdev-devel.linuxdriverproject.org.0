Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07772FA178
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 14:28:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 134D58704B;
	Mon, 18 Jan 2021 13:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 44GnlCKkaGNx; Mon, 18 Jan 2021 13:28:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68E2B87016;
	Mon, 18 Jan 2021 13:28:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 44B451BF3CD
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 13:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 40A1086443
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 13:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p3nugL7tUJvc for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5948C863EE
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EAE0222B49;
 Mon, 18 Jan 2021 13:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610976499;
 bh=heSPP3aRBgBZFx/Q0SMe/3RDJAAippqxfJey05I92D4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W5we0A2yuIGJ2VW466I79lgXS2RCOscbS2ZSzRRxT9RPcnPgM1fT4mmQmMuVgcZSY
 PEmAraUZjz6P2mqm9NW8oNELW1QXr5MP3mJJecDy41XexNF+BtCFEcLTh5+pFcyzRN
 Zzh9G2uXrlJ8LVOOp4jwoVDYpqyhkwfhxFUExRKNsoMKhVk1SlWg1E2p7Z7pwlAVV5
 7pOzvv62kSv94lg3/OYkKY0N4P4uWCsZtb5FOSRChMtP2VcMajFt5KJ8HGMQz3jHG1
 MiABKWnyi18HG5J6DoS8NF/UdfVtt7Edu6aVelrGcOsn83Jm6EyNY3btiePXGnKdz7
 dmkRHGq9IfDTQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1UZs-000Vkg-D4; Mon, 18 Jan 2021 14:28:16 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 02/13] staging: hikey9xx: hisi-spmi-controller: clean
 sparse warnings
Date: Mon, 18 Jan 2021 14:28:03 +0100
Message-Id: <0a1b05424637b47e5c93c047e436f2ab2b88c5a5.1610975633.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1610975633.git.mchehab+huawei@kernel.org>
References: <cover.1610975633.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Sparse complains about __be32 conversions:

    drivers/spmi/hisi-spmi-controller.c drivers/spmi/hisi-spmi-controller.c:164:24:      warning: cast to restricted __be32
    drivers/spmi/hisi-spmi-controller.c drivers/spmi/hisi-spmi-controller.c:164:24:      warning: cast to restricted __be32
    drivers/spmi/hisi-spmi-controller.c drivers/spmi/hisi-spmi-controller.c:164:24:      warning: cast to restricted __be32
    drivers/spmi/hisi-spmi-controller.c drivers/spmi/hisi-spmi-controller.c:164:24:      warning: cast to restricted __be32
    drivers/spmi/hisi-spmi-controller.c drivers/spmi/hisi-spmi-controller.c:164:24:      warning: cast to restricted __be32
    drivers/spmi/hisi-spmi-controller.c drivers/spmi/hisi-spmi-controller.c:164:24:      warning: cast to restricted __be32
    drivers/spmi/hisi-spmi-controller.c drivers/spmi/hisi-spmi-controller.c:239:17:      warning: cast from restricted __be32

The conversions there are valid ones. So, add __force macro
to disable such warnings.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hisi-spmi-controller.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
index f831c43f4783..4be2344ad7b5 100644
--- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
+++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
@@ -161,7 +161,7 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
 			     SPMI_SLAVE_OFFSET * slave_id +
 			     SPMI_APB_SPMI_RDATA0_BASE_ADDR +
 			     i * SPMI_PER_DATAREG_BYTE);
-		data = be32_to_cpu((__be32)data);
+		data = be32_to_cpu((__force __be32)data);
 		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
 			memcpy(buf, &data, sizeof(data));
 			buf += sizeof(data);
@@ -236,7 +236,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 			buf += (bc % SPMI_PER_DATAREG_BYTE);
 		}
 
-		writel((u32)cpu_to_be32(data),
+		writel((__force u32)cpu_to_be32(data),
 		       spmi_controller->base + chnl_ofst +
 		       SPMI_APB_SPMI_WDATA0_BASE_ADDR +
 		       SPMI_PER_DATAREG_BYTE * i);
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

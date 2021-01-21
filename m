Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6982FE3A7
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Jan 2021 08:18:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5FBE86915;
	Thu, 21 Jan 2021 07:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zm3JIqKFHUpa; Thu, 21 Jan 2021 07:18:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5459584DFE;
	Thu, 21 Jan 2021 07:18:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 21F591BF873
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1006A871B5
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U4WLrC--tnvD for <devel@linuxdriverproject.org>;
 Thu, 21 Jan 2021 07:18:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 592C3871B2
 for <devel@driverdev.osuosl.org>; Thu, 21 Jan 2021 07:18:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 51C78239EC;
 Thu, 21 Jan 2021 07:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611213508;
 bh=heSPP3aRBgBZFx/Q0SMe/3RDJAAippqxfJey05I92D4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=h/iSgnr7UmOFuFddPhymY3/FLGvcaDzP0+mX8PB6/16eTW5TNwFaDmbSjsf4Lh5xr
 VL1hkPg6gaJA62CXq7YicjFKcpVLRRvnHowKa6dAx1UKbJbUyJ32QI+YyG2mmoa7Jt
 eQNITokKd2FFst4l1mUtrTS+tM5Y4XsRdjPyUUbUtJQ6BT/8lnkFlPy+3cGwR+7STI
 9XzisPaMEHsghraem5x5z/qnxzP5cY62+HgC1fghKnLSWI/9DVdvsm5yhy9YaL4M4a
 /CqbqqFd/LXESkfLPhVBx6WH0iPWdBpBfcgxMhodLUnxvExBUWXHjS38aXjT1rk8hV
 70O2bDzd6nIyw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l2UEb-004Bs0-Bv; Thu, 21 Jan 2021 08:18:25 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v5 03/21] staging: hikey9xx: hisi-spmi-controller: clean
 sparse warnings
Date: Thu, 21 Jan 2021 08:18:05 +0100
Message-Id: <eb1de896d80a0dbae9c48f00878ab34d29d3fb4c.1611212783.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611212783.git.mchehab+huawei@kernel.org>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
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

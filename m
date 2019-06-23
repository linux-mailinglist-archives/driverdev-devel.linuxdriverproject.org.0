Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 688584FD15
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jun 2019 19:08:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F02CD20468;
	Sun, 23 Jun 2019 17:08:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M4ZQ8977aoXR; Sun, 23 Jun 2019 17:08:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA157203D1;
	Sun, 23 Jun 2019 17:08:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B69691BF47A
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 17:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B15AE8547B
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 17:08:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V0HXu0IX-XRn for <devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 17:08:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D91C884D49
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 17:08:13 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id d15so8079843qkl.4
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 10:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DEscWWmNyD0k1ManLTEItc70FqDRXwSTSIeyQ9TNq+o=;
 b=BsnTwcpCQh7Iv9eYzP+KWWfGWAEEG7cXV0RcKtGsbx5b21QtGsU8S6ghggb4jEhb6b
 JaBTSyH44+9aWTZ2x3sOE4szIjzx9bBfRf+N0eaq7LBVV9LpNqgkW/fAJ1wdyjBx1M+r
 glVepG/0/ithAZO2i7Ild5eOisiHn3MEW0Y4aeP0z0lqThK2LTrEKbgcwuyj3w/J6qYj
 ASNQ9B2S4mk4pyQpcppI/jA0iTwfRyrYQjeYT7muZ2nSrbjgmHvJOhUJi+uKZj6bi2vW
 d7Q2l90IhlqI3S7uj0CaVMuJ1ZmDEJVZw+UmO4A9/uHUuMiBDHubGSiEHNUHHAqSoW/F
 fc3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DEscWWmNyD0k1ManLTEItc70FqDRXwSTSIeyQ9TNq+o=;
 b=KLckNJ4x1XAfr9oHz03rjg2enGHVHVGj+3kVuBtxYRA6iLhBT9dLdWqkiosAQ06rN3
 SaYe2l0+lh2BNDhcPcOBy21ViIz1ACxQwsAKgYpuQwJpnPVkxaL+QN+4eNRjud8+l3a2
 +3dKxNDtrYzYUkNSZ8bOjbohWYcivLAmQ8fdOOaauXJAfceRkwHuFGUffzTc+M217BbE
 yAzHVA9Z+L5cfesKFTnrOZ23HO4FTfw6VSdl/8hrd13I9QEdL2piBX/GQOr2QlfSQFm1
 lZ6NqeUvkNCY5F49BVa/Pum5F1gMkBQM/TCmwCcTPSsiax43y0Z7WXrnJPfIPVk2Hfop
 IjWA==
X-Gm-Message-State: APjAAAVolA8U1TUwgcbxBhHPDqUZ8zborG61Z+qVkYCAGFy3jD5sTTSp
 hE1HuJX6qT+ZsXzAlK1B5Fc61e3T
X-Google-Smtp-Source: APXvYqw6QcRfaqInl2aO/o81L9UytRsutBhH/KmYer/h86GtgLAINiUX1NwGFSyM867m0VXsUXoQNQ==
X-Received: by 2002:a37:404f:: with SMTP id n76mr5315342qka.27.1561309693019; 
 Sun, 23 Jun 2019 10:08:13 -0700 (PDT)
Received: from localhost.localdomain (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.gmail.com with ESMTPSA id o54sm5790756qtb.63.2019.06.23.10.08.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 10:08:12 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 1/4] staging: media: tegra-vde: Remove BIT() macro from
 UAPI header
Date: Sun, 23 Jun 2019 20:07:27 +0300
Message-Id: <20190623170730.5095-5-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190623170730.5095-1-digetx@gmail.com>
References: <20190623170730.5095-1-digetx@gmail.com>
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The BIT macro isn't available in userspace. Checkpatch complains about
shifts being used instead of the macro and people are starting to send
patches without realizing that it's a UAPI header file. Hence let's
replace the BIT macro with a hex values to make everyone happy.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/uapi.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/uapi.h b/drivers/staging/media/tegra-vde/uapi.h
index a0dad1ed94ef..dd3e4a8c9f7e 100644
--- a/drivers/staging/media/tegra-vde/uapi.h
+++ b/drivers/staging/media/tegra-vde/uapi.h
@@ -6,8 +6,8 @@
 #include <linux/types.h>
 #include <asm/ioctl.h>
 
-#define FLAG_B_FRAME		BIT(0)
-#define FLAG_REFERENCE		BIT(1)
+#define FLAG_B_FRAME		0x1
+#define FLAG_REFERENCE		0x2
 
 struct tegra_vde_h264_frame {
 	__s32 y_fd;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

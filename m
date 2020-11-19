Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 192922B915A
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 12:44:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4022A273B5;
	Thu, 19 Nov 2020 11:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WeJ1EyVIXYtL; Thu, 19 Nov 2020 11:44:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D100E258A5;
	Thu, 19 Nov 2020 11:44:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47F1F1BF397
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 11:44:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4357D204E9
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 11:44:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N3xsdRiSgTuS for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 11:44:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id CB93D204E5
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 11:44:32 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id x13so651355wmj.1
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 03:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7UYcdiQ2xTJ++YcP+4Hg54iS9Y17F7v8T/q2I1V5Umo=;
 b=iYw6TDYMP4pKhRcCmt1HPm+oLv2jeNc6hliSUsNiMiUw4TSMm/Dpw4IiQ+z+fzhAKB
 KJMcCrP91iYyNgIwDEFXUolVAqns5Zd8hlh/3ygcMDx7tGgnSD9vyeBwqkU2JEljfxkp
 nyDbJA1A3ClHlBPIkvZvLDLzA525jww5XIGbc6HeIy5g+pA4X/V14+Hyjl/ZLJvKkUn2
 BUjJcCIUQROHtHI8P2mN0XOiK1YygFV5a4XzZPa949zPOz2Lg5KfZYNPJ0jwnP4bpBwi
 xCzcoWOUeoq+LvJCtJi88J0tV3j6GqDWJFwdEfv/HKweTToQzKANiKlWHTHvSwW7h0xN
 azOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7UYcdiQ2xTJ++YcP+4Hg54iS9Y17F7v8T/q2I1V5Umo=;
 b=lS/M+BfCgss+VKDc7YcUJ/wFFsgpTFe5IsIZ1qxwYen2w9uonKe6QUUQILpOtj8fAL
 hp9wFczGtyJ72z3x0v2hYF59XEf4TiNHGySHoTRtJccqOtKFMGiUJdh+laC4CVqsK4Be
 Map4Av4heNpCfnBJnLx0a5k2o+1s2/2L79GMcZ9fcImFrLewg7B2lB6pQgNR84KcLTpb
 Gq2voFWRHWFyaOV22l+2OmNt3Ytz31qHYHvoZJIKI1F6Jf7nBNjVdbLADdcJBeyagsSJ
 xNs3sem5Cq1zWTZmLoTMDTP7ENQyMZQK+DCWal8cFH5V8Qyz92w2u1gQszFnd65QQ7dg
 JmMQ==
X-Gm-Message-State: AOAM530k5Wk85KJ7mAwpQJvVUYqf72Ocn2Hm991bkZoJLKEr54LTZCCm
 FCyi19Zv9Wq+sIXHsdzN8W8=
X-Google-Smtp-Source: ABdhPJzRJzHnoYflTdp3QPSJlWuBZLmT8oPtLDjKcLAEOjH7VnTOsAN1dLCo2JbGipVyVAmoRzywAw==
X-Received: by 2002:a1c:3c8a:: with SMTP id j132mr4023940wma.75.1605786271171; 
 Thu, 19 Nov 2020 03:44:31 -0800 (PST)
Received: from localhost.localdomain (59.red-81-32-35.dynamicip.rima-tde.net.
 [81.32.35.59])
 by smtp.gmail.com with ESMTPSA id k22sm9395570wmi.34.2020.11.19.03.44.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Nov 2020 03:44:30 -0800 (PST)
From: Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
To: 
Subject: [PATCH v1] staging: trivial: hikey9xx: fix be32<->u32 casting warnings
Date: Thu, 19 Nov 2020 12:40:30 +0100
Message-Id: <20201119114029.183828-1-juant.aldea@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, Jiri Kosina <trivial@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the following warnings reported by sparse by adding
missing __force annotations.

drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32
drivers/staging/hikey9xx/hisi-spmi-controller.c:164:24: warning: cast to restricted __be32

drivers/staging/hikey9xx/hisi-spmi-controller.c:239:25: warning: cast from restricted __be32

Rationale for #164:
data is declared as u32, and it read then converted by means of
be32_to_cpu(). Said function expects a __be32 but data is u32, therefore
there's a type missmatch here.

Rationale for #293:
Is the dualof #164. This time data going to be  written so it
needs to be converted from cpu to be32, but writel() expects u32 and the
output of cpu_to_be32 returns a __be32.

Signed-off-by: Juan Antonio Aldea-Armenteros <juant.aldea@gmail.com>
---
 drivers/staging/hikey9xx/hisi-spmi-controller.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
index f831c43f4783..861aedd5de48 100644
--- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
+++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
@@ -161,7 +161,7 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
 			     SPMI_SLAVE_OFFSET * slave_id +
 			     SPMI_APB_SPMI_RDATA0_BASE_ADDR +
 			     i * SPMI_PER_DATAREG_BYTE);
-		data = be32_to_cpu((__be32)data);
+		data = be32_to_cpu((__be32 __force)data);
 		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
 			memcpy(buf, &data, sizeof(data));
 			buf += sizeof(data);
@@ -236,7 +236,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 			buf += (bc % SPMI_PER_DATAREG_BYTE);
 		}
 
-		writel((u32)cpu_to_be32(data),
+		writel((u32 __force)cpu_to_be32(data),
 		       spmi_controller->base + chnl_ofst +
 		       SPMI_APB_SPMI_WDATA0_BASE_ADDR +
 		       SPMI_PER_DATAREG_BYTE * i);
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

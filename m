Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A7632518
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 23:44:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D377F86294;
	Sun,  2 Jun 2019 21:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sBPhxZAIkb3u; Sun,  2 Jun 2019 21:44:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C455486254;
	Sun,  2 Jun 2019 21:44:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DBC21BF4D5
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 21:44:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0688A859CD
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 21:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wj12ToEwu7tE for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 21:44:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7D256859F8
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 21:44:43 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id y13so11961806lfh.9
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 14:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EVmQkoTAtbSGz8C5vVTv+5eh4peJMnUA2MLQgpMIP48=;
 b=ODE6HVswqASv/8MHLNNVMTknWBFsToE5l5DuqQqD60wHIASyfXULoZfZfXz0lovBSt
 tL59iUut7CyXH7+uB7Kcs3oOLaHzuMnWKnSYa+oFyPTZKRh6OWbay3BYeQEmoIcHr07I
 U0/nbicuEP5XCZkIlaB46gLb5DJe+gTXyuQ0SKQ6HF0QEsrrGsg4PBGAx2OXLXqJjhP0
 Rbc1FOyyXUzYGmCwUe/NkNDf6+hLBh4+tr5RK6LsRga2tMeAlyjE5eh4rMErcpLWR9X5
 p2GegBXqLqB8qTg3gLp2bMGFWLjVBHypTxX9rZNNvRdwus8TA1k6ybvOT9A9iyRTfB9b
 lFYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EVmQkoTAtbSGz8C5vVTv+5eh4peJMnUA2MLQgpMIP48=;
 b=Hg8TFUTK7vwGgWL2sqbDsz7W8+TXO48aUPUYWLrgj0byVq2BemH+mTT35/184Bo5T3
 mMoIANtDV5z9rmlPOooh1ygkkGDiDt+Rp8hhMRNQxZCD2w6aZAG1CZdVBZXfcbOpM9hY
 YoOibgJiltxoTgtmF1hUj3wOBDYnNFqvj5B56Z8/4p9B4EnICY1l3V4oPtlbWXp10YK6
 EY3WMq04YeO0LRTQah2n1H8OA5VOQhlusXZFMPIpm6Sp3rs1GwXwO7RVpUrTnc/AkRWY
 i4t268w0gLt0kaha+V+RWFcZyNMp+NubR5u71790mzQimHqf8rtO8KSD24TcuDvsBaZ0
 TUMA==
X-Gm-Message-State: APjAAAVQ2S8ZmSmPilpHfON1N+mgOYTNmq+0GDThD0Z3BMbLPcwP0up+
 SVvVhSqnD6+LMuIFii1bin8NdhI6
X-Google-Smtp-Source: APXvYqx43mgUsonku8U4xCwRz+Waor0UBA5wsvncuJZFNszf6Ml5SNN2LJdbs8R8RgeJ6H0yTG7hQQ==
X-Received: by 2002:a19:5515:: with SMTP id n21mr5688898lfe.26.1559511881959; 
 Sun, 02 Jun 2019 14:44:41 -0700 (PDT)
Received: from localhost.localdomain ([94.29.35.141])
 by smtp.gmail.com with ESMTPSA id g22sm2803653lje.43.2019.06.02.14.44.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 14:44:41 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v1 1/4] staging: media: tegra-vde: Remove BIT() macro from
 UAPI header
Date: Mon,  3 Jun 2019 00:37:09 +0300
Message-Id: <20190602213712.26857-5-digetx@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190602213712.26857-1-digetx@gmail.com>
References: <20190602213712.26857-1-digetx@gmail.com>
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
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

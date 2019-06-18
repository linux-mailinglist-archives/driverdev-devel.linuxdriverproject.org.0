Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D96884A66B
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 18:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DBB6C864A4;
	Tue, 18 Jun 2019 16:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MbI-uHuyeLaQ; Tue, 18 Jun 2019 16:16:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 44DFD84E68;
	Tue, 18 Jun 2019 16:16:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FD1D1BF83C
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 16:16:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6788884EB0
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 16:16:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3bgJFD1Vkcg7 for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 16:16:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 64CCA84E68
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 16:16:31 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id j29so9737931lfk.10
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 09:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aTENqUuUBYWApOwcj0+zGB3BGdKRZd5T9KuuRhQDbmY=;
 b=I6YpZ7ZHtcm5hSQG8Ua8Wk6A17jxGMnINa6x35Dg3pjaH4olB+eTfdU91gEqRQ4usx
 37Rb2BLzEH0p3az3vtAy853J+c/TSaUfl33XhTazF1P472m6G5vnadBfxIEhsvQabg7C
 t3fM4ZMXkqa4wVPYII6Ov4bDwFjMfa/IZAUgXXegyOQururHVyQBa+uR38EKWozFcgx4
 w/XvcAbPHvbaDoz33K1Ay/0zVz8WE8gRIqgxsMTX5XKxn8s09arsAQrim9UQlGypDd/3
 kxWeu21912ZzDJHOO0FnRz7XoGlnLftGLTh6pKj238bknCCgGZDfsb2lMEw1RKEANVA3
 NYgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aTENqUuUBYWApOwcj0+zGB3BGdKRZd5T9KuuRhQDbmY=;
 b=E65GLs0MlwCgQsdHtBtH7CTH88e/LFWchbF37Mt6khdAOkYxqW/n9Ru3waVoXowxL3
 3UJUe712Y+QupeJJpQyQU8AotMudLQIbe/fR2O35fFY+rNldGjIEILPBb9PNu7pVKxP1
 pQ4tm3BGj/0DsbgZZn2wkB+47MnL10E8o5Ex+/xmVavRzzpjwaXTgTJCx+JYPPyF6nEn
 hQF4Hna92clD27MDXu+qBzAvC/koum6f6pwG0fCgX6M1XWeCG+5AUXDDFtCXl5W4KB9E
 vKild4MKo7Pheu/jYD/e6mXD4uAHx6HPMqqBC/Fh2Ns4hLoz6+LHPIDwD4RW5FBZa7ol
 bUuQ==
X-Gm-Message-State: APjAAAWYfoR2z0+Qrjuq8D115w8Bz6N7wYzGf9AfwX71oJf4Z+u04qTK
 cOg0B3EVog9oXR0NKSaYBK4=
X-Google-Smtp-Source: APXvYqzT3fMIiRDjxPt+eHvA9HGFNWma3wAcV+UAeLFcSuV0NFnHS8iEwi9nNF134e4XP7KGl7EHpw==
X-Received: by 2002:ac2:52ac:: with SMTP id r12mr39291949lfm.126.1560874589798; 
 Tue, 18 Jun 2019 09:16:29 -0700 (PDT)
Received: from localhost.localdomain (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.gmail.com with ESMTPSA id v15sm2273295lfd.53.2019.06.18.09.16.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 09:16:29 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2] ARM: dts: tegra30: Connect SMMU with Video Decoder Engine
Date: Tue, 18 Jun 2019 19:14:52 +0300
Message-Id: <20190618161458.20499-2-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190618161458.20499-1-digetx@gmail.com>
References: <20190618161458.20499-1-digetx@gmail.com>
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

Enable IOMMU support for the video decoder.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/boot/dts/tegra30.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index 934caa83c8db..ce162125e7bf 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -424,6 +424,7 @@
 		clocks = <&tegra_car TEGRA30_CLK_VDE>;
 		reset-names = "vde", "mc";
 		resets = <&tegra_car 61>, <&mc TEGRA30_MC_RESET_VDE>;
+		iommus = <&mc TEGRA_SWGROUP_VDE>;
 	};
 
 	apbmisc@70000800 {
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 293FD2A7212
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D808C85BC4;
	Wed,  4 Nov 2020 23:45:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DtxyqBWLHJW2; Wed,  4 Nov 2020 23:45:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8AB584EC0;
	Wed,  4 Nov 2020 23:45:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E47141BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DA6952041B
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gAD-NYKAEZTu for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 5F08A20503
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:31 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id o13so282487ljj.11
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gxZqGk/ZMf8l9UbMDIPd7jdOdhUcVHtE7WzA1PmtWDg=;
 b=qk3P32kBW1RxeA7PoyCNvBPLJCdtiKl4MWIBl6NSYhckS7zhpZjih/eIFQc9CfkrKR
 QBqI644fhQW4mLWSisC9qSW3LcACR2l1N6UxOKrY1FC0CYtGrkCoh6rru/gRIdf1Bqmy
 +03qrV+7THkErJ4pTIvE3jV9THFP/EmrJfyPdsFrkd/12GgeeLQCbifklpNte/IaU13V
 rsoPxtyGsxt9OpKcfHNiFJmzq0DgS38cEfG+8LLIq3o13wTdkHylfC2uVqVTqoG+ja9l
 1n3U8+1zo6+Yjbou+fTTmq99uCbXrnAunW8QTWLuZNXRCn3gzFzWb3GmjZxLoPV2LIcP
 IGEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gxZqGk/ZMf8l9UbMDIPd7jdOdhUcVHtE7WzA1PmtWDg=;
 b=OIHayufw4P2xiHjdTb9xD0Er8THnru6MfWrC4ylUi8aTGYK2wLvszyAYIZ0N4eQJss
 6mPyxjpkfv9eGbSjJTNtGUUMfuwiik2YTjQoN0WytF66X3IlUt6ZJlqSPg8+PaCakDqp
 1FEcqh6wAwRyGCLNWiXJ9BygeL/JpcbSP9g17Sh5+iL7vu2y6XzomhkhVAigN0GvoDzY
 fvg/2RlmjptMpRkf1pKjHNNs4A614YgpORwM0weGmfDITUxqlUaSbOheyCTIijQBdHVv
 qRKeySE7UgqZDMkdGACW79yq4SCvexQh8JBJWXiLXM6cj7pFnfHeSyLzFzD1t0bAA12S
 JbNg==
X-Gm-Message-State: AOAM530/0AN0mG11E5YdtMo74Jp63w9smkP24LVfveZR6rbvBmvFW7eL
 M6uvBbko45tLusxbMnk8Gdk=
X-Google-Smtp-Source: ABdhPJymtrhEAbNncSymhtYyuCPxyJyXQvnjnRaM2aoZ0BBto/FDcYNrl5JrWRN0UUQPlX8BPKiCkg==
X-Received: by 2002:a2e:9098:: with SMTP id l24mr126250ljg.163.1604533529567; 
 Wed, 04 Nov 2020 15:45:29 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:29 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Alan Stern <stern@rowland.harvard.edu>, Peter Chen <Peter.Chen@nxp.com>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Peter Geis <pgwipeout@gmail.com>, Nicolas Chauvet <kwizart@gmail.com>
Subject: [PATCH v1 24/30] ARM: tegra: Add OPP tables for Tegra20 peripheral
 devices
Date: Thu,  5 Nov 2020 02:44:21 +0300
Message-Id: <20201104234427.26477-25-digetx@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201104234427.26477-1-digetx@gmail.com>
References: <20201104234427.26477-1-digetx@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add OPP tables for Tegra20 SoC devices.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 .../arm/boot/dts/tegra20-peripherals-opp.dtsi | 386 ++++++++++++++++++
 arch/arm/boot/dts/tegra20.dtsi                |  14 +
 2 files changed, 400 insertions(+)

diff --git a/arch/arm/boot/dts/tegra20-peripherals-opp.dtsi b/arch/arm/boot/dts/tegra20-peripherals-opp.dtsi
index 25b1ba73951e..792dc79d32c5 100644
--- a/arch/arm/boot/dts/tegra20-peripherals-opp.dtsi
+++ b/arch/arm/boot/dts/tegra20-peripherals-opp.dtsi
@@ -89,4 +89,390 @@ opp@760000000 {
 			opp-hz = /bits/ 64 <760000000>;
 		};
 	};
+
+	vde_dvfs_opp_table: vde-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@95000000,950 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <95000000>;
+			opp-supported-hw = <0x0001>;
+		};
+
+		opp@123500000,1000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <123500000>;
+			opp-supported-hw = <0x0001>;
+		};
+
+		opp@123500000,950 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <123500000>;
+			opp-supported-hw = <0x0002>;
+		};
+
+		opp@152000000,1000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <152000000>;
+			opp-supported-hw = <0x0002>;
+		};
+
+		opp@152000000,950 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <152000000>;
+			opp-supported-hw = <0x0004>;
+		};
+
+		opp@171000000,950 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <171000000>;
+			opp-supported-hw = <0x0008>;
+		};
+
+		opp@209000000,1100 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <209000000>;
+			opp-supported-hw = <0x0001>;
+		};
+
+		opp@209000000,1000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <209000000>;
+			opp-supported-hw = <0x0004>;
+		};
+
+		opp@218500000,1000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <218500000>;
+			opp-supported-hw = <0x0008>;
+		};
+
+		opp@237500000,1100 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <237500000>;
+			opp-supported-hw = <0x0002>;
+		};
+
+		opp@275500000,1200 {
+			opp-microvolt = <1200000 1200000 1300000>;
+			opp-hz = /bits/ 64 <275500000>;
+			opp-supported-hw = <0x0001>;
+		};
+
+		opp@285000000,1100 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <285000000>;
+			opp-supported-hw = <0x0004>;
+		};
+
+		opp@300000000,1275 {
+			opp-microvolt = <1275000 1275000 1300000>;
+			opp-hz = /bits/ 64 <300000000>;
+			opp-supported-hw = <0x0001>;
+		};
+
+		opp@300000000,1200 {
+			opp-microvolt = <1200000 1200000 1300000>;
+			opp-hz = /bits/ 64 <300000000>;
+			opp-supported-hw = <0x0006>;
+		};
+
+		opp@300000000,1100 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <300000000>;
+			opp-supported-hw = <0x0008>;
+		};
+	};
+
+	gr2d_dvfs_opp_table: gr2d-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@133000000,950 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <133000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp@171000000,1000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <171000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp@247000000,1100 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <247000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp@300000000,1200 {
+			opp-microvolt = <1200000 1200000 1300000>;
+			opp-hz = /bits/ 64 <300000000>;
+			opp-supported-hw = <0x000F>;
+		};
+	};
+
+	gr3d_dvfs_opp_table: gr3d-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@114000000,950 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <114000000>;
+			opp-supported-hw = <0x0001>;
+		};
+
+		opp@161500000,1000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <161500000>;
+			opp-supported-hw = <0x0001>;
+		};
+
+		opp@161500000,950 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <161500000>;
+			opp-supported-hw = <0x0002>;
+		};
+
+		opp@209000000,1000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <209000000>;
+			opp-supported-hw = <0x0002>;
+		};
+
+		opp@218500000,950 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <218500000>;
+			opp-supported-hw = <0x0004>;
+		};
+
+		opp@247000000,1100 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <247000000>;
+			opp-supported-hw = <0x0001>;
+		};
+
+		opp@247000000,950 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <247000000>;
+			opp-supported-hw = <0x0008>;
+		};
+
+		opp@256500000,1000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <256500000>;
+			opp-supported-hw = <0x0004>;
+		};
+
+		opp@285000000,1100 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <285000000>;
+			opp-supported-hw = <0x0002>;
+		};
+
+		opp@285000000,1000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <285000000>;
+			opp-supported-hw = <0x0008>;
+		};
+
+		opp@304000000,1200 {
+			opp-microvolt = <1200000 1200000 1300000>;
+			opp-hz = /bits/ 64 <304000000>;
+			opp-supported-hw = <0x0001>;
+		};
+
+		opp@323000000,1100 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <323000000>;
+			opp-supported-hw = <0x0004>;
+		};
+
+		opp@333500000,1275 {
+			opp-microvolt = <1275000 1275000 1300000>;
+			opp-hz = /bits/ 64 <333500000>;
+			opp-supported-hw = <0x0001>;
+		};
+
+		opp@333500000,1200 {
+			opp-microvolt = <1200000 1200000 1300000>;
+			opp-hz = /bits/ 64 <333500000>;
+			opp-supported-hw = <0x0002>;
+		};
+
+		opp@351500000,1100 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <351500000>;
+			opp-supported-hw = <0x0008>;
+		};
+
+		opp@361000000,1275 {
+			opp-microvolt = <1275000 1275000 1300000>;
+			opp-hz = /bits/ 64 <361000000>;
+			opp-supported-hw = <0x0002>;
+		};
+
+		opp@380000000,1200 {
+			opp-microvolt = <1200000 1200000 1300000>;
+			opp-hz = /bits/ 64 <380000000>;
+			opp-supported-hw = <0x0004>;
+		};
+
+		opp@400000000,1275 {
+			opp-microvolt = <1275000 1275000 1300000>;
+			opp-hz = /bits/ 64 <400000000>;
+			opp-supported-hw = <0x0004>;
+		};
+
+		opp@400000000,1200 {
+			opp-microvolt = <1200000 1200000 1300000>;
+			opp-hz = /bits/ 64 <400000000>;
+			opp-supported-hw = <0x0008>;
+		};
+	};
+
+	host1x_dvfs_opp_table: host1x-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@104500000,950 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <104500000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp@133000000,1000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <133000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp@166000000,1100 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <166000000>;
+			opp-supported-hw = <0x000F>;
+		};
+	};
+
+	usbd_dvfs_opp_table: usbd-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@480000000 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <480000000>;
+		};
+	};
+
+	usb2_dvfs_opp_table: usb2-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@480000000 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <480000000>;
+		};
+	};
+
+	usb3_dvfs_opp_table: usb3-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@480000000 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <480000000>;
+		};
+	};
+
+	sdmmc1_dvfs_opp_table: sdmmc1-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@44000000 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <44000000>;
+		};
+
+		opp@52000000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <52000000>;
+		};
+	};
+
+	sdmmc2_dvfs_opp_table: sdmmc2-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@44000000 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <44000000>;
+		};
+
+		opp@52000000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <52000000>;
+		};
+	};
+
+	sdmmc3_dvfs_opp_table: sdmmc3-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@44000000 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <44000000>;
+		};
+
+		opp@52000000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <52000000>;
+		};
+	};
+
+	sdmmc4_dvfs_opp_table: sdmmc4-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@44000000 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <44000000>;
+		};
+
+		opp@52000000 {
+			opp-microvolt = <1000000 1000000 1300000>;
+			opp-hz = /bits/ 64 <52000000>;
+		};
+	};
+
+	hdmi_dvfs_opp_table: hdmi-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@148500000 {
+			opp-microvolt = <1200000 1200000 1300000>;
+			opp-hz = /bits/ 64 <148500000>;
+		};
+	};
+
+	dc0_dvfs_opp_table: dc0-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@158000000,950 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <158000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp@190000000,1100 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <190000000>;
+			opp-supported-hw = <0x000F>;
+		};
+	};
+
+	dc1_dvfs_opp_table: dc1-opp-table {
+		compatible = "operating-points-v2";
+
+		opp@158000000,950 {
+			opp-microvolt = <950000 950000 1300000>;
+			opp-hz = /bits/ 64 <158000000>;
+			opp-supported-hw = <0x000F>;
+		};
+
+		opp@190000000,1100 {
+			opp-microvolt = <1100000 1100000 1300000>;
+			opp-hz = /bits/ 64 <190000000>;
+			opp-supported-hw = <0x000F>;
+		};
+	};
 };
diff --git a/arch/arm/boot/dts/tegra20.dtsi b/arch/arm/boot/dts/tegra20.dtsi
index 6ce498178105..317bdf75ff6c 100644
--- a/arch/arm/boot/dts/tegra20.dtsi
+++ b/arch/arm/boot/dts/tegra20.dtsi
@@ -42,6 +42,7 @@ host1x@50000000 {
 		clock-names = "host1x";
 		resets = <&tegra_car 28>;
 		reset-names = "host1x";
+		operating-points-v2 = <&host1x_dvfs_opp_table>;
 
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -91,6 +92,7 @@ gr2d@54140000 {
 			clocks = <&tegra_car TEGRA20_CLK_GR2D>;
 			resets = <&tegra_car 21>;
 			reset-names = "2d";
+			operating-points-v2 = <&gr2d_dvfs_opp_table>;
 		};
 
 		gr3d@54180000 {
@@ -99,6 +101,7 @@ gr3d@54180000 {
 			clocks = <&tegra_car TEGRA20_CLK_GR3D>;
 			resets = <&tegra_car 24>;
 			reset-names = "3d";
+			operating-points-v2 = <&gr3d_dvfs_opp_table>;
 		};
 
 		dc@54200000 {
@@ -110,6 +113,7 @@ dc@54200000 {
 			clock-names = "dc", "parent";
 			resets = <&tegra_car 27>;
 			reset-names = "dc";
+			operating-points-v2 = <&dc0_dvfs_opp_table>;
 
 			nvidia,head = <0>;
 
@@ -138,6 +142,7 @@ dc@54240000 {
 			clock-names = "dc", "parent";
 			resets = <&tegra_car 26>;
 			reset-names = "dc";
+			operating-points-v2 = <&dc1_dvfs_opp_table>;
 
 			nvidia,head = <1>;
 
@@ -167,6 +172,7 @@ hdmi@54280000 {
 			resets = <&tegra_car 51>;
 			reset-names = "hdmi";
 			status = "disabled";
+			operating-points-v2 = <&hdmi_dvfs_opp_table>;
 		};
 
 		tvo@542c0000 {
@@ -319,6 +325,7 @@ vde@6001a000 {
 		clocks = <&tegra_car TEGRA20_CLK_VDE>;
 		reset-names = "vde", "mc";
 		resets = <&tegra_car 61>, <&mc TEGRA20_MC_RESET_VDE>;
+		operating-points-v2 = <&vde_dvfs_opp_table>;
 	};
 
 	apbmisc@70000800 {
@@ -755,6 +762,7 @@ usb@c5000000 {
 		nvidia,needs-double-reset;
 		nvidia,phy = <&phy1>;
 		status = "disabled";
+		operating-points-v2 = <&usbd_dvfs_opp_table>;
 	};
 
 	phy1: usb-phy@c5000000 {
@@ -792,6 +800,7 @@ usb@c5004000 {
 		reset-names = "usb";
 		nvidia,phy = <&phy2>;
 		status = "disabled";
+		operating-points-v2 = <&usb2_dvfs_opp_table>;
 	};
 
 	phy2: usb-phy@c5004000 {
@@ -818,6 +827,7 @@ usb@c5008000 {
 		reset-names = "usb";
 		nvidia,phy = <&phy3>;
 		status = "disabled";
+		operating-points-v2 = <&usb3_dvfs_opp_table>;
 	};
 
 	phy3: usb-phy@c5008000 {
@@ -852,6 +862,7 @@ mmc@c8000000 {
 		resets = <&tegra_car 14>;
 		reset-names = "sdhci";
 		status = "disabled";
+		operating-points-v2 = <&sdmmc1_dvfs_opp_table>;
 	};
 
 	mmc@c8000200 {
@@ -863,6 +874,7 @@ mmc@c8000200 {
 		resets = <&tegra_car 9>;
 		reset-names = "sdhci";
 		status = "disabled";
+		operating-points-v2 = <&sdmmc2_dvfs_opp_table>;
 	};
 
 	mmc@c8000400 {
@@ -874,6 +886,7 @@ mmc@c8000400 {
 		resets = <&tegra_car 69>;
 		reset-names = "sdhci";
 		status = "disabled";
+		operating-points-v2 = <&sdmmc3_dvfs_opp_table>;
 	};
 
 	mmc@c8000600 {
@@ -885,6 +898,7 @@ mmc@c8000600 {
 		resets = <&tegra_car 15>;
 		reset-names = "sdhci";
 		status = "disabled";
+		operating-points-v2 = <&sdmmc4_dvfs_opp_table>;
 	};
 
 	cpus {
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

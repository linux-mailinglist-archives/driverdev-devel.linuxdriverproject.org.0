Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6632A2A71F2
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 99BA22044F;
	Wed,  4 Nov 2020 23:45:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MCbUfCM6pR55; Wed,  4 Nov 2020 23:45:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9FA3220413;
	Wed,  4 Nov 2020 23:45:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64ACE1BF97F
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5E8D685722
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4M9EEpWEClZm for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AE56284896
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:00 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id o13so281584ljj.11
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xyl6mwFdE15+t57cfnIytHG3Se38ipqIkKmYax6Z3Mg=;
 b=njurvPV7mYqVLXzLgzJMnQSBEnKE98oQKN4wK2dwEEIUDD7c6TRaSrw/9vciyz9XTc
 r0YOhwlcgm49SWqw8X9FydGAuWL+Unq90UFrxUtioI7SBGMjW3CXqGJug3RcWkA/s5yn
 XXyOv3T/tJxeU3RYP1xk3msgeJ/bxdzuK7URw+UQfBWoEZNEc1GTjxs+RSNpBzQz9Vvx
 T+BIa1HbzcDoiEXmaykCEP46kmiCL7189E89By+ope+D0L/TnKptWT+CPx5PYg+3BvjO
 jCwwYbCrTJce2YM5Px34gOTd06YKcy1A+u5agSc+RfC46gLInyC/nzLICGe4dtLWb3l0
 byVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xyl6mwFdE15+t57cfnIytHG3Se38ipqIkKmYax6Z3Mg=;
 b=FCd9NeMr6p3EfpHhW3A2ewdFblwBoax1pQLEf774sklBgeN3lg5Yvlu+orxVXago0J
 flQ5C/MARPsgqH4rPpOD51sMz+9LYZpmEa0SPCI5YNcuA/jWUbvmosU1RCaSUI9bbuRz
 BeWKhFkywAvvFmBR361I0CkT4KGi89spg3cneHCMxvwDiD7475ReDhN88S/WZphKMo2L
 sUQO10sJUNspxpsDnToGoA/hNtMC0wqRkqOKUf+OvJ1+3p7hXX4Sbl+0ueDxdLfNTKFV
 LUhMBTVlgkQp1nto8cyCjqrhTNjwhiHAfoG4Zm4GDvZmFLI/q4CeH6zFIrrF3T6Dgr6x
 NMJg==
X-Gm-Message-State: AOAM532TXmujntgob864+Y6lc41TygagPFPVAJV3ykw1gC707RXLSbKm
 i+2liAXUDEhrBC9AMpHZyGnSK65fA6M=
X-Google-Smtp-Source: ABdhPJxyfUR5ytzjzRHO8KNVIYAL6OAR8JGEl8Y8hPTg36jXTHsV0rP3oD6HDz+Wf6BvR5Q/lM5EBw==
X-Received: by 2002:a2e:9909:: with SMTP id v9mr136172lji.429.1604533498850;
 Wed, 04 Nov 2020 15:44:58 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.44.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:44:58 -0800 (PST)
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
Subject: [PATCH v1 02/30] dt-bindings: mmc: tegra: Document OPP and voltage
 regulator properties
Date: Thu,  5 Nov 2020 02:43:59 +0300
Message-Id: <20201104234427.26477-3-digetx@gmail.com>
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

Document new DVFS OPP table and voltage regulator properties of the
SDHCI controller.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 .../devicetree/bindings/mmc/nvidia,tegra20-sdhci.txt | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/nvidia,tegra20-sdhci.txt b/Documentation/devicetree/bindings/mmc/nvidia,tegra20-sdhci.txt
index 96c0b1440c9c..1beb0416ae5f 100644
--- a/Documentation/devicetree/bindings/mmc/nvidia,tegra20-sdhci.txt
+++ b/Documentation/devicetree/bindings/mmc/nvidia,tegra20-sdhci.txt
@@ -31,6 +31,16 @@ Required properties:
 
 Optional properties:
 - power-gpios : Specify GPIOs for power control
+- operating-points-v2: See ../bindings/opp/opp.txt for details.
+- core-supply: Phandle of voltage regulator of the SoC "core" power domain.
+
+For each opp entry in 'operating-points-v2' table:
+- opp-supported-hw: One bitfield indicating:
+	On Tegra20: SoC process ID mask
+	On Tegra30+: SoC speedo ID mask
+
+	A bitwise AND is performed against the value and if any bit
+	matches, the OPP gets enabled.
 
 Example:
 
@@ -45,6 +55,8 @@ sdhci@c8000200 {
 	wp-gpios = <&gpio 57 0>; /* gpio PH1 */
 	power-gpios = <&gpio 155 0>; /* gpio PT3 */
 	bus-width = <8>;
+	operating-points-v2 = <&dvfs_opp_table>;
+	core-supply = <&vdd_core>;
 };
 
 Optional properties for Tegra210, Tegra186 and Tegra194:
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

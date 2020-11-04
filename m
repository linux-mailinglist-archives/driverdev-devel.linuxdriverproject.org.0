Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CC82A71F5
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3F10C20418;
	Wed,  4 Nov 2020 23:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n3LSvWVe1I7z; Wed,  4 Nov 2020 23:45:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3AAC8203B4;
	Wed,  4 Nov 2020 23:45:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3B06F1BF97F
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3362220418
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ttx5VJ8plyly for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 7854A203A4
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:03 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id 126so153485lfi.8
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cDQcvrPMx8drC1s+JMdYzz1VL97g9qI4z34Z2y/XS6Y=;
 b=Dy8bsn+8gKozpA8LFXNo9rNaXYZi8RiG8JuZ7GCiOUv3f8EqLH9Yw1DWyrHCG7aXCa
 nBna2kBpxCxa6756mpfF/sRJLengE1u0981vSeVZ0iww1/R6MDBNg0z7cp8n3hpUWVSG
 FjsBHb432QblMRC0hfqqL4Td+fPBtzgidhCB8OrfImcHEK/zTulOsaqMZyxf2OL4je50
 7YzggrtiQ+LZ1ok9kxO8CnZAsV2JQjx98NF/dI6kmyaIX//EtNilxbc+Qcrm5rRwGz27
 NGH1GnvYdauAc1/ekPxqEtzZNVUC1H9TKTl5j5EZH60kcHtxQ9rJ2uyMKymZmVEh5kbP
 uWEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cDQcvrPMx8drC1s+JMdYzz1VL97g9qI4z34Z2y/XS6Y=;
 b=XafratrW5LGm6rfADjlQQctx7GSQrAVypMcMB2qAQPVXF9zRAVfXFcKbF+yiCgGTXl
 Culk82Xgh8zfLauvqIIOjmBIBgv6vn+ReDIzdO4G4ICAGqrzDLIs5tFExeUaSB+uyEa2
 klH2zqMe+pzIqh2MWL2UV27hVZCYl+4VCGRfvNc7yjbDpTd/ETnrBTrgkfTG1bg7tjrd
 ig6YTQ8VPC7XDXFWYtECbGUmMqJDtsRjFjdLzg+bMQcKH4an3UabbUQUbf9E97jaZP2a
 kRcjpziaZr2PUFufQafitRuJJFtluHWp0eVNU/CnPcUKqiDgbufWYB6pF/JmhH54Oc7h
 W+8Q==
X-Gm-Message-State: AOAM533e187uWwqXVWBlX7Z3DOxOuXmi0HpemFQl+XahlE6GINU9h1oY
 WKRr55C47UKCcTRGJvT6vqk=
X-Google-Smtp-Source: ABdhPJz3iuYSiUPzblNYJ3AouIs2I+aBCXK/4d5+EJAE3Br8G9yiMX5bbzdh7qOCN/1x3cb5bQOQVQ==
X-Received: by 2002:a19:8285:: with SMTP id e127mr54285lfd.270.1604533501645; 
 Wed, 04 Nov 2020 15:45:01 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:01 -0800 (PST)
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
Subject: [PATCH v1 04/30] media: dt: bindings: tegra-vde: Document OPP and
 voltage regulator properties
Date: Thu,  5 Nov 2020 02:44:01 +0300
Message-Id: <20201104234427.26477-5-digetx@gmail.com>
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
video decoder engine.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 .../devicetree/bindings/media/nvidia,tegra-vde.txt   | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt b/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt
index 602169b8aa19..9854fa9d3cd3 100644
--- a/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt
+++ b/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt
@@ -36,6 +36,16 @@ Optional properties:
 - reset-names : Must include the following entries:
   - mc
 - iommus: Must contain phandle to the IOMMU device node.
+- operating-points-v2: See ../bindings/opp/opp.txt for details.
+- core-supply: Phandle to voltage regulator of the SoC "core" power domain.
+
+For each opp entry in 'operating-points-v2' table:
+- opp-supported-hw: One bitfield indicating:
+	On Tegra20: SoC process ID mask
+	On Tegra30+: SoC speedo ID mask
+
+	A bitwise AND is performed against the value and if any bit
+	matches, the OPP gets enabled.
 
 Example:
 
@@ -61,4 +71,6 @@ video-codec@6001a000 {
 	reset-names = "vde", "mc";
 	resets = <&tegra_car 61>, <&mc TEGRA20_MC_RESET_VDE>;
 	iommus = <&mc TEGRA_SWGROUP_VDE>;
+	operating-points-v2 = <&dvfs_opp_table>;
+	core-supply = <&vdd_core>;
 };
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

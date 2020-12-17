Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F65E2DD6CA
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:07:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9620687AAC;
	Thu, 17 Dec 2020 18:07:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZWf-387AvHaj; Thu, 17 Dec 2020 18:07:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1988187A95;
	Thu, 17 Dec 2020 18:07:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D93BC1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C87132E2B1
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3hTHSxNEGIeo for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by silver.osuosl.org (Postfix) with ESMTPS id 936D722FB9
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:27 +0000 (UTC)
Received: by mail-lf1-f48.google.com with SMTP id y19so59726730lfa.13
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TJhYseBJYkwEkfQOyblPdMpOOHz4A7k16XFAy7Oga6w=;
 b=F5gtx0dqcxZkkcTo7UWZnaw7Qj9Ra9yO77AeY5iLggl9m6erRwHxn4BW1pJ97VJKGq
 YcV+1PWkv4C8mO3HuprA0toW5oQVPvXyvypDcHfQ3LBMW/83TcsKkn75giHcRn87HTw6
 QHwCfKcwAJgFjFtNJWyVh1MOkNixWO0nCb0tiEwngi5LyZ7owU4oF7G1k/+5HCx3qSNJ
 lCmnEQPNPTiNBzucIDBPweD4miL9n3PayTyhzS4PPj+lRRFXYO6GgrVItV4NhaeW9pUD
 tZEr43oWkWFIJ+ExDBzEDwy7s8y7AfoiZuB0VBikcGqe27kygYQJ0VNNhK+CFDbU67Dt
 ggHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TJhYseBJYkwEkfQOyblPdMpOOHz4A7k16XFAy7Oga6w=;
 b=Lilp2LTADWRV2dhM7R/ERZ/UGlBkHmXBCWr3Q0tcl9ErwSnZqWO2mCuqygTT+NkGlq
 nlrij7imzIk43eYgpsOFRFAC4IkH2D5xuBSVY1fVR6lSk2YNDG2FiT0UzblAGvl3CCx0
 tYf++7TsXoq3SiztGPu4rGpyKDRI6W6xiOqKF/vwIzFjVrE30fD75qt8l2iiccvMHs4L
 sAHFNfuN+UQgII59wl2+PpKvwqtEsucwzv7x1W6fsCFvrptEhg/+em/TaMMnwG8WPfOl
 RGRAYzpssCxJkXnPMK7l4O0xdZver04vOasH9vs1oMeGwPYtRguPNPrfhsj0X6YZgirh
 FAGw==
X-Gm-Message-State: AOAM533kmLLX0sKBRtInty3SQsRHzPqqsesGLJKDVs47g2danUHVFN8A
 oxGCO37eAo6hAYGjcRceH92ZzAcR5rE=
X-Google-Smtp-Source: ABdhPJwIgGAwCQwaSYDTBeW0kNDGf+AD0VQyaJlAS233nqerThHuruFM4Tg3UsndwI906n0c5dBsSA==
X-Received: by 2002:a2e:b558:: with SMTP id a24mr212325ljn.328.1608228445790; 
 Thu, 17 Dec 2020 10:07:25 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:25 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Viresh Kumar <vireshk@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 05/48] media: dt: bindings: tegra-vde: Document OPP and
 power domain properties
Date: Thu, 17 Dec 2020 21:05:55 +0300
Message-Id: <20201217180638.22748-6-digetx@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201217180638.22748-1-digetx@gmail.com>
References: <20201217180638.22748-1-digetx@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Document new DVFS OPP table and power domain properties of the video
decoder engine.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 .../devicetree/bindings/media/nvidia,tegra-vde.txt   | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt b/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt
index 602169b8aa19..02fe2af3bd13 100644
--- a/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt
+++ b/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt
@@ -36,6 +36,16 @@ Optional properties:
 - reset-names : Must include the following entries:
   - mc
 - iommus: Must contain phandle to the IOMMU device node.
+- operating-points-v2: See ../bindings/opp/opp.txt for details.
+- power-domains: Phandle to VDEC power domain.
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
+	power-domains = <&domain>;
 };
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

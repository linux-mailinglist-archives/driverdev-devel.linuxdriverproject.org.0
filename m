Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 326322DD6CC
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:07:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3188A87655;
	Thu, 17 Dec 2020 18:07:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T6uiNs_5qRtC; Thu, 17 Dec 2020 18:07:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCE168762A;
	Thu, 17 Dec 2020 18:07:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A99081BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A66A587A95
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gia8LaXF66xo for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CC20187A8A
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:29 +0000 (UTC)
Received: by mail-lf1-f51.google.com with SMTP id a12so59835333lfl.6
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yP8wRMt2G/dKkoQz0kDkh+VFFd+KrJNpavXd55zD7Hc=;
 b=Eevxt/jmSiXEagYpaEv4vTmdCIDS9N1+4fjs6XIYwYipyv36lpsy/C6pKYbwX3UiQu
 VAu1mRAoSEvOvC9CFXWr2nMYvvWgaq6SnOLErxU8ODNmC5j5jGOa6Ib2PM6ZcCqmH38P
 /ms4L91GUDsLbCwK3p/ykpA37+zlTT+eRvLma64wIszQWtha25BPEQkFpHNddqKyWQfT
 +buwKXxL3bX53bNkQosbcNQQk/A6YGx+HMISS5X5MXNlAcmh2539N1EunFi1fSgAdPPc
 lZu6y+bcf9lMXUeX6+mQg1Tjih0kF9Uxcyo55RH6sXDp4bTnJ3oHXwSLox21wctsWd9N
 I+6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yP8wRMt2G/dKkoQz0kDkh+VFFd+KrJNpavXd55zD7Hc=;
 b=pbHGz21ksgpWBZNf8XkqchHbcLgZAhYOkno4XvvUJt6Od/PmkJAPkje5SXPKVYZEsP
 aPJsr53uupqltlMsz1HVuJ1sEpl5i9gr5vF9sfdg94+pqF847F2+FEDVTi4KLzMxmPD5
 egXUybtTQ+1aciPYs+3PomWsw56WJjZF9fBDHXUiU6FK+jJ0hBgFDJokhTI7qnJNNAxL
 wPJ4IgFSzXVBmDJ9jdJL+RDYeWujqKqi52dLDd2HKjB6plR9EVaTFl7EEquyyf4JngSN
 y8fqTAJGzuLvYxaNkqYzQUeoVGYN+qRanoFEnkChTzhEsfxWZ/MFoIBMnl+mmYz9M3NG
 xNyw==
X-Gm-Message-State: AOAM533hBhrR7437bcIfk/rlXKR32eu5n9/VGULmlux24cuy7qyn/cFL
 iuPB00wlkwxvZ2x/2/LQ5xA=
X-Google-Smtp-Source: ABdhPJxW3mip7l7QnT2EdI9cbqOdB8U51k+kpDGMuuvT5UJhcE0JXjG8oIyqWzLDIWmT1OVJbpI9yg==
X-Received: by 2002:a19:c3c2:: with SMTP id t185mr1565lff.104.1608228448105;
 Thu, 17 Dec 2020 10:07:28 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:27 -0800 (PST)
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
Subject: [PATCH v2 07/48] dt-bindings: arm: tegra: Add binding for core power
 domain
Date: Thu, 17 Dec 2020 21:05:57 +0300
Message-Id: <20201217180638.22748-8-digetx@gmail.com>
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

All NVIDIA Tegra SoCs have a core power domain where majority of hardware
blocks reside. Add binding for the core power domain.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 .../arm/tegra/nvidia,tegra20-core-domain.yaml | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-core-domain.yaml

diff --git a/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-core-domain.yaml b/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-core-domain.yaml
new file mode 100644
index 000000000000..f3d8fd2d8371
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-core-domain.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/tegra/nvidia,tegra20-core-domain.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NVIDIA Tegra Core Power Domain
+
+maintainers:
+  - Dmitry Osipenko <digetx@gmail.com>
+  - Jon Hunter <jonathanh@nvidia.com>
+  - Thierry Reding <thierry.reding@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - nvidia,tegra20-core-domain
+      - nvidia,tegra30-core-domain
+
+  operating-points-v2:
+    description:
+      Should contain level, voltages and opp-supported-hw property.
+      The supported-hw is a bitfield indicating SoC speedo or process
+      ID mask.
+
+  "#power-domain-cells":
+    const: 0
+
+  power-supply:
+    description:
+      Phandle to voltage regulator connected to the SoC Core power rail.
+
+required:
+  - compatible
+  - operating-points-v2
+  - "#power-domain-cells"
+  - power-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    core-domain {
+        compatible = "nvidia,tegra20-core-domain";
+        operating-points-v2 = <&opp_table>;
+        power-supply = <&regulator>;
+        #power-domain-cells = <0>;
+    };
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

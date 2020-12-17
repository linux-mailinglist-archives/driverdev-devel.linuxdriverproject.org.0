Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C87842DD6CB
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:07:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36A5987959;
	Thu, 17 Dec 2020 18:07:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gpLbZ8qYkYMv; Thu, 17 Dec 2020 18:07:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C89F1878F7;
	Thu, 17 Dec 2020 18:07:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B158B1BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 95C3887639
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M8G57ny1akGK for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1AFC68762A
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:25 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id 23so59800736lfg.10
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D7Hru9c4axCiAf9woJy53kOley4NvjvqF4UHux0sYDU=;
 b=kyDq0EA5RNjnC/fsGqPlDaSkTFdkQ+aqw9zOQ278D359QGyusE4zOZi7/yU1vKwcGQ
 vpJ6V2Z+uyc5+PsbGqXMmj32yPiZMBfr2bW5dP3z+WLef2EpuUnhsHInIWa/fhQ2B3y2
 b/wkwz65gc+3GqQhmGZtJwt2LgAXl4ye6zUVJ3UWJ+W4DXLe6IX/ctqQJGa6XdWmKU66
 oALXwrQzsPwwEIZTf/wbM0+pzW6uVQcEuREGIwzmv4qOqZ8Z2Rldnfmr+1KlYWjrk/ex
 93MMad/N8JlL4jTBBcVY5oIYa4BQhNZtGqXo+o1byzoqF2CAaljHENTN2kvQf2wsq2N7
 drag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D7Hru9c4axCiAf9woJy53kOley4NvjvqF4UHux0sYDU=;
 b=pbNbuASmw7gzwSbmwRsv/8ShVEkXJ/NB1eykCduIvnD/q3zNpXAJ+VpcDmwC8aomn3
 fUoAsRI4U5rZs5Ea+fFiMoPS1rwZUN1wcjEMWjh1qrvoMcxeSD9LcymoTw2YAOp7f6VZ
 QQwWjdO266v9ttkWQdNG02XSxc9qc2u/MBrJZpS5Ffpqk7NtcWt4GFtjFyks9DlyJuOZ
 jfAFb7AQkZOd97xbL+eu7154hKZYF6iOzXbQya4PlcutYc8eQNW5ICQ26LJ2IVgPcFxk
 8AuSLmgJtkT7DYYErcmcD45tGhv07U6uTc8vrCLm2k6y/uAnM3p/NaEzHaETuEYCVvNH
 POWQ==
X-Gm-Message-State: AOAM532Me+JBowC7YS0W1VjeedKAWO0TZOzu6luUzQ3eRwaHkdDxvMzm
 r1zmfPXxB3DpByR4/61JgJc=
X-Google-Smtp-Source: ABdhPJyXeMpAOUP5Yrs/4jb7LSTsEn8j1plsmuT5R8wjgXCqnyhB5LwnYmxG5dzWY+sgDgnPDCNhTg==
X-Received: by 2002:a05:651c:2045:: with SMTP id
 t5mr211738ljo.462.1608228443423; 
 Thu, 17 Dec 2020 10:07:23 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:22 -0800 (PST)
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
Subject: [PATCH v2 03/48] dt-bindings: memory: tegra124: emc: Replace core
 regulator with power domain
Date: Thu, 17 Dec 2020 21:05:53 +0300
Message-Id: <20201217180638.22748-4-digetx@gmail.com>
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

Power domain fits much better than a voltage regulator in regards to
a proper hardware description and from a software perspective as well.
Hence replace the core regulator with the power domain. Note that this
doesn't affect any existing DTBs because we haven't started to use the
regulator yet, and thus, it's okay to change it.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 .../bindings/memory-controllers/nvidia,tegra124-emc.yaml    | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-emc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-emc.yaml
index 09bde65e1955..2ab42b05e198 100644
--- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-emc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra124-emc.yaml
@@ -37,9 +37,9 @@ properties:
     description:
       phandle of the memory controller node
 
-  core-supply:
+  power-domains:
     description:
-      Phandle of voltage regulator of the SoC "core" power domain.
+      Phandle to the SoC "core" power domain.
 
   operating-points-v2:
     description:
@@ -370,7 +370,7 @@ examples:
 
         nvidia,memory-controller = <&mc>;
         operating-points-v2 = <&dvfs_opp_table>;
-        core-supply = <&vdd_core>;
+        power-domains = <&domain>;
 
         #interconnect-cells = <0>;
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

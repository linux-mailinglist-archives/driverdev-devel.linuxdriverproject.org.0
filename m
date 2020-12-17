Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A8E2DD6C9
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:07:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39C8F8795E;
	Thu, 17 Dec 2020 18:07:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IYdH9fjGm455; Thu, 17 Dec 2020 18:07:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B1808793E;
	Thu, 17 Dec 2020 18:07:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 159911BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D39C87A8A
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zwye2RvzAMnG for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EB63987A9B
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:23 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id o13so36630225lfr.3
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wRLKIZbWYzVgD4/h7Q5pP/dMfh/6wK4T7bMtKrKWFYs=;
 b=nof46WJOEl3Od1rTO/2BYq6/+zk+zJ/AGmoG6erIC0+tgB/oIvdBZAktAlSvQoEZb/
 U6iFxEOBIugW299jwIFrWQ6bsT+VhSHlPUZ5crYO8SLL7E1ykhQSbvIOGz95lEK1CD1l
 xurdMXdFJ5bUbCKqPxQGL7MSkYrWUwxbVJS+pOaZ6U3PnQamubXJPaPBtEvoLE4NlBzS
 h6H+Hw6LLV7UvSbjkYoDkkk0kKwliK4ss66ReUrsUlErK+ZcCXIseijPZVZu6jr9Azfu
 2zvdUbpZW4E4SSI1d19fss7CvalcS3mCXXdnQe9Z374JJpshKOx9EGWBuFbOaGLwTIwv
 xBFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wRLKIZbWYzVgD4/h7Q5pP/dMfh/6wK4T7bMtKrKWFYs=;
 b=Nf0IMEzrQsQaZY23GYyNMabzW5Vq6hSVxcqlIeE4rMhV9mKsmGGhzWfEqHiwA9VS9K
 7E4GCvH4WJogCzm+FUFc9WCKQZFJ1wl44HMJLXZ20NQTJgIFBJGgUhJ4eYf4PQAdJgez
 TA4pLoFI/2lcVXf0SIJZ9AAJvK0wpRby+1Fx9KWx0GrxfRY52eO+IpLHlfnQbVvle7Nt
 4L34mrYhefFiKNQdyxmmsgODH7bcIhVh3HJeE/L56xoPZd/U9VupPi3jOmyM0iIyrE+l
 TYskIZ3Q3HpkoQFrs5PsSLniWMtVCofgY44TU4WUQel/qAMj/tAWYEGKSu2Y0SmxV1yB
 pMjA==
X-Gm-Message-State: AOAM533lVZdRye2lR5OKMse+yWQ3acm3+0hns53+qCD1GDZUNogCft43
 83W9jAxIl2M89JHUtbzrl3c=
X-Google-Smtp-Source: ABdhPJydLEQpauRBVKAwEa9RLHoou8ZxWlTRtLTcNVXWexn3xCJmbfFa9KYDYb9Npu8cupsJwFP+AQ==
X-Received: by 2002:a2e:908:: with SMTP id 8mr240132ljj.52.1608228442259;
 Thu, 17 Dec 2020 10:07:22 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:19 -0800 (PST)
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
Subject: [PATCH v2 02/48] dt-bindings: memory: tegra30: emc: Replace core
 regulator with power domain
Date: Thu, 17 Dec 2020 21:05:52 +0300
Message-Id: <20201217180638.22748-3-digetx@gmail.com>
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
 .../bindings/memory-controllers/nvidia,tegra30-emc.yaml     | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra30-emc.yaml b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra30-emc.yaml
index 0a2e2c0d0fdd..7b4af9169b0b 100644
--- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra30-emc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra30-emc.yaml
@@ -39,9 +39,9 @@ properties:
     description:
       Phandle of the Memory Controller node.
 
-  core-supply:
+  power-domains:
     description:
-      Phandle of voltage regulator of the SoC "core" power domain.
+      Phandle to the SoC "core" power domain.
 
   operating-points-v2:
     description:
@@ -241,7 +241,7 @@ examples:
 
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

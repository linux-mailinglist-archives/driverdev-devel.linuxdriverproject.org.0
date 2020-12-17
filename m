Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBED2DD6C7
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:07:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EBBE187AA7;
	Thu, 17 Dec 2020 18:07:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bg+EaMxCq-sG; Thu, 17 Dec 2020 18:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2727D87A8A;
	Thu, 17 Dec 2020 18:07:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 943971BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 914C587629
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vv61GmdTAUph for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C144887613
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:20 +0000 (UTC)
Received: by mail-lf1-f43.google.com with SMTP id m12so59846498lfo.7
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cl0K+0TJ44kvt29rpR6eiUIQXd8X64NWC+nXmDDHd1E=;
 b=MuUFzZ0hzx33koe8Q6SIGZb5hKTQFzBpBJUqh/SixgLOznrLg7KOMWUpURY+xeV5Hx
 k/U2399Zm9gNeQBBswlgsbKInco0EB6omSTVgO9I39a9yEFyNbqx2xScbrINdw4W49qY
 oiKEDur9FjWfspdRBhJVowgv3c0OeHonvL9BobDtgnQY/086LE0DqE29kK45w1BEDk7I
 zzqJiWQFQ1bVlAlIio0abJ+fAaM3fA84dpqAwotrs+rIc80eNPDuZdkjvHELUM24Caal
 /nFPceaxGOpDV1296lZGIWzVC+Jwil9tc0hiEppkOjRemaz3NCAyDRkyMJl/pkge85aG
 auXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cl0K+0TJ44kvt29rpR6eiUIQXd8X64NWC+nXmDDHd1E=;
 b=jEJEMYF6Pty0ROEczqSSczRiZiOrfzBNRBec/34UYuOVhpVB50HDDlQEifx6uYAIa8
 UPRUOAtC1gOCHE9jx5oG9TWcqRGbWK7kuAOjJKGhD3b3BJqXrh5byyng9+7DpMtf76VL
 NKHIvaSxRmUNzYSpeQ/fwd9i2sIb5EOg1c+4wb9xu89Xg3ONnnFm0uTuZZJoKQXQ8iGO
 cArke7fk8CpltEqeT6WSJt+slN8SdZXOvfRkWBtDnAvpLEK1FPt2iaeWwr9BTug6JJIv
 tTCxVe7swAPUyA2MTkuI6fzr2sS5EwycxONz7vqtsa31urdhrv2mah8WxBxR/qcuEh/e
 A3AA==
X-Gm-Message-State: AOAM533Ly+3+A3khiSZgUszi0uze5WSO3Yhhkn+yaJCRoowvDDoifgUg
 Zm6HI5eN+030OhEdHRMtA8XhuBFzZb4=
X-Google-Smtp-Source: ABdhPJxPFZeRibTS1CFC1H/daUZkN+6BWmcuzHohtcds5PZPgAc+ohRMJgojJ6j8E/2dmWtFFWDUxg==
X-Received: by 2002:a2e:b0d3:: with SMTP id g19mr207999ljl.279.1608228439106; 
 Thu, 17 Dec 2020 10:07:19 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:18 -0800 (PST)
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
Subject: [PATCH v2 01/48] dt-bindings: memory: tegra20: emc: Replace core
 regulator with power domain
Date: Thu, 17 Dec 2020 21:05:51 +0300
Message-Id: <20201217180638.22748-2-digetx@gmail.com>
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
 .../bindings/memory-controllers/nvidia,tegra20-emc.txt        | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-emc.txt b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-emc.txt
index cc443fcf4bec..143439b50c92 100644
--- a/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-emc.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/nvidia,tegra20-emc.txt
@@ -23,7 +23,7 @@ For each opp entry in 'operating-points-v2' table:
 	matches, the OPP gets enabled.
 
 Optional properties:
-- core-supply: Phandle of voltage regulator of the SoC "core" power domain.
+- power-domains: Phandle to the SoC "core" power domain.
 
 Child device nodes describe the memory settings for different configurations and clock rates.
 
@@ -48,7 +48,7 @@ Example:
 		interrupts = <0 78 0x04>;
 		clocks = <&tegra_car TEGRA20_CLK_EMC>;
 		nvidia,memory-controller = <&mc>;
-		core-supply = <&core_vdd_reg>;
+		power-domains = <&domain>;
 		operating-points-v2 = <&opp_table>;
 	}
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

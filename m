Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C50802A71F4
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2ABE485513;
	Wed,  4 Nov 2020 23:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id du1jle-YjWrt; Wed,  4 Nov 2020 23:45:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E4386854C9;
	Wed,  4 Nov 2020 23:45:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 852561BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7EAFA854AD
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ImozexJ_7z_W for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 72F9F854DB
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:06 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id 2so274970ljj.13
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yQimpkIRWNQnMpbdhCpUPNBZvo/GpufqvOqt4z0qAwA=;
 b=ERKSO83J6tv0QUdt8vnWSOE1GpIwg7mIR1JUrs4PyfgPVzV1mH7mEpyAJOsSR12xY3
 rsldAI/5QE2rxBoNdwYh3hxk/wzRAkSsKIoHuD22P4lN8jkkBxNCFgbBpKfwYVwMtiZk
 hY1Z1gChPo7sDA1p9MxN+Mx1EdAo2nz8TwGsz+e38nVaIbWMWUcpVKqUAWxqflyFUc2z
 zmVkx897k9/dL5uXgyLRVGwDyjmwfMJMHjINdfH3z7T1O6RmI6/62I+J/f3RaDIG1/F3
 b5/NryfWaEyEXi653d2wn4BVQldGJhyt9pi+F4OHBx7bGp4zD1BVXptYQfB0SIoKU8RY
 hraA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yQimpkIRWNQnMpbdhCpUPNBZvo/GpufqvOqt4z0qAwA=;
 b=FzBc2WAis4VUZsPUb+LPvjI13MGqkV9DMdFioz8NtCYp2ZK3UUzycMuZbh2CDDvCt0
 SNYV6nDn0MQxhbQQL8LmrPMNJbBOjM5z8M9sGX2daQJHjdOoIMbcNvno0DCK40FIPTCe
 x7a2g+fmWj+CQTjLAty0vHhCgKltxD2AFiesudhPHZVQKAHXDXlKDJP7hTOi9qgyVEfi
 uZiEAJ0N9qBvIpXvXkM1WODju+21EN3pmaiV8bgeBJJirjarIMST3XT4hGls7381F1Ap
 NxCrKO58/nY41XTL7DBpJ4GoRhQwU9MDa1q1yeudVXZ3+Z9Y5GEbnBji9ismqtKPuq/2
 Kb3Q==
X-Gm-Message-State: AOAM532XX62ikb896GbxwoWVDyIFUtYw9OIIy8uaUOQu3zwhr6lxLdcu
 MX2lKCCb/gK21DqW5oOh0BI=
X-Google-Smtp-Source: ABdhPJzqZV2lUSiNvg9T7GHr724oG0dGwDbtok/GVt9MVRYZxSxIwkdsf2v5hnfIaDwbq85V2zwywA==
X-Received: by 2002:a2e:b169:: with SMTP id a9mr156579ljm.84.1604533504504;
 Wed, 04 Nov 2020 15:45:04 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:04 -0800 (PST)
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
Subject: [PATCH v1 06/30] dt-bindings: usb: tegra-ehci: Document OPP and
 voltage regulator properties
Date: Thu,  5 Nov 2020 02:44:03 +0300
Message-Id: <20201104234427.26477-7-digetx@gmail.com>
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
Tegra EHCI controller.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 Documentation/devicetree/bindings/usb/nvidia,tegra20-ehci.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra20-ehci.txt b/Documentation/devicetree/bindings/usb/nvidia,tegra20-ehci.txt
index f60785f73d3d..e4070ae21fd9 100644
--- a/Documentation/devicetree/bindings/usb/nvidia,tegra20-ehci.txt
+++ b/Documentation/devicetree/bindings/usb/nvidia,tegra20-ehci.txt
@@ -21,3 +21,5 @@ Required properties :
 Optional properties:
  - nvidia,needs-double-reset : boolean is to be set for some of the Tegra20
    USB ports, which need reset twice due to hardware issues.
+ - operating-points-v2: See ../bindings/opp/opp.txt for details.
+ - core-supply: Phandle of voltage regulator of the SoC "core" power domain.
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

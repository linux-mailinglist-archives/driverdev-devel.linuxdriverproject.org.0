Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA642A71F3
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0A61285AE0;
	Wed,  4 Nov 2020 23:45:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7D5ds9EWPH23; Wed,  4 Nov 2020 23:45:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A7E3856CB;
	Wed,  4 Nov 2020 23:45:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A2CE51BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9F3E084F80
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zI42wV1Dc7y6 for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CACAE84E32
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:04 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id l10so319151lji.4
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A6xeyw6ZqKT/K4JMygz/BmuhCT9ICHlbp1KBA4DEr4A=;
 b=nqm2X6ZZJuj9sZgSTybdOUi83IBwYn9f7Zvfx06NhWRHbQaEo61dn0AWICDKuDsAzX
 WcnvRncZgz7BZ9/CebWWEjbmvtTisywn31eZ4pmGs2UNS0RRtZfCOBhiTwow/n6mPe9r
 7agAHRD0R2EELNcElIqennHlgH8OGOPHoFL2PRl+Ja/SdoRvkx4BsTmnP2gpWNQvarxG
 SjryQPM6YqWLBzOv3L/jKhwY2mKEYxloqIA7EIeYrN+YlKNWbDi4sdhMPjwR1DWYKbqi
 vxBJYm1aGkZ0x3sS+0lBKRX7ZCwqw3mmTLFKmuBg1cW60xhkD71EveU4NYFDyWJAnfX8
 8m1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A6xeyw6ZqKT/K4JMygz/BmuhCT9ICHlbp1KBA4DEr4A=;
 b=HNlDlIwZTH1+/C2wSr0X/T7M96HzN1glukGAMI//p7fmHGQddPpucxu7zo9VTdEYF8
 0O59++noOjUP0y7lL00gMbUrpzAZEaE2WvGooLJsa86xGNrNV4zt41OF5+wtsATM7XYJ
 6cPELu1lvrhUbW6LOKotSaDuuk1GFbUR9yLLJTg11v+9FiNCs4pVXb92BKKbTCaKDzJ0
 bNEFwaBj7G0ZCJPg4nIFo0NPhnUe8/XM38IAU68UXowWl3d+JT/6rBMHhBbwdlsMC6/a
 5xBHg3IOaFLMgRlxw6NrBi0OceXZj6NP1HG93WXdOMmr6zsgwS9rPsbwJg+LN7l6AKPp
 Fq/w==
X-Gm-Message-State: AOAM530gSeZe1Tef9zHw/ReHuQ26OR6npbpdbXe3wOBIDkoM5vJhYtTX
 Umkam08wA4WKyP+lo8Q0ZmA=
X-Google-Smtp-Source: ABdhPJzDTd1dZ6QvpxBBESnqfpznl55p7ubyewQPaYA9itl922HIytqPgmIH/zsQSw8jZFmiQ9g1kA==
X-Received: by 2002:a2e:b619:: with SMTP id r25mr134978ljn.465.1604533503104; 
 Wed, 04 Nov 2020 15:45:03 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:02 -0800 (PST)
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
Subject: [PATCH v1 05/30] dt-binding: usb: ci-hdrc-usb2: Document OPP and
 voltage regulator properties
Date: Thu,  5 Nov 2020 02:44:02 +0300
Message-Id: <20201104234427.26477-6-digetx@gmail.com>
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

Document new OPP table and NVIDIA Tegra-specific voltage regulator
properties.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 Documentation/devicetree/bindings/usb/ci-hdrc-usb2.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.txt b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.txt
index a5c5db6a0b2d..f02a98201062 100644
--- a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.txt
+++ b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.txt
@@ -90,6 +90,7 @@ Optional properties:
   case, the "idle" state needs to pull down the data and strobe pin
   and the "active" state needs to pull up the strobe pin.
 - pinctrl-n: alternate pin modes
+- operating-points-v2: See ../bindings/opp/opp.txt for details.
 
 i.mx specific properties
 - fsl,usbmisc: phandler of non-core register device, with one
@@ -110,6 +111,9 @@ i.mx specific properties
   The range is from 0x0 to 0xf, the default value is 0x3.
   Details can refer to TXVREFTUNE0 bits of USBNC_n_PHY_CFG1.
 
+Tegra specific properties
+- core-supply: phandle of voltage regulator of the SoC "core" power domain
+
 Example:
 
 	usb@f7ed0000 {
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

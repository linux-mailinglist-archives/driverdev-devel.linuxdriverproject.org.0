Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1D04FD11
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jun 2019 19:08:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CF2E8734E;
	Sun, 23 Jun 2019 17:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cY1MPvKFbyLL; Sun, 23 Jun 2019 17:08:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF26C870DF;
	Sun, 23 Jun 2019 17:08:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5DA831BF47A
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 17:08:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 54580854C4
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 17:08:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WJlUYb7l8m7Z for <devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 17:08:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9A71985082
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 17:08:11 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id d17so12071875qtj.8
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 10:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u8j+gY+lvxiLMiVq2zvKmW4bjPZpe9aVk5fhjHnMcdE=;
 b=vNSunVmJn0bvRABXMHgvwOlj8bAqmZQM0F7Jm0Tq6D1JvC8mlrP06Lq/P+9cnvWdaE
 dJhov6W48LaSQYqyF4WLwj3ChkZSNdqleqvv+K04Ju+1ykxPRouCiGvZNQpOziUMqOd9
 N6xp8ZOHnPWZuAlTvAr3UHG5iuaLLXd1aR2dAfSv2c2WEb/G8Rgzw9ZAV65PxH39ZTQ4
 vAZIsWFANgeZLjersfbF7IvaTJJ3cU/CUXdgbyPNArhYuA8TdQbGIdjXAFXZK/7GsPyw
 TceJSLAFbHclv/QoB2HsECf34ckk1iCvbAJ0jt4dcDWUkNQA4fVgcAA3BydYzabO5yWk
 d17w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u8j+gY+lvxiLMiVq2zvKmW4bjPZpe9aVk5fhjHnMcdE=;
 b=YNMDydKG7hizLvgJQ5BbMQlqipufR3OiabKi4GIPgSzEyy6wKB9Tg9WHAW5JXVI8PR
 gIsWYE7Kuuky5OEza+moiXVFPpFBTXvCg9ywNxzKEH61VRrf4pIv3B2NB5MBOAkEorid
 EPLq3y/LatsdDKbKmKAu4nc9oG0LiUmN8JK2e0U6Viwc9TnHL1dwdSuCpwDzuM6QZnyL
 v0T7dLYMYDzdJ5q7ENdLUqw4djyAK2NXgppJa99qfQfhcZ1be48STlT82Je9eMVNi/lB
 5rq61aYeX6g1RtMPZkPMAfhKzUo1WDJIj110c/J4PwgjSt2yAQnBKXk0ucMqCwllr4rN
 J71Q==
X-Gm-Message-State: APjAAAWxmBuHf/xlS4dpAOzR/2TeIo4mEXwDStmK5x8lGtLw2BgvlFrG
 vwcyFU/pnWoAyWIQ+Nc4vYY=
X-Google-Smtp-Source: APXvYqwJYuTMadc7GyOVUeKxkfcM3kGUaIfoi0ekGeaCpPinhnaaKqcWzBt/h373X5kQlj5kah6+6g==
X-Received: by 2002:ac8:2646:: with SMTP id v6mr105329680qtv.205.1561309690693; 
 Sun, 23 Jun 2019 10:08:10 -0700 (PDT)
Received: from localhost.localdomain (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.gmail.com with ESMTPSA id o54sm5790756qtb.63.2019.06.23.10.08.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 10:08:10 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3] media: dt: bindings: tegra-vde: Document new optional
 IOMMU property
Date: Sun, 23 Jun 2019 20:07:26 +0300
Message-Id: <20190623170730.5095-4-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190623170730.5095-1-digetx@gmail.com>
References: <20190623170730.5095-1-digetx@gmail.com>
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

All NVIDIA Tegra SoC generations provide IOMMU support for the video
decoder engine. Document new optional device-tree property that connects
VDE with the IOMMU provider.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---

No changes since v1.

 Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt b/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt
index 7302e949e662..602169b8aa19 100644
--- a/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt
+++ b/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt
@@ -35,6 +35,7 @@ Optional properties:
 - resets : Must contain an entry for each entry in reset-names.
 - reset-names : Must include the following entries:
   - mc
+- iommus: Must contain phandle to the IOMMU device node.
 
 Example:
 
@@ -59,4 +60,5 @@ video-codec@6001a000 {
 	clocks = <&tegra_car TEGRA20_CLK_VDE>;
 	reset-names = "vde", "mc";
 	resets = <&tegra_car 61>, <&mc TEGRA20_MC_RESET_VDE>;
+	iommus = <&mc TEGRA_SWGROUP_VDE>;
 };
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0518A132AF
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 May 2019 19:01:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CEA4987B8C;
	Fri,  3 May 2019 17:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VXC9R7qL-mFk; Fri,  3 May 2019 17:01:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6853487B7B;
	Fri,  3 May 2019 17:01:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 116231C1644
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 17:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 04EEF228D1
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 17:01:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9i9vk+7BMiX for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 17:01:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 50DED22794
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 17:01:32 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id g57so6754660edc.12
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 10:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4UUaSV6UsTJj0YzNYNTXseusGNlLAnywMu7z5yzgiuo=;
 b=Bkgs3wYfaIDcescO6hEhbESLxlHtIU1ZdUQ58EaYqQE61UZiG26j0XiHeps/v3dF2T
 mObHp7f4mDaZPFjkWURs3dEesPWFt/MnpxLIrbFA0EzoVbH0vCxvCyJM7PDxxYiIHC7S
 cGuwzBOmhGpj1FAoJGyLBpe/J7gPu4Wadd9JPWW9uSmGh1RqNqScZ37/bqYgXoYqMDZj
 X56LItkbA9QsRjTJR8GPBbgvCyzEkzntxAM6XTRyJjXuVMyut4PjarT1mYF2Ojh5rFMO
 p89UakNVE6Mp0YsGQJjljrEdbL1mHr249gHwxcRJx3Z0SB9//rQdqoAowwatm4jIyzff
 uwBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4UUaSV6UsTJj0YzNYNTXseusGNlLAnywMu7z5yzgiuo=;
 b=VImxqHHZbFWvo3fS/q1zAPCPyU24cFcAyksH2qZUvkcxdJEGOFALf3M1fE76kpdL8y
 w1RwQSrbvircjvX1NgiYvQJXhWPyCTcwIbChcpHqeL7NzFtEAPU/znX+SzRFzyyibDxR
 PqSqI5iX1eRawI8zQLVBpf/Ys7UEYKhuEpw+efRIvPbUvPqS1BgYQcWSqRCBrDXal18r
 0aleNTlINgsq5QV+uvdeLmAU/JUKEPWsVuD0YZ2p4PP+H6SK7QISWLtEqew0EewaqNes
 60JYAiGx5SNdXJqL5YE7gGa+eBrDJ0VlVrIv2sHsEuwe5CQftvntdhciarKJJUSBzVKH
 n9QQ==
X-Gm-Message-State: APjAAAWjyMj/kMJYB4gKM7gUAKFSZrE8kDlaD2OXXsxkq/NnKGhh3Wgo
 JUyx7Xz4bpl90FGvke+ITTUCEA==
X-Google-Smtp-Source: APXvYqzB6aUE96YeSt2xyCeOW5vMxyPSMXn7a6sdOIPzy8EsGCltFdnJTGy0RC9T/X5cvIEHR8I49A==
X-Received: by 2002:a17:906:29d3:: with SMTP id
 y19mr7282365eje.122.1556902431008; 
 Fri, 03 May 2019 09:53:51 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id j55sm707038ede.27.2019.05.03.09.53.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:53:50 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: gregkh@linuxfoundation.org, l.stach@pengutronix.de, peng.fan@nxp.com,
 shawnguo@kernel.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com
Subject: [PATCH v6 5/5] dt-bindings: imx-ocotp: Add i.MX8MM compatible
Date: Fri,  3 May 2019 17:53:42 +0100
Message-Id: <20190503165342.30139-6-pure.logic@nexus-software.ie>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503165342.30139-1-pure.logic@nexus-software.ie>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 anson.huang@nxp.com, Rob Herring <robh@kernel.org>, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add compatible for i.MX8MM as per arch/arm64/boot/dts/freescale/imx8mm.dtsi

Signed-off-by: Bryan O'Donoghue <pure.logic@nexus-software.ie>
Cc: Rob Herring <robh@kernel.org>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 Documentation/devicetree/bindings/nvmem/imx-ocotp.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
index 68f7d6fdd140..96ffd06d2ca8 100644
--- a/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
+++ b/Documentation/devicetree/bindings/nvmem/imx-ocotp.txt
@@ -15,6 +15,7 @@ Required properties:
 	"fsl,imx6sll-ocotp" (i.MX6SLL),
 	"fsl,imx7ulp-ocotp" (i.MX7ULP),
 	"fsl,imx8mq-ocotp" (i.MX8MQ),
+	"fsl,imx8mm-ocotp" (i.MX8MM),
 	followed by "syscon".
 - #address-cells : Should be 1
 - #size-cells : Should be 1
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

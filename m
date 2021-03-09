Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C4E331E6D
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 06:23:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6FDF4016A;
	Tue,  9 Mar 2021 05:23:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QvvKoNcRNQRE; Tue,  9 Mar 2021 05:23:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CDCF940166;
	Tue,  9 Mar 2021 05:23:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3DC581BF2FF
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 05:22:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3A4E16F562
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 05:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m5KqDMiMitCL for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 05:22:38 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5FB9E6F500
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 05:22:38 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 t5-20020a1c77050000b029010e62cea9deso5149034wmi.0
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 21:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TQPV/D5Slla4tO1OZEdplYJsUdKoA4adaddnoqiUdzE=;
 b=j4nx9wi2uDYxsUVnmo9+5g9FZwURUigLvfcxKssOyiTLzdGf0nJf/BKNn6jBiylSle
 U8aK52HsqECZTfVKnL0q9HgbQOtEo804zwcyrUdnuAPBC4Mcak9hP6JcfuXFxSPIjuz4
 3kzhKt/UtYwealsmYwSvy6I2XdAG42b0gwTqbzhcMZjBO3En1LpvLcj1cbuLyBQ2wX5D
 jpw9AgQq8sX2qGVtAbnqeDMZPcmBk7VdcEoKje+lfYBwd5DQICQ7jTxtgEbteB3QdLqB
 szLHy+4mpEkGclJUVuR/9wagGP2ZOneWzArX/p70bv2IckJibwLWPNSpv+4RPVxX2ThB
 A6aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TQPV/D5Slla4tO1OZEdplYJsUdKoA4adaddnoqiUdzE=;
 b=eOCEFCEHX6R7IkovobdJ7LFEWbKwBsdE0PEI/zO7Fda7gVe2+68XFIo5LKDZP1KaZp
 Kg1WG3gUIVA4ttnWmYLKrtMTW9nnllN2Trxo9FaoTmygWUwkzsSGmWH+RIAC5SesPGqn
 fh0rCnwWG2w516s7PLlgxpL9ArGMhS98TzOm8e5zaiC6gVRlDoF8s1aU68Rpd8bqpts9
 kODirm9wWCa3OwiU/jPmzruGjoQJ5hZM7YSHLj3XhgVTkAtvmyhAIbEdP1EBKZxpMJTM
 XExlnY64uhfcbwiqHaF9NVgFPRdEnyur5oKCcXl0OjCy5/TPFtCwh7ed933NzvWszDhZ
 UeyQ==
X-Gm-Message-State: AOAM5315dMgKDT+9EBCeN7CAKmwR4oONdsz0Zeig+hE+gaf5uQSQFvE4
 uKPc9GL46vHy2US0cEKct2I=
X-Google-Smtp-Source: ABdhPJwr04NnozIaTUbjHRSOni9XcQDzRZS5zaH95MTIJP/0BiEEHYQCPeg17eIMZqefkx1YwjHujA==
X-Received: by 2002:a05:600c:4a06:: with SMTP id
 c6mr1969051wmp.35.1615267356763; 
 Mon, 08 Mar 2021 21:22:36 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id c11sm23450743wrm.67.2021.03.08.21.22.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Mar 2021 21:22:36 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v11 6/6] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Tue,  9 Mar 2021 06:22:26 +0100
Message-Id: <20210309052226.29531-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210309052226.29531-1-sergio.paracuellos@gmail.com>
References: <20210309052226.29531-1-sergio.paracuellos@gmail.com>
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
 tsbogend@alpha.franken.de, gregkh@linuxfoundation.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adding myself as maintainer for mt7621 clock driver.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 809a68af5efd..ecad5d972122 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11288,6 +11288,12 @@ L:	linux-wireless@vger.kernel.org
 S:	Maintained
 F:	drivers/net/wireless/mediatek/mt7601u/
 
+MEDIATEK MT7621 CLOCK DRIVER
+M:	Sergio Paracuellos <sergio.paracuellos@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml
+F:	drivers/clk/ralink/clk-mt7621.c
+
 MEDIATEK MT7621/28/88 I2C DRIVER
 M:	Stefan Roese <sr@denx.de>
 L:	linux-i2c@vger.kernel.org
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

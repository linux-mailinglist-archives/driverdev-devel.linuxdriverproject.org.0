Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E225C2DF4BA
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Dec 2020 10:37:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 97AA1204A7;
	Sun, 20 Dec 2020 09:37:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vKycir-31ikD; Sun, 20 Dec 2020 09:37:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E7B44204B8;
	Sun, 20 Dec 2020 09:37:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40C221BF958
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 09:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3DEE786F78
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 09:37:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kQrrnt8qDgOm for <devel@linuxdriverproject.org>;
 Sun, 20 Dec 2020 09:37:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8F07586F77
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 09:37:36 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id a12so7639083wrv.8
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 01:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m10UBKJBthWio+4ksO5Z9Dkd3ZlCqAP161BEeEUt8Io=;
 b=Fg56ouWKeELsC3gulKYGH9X/1JCpTssb5w30C25D0v76Pjnli6Uid5/0e7Z8z6Xuau
 r/a7ztFYheYj7ZabNG1i64tAhiO04ld/eDKQHFTJ0IPBsNAej89wj+ytt+Mk5/vYY9JU
 rgboWdBMEBXH+U7+O5ZShKd/uev3uq/MLq5xi8ODeW8JaZCO9OKci5f3rtIjpz0GTD5I
 bY9xLWnqvpG00iEx0eudZ8nKMvFXvoFyFUONVz6EBqZgUH9qxruf6OOn8sBNhRnWmSiw
 kXAtKJCVEJRc6bKrDJgbNmXuh5ou/nqwF/YuC8uHyJVZzi8aw7VmOqJ9B7duOX72IzUI
 CcSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m10UBKJBthWio+4ksO5Z9Dkd3ZlCqAP161BEeEUt8Io=;
 b=i9ft3Zz52Zyc53ZvUoaiy3OZu140008x4h4MIkE6/hyjKHwHgnxZSw2oeneEEFARjY
 u8yH0RbEJe6t7sRl6z2YDVl691lQPDeD8KXZ7J5hHWGFaaK3xq9+wv3ModpEWf+C6q5T
 K+5zS5ELGmY1oZuNTbaa4AH6qx88q9+YVWXEhCu3bRQOMiRrf3fBwHhBd0yjrXmE5ow+
 /C7KByxq22oKm5HJ/lT9oyYlJkXlHAlLD15abyEZHkqT4ipRFgC5vCabwvLaevCamDKW
 Ngp++P45Cw9JSttVcsc3p6Iubx8vcMS9yLSZD/pS6DcaX1CXwClNPUwH5Q2EN0f3Z+XR
 8tDQ==
X-Gm-Message-State: AOAM532I2oLL4QV88v4kscEvvQrcnDN21f4s2ojDkA8/VDvmjD68p9ne
 xiUAlthaCBHRPecMSYTYYfA=
X-Google-Smtp-Source: ABdhPJxgna1g9KEcF/nCu2xv/8twa9Rpyn+HagZQsSNOiyywJOhPxqAqkl2Z21X2KWIrXD4FBS18WA==
X-Received: by 2002:a5d:69cf:: with SMTP id s15mr12816468wrw.372.1608457055138; 
 Sun, 20 Dec 2020 01:37:35 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id o8sm21288819wrm.17.2020.12.20.01.37.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Dec 2020 01:37:34 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v5 6/6] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Sun, 20 Dec 2020 10:37:24 +0100
Message-Id: <20201220093724.4906-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201220093724.4906-1-sergio.paracuellos@gmail.com>
References: <20201220093724.4906-1-sergio.paracuellos@gmail.com>
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
Cc: hackpascal@gmail.com, devicetree@vger.kernel.org, tsbogend@alpha.franken.de,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, robh+dt@kernel.org,
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
index f5eafee83bc6..f0c51d9760ec 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11247,6 +11247,12 @@ L:	linux-wireless@vger.kernel.org
 S:	Maintained
 F:	drivers/net/wireless/mediatek/mt7601u/
 
+MEDIATEK MT7621 CLOCK DRIVER
+M:	Sergio Paracuellos <sergio.paracuellos@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
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

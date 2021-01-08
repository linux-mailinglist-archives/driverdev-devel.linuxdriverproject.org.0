Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B05C2EEB7A
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jan 2021 03:52:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B516A87568;
	Fri,  8 Jan 2021 02:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fawWY5l2SXdV; Fri,  8 Jan 2021 02:52:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 33D0387523;
	Fri,  8 Jan 2021 02:52:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 995041BF30D
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 02:52:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 95597864EF
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 02:52:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TKxGs5R54wfF for <devel@linuxdriverproject.org>;
 Fri,  8 Jan 2021 02:52:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com
 [209.85.215.171])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B286D85B78
 for <devel@driverdev.osuosl.org>; Fri,  8 Jan 2021 02:52:06 +0000 (UTC)
Received: by mail-pg1-f171.google.com with SMTP id n7so6731459pgg.2
 for <devel@driverdev.osuosl.org>; Thu, 07 Jan 2021 18:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PQO8vJwSx7HHkUDB54L3o6TvWNWFoO4uiodcnxSDlcQ=;
 b=X/AAyuJPU+5BF0P70BENerkQ7fsoiQwBujnVb/DQLxNbz1PPtMezpk5ReCf/OJKQQy
 f4bPc1u3OHv/y4tYs6HpwW77XZvz3oaL8PpNPggwD9t7QroceJRn6aAT0DlpL3fKmt9m
 Kc2eEwKEnuIJFw8ojiF0UiZqJeFc277BnZZPvWXczvmiW79m1x2MqcGq6I8lWYpS91L8
 s3gZtJOUZD/CET29z2o6rPTikBdhxrk+Z3p2zjjQClk91guj9+5j2Oq7QEGLXsVaIwXK
 uVznU6511s/FXwBle7HhugF3yj6NOEB2U6jJRJV8N4XJqnJW4oR7E/hb/gvJy4gDt+8R
 WXvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PQO8vJwSx7HHkUDB54L3o6TvWNWFoO4uiodcnxSDlcQ=;
 b=uH1WTr0b9SArgolzBcFuKQN3Wo0JCQTsAG7ELnFNcrSQihFHISnsDG3ThdCGUuWS5e
 es5Xk0b4n2OgRmgCfAGnxFYgFkkb7X92hm1tQ6zFf3G8039gZhTkPQV7RgC6jgU0rjxo
 J10HeXHUhMaiwVPrmIhWcEHSXDfWNukcw/DIrSffL15oRc+jYP4ffTvafcxel6rx0+fi
 ZN3zNuWzsUiyvgNNybbPAxO10wmKnhh6OlQzwINIKvH7rvtDKiHqHgIqM3ZyuwgF1c7b
 2vAorRWs75sdqj/11UN351CdiclMnsGIr7ev1TZTsXPtqy9L0eEA6jU8UhGu4JIG8zML
 8YPg==
X-Gm-Message-State: AOAM530NMT+83gsUxAgvwNdInsf0cS0np7mX8/HVcoghGs6wVWg823Uy
 FM9/NrG6/JZZyu4pz2q6emg=
X-Google-Smtp-Source: ABdhPJyh26fX5mM3v76uqsyxr5vX4CHgh1u6pP0ycZZyqGqjd0a30WyALlIup4JtQsrUxrFORhFF2g==
X-Received: by 2002:a63:3049:: with SMTP id w70mr4782475pgw.224.1610074326364; 
 Thu, 07 Jan 2021 18:52:06 -0800 (PST)
Received: from container-ubuntu.lan ([171.211.28.197])
 by smtp.gmail.com with ESMTPSA id z2sm7641230pgl.49.2021.01.07.18.51.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 18:52:05 -0800 (PST)
From: DENG Qingfang <dqfext@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Chuanhong Guo <gch981213@gmail.com>, NeilBrown <neil@brown.name>,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: mt7621-dts: remove obsolete switch node
Date: Fri,  8 Jan 2021 10:51:55 +0800
Message-Id: <20210108025155.31556-1-dqfext@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: Rosen Penev <rosenp@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This was for OpenWrt's swconfig driver, which never made it upstream,
and was also superseded by MT7530 DSA driver.

Signed-off-by: DENG Qingfang <dqfext@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 5b9d3bf82cb1..42e8ec72c3cd 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -497,13 +497,6 @@ fixed-link {
 		};
 	};
 
-	gsw: gsw@1e110000 {
-		compatible = "mediatek,mt7621-gsw";
-		reg = <0x1e110000 0x8000>;
-		interrupt-parent = <&gic>;
-		interrupts = <GIC_SHARED 23 IRQ_TYPE_LEVEL_HIGH>;
-	};
-
 	pcie: pcie@1e140000 {
 		compatible = "mediatek,mt7621-pci";
 		reg = <0x1e140000 0x100     /* host-pci bridge registers */
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

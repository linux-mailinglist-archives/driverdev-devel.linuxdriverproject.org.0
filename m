Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF5C2B17D6
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 10:11:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AB2182E1D6;
	Fri, 13 Nov 2020 09:11:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IbLsEvlcmNvY; Fri, 13 Nov 2020 09:11:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E94ED2E1BA;
	Fri, 13 Nov 2020 09:11:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16A971BF9BD
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 09:11:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0EAE18740A
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 09:11:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HqUeUjgNgnkh for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 09:10:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 85DDE87405
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 09:10:57 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id b6so8933180wrt.4
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 01:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g0CHHJRFLkJgpWDc0kWpwLPadBEpgRbUEt1rTCDH2OM=;
 b=D4gyFtmnvMDTS1VEiZeY7wc2KHvHol8ijYHtMFfyx5VbwjErW66XQTz0w7lCQFArnK
 XPxkxdBykxUHPdhUCQuboujhx2cbVUeHYe2V+ppviGv0yVlG5sYZNK6F1CLc1HmFdrQT
 q8xD+UYA6Z+KNkkrbi2rYokMRdrKQ0GT5JdjSGXnlIeUMzd3HoYLPdycuULkuGEIC7Q1
 Ffublk3nJFT9eWAExx9SzFMDZLw2ZkJlr/tsQUypphx9yw6lmVl13jvwC6LEAVM4WKLr
 +MCxB0uHr+cNv32fwaPK/SFSvyKydc1HWFHyvCz8+2f4BufFCC518Rm95o+E4/GDBpUf
 QiTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g0CHHJRFLkJgpWDc0kWpwLPadBEpgRbUEt1rTCDH2OM=;
 b=Ml8kW/sJ0vuPV30ZtRi/19j1zGxtrY5E1OX64KZDBIISEow3+bNpQqvtwYLpLkwndi
 CgB6LdENCaz7TPV8y/FIWjET6bYpqrb+C4e8y4C9dEoo/UggtvA2iEsQKsoWK8xpGP5F
 r/PXbVjgPZbrw5VelN1nheVeVXlyaTwK3Awcq5RPezR1yZg/x1jesY4ZKbbNWVGTLnW7
 Gm8ixRnP2ftTMQWKOJyfcNYKSWw33NAo62tiKAO7ILzsSdooc0D9CCV0P1cdzQaX1YcY
 815eVKmqDrGgUchhXfiBftYjkvtC+zxe4XH3MANrsY++jmpmTDLxu0FwmGNCfI0NTlzt
 r/6g==
X-Gm-Message-State: AOAM533J3Rit5f4zQexpZlWepkvBMQBcCSx14ZzJhSEndhht9vjGxypb
 BqfvMVLBm05w9MXifh0Jt9o=
X-Google-Smtp-Source: ABdhPJyciHbl+LA+gvNXReZgkWMntgWiftBxUeKU2/A5fHAhGlcnRxlfHeTL61G7xGNH6ujrauQYzg==
X-Received: by 2002:adf:84a6:: with SMTP id 35mr2167644wrg.18.1605258656126;
 Fri, 13 Nov 2020 01:10:56 -0800 (PST)
Received: from localhost.localdomain
 (245.red-79-158-78.dynamicip.rima-tde.net. [79.158.78.245])
 by smtp.gmail.com with ESMTPSA id 15sm9266183wmg.1.2020.11.13.01.10.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Nov 2020 01:10:55 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH v2 5/5] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Fri, 13 Nov 2020 10:10:46 +0100
Message-Id: <20201113091046.30964-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201113091046.30964-1-sergio.paracuellos@gmail.com>
References: <20201113091046.30964-1-sergio.paracuellos@gmail.com>
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
 sboyd@kernel.org, gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, jiaxun.yang@flygoat.com,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, john@phrozen.org,
 neil@brown.name, linux-clk@vger.kernel.org
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
index f1f088a29bc2..30822ad6837c 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11142,6 +11142,12 @@ L:	linux-wireless@vger.kernel.org
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

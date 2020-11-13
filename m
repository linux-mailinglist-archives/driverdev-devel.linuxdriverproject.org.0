Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F36C2B1F08
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 16:46:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12060878F4;
	Fri, 13 Nov 2020 15:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xVfTCxsD-9nj; Fri, 13 Nov 2020 15:46:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8732887791;
	Fri, 13 Nov 2020 15:46:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 919BB1BF9BD
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 15:46:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8DFE38778E
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 15:46:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rn0Imhhy3pRz for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 15:46:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AF5FC8779B
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 15:46:47 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id 33so10393450wrl.7
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 07:46:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g0CHHJRFLkJgpWDc0kWpwLPadBEpgRbUEt1rTCDH2OM=;
 b=WE/2sCiUyHHpl2DCayvAvp1Q9QJYgwqI4FwsibXZlztfRyBbUpMrNWkHA3z6iwQqkR
 HoddFL2fOr54FKpcRYZzcb//tSZXbgohEG9DJJFenYRMymUytedCM67GQtsdvKgpE8Sr
 zN9YASR+Ako77qHf0zkdHPSTu2BAlHEr0k2JTvela1wbnEu30dmFgZOyKpYbejoW2iGv
 tR7Qwrz+Gf5XbNNN3ECnJqtWnBa/W5r5SaIga5n9y31XWV47MFF668u5CMIsh70Y4Zaw
 yH6EPuFgXrQCxD1Lc0BvD8HwK1ifUIX2KP8zn09Sx5eoBhM2EIAur3xbnBW9U5fZUesQ
 s0hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g0CHHJRFLkJgpWDc0kWpwLPadBEpgRbUEt1rTCDH2OM=;
 b=DBUbOx28gpR055TSqwJ9EQTOt/tDKDqS3iLjeQ8B3xYowHTL2NXxgaRT2e4A2pT0FU
 V5JxrrWqIH+Mf+NmANeRKgEW7sEAozxGrXmNPAmV60zKlVGQATTRY6gTjM7KnCDWPHMr
 qJDFyIkwSKWOErEj2oq0rG5CwExHN39k4IR2CNvfaZNI0CKa5L0jfBpSyO2ytmVAHhPC
 HFISpu+3UiAp+Mih4KHTL557zci3R9aPKCmx30yacWX5GSSt9TQMbPpyTfu6NP3a2J60
 Eh9Pe0Z2S66qszPksyJfGturKWFGNgepm7IkpH+QiIPQDxU7a6hx4zt8CCCddSP5+vGN
 anTw==
X-Gm-Message-State: AOAM532xI6ASYdnciNyCPdWgXB+bPuzvUbZoygg/lRtZiqZZYWCssDVy
 iYUoKTfqjHrhjnsTyq2Cy8I=
X-Google-Smtp-Source: ABdhPJz9j68J/Z6s0zkPSGiUQMUc6/sZUF+65tbax/nZ6bjF8k29PJm5B+vvORjHAu8OtqGiGTUuXA==
X-Received: by 2002:adf:f083:: with SMTP id n3mr4231239wro.391.1605282401419; 
 Fri, 13 Nov 2020 07:46:41 -0800 (PST)
Received: from localhost.localdomain
 (245.red-79-158-78.dynamicip.rima-tde.net. [79.158.78.245])
 by smtp.gmail.com with ESMTPSA id n15sm11727978wrq.48.2020.11.13.07.46.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Nov 2020 07:46:40 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH v3 5/5] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Fri, 13 Nov 2020 16:46:32 +0100
Message-Id: <20201113154632.24973-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201113154632.24973-1-sergio.paracuellos@gmail.com>
References: <20201113154632.24973-1-sergio.paracuellos@gmail.com>
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

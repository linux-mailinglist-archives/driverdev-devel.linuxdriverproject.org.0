Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1879131CB3E
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 14:37:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB4B386AB1;
	Tue, 16 Feb 2021 13:37:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oOJpU7U1kjli; Tue, 16 Feb 2021 13:37:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1301868AA;
	Tue, 16 Feb 2021 13:37:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EFE801BF34C
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 13:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ECAC38478E
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 13:36:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RIDW_Th3cFxu for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 13:36:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F39478459E
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 13:36:26 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id o24so14491586wmh.5
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 05:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jiX7X0M+t1Zm8HAFufsMGCFO60ftU2nIQxPg0v/LgAc=;
 b=dh0TVcFk5TipZh+je3Yb1saPAbf3bXpgLvSW/RGqK4JrroyTmw3zMbAj8I1BJWA5Zv
 HlzbFBGp7ACXr+lRXPasomLMIToJAhfnI+kue64Cy9rD8sDBKzyYiuRVmpOTioh54Dcp
 IF86skOMDZ/UyF+ZIPvW1EyaIryJDnYqpv9ncNoWP+OTZcXZfgcjXhHooAqFOdI/7Unu
 SwFBRPH5ayZ8frAy9JduLtvCioBYlaoh88vcTdf5kMOPYUNHpufTJwFcQ9RQEnecELu7
 TDGD8HlLds6n7vQElDnHmO57dnKMQfJomo8Hp1x8O08SQkV7fXH252XjaZ2jU3dzOUNt
 wCBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jiX7X0M+t1Zm8HAFufsMGCFO60ftU2nIQxPg0v/LgAc=;
 b=TVb36izwGRlcQcBeZTQvcGJTCqNKdfCFr9XiWQ6rm9+6+B4KTtlT53ve8liWs4xEPq
 tgOCX6hNqYhj6t/FdzuQJW/fWNy3457Zgb0v16Fdtz7wg9tnTMAFFD/HtDH0belCdnEl
 uGChu0zl+ylgg5P5hBWlffkmU1/AeueNtOekbIGWrUmJz/V+O1ZjIf5T1bTT3A1fs4g7
 PRfh46BBomAyfdu7ymzuEC0yUZxwD5A+5GqVrYrA8hkkKNO7vBSHWVt//cr88jVWRr5u
 YEQzUmn/k+uOdAY0OBuBGVEPS8104l0E/4vdE3gTNdI9OlQDFjPA07i4fY99eXcM2n8O
 6pUA==
X-Gm-Message-State: AOAM530ykxmcaC1wLV4As9CJC49MiD0Kb7gaBRsiMkBFafjJgF/6W3+L
 KoQ5li3zZgG6g50dsyusCCE=
X-Google-Smtp-Source: ABdhPJxvZl5N1RQSXEvtJw2P035XT2xAYee21rE7WC7JbYEQs20JATwlQuPzFedpn1HJ1rgx2XNaZQ==
X-Received: by 2002:a05:600c:414b:: with SMTP id
 h11mr3373384wmm.125.1613482585467; 
 Tue, 16 Feb 2021 05:36:25 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id l7sm28032530wrn.11.2021.02.16.05.36.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Feb 2021 05:36:25 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v6 6/6] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Tue, 16 Feb 2021 14:36:17 +0100
Message-Id: <20210216133617.22333-7-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210216133617.22333-1-sergio.paracuellos@gmail.com>
References: <20210216133617.22333-1-sergio.paracuellos@gmail.com>
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
index 809a68af5efd..be5ada6b4309 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11288,6 +11288,12 @@ L:	linux-wireless@vger.kernel.org
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

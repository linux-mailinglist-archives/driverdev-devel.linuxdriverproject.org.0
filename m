Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D07E2AF66E
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Nov 2020 17:30:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0643E86896;
	Wed, 11 Nov 2020 16:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vb30KHiu0FfB; Wed, 11 Nov 2020 16:30:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39BDD8688A;
	Wed, 11 Nov 2020 16:30:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA04B1BF9B5
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 16:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E58818688A
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 16:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kwVOAqT7j75v for <devel@linuxdriverproject.org>;
 Wed, 11 Nov 2020 16:30:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 31AEB8638E
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 16:30:27 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id k2so3140419wrx.2
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 08:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R48LKl5uD2WOhx9sVKsENNgBh5qFklRsFvrBh/MY3WI=;
 b=uQw8HWW5Lg8VPRI5TX4As3orIqYvpjuJD8ETj35RV9rTM2Z4/aIls/S6qXgcXoy4+b
 k09LO7xzwSavojAbYia+az0zqhTZiHu52M098b3oPXcgOvVSIKueuFQmXvQ/SdZC6LQl
 m3NK7N76KgAtLSPcijj2fFklWcoYll907qMEtRC8Ufa7T6jRzca42Hd5o7/ja+O6Excw
 yrau8pKrCORJ/NSwO94+3NRb0S1XxDbUDdoytCn/XOcQ+SpYzndyqkK3eAuPabUSJJOr
 6A74IPFCorMRVYuMH0zpj/esrfOOhXB1djuA8xMqYinH18ywlyW2ZOMidYSCPE8oOin+
 laDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R48LKl5uD2WOhx9sVKsENNgBh5qFklRsFvrBh/MY3WI=;
 b=lp1uBIBeZW/i61NNclnsbS94hGDIJH7TBRsGVSDhwbGcqVe7zULGgdP+tU1hXYsV6a
 Gc6DCMrtHAL5u9RxBEDTWBUI7Z7ON1NSreL/lUFSftzTE+K4fwr3dDqdxYu3pqptmeaS
 KBuwGYWuDXVmL+IcmwjpTW2LXRdLp014P14SnkwB5tD0P5E20KwSI+tbDvcHV0/cgmbd
 oaX+VlWawgIg9fGdQws4o7PHHTL0jTuLrBGI6H88VvXibquth/D/TzeE9h0WGAolFFwt
 xnPeeKmzJZvoBvD25wmgHWeikcSv3PJQoZCQRB3rKeNUGWaADQmE9QI/BhCUp9Zf2+8+
 up6Q==
X-Gm-Message-State: AOAM532nlbSUfFN5w2mqmJpno70fubKSURy5fRTKlQ1foi9I6q831efM
 jWjklIHpqkrf4FRyjjK9D68=
X-Google-Smtp-Source: ABdhPJw4OZZ5bKoc+TqQ7yNk7FmYt2R4fov1i9MSbikC6ofPjSY82yH4MDbF76GaqSr1KHQC8rvluA==
X-Received: by 2002:adf:f846:: with SMTP id d6mr14020338wrq.128.1605112225740; 
 Wed, 11 Nov 2020 08:30:25 -0800 (PST)
Received: from localhost.localdomain
 (245.red-79-158-78.dynamicip.rima-tde.net. [79.158.78.245])
 by smtp.gmail.com with ESMTPSA id w186sm3196753wmb.26.2020.11.11.08.30.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Nov 2020 08:30:25 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH 7/7] MAINTAINERS: add MT7621 CLOCK maintainer
Date: Wed, 11 Nov 2020 17:30:13 +0100
Message-Id: <20201111163013.29412-8-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
References: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
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
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adding myself as maintainer for mt7621 clock driver.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f1f088a29bc2..c34c12d62355 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11142,6 +11142,14 @@ L:	linux-wireless@vger.kernel.org
 S:	Maintained
 F:	drivers/net/wireless/mediatek/mt7601u/
 
+MEDIATEK MT7621 CLOCK DRIVER
+M:	Sergio Paracuellos <sergio.paracuellos@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
+F:	Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.yaml
+F:	arch/mips/ralink/mt7621.c
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

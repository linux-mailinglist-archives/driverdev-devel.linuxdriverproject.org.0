Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B63922B3C1C
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 05:31:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B89485F46;
	Mon, 16 Nov 2020 04:31:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AHPUjaYP8BXO; Mon, 16 Nov 2020 04:31:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FE6F85EF0;
	Mon, 16 Nov 2020 04:31:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02FC41BF31E
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 04:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F00DC8714A
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 04:31:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rcUTmjph7xxW for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 04:31:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F287687142
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 04:31:01 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id s13so22388880wmh.4
 for <devel@driverdev.osuosl.org>; Sun, 15 Nov 2020 20:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=1ykM2PQF8UjrQNrIxTj9JuB0X1XIeh6YbXFFU1ntkCM=;
 b=Uwebiu4HIVuABcHK8lNqFk0NZxgyA8PCsBSykCBhRoz6Sd9lzj/QOTTFvWpIUZrVZx
 QUceQi9d7XcR4i19LHPrx4fblUKtMmwshf1qn10aMaxtvcK6kBkHNCxfzocXZpUz9Dcy
 IWJ+iywdzys16kK91aM4ZpnMMiE9AKVFpLI+4QB6Cax/MVTnBYn+vb5UWyu4DVS6Rh/L
 cRpU1hmnB3pUSE8RzfHK1DxQhszbJt9nLsROaDrZnHwg0TSojiOebIOvgDrdhQjgU5/m
 8J4pG92sRVO7NC82GjsIeoBmyaj6MdsxAOIfTn3bpIaE67W2iO8KHgA14OpXrcBx1iSt
 gjng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1ykM2PQF8UjrQNrIxTj9JuB0X1XIeh6YbXFFU1ntkCM=;
 b=jaWW0gqGkg6xibFREmKhf1Wle81TTaGqwzqP0mNOI7eZP1w0V1rNkPkQUb38paHLwk
 7SA3E4tkY1mleffFs8LXNh4OJb0XxRP37uC4P8xCkUwJ966PQFvWMFRoQvIG3idelw6u
 /Ju61tRzSPamowjt4psvSQmJpWvNbMPat6TZCj80Agsss7yCAnCghBADl9vmfHvYeNs/
 CckESccBFU5oESp6oQtJVPEXUzy0qEkX+Hj/iSd7n7GsIs8kZUprfW+t1a9LGHdio2Xz
 SAgAxIIEFuQG4lCWz95DAUHST3gZxrGppXVAWkK/J25Sry1ytUpzxqEn8Tj3P7bnSxx8
 Tf3g==
X-Gm-Message-State: AOAM532bhhOHOewi204+mT1CgIIYuaO3QB6zuxmOprjk5md9O56togfY
 HOTuDjA2KQmhPmelnn5ao3Q=
X-Google-Smtp-Source: ABdhPJx8GlPd1wNv46eUCTw1UhIOajMx1D+l6Y9uVJsmoqiC4qc5rEMeGJXgpeioam+KFMondDJWFQ==
X-Received: by 2002:a1c:6704:: with SMTP id b4mr12684331wmc.96.1605501060484; 
 Sun, 15 Nov 2020 20:31:00 -0800 (PST)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id f19sm17609525wml.21.2020.11.15.20.30.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Nov 2020 20:30:59 -0800 (PST)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-media@vger.kernel.org, linux-amlogic@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] media: meson: vdec: add G12/SM1 to module description
Date: Mon, 16 Nov 2020 04:30:55 +0000
Message-Id: <20201116043055.23655-1-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The meson vdec driver also supports Amlogic G12/SM1 hardware.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 drivers/staging/media/meson/vdec/vdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
index 5ccb3846c879..5d4db7a5b4b5 100644
--- a/drivers/staging/media/meson/vdec/vdec.c
+++ b/drivers/staging/media/meson/vdec/vdec.c
@@ -1131,6 +1131,6 @@ static struct platform_driver meson_vdec_driver = {
 };
 module_platform_driver(meson_vdec_driver);
 
-MODULE_DESCRIPTION("Meson video decoder driver for GXBB/GXL/GXM");
+MODULE_DESCRIPTION("Meson video decoder driver for GXBB/GXL/GXM/G12/SM1");
 MODULE_AUTHOR("Maxime Jourdan <mjourdan@baylibre.com>");
 MODULE_LICENSE("GPL");
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

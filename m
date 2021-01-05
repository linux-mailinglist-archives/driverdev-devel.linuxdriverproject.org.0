Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C322EB431
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 21:30:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD806228EF;
	Tue,  5 Jan 2021 20:30:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Be2T6-fnIsV; Tue,  5 Jan 2021 20:30:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 020B41FC7D;
	Tue,  5 Jan 2021 20:30:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BD871BF57F
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 20:30:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 483CB86B3F
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 20:30:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e3qE2Fwr7ZRO for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 20:30:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 191B286B3C
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 20:30:41 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id t16so2140373ejf.13
 for <devel@driverdev.osuosl.org>; Tue, 05 Jan 2021 12:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ATMiMhOGdNGb2H7yTKxBixWgJ0m9iDQbo2lqGV5shds=;
 b=QXiiDz3j1LH018diNgWoyn43TV7X/vca2nz7rpv6SszpgLBA3Y1LgBQ70HyLQur0xB
 9wkS8SeeVfNsniBz+MjED0LH38zCm32YdsOupKiR23+mzmiEwvE1QtE4GX9uW5K3ImQI
 yFVqs73aW955adpBQ1lAUuMHmG6VIzC73doJTUqUFXPfo3KiT8Ni/9RLvP9H1fzneiQj
 bzVqkdzgfrEKujYNEeWuIdgNamxXdbsD4gBi2DiRcPGcbjadgNuFLIMCvbFS/rLhpPNl
 tmaPgfJ83WT9VZGRhIAFuzdzA6dGKU+IHSVy4V4xCRKjLedvCcQc5JsyIDZf1GpuB+rx
 LnHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ATMiMhOGdNGb2H7yTKxBixWgJ0m9iDQbo2lqGV5shds=;
 b=CjD+f33tbwSSb3sEWwjou9S5zYFBQRkY/c9T+/lsoNOWnIKYOEkuWsdqizXC58mteC
 fclTMuDiSTWKqvIkRP+pq0VEWspY3ZQe/ag2uz2v7mjZo3b/PLNQ/tyCH1DpHYwUmZdC
 wTRu92+h4Q5TlHQFuH38+pBu3PtSPLexzVF6he7FXuX3u8v9/6jqSPeUc4HV11Rb6NFu
 3pU7AYM0vzEYgBohNqfVOvG1tMPDwBwm3ubgbU+fe294d/aVsiQWVtj3hFeCtJbJ8p4d
 N0kQdUsNn3xoGrN87YB7nly28zsHlQ4T7Mj7WDYZJxhMOciW41oSwQPDsUJmbF6nZhXr
 CwlA==
X-Gm-Message-State: AOAM533hOTmQXETJq2NXQlsIdpb0X0Pq9O1v2RhVJqh3MXABRWP3J2vu
 GQ6xUmogFBn9F+ddzExziIc=
X-Google-Smtp-Source: ABdhPJxAiG2jqPLt0FbNfkA331PcVSFMVwN2ToZI78gYGShQZwmpRNVvIfGXSPCvFWQdBDRch2tVGw==
X-Received: by 2002:a17:907:20a4:: with SMTP id
 pw4mr697060ejb.499.1609878639621; 
 Tue, 05 Jan 2021 12:30:39 -0800 (PST)
Received: from arch.laptop (84-238-151-182.ip.btc-net.bg. [84.238.151.182])
 by smtp.gmail.com with ESMTPSA id j5sm79858edl.42.2021.01.05.12.30.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jan 2021 12:30:38 -0800 (PST)
From: Filip Kolev <fil.kolev@gmail.com>
To: 
Subject: [PATCH] media: atomisp: ov2722: replace hardcoded function name
Date: Tue,  5 Jan 2021 22:29:18 +0200
Message-Id: <20210105202945.26913-1-fil.kolev@gmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: Filip Kolev <fil.kolev@gmail.com>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There is a debug message using hardcoded function name instead of the
__func__ macro. Replace it.

Report from checkpatch.pl on the file:

WARNING: Prefer using '"%s...", __func__' to using 'ov2722_remove', this function's name, in a string
+	dev_dbg(&client->dev, "ov2722_remove...\n");

Signed-off-by: Filip Kolev <fil.kolev@gmail.com>
---
 drivers/staging/media/atomisp/i2c/atomisp-ov2722.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
index eecefcd734d0e..21d6bc62d452a 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
@@ -1175,7 +1175,7 @@ static int ov2722_remove(struct i2c_client *client)
 	struct v4l2_subdev *sd = i2c_get_clientdata(client);
 	struct ov2722_device *dev = to_ov2722_sensor(sd);
 
-	dev_dbg(&client->dev, "ov2722_remove...\n");
+	dev_dbg(&client->dev, "%s...\n", __func__);
 
 	dev->platform_data->csi_cfg(sd, 0);
 	v4l2_ctrl_handler_free(&dev->ctrl_handler);
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

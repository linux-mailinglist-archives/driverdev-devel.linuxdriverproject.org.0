Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7EF273546
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 23:54:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9307A87218;
	Mon, 21 Sep 2020 21:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qixQhvrAFqhS; Mon, 21 Sep 2020 21:54:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17AF0871D6;
	Mon, 21 Sep 2020 21:54:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FE991BF336
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:54:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3CBD785888
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GJBSZ23_6PkP for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 21:54:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 92BDE85886
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 21:54:54 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id w2so1082429wmi.1
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 14:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=z3OVW099mqaL6VHBm46aQM/bYxWoZUj5xOibh7mUBIs=;
 b=JcBjfG5v++B4xBESN/8LbH5HNalPKqeId89ycgMpRgUPqeGjlMG6Iu2io64EAT6Ktv
 fEvL/NhH7whVyqJWfPv74OGREYFkr+ZggR+Jshmj/rHybWhgm1xI9AS2eI7SY7/wTsKy
 dySKayRDgjyKD2TQ0vfEBlXXRNt4kxjo9xeVWv14bBG3b86mOpc+4i1uDsoLMK3NATXZ
 zzTx2VXmusTKRP00RtFl2Q398z78oQzfVkMHb1GJe8eJJS2y/R/RyPr5eWTngB9sSezE
 eQgl3b9AxnY8nVuMmYz46vFLUSctejk0xWndkaBpOO6lo4QDRYPDiocnv7FJ7zc8Bbv/
 xklg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z3OVW099mqaL6VHBm46aQM/bYxWoZUj5xOibh7mUBIs=;
 b=dax6SlXxjXv2nWViLj8DmYPm+eDYM+OORwVJKxabLVuM30dop/SCE44kckwf9ryQf3
 tEWwp/xWohZnSvZUmwLxwJSBlkC31bdYU/RkWHmXY6hfk/z6hV3EYbwefBYwf7ehWzsN
 rlnB4JfxDXJS1R/bkcNqo9xDjuXdZVPI0mHxhIbhtngckiz/fGU8DfPnvSj+kgljsXvE
 Jw/ou5aglEIV1tVm/3RLg1kTTs/OZ4O2Y7pO1KegupVd9oLpGS7Q6FWmZzEdqJTc3tVL
 P3CBgwXKhqZmZ2HlKYW/Z3zR6L2ndDP0ozcd1ZX3ao8Qj18z1Y0cmAfGOvgT+L1NMvSp
 Brhg==
X-Gm-Message-State: AOAM530kkjsSa/tsFRGV16X+0qQvaNzS7QYC/aAOY+zZG2NKnjbFjldD
 2pRjiAL0/Bt5s1BNFSDtqyQ=
X-Google-Smtp-Source: ABdhPJxOnLPCBexCpj4xZ+md7j1W5MQ97wYWxB815btr+cdwiXrp8zS2kb+5jYiiPRgBxaWVjEL1uQ==
X-Received: by 2002:a1c:dd45:: with SMTP id u66mr1276800wmg.117.1600725292950; 
 Mon, 21 Sep 2020 14:54:52 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id t124sm1282200wmg.31.2020.09.21.14.54.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 14:54:52 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Walleij <linus.walleij@linaro.org>, Alan Cox <alan@linux.intel.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH RESEND 2/5] staging: media: atomisp: Remove unhelpful info
 message
Date: Mon, 21 Sep 2020 22:53:53 +0100
Message-Id: <20200921215359.45003-3-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200921215359.45003-1-alex.dewar90@gmail.com>
References: <20200921215359.45003-1-alex.dewar90@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We don't really need to know that the LED pin reset successfully.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 drivers/staging/media/atomisp/i2c/atomisp-lm3554.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
index cca10a4c2db0..d78014847e67 100644
--- a/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
+++ b/drivers/staging/media/atomisp/i2c/atomisp-lm3554.c
@@ -771,7 +771,6 @@ static int lm3554_gpio_init(struct i2c_client *client)
 	ret = gpiod_direction_output(pdata->gpio_reset, 0);
 	if (ret < 0)
 		return ret;
-	dev_info(&client->dev, "flash led reset successfully\n");
 
 	if (!pdata->gpio_strobe)
 		return -EINVAL;
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

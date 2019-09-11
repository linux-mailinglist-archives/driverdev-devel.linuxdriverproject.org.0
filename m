Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 327FCB023C
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 18:57:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0622987E17;
	Wed, 11 Sep 2019 16:57:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Lw4GK9-mOaj; Wed, 11 Sep 2019 16:57:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E58287DB1;
	Wed, 11 Sep 2019 16:57:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A39D91BF379
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 16:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9C8DE87D9F
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 16:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XLSaTwqs1fCh for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 16:56:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A42387D9D
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 16:56:58 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id g4so26129478qtq.7
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 09:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=XDbZC3bZF8XpaYb842hmO7yVtcVxNizf0TkhRdb4yTk=;
 b=rVV9XS/4n7H2anFF9L1lNCNAafr+hk0uEihHOz+hRzTLef7wnIA9vnzKj2/KkNQbqa
 9HnYOl9stj2kk070wkUJLbJq2j9PhpzQJ9fo04rtXMNi6F7IHTUFuoo/djNcyIR7CIBJ
 UVQbzGyVqks8MdZ/OH58a7xftUdt8/47KRCKyT44eTG6oUjys2NRz/wcOED0qmrn0S4H
 jmvt5HjzxuXiabL2lU4jXXlXcfwACrdgmTrjcklvnR/7N4kDuH+kdv2lS0z5YSAAK4nD
 GFtF6NyogU6UwBJRyeYGL80O5qmzLdHwXoydkd+3hukR1HKDdqVJStbvaaeKFjZOf0Qu
 ixUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=XDbZC3bZF8XpaYb842hmO7yVtcVxNizf0TkhRdb4yTk=;
 b=gqrVBkAx5zE/aEiGpb+if58DZCY1MyZQ5LMUvOGvbhtos35DRbP3CeCDhIki5OS/Tx
 ysXbO7m6LWNESMrrr9YpMi7TStOrx9B6CGtk0OzLwyaScq8Tbgrs9l9piHmZjYYyq4va
 VktWUBkyDG9RpieZ+rKiirXqkdS0kP+6kD/Dx1DxeiuuQB59U4zKI5Q3pb+9fv63oHIq
 ernr59j3I2qwQwHymMjRmzBrLX5qAVtLlXeuSpmwHOUOGkVyMpg5RZjoLjtrsmBMxMcm
 PbcE5i4eVNbj/1yyJ8vRfha8qH37HmFDQGVwyo2Doj7E4dgtL/gvBanty5CU++JSXYwI
 HDSw==
X-Gm-Message-State: APjAAAXCl45X+x+USbRx7txjc+FQ84hvoeXUQLj7/0AYoDy0k+yGxabp
 I1OR+TBWyBX1jpNs44zxUKY=
X-Google-Smtp-Source: APXvYqxAf+YKCqdV0BFUy0qCOEjs4Yx9hU9Tt9M9uTLF5LH5uEZ3a8uBzOA/oLI8SwPl5DaRqi4aTg==
X-Received: by 2002:ac8:5353:: with SMTP id d19mr36361769qto.231.1568221017076; 
 Wed, 11 Sep 2019 09:56:57 -0700 (PDT)
Received: from Debian.gxnx00eri1wudnlrc5f3ppaydc.bx.internal.cloudapp.net
 ([40.71.170.81])
 by smtp.gmail.com with ESMTPSA id m22sm9665103qkk.28.2019.09.11.09.56.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 09:56:56 -0700 (PDT)
Date: Wed, 11 Sep 2019 16:56:55 +0000
From: Amol Grover <frextrite@gmail.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: [PATCH] staging: media: Fix alignment to match open parenthesis
Message-ID: <20190911165655.GA22041@Debian.gxnx00eri1wudnlrc5f3ppaydc.bx.internal.cloudapp.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CHECK: Alignment should match open parenthesis

Signed-off-by: Amol Grover <frextrite@gmail.com>
---
 drivers/staging/media/imx/imx-media-csi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 367e39f5b382..773b3d6964cf 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -627,8 +627,8 @@ static int csi_idmac_start(struct csi_priv *priv)
 	}
 
 	priv->nfb4eof_irq = ipu_idmac_channel_irq(priv->ipu,
-						 priv->idmac_ch,
-						 IPU_IRQ_NFB4EOF);
+						  priv->idmac_ch,
+						  IPU_IRQ_NFB4EOF);
 	ret = devm_request_irq(priv->dev, priv->nfb4eof_irq,
 			       csi_idmac_nfb4eof_interrupt, 0,
 			       "imx-smfc-nfb4eof", priv);
@@ -1472,7 +1472,7 @@ static void csi_try_fmt(struct csi_priv *priv,
 			imx_media_enum_mbus_format(&code, 0,
 						   CS_SEL_ANY, false);
 			*cc = imx_media_find_mbus_format(code,
-							CS_SEL_ANY, false);
+							 CS_SEL_ANY, false);
 			sdformat->format.code = (*cc)->codes[0];
 		}
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

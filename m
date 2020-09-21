Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7843F27354C
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 23:55:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E766871ED;
	Mon, 21 Sep 2020 21:55:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UlLxlMzyz5o2; Mon, 21 Sep 2020 21:55:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D168871D6;
	Mon, 21 Sep 2020 21:55:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 07A9E1BF336
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:55:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0492E8650E
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uMTss6OEfpkN for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 21:55:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 39C1886508
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 21:55:18 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id x14so14534447wrl.12
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 14:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=msyTyBuqg+S9lSfyJBnZ2ellRZt6dmdc0yChx+UPxKo=;
 b=HFH4glgr8zU1oXfraHmc2FYWvCMnmC+sxpTG200tp8l4hHLtC2gqfDvnKD0jX5zr2A
 U5PhRmCeevGoZN4iO/TYhjFAeVRVZuRkZV1ZzuWxTULU9tmZiWKYwonAESXP4h8Q2Qnl
 zSv+jP4GyUUOh5sVzYtwl310G0yLz95w1/stZ0caQqlsdpwhdOrFYK2FnIyKgjsozSg9
 ydKfCEzapSddN3N1jjAv3t+5HuJww9ZdL6qHb7NwUSc2y7jGzORTBRWQZMxPnt+Gk7WK
 L3ToJvGi3Jf2Bt0UrBVMuEcv+M0SlE85eYBk0AcyppjmfhH31CfTvNiLCvi77k8ClwCT
 F6uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=msyTyBuqg+S9lSfyJBnZ2ellRZt6dmdc0yChx+UPxKo=;
 b=La1eCe3VwjcF98ty/1OOzANzp6zSHrVZX0jluJISSe5w3fODwoLSEtEmRpH7uboCeE
 9vZVlYCZtndf0VOooYOtenWyhxki4gAK5IK4VcNDt6S4oOD7XcOx7wI8nSmZzKhoOXUX
 fVTDQjgARlCJRfA28Y2l7/FzueZrpqDosxnCHAFTQ28uuZGchFdKJq7ZXbA78wokksf5
 pInjKuN4WfKYsVAAHO6+TfDxHXl+7vgdOxylbwqBWFcDMm5cHV3xn3vSpSwPUCymelDG
 G6/UABzUzFBuqUG9jaWUh9+v3lpu8eaSW1UBXmT+rvRo9LKJmLDh1m7ksr17gaeIZ4bM
 sIvg==
X-Gm-Message-State: AOAM532J6sEEuC7gAb4jlB+UMVtwc+/KWNxJOmTInMgITH5rC7cCsG9W
 pwgvFZGOPGkQjKE5yFbUAqE=
X-Google-Smtp-Source: ABdhPJzEYvjLv/YYaExP7WY18BaVye8dfGy+D2i4BAk8NEq+a3xw5G6BgT2nLo5IEKUwO4Sea96uEw==
X-Received: by 2002:adf:e7c4:: with SMTP id e4mr1786175wrn.113.1600725316622; 
 Mon, 21 Sep 2020 14:55:16 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id t124sm1282200wmg.31.2020.09.21.14.55.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 14:55:16 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Walleij <linus.walleij@linaro.org>, Alan Cox <alan@linux.intel.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH RESEND 3/5] staging: media: atomisp: Don't do unnecessary
 zeroing of memory
Date: Mon, 21 Sep 2020 22:53:55 +0100
Message-Id: <20200921215359.45003-4-alex.dewar90@gmail.com>
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

In a few places in pci/sh_css_params.c, memset is used to zero memory
immediately before it is freed. As none of these structs appear to
contain sensitive information, just remove the calls to memset.

Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 drivers/staging/media/atomisp/pci/sh_css_params.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
index 2c67c23b3700..24fc497bd491 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
@@ -4378,7 +4378,6 @@ ia_css_3a_statistics_free(struct ia_css_3a_statistics *me)
 	if (me) {
 		kvfree(me->rgby_data);
 		kvfree(me->data);
-		memset(me, 0, sizeof(struct ia_css_3a_statistics));
 		kvfree(me);
 	}
 }
@@ -4417,7 +4416,6 @@ ia_css_dvs_statistics_free(struct ia_css_dvs_statistics *me)
 	if (me) {
 		kvfree(me->hor_proj);
 		kvfree(me->ver_proj);
-		memset(me, 0, sizeof(struct ia_css_dvs_statistics));
 		kvfree(me);
 	}
 }
@@ -4459,7 +4457,6 @@ ia_css_dvs_coefficients_free(struct ia_css_dvs_coefficients *me)
 	if (me) {
 		kvfree(me->hor_coefs);
 		kvfree(me->ver_coefs);
-		memset(me, 0, sizeof(struct ia_css_dvs_coefficients));
 		kvfree(me);
 	}
 }
@@ -4551,7 +4548,6 @@ ia_css_dvs2_statistics_free(struct ia_css_dvs2_statistics *me)
 		kvfree(me->ver_prod.odd_imag);
 		kvfree(me->ver_prod.even_real);
 		kvfree(me->ver_prod.even_imag);
-		memset(me, 0, sizeof(struct ia_css_dvs2_statistics));
 		kvfree(me);
 	}
 }
@@ -4635,7 +4631,6 @@ ia_css_dvs2_coefficients_free(struct ia_css_dvs2_coefficients *me)
 		kvfree(me->ver_coefs.odd_imag);
 		kvfree(me->ver_coefs.even_real);
 		kvfree(me->ver_coefs.even_imag);
-		memset(me, 0, sizeof(struct ia_css_dvs2_coefficients));
 		kvfree(me);
 	}
 }
@@ -4710,7 +4705,6 @@ ia_css_dvs2_6axis_config_free(struct ia_css_dvs_6axis_config *dvs_6axis_config)
 		kvfree(dvs_6axis_config->ycoords_y);
 		kvfree(dvs_6axis_config->xcoords_uv);
 		kvfree(dvs_6axis_config->ycoords_uv);
-		memset(dvs_6axis_config, 0, sizeof(struct ia_css_dvs_6axis_config));
 		kvfree(dvs_6axis_config);
 	}
 }
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2113E2636E5
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Sep 2020 21:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4F1A622E94;
	Wed,  9 Sep 2020 19:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0P2iFCuF3QUT; Wed,  9 Sep 2020 19:54:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CF32722011;
	Wed,  9 Sep 2020 19:54:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22D161BF4DA
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 19:54:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1EA0C86519
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 19:54:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9qzioi1m-7Ha for <devel@linuxdriverproject.org>;
 Wed,  9 Sep 2020 19:54:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F290A864D0
 for <devel@driverdev.osuosl.org>; Wed,  9 Sep 2020 19:54:09 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c18so4226265wrm.9
 for <devel@driverdev.osuosl.org>; Wed, 09 Sep 2020 12:54:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gePgmXiNRPCVJ7mr+8A/94pjRWAsRsYeShr8lQ1UsyY=;
 b=tI0b1b8FnXwzjGlrjKqZgjkGXTrYiNy9g7Nt08zfZAo0Ua3JhotY+JPzQXWqr5/19e
 pr+lNZd6acc1pzfoQi3xMdjy+5HWodUMwuJAa3NtE5pbefCCQsrwVD4Sc6GBXgr/Y9to
 oTuZRdh55ZxIWv6CQfwqUGdZy630v+jNOgd6uA4Dff3eXRTwRS+3WJwT41z1Js92Xn5r
 xW6qh3tJg7qf/u+W+I4YnJQEq7BSJGt12EcAtEM9OhVQbT0q56y7cQaX7GQhkWfo4bON
 x36nLxP6SlSvHR8XoP8OID81QTELHJatCd1zfs2JadPr3uR9UIBGnTsqtACfvXlgrSuX
 A+0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gePgmXiNRPCVJ7mr+8A/94pjRWAsRsYeShr8lQ1UsyY=;
 b=aJJ7cvjqhHI8ImtyrjH+rJ69aL/qizsCkeBBDEHxcyAX5YVisoWiuVANQ8z65A8VIQ
 oZqaXjX0U2wu/nNM2ITMmanxWlFp9mQleXBRRulHfM11e+OBKmednnx8+pcjWQfK5wPZ
 VW1X3xo69k2zrEr203nVx8xDN/ZkMcQvcgDIULE1Nc1zz2CfnGkYyZNE43+9o1M8k3kp
 sfeNEPZsTbvtKgcaQ0OZuY3AvHQm+peyrxKERVkn2dNinnZXKP6vrBzdeT/FT4BWfyMW
 hjE9pw9uu65TPDXf65dFJXMRpZ2XwzQZhd2oCXU9Ot4ptvfrxfSAEqYXLtkJVXEquDGt
 HKtA==
X-Gm-Message-State: AOAM533YvHaXd56jPfYpkKlmd8b8EAjpi2Fb2CkwvPfL6RcGFBROgfv1
 8ynKCs4FqHIOdZVSObKe/+M=
X-Google-Smtp-Source: ABdhPJyDYjFH86wdYbV1UuramIP8zVcuwm3IHRFWB8ood813vDAm/dfqJwqb+LH1zuL1Tf+4WiIVwA==
X-Received: by 2002:adf:f34f:: with SMTP id e15mr5223399wrp.387.1599681248462; 
 Wed, 09 Sep 2020 12:54:08 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id q18sm5715431wre.78.2020.09.09.12.54.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Sep 2020 12:54:07 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: 
Subject: [PATCH] staging: media: atomisp: Use kvfree_sensitive in a few places
Date: Wed,  9 Sep 2020 20:53:50 +0100
Message-Id: <20200909195403.225084-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In the file pci/sh_css_params.c, there are a number of places where
memset+kvfree is used, where kvfree_sensitive could be used instead. Fix
these occurrences.

Issue identified with Coccinelle.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 .../staging/media/atomisp/pci/sh_css_params.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
index 2c67c23b3700..d1b5d6608d52 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
@@ -4378,8 +4378,7 @@ ia_css_3a_statistics_free(struct ia_css_3a_statistics *me)
 	if (me) {
 		kvfree(me->rgby_data);
 		kvfree(me->data);
-		memset(me, 0, sizeof(struct ia_css_3a_statistics));
-		kvfree(me);
+		kvfree_sensitive(me, sizeof(struct ia_css_3a_statistics));
 	}
 }
 
@@ -4417,8 +4416,7 @@ ia_css_dvs_statistics_free(struct ia_css_dvs_statistics *me)
 	if (me) {
 		kvfree(me->hor_proj);
 		kvfree(me->ver_proj);
-		memset(me, 0, sizeof(struct ia_css_dvs_statistics));
-		kvfree(me);
+		kvfree_sensitive(me, sizeof(struct ia_css_dvs_statistics));
 	}
 }
 
@@ -4459,8 +4457,7 @@ ia_css_dvs_coefficients_free(struct ia_css_dvs_coefficients *me)
 	if (me) {
 		kvfree(me->hor_coefs);
 		kvfree(me->ver_coefs);
-		memset(me, 0, sizeof(struct ia_css_dvs_coefficients));
-		kvfree(me);
+		kvfree_sensitive(me, sizeof(struct ia_css_dvs_coefficients));
 	}
 }
 
@@ -4551,8 +4548,7 @@ ia_css_dvs2_statistics_free(struct ia_css_dvs2_statistics *me)
 		kvfree(me->ver_prod.odd_imag);
 		kvfree(me->ver_prod.even_real);
 		kvfree(me->ver_prod.even_imag);
-		memset(me, 0, sizeof(struct ia_css_dvs2_statistics));
-		kvfree(me);
+		kvfree_sensitive(me, sizeof(struct ia_css_dvs2_statistics));
 	}
 }
 
@@ -4635,8 +4631,7 @@ ia_css_dvs2_coefficients_free(struct ia_css_dvs2_coefficients *me)
 		kvfree(me->ver_coefs.odd_imag);
 		kvfree(me->ver_coefs.even_real);
 		kvfree(me->ver_coefs.even_imag);
-		memset(me, 0, sizeof(struct ia_css_dvs2_coefficients));
-		kvfree(me);
+		kvfree_sensitive(me, sizeof(struct ia_css_dvs2_coefficients));
 	}
 }
 
@@ -4710,8 +4705,8 @@ ia_css_dvs2_6axis_config_free(struct ia_css_dvs_6axis_config *dvs_6axis_config)
 		kvfree(dvs_6axis_config->ycoords_y);
 		kvfree(dvs_6axis_config->xcoords_uv);
 		kvfree(dvs_6axis_config->ycoords_uv);
-		memset(dvs_6axis_config, 0, sizeof(struct ia_css_dvs_6axis_config));
-		kvfree(dvs_6axis_config);
+		kvfree_sensitive(dvs_6axis_config,
+				 sizeof(struct ia_css_dvs_6axis_config));
 	}
 }
 
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

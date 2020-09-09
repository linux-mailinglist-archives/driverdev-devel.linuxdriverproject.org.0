Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B4D2637CA
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Sep 2020 22:48:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 23F3686C59;
	Wed,  9 Sep 2020 20:48:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n4SwDsWoJXI6; Wed,  9 Sep 2020 20:48:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 718A986C35;
	Wed,  9 Sep 2020 20:48:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1AE131BF285
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 20:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0A0CF2035D
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 20:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2g51wC9a-6HF for <devel@linuxdriverproject.org>;
 Wed,  9 Sep 2020 20:48:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id E01BA20117
 for <devel@driverdev.osuosl.org>; Wed,  9 Sep 2020 20:48:41 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id a17so4382912wrn.6
 for <devel@driverdev.osuosl.org>; Wed, 09 Sep 2020 13:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=msyTyBuqg+S9lSfyJBnZ2ellRZt6dmdc0yChx+UPxKo=;
 b=koV/+i57bGxaeWzcaR3ot72iqyXmIiat5L82lel4bkbFuylPHtkYD/RyZwOy8nHAfn
 E/ess/ZvcMgSwczW+yo3TBTUZNicVuzKtLp05CBwoHOo26gi1+SIW96AklvRX+0TeaVT
 slR0PB8woP9gDL4LqFubK5Hl+RNqE0CWnky1JJMilUg8hkh4w6pBh2xBUycFJ0uE2cr+
 i3W3j/fywmoareT5PKXr1dycWj7fFWqh88hXhygfiBLAhDkVxKEXSEn20+Hq+tjlM3PI
 vH1sasf1KXgZuKIX1Vl1Cqno6BYsaEDMEwfdA2/NhswquDG0MPGmS4Jpc8y6s8JXyepn
 6JuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=msyTyBuqg+S9lSfyJBnZ2ellRZt6dmdc0yChx+UPxKo=;
 b=iXCbr5g902Q9h0bMll3UjDwXv7aQEReql2KBUGUFh8xytvshyV15etIVMMeN4KcnRY
 7QZ5Ap195b4IMgf+ceV1Db6LJ8rLcjqQg+HfKCZ7kdxPf2D2GTpZmelNctU4e02tDwcM
 +g+0mjOb4X9AeHjrYSJcK/Hnv4V6HjLgbdiRnoAoZ8+67XwYUeYmDfbX1ftECSDNM33E
 Ov86KSA3fSBXi6+TLz4Yt3C1UxsJgFRhrlbx+MOyvdKGMpQvLI01qZZMJOCJtgSlT3AG
 qaxrLyhlWx4Qx+Rgqqdrt0UfjaxzjnyxZLUs0+3ZAvy0qIhzGd7nHztDUWav9YOIElcO
 AxwA==
X-Gm-Message-State: AOAM531tnaqbedw4SsBtov1J0nRrPwvxOysTwPmyIemwjFLUVvwY0ZEk
 SSAFVryy8AWoTdy+lpG7cbg=
X-Google-Smtp-Source: ABdhPJzqMJb3CpQd6FD2aRtPqLCg50OLeNOC9diM0ZequY6MDGcUMHsvN30FytEWsWjy1JFN7Lyvvg==
X-Received: by 2002:a5d:4152:: with SMTP id c18mr5963823wrq.277.1599684520297; 
 Wed, 09 Sep 2020 13:48:40 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id 189sm427103wmb.3.2020.09.09.13.48.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Sep 2020 13:48:39 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: 
Subject: [PATCH] staging: media: atomisp: Don't do unnecessary zeroing of
 memory
Date: Wed,  9 Sep 2020 21:48:00 +0100
Message-Id: <20200909204807.36501-1-alex.dewar90@gmail.com>
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
 Alex Dewar <alex.dewar90@gmail.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-media@vger.kernel.org
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

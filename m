Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F74366E5
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 23:37:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE9FD875C0;
	Wed,  5 Jun 2019 21:37:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CHUcAR2mPSSc; Wed,  5 Jun 2019 21:37:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F41B81AE0;
	Wed,  5 Jun 2019 21:37:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E436C1BF422
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E1A2A86F9E
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8oL+iWwuj5EL for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 21:37:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CF5FC81AE0
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 21:37:03 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id d15so207611qkl.4
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 14:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jPEgHNfYY83ONQ/IBpTPmynqz8uimcwTG8iUDcqmGKo=;
 b=hM0at330zhDVuF60svm20F79iGzLD8tUmawClQrOQ3YmRvQlFotp95na92Lf2NtBSq
 BQlZ9q829ige6oUNrMlrY9sFwp8DgLRdAc23wK0aBwoEldMnus94WhlrBwVLz9QeEKyn
 2YyXe7cYvXkyw25ujQdMQPPLDGomNeq2NjzKoO7Da7u8LPno3X/GeG7f8yJSIAxmhHiW
 cT4RM4jQSqBVkgPtt3PSBTwmvideCxmCT8aOkey2HjPn/qsOo/u/byGSmj6vNAt9/628
 LrpARd2D+ib9XFUfjwgbsP0BnPB9rol5KmFoTYZLuPeYx/3P8/vM7ckq66cAduqpzltq
 hEeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jPEgHNfYY83ONQ/IBpTPmynqz8uimcwTG8iUDcqmGKo=;
 b=RwTMsehTmXSqhedNiVmRbBC/PifmLj75BcirnwPqVF5egjSHD2wRHl/muti8pUgUvv
 nAtL1o7X1itCaf8pxfm2gvt7GiTlZG0aLgPruf62ZScd9Z5Kvvyun/OXZPOex/VjfJoT
 tgOhJP21DtXeCR0Ocu2EVUIfKbxldGJcX7OCWslA7axKK8Oc1IwxuxBzeKiAQZsysgdv
 q6XXurvUbSIhtMHSRYCxneg4/AW3DHj/TbKYTyYqeosUFTveK9ylSDjYHJ8l6ZBlAgaA
 nPsx2P8suIrksDJPQL4XnS8HGvs+ejtw9Aq9HUH7vCOvkJ9cETX+QeU7G1po4WMfhqbm
 O5Cw==
X-Gm-Message-State: APjAAAVWMD/HwNqTnuwdJUb5f9gEvRGt73PiKBIIxAJHmurpMbGnw8M0
 1e2PJScmN3ps9LwPtTlSPl0=
X-Google-Smtp-Source: APXvYqyjAQGGMeW3gT/GUmg+BDEu9jJSxSiQOgjEl+QeJYpc96A8JCPSW9eAVKHgpGQLHjh9Q/ZkSw==
X-Received: by 2002:a37:8dc1:: with SMTP id
 p184mr35236519qkd.226.1559770622750; 
 Wed, 05 Jun 2019 14:37:02 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id d23sm20151qtq.6.2019.06.05.14.37.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 14:37:01 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: kpc2000: Use '%llx' for printing 'long long int'
 type
Date: Wed,  5 Jun 2019 18:36:47 -0300
Message-Id: <20190605213648.6887-1-festevam@gmail.com>
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In order to print a 'long long int' type the 'llx' specifier needs to be
used.

Change it accordingly in order to fix the following build warning:

drivers/staging/kpc2000/kpc2000/core.c:245:4: warning: format '%lx' expects argument of type 'long unsigned int', but argument 4 has type 'long long int' [-Wformat=]

Reported-by: Build bot for Mark Brown <broonie@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 drivers/staging/kpc2000/kpc2000/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 7f257c21e0cc..65eaa8451928 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -242,7 +242,7 @@ static int  read_system_regs(struct kp2000_device *pcard)
 	read_val = readq(pcard->sysinfo_regs_base + REG_MAGIC_NUMBER);
 	if (read_val != KP2000_MAGIC_VALUE) {
 		dev_err(&pcard->pdev->dev,
-			"Invalid magic!  Got: 0x%016llx  Want: 0x%016lx\n",
+			"Invalid magic!  Got: 0x%016llx  Want: 0x%016llx\n",
 			read_val, KP2000_MAGIC_VALUE);
 		return -EILSEQ;
 	}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

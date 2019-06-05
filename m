Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB5636717
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 23:54:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A6E0F8807C;
	Wed,  5 Jun 2019 21:54:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EnGjXQUx8Kxx; Wed,  5 Jun 2019 21:54:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39BDF8800F;
	Wed,  5 Jun 2019 21:54:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1088C1BF422
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:54:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0AE3284F8B
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:54:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YMrwbPYI4IA3 for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 21:54:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5F04284E9A
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 21:54:31 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id s15so338778qtk.9
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 14:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IpRh0ihy7CD44IQ1OrxLsNyUW41LCpwTVX2rBo0PwOs=;
 b=RlstKcVSromivBcfHbKYeOiZWpPwQbUXq3sHtbBBrfHmp7wZExLBnfY5pMYN9euT/+
 dhKDtJDC3uKBs31eMvkBoSLj9b8cglIScp4wqiP8wuxLEnolrO8RsU5MlYuWXi+T8K3E
 7cxMUZVtmmagCnBY1C2ONn+E+DWKbR2oNk36BOQiQ/d9lFAbYmvHE31LE3DozKseyNkI
 PX7WRoYlBAVg2yF7E2YT7DhyDEOHTPxcqsmCheZTNB4GJDjhFv+mhpfeG5+IHeoDSM1Z
 qtZcG+rRkianXYk3y1NsVB+m0zgLw/X4Os1bteex2drT0TkYkeVsFKMPCcnn6O6NhwHd
 YyYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IpRh0ihy7CD44IQ1OrxLsNyUW41LCpwTVX2rBo0PwOs=;
 b=RjN1qo2p3x6uqObHbQWc5wXalI18TRJF0Ewul+FNBptwIv+z7pTqRjLujuOhy7z1Bv
 Fwr4Uz/PyIqtLw71tt3uU3aCNq1Ns2CW4YtKyFBF965zOanBkPgnmToePn+u9igQPqiM
 eDKMI0TIm4vN4zDpKh6qwNPA3XmDLU9ANjs8n2JKyL1T4SwuFnWbbWFik16/sg0tvuCR
 7kRVv2oC/ASwItq+vPcryoq8mmfHSoydYJgWR9gW8zAIYUv9WdM2Zti34VltIu0xuPEE
 0bJEqS+y0faGYjQVIseYUNxZKMK3yw42i3x745H2SNfXT9NIOemTVx0zoH8YBBs2CJka
 PFTA==
X-Gm-Message-State: APjAAAW6eC2f/7k3YTmf2H4PNgMRMesIYyCupp5DE2yxnD2UFfHjB42E
 mGEBI9xIKTfO/gCb5kp1jpo=
X-Google-Smtp-Source: APXvYqxXlqyfkDgBLc3mZyyahraczjFM06qaYqU9zswazEm+w/vHzWupzPL9MRiZe1K3OVCSmVDCsw==
X-Received: by 2002:aed:3bcf:: with SMTP id s15mr36028363qte.105.1559771670400; 
 Wed, 05 Jun 2019 14:54:30 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 u7sm10656888qkm.62.2019.06.05.14.54.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 14:54:29 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/2] staging: kpc2000: Use '%llx' for printing 'long long
 int' type
Date: Wed,  5 Jun 2019 18:54:21 -0300
Message-Id: <20190605215422.14992-1-festevam@gmail.com>
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
Changes since v1:
- Mark KP2000_MAGIC_VALUE to avoid build warnings in ARM32

 drivers/staging/kpc2000/kpc2000/core.c | 2 +-
 drivers/staging/kpc2000/kpc2000/pcie.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

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
diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index d3cdb515a75c..cb815c30faa4 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -39,7 +39,7 @@
 #define REG_INTERRUPT_ACTIVE		(9 * REG_WIDTH)
 #define REG_PCIE_ERROR_COUNT		(10 * REG_WIDTH)
 
-#define KP2000_MAGIC_VALUE		0x196C61482231894D
+#define KP2000_MAGIC_VALUE		0x196C61482231894DULL
 
 #define PCI_VENDOR_ID_DAKTRONICS	0x1c33
 #define PCI_DEVICE_ID_DAKTRONICS	0x6021
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

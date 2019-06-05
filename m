Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9493361D8
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 18:55:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 004E787F92;
	Wed,  5 Jun 2019 16:55:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ON6vrcFcEZON; Wed,  5 Jun 2019 16:55:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 081C087E93;
	Wed,  5 Jun 2019 16:55:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B93501BF576
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 16:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B340886BC9
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 16:55:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BNm+YGtzEiNS for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 16:55:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EAC1982EE5
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 16:55:26 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id 22so3037809wmg.2
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 09:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IK0GyUMMzaY1SH7H2AwbEA3bGJpZXL0LLtPICxDDdqk=;
 b=L6iZibdO2eyrgAPTmVEL2E1FnUtXzVrlVNqsTgxxovGuPlEImBtwC1AXfW7dbeZTJx
 G0Ml8LJCH1/zTCm8bYPTgyCfG480y8smdEhxRNV4hJY/CRDa3HcLvhMtfnOz2Lt28sMu
 jHY3vMNFSSldjAPgLpEQCnLvCJ7QlLJkqlXjbP9kFvVrODYcLZ4keMnin8Iwl40leUWk
 wIPk2BeSl5GeqceyQ94LsV6reLSF9VjM89jEPWSX17+2ktnIfTWHtlvnogOtLbbTwU+8
 fyP7SVC0RdhaqfGR3E5svoN052lGayDWhPAG+ppBqLLrfDPKymCBRDKeaU/CzPEbhSb3
 crfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IK0GyUMMzaY1SH7H2AwbEA3bGJpZXL0LLtPICxDDdqk=;
 b=XBv3Teg66cwH8WFpPFh3za+phoCUTAzSOUpuKTSJTRZ/RaPM/bBRA19TLM2kZ/Zs6D
 r+XIvHdfpHJh9TRCCPU0aiYRgTk4CnIY2HW8PeTA4SZByBJnAU/SeOR8iwCHe/fUjWTW
 I16kIXRrmQIW9cQQhyGbGSgSHPGyEm/8Tsx3vT/yhPWzTLPW7VVS5yib2BSW93k5kD8C
 8fT/VPKveHl2cxRo+GvKMwAR1Ra85HJVJYqnuz1KD14Vq93aE1OZmOSPkGKE94Feno7p
 f+s9spsaAHyQ2nGtdSI6ck7GUatGvADH9ydmPhxVH6zoJw4xwa0P7jrTu3FDszNf6gMW
 1ZnA==
X-Gm-Message-State: APjAAAV3C6LPRIiEA1yP2zUT59taPIBmXlrPfuVyX1Af4MXCLMwJC2vz
 0QqMybVATWGYGFCGklPDoqk=
X-Google-Smtp-Source: APXvYqw8KASEExDoI4ZSJf9u0NtHcudJahZlzODCmfoghfC4hvcT/v7HxRytPDYiOBPIYAnOAqko5Q==
X-Received: by 2002:a1c:9c4d:: with SMTP id f74mr11057587wme.156.1559753725305; 
 Wed, 05 Jun 2019 09:55:25 -0700 (PDT)
Received: from localhost.localdomain
 (host228-128-static.243-194-b.business.telecomitalia.it. [194.243.128.228])
 by smtp.googlemail.com with ESMTPSA id b69sm17060610wme.44.2019.06.05.09.55.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 09:55:24 -0700 (PDT)
From: Valerio Genovese <valerio.click@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: staging: kpc2000: kpc_dma: fix symbol
 'kpc_dma_add_device' was not declared.
Date: Wed,  5 Jun 2019 18:55:16 +0200
Message-Id: <20190605165516.22183-1-valerio.click@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This was reported by sparse:
drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c:39:7: warning: symbol 'kpc_dma_add_device
' was not declared. Should it be static?

Signed-off-by: Valerio Genovese <valerio.click@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index cda057569163..bc208bb6777f 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -36,7 +36,7 @@ struct kpc_dma_device *kpc_dma_lookup_device(int minor)
 	return c;
 }
 
-void  kpc_dma_add_device(struct kpc_dma_device *ldev)
+static void  kpc_dma_add_device(struct kpc_dma_device *ldev)
 {
 	mutex_lock(&kpc_dma_mtx);
 	list_add(&ldev->list, &kpc_dma_list);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC251B3FB
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 12:27:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 13D5D85507;
	Mon, 13 May 2019 10:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b76gWBgwLvwn; Mon, 13 May 2019 10:27:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4CF984AE1;
	Mon, 13 May 2019 10:27:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CBD11BF842
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 49CA18547D
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HsxxIN05DwmR for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 10:27:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8A1784AE1
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 10:27:11 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id f12so4238464plt.8
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 03:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ARQrJZnpLUZOwS0c7g3B+LWtnsG1cuhJUzNdiZrrFyw=;
 b=MA6FmjkS5gCuz+B2eZ3FX6z9bHPZYnMcXmMNq84bxfv6udH7+VR+VX4WY22R8BLUO/
 Jjaj2A2LwxmEaGJUov4L6LTPORfd2Y6kZ/iZrrGEvem0lISOHF/RRHhYC86Z9uQFjTQi
 3Fx7GrM6HDkwTX0+7HD80kkSvCbd6685x8sCliLmRqqOpqE19zBNku5Ce9exm9pkA7IN
 pbssxTOVJR3CTemI3/7aSpGZ3/kXCdUBXls5sO7OoSRJOdB37OZR/kPv5COk+xFg4ZR7
 i2WK9Hj/2509dsNoPiLclOBEqhiczI35OnCB9DKS3BS9fdZSoMK5pxWEmGv94yOR58/6
 Gl0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ARQrJZnpLUZOwS0c7g3B+LWtnsG1cuhJUzNdiZrrFyw=;
 b=PtzHoaL951XylF/LPqZtk/zVBg8TeexLNlZKrrxTzHqMzuO2aCSvVH3Nsa35NqwpJh
 VuLsOjRwJG2pKswFPuerikNvs6wzU1roRo1OuabzDBOyoO1Fp7YMNHibAapiWetgy7g8
 z3RNspuCRLk/3nZFtZfKxXWfEem1B+yjKda62MI/WPZngUBv2xDJNzu06fLLrPzGPEXi
 ZzLTxocAA5WEVLHwzlTAhoeI7nKyeTRP/+bdo6LRNPptP9hCS6Dm97Obl2MMSTeNmdct
 vtbjNMPhBrprJFvcaBi2oM5F8hHpylFrIihC+7kF7lTenF61yQEL4YRloCw6eguVDzMv
 2XQg==
X-Gm-Message-State: APjAAAVgkHQd9Zc0WHnlLuunPAw0fpXrIX15Dx9F0fsQrBAYULm1+D2e
 SQNYLsgiJfL/t/fwnWgkYBY=
X-Google-Smtp-Source: APXvYqxCaVvAAx0jpATH7EPHP/u699rPxGRlb6MuYXihZaDfJkRVf8pXW5pLR9Gjx+tvDE/MVJDxdA==
X-Received: by 2002:a17:902:5ac9:: with SMTP id
 g9mr29464138plm.134.1557743231437; 
 Mon, 13 May 2019 03:27:11 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.248.72.152])
 by smtp.gmail.com with ESMTPSA id
 r124sm11773487pgr.91.2019.05.13.03.27.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 03:27:10 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lukas.bulwahn@gmail.com
Subject: [PATCH v3 4/8] Staging: kpc2000: kpc_dma: Resolve code indent and
 trailing statements on next line errors reported by checkpatch.
Date: Mon, 13 May 2019 15:56:18 +0530
Message-Id: <20190513102622.22398-4-bnvandana@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513102622.22398-1-bnvandana@gmail.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <20190513102622.22398-1-bnvandana@gmail.com>
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
Cc: Vandana BN <bnvandana@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, skhan@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes code indentaion error reported by checkpath
ERROR: switch and case should be at the same indent
ERROR: trailing statements should be on next line
---
v2 - split changes to multiple patches
v3 - edit commit message
---

Signed-off-by: Vandana BN <bnvandana@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 8dd948ef455f..c09147aaa4ef 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -395,10 +395,14 @@ long  kpc_dma_ioctl(struct file *filp, unsigned int ioctl_num, unsigned long ioc
 	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_ioctl(filp = [%p], ioctl_num = 0x%x, ioctl_param = 0x%lx) priv = [%p], ldev = [%p]\n", filp, ioctl_num, ioctl_param, priv, priv->ldev);
 
 	switch (ioctl_num) {
-		case KND_IOCTL_SET_CARD_ADDR:           priv->card_addr  = ioctl_param; return priv->card_addr;
-		case KND_IOCTL_SET_USER_CTL:            priv->user_ctl   = ioctl_param; return priv->user_ctl;
-		case KND_IOCTL_SET_USER_CTL_LAST:       priv->user_ctl_last = ioctl_param; return priv->user_ctl_last;
-		case KND_IOCTL_GET_USER_STS:            return priv->user_sts;
+	case KND_IOCTL_SET_CARD_ADDR:
+		priv->card_addr  = ioctl_param; return priv->card_addr;
+	case KND_IOCTL_SET_USER_CTL:
+		priv->user_ctl   = ioctl_param; return priv->user_ctl;
+	case KND_IOCTL_SET_USER_CTL_LAST:
+		priv->user_ctl_last = ioctl_param; return priv->user_ctl_last;
+	case KND_IOCTL_GET_USER_STS:
+		return priv->user_sts;
 	}
 
 	return -ENOTTY;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

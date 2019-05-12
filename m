Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC321AE6D
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 01:40:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6754D860BF;
	Sun, 12 May 2019 23:40:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qox3UTnq13xK; Sun, 12 May 2019 23:40:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7811785CBB;
	Sun, 12 May 2019 23:40:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4414D1BF44A
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 23:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3EC3E228BA
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 23:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TSLP1BzJQ13b for <devel@linuxdriverproject.org>;
 Sun, 12 May 2019 23:40:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 178BC22829
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 23:40:34 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id d3so5484482plj.11
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 16:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1XuFHs5BD3zek30ZsKmB3kY9fOaFYfw0ATiW+8PMgh4=;
 b=BxtC1VIXurHSmDD9u6qpDK2wu/dki2mpVkrLIcXAub3mJgfQ22Hxh+v0znk8eaE+4K
 ffVxKCO+yDVCPU0BRTkWi1M37XxATMix97+6AaUJ/+CGCDNWqQ4G8znaAaMGbWTJKH7k
 /oUpIq/frMeBpBB5qE0p4o5O0xozCUBjHjC/bCjAyaxWQzeniTpVPgCcc4J8dStJPQIi
 KGTbh/rYIcuJ3HvRUQpMTrQ3dj9O8qMurflPf9nyvO+/ZJWMggwpuD0NWOO6sqNQ6mOI
 aLX/jqaI2sFIlScrMTz8bRmHEM94LF1g+sEZNywbz5ojTScQ8eEQ3fEXNDjjkcEyjCND
 vC6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1XuFHs5BD3zek30ZsKmB3kY9fOaFYfw0ATiW+8PMgh4=;
 b=G8FcpjAgdiqW/ygvQ+FtZz5MLbwsmcVksx6ZhYvyrtDX3iJE2HEiQCPu33dQEqkGli
 +/nHINnrv8R+ANT9VTECfcHFrXpvf263SJd/sIeO4rbK9J6KGJFIGBhx88U99RksKKfQ
 VYi/uLNZf2PsifpiKmRZ2tVFWwfuIMftrIyezvJH/jwHQwhGqA+dHs3wJTojizdqM6gB
 Hp5eFPAoFEAMMDwUbMErUwxQOvAuZG1vfmYS5I35sWmJlNTBplbn+3PYY1CkvOPzPVoF
 aHto4QSk8Xgo27dmNMegjgmzJPyLEuuEszoohYAjYpcuTQ48gAY9NaSA6JQBq/uG7BfK
 W9oA==
X-Gm-Message-State: APjAAAX0Z9cB7yQIo8PKHC/dxN/QCzwgTW4pjplNyFqkZvhMF5DplMoE
 rzB52tdji2rTrvS4hU8cOHY=
X-Google-Smtp-Source: APXvYqwPhUQc9xhOVh8BRtwgI8hWIRTecRLzVAao9f/VMrSsfLgjjTeqdedAzbLOCJ6fglOoGywS7g==
X-Received: by 2002:a17:902:9343:: with SMTP id
 g3mr27061916plp.260.1557704433661; 
 Sun, 12 May 2019 16:40:33 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.241.202.125])
 by smtp.gmail.com with ESMTPSA id
 e29sm13528376pgb.37.2019.05.12.16.40.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 16:40:33 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lukas.bulwahn@gmail.com
Subject: [PATCH v2 4/8] Staging: kpc2000: kpc_dma: Resolve code indent error
 reported by checkpatch
Date: Mon, 13 May 2019 05:09:56 +0530
Message-Id: <20190512234000.16555-4-bnvandana@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512234000.16555-1-bnvandana@gmail.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <20190512234000.16555-1-bnvandana@gmail.com>
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

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E26036718
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 23:54:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6DAA884FA5;
	Wed,  5 Jun 2019 21:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gq5U1nRvmuQu; Wed,  5 Jun 2019 21:54:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1733884F8B;
	Wed,  5 Jun 2019 21:54:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B61F1BF422
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 964EE88012
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 21:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rxAEO85gzYzU for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 21:54:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0D0738800F
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 21:54:34 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id s22so203585qkj.12
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 14:54:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=F5mm9Fke8JHxfVARnWalVMcJS0UHtKXZXtlftloGygw=;
 b=D+MX7TLJe6q49d+cQpDE3Im9emPZeUAm/56gZwiKoYoqz5aubHErQMADQo0ULv/I3i
 EUD6sX5bghZVRUrYgWTclQQdhsmWCfBYeKFV9BFVTL4eAnkNMPJDy8dP6B4gbNxRYzMd
 3ML84TPCkpbFE86gZWTjUg42y6Ffk6cGBOZVF0hUkWjUwkdIn85wlVLZhDs2Ej5EMIDO
 7WgtG2WQ9uyfr8iz695yaCjW05rx5atm80xWrrG4hu3Jz6xXM1gw6ujdyMU3yldMj8hl
 MFhG5lnTlNSkn0kXdRcDSKHYrfnRu0sir30npI4DnqDfZ9whdF2Rk8mbFJ04IwpMQbtD
 UARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=F5mm9Fke8JHxfVARnWalVMcJS0UHtKXZXtlftloGygw=;
 b=QkvDEfIDJ8BvAC05qBHbsivTLoAmxsM6EteNKlAJl/PM4aI7sagKaYJ0viWg8LFIYi
 PTkuEvhOYzqga8A8mAFKAZqpwzJx5dtogXi9pk1byOUxzmTWAImUTsN49XvLdJPLvLoT
 rUpMLYsysJ9NBlvycusSDVURH++yxPG7sCgh8Vr3I5t7wGkqv/XnNJvT2m0gHCwMnsZq
 HrnJ5UbfmvzNY5LCb8gtKRMpeOiSYJCIfAdzV8FWb0yifdT8er+z3h8PON+hI8p8CAOo
 WwEoLYAUmKLZyas8XYV61zY84tmpLWneRksjFquO8NoVHwsIPPYktetR9/qrgWjiJX0e
 1jEA==
X-Gm-Message-State: APjAAAVLL9db8i+38NV+WQa8TlzCH5Lozb7dXST39qwe05GdEdgh8+Ds
 KhFvNVc9+EPhvPRh6luTm24=
X-Google-Smtp-Source: APXvYqz4VEsb/HTxmCsezPCvabbL1I/dukkvSPB4CCHIqzyBNsz4nhTZT4hZxQ5DEmZww6MngbHAfQ==
X-Received: by 2002:a37:a86:: with SMTP id 128mr15864912qkk.169.1559771673067; 
 Wed, 05 Jun 2019 14:54:33 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id
 u7sm10656888qkm.62.2019.06.05.14.54.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 14:54:32 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/2] staging: kpc2000: Use '%zu' for printing 'size_t' type
Date: Wed,  5 Jun 2019 18:54:22 -0300
Message-Id: <20190605215422.14992-2-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190605215422.14992-1-festevam@gmail.com>
References: <20190605215422.14992-1-festevam@gmail.com>
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

In order to print a 'size_t' type the '%zu' specifier needs to be used.

Change it accordingly in order to fix the following build warning:

drivers/staging/kpc2000/kpc_dma/fileops.c:57:35: warning: format '%ld' expects argument of type 'long int', but argument 8 has type 'size_t {aka unsigned int}' [-Wformat=]

Reported-by: Build bot for Mark Brown <broonie@kernel.org>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- None

 drivers/staging/kpc2000/kpc_dma/fileops.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index aec60382e403..fdec1ab25dfd 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -54,7 +54,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	ldev = priv->ldev;
 	BUG_ON(ldev == NULL);
 
-	dev_dbg(&priv->ldev->pldev->dev, "%s(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %ld) ldev = [%p]\n", __func__, priv, kcb, (void *)iov_base, iov_len, ldev);
+	dev_dbg(&priv->ldev->pldev->dev, "%s(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %zu) ldev = [%p]\n", __func__, priv, kcb, (void *)iov_base, iov_len, ldev);
 
 	acd = kzalloc(sizeof(*acd), GFP_KERNEL);
 	if (!acd) {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

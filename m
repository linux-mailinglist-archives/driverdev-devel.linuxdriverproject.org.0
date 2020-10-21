Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E28A2946D1
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 05:04:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 462A287339;
	Wed, 21 Oct 2020 03:04:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hoCYxmqGA8vt; Wed, 21 Oct 2020 03:04:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3ED10872EF;
	Wed, 21 Oct 2020 03:04:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 805661BF5DC
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 03:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F83E872DF
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 03:04:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AkIXZqEpy0Gb for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 03:04:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E7268872E8
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 03:04:41 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id h2so447812pll.11
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 20:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=f8i52xycYi4zP4k8pIbcxOL0G0oHrSvH6XIGFYYPAcI=;
 b=X+niiNwfSjxScnjfUtNz9cxXOiEFOVP1/Ide/Te+Ur/9FXZ1A5ybV/15lNGIdOs9Sb
 kyTgGDyy6E2a5K103hqQbiqINeNsLYei+83SuYkGFBcFTXdCGsFCVZQ0Jt5h6JAiVTXD
 moNABuZxIK8KwHjm9WEzL8Bp1Xgu1mIqj84exX4CeZuSUnEWaNCss3WGfBiIu9BEm+qb
 yPPc68aAjjv3tsmNDS23l4fz81Hyh+GWj3AP7wplRaaU5pkrlmfowvX0EVgqFhb3QFWP
 Rpl2VbI3HxXtrYTAAkiBAypRRavzlNLme9t4gIk0WGYuRGc9cP5utiDfPm74gCPiQAps
 giug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=f8i52xycYi4zP4k8pIbcxOL0G0oHrSvH6XIGFYYPAcI=;
 b=enngZIlO+ylVEMKJDLBgEhtO32fETGSLUqSYnuY3vLNm+rocBiraAQAnEvnutFe1lg
 9t5B2FOH3cJhL7ABxsW89ThBIANAfZvK/v/Pg7UZIZYsv1kSnexpbVVoTek0mL67H6Pi
 QRBiZYcL4lhyuOm6LLb8xgyuuRfJCB52mNE4ditpMB3neLqD0mEJ7uOvj9MSLSJq7Nt+
 E4uFWay7Fcfa03QfKKLNm9ahcVSJOj0iaGf6qQlZe901taA6jb1qfyMNYQHY+a7I4kfS
 w0ul+YG/yh5Yy3NwOK+crn5fa9qE/z1EljFzmWjX0mQcOSOtpXqu77lthokIJdT2gBry
 XSjQ==
X-Gm-Message-State: AOAM532nxIoJ1DBlR5PK+QFZZ5lkfDcm4rjj3F+P4K+ZaqdeFMXYYq6s
 mqJMzJXNQuGRWbpW5wNcjsM=
X-Google-Smtp-Source: ABdhPJwaac/V+ShRKc2MxiDbprkYGh7i3M2dp5Rqs/mE61KzIO+bxJDe+mXpfUikgu01dyNR9OnbtA==
X-Received: by 2002:a17:90a:20d:: with SMTP id
 c13mr1081812pjc.83.1603249481377; 
 Tue, 20 Oct 2020 20:04:41 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id kv19sm411618pjb.22.2020.10.20.20.04.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 20:04:41 -0700 (PDT)
Date: Wed, 21 Oct 2020 08:34:36 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: kpc2000: Use BIT macro instead of bit masking
Message-ID: <06567509e751655184f4f6aed7570c963b608797.1603248985.git.mh12gx2825@gmail.com>
References: <bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825@gmail.com>
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
Cc: mh12gx2825@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace bit masking by BIT macro. This resolves checkpatch issue
"CHECK: Prefer using the BIT macro"

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/kpc2000/kpc2000/dma_common_defs.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
index 8bc78be3c259..613c4898f65e 100644
--- a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
+++ b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
@@ -8,13 +8,13 @@
 #define KPC_DMA_ENGINE_SIZE         0x0100
 #define ENGINE_CAP_PRESENT_MASK     0x1
 
-#define KPC_DMA_CARD_IRQ_ENABLE                 (1 << 0)
-#define KPC_DMA_CARD_IRQ_ACTIVE                 (1 << 1)
-#define KPC_DMA_CARD_IRQ_PENDING                (1 << 2)
-#define KPC_DMA_CARD_IRQ_MSI                    (1 << 3)
-#define KPC_DMA_CARD_USER_INTERRUPT_MODE        (1 << 4)
-#define KPC_DMA_CARD_USER_INTERRUPT_ACTIVE      (1 << 5)
-#define KPC_DMA_CARD_IRQ_MSIX_MODE              (1 << 6)
+#define KPC_DMA_CARD_IRQ_ENABLE                 BIT(0)
+#define KPC_DMA_CARD_IRQ_ACTIVE                 BIT(1)
+#define KPC_DMA_CARD_IRQ_PENDING                BIT(2)
+#define KPC_DMA_CARD_IRQ_MSI                    BIT(3)
+#define KPC_DMA_CARD_USER_INTERRUPT_MODE        BIT(4)
+#define KPC_DMA_CARD_USER_INTERRUPT_ACTIVE      BIT(5)
+#define KPC_DMA_CARD_IRQ_MSIX_MODE              BIT(6)
 #define KPC_DMA_CARD_MAX_PAYLOAD_SIZE_MASK      0x0700
 #define KPC_DMA_CARD_MAX_READ_REQUEST_SIZE_MASK 0x7000
 #define KPC_DMA_CARD_S2C_INTERRUPT_STATUS_MASK  0x00FF0000
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

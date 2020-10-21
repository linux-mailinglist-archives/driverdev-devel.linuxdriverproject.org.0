Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A2429506F
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 18:11:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA62585F43;
	Wed, 21 Oct 2020 16:11:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CmJgpQoGI1X2; Wed, 21 Oct 2020 16:11:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B25D785B3D;
	Wed, 21 Oct 2020 16:11:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A66C51BF3D0
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 16:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A347086CD7
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 16:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4TfTqtZn2Dsg for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 16:11:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A9588868DB
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 16:11:19 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id l18so1766998pgg.0
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 09:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Ec9niyVw8iqsOhEud1SjOEtKZWQ2FQb/n45NLI289hg=;
 b=jwxtPWKJ16TJW/pFxvlJk9updwEVK+OAVCUUX9kRegpFz0Ms+Sv8KFd/b6kPKSQxNg
 mVnJmlA3oK6951I/eEGjkJylIMrzRA9rjQvgOFGhdNXlgcml7Rq+G/tXRExXpj2N48lK
 5YSp/cRKAp7/Ija4+0Ttg+inhDqhP6dqZKMvWv0C7kJF504YidnYb9x/x+Hhqb05bB3w
 rZ2lvI5BCqfWwayEj8ijNuj9QeNrOOC9TD1LMkRrDuSlvUlw4yYvWVazBPRlKl8ov+iU
 9UUEVoE8clekU6YXLyEqZBZ5MN/+sgrsPgPhuynJ/+B8tqcC0bygO9uFYpbJtsZTrWmz
 wT9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Ec9niyVw8iqsOhEud1SjOEtKZWQ2FQb/n45NLI289hg=;
 b=neufFdILs8keA6YP76qDhhw5DT3IpckM5p5o0Gx/m/F2FYRManv4SGIpPM7BbWl9bJ
 bJuRLl9fw+0//4dWVMOFcLctpj+44/mbfFXeWZqQe9DHHzrZyZzHnpna0XHpv04DQTdA
 aUbINkaQktEWwh+4BtPiBalTHAvoVSXajFJ+eVYiFyEXaMUqRp+LPLO37HOo8i7T/HAY
 N5XS2+UY6Y2l49bIfirmjuGlxRCvXapkzeheABKKlQecCi8lvGhaSUW1c0ATQz3BM2rl
 gs6z1rEQyOF9LFfVOMQYlzb63iwUkJwoii1DyBDc+rQpnhKIArkvLnq/PaUmONnfujIn
 so6Q==
X-Gm-Message-State: AOAM530h7IFk2wO4F5XGPICfy3oGHm9jMJudHySO+nqd0vgZrMHcOB27
 gdAcJxJ4ms6DcO3W1OKuYpU=
X-Google-Smtp-Source: ABdhPJxD934GtQEd82RpsLDxWVZ1WxeRzpEaBqE2nvvSWn7CJ3R8gtjtAQN/kBV7HSjbwToglTjAiA==
X-Received: by 2002:aa7:8421:0:b029:155:3229:69cc with SMTP id
 q1-20020aa784210000b0290155322969ccmr4306199pfn.36.1603296679369; 
 Wed, 21 Oct 2020 09:11:19 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id il5sm238515pjb.4.2020.10.21.09.11.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 09:11:19 -0700 (PDT)
Date: Wed, 21 Oct 2020 21:41:14 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Subject: [PATCH v3 3/3] staging: kpc2000: Use BIT macro instead of bit masking
Message-ID: <2269298ae71605b47fa43a2ebaee23d0ad4ed5a5.1603295576.git.mh12gx2825@gmail.com>
References: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603295575.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603295575.git.mh12gx2825@gmail.com>
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

Replace bit masking by the BIT macro. This resolves the checkpatch issue
"CHECK: Prefer using the BIT macro"

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v2:
   - Update patch description as suggested by Julia L.
Changes since v1:
   - Separate specific checkpatch issues into individual patches.
   - Updated patch subject and description to be specific to the issue
     being fixed.
   - Introduced patch 3/3.
   - Suggested by Vaishali T.

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

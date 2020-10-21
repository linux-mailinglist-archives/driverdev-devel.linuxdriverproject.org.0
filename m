Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4A42948EC
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 09:31:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 19FCE863C5;
	Wed, 21 Oct 2020 07:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id muxvTHmIkXSC; Wed, 21 Oct 2020 07:31:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 100E0863BB;
	Wed, 21 Oct 2020 07:31:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A0091BF5A9
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 07:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5721E866F0
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 07:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MbNl79IF5rgT for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 07:31:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB30F87051
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 07:28:31 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id a17so706766pju.1
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 00:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vizHjsoWOdBTeDkMkLLYSpBXNJParGHvf8KFxFajKzc=;
 b=WYrpjkyxK1dvw3MIMfmrLrKdLrF6BiXxYHc8lZ3x3K8vfpC3gAdLEC82qQM4WoQ2+a
 k3ZssOfnWLPzl/tYXUVmwsYVVbfbCQQp2P2ZKCkfZILVzXAmQ9ES01niVRXOY2bqiAkH
 UYJMJusBMQFtIHnz98UECk5gEUIeRNduY+U+sW/NnooVHlqwF2g8DPWd7slqnXAAkrnz
 bhfk2iyaTECC3n2Tz8bDFvYWr2/7jhMkGgHfgt0hMYyX/hNysb6LmW4811XBv4yIUuoH
 63v4J0RE0hDOcNS9Dlh0I1vLLmlh66o32Om+02B8BbTKr7d9GZRm3BBXgfv6seSuauio
 KVUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vizHjsoWOdBTeDkMkLLYSpBXNJParGHvf8KFxFajKzc=;
 b=CsWZccRoCdxhJHudknBe+iCSKP4bnaITGfyH2Q2Y3AYRmtDfTCz74f1Euh45Mg4kLo
 EhaKyzP3qkFrM5BrBaTZXPH4TGGSZZSgMSI3vc1IjckP1yi3bXuMxJQBlOK33KVSeHij
 BCGhjNyrjcvjYcTNploE13db/PjsNo30X8qEy6AW+nqmUk87OqWmuZPuWNRIJyELA1i5
 VwWrgiT21IAEvLZ454iaFD8LXt9M73r14TQeRUNgKmIjdjPEGqdAOQ2J09lZ1ZvuUW/L
 7HjTuwjYybLfZjI4hehDAxhsYE93OY8+I39q01j3nj3ijGG1Zi8DtsoI7zlZZqrxfCns
 XEIA==
X-Gm-Message-State: AOAM533Jc7VoguH5mTSWUn7OVTrsQYVFqJu4SczGJKSS5IQBPKYHRRH8
 jdjQHaXzqGkpsQQRS89zY4k=
X-Google-Smtp-Source: ABdhPJwpjOzZfTxofkriX/AMucaRmlllyojh8M38XEcSufs0WACyuQgkxGVgVrg3eA432vX3VIM7Kg==
X-Received: by 2002:a17:902:7c14:b029:d4:d894:7eed with SMTP id
 x20-20020a1709027c14b02900d4d8947eedmr1962955pll.81.1603265311619; 
 Wed, 21 Oct 2020 00:28:31 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id l82sm1321057pfd.102.2020.10.21.00.28.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 00:28:31 -0700 (PDT)
Date: Wed, 21 Oct 2020 12:58:27 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Subject: [PATCH v2 3/3] staging: kpc2000: Use BIT macro instead of bit masking
Message-ID: <738b95793de3e9e9e693ba8336967241b9ccf034.1603264610.git.mh12gx2825@gmail.com>
References: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603264610.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603264610.git.mh12gx2825@gmail.com>
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
Changes since v1:
   - Separate specific checkpatch issues into individual patches.
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

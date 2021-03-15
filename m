Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7974A33C3C4
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:13:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 182744310B;
	Mon, 15 Mar 2021 17:13:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kTcKBtkRXMYz; Mon, 15 Mar 2021 17:13:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7D1BF41503;
	Mon, 15 Mar 2021 17:13:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B6CAD1BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A6BDD83486
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3FZNTEpbCJdJ for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F342F83478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:41 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id ci14so67358534ejc.7
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=dnEgk6hvWrnEHs1oMZMl/SOwJQCbH8FQv9D3C0eGN8Q=;
 b=C1HQo9H3kB/zlaYcn3qkupVnczFroaZuzPKtwE3I6M0ubC9xMFZ0R0Yr2kLajT9pQ/
 dATEwVCWJ4bxumtQMS2fEmlyFBnnGY7g8VWrnqohs4XJi0wPSrKFP6Mw3ZyN/k6Ajwf2
 sl/ZWNLUk/8ELljWVC4sTKoR2fJcH2XJBBqvL/E6NxyR0niYYV3cz6h7avW6xx7zmTbk
 Daq3fVxlwUrdNck+WOAuKbFQ7yrUAXRf61bSF1d6Y5BKccqRwafFhjVY8ezvlrmYA/PP
 msOd3iRqQ8OjW9bI0rKzVLxmbz4igvnhBzsV4HNmt++wQV1Crjyq4Q2wrX63Su+iMLAG
 Bvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dnEgk6hvWrnEHs1oMZMl/SOwJQCbH8FQv9D3C0eGN8Q=;
 b=NLwj4JZaQ/pusjr0QSSODEKdw7QLcmlZF/c98ZHrmIbQiK43/5xmQbmZly7BPod3t9
 8VDqwOMInEBXO/RcYZiT2f3qSY4A+Tlb8LZbbedX9F1ZgyEMaQdLpHuDZfqfoQVgxOV9
 nk7dnVyNjeJb9+PcVH5LlQACudCE8BVGP4D2cSInSXCgZqOSkCf0V8zTApnCH7a2CXvt
 VNNMeWshatudean1raajhSXdCtxAHS6eQL2wBqSDHjgYS6erKisyF/FiWpFa9N8Gjhgd
 aeBKExLz7DLiTvT4NOF/CRWnbto/I1C59e87Gc+BQ88Ps3fnnHnzfxe8VoKFbYP6hwVk
 a8rg==
X-Gm-Message-State: AOAM532HFTbAEMs9fuafmYC0qDEVht3k5gyLCVVgBQc9qgoiFfW036tB
 SYl4xmb9W4AIpNXyQZ5dN6k=
X-Google-Smtp-Source: ABdhPJww7Z2rMq8nhI8SmCXEbZ8cFS9+3cVRfGtSxTXA8oB6XV2tcj4hvL5TbTwpaxspLCTV8e7ygw==
X-Received: by 2002:a17:906:bfcc:: with SMTP id
 us12mr25429654ejb.266.1615828000240; 
 Mon, 15 Mar 2021 10:06:40 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:40 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 39/57] Staging: rtl8723bs: fix spaces in basic_types.h
Date: Mon, 15 Mar 2021 18:06:00 +0100
Message-Id: <20210315170618.2566-40-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl error:

    ERROR:POINTER_LOCATION: "(foo*)" should be "(foo *)"
    #16: FILE: ./include/basic_types.h:16:
    +#define FIELD_OFFSET(s, field)	((__kernel_ssize_t)&((s*)(0))->field)

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/basic_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/basic_types.h b/drivers/staging/rtl8723bs/include/basic_types.h
index d0b2ec25327a..76304086107a 100644
--- a/drivers/staging/rtl8723bs/include/basic_types.h
+++ b/drivers/staging/rtl8723bs/include/basic_types.h
@@ -13,7 +13,7 @@
 
 #include <linux/types.h>
 
-#define FIELD_OFFSET(s, field)	((__kernel_ssize_t)&((s*)(0))->field)
+#define FIELD_OFFSET(s, field)	((__kernel_ssize_t)&((s *)(0))->field)
 
 #define SIZE_PTR __kernel_size_t
 #define SSIZE_PTR __kernel_ssize_t
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

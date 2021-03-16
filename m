Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90ACE33D77F
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:32:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0970983DE4;
	Tue, 16 Mar 2021 15:32:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VEJSCl_wdGdp; Tue, 16 Mar 2021 15:32:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 36EF7824C1;
	Tue, 16 Mar 2021 15:32:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E64E91BF301
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D1E1C4EC80
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:32:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pWTT8hXpusHk for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:32:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 03E284EC5A
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:32:05 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id a18so10673079wrc.13
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=L5twvp7di1yhWCRKXbxIy4y2Nz4VGr9DJXLPrPpJYT8=;
 b=ck8etA8UkrRzOaO3cwSFuFwpGexiYJbFMlQu6gPi6uVG4fSbW2oVRcl6+Be8fh04+F
 tRN/0RP2x+ierKyf+1w9NL7xIKVtqdKJszdqDIyT4o/nvTgzrP5sUGv7X3oYpxmslcp/
 N4TM3qcoep7uf1anEbohdzRkIFFWfQsUqxn2g7e6Iq42+sWzg4rHhYxeMvIMzNOmMxNm
 aVIQIuZHC2Z9qhqFyKbtFhCoWD6Dh+775ogSmJex007bayiEatUgYzMlM0ZxGEfP3Ax+
 oUxD3fuitHhZVCJCli7IfNL0huMqxVvzV8zifC65TzaYsH3FcIg6r7f0dl9MVhVKt4gq
 r9Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L5twvp7di1yhWCRKXbxIy4y2Nz4VGr9DJXLPrPpJYT8=;
 b=XE7Dz/5P6ALLqw2l8Ahbh+tVHeXVLxwZxgE+OtuiMLRBgGZ6nPzGAufiyQFXqWsJWn
 oqyYHpHwVMTxP63jteVzv1IqAhrdnWFDsHx7ds/p/hVDlzYvgCx+KBnCoeH3TPH0E28+
 67RW7PZlCGCima3JVUrtdG99azP+TP6vchN9UpRnyAxFMx3aQ0ZELTjmYfucRUXBtuPT
 w/0M7Bdj+tJnyVsFjf6vtOqilLTTTzsRmS8LIYj0UHNNXb+3XEXs3Q7fxrDWYSBSWfDs
 jVeMEZS0000hwsoD7E603ZmVplyWzydISWT5hskuDOeyru9HsNDaTETRpySEKtL5mjvS
 F5uA==
X-Gm-Message-State: AOAM531BCw8P4xVyjNClHSeIYhoOSGZ3JTU4Y7QRFqNG8KZfVD9DxtYz
 NOf4ykrq8CnhgslcuxNyXv2ZwxXhLPc=
X-Google-Smtp-Source: ABdhPJx+PHVGngeMphVO5PueYqhDywxdsDCR9FQ/ohai1tAHdZtTp6ZsMjGRvSIQUx+W0UB4JUTWaA==
X-Received: by 2002:adf:a703:: with SMTP id c3mr5729309wrd.72.1615908724344;
 Tue, 16 Mar 2021 08:32:04 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id i11sm22170605wro.53.2021.03.16.08.32.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:32:04 -0700 (PDT)
Date: Tue, 16 Mar 2021 16:32:01 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 07/12] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_USB_VENDOR*
Message-ID: <037983b85ccc2747284c9002a51c28a7290321ea.1615907632.git.fabioaiuto83@gmail.com>
References: <cover.1615907632.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615907632.git.fabioaiuto83@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

remove conditional code blocks checked by unused
CONFIG_USB_VENDOR family defines

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/include/drv_conf.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/drv_conf.h b/drivers/staging/rtl8723bs/include/drv_conf.h
index 7fc88b07a25e..9cef9ce589a1 100644
--- a/drivers/staging/rtl8723bs/include/drv_conf.h
+++ b/drivers/staging/rtl8723bs/include/drv_conf.h
@@ -8,16 +8,6 @@
 #define __DRV_CONF_H__
 #include "autoconf.h"
 
-//About USB VENDOR REQ
-#if defined(CONFIG_USB_VENDOR_REQ_BUFFER_PREALLOC) && !defined(CONFIG_USB_VENDOR_REQ_MUTEX)
-	#warning "define CONFIG_USB_VENDOR_REQ_MUTEX for CONFIG_USB_VENDOR_REQ_BUFFER_PREALLOC automatically"
-	#define CONFIG_USB_VENDOR_REQ_MUTEX
-#endif
-#if defined(CONFIG_VENDOR_REQ_RETRY) &&  !defined(CONFIG_USB_VENDOR_REQ_MUTEX)
-	#warning "define CONFIG_USB_VENDOR_REQ_MUTEX for CONFIG_VENDOR_REQ_RETRY automatically"
-	#define CONFIG_USB_VENDOR_REQ_MUTEX
-#endif
-
 #define DYNAMIC_CAMID_ALLOC
 
 #ifndef CONFIG_RTW_HIQ_FILTER
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

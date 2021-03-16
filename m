Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D42F33D787
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:33:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 990344ED99;
	Tue, 16 Mar 2021 15:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g6vS2BNpO7rP; Tue, 16 Mar 2021 15:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 86F114EC80;
	Tue, 16 Mar 2021 15:33:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C82471BF301
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:32:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2E3C4EBBD
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:32:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 36dM9vLu68Uc for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:32:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EBD8E4EC80
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:32:51 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id v11so7662822wro.7
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oWQ6OIsRDcKO27uNJJ+4rAAZ4GQmFLXXw3hOBTbFDWY=;
 b=fZvJW0AvwTfsbRqI8dznMHkiGQRN+fHxMnwNmoa/MjenBeViCQOIRx6GmPw4uy8PRC
 Jnar7jX43ZNDt5KkD7uLqr/za11euvdXxtVkb0OdVpky1rXteDYo63+7Mcxvw4WRb2T3
 o5AmKX5l4CjGdhUC/QFbvRp5s8dp76Nyrv514xGXoT+uDBNdrHaVOrP17LHN22E7BxHv
 vNl5I4riH6MRrTkcAx95casBT3/3ZF/9xjTeLj0yG56FmelmfAa3kIgBn0KHbIMfyubK
 kU0/lkTAXfRxVDdQdiFZfPLPoace0NwpmL79U78uudVksmRSH16pQGGML9suLtZOhGjz
 HsBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oWQ6OIsRDcKO27uNJJ+4rAAZ4GQmFLXXw3hOBTbFDWY=;
 b=h9n+vGogh8/JMzcW6fSwMYjHjjdsuGOrYljNFaN9nGRyCU+tla/SZdmk71Ml/6lV4e
 XMIZ92NkXZb5NrdRnLa7ChJXtwD4T0XydEBMsuMD/ZdjGwzg0quhltTYmmGpxTaDipes
 UkfRkB58OFhnq8FtlXIMMtE6b1YIx9mA/Se65YCZ9o3Rzd/M/2wWPxtc+W/48/qlPP0l
 x5KGaiFfZKIcy0s9WCOs19OlH0jio1HCJm+vtQQavcI3JnjU7Y+SjE2MYopq5ifH+RoR
 1nsyGrYZoHXmvWjK5J6YvnphMGcqClsmvORNKsRFGML/RkUHT79n8KaiqVrxAXlkTte/
 vLFQ==
X-Gm-Message-State: AOAM533gMUkyQ+YVT6TSzz9dIrPFINtEqeUQs2fsf5JNoBuh6AXJH/it
 /O3/lr9pSkNoFLczZwqZJtQ=
X-Google-Smtp-Source: ABdhPJyrKTWi6fmzZOmU08lMmubTx5kuRmyFj9aM5EI/mC4baczwD0iTjp86C57yDOnt3/Uv6m/c0Q==
X-Received: by 2002:adf:e548:: with SMTP id z8mr5672857wrm.246.1615908770351; 
 Tue, 16 Mar 2021 08:32:50 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id s8sm23408659wrn.97.2021.03.16.08.32.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:32:50 -0700 (PDT)
Date: Tue, 16 Mar 2021 16:32:47 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 10/12] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_BSD_RX_USE_MBUF
Message-ID: <b65806d8bbbb686af247d945cc25e73234e4cbb4.1615907632.git.fabioaiuto83@gmail.com>
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
CONFIG_BSD_RX_USE_MBUF

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_recv.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 3443cb7d0467..b298ec121ee9 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -317,13 +317,8 @@ struct recv_buf {
 */
 struct recv_frame_hdr {
 	struct list_head	list;
-#ifndef CONFIG_BSD_RX_USE_MBUF
 	struct sk_buff	 *pkt;
 	struct sk_buff	 *pkt_newalloc;
-#else /*  CONFIG_BSD_RX_USE_MBUF */
-	struct sk_buff	*pkt;
-	struct sk_buff *pkt_newalloc;
-#endif /*  CONFIG_BSD_RX_USE_MBUF */
 
 	struct adapter  *adapter;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

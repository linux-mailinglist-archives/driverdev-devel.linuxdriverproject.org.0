Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A05B33D786
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:32:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0115183D40;
	Tue, 16 Mar 2021 15:32:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MyPIWfFxGo3b; Tue, 16 Mar 2021 15:32:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4846383DA8;
	Tue, 16 Mar 2021 15:32:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 57C9F1BF97D
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 79B804319A
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:32:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AbjvcuTvbeUf for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:32:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D2F6643003
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:32:34 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id g20so10342088wmk.3
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fbhvIGnCMuZh+oOiKyd2X4ban09eYtOYnrdH/9nbbZM=;
 b=Tbk40TlS62DwaE6EvfTOODLCAnNH49T9slNVOQxvRDvGvApoGIbgjZ7M650QTrJK8y
 IiFtWB6P1bu9c8e1spndMlE782kkHW293Huci1PYvxFBA0kHk3j8LP8CdJBlGrrodf30
 WIKk+S4kHU9l0tdB3bzHURTQ62lq5PPirsQGTFlgR5OATcrV+NpjtnLzMOTf6xT7WweT
 MIUwuiBolvTQRl+/uKVqYQdDpc61PyR0vqWi6Nm4gvP6TTlYme7oyzktnh2wh0aP94Nq
 1L0lB7eONEG+b947LOizaYGXMZ1RD9WqhFmTMlPDz8p6EVhQSBBTsBuKbnuLjQ98YbBd
 Aj8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fbhvIGnCMuZh+oOiKyd2X4ban09eYtOYnrdH/9nbbZM=;
 b=f1g2JGttlihfCQogqeOi4bcp2ufC/RV7/opkUC1j1SJwqtPiXPrHmfGvQDSpc10VFG
 02o5cyEjwquwfpq+TLqmsnRqXKcWW1WI9WhNPhIW24rrWan1ekR0u07vtPWmyLn+H4XX
 2tfwSPBm8RDqhKD/SneVrJQSqNXV9VGrux+tgte8V9oZhiCjzo25v5z/vHJC4yY/ZuTq
 8rPvie/ajLn6b60J9W0t4vU30cayjqa18pJF6SA66K/2wMIZtLeJmvLjtueeIjvyxp5x
 nhG28oGmx+AUMZ2QbOOm9wRgOFN1D4Iml50sSMK1v/H4pkcMhQQYfrs+m34QkCRlKFxT
 M7Eg==
X-Gm-Message-State: AOAM530pukDcRkKziKtHd5K/u9sSBdQL1j6FqemgqeXUjyZcwDkabai7
 HQaSpYpk+y9vZ86IHm5A3tQ=
X-Google-Smtp-Source: ABdhPJwZmUPnBi5HzR+A0RTMjPFOue1Y6/YS+fXQ8XiNZdOQjY4npSYWinh3DmjX80+G8SWnzXFa8Q==
X-Received: by 2002:a1c:195:: with SMTP id 143mr192505wmb.147.1615908753138;
 Tue, 16 Mar 2021 08:32:33 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id j136sm3525932wmj.35.2021.03.16.08.32.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:32:32 -0700 (PDT)
Date: Tue, 16 Mar 2021 16:32:30 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 09/12] staging: rtl8723bs: remove unused code blocks
 conditioned by never set CONFIG_RX_INDICATE_QUEUE
Message-ID: <0f677a975f92b38f6ad1ff21c1006855a075692b.1615907632.git.fabioaiuto83@gmail.com>
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
CONFIG_RX_INDICATE_QUEUE

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_recv.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index acd7a7714740..3443cb7d0467 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -226,10 +226,6 @@ struct recv_priv {
 	struct tasklet_struct recv_tasklet;
 	struct sk_buff_head free_recv_skb_queue;
 	struct sk_buff_head rx_skb_queue;
-#ifdef CONFIG_RX_INDICATE_QUEUE
-	struct task rx_indicate_tasklet;
-	struct ifqueue rx_indicate_queue;
-#endif	/*  CONFIG_RX_INDICATE_QUEUE */
 
 	u8 *pallocated_recv_buf;
 	u8 *precv_buf;    /*  4 alignment */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

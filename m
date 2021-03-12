Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80870339291
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 16:59:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AB14043289;
	Fri, 12 Mar 2021 15:59:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8PtJk4WSWM1e; Fri, 12 Mar 2021 15:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1CC1843049;
	Fri, 12 Mar 2021 15:59:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0163F1BF20B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 15:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F184745203
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 15:59:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xp9LeB_WhYoP for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 15:59:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 31D7A4480F
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 15:59:06 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id f12so5075914wrx.8
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 07:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gefUvqZ+PVzm20AG/CnQcxDANW6owChYqRkVVyHl7s0=;
 b=gCauilkWy0v9euw5fGyJ7PnNGhvzAnprPg5JozU2kmU3KtD57PebSfGk/6Fp4K57qv
 cfyuxdLmO34VZiAMY6P/vRYAKmn/9jJvpcpD+6BBIBTVo6F8YpXi+SPxanEennMvJ02u
 JRvRi8yzoOvQQHRJKQovQlhm0QvdhlGnRoM7KkE6Kdlk70l60XVvE0xjTUGvcfzksipK
 yl1+rjSLP9sTY2Ma7L8/0dUE2P8NmKUZNja0xXv3GzPZa8f4r3iS76sCY7KAbb0Ns8/h
 ni2krnPqS6qM0kld3sRBDVKGBFHgnC4YyiSyENf5p7DAd9UdMa3inWXss08e1TW7xwBR
 Tpfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gefUvqZ+PVzm20AG/CnQcxDANW6owChYqRkVVyHl7s0=;
 b=MriI7Ck+qC46wnPGfzP07G3DJ9ObaXfYFaitGqge59Qrw+CfVov0pjsOYjJh37PBfC
 P7QxGzqDLXwvHwi/s6P9qbpyKdK2hV79L4yUSTU9Rr8Ht/b4vepLxjDVt2bBwYA4czdh
 DOp8qkWYq8tYAyoP9tk8uBrmuRsEhjdeLOfzSP49pJeTpDai4ussAbRBDdz2c3gr8Ij+
 JPXs58BBn/SLc/OzDKxNLHtMAXuYuyQF3QQhfXotiDpGy8azm8PWiccEKXVhQZS5Si2s
 nuv+eD1F6MbOCStp8yRQFN0i8A3Qr4b+WQyNZtahAxvg3tpiLMQa/EBPDI29xo0jCkf+
 PRwg==
X-Gm-Message-State: AOAM532SCHcqYR23SBabesnaohRAvkrY+1G+G//QDU8FfmB/NWTfdiSZ
 kb7kzgVhlzLYlgq6xPo8hhpKGJGjUoxpOQ==
X-Google-Smtp-Source: ABdhPJx5sRlKADvu2Mizzkmg4c61CPj3z3qQQIUzLt3LLT74J7waTqUFNKJKoVz4iRURyFQlW4Ebvg==
X-Received: by 2002:adf:f94c:: with SMTP id q12mr14441265wrr.283.1615564744526; 
 Fri, 12 Mar 2021 07:59:04 -0800 (PST)
Received: from agape.jhs ([5.171.80.73])
 by smtp.gmail.com with ESMTPSA id s16sm8267410wru.91.2021.03.12.07.59.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 07:59:04 -0800 (PST)
Date: Fri, 12 Mar 2021 16:58:58 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/3] staging: rtl8723bs: remove unused code blocks
Message-ID: <a3b0b72da950353afdd813ea6dabffa5004d5a92.1615561447.git.fabioaiuto83@gmail.com>
References: <cover.1615561446.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1615561446.git.fabioaiuto83@gmail.com>
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

remove conditional code blocks checked by unused CONFIG_TCP_CSUM_OFFLOAD_RX

cleaning required in TODO file:

find and remove code blocks guarded by never set CONFIG_FOO defines

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_recv.h  | 5 -----
 drivers/staging/rtl8723bs/os_dep/recv_linux.c | 8 --------
 2 files changed, 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index b4aeb44d5d6e..078854a55a31 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -159,11 +159,6 @@ struct rx_pkt_attrib	{
 
 	u8 ack_policy;
 
-/* ifdef CONFIG_TCP_CSUM_OFFLOAD_RX */
-	u8 tcpchk_valid; /*  0: invalid, 1: valid */
-	u8 ip_chkrpt; /* 0: incorrect, 1: correct */
-	u8 tcp_chkrpt; /* 0: incorrect, 1: correct */
-/* endif */
 	u8 key_index;
 
 	u8 data_rate;
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index f52802f24466..78d5b6913467 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -138,15 +138,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 		pkt->protocol = eth_type_trans(pkt, padapter->pnetdev);
 		pkt->dev = padapter->pnetdev;
 
-#ifdef CONFIG_TCP_CSUM_OFFLOAD_RX
-		if ((pattrib->tcpchk_valid == 1) && (pattrib->tcp_chkrpt == 1))
-			pkt->ip_summed = CHECKSUM_UNNECESSARY;
-		else
-			pkt->ip_summed = CHECKSUM_NONE;
-
-#else /* !CONFIG_TCP_CSUM_OFFLOAD_RX */
 		pkt->ip_summed = CHECKSUM_NONE;
-#endif /* CONFIG_TCP_CSUM_OFFLOAD_RX */
 
 		ret = rtw_netif_rx(padapter->pnetdev, pkt);
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

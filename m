Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F253392C4
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 17:10:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0924C432A1;
	Fri, 12 Mar 2021 16:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UpNUk7qYK4_H; Fri, 12 Mar 2021 16:10:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F68E4328D;
	Fri, 12 Mar 2021 16:10:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E3E091BF27F
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 16:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D34FE844AB
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 16:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jcUOuB1JD-4c for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 16:10:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1F4A084043
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 16:10:05 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 t5-20020a1c77050000b029010e62cea9deso15480724wmi.0
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gefUvqZ+PVzm20AG/CnQcxDANW6owChYqRkVVyHl7s0=;
 b=Sl0VDnQt+1RMRe2Y4IFrR/8/2P1YiOj0dIPVJzK5P5ql0xp8SVr0TNOeh50qoDz6KD
 hdOoYBOgsVKy7cVzgXJv1JiPpZEF+nSTBzz7usopk2s6xefngtYEHb384LiWwhxSMbmx
 e1plY23jcwBWT1DPbVrVB1YLmWjjWw+Cotko0G3lt4jLVscvcoE3VJdNtSFjI4LemH31
 gXcI0B6CAuTmoDHKsCa9jUDVvjmWoNMCCoMxJT3XkRnk6fdxWNpcTSQDJa6WFVEObWsn
 T+I84DxSRkr23E4Q7v35GH+GquSxOd0wMCK8oJXnl6EEQe4bchcIBtvZD2/2G4XD2C9j
 Q13g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gefUvqZ+PVzm20AG/CnQcxDANW6owChYqRkVVyHl7s0=;
 b=IHP++xWOP4iRksNuDMIMPPh2kK5PwnjpLmXElw+OAw6ZImPIZ7gvZzIzTmurmOVVlD
 WaFv++N5rLukySSF1TD9Ln6gSeEDr9Njmvt3hCGAAZn0R7lo3lKEEWb30z4Qm6zacjf0
 tOKH0B0QJUtrEaeXqArY+GZ92L9Mk53QQotYe2T4AlHDwTuKT0W1EpLC31FQjD5oH/E9
 ozAnbUANoK3vrMhHCs6x6DBlCbUFnLObWh9DgCcGHwDQxBv9JjhqwfVQxhD8WmEJl8NF
 OVvW6Xq9/oW7/YLfWlD+Om+WvigMcgO89Uq//9SsqruWkeavoSSe456oznSMJco2Vl79
 7iQA==
X-Gm-Message-State: AOAM530gOx3ydKcZ7IyLFxwFLHgqlwdtLGHZpOoD3jtLqqX3B6IBJKa/
 osuBdCxStCYcG+uEBZ2c9zY=
X-Google-Smtp-Source: ABdhPJwqnWyb5Onm4bEZd7t3tmBLv63GOvp+mvKlzmJbHrVGsAq6EM3W5O8PyIObMIqloZlcm09D7w==
X-Received: by 2002:a7b:c4d1:: with SMTP id g17mr13855852wmk.101.1615565404369; 
 Fri, 12 Mar 2021 08:10:04 -0800 (PST)
Received: from agape.jhs ([5.171.80.73])
 by smtp.gmail.com with ESMTPSA id s23sm2524163wmc.35.2021.03.12.08.10.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 08:10:04 -0800 (PST)
Date: Fri, 12 Mar 2021 17:10:01 +0100
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

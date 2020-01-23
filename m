Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AF2146155
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 06:19:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E79B882EC;
	Thu, 23 Jan 2020 05:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IL4s4YKUHiOa; Thu, 23 Jan 2020 05:19:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B34E882EB;
	Thu, 23 Jan 2020 05:19:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 533451BF861
 for <devel@linuxdriverproject.org>; Thu, 23 Jan 2020 05:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F96086DBD
 for <devel@linuxdriverproject.org>; Thu, 23 Jan 2020 05:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vpro-rmrOqFo for <devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 05:19:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9ADD586D73
 for <devel@driverdev.osuosl.org>; Thu, 23 Jan 2020 05:19:37 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id s64so753055pgb.9
 for <devel@driverdev.osuosl.org>; Wed, 22 Jan 2020 21:19:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5KoYChdrAVEnywaOk6umNrkcUxLVAh4soDP+1zybkIw=;
 b=MAMt+hkx8kzQYK1bOTg3zO+yF9aTna1Dcsqc0k92EN2yS8jbzTX3mSI7l+3pFrszLI
 GnpGabhLZLfTd0xzKwhk6ZYNsO6mysVSQP4UOXRBLv/TK0tpRmmp6T6XzTWonWB2dW/w
 y1C26tyLD1TTaCQQhJU4pE6dx1dPUwdjtBGQSBWPP1SOZWw7cYZ1XA4b7t88mxT2RsLi
 QQbVDDlOHzCNZ5PtACMXX5CSlvFWPFjf2Myrj1fb8C73TXFawcsLB9qlPJiF0ukc4Cef
 AlROAkT9dC+3mcjD2luCZwAGM2ZBly/dYZuLH4XRbEVpCrfFtic+2Px+kRQDdYo7gMEG
 UoVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5KoYChdrAVEnywaOk6umNrkcUxLVAh4soDP+1zybkIw=;
 b=CfWDJG+usMozyCRI/QxSXVdTrEiLTKR4ddUQ19PZKuRFHPM7eeZEqqsmXLUGn3jp5T
 vga99xPwENnKtiMYJVHxqxxe9W7hvN9IKicmWGYC2PiK5JnKqlzZPmma9p5xsD+7CQfv
 rcKbMmqIkleHx9Klq3PXJ+2luzRox/RLMkG/RtX253MPngrjZJM2ENvYCC4FjLhAhZya
 FBt/RL2TRWxxBUi9FrZ2vpTBOXqfODJnYg7is3qyeq6ZgnFoYzxdNRISU5oZ07N1RTyL
 Q1QJnqXX1xGOJvsdWy9/3BQBRpjyuuBvnJKyJANQxjYwTCGAYRhXpXf4JmKGOpZccA7d
 o73A==
X-Gm-Message-State: APjAAAXrFJUH7QGLMJBzbza5xt6C7fjo1jMQjHQhc32rHy/bK3HKOcxU
 1fALjM48cUvdGJBbP63gBH4=
X-Google-Smtp-Source: APXvYqx0UXNrAGRj0IpnERWcVQq9uWc0hjJ6AOHNdPe6nyGIjSs+HDemstFt0YMAjdcjSkqYMdC48Q==
X-Received: by 2002:a63:ba45:: with SMTP id l5mr2044688pgu.380.1579756777148; 
 Wed, 22 Jan 2020 21:19:37 -0800 (PST)
Received: from f3 (ag119225.dynamic.ppp.asahi-net.or.jp. [157.107.119.225])
 by smtp.gmail.com with ESMTPSA id e16sm817911pgk.77.2020.01.22.21.19.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 21:19:36 -0800 (PST)
Date: Thu, 23 Jan 2020 14:19:31 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] staging: qlge: fix spelling mistake "to" -> "too"
Message-ID: <20200123051931.GA419949@f3>
References: <20200123000707.2831321-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123000707.2831321-1-colin.king@canonical.com>
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020/01/23 00:07 +0000, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> There is a spelling mistake in a netif_printk message. Fix it.
> 
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/qlge/qlge_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> index ef8037d0b52e..115dfa2ffabd 100644
> --- a/drivers/staging/qlge/qlge_main.c
> +++ b/drivers/staging/qlge/qlge_main.c
> @@ -1758,7 +1758,7 @@ static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
>  	} else if (ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_DL) {
>  		if (ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HS) {
>  			netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
> -				     "Header in small, %d bytes in large. Chain large to small!\n",
> +				     "Header in small, %d bytes in large. Chain large too small!\n",

The "to" is correct here.
~chaining a large buffer to a small buffer~
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

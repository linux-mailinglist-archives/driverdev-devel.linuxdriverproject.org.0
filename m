Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFD3289EF9
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 09:35:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5109A20464;
	Sat, 10 Oct 2020 07:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x-YToUY+NfDz; Sat, 10 Oct 2020 07:35:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6318F2044D;
	Sat, 10 Oct 2020 07:35:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 165DC1BF425
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 07:35:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 126178776C
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 07:35:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8FvVa0RNhNrr for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 07:35:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8782B8775D
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 07:35:20 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id d1so434799pfc.0
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 00:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Hnd/mv3jxhuZxVrX3GYV8Ajw+ecT5R2LNKIYlv6d3No=;
 b=Dm4fMwFjM1xohWdCX4FurJA/KOw5/SuFGNgpKPzBdyRfXJpJlGfpnwZhy6iqgrD1fx
 g/jx8YKenfi9lOna0Yu5mwakuQV4hyNPMT7msClic/2WWqyHohb9i6fW/5Cj8McGl7Bs
 mb8uPdr1BORea/nXWCibt4FxRP+KiGyCCa00GLILU+Ik0vab9vSy31AcqEu7pDH13v3L
 mKD18kmD88f5SNrBNRnW8D18beG3vCQYtOm50uwkM2pfCRC7f+roxS2cOUyW/a3WxD7o
 X8tLMJ1Qx1QHM2tQkapjK9WY1FGI7JqCypGahodiJhipMKrCeyN52WR7yNybK96dpik+
 CLSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Hnd/mv3jxhuZxVrX3GYV8Ajw+ecT5R2LNKIYlv6d3No=;
 b=fHHSO7I1L07ciMWqaTs9yt77pZj7gA7gM4Zulp7E7mT/Kw6MhQsho9t5yuOhh3/KIn
 yyHcm5P0cI26yjivIQkevVRt8uFpRJ5ql8soHyvBVOh5KigAmLYwmvq782HTZ5z47vKJ
 hlMtJ90n7Z1xQH1cxxJv8UyqgcVGRPBvDuIHG08PwvUGjGZUBxxtgqegW4iafvsYXUoc
 sn6T5dGWS8NmJ+DLG/Uvn10FA6urVqLU0t4IHytlVrz9lU23EkX0U0ZzbDoQA1Eragrq
 oZVPVPXzlQ1bvhtLbmWTHtMyQaScQuEzCeRGyHScydZEqBPNWepiMLACrV/l07sqexv7
 dqiQ==
X-Gm-Message-State: AOAM533HCQgTwkfVqxOD98xX9LDqJ2koVFmbr8KQYX4TAu1vONh6uDPM
 VUNMBmYlENYn6POmkvnxB9Y=
X-Google-Smtp-Source: ABdhPJxjM2qpy65yr3E7+lkJ1YIR5h1bfDPisi1MZLUONiuPbVdLIo3T1Al2+1wrdzdnSsXXoZ4cgA==
X-Received: by 2002:a17:90a:3fcb:: with SMTP id
 u11mr8666256pjm.128.1602315320134; 
 Sat, 10 Oct 2020 00:35:20 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id c21sm13507834pfo.139.2020.10.10.00.35.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Oct 2020 00:35:19 -0700 (PDT)
Date: Sat, 10 Oct 2020 16:35:14 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v1 1/6] staging: qlge: Initialize devlink health dump
 framework for the dlge driver
Message-ID: <20201010073514.GA14495@f3>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-2-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008115808.91850-2-coiby.xu@gmail.com>
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
Cc: devel@driverdev.osuosl.org, "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER"
 <GR-Linux-NIC-Dev@marvell.com>, Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-10-08 19:58 +0800, Coiby Xu wrote:
> Initialize devlink health dump framework for the dlge driver so the
> coredump could be done via devlink.
> 
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>  drivers/staging/qlge/Kconfig        |  1 +
>  drivers/staging/qlge/Makefile       |  2 +-
>  drivers/staging/qlge/qlge.h         |  9 +++++++
>  drivers/staging/qlge/qlge_devlink.c | 38 +++++++++++++++++++++++++++++
>  drivers/staging/qlge/qlge_devlink.h |  8 ++++++
>  drivers/staging/qlge/qlge_main.c    | 28 +++++++++++++++++++++
>  6 files changed, 85 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/staging/qlge/qlge_devlink.c
>  create mode 100644 drivers/staging/qlge/qlge_devlink.h
> 
> diff --git a/drivers/staging/qlge/Kconfig b/drivers/staging/qlge/Kconfig
> index a3cb25a3ab80..6d831ed67965 100644
> --- a/drivers/staging/qlge/Kconfig
> +++ b/drivers/staging/qlge/Kconfig
> @@ -3,6 +3,7 @@
>  config QLGE
>  	tristate "QLogic QLGE 10Gb Ethernet Driver Support"
>  	depends on ETHERNET && PCI
> +	select NET_DEVLINK
>  	help
>  	This driver supports QLogic ISP8XXX 10Gb Ethernet cards.
>  
> diff --git a/drivers/staging/qlge/Makefile b/drivers/staging/qlge/Makefile
> index 1dc2568e820c..07c1898a512e 100644
> --- a/drivers/staging/qlge/Makefile
> +++ b/drivers/staging/qlge/Makefile
> @@ -5,4 +5,4 @@
>  
>  obj-$(CONFIG_QLGE) += qlge.o
>  
> -qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o
> +qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o qlge_devlink.o
> diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
> index b295990e361b..290e754450c5 100644
> --- a/drivers/staging/qlge/qlge.h
> +++ b/drivers/staging/qlge/qlge.h
> @@ -2060,6 +2060,14 @@ struct nic_operations {
>  	int (*port_initialize)(struct ql_adapter *qdev);
>  };
>  
> +
> +
> +struct qlge_devlink {
> +        struct ql_adapter *qdev;
> +        struct net_device *ndev;

This member should be removed, it is unused throughout the rest of the
series. Indeed, it's simple to use qdev->ndev and that's what
qlge_reporter_coredump() does.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

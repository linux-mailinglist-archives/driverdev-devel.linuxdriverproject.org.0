Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B037E245582
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 04:56:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E36B486356;
	Sun, 16 Aug 2020 02:56:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mc5JR3VtClkY; Sun, 16 Aug 2020 02:56:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E42586457;
	Sun, 16 Aug 2020 02:56:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 318091BF398
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 02:56:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 27518882CA
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 02:56:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TbhZ7CG8Dsva for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 02:56:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3230D87D7C
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 02:56:47 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id f193so6438192pfa.12
 for <devel@driverdev.osuosl.org>; Sat, 15 Aug 2020 19:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nxRS4sovf6GjtcJdjWXmM4G6i1tYTrf7XYtnALv+02A=;
 b=u+OpWrD0xShZqRnowsZ+j9C/wDb3pI7Q2Lhmozbz+U68ef/uIpJcUza/iUSjp8zdvt
 B+vgWw2uhMcFfLZT9iSMKLFqBhRked1h7xYwspPP3S4Nd5xWzPv2knbmYcLe/nLOZmco
 1q2OG1Rw4sHkfXzmsiUXhxhfbZSdqp6kT5ZtLjDzmEfAzfo6zQTCGLY7mgS2vRbxx/DT
 cqZ4BxubTiD1QmpMfX+YoxCPuPv6FLIYQRaUyktClAQ/bcYj6OzZH4ecCK5GjKM21WCi
 tI0adCL8Qk3NkY6E+yNskpLyAg/KhcWFfWATX1q47nHa9Ot2GFD51gEYJZDjPHR+BY0A
 1/GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nxRS4sovf6GjtcJdjWXmM4G6i1tYTrf7XYtnALv+02A=;
 b=iK95fIDyov3n1h4YOpBytMRgsgqmSv9BpZt0UuegQJTh+fkdomMFTLLDPVGM6HngoP
 GRWOChfKzGkkBc5hAH04iJ/I3RZjpd5219wvkm/uNY3e/lyzsgmKNO0H22mr54tv5ANu
 cEcP6YVN6dFhhAfkZgrFj8XtMgoYXLoWSMoJKD2e7Skf2O2PToj/3BNkruFQEqrkYftu
 th5B9qfkMegg3CAs/xq5RwiTRBeAspkpYJSVu3EVUEidt7g9OhJBFJBafMRDSutooVEJ
 MtU/d/927RmyZvtdV4pjCWZ/pGeIXCyocUcbgulzadsfKGv49KEJ8yhzmxSAxpjLanZm
 UX8Q==
X-Gm-Message-State: AOAM530edRsZLZZ/4IX8mIrBcDKPxSNxxrAXwAVEFu+pToXzncQH9IRE
 Y4ttLWvJ0DQmUfcpRo+ITp0=
X-Google-Smtp-Source: ABdhPJyT/sTWHOZi9Lnw9jLyJtS7mOlgCDSJuClYdBR63itdEpMGQLJWxxZq1NnqawqJhGrCpLX04Q==
X-Received: by 2002:a62:1ad0:: with SMTP id a199mr7068906pfa.56.1597546606564; 
 Sat, 15 Aug 2020 19:56:46 -0700 (PDT)
Received: from f3 (ae055068.dynamic.ppp.asahi-net.or.jp. [14.3.55.68])
 by smtp.gmail.com with ESMTPSA id w7sm13597208pfi.164.2020.08.15.19.56.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 15 Aug 2020 19:56:44 -0700 (PDT)
Date: Sun, 16 Aug 2020 11:56:40 +0900
From: Benjamin Poirier <benjamin.poirier@gmail.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [RFC 1/3] Initialize devlink health dump framework for the dlge
 driver
Message-ID: <20200816025640.GA27529@f3>
References: <20200814160601.901682-1-coiby.xu@gmail.com>
 <20200814160601.901682-2-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200814160601.901682-2-coiby.xu@gmail.com>
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
Cc: Michal Kubecek <mkubecek@suse.cz>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 GR-Linux-NIC-Dev@marvell.com, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, open list <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 2020-08-15 00:05 +0800, Coiby Xu wrote:
> Initialize devlink health dump framework for the dlge driver so the
> coredump could be done via devlink.
> 
> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
> ---
>  drivers/staging/qlge/Makefile      |  2 +-
>  drivers/staging/qlge/qlge.h        |  9 +++++++
>  drivers/staging/qlge/qlge_health.c | 43 ++++++++++++++++++++++++++++++
>  drivers/staging/qlge/qlge_health.h |  2 ++
>  drivers/staging/qlge/qlge_main.c   | 21 +++++++++++++++
>  5 files changed, 76 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/staging/qlge/qlge_health.c
>  create mode 100644 drivers/staging/qlge/qlge_health.h
> 
> diff --git a/drivers/staging/qlge/Makefile b/drivers/staging/qlge/Makefile
> index 1dc2568e820c..0a1e4c8dd546 100644
> --- a/drivers/staging/qlge/Makefile
> +++ b/drivers/staging/qlge/Makefile
> @@ -5,4 +5,4 @@
>  
>  obj-$(CONFIG_QLGE) += qlge.o
>  
> -qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o
> +qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o qlge_health.o
> diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
> index fc8c5ca8935d..055ded6dab60 100644
> --- a/drivers/staging/qlge/qlge.h
> +++ b/drivers/staging/qlge/qlge.h
> @@ -2061,6 +2061,14 @@ struct nic_operations {
>  	int (*port_initialize) (struct ql_adapter *);
>  };
>  

This patch doesn't apply over the latest staging tree. I think your tree
is missing commit d923bb6bf508 ("staging: qlge: qlge.h: Function
definition arguments should have names.")

> +
> +
> +struct qlge_devlink {
> +        struct ql_adapter *qdev;
> +        struct net_device *ndev;

I don't have experience implementing devlink callbacks but looking at
some other devlink users (mlx4, ionic, ice), all of them use devlink
priv space for their main private structure. That would be struct
ql_adapter in this case. Is there a good reason to stray from that
pattern?

> +        struct devlink_health_reporter *reporter;
> +};
> +
>  /*
>   * The main Adapter structure definition.
>   * This structure has all fields relevant to the hardware.
> @@ -2078,6 +2086,7 @@ struct ql_adapter {
>  	struct pci_dev *pdev;
>  	struct net_device *ndev;	/* Parent NET device */
>  
> +	struct qlge_devlink *devlink;
>  	/* Hardware information */
>  	u32 chip_rev_id;
>  	u32 fw_rev_id;
> diff --git a/drivers/staging/qlge/qlge_health.c b/drivers/staging/qlge/qlge_health.c
> new file mode 100644
> index 000000000000..292f6b1827e1
> --- /dev/null
> +++ b/drivers/staging/qlge/qlge_health.c
> @@ -0,0 +1,43 @@
> +#include "qlge.h"
> +#include "qlge_health.h"
> +
> +static int
> +qlge_reporter_coredump(struct devlink_health_reporter *reporter,
> +			struct devlink_fmsg *fmsg, void *priv_ctx,
> +			struct netlink_ext_ack *extack)
> +{
> +	return 0;
> +}
> +
> +static const struct devlink_health_reporter_ops qlge_reporter_ops = {
> +		.name = "dummy",
> +		.dump = qlge_reporter_coredump,
> +};

I think
	select NET_DEVLINK
should be added to drivers/staging/qlge/Kconfig

> +
> +int qlge_health_create_reporters(struct qlge_devlink *priv)
> +{
> +	int err;
> +
> +	struct devlink_health_reporter *reporter;
> +	struct devlink *devlink;
> +
> +	devlink = priv_to_devlink(priv);
> +	reporter =
> +		devlink_health_reporter_create(devlink, &qlge_reporter_ops,
> +					       0,
> +					       priv);
> +	if (IS_ERR(reporter)) {
> +		netdev_warn(priv->ndev,
> +			    "Failed to create reporter, err = %ld\n",
> +			    PTR_ERR(reporter));
> +		return PTR_ERR(reporter);
> +	}
> +	priv->reporter = reporter;
> +
> +	if (err)
> +		return err;
> +
> +	return 0;
> +}
> +
> +

Stray newlines

> diff --git a/drivers/staging/qlge/qlge_health.h b/drivers/staging/qlge/qlge_health.h
> new file mode 100644
> index 000000000000..07d3bafab845
> --- /dev/null
> +++ b/drivers/staging/qlge/qlge_health.h
> @@ -0,0 +1,2 @@
> +#include <net/devlink.h>
> +int qlge_health_create_reporters(struct qlge_devlink *priv);

I would suggest to put this in qlge.h instead of creating a new file.

> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> index 1650de13842f..b2be7f4b7dd6 100644
> --- a/drivers/staging/qlge/qlge_main.c
> +++ b/drivers/staging/qlge/qlge_main.c
> @@ -42,6 +42,7 @@
>  #include <net/ip6_checksum.h>
>  
>  #include "qlge.h"
> +#include "qlge_health.h"
>  
>  char qlge_driver_name[] = DRV_NAME;
>  const char qlge_driver_version[] = DRV_VERSION;
> @@ -4550,6 +4551,8 @@ static void ql_timer(struct timer_list *t)
>  	mod_timer(&qdev->timer, jiffies + (5 * HZ));
>  }
>  
> +static const struct devlink_ops qlge_devlink_ops;
> +
>  static int qlge_probe(struct pci_dev *pdev,
>  		      const struct pci_device_id *pci_entry)
>  {
> @@ -4557,6 +4560,13 @@ static int qlge_probe(struct pci_dev *pdev,
>  	struct ql_adapter *qdev = NULL;
>  	static int cards_found;
>  	int err = 0;
> +	struct devlink *devlink;
> +	struct qlge_devlink *qlge_dl;
> +
> +	devlink = devlink_alloc(&qlge_devlink_ops, sizeof(struct qlge_devlink));
> +	if (!devlink)
> +		return -ENOMEM;
> +	qlge_dl = devlink_priv(devlink);
>  
>  	ndev = alloc_etherdev_mq(sizeof(struct ql_adapter),
>  				 min(MAX_CPUS,
> @@ -4615,6 +4625,15 @@ static int qlge_probe(struct pci_dev *pdev,
>  		free_netdev(ndev);
>  		return err;
>  	}
> +
> +	err = devlink_register(devlink, &pdev->dev);
> +	if (err)
> +		devlink_free(devlink);

Are you sure it's safe to continue devlink init after an error here?
Again, that does not resemble usage of devlink in other drivers (ex.
bnxt).

> +
> +	qlge_health_create_reporters(qlge_dl);
> +	qlge_dl->qdev = qdev;
> +	qlge_dl->ndev = ndev;
> +	qdev->devlink = qlge_dl;
>  	/* Start up the timer to trigger EEH if
>  	 * the bus goes dead
>  	 */
> @@ -4647,6 +4666,8 @@ static void qlge_remove(struct pci_dev *pdev)
>  	unregister_netdev(ndev);
>  	ql_release_all(pdev);
>  	pci_disable_device(pdev);
> +	devlink_unregister(priv_to_devlink(qdev->devlink));
> +	devlink_health_reporter_destroy(qdev->devlink->reporter);

Isn't the order of those two calls mixed up?

>  	free_netdev(ndev);
>  }
>  
> -- 
> 2.27.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

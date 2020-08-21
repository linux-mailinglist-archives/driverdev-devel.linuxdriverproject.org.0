Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 682EC24CB26
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 05:08:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 58C5086990;
	Fri, 21 Aug 2020 03:08:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id noIhumqTMrVW; Fri, 21 Aug 2020 03:08:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88A8E86A2F;
	Fri, 21 Aug 2020 03:08:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA8DB1BF34B
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 03:08:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C6C6086990
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 03:08:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WVowhYkKtVj8 for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 03:08:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E37BB8654C
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 03:08:36 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id bh1so232363plb.12
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 20:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=QovNeBLcz/7U1y28iI074IyoegagSi9Pk7ZasyQM9Xw=;
 b=lNPUrNxNIaN3d3qmYG+uNNh2/bZ3UBB//1VGnslfwd0JVUdirtZRbkGgbX/XPYjp26
 V0l2dZNTpmS1pbrUtkcYZtoHPYwp3vLzRclaeAj7BE2MTdGAT6rOvfjZFSQOpiw06Xb1
 i51Lw90UQtUYgTCPDgnglSmFkGhfYQQJ91ZTYGfcZKmLZh8nNFyq9mT123e+xahr5ltO
 XvsC5FXg6KZeWtrvDOILcbMF5HlM9RphG8jBRzV2iA7CZqH9jH/cYf8c8++pewsJ8Z9O
 Qo7kjxC32v1ccbz9gg6gw19Ljx6uPo8jvprZxovKlh2E7g1iZhQysjxgWPlAdeC9oNPU
 cp2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QovNeBLcz/7U1y28iI074IyoegagSi9Pk7ZasyQM9Xw=;
 b=hGcLAuSCf27S/HHwoVFWpb40JeNvW/XjwQXRt76DSLxwjUTCMQZuL1xuBBUcq94Cq5
 DmFyPB2rzxYzdpIJDDdWsw+zyyC/z/M7z62z/ZMzEoETm4X5+M8VWIVJmqqXkyZ9Lcwu
 xFrzDITSBz+7LxQyMEXLQP+WoDIzBd7gaXABw9bwSiZOVpKOgeunHMFmbQ7DvnMfCYlS
 Vz87snvDePPK4o3PCUTGjpQEHH/AbMEQBuTVGyEuujLe2SKZen8rxSKkQxOoJO4Cj0U5
 zyauc4FeiHYpMs8Zhw8F29GcVA2H8U6yr4vBQCtI5VP48OoGFFG689FynD9r45pl6+Ud
 kM8w==
X-Gm-Message-State: AOAM530YkNN7lmGKYWZLDxywiK9CSyAxehNcDJfF4HrzBPeAOGRdJKH3
 zo0BidMpIizAAFxkN/P05ZE=
X-Google-Smtp-Source: ABdhPJzs3ZCyONm3LzrL803MO8Uuq2kCoUY+mP5bs4am5Kpt5047p7K/IWc6qR7/kFRpWt6rDJe/qA==
X-Received: by 2002:a17:902:bd85:: with SMTP id q5mr666244pls.99.1597979316397; 
 Thu, 20 Aug 2020 20:08:36 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id q82sm564189pfc.139.2020.08.20.20.08.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Aug 2020 20:08:35 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Fri, 21 Aug 2020 11:08:22 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [RFC 1/3] Initialize devlink health dump framework for the dlge
 driver
Message-ID: <20200821030822.huyuxa5o5tcvtv2o@Rk>
References: <20200814160601.901682-1-coiby.xu@gmail.com>
 <20200814160601.901682-2-coiby.xu@gmail.com>
 <20200816025640.GA27529@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200816025640.GA27529@f3>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 16, 2020 at 11:56:40AM +0900, Benjamin Poirier wrote:
>On 2020-08-15 00:05 +0800, Coiby Xu wrote:
>> Initialize devlink health dump framework for the dlge driver so the
>> coredump could be done via devlink.
>>
>> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>> ---
>>  drivers/staging/qlge/Makefile      |  2 +-
>>  drivers/staging/qlge/qlge.h        |  9 +++++++
>>  drivers/staging/qlge/qlge_health.c | 43 ++++++++++++++++++++++++++++++
>>  drivers/staging/qlge/qlge_health.h |  2 ++
>>  drivers/staging/qlge/qlge_main.c   | 21 +++++++++++++++
>>  5 files changed, 76 insertions(+), 1 deletion(-)
>>  create mode 100644 drivers/staging/qlge/qlge_health.c
>>  create mode 100644 drivers/staging/qlge/qlge_health.h
>>
>> diff --git a/drivers/staging/qlge/Makefile b/drivers/staging/qlge/Makefile
>> index 1dc2568e820c..0a1e4c8dd546 100644
>> --- a/drivers/staging/qlge/Makefile
>> +++ b/drivers/staging/qlge/Makefile
>> @@ -5,4 +5,4 @@
>>
>>  obj-$(CONFIG_QLGE) += qlge.o
>>
>> -qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o
>> +qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o qlge_health.o
>> diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
>> index fc8c5ca8935d..055ded6dab60 100644
>> --- a/drivers/staging/qlge/qlge.h
>> +++ b/drivers/staging/qlge/qlge.h
>> @@ -2061,6 +2061,14 @@ struct nic_operations {
>>  	int (*port_initialize) (struct ql_adapter *);
>>  };
>>
>
>This patch doesn't apply over the latest staging tree. I think your tree
>is missing commit d923bb6bf508 ("staging: qlge: qlge.h: Function
>definition arguments should have names.")

Thank you for applying the patch to test it! I had incorrect
understanding about the word "RFC" and didn't do a rebase onto
the latest staging tree.

>
>> +
>> +
>> +struct qlge_devlink {
>> +        struct ql_adapter *qdev;
>> +        struct net_device *ndev;
>
>I don't have experience implementing devlink callbacks but looking at
>some other devlink users (mlx4, ionic, ice), all of them use devlink
>priv space for their main private structure. That would be struct
>ql_adapter in this case. Is there a good reason to stray from that
>pattern?
>
>> +        struct devlink_health_reporter *reporter;
>> +};
>> +
>>  /*
>>   * The main Adapter structure definition.
>>   * This structure has all fields relevant to the hardware.
>> @@ -2078,6 +2086,7 @@ struct ql_adapter {
>>  	struct pci_dev *pdev;
>>  	struct net_device *ndev;	/* Parent NET device */
>>
>> +	struct qlge_devlink *devlink;
>>  	/* Hardware information */
>>  	u32 chip_rev_id;
>>  	u32 fw_rev_id;
>> diff --git a/drivers/staging/qlge/qlge_health.c b/drivers/staging/qlge/qlge_health.c
>> new file mode 100644
>> index 000000000000..292f6b1827e1
>> --- /dev/null
>> +++ b/drivers/staging/qlge/qlge_health.c
>> @@ -0,0 +1,43 @@
>> +#include "qlge.h"
>> +#include "qlge_health.h"
>> +
>> +static int
>> +qlge_reporter_coredump(struct devlink_health_reporter *reporter,
>> +			struct devlink_fmsg *fmsg, void *priv_ctx,
>> +			struct netlink_ext_ack *extack)
>> +{
>> +	return 0;
>> +}
>> +
>> +static const struct devlink_health_reporter_ops qlge_reporter_ops = {
>> +		.name = "dummy",
>> +		.dump = qlge_reporter_coredump,
>> +};
>
>I think
>	select NET_DEVLINK
>should be added to drivers/staging/qlge/Kconfig

Thank you for reminding me!

>
>> +
>> +int qlge_health_create_reporters(struct qlge_devlink *priv)
>> +{
>> +	int err;
>> +
>> +	struct devlink_health_reporter *reporter;
>> +	struct devlink *devlink;
>> +
>> +	devlink = priv_to_devlink(priv);
>> +	reporter =
>> +		devlink_health_reporter_create(devlink, &qlge_reporter_ops,
>> +					       0,
>> +					       priv);
>> +	if (IS_ERR(reporter)) {
>> +		netdev_warn(priv->ndev,
>> +			    "Failed to create reporter, err = %ld\n",
>> +			    PTR_ERR(reporter));
>> +		return PTR_ERR(reporter);
>> +	}
>> +	priv->reporter = reporter;
>> +
>> +	if (err)
>> +		return err;
>> +
>> +	return 0;
>> +}
>> +
>> +
>
>Stray newlines

Will fix it in v1.

>
>> diff --git a/drivers/staging/qlge/qlge_health.h b/drivers/staging/qlge/qlge_health.h
>> new file mode 100644
>> index 000000000000..07d3bafab845
>> --- /dev/null
>> +++ b/drivers/staging/qlge/qlge_health.h
>> @@ -0,0 +1,2 @@
>> +#include <net/devlink.h>
>> +int qlge_health_create_reporters(struct qlge_devlink *priv);
>
>I would suggest to put this in qlge.h instead of creating a new file.

Although there are only two lines for now, is it possible qlge will add
more devlink code? If that's the case, a file to single out these code
is necessary as is the same to some other drivers,

     $ find drivers -name *health*.h
     drivers/net/ethernet/mellanox/mlx5/core/en/health.h

     $ find drivers -name *devlink*.h
     drivers/net/ethernet/huawei/hinic/hinic_devlink.h
     drivers/net/ethernet/mellanox/mlx5/core/devlink.h
     drivers/net/ethernet/mellanox/mlx5/core/en/devlink.h
     drivers/net/ethernet/intel/ice/ice_devlink.h
     drivers/net/ethernet/pensando/ionic/ionic_devlink.h
     drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h

>
>> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
>> index 1650de13842f..b2be7f4b7dd6 100644
>> --- a/drivers/staging/qlge/qlge_main.c
>> +++ b/drivers/staging/qlge/qlge_main.c
>> @@ -42,6 +42,7 @@
>>  #include <net/ip6_checksum.h>
>>
>>  #include "qlge.h"
>> +#include "qlge_health.h"
>>
>>  char qlge_driver_name[] = DRV_NAME;
>>  const char qlge_driver_version[] = DRV_VERSION;
>> @@ -4550,6 +4551,8 @@ static void ql_timer(struct timer_list *t)
>>  	mod_timer(&qdev->timer, jiffies + (5 * HZ));
>>  }
>>
>> +static const struct devlink_ops qlge_devlink_ops;
>> +
>>  static int qlge_probe(struct pci_dev *pdev,
>>  		      const struct pci_device_id *pci_entry)
>>  {
>> @@ -4557,6 +4560,13 @@ static int qlge_probe(struct pci_dev *pdev,
>>  	struct ql_adapter *qdev = NULL;
>>  	static int cards_found;
>>  	int err = 0;
>> +	struct devlink *devlink;
>> +	struct qlge_devlink *qlge_dl;
>> +
>> +	devlink = devlink_alloc(&qlge_devlink_ops, sizeof(struct qlge_devlink));
>> +	if (!devlink)
>> +		return -ENOMEM;
>> +	qlge_dl = devlink_priv(devlink);
>>
>>  	ndev = alloc_etherdev_mq(sizeof(struct ql_adapter),
>>  				 min(MAX_CPUS,
>> @@ -4615,6 +4625,15 @@ static int qlge_probe(struct pci_dev *pdev,
>>  		free_netdev(ndev);
>>  		return err;
>>  	}
>> +
>> +	err = devlink_register(devlink, &pdev->dev);
>> +	if (err)
>> +		devlink_free(devlink);
>
>Are you sure it's safe to continue devlink init after an error here?
>Again, that does not resemble usage of devlink in other drivers (ex.
>bnxt).

Thank you for pointing out my neglect!

>
>> +
>> +	qlge_health_create_reporters(qlge_dl);
>> +	qlge_dl->qdev = qdev;
>> +	qlge_dl->ndev = ndev;
>> +	qdev->devlink = qlge_dl;
>>  	/* Start up the timer to trigger EEH if
>>  	 * the bus goes dead
>>  	 */
>> @@ -4647,6 +4666,8 @@ static void qlge_remove(struct pci_dev *pdev)
>>  	unregister_netdev(ndev);
>>  	ql_release_all(pdev);
>>  	pci_disable_device(pdev);
>> +	devlink_unregister(priv_to_devlink(qdev->devlink));
>> +	devlink_health_reporter_destroy(qdev->devlink->reporter);
>
>Isn't the order of those two calls mixed up?

I haven't studied the code to figure out why but other drivers also
use the same order.
>
>>  	free_netdev(ndev);
>>  }
>>
>> --
>> 2.27.0
>>

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E27287F68
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 02:12:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F0D987684;
	Fri,  9 Oct 2020 00:12:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BwzV-HPLh8XW; Fri,  9 Oct 2020 00:12:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80BD087674;
	Fri,  9 Oct 2020 00:12:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F2E31BF396
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 00:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3BD0C86CA6
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 00:12:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aE5uFAA-jt3B for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 00:12:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0374C86C06
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 00:12:53 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 144so5349071pfb.4
 for <devel@driverdev.osuosl.org>; Thu, 08 Oct 2020 17:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tDCoNYwagkzJSr2QDS3ZkDLTKptDhAuMhwpgxkIv1zQ=;
 b=M3a4uGNM6VSWuB00vxUKAsP9geJcLDYmn+gH+hVpKdFgbR15R3knFzX+t9sQhc0IEL
 NNv1TSx8eG0DuAzcnPllxd9EDoDwRavAkl0LKLFKgPvlSINGmjp6VRI9f7KVuzXm+C8t
 9yqeqUB/fALfA++aU240d+pnqCw7P6WIc7OSTN/VLSPJjdRSFfXFnf4AiQQJmxqAxl9k
 uTwPBec9xBseWaJ14RIEP/kTnsbj+BpON+mNZWftJLzFrg2yaeP3chuBQlnHVU5Tbfyl
 Ux4AZbfFGsHaWl0WeWz0/qItcPJQeyvd+tYsa91Qj5QikOvBafE7APOR8zPWU1wWRFpl
 83IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tDCoNYwagkzJSr2QDS3ZkDLTKptDhAuMhwpgxkIv1zQ=;
 b=CCOqw8iJDw0At+si3VK5b/s9wCnjxYhhm8XSFusNHdLnBHcDIZcI3fG5K5RCZgfhvy
 KO1ADxU9KJhUAS3cIbr4MSNCR80UCY1Oce5dBmVTaHDs4tgc4037bLWDktjcK2agGxyo
 PiymLUORtwJI6wSlGEOEpzJV1fMYqR9q0xN9vRLlF9PVDwGCHvt117d8iOOnCtvfXjKW
 InI9jlsOAX2ANbUw7l99/5f5C+ADBHXniuYsGFhcRLLXZF/hmTnhxnpDdw5UkATeKW4R
 sg/5o5BI2PEFKZ/7WNRZIva3N8bpwXe6G8NeJDseCgDALZ20ZRO3z6eQPGLoYkNaPpnm
 sgJg==
X-Gm-Message-State: AOAM533FfQkVZnmlvHuHcfG1KB3Bg+xuiKl6pv5H5qyAUoCoh9R2lZdL
 vimFu5swNuSWbmtHzrVtJZg=
X-Google-Smtp-Source: ABdhPJzZqiLRnLN4JBeJPUbDQtcgNNU7byvp64iKGhnvi8gO2Z3NvDKc+MYLYLmjM64ga5vtW7YuMg==
X-Received: by 2002:a63:ff5d:: with SMTP id s29mr1240282pgk.442.1602202372414; 
 Thu, 08 Oct 2020 17:12:52 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id a9sm8945275pjm.40.2020.10.08.17.12.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 17:12:52 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Fri, 9 Oct 2020 08:12:45 +0800
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v1 1/6] staging: qlge: Initialize devlink health dump
 framework for the dlge driver
Message-ID: <20201009001245.dhtyvhbkdpmaadng@Rk>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-2-coiby.xu@gmail.com>
 <20201008133142.GB1042@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008133142.GB1042@kadam>
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
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 08, 2020 at 04:31:42PM +0300, Dan Carpenter wrote:
>On Thu, Oct 08, 2020 at 07:58:03PM +0800, Coiby Xu wrote:
>> Initialize devlink health dump framework for the dlge driver so the
>> coredump could be done via devlink.
>>
>> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>> ---
>>  drivers/staging/qlge/Kconfig        |  1 +
>>  drivers/staging/qlge/Makefile       |  2 +-
>>  drivers/staging/qlge/qlge.h         |  9 +++++++
>>  drivers/staging/qlge/qlge_devlink.c | 38 +++++++++++++++++++++++++++++
>>  drivers/staging/qlge/qlge_devlink.h |  8 ++++++
>>  drivers/staging/qlge/qlge_main.c    | 28 +++++++++++++++++++++
>>  6 files changed, 85 insertions(+), 1 deletion(-)
>>  create mode 100644 drivers/staging/qlge/qlge_devlink.c
>>  create mode 100644 drivers/staging/qlge/qlge_devlink.h
>>
>> diff --git a/drivers/staging/qlge/Kconfig b/drivers/staging/qlge/Kconfig
>> index a3cb25a3ab80..6d831ed67965 100644
>> --- a/drivers/staging/qlge/Kconfig
>> +++ b/drivers/staging/qlge/Kconfig
>> @@ -3,6 +3,7 @@
>>  config QLGE
>>  	tristate "QLogic QLGE 10Gb Ethernet Driver Support"
>>  	depends on ETHERNET && PCI
>> +	select NET_DEVLINK
>>  	help
>>  	This driver supports QLogic ISP8XXX 10Gb Ethernet cards.
>>
>> diff --git a/drivers/staging/qlge/Makefile b/drivers/staging/qlge/Makefile
>> index 1dc2568e820c..07c1898a512e 100644
>> --- a/drivers/staging/qlge/Makefile
>> +++ b/drivers/staging/qlge/Makefile
>> @@ -5,4 +5,4 @@
>>
>>  obj-$(CONFIG_QLGE) += qlge.o
>>
>> -qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o
>> +qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o qlge_devlink.o
>> diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
>> index b295990e361b..290e754450c5 100644
>> --- a/drivers/staging/qlge/qlge.h
>> +++ b/drivers/staging/qlge/qlge.h
>> @@ -2060,6 +2060,14 @@ struct nic_operations {
>>  	int (*port_initialize)(struct ql_adapter *qdev);
>>  };
>>
>> +
>> +
>
>Having multiple blank lines in a row leads to a static checker warning.
>Please run `checkpatch.pl --strict` over your patches.
>
>> +struct qlge_devlink {
>> +        struct ql_adapter *qdev;
>> +        struct net_device *ndev;
>> +        struct devlink_health_reporter *reporter;
>> +};
>> +
>>  /*
>>   * The main Adapter structure definition.
>>   * This structure has all fields relevant to the hardware.
>> @@ -2077,6 +2085,7 @@ struct ql_adapter {
>>  	struct pci_dev *pdev;
>>  	struct net_device *ndev;	/* Parent NET device */
>>
>> +	struct qlge_devlink *ql_devlink;
>>  	/* Hardware information */
>>  	u32 chip_rev_id;
>>  	u32 fw_rev_id;
>> diff --git a/drivers/staging/qlge/qlge_devlink.c b/drivers/staging/qlge/qlge_devlink.c
>> new file mode 100644
>> index 000000000000..aa45e7e368c0
>> --- /dev/null
>> +++ b/drivers/staging/qlge/qlge_devlink.c
>> @@ -0,0 +1,38 @@
>> +#include "qlge.h"
>> +#include "qlge_devlink.h"
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
>
>Indented too far.
>
>> +};
>> +
>> +int qlge_health_create_reporters(struct qlge_devlink *priv)
>> +{
>> +	int err;
>> +
>
>No blanks in the middle of declarations.
>
>> +	struct devlink_health_reporter *reporter;
>> +	struct devlink *devlink;
>
>Generally this driver declares variables in "Reverse Christmas Tree"
>order.  The names are orderred by the length of the line from longest
>to shortest.
>
>	type long_name;
>	type medium;
>	type short;
>
>> +
>> +	devlink = priv_to_devlink(priv);
>> +	reporter =
>> +		devlink_health_reporter_create(devlink, &qlge_reporter_ops,
>> +					       0,
>> +					       priv);
>
>Break this up like so:
>
>	reporter = devlink_health_reporter_create(devlink, &qlge_reporter_ops,
>						  0, priv);
>
>
>> +	if (IS_ERR(reporter)) {
>> +		netdev_warn(priv->ndev,
>> +			    "Failed to create reporter, err = %ld\n",
>> +			    PTR_ERR(reporter));
>> +		return PTR_ERR(reporter);
>
>No point in returning an error if the caller doesn't check?
>
>> +	}
>> +	priv->reporter = reporter;
>> +
>> +	return err;
>
>err is uninitialized.  "return 0;"
>
>> +}
>> diff --git a/drivers/staging/qlge/qlge_devlink.h b/drivers/staging/qlge/qlge_devlink.h
>> new file mode 100644
>> index 000000000000..c91f7a29e805
>> --- /dev/null
>> +++ b/drivers/staging/qlge/qlge_devlink.h
>> @@ -0,0 +1,8 @@
>> +#ifndef QLGE_DEVLINK_H
>> +#define QLGE_DEVLINK_H
>> +
>> +#include <net/devlink.h>
>> +
>> +int qlge_health_create_reporters(struct qlge_devlink *priv);
>> +
>> +#endif /* QLGE_DEVLINK_H */
>> diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
>> index 27da386f9d87..135225530e51 100644
>> --- a/drivers/staging/qlge/qlge_main.c
>> +++ b/drivers/staging/qlge/qlge_main.c
>> @@ -42,6 +42,7 @@
>>  #include <net/ip6_checksum.h>
>>
>>  #include "qlge.h"
>> +#include "qlge_devlink.h"
>>
>>  char qlge_driver_name[] = DRV_NAME;
>>  const char qlge_driver_version[] = DRV_VERSION;
>> @@ -4549,6 +4550,8 @@ static void ql_timer(struct timer_list *t)
>>  	mod_timer(&qdev->timer, jiffies + (5 * HZ));
>>  }
>>
>> +static const struct devlink_ops qlge_devlink_ops;
>> +
>>  static int qlge_probe(struct pci_dev *pdev,
>>  		      const struct pci_device_id *pci_entry)
>>  {
>> @@ -4556,6 +4559,13 @@ static int qlge_probe(struct pci_dev *pdev,
>>  	struct ql_adapter *qdev = NULL;
>>  	static int cards_found;
>>  	int err = 0;
>> +	struct devlink *devlink;
>> +	struct qlge_devlink *ql_devlink;
>> +
>> +	devlink = devlink_alloc(&qlge_devlink_ops, sizeof(struct qlge_devlink));
>> +	if (!devlink)
>> +		return -ENOMEM;
>> +	ql_devlink = devlink_priv(devlink);
>>
>>  	ndev = alloc_etherdev_mq(sizeof(struct ql_adapter),
>>  				 min(MAX_CPUS,
>> @@ -4614,6 +4624,16 @@ static int qlge_probe(struct pci_dev *pdev,
>>  		free_netdev(ndev);
>>  		return err;
>>  	}
>> +
>> +	err = devlink_register(devlink, &pdev->dev);
>> +	if (err) {
>> +		goto devlink_free;
>> +	}
>
>Checkpatch warning.
>

Thank you for the reminding!

>regards,
>dan carpenter
>

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

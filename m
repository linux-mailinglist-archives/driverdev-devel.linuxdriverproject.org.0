Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 894AD282ED8
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Oct 2020 04:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3FD1B8517C;
	Mon,  5 Oct 2020 02:33:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KMJyt9843ot3; Mon,  5 Oct 2020 02:33:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 75593848A9;
	Mon,  5 Oct 2020 02:33:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC55E1BF37B
 for <devel@linuxdriverproject.org>; Mon,  5 Oct 2020 02:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D9CA920018
 for <devel@linuxdriverproject.org>; Mon,  5 Oct 2020 02:33:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9hUkxUJXaTDP for <devel@linuxdriverproject.org>;
 Mon,  5 Oct 2020 02:33:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 057D920013
 for <devel@driverdev.osuosl.org>; Mon,  5 Oct 2020 02:33:25 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id o20so5780899pfp.11
 for <devel@driverdev.osuosl.org>; Sun, 04 Oct 2020 19:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rxRn+o7dQyUInQLLFjQtARyvoiC2XV0Mzaxu7FdfKbY=;
 b=rnUjOvGJaCq002fq+dRf+LUNBlF5G30v6I2DEXQulnH91qSNIdpguOJT7Hp3Z0wM+C
 HizxgA0fZTPubPBHVxP7bgBRQgyqXoIc6TSmaO2uduuYJ1xWB9Z2stp4mRUnt3JyouhX
 pPXSFKwozQMLCuNMQzPUougL6Dd14hz3vb0yQSq3ZpObQU8EG8Ai5Dn/X/ZVtORW40YX
 974PWZ0eDVOHYN3he5PvYslvk6L4vZQ420ryn9A6jxMvRUcigosorznzCxYVxJ4kjkKk
 9iUJfamePwguiq4c81ygGj97ToX1DWKVjWD+CB0QOR4C2eTm3bUDi60w546bXmBRr8Vw
 AcFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rxRn+o7dQyUInQLLFjQtARyvoiC2XV0Mzaxu7FdfKbY=;
 b=ByurRSEzFQVI9GrCvOc2e4oj62GP8mO9CIDOj6WW3gc83nz9rfG1vK+owKfGY3wSrE
 OgvKBV7WjMCpa/CHUgVrKlG6OAQrxW6gkMEaH3/F0FzpNqk/qvFTbd3jM2Mo5EXM9FN0
 uhOO/842Kny88fJiQQPsgbY/OZadgXhCbGb6W4ZBJWROmGN7htfAplteAWOSgzUbU4Am
 gQ8QgyfdS+VIAOI0Z+6i3/Kzb3+XPdZJ2JRsCeYFbOpW+Dfj8TXMSkOdMw1yQuqQRno8
 +tF/Uy16IN+xpU8ZhNuOmbmhECSz0YMhftaXdkSqtkRGu9e8MOJd2MUsXlIWRhk0suVm
 aG4A==
X-Gm-Message-State: AOAM531ufjB0kYPcU20FCzP+ZahPT443r4rrSBXxwScda3JnRmCbL7q3
 T/Zdz2gAAr9wh5W/ZBWXMVE=
X-Google-Smtp-Source: ABdhPJyxbrvTQke9eIOTL4cFTq21SZYJ52RwH3YBRSDbrat2INmCGPRoG5ApYJRSF91GsucyIiOpmA==
X-Received: by 2002:a63:341:: with SMTP id 62mr8448151pgd.443.1601865204481;
 Sun, 04 Oct 2020 19:33:24 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id 99sm8629921pjo.40.2020.10.04.19.33.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 04 Oct 2020 19:33:23 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Mon, 5 Oct 2020 10:33:19 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [RFC 1/3] Initialize devlink health dump framework for the dlge
 driver
Message-ID: <20201005023319.kc2nngfjeykqk7my@Rk>
References: <20200814160601.901682-1-coiby.xu@gmail.com>
 <20200814160601.901682-2-coiby.xu@gmail.com>
 <20200816025640.GA27529@f3> <20200821030822.huyuxa5o5tcvtv2o@Rk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200821030822.huyuxa5o5tcvtv2o@Rk>
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

On Fri, Aug 21, 2020 at 11:08:22AM +0800, Coiby Xu wrote:
>On Sun, Aug 16, 2020 at 11:56:40AM +0900, Benjamin Poirier wrote:
>>On 2020-08-15 00:05 +0800, Coiby Xu wrote:
>>>Initialize devlink health dump framework for the dlge driver so the
>>>coredump could be done via devlink.
>>>
>>>Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>>>---
>>> drivers/staging/qlge/Makefile      |  2 +-
>>> drivers/staging/qlge/qlge.h        |  9 +++++++
>>> drivers/staging/qlge/qlge_health.c | 43 ++++++++++++++++++++++++++++++
>>> drivers/staging/qlge/qlge_health.h |  2 ++
>>> drivers/staging/qlge/qlge_main.c   | 21 +++++++++++++++
>>> 5 files changed, 76 insertions(+), 1 deletion(-)
>>> create mode 100644 drivers/staging/qlge/qlge_health.c
>>> create mode 100644 drivers/staging/qlge/qlge_health.h
>>>
>>>diff --git a/drivers/staging/qlge/Makefile b/drivers/staging/qlge/Makefile
>>>index 1dc2568e820c..0a1e4c8dd546 100644
>>>--- a/drivers/staging/qlge/Makefile
>>>+++ b/drivers/staging/qlge/Makefile
>>>@@ -5,4 +5,4 @@
>>>
>>> obj-$(CONFIG_QLGE) += qlge.o
>>>
>>>-qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o
>>>+qlge-objs := qlge_main.o qlge_dbg.o qlge_mpi.o qlge_ethtool.o qlge_health.o
>>>diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
>>>index fc8c5ca8935d..055ded6dab60 100644
>>>--- a/drivers/staging/qlge/qlge.h
>>>+++ b/drivers/staging/qlge/qlge.h
>>>@@ -2061,6 +2061,14 @@ struct nic_operations {
>>> 	int (*port_initialize) (struct ql_adapter *);
>>> };
>>>
>>
>>This patch doesn't apply over the latest staging tree. I think your tree
>>is missing commit d923bb6bf508 ("staging: qlge: qlge.h: Function
>>definition arguments should have names.")
>
>Thank you for applying the patch to test it! I had incorrect
>understanding about the word "RFC" and didn't do a rebase onto
>the latest staging tree.
>
>>
>>>+
>>>+
>>>+struct qlge_devlink {
>>>+        struct ql_adapter *qdev;
>>>+        struct net_device *ndev;
>>
>>I don't have experience implementing devlink callbacks but looking at
>>some other devlink users (mlx4, ionic, ice), all of them use devlink
>>priv space for their main private structure. That would be struct
>>ql_adapter in this case. Is there a good reason to stray from that
>>pattern?
>>
>>>+        struct devlink_health_reporter *reporter;
>>>+};
>>>+
>>> /*
>>>  * The main Adapter structure definition.
>>>  * This structure has all fields relevant to the hardware.
>>>@@ -2078,6 +2086,7 @@ struct ql_adapter {
>>> 	struct pci_dev *pdev;
>>> 	struct net_device *ndev;	/* Parent NET device */
>>>
>>>+	struct qlge_devlink *devlink;
>>> 	/* Hardware information */
>>> 	u32 chip_rev_id;
>>> 	u32 fw_rev_id;
>>>diff --git a/drivers/staging/qlge/qlge_health.c b/drivers/staging/qlge/qlge_health.c
>>>new file mode 100644
>>>index 000000000000..292f6b1827e1
>>>--- /dev/null
>>>+++ b/drivers/staging/qlge/qlge_health.c
>>>@@ -0,0 +1,43 @@
>>>+#include "qlge.h"
>>>+#include "qlge_health.h"
>>>+
>>>+static int
>>>+qlge_reporter_coredump(struct devlink_health_reporter *reporter,
>>>+			struct devlink_fmsg *fmsg, void *priv_ctx,
>>>+			struct netlink_ext_ack *extack)
>>>+{
>>>+	return 0;
>>>+}
>>>+
>>>+static const struct devlink_health_reporter_ops qlge_reporter_ops = {
>>>+		.name = "dummy",
>>>+		.dump = qlge_reporter_coredump,
>>>+};
>>
>>I think
>>	select NET_DEVLINK
>>should be added to drivers/staging/qlge/Kconfig
>
>Thank you for reminding me!
>
>>
>>>+
>>>+int qlge_health_create_reporters(struct qlge_devlink *priv)
>>>+{
>>>+	int err;
>>>+
>>>+	struct devlink_health_reporter *reporter;
>>>+	struct devlink *devlink;
>>>+
>>>+	devlink = priv_to_devlink(priv);
>>>+	reporter =
>>>+		devlink_health_reporter_create(devlink, &qlge_reporter_ops,
>>>+					       0,
>>>+					       priv);
>>>+	if (IS_ERR(reporter)) {
>>>+		netdev_warn(priv->ndev,
>>>+			    "Failed to create reporter, err = %ld\n",
>>>+			    PTR_ERR(reporter));
>>>+		return PTR_ERR(reporter);
>>>+	}
>>>+	priv->reporter = reporter;
>>>+
>>>+	if (err)
>>>+		return err;
>>>+
>>>+	return 0;
>>>+}
>>>+
>>>+
>>
>>Stray newlines
>
>Will fix it in v1.
>
>>
>>>diff --git a/drivers/staging/qlge/qlge_health.h b/drivers/staging/qlge/qlge_health.h
>>>new file mode 100644
>>>index 000000000000..07d3bafab845
>>>--- /dev/null
>>>+++ b/drivers/staging/qlge/qlge_health.h
>>>@@ -0,0 +1,2 @@
>>>+#include <net/devlink.h>
>>>+int qlge_health_create_reporters(struct qlge_devlink *priv);
>>
>>I would suggest to put this in qlge.h instead of creating a new file.
>
>Although there are only two lines for now, is it possible qlge will add
>more devlink code? If that's the case, a file to single out these code
>is necessary as is the same to some other drivers,
>
>    $ find drivers -name *health*.h
>    drivers/net/ethernet/mellanox/mlx5/core/en/health.h
>
>    $ find drivers -name *devlink*.h
>    drivers/net/ethernet/huawei/hinic/hinic_devlink.h
>    drivers/net/ethernet/mellanox/mlx5/core/devlink.h
>    drivers/net/ethernet/mellanox/mlx5/core/en/devlink.h
>    drivers/net/ethernet/intel/ice/ice_devlink.h
>    drivers/net/ethernet/pensando/ionic/ionic_devlink.h
>    drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.h
>
>>
>>>diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
>>>index 1650de13842f..b2be7f4b7dd6 100644
>>>--- a/drivers/staging/qlge/qlge_main.c
>>>+++ b/drivers/staging/qlge/qlge_main.c
>>>@@ -42,6 +42,7 @@
>>> #include <net/ip6_checksum.h>
>>>
>>> #include "qlge.h"
>>>+#include "qlge_health.h"
>>>
>>> char qlge_driver_name[] = DRV_NAME;
>>> const char qlge_driver_version[] = DRV_VERSION;
>>>@@ -4550,6 +4551,8 @@ static void ql_timer(struct timer_list *t)
>>> 	mod_timer(&qdev->timer, jiffies + (5 * HZ));
>>> }
>>>
>>>+static const struct devlink_ops qlge_devlink_ops;
>>>+
>>> static int qlge_probe(struct pci_dev *pdev,
>>> 		      const struct pci_device_id *pci_entry)
>>> {
>>>@@ -4557,6 +4560,13 @@ static int qlge_probe(struct pci_dev *pdev,
>>> 	struct ql_adapter *qdev = NULL;
>>> 	static int cards_found;
>>> 	int err = 0;
>>>+	struct devlink *devlink;
>>>+	struct qlge_devlink *qlge_dl;
>>>+
>>>+	devlink = devlink_alloc(&qlge_devlink_ops, sizeof(struct qlge_devlink));
>>>+	if (!devlink)
>>>+		return -ENOMEM;
>>>+	qlge_dl = devlink_priv(devlink);
>>>
>>> 	ndev = alloc_etherdev_mq(sizeof(struct ql_adapter),
>>> 				 min(MAX_CPUS,
>>>@@ -4615,6 +4625,15 @@ static int qlge_probe(struct pci_dev *pdev,
>>> 		free_netdev(ndev);
>>> 		return err;
>>> 	}
>>>+
>>>+	err = devlink_register(devlink, &pdev->dev);
>>>+	if (err)
>>>+		devlink_free(devlink);
>>
>>Are you sure it's safe to continue devlink init after an error here?
>>Again, that does not resemble usage of devlink in other drivers (ex.
>>bnxt).
>
>Thank you for pointing out my neglect!
>
>>
>>>+
>>>+	qlge_health_create_reporters(qlge_dl);
>>>+	qlge_dl->qdev = qdev;
>>>+	qlge_dl->ndev = ndev;
>>>+	qdev->devlink = qlge_dl;
>>> 	/* Start up the timer to trigger EEH if
>>> 	 * the bus goes dead
>>> 	 */
>>>@@ -4647,6 +4666,8 @@ static void qlge_remove(struct pci_dev *pdev)
>>> 	unregister_netdev(ndev);
>>> 	ql_release_all(pdev);
>>> 	pci_disable_device(pdev);
>>>+	devlink_unregister(priv_to_devlink(qdev->devlink));
>>>+	devlink_health_reporter_destroy(qdev->devlink->reporter);
>>
>>Isn't the order of those two calls mixed up?
>
>I haven't studied the code to figure out why but other drivers also
>use the same order.

Today I re-visit this issue and find all exiting drivers except for
drivers/net/ethernet/mellanox/mlx5/core and drivers/net/ethernet/huawei/hinic
call devlink_health_reporter_destroy before devlink_unregister. I guess
I happened to look at mlx5 and hinic as the examples before.

I also examine devlink_unregister and devlink_health_reporter_destroy
and find they devlink_health_reporter_destroy doesn't need struct devlink.

But I will change the order in v1 anyway.

>>
>>> 	free_netdev(ndev);
>>> }
>>>
>>>--
>>>2.27.0
>>>
>
>--
>Best regards,
>Coiby

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

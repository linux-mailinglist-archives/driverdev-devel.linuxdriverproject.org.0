Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2CF28E104
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Oct 2020 15:09:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4667088087;
	Wed, 14 Oct 2020 13:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qMfd7GU6mMF6; Wed, 14 Oct 2020 13:09:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DEE098807C;
	Wed, 14 Oct 2020 13:09:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A44261BF42E
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 13:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A09DF87D7E
 for <devel@linuxdriverproject.org>; Wed, 14 Oct 2020 13:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OFGm-plxW5mZ for <devel@linuxdriverproject.org>;
 Wed, 14 Oct 2020 13:08:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EE4A887D7C
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 13:08:58 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09ECsJ0p044174;
 Wed, 14 Oct 2020 13:08:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=q6thQZBRRq+1PTM392w9Mekv2vxKvbBynstiWkLboYI=;
 b=vl2LLDEYIu/tkteUj4gO/wWNsUoP4B3DDaePMhuxHydGPsJhz8HL1y3aayN+oRTMxkRf
 OB/OR51Yc9Q71vOOwnC0gr0z1ixvg1Mi11AYpVpcnVtB1GLeKUrwS67DzWpg1Lxee+2T
 n8YRyZdo//k7F3DSnzNG0G8UEF5/9X4mNQwtMgUOAlo+swpJ7NkqkzeHsh30Po91y+Mt
 0rRZH0w5rFpi2EKWY8S7qHH2/38ta9tj3us4aS+JOYIdmPX3cpNVW4thyH3BeA1IRqQM
 GuDpxmYHngnUXzLQ6l0YrWzty+2ZRq2aDe3txvzcbX41q8716wWTmxp0fFr5umFyE8Ke Mg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 3434wkqbde-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 14 Oct 2020 13:08:57 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09ECpZNm179520;
 Wed, 14 Oct 2020 13:08:56 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 344by3knj4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 14 Oct 2020 13:08:56 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 09ED8stV025276;
 Wed, 14 Oct 2020 13:08:54 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 14 Oct 2020 06:08:54 -0700
Date: Wed, 14 Oct 2020 16:08:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Coiby Xu <coiby.xu@gmail.com>
Subject: Re: [PATCH v2 2/7] staging: qlge: Initialize devlink health dump
 framework
Message-ID: <20201014130846.GU1042@kadam>
References: <20201014104306.63756-1-coiby.xu@gmail.com>
 <20201014104306.63756-3-coiby.xu@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201014104306.63756-3-coiby.xu@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9773
 signatures=668681
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0
 suspectscore=2 mlxscore=0 malwarescore=0 adultscore=0 bulkscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010140093
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9773
 signatures=668681
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 mlxscore=0
 malwarescore=0 phishscore=0 suspectscore=2 impostorscore=0 clxscore=1011
 spamscore=0 priorityscore=1501 bulkscore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010140093
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
Cc: devel@driverdev.osuosl.org,
 Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 "supporter:QLOGIC QLGE 10Gb ETHERNET DRIVER" <GR-Linux-NIC-Dev@marvell.com>,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shung-Hsi Yu <shung-hsi.yu@suse.com>, open list <linux-kernel@vger.kernel.org>,
 Benjamin Poirier <benjamin.poirier@gmail.com>,
 "open list:QLOGIC QLGE 10Gb ETHERNET DRIVER" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 14, 2020 at 06:43:01PM +0800, Coiby Xu wrote:
>  static int qlge_probe(struct pci_dev *pdev,
>  		      const struct pci_device_id *pci_entry)
>  {
>  	struct net_device *ndev = NULL;
>  	struct qlge_adapter *qdev = NULL;
> +	struct devlink *devlink;
>  	static int cards_found;
>  	int err = 0;
>  
> -	ndev = alloc_etherdev_mq(sizeof(struct qlge_adapter),
> +	devlink = devlink_alloc(&qlge_devlink_ops, sizeof(struct qlge_adapter));
> +	if (!devlink)
> +		return -ENOMEM;
> +
> +	qdev = devlink_priv(devlink);
> +
> +	ndev = alloc_etherdev_mq(sizeof(struct qlge_netdev_priv),
>  				 min(MAX_CPUS,
>  				     netif_get_num_default_rss_queues()));
>  	if (!ndev)
> -		return -ENOMEM;
> +		goto devlink_free;
>  
> -	err = qlge_init_device(pdev, ndev, cards_found);
> -	if (err < 0) {
> -		free_netdev(ndev);
> -		return err;

In the old code, if qlge_init_device() fails then it frees "ndev".

> -	}
> +	qdev->ndev = ndev;
> +	err = qlge_init_device(pdev, qdev, cards_found);
> +	if (err < 0)
> +		goto devlink_free;

But the patch introduces a new resource leak.

>  
> -	qdev = netdev_priv(ndev);
>  	SET_NETDEV_DEV(ndev, &pdev->dev);
>  	ndev->hw_features = NETIF_F_SG |
>  		NETIF_F_IP_CSUM |
> @@ -4611,8 +4619,14 @@ static int qlge_probe(struct pci_dev *pdev,
>  		qlge_release_all(pdev);
>  		pci_disable_device(pdev);
>  		free_netdev(ndev);
> -		return err;
> +		goto devlink_free;
>  	}
> +
> +	err = devlink_register(devlink, &pdev->dev);
> +	if (err)
> +		goto devlink_free;
> +
> +	qlge_health_create_reporters(qdev);
>  	/* Start up the timer to trigger EEH if
>  	 * the bus goes dead
>  	 */
> @@ -4623,6 +4637,10 @@ static int qlge_probe(struct pci_dev *pdev,
>  	atomic_set(&qdev->lb_count, 0);
>  	cards_found++;
>  	return 0;
> +
> +devlink_free:
> +	devlink_free(devlink);
> +	return err;
>  }

The best way to write error handling code is keep tracke of the most
recent allocation which was allocated successfully.

	one = alloc();
	if (!one)
		return -ENOMEM;  //  <-- nothing allocated successfully

	two = alloc();
	if (!two) {
		ret = -ENOMEM;
		goto free_one; // <-- one was allocated successfully
                               // Notice that the label name says what
			       // the goto does.
	}

	three = alloc();
	if (!three) {
		ret = -ENOMEM;
		goto free_two; // <-- two allocated, two freed.
	}

	...

	return 0;

free_two:
	free(two);
free_one:
	free(one);

	return ret;

In the old code qlge_probe() freed things before returning, and that's
fine if there is only two allocations in the function but when there are
three or more allocations, then use gotos to unwind.

Ideally there would be a ql_deinit_device() function to mirror the
ql_init_device() function.  The ql_init_device() is staging quality
code with leaks and bad label names.  It should be re-written to free
things one step at a time instead of calling ql_release_all().

Anyway, let's not introduce new leaks at least.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

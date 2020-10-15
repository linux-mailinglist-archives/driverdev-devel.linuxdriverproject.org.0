Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4B928EC3B
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Oct 2020 06:26:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0CD3C2E601;
	Thu, 15 Oct 2020 04:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9fIhjWE-AW05; Thu, 15 Oct 2020 04:26:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4A1C72E603;
	Thu, 15 Oct 2020 04:26:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8ED61BF31D
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 04:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DFD4C88787
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 04:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id roLwywk4zQKr for <devel@linuxdriverproject.org>;
 Thu, 15 Oct 2020 04:26:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5B5C488704
 for <devel@driverdev.osuosl.org>; Thu, 15 Oct 2020 04:26:49 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 10so1209636pfp.5
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 21:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KmLWiTcOmmjLTrrn22jVJ7/COvI0q5pT3DXtKHVvFIE=;
 b=ijgJr+7FId4/CSIH0DhfVqvliBZfLgMpxavEJhtmQyKe9XhvGbVbvKBvUQYqiJMn7m
 qm+7+49Dxk4/H93QEbq8xiavqCI+D69P58TdgaO5nTnymMNpfJLXpADSOtLDHNEyP6yo
 XW86eNoxcWAyIKXjxAkKXuoElVXnLZw0bHTWLtU8N4el9qiyzZipm5DJH6+HNG8nuYYL
 Tl/46pz7XAdDDIeyDvVCa5XHrClmKjCuZ2GtrB8wvqiHaOh64Lx+mbVq03v2EJzxLeuG
 5f2okgLxmC7/FfB4KQyg0jceESNdLFqg2GE8BmsGC5GX97UdYE2ce5iFso207Tl8BU5N
 zaNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KmLWiTcOmmjLTrrn22jVJ7/COvI0q5pT3DXtKHVvFIE=;
 b=Vnvi46r4XF9BgOULF8IhHV4NGaEMcib/Px18t40amdQWQOobRdLZDb52I1QDwQNSYg
 SUZGiEvUMq+j13liV5LGUdsnV8cBBMopwOzmlACX+FP/AZXfNTIaugJ6kP71pDJ2vEBA
 EcZNcWYtOB6Mwi+ObYf1ZTLEEc9PSSsX0ExtAI0TiqOzTXT22X1QrbQqIeXh89wkkLXP
 Co0AoeqPaMKaAnq8w3HGqiYGA0RE7z6VtHvsDNKjhWxzYFBtOm9+xkhsZ6Y8BaPqSPJt
 RHZDm7wfx2TodkihDuGT7WXT/nJNuyGI9bh9voJR4QDiPp5LmisCYIRTIwlug7D1QORG
 AwPA==
X-Gm-Message-State: AOAM531wbuIjMLeNT+aN7aGbgleo0SsC41t/CUuDwWzVOhvCvUhHuSR8
 CzBPR9Wmt2aWtkKSrOieVQY=
X-Google-Smtp-Source: ABdhPJzQF0FlImqo4paPN4ynz906WpQe7uA64b1AAfdEzPEr6qnDf5YDXl1m1JHv91i5TplUdvqpLA==
X-Received: by 2002:a63:df42:: with SMTP id h2mr1927869pgj.239.1602736008980; 
 Wed, 14 Oct 2020 21:26:48 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id g14sm1346060pfo.17.2020.10.14.21.26.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 21:26:48 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Thu, 15 Oct 2020 12:22:08 +0800
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 2/7] staging: qlge: Initialize devlink health dump
 framework
Message-ID: <20201015042208.otne7sizy2bj2on6@Rk>
References: <20201014104306.63756-1-coiby.xu@gmail.com>
 <20201014104306.63756-3-coiby.xu@gmail.com>
 <20201014130846.GU1042@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201014130846.GU1042@kadam>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 14, 2020 at 04:08:46PM +0300, Dan Carpenter wrote:
>On Wed, Oct 14, 2020 at 06:43:01PM +0800, Coiby Xu wrote:
>>  static int qlge_probe(struct pci_dev *pdev,
>>  		      const struct pci_device_id *pci_entry)
>>  {
>>  	struct net_device *ndev = NULL;
>>  	struct qlge_adapter *qdev = NULL;
>> +	struct devlink *devlink;
>>  	static int cards_found;
>>  	int err = 0;
>>
>> -	ndev = alloc_etherdev_mq(sizeof(struct qlge_adapter),
>> +	devlink = devlink_alloc(&qlge_devlink_ops, sizeof(struct qlge_adapter));
>> +	if (!devlink)
>> +		return -ENOMEM;
>> +
>> +	qdev = devlink_priv(devlink);
>> +
>> +	ndev = alloc_etherdev_mq(sizeof(struct qlge_netdev_priv),
>>  				 min(MAX_CPUS,
>>  				     netif_get_num_default_rss_queues()));
>>  	if (!ndev)
>> -		return -ENOMEM;
>> +		goto devlink_free;
>>
>> -	err = qlge_init_device(pdev, ndev, cards_found);
>> -	if (err < 0) {
>> -		free_netdev(ndev);
>> -		return err;
>
>In the old code, if qlge_init_device() fails then it frees "ndev".
>
>> -	}
>> +	qdev->ndev = ndev;
>> +	err = qlge_init_device(pdev, qdev, cards_found);
>> +	if (err < 0)
>> +		goto devlink_free;
>
>But the patch introduces a new resource leak.

Thank you for spotting this issue!

>
>>
>> -	qdev = netdev_priv(ndev);
>>  	SET_NETDEV_DEV(ndev, &pdev->dev);
>>  	ndev->hw_features = NETIF_F_SG |
>>  		NETIF_F_IP_CSUM |
>> @@ -4611,8 +4619,14 @@ static int qlge_probe(struct pci_dev *pdev,
>>  		qlge_release_all(pdev);
>>  		pci_disable_device(pdev);
>>  		free_netdev(ndev);
>> -		return err;
>> +		goto devlink_free;
>>  	}
>> +
>> +	err = devlink_register(devlink, &pdev->dev);
>> +	if (err)
>> +		goto devlink_free;
>> +
>> +	qlge_health_create_reporters(qdev);
>>  	/* Start up the timer to trigger EEH if
>>  	 * the bus goes dead
>>  	 */
>> @@ -4623,6 +4637,10 @@ static int qlge_probe(struct pci_dev *pdev,
>>  	atomic_set(&qdev->lb_count, 0);
>>  	cards_found++;
>>  	return 0;
>> +
>> +devlink_free:
>> +	devlink_free(devlink);
>> +	return err;
>>  }
>
>The best way to write error handling code is keep tracke of the most
>recent allocation which was allocated successfully.
>
>	one = alloc();
>	if (!one)
>		return -ENOMEM;  //  <-- nothing allocated successfully
>
>	two = alloc();
>	if (!two) {
>		ret = -ENOMEM;
>		goto free_one; // <-- one was allocated successfully
>                               // Notice that the label name says what
>			       // the goto does.
>	}
>
>	three = alloc();
>	if (!three) {
>		ret = -ENOMEM;
>		goto free_two; // <-- two allocated, two freed.
>	}
>
>	...
>
>	return 0;
>
>free_two:
>	free(two);
>free_one:
>	free(one);
>
>	return ret;
>
Thank you for teaching me this pattern!

>In the old code qlge_probe() freed things before returning, and that's
>fine if there is only two allocations in the function but when there are
>three or more allocations, then use gotos to unwind.
>
>Ideally there would be a ql_deinit_device() function to mirror the
>ql_init_device() function.  The ql_init_device() is staging quality
>code with leaks and bad label names.  It should be re-written to free
>things one step at a time instead of calling ql_release_all().
>
I'll see how I can improve ql_init_device. Thank you for the suggestion!

>Anyway, let's not introduce new leaks at least.
>
>regards,
>dan carpenter

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

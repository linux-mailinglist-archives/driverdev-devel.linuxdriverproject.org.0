Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2B328B3DB
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 13:34:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 31F9B86A4D;
	Mon, 12 Oct 2020 11:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JXPGJmG2BphU; Mon, 12 Oct 2020 11:34:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2AF1586A00;
	Mon, 12 Oct 2020 11:34:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 456601BF3F7
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 11:34:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 413CC85F60
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 11:34:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Kc7jn6ggXy0 for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 11:34:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CD40F85F5F
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 11:34:21 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id h2so8400371pll.11
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 04:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IRuRu6d50EbSzR6eJn8zTFBIpVvHOPQss0OJFKbt4rE=;
 b=PdEG7lRfdR0pUwVfHV6Jbh+x9P1/KCp8yGwD3CMccR/aPvV/BOf5ChBDI2nSGCaQ8N
 4IUaIBdJYTcm7lE98ugQbg4LqFFjbSKY+kZ2FMDlyNtwoOoZ+APcLL22gnmPlUGTBq1D
 mmjtT6gDVB0cAtMIjWpRhj0+7eEAV6tIe9t331u1SBekgietglZTE5BZJy5JotQw8eqa
 if9gOtwGn9m9PzDQm1f62uNpwSWCUytjacxb2Gwb9TL3umgNGKPlIk5XrANBJcr3rhnk
 vSppL5yDDND8GB4Egs6SMovu1EKi06NaK5c9eFhfqOo8vBrz8HJqeNSuWfueWKzaVnTG
 cW8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IRuRu6d50EbSzR6eJn8zTFBIpVvHOPQss0OJFKbt4rE=;
 b=MZ+aHuuhq/PG4ORQkSHXmkcl5F2JtSF5VHkDCpSdFTa7iDiYa3wgY36lT2q2WhXwY3
 hlj+LSxZ3RObhpiu3FSuUuIrkWiVCI/EvDVpiycEwp/aXISAm6Xt1q2eZNhuFqZnyKxi
 bdZcCxpKeAt4uxTk0WqW+UOUAEZEgHdYOkPtuXMJ1FMpQ1KNuNWDRo970b3zk+KKKoU8
 0zZ/dKO8/lKPsiwU4V4ORz3AqnF2MA8ytvSHEDsFnY7Iy6+G6XtvgclT84J3b4IvbFU+
 9kKVz+54Dc16n9A4u6tpsHAAtIRYFes/mGR/jlTwBm05yp/6hlqtvO00O6/6DMhVYSdG
 wDcQ==
X-Gm-Message-State: AOAM533Rmrw/PoF/JfC/a5EZRd8xxh86UZUjGqZV+qcUfMyKRSK+RKAj
 +YRUBCfSHkylw7iA9Q+m+OQ=
X-Google-Smtp-Source: ABdhPJy1FSos1brD4v41UJOTnL3tEdAi/pK60RCz3MBlNzcAJQ2WAXzqsUO/JE+GHFQ+oP4XQWnOJQ==
X-Received: by 2002:a17:902:7242:b029:d4:c719:79ce with SMTP id
 c2-20020a1709027242b02900d4c71979cemr11851730pll.26.1602502461436; 
 Mon, 12 Oct 2020 04:34:21 -0700 (PDT)
Received: from localhost ([160.16.113.140])
 by smtp.gmail.com with ESMTPSA id z6sm20350965pfg.12.2020.10.12.04.34.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Oct 2020 04:34:21 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Mon, 12 Oct 2020 16:08:43 +0800
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Subject: Re: [PATCH v1 1/6] staging: qlge: Initialize devlink health dump
 framework for the dlge driver
Message-ID: <20201012080843.7kh4xdk4ymaetza6@Rk>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-2-coiby.xu@gmail.com>
 <CA+FuTSdEK+0nBCd5KAYpbEECmSvjoMEgcEOtM+ZKFF4QQKuAfw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+FuTSdEK+0nBCd5KAYpbEECmSvjoMEgcEOtM+ZKFF4QQKuAfw@mail.gmail.com>
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

On Thu, Oct 08, 2020 at 08:22:44AM -0400, Willem de Bruijn wrote:
>On Thu, Oct 8, 2020 at 7:58 AM Coiby Xu <coiby.xu@gmail.com> wrote:
>>
>> Initialize devlink health dump framework for the dlge driver so the
>> coredump could be done via devlink.
>>
>> Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
>
>> @@ -4556,6 +4559,13 @@ static int qlge_probe(struct pci_dev *pdev,
>>         struct ql_adapter *qdev = NULL;
>>         static int cards_found;
>>         int err = 0;
>> +       struct devlink *devlink;
>> +       struct qlge_devlink *ql_devlink;
>> +
>> +       devlink = devlink_alloc(&qlge_devlink_ops, sizeof(struct qlge_devlink));
>> +       if (!devlink)
>> +               return -ENOMEM;
>> +       ql_devlink = devlink_priv(devlink);
>>
>>         ndev = alloc_etherdev_mq(sizeof(struct ql_adapter),
>>                                  min(MAX_CPUS,
>
>need to goto devlink_free instead of return -ENOMEM here, too.

devlink_alloc return NULL only if kzalloc return NULL. So we
shouldn't go to devlink_free which will call kfree.
>
>> @@ -4614,6 +4624,16 @@ static int qlge_probe(struct pci_dev *pdev,
>>                 free_netdev(ndev);
>>                 return err;
>
>and here

But I should goto devlink_free here. Thank you for pointing out my
neglect.
>
>>         }
>> +
>> +       err = devlink_register(devlink, &pdev->dev);
>> +       if (err) {
>> +               goto devlink_free;
>> +       }
>> +
>> +       qlge_health_create_reporters(ql_devlink);
>> +       ql_devlink->qdev = qdev;
>> +       ql_devlink->ndev = ndev;
>> +       qdev->ql_devlink = ql_devlink;
>>         /* Start up the timer to trigger EEH if
>>          * the bus goes dead
>>          */
>> @@ -4624,6 +4644,10 @@ static int qlge_probe(struct pci_dev *pdev,
>>         atomic_set(&qdev->lb_count, 0);
>>         cards_found++;
>>         return 0;
>> +
>> +devlink_free:
>> +       devlink_free(devlink);
>> +       return err;
>>  }

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

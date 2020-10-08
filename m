Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAA6287494
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 14:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B03F287495;
	Thu,  8 Oct 2020 12:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N9IYzJV7NcWA; Thu,  8 Oct 2020 12:54:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28D5E87472;
	Thu,  8 Oct 2020 12:54:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89F941BF473
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 12:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7290E20409
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 12:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O06Rj8rzjH9J for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 12:54:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id A83372038D
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 12:54:36 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id w21so3918331pfc.7
 for <devel@driverdev.osuosl.org>; Thu, 08 Oct 2020 05:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8meL6RsN+cQ5MfWybhWX8LZbSYR56saTZEuAfFrW37I=;
 b=MNxaefSDb5f3vIg4Lst3iWOgaZaMjjWpLJWXogXWWAxdWIhS3+NRWI0ioK2RBwjCVv
 qxU8ozWRvEirnoM2YCiD/ccN43hPzChWEm9P33DYUGNG2AG5kwZvUGpxKohpCWxOwh9A
 c31poOrXukG0LLjMG1XlkmC8YcDDHqndByu6Coz1/1ri3ZGZ09gIcknZjQLTNrAyBDOh
 ToEHDLdJuziD/NjDy0Lkol4zfcKLb7Hbcg9qHXN4H+j8rJhRJk/EpTZ64Mqv5fPoTd4v
 QSZNO/DzuYtoyp8q0gyO3gJowews5cBDW5FZbPvOuSeo86vSJmf33ILnnyi17ZY7koyF
 kJkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8meL6RsN+cQ5MfWybhWX8LZbSYR56saTZEuAfFrW37I=;
 b=S4nlEa40Q3drG0OjtVeatA+UsLTjZOek12JscU9pqv4HVeQPfFflucNDqtuaN9aLht
 urWNuPoA7UmEEJOzyM7vZC3mgDZoJVZMPom1PaU+4yatZ5NIIj/AujqUxIBvb/6kkqKC
 nSSkXMcGW714iNm7rYlj/KfHgE5C4COsVdQQK+1nbvG+SD884MKRyPbs6twKmZjNmTkk
 3kXT5ElolgfcL1wy8iSj9NEjTkLpdDVSf54GD9lKmN3GwIdGHEB5BW9oxPGnrU4/CZ/t
 CPW8BnDfI9vRrsg/Q30VFdVKnXlXMZQp7gvT198Fj5Hr7RitFTWaFMA/PZOljb4xuCwY
 Q/VQ==
X-Gm-Message-State: AOAM530d3CyZW9hbDfTxo8iQQuu88VWe3WKvHxoA0SMOg1h+7yO+VUUj
 nzTfgB1bxV3+2UHxqdziGqA=
X-Google-Smtp-Source: ABdhPJzzcHMuMTR79tIKe0/516uV2gJ/dDXiVrsaLzXkMhmuAv3nIFO7XUbuGe9s+jw9Iz2S77H1LA==
X-Received: by 2002:a63:29c8:: with SMTP id p191mr7188723pgp.45.1602161676335; 
 Thu, 08 Oct 2020 05:54:36 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id a18sm6956102pgw.50.2020.10.08.05.54.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Oct 2020 05:54:35 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Thu, 8 Oct 2020 20:54:28 +0800
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Subject: Re: [PATCH v1 1/6] staging: qlge: Initialize devlink health dump
 framework for the dlge driver
Message-ID: <20201008125428.ppyqjefow4oepvxb@Rk>
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
>
>> @@ -4614,6 +4624,16 @@ static int qlge_probe(struct pci_dev *pdev,
>>                 free_netdev(ndev);
>>                 return err;
>
>and here
>
Thank you for reviewing this work and the speedy feedback! I'll fix it
in v2.
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

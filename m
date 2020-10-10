Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C00D728A002
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Oct 2020 12:24:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0359020451;
	Sat, 10 Oct 2020 10:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s4zyemxgX8Kz; Sat, 10 Oct 2020 10:24:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2EE202041E;
	Sat, 10 Oct 2020 10:24:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F5481BF283
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 10:24:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9B7A8876E3
 for <devel@linuxdriverproject.org>; Sat, 10 Oct 2020 10:24:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bIuv3zro2-yb for <devel@linuxdriverproject.org>;
 Sat, 10 Oct 2020 10:24:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F72B876E1
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 10:24:24 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id e7so71780pfn.12
 for <devel@driverdev.osuosl.org>; Sat, 10 Oct 2020 03:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=kAgtV/zlQ7qrkVa4Spm7AsOCtZ54oLdUWPo/1FrLzu0=;
 b=Fd/AOEa+CbBqIC2iF30QdGq2192retCk+TPZgJaHBT+CQ9SHE2CaD6qffOm4of7NXa
 Jn6gkZ9sbB3uIwq+HN1lSc/FAvfLOzyueqUZHqH1W1dxUaWOgvrQhlJYpR9asIc8xNEs
 NNJlhWJFXdyOwWP3U/1znuX833V8Id7ks0VQFHOUhn71OesHFOZMN8xScQpbf4Q232cL
 0IbU4m/k9zxnCEUXgthG2NtIuXGpbxmfgn8MdhvKlg1alnAfSaNULkiW3Lzuq9pl05LP
 +Vt4rd3xTqbW6Ht5w2s8Cx3beWjvs0BjgyYg7p0OuNNgv+5/pzFDGzZF17GmvqDjkmbx
 JhQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kAgtV/zlQ7qrkVa4Spm7AsOCtZ54oLdUWPo/1FrLzu0=;
 b=S2Dq2mMxu7jPONrr82W6R9EomBLlWGOnmUdSZdvu4izYWuhUwCVf7SzMv2LsHqckVE
 KPzEt89WJVs33y0zN9U/EY1DeelBpWyj4MiCPEcnAzPdZs0NpDC5R9yTkREOeErG8SGb
 L9WZmGW9RyZxUN/oDsedW503VDCYWE4MOmbs0VV87MfibsUDbSwIkMbKAdcNM6CzUdw9
 dABqFO3314bF9JGqdzWy42TdSw3hQLSMmQlDjT9RuZTle0JnuDewm7UG8JB90Jtt44I/
 T1pGi4ChgmA/3JlZMNaBB2fgIaHinr91woF/6j5yYbUTKGLl2uZCTS/9+qNhLdQSqEq8
 9DDA==
X-Gm-Message-State: AOAM531pC51EfQogwRhHHmEaWELhcTLA61PTpb8/L/rXHuFr80KfXluC
 4aM4zX0jsWOSLFx+e5h8Lvw=
X-Google-Smtp-Source: ABdhPJwG1tv6wFNy3N3iskgS++slfqVQGNmRoe+3mCbntEk6+fX6eR6Nbu4g4GE2X+symJI6Uh/xNw==
X-Received: by 2002:a63:5b5c:: with SMTP id l28mr6393033pgm.243.1602325464218; 
 Sat, 10 Oct 2020 03:24:24 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id jx17sm14821822pjb.10.2020.10.10.03.24.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Oct 2020 03:24:23 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Sat, 10 Oct 2020 18:24:16 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v1 1/6] staging: qlge: Initialize devlink health dump
 framework for the dlge driver
Message-ID: <20201010102416.hvbgx3mgyadmu6ui@Rk>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-2-coiby.xu@gmail.com>
 <20201010073514.GA14495@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201010073514.GA14495@f3>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 10, 2020 at 04:35:14PM +0900, Benjamin Poirier wrote:
>On 2020-10-08 19:58 +0800, Coiby Xu wrote:
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
>> +struct qlge_devlink {
>> +        struct ql_adapter *qdev;
>> +        struct net_device *ndev;
>
>This member should be removed, it is unused throughout the rest of the
>series. Indeed, it's simple to use qdev->ndev and that's what
>qlge_reporter_coredump() does.

It reminds me that I forgot to reply to one of your comments in RFC and
sorry for that,
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

struct ql_adapter which is created via alloc_etherdev_mq is the
private space of struct net_device so we can't use ql_adapter as the
the devlink private space simultaneously. Thus struct qlge_devlink is
required.

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

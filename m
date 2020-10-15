Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E7F28EBA7
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Oct 2020 05:38:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36E96886E8;
	Thu, 15 Oct 2020 03:38:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JZjaBxR7sjw1; Thu, 15 Oct 2020 03:37:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F3366886A5;
	Thu, 15 Oct 2020 03:37:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 343B11BF345
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 03:37:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2C5508783E
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 03:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AhNssAAfJse9 for <devel@linuxdriverproject.org>;
 Thu, 15 Oct 2020 03:37:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0938E8782A
 for <devel@driverdev.osuosl.org>; Thu, 15 Oct 2020 03:37:55 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id 1so848435ple.2
 for <devel@driverdev.osuosl.org>; Wed, 14 Oct 2020 20:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=/mQ7jx+jeXIbaNrpQPCSMXM92HTMwnXaMr1S9Xsvdic=;
 b=msNV6Orz5tIcLKfH6tSrRA8png2sZHaShdmQ1xxAJeQJLL6+BOcFhBDLCmQYy7Ccgk
 CMfuUojr0tcTQEI2DZ5tqRQTnzMTKJLpfYdVdnEntexlbFyP4IiuRNcYpXCvlHQ7qZwP
 aRvK/Za9yzAm8eDHzqHIfWJ5mCpBphYxO9fkGUEQOHbABi4tQg/J2foybXPm/y+42/tM
 ouJWFMH95/rjDyMkdZVigErfi0FGaLW2dvYO73H70LMGb7YhQfzvoZnKk0zt+My/YkNt
 Izqdj38ZzRRd2qXUJjZdvchXZMeBkkYPNjP8bvdGO3qbCR7cvHqmOBNSWRvAsaZM1X5h
 a+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=/mQ7jx+jeXIbaNrpQPCSMXM92HTMwnXaMr1S9Xsvdic=;
 b=AuO6VVQlsWNbT1Zb0RVchd4YeWCL7souahLvPirtf+byuoKukR9AdXm8MbW9nXkT4A
 qm8HWC9JSCIIVjQiMbNFVg53Q/rZOe2yuzfFaftvhRJH/u17WT/rfYae8Snm1+PQJbag
 p5yCYXzd18RHysCBbrp5tJ6Bk7cIZ86YMuEMaEbYvppEhWUuR8Clap7Dx9vOyZLAsZN9
 Z7ksNrhomP8+igTfJzqpoQTXSssiZ/37gTjlvfDVjiv3FfGcvLDn4ikaQLmI32Tg1nT3
 LzHiFUwUnPJomRB+wz9kJhw/1HNC+ehbhdiRk7AGWEAvnLTPuYRf/niSl3ENx+7Sp3q1
 avFw==
X-Gm-Message-State: AOAM5337d7/h9QBP/e1dffppO6NrOAbHlsuPuAPqrTifbJMX8zgy+tDo
 tyobpJQNzgnLV9f9jyZNXmM=
X-Google-Smtp-Source: ABdhPJx5y3SL9k8GNspZ7+P3F73iyidQ4SjpBOapqyGYzsEDF50l6W/lTYfck8vz2QBQJsWYY3ImyA==
X-Received: by 2002:a17:90b:11d6:: with SMTP id
 gv22mr2397850pjb.159.1602733074647; 
 Wed, 14 Oct 2020 20:37:54 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id a19sm1099267pjq.29.2020.10.14.20.37.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Oct 2020 20:37:53 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Thu, 15 Oct 2020 11:37:32 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v1 1/6] staging: qlge: Initialize devlink health dump
 framework for the dlge driver
Message-ID: <20201015033732.qaihehernm2jzoln@Rk>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-2-coiby.xu@gmail.com>
 <20201010073514.GA14495@f3> <20201010102416.hvbgx3mgyadmu6ui@Rk>
 <20201010134855.GB17351@f3> <20201012112406.6mxta2mapifkbeyw@Rk>
 <20201013003704.GA41031@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201013003704.GA41031@f3>
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

On Tue, Oct 13, 2020 at 09:37:04AM +0900, Benjamin Poirier wrote:
>On 2020-10-12 19:24 +0800, Coiby Xu wrote:
>[...]
>> > I think, but didn't check in depth, that in those drivers, the devlink
>> > device is tied to the pci device and can exist independently of the
>> > netdev, at least in principle.
>> >
>> You are right. Take drivers/net/ethernet/mellanox/mlxsw as an example,
>> devlink reload would first first unregister_netdev and then
>> register_netdev but struct devlink stays put. But I have yet to
>> understand when unregister/register_netdev is needed.
>
>Maybe it can be useful to manually recover if the hardware or driver
>gets in an erroneous state. I've used `modprobe -r qlge && modprobe
>qlge` for the same in the past.

Thank you for providing this user case!
>
>> Do we need to
>> add "devlink reload" for qlge?
>
>Not for this patchset. That would be a new feature.

To implement this feature, it seems I need to understand how qlge work
under the hood. For example, what's the difference between
qlge_soft_reset_mpi_risc and qlge_hard_reset_mpi_risc? Or should we use
a brute-force way like do the tasks in qlge_remove and then re-do the
tasks in qlge_probe? Is a hardware reference manual for qlge device?

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

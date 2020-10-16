Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF4E290E0F
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Oct 2020 01:16:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16908885F8;
	Fri, 16 Oct 2020 23:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8-8CgKb6lJYz; Fri, 16 Oct 2020 23:16:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 813B08859B;
	Fri, 16 Oct 2020 23:16:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF6641BF29F
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 23:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D02A22E8D7
 for <devel@linuxdriverproject.org>; Fri, 16 Oct 2020 23:16:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BtyN5VYMfZcc for <devel@linuxdriverproject.org>;
 Fri, 16 Oct 2020 23:16:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 0EFE7204CE
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 23:16:51 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id e10so2358012pfj.1
 for <devel@driverdev.osuosl.org>; Fri, 16 Oct 2020 16:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=igR2JRxUZsx9VeqjyhWla0GW6mc0OrGGOO2sZ/4GSGw=;
 b=R/Ck/YfRnhuxMc6JuLtu1AwhOE9d6RzebEMS0v+lCaUt00Wy8ZzAtSiwGCGeJ1bvy6
 Np1+Oqff7McieYD2Irz7CaOMByfuXtN9gWBGk32pYjwJWJoppsz09BUA5Eqt3eMVP+4z
 gDa2JN/A4IhXY2CWYHgsYj8VUeWhapLgvumzhFHVtdKQi46v9hulRzWblu77Uq2ASA77
 xL8wOQGES112LDwlOdPghZID1v9I304doRA9zXOv3D6J+XXYMPLZtIYL3EbVYIaShmEt
 58825OHJAQwaAFllkKzDLlJWLtpyZ38BtRxMFV9dkRglJfegihW8uYDKpVPkaD+KdurP
 kk2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=igR2JRxUZsx9VeqjyhWla0GW6mc0OrGGOO2sZ/4GSGw=;
 b=azYZnlQOobXf9C/CwJ+o5YUZalk2uqXFyp4oy7ZgaZZVIe9lF+UBqFlk2DlqY9Ki2X
 0vcjtogGFOkE6iUUfZ1A9QrkXEca4JQ/kbAp37CRi2MWL7XAhORi/J0KoBqeuF71sKr2
 JJ1OsSINJtD/akCONeYhO1TOeuC0IdgBwOHzNCv2+7B06OPCsIAFrEWP3UJ9JCUhe3rk
 qt4c/RjBIO/KzdI6Kn489LZgKaWjnspuS+cgKAX5uqzwEdoBVrE9ruyP8mxsO+34C9id
 zR2p/VIx/aU6OYF2L20912Pnr/u+4nmnha000tAoFv/TrrWfcY0XoR3t6Qd0ADSb2nkx
 JpbQ==
X-Gm-Message-State: AOAM5305rvi+ImNSURh2bVqUwrZ2SbZlzQP+VoKlKwxqIIC2ovWVMtAa
 iFOalFNVAp2x0vMOBND5g0A=
X-Google-Smtp-Source: ABdhPJzIUhe6rpqQQpdTqA9lxqZEic4rsMwchjGvg9htvspwVRLoQLUhBANu9Nz4PeE7MyFB1RzqQQ==
X-Received: by 2002:a63:5d07:: with SMTP id r7mr5128569pgb.440.1602890210456; 
 Fri, 16 Oct 2020 16:16:50 -0700 (PDT)
Received: from localhost ([2001:e42:102:1532:160:16:113:140])
 by smtp.gmail.com with ESMTPSA id b128sm3807930pga.80.2020.10.16.16.16.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Oct 2020 16:16:49 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
X-Google-Original-From: Coiby Xu <Coiby.Xu@gmail.com>
Date: Sat, 17 Oct 2020 07:08:21 +0800
To: Benjamin Poirier <benjamin.poirier@gmail.com>
Subject: Re: [PATCH v1 1/6] staging: qlge: Initialize devlink health dump
 framework for the dlge driver
Message-ID: <20201016230821.zgdc44qt34rzsn5x@Rk>
References: <20201008115808.91850-1-coiby.xu@gmail.com>
 <20201008115808.91850-2-coiby.xu@gmail.com>
 <20201010073514.GA14495@f3> <20201010102416.hvbgx3mgyadmu6ui@Rk>
 <20201010134855.GB17351@f3> <20201012112406.6mxta2mapifkbeyw@Rk>
 <20201013003704.GA41031@f3> <20201015033732.qaihehernm2jzoln@Rk>
 <20201015110606.GA52981@f3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015110606.GA52981@f3>
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

On Thu, Oct 15, 2020 at 08:06:06PM +0900, Benjamin Poirier wrote:
>On 2020-10-15 11:37 +0800, Coiby Xu wrote:
>> On Tue, Oct 13, 2020 at 09:37:04AM +0900, Benjamin Poirier wrote:
>> > On 2020-10-12 19:24 +0800, Coiby Xu wrote:
>> > [...]
>> > > > I think, but didn't check in depth, that in those drivers, the devlink
>> > > > device is tied to the pci device and can exist independently of the
>> > > > netdev, at least in principle.
>> > > >
>> > > You are right. Take drivers/net/ethernet/mellanox/mlxsw as an example,
>> > > devlink reload would first first unregister_netdev and then
>> > > register_netdev but struct devlink stays put. But I have yet to
>> > > understand when unregister/register_netdev is needed.
>> >
>> > Maybe it can be useful to manually recover if the hardware or driver
>> > gets in an erroneous state. I've used `modprobe -r qlge && modprobe
>> > qlge` for the same in the past.
>>
>> Thank you for providing this user case!
>> >
>> > > Do we need to
>> > > add "devlink reload" for qlge?
>> >
>> > Not for this patchset. That would be a new feature.
>>
>> To implement this feature, it seems I need to understand how qlge work
>> under the hood. For example, what's the difference between
>> qlge_soft_reset_mpi_risc and qlge_hard_reset_mpi_risc? Or should we use
>> a brute-force way like do the tasks in qlge_remove and then re-do the
>> tasks in qlge_probe?
>
>I don't know. Like I've said before, I'd recommend testing on actual
>hardware. I don't have access to it anymore.

Yeah, as I'm changing more code, it's more and more important to test
it on actual hardware. Have you heard anyone installing qle8142 to
Raspberry Pi which has a PCIe bus.
>
>> Is a hardware reference manual for qlge device?
>
>I've never gotten access to one.
>
My experience of wrestling with an AMD GPIO chip [1] shows it would
be a bit annoying to deal with a device without a reference manual.
I have to treat it like a blackbox and try different kinds of input
to see what would happen.

Btw, it seems resetting the device is a kind of panacea. For example,
according to the specs of my touchpad (Synaptics RMI4 Specification),
it even has the feature of spontaneous reset. devlink health [2] also
has the so-called auto-recovery. So resetting is a common phenomenon. I
wonder if there are some common guidelines to do resetting which also
apply to the qlge8*** devices.

>The only noteworthy thing from Qlogic that I know of is the firmware
>update:
>http://driverdownloads.qlogic.com/QLogicDriverDownloads_UI/SearchByProduct.aspx?ProductCategory=322&Product=1104&Os=190
>
>It did fix some weird behavior when I applied it so I'd recommend doing
>the same if you get an adapter.

Thank you for sharing the info!


[1] https://www.spinics.net/lists/linux-gpio/msg53901.html
[2] https://www.kernel.org/doc/html/latest/networking/devlink/devlink-health.html

--
Best regards,
Coiby
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

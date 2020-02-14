Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F5A15F897
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Feb 2020 22:17:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73F7586AAB;
	Fri, 14 Feb 2020 21:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id chyQ6I_ikqd1; Fri, 14 Feb 2020 21:17:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 286FA86A6F;
	Fri, 14 Feb 2020 21:17:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BAAF51BF32C
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 21:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B7EDA87898
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 21:17:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D28BokMV1BYF for <devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 21:17:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 892BA87894
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 21:17:10 +0000 (UTC)
Received: from localhost (unknown [65.119.211.164])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 170C1217F4;
 Fri, 14 Feb 2020 21:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581715030;
 bh=ks/R7A81fcqx454Qhd4oRxX03GTVhPDifZCIX0S1o24=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DPP5aD/Ftxz6A0cMqD6Glm1JqXiE6DL7p+ri0QRQKWdOcwNuoM7qNNoOtessNxmqp
 /5ygqq7LNmRHx7azJ9MTLlQGMte0B1CYTxMFTYg+kv3DV2gFKf3lrFM/AYKd8mIOb+
 wtgRcinsQybqcRJSG6d9FbdV6kJGdbhueCSCVwBQ=
Date: Fri, 14 Feb 2020 16:08:37 -0500
From: Greg KH <gregkh@linuxfoundation.org>
To: Shubakar Gowda <shubakargowdaps@gmail.com>
Subject: Re: Fwd: GS_FPGABOOT
Message-ID: <20200214210837.GB4087988@kroah.com>
References: <CABrFsMLizLKVJiY=NbsOKBpeLOUr9-fqGe1DSMB_nFQ42zEi-g@mail.gmail.com>
 <CABrFsMLKDn+15BCf7vsrL=eLLC0MqF8RgQdPWaDRq_du2c0yhA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABrFsMLKDn+15BCf7vsrL=eLLC0MqF8RgQdPWaDRq_du2c0yhA@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 14, 2020 at 07:07:23PM +0530, Shubakar Gowda wrote:
> ---------- Forwarded message ---------
> From: Shubakar Gowda <shubakargowdaps@gmail.com>
> Date: Fri, 14 Feb 2020 at 19:04
> Subject: GS_FPGABOOT
> To: <insop.song@gainspeed.com>
> 
> 
> Hi,
> 
> I am trying for Selectmap Programming using the driver gs_fgpaboot, But
> when I load the driver I am getting the following errors, please help me
> out to resolve this issue.
> 
> I have configured io file according to our platform.
> 
> root@selectmap_zcu102:~# insmod gs_fpga.ko file="selectmap_top.bit";
> [  477.915891] gs_fpga: module is from the staging directory, the quality
> is unknown, you have been warned.
> [  477.925649] FPGA DOWNLOAD ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
> [  477.930796] FPGA image file name: selectmap_top.bit
> [  477.936190] load fpgaimage selectmap_top.bit
> [  477.940409] platform fpgaboot: Direct firmware load for
> selectmap_top.bit failed with error -2
> [  477.948983] firmware selectmap_top.bit is missing, cannot continue.
> [  477.955224] firmware selectmap_top.bit is missing, cannot continue.
> [  477.961474] gs_load_image error
> [  477.964591] FPGA DOWNLOAD FAIL!!

You do not have the needed firmware file present on your filesystem, not
much the kernel driver can do other than tell you this :)

good luck!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

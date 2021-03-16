Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD20233D1D3
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 11:31:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3490A6F5E4;
	Tue, 16 Mar 2021 10:31:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WaMSQDJSc0tZ; Tue, 16 Mar 2021 10:31:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70D5A606E1;
	Tue, 16 Mar 2021 10:31:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 462B71BF23B
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 10:31:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F91F4EBB9
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 10:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mev.co.uk
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wtZvfA3H2pcw for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 10:31:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from smtp115.ord1c.emailsrvr.com (smtp115.ord1c.emailsrvr.com
 [108.166.43.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DE18B4AAFC
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 10:31:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1615890691;
 bh=mwT18wqfxXbfbbf/yugkbhkjXJijF9Lw3D4H5UEXS9U=;
 h=Subject:To:From:Date:From;
 b=BD71bKwa9+JKcLzdXjZ67fVULd/XFLCyoD91IwMIMy+9SGxQHo1Ev/LKgykFNbTMD
 I6lr375E/514QcNoMcHET6mtXZVLR2dRPmsC/y8T2ZoJNubpeWgYyWoQWAUelbBbnV
 gMmkw9jFw8CdYXtjz36ntiykyGcqxC0du1OHZaoo=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp15.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id DE4B220126; 
 Tue, 16 Mar 2021 06:31:30 -0400 (EDT)
Subject: Re: [PATCH v2] staging: comedi: cb_pcidas64: fix request_irq() warn
To: Tong Zhang <ztong0001@gmail.com>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
References: <858341a6-c105-1440-aa4d-ea0217f2ec89@mev.co.uk>
 <20210315195814.4692-1-ztong0001@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <e43d420a-1c1c-da32-59c4-d796e622a021@mev.co.uk>
Date: Tue, 16 Mar 2021 10:31:29 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210315195814.4692-1-ztong0001@gmail.com>
Content-Language: en-GB
X-Classification-ID: 6cf650db-b512-42c3-a719-2d044d753507-1-1
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 15/03/2021 19:58, Tong Zhang wrote:
> request_irq() wont accept a name which contains slash so we need to
> repalce it with something else -- otherwise it will trigger a warning
> and the entry in /proc/irq/ will not be created
> since the .name might be used by userspace and we don't want to break
> userspace, so we are changing the parameters passed to request_irq()
> 
> [    1.565966] name 'pci-das6402/16'
> [    1.566149] WARNING: CPU: 0 PID: 184 at fs/proc/generic.c:180 __xlate_proc_name+0x93/0xb0
> [    1.568923] RIP: 0010:__xlate_proc_name+0x93/0xb0
> [    1.574200] Call Trace:
> [    1.574722]  proc_mkdir+0x18/0x20
> [    1.576629]  request_threaded_irq+0xfe/0x160
> [    1.576859]  auto_attach+0x60a/0xc40 [cb_pcidas64]
> 
> Suggested-by: Ian Abbott <abbotti@mev.co.uk>
> Signed-off-by: Tong Zhang <ztong0001@gmail.com>
> ---
> v2: revert changes to .name field so that we dont break userspace
> 
>   drivers/staging/comedi/drivers/cb_pcidas64.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
> index fa987bb0e7cd..6d3ba399a7f0 100644
> --- a/drivers/staging/comedi/drivers/cb_pcidas64.c
> +++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
> @@ -4035,7 +4035,7 @@ static int auto_attach(struct comedi_device *dev,
>   	init_stc_registers(dev);
>   
>   	retval = request_irq(pcidev->irq, handle_interrupt, IRQF_SHARED,
> -			     dev->board_name, dev);
> +			     "cb_pcidas64", dev);
>   	if (retval) {
>   		dev_dbg(dev->class_dev, "unable to allocate irq %u\n",
>   			pcidev->irq);
> 

Looks good.

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

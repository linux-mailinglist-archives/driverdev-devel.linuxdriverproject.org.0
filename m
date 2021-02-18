Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CEF31EC6A
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 17:46:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3985F606B4
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 16:46:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vA01htHE5cnv for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 16:46:05 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 4FAB7606BF; Thu, 18 Feb 2021 16:46:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFBBA606B3;
	Thu, 18 Feb 2021 16:45:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 31A501BF3D9
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 16:45:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2E2B786903
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 16:45:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EpIly-5Xkwfn for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 16:45:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp119.ord1c.emailsrvr.com (smtp119.ord1c.emailsrvr.com
 [108.166.43.119])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E9B3486A8D
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 16:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1613666733;
 bh=S1Fq+tox9MWcUqvYO7gs5705kiM9wMsNW7MjUawCZy4=;
 h=Subject:To:From:Date:From;
 b=PhgcptYevAjOOqtTfJe9xAWMQ4jHc9GUy2VcDPCvyyjGhOxENORLlzwO0Ekx5sYhs
 GJHPZan9poZc1GYObbIEhnKkeXd/TAmiZtz0XY84rUdrpXGgg+oZEu00BUu+TuQPLj
 v/apwnpVZbUpMKBvxR3tIb2JnVHt3jhaoj69u8yc=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1613666733;
 bh=S1Fq+tox9MWcUqvYO7gs5705kiM9wMsNW7MjUawCZy4=;
 h=Subject:To:From:Date:From;
 b=auWMYbr66PL4muUl7BX5naim5F3JKkx+n2dvf7romJdMyTRGOgCx6BUhZ29EP+ChQ
 aAhXw5rsj9Di7QUt8gQy5Kx1Rw6GkAnjBgXKJqEJUJGLGMYj9bV5O9FuWud7kIQTBP
 X9LAghWP+ec/GctA5gPVU1z0vgW6Anks+YhADaO4=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp7.relay.ord1c.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 88B10A0225; 
 Thu, 18 Feb 2021 11:45:31 -0500 (EST)
Subject: Re: [PATCH] Staging: comedi: Replaced strlcpy to strscpy
To: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
References: <20210218143152.3957-1-chakravarthikulkarni2021@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <43b0f966-9d88-3c92-28ce-6dfce755a1be@mev.co.uk>
Date: Thu, 18 Feb 2021 16:45:30 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210218143152.3957-1-chakravarthikulkarni2021@gmail.com>
Content-Language: en-GB
X-Classification-ID: d6d0b856-a613-4e54-8f8c-36e84e572270-1-1
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
Cc: devel@driverdev.osuosl.org, Xin Tan <tanxin.ctf@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 B K Karthik <bkkarthik@pesu.pes.edu>, linux-kernel@vger.kernel.org,
 Daniel Jordan <daniel.m.jordan@oracle.com>, Al Viro <viro@zeniv.linux.org.uk>,
 "Alexander A. Klimov" <grandmaster@al2klimov.de>,
 Michel Lespinasse <walken@google.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 18/02/2021 14:31, chakravarthikulkarni wrote:
> Warning found by checkpath.pl script.
> 
> Signed-off-by: chakravarthikulkarni <chakravarthikulkarni2021@gmail.com>
> ---
>  drivers/staging/comedi/comedi_fops.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
> index 80d74cce2a01..df77b6bf5c64 100644
> --- a/drivers/staging/comedi/comedi_fops.c
> +++ b/drivers/staging/comedi/comedi_fops.c
> @@ -939,8 +939,8 @@ static int do_devinfo_ioctl(struct comedi_device *dev,
>  	/* fill devinfo structure */
>  	devinfo.version_code = COMEDI_VERSION_CODE;
>  	devinfo.n_subdevs = dev->n_subdevices;
> -	strlcpy(devinfo.driver_name, dev->driver->driver_name, COMEDI_NAMELEN);
> -	strlcpy(devinfo.board_name, dev->board_name, COMEDI_NAMELEN);
> +	strscpy(devinfo.driver_name, dev->driver->driver_name, COMEDI_NAMELEN);
> +	strscpy(devinfo.board_name, dev->board_name, COMEDI_NAMELEN);
>  
>  	s = comedi_file_read_subdevice(file);
>  	if (s)
> 

Thanks, but you are too late.  It has already been fixed in linux-next.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

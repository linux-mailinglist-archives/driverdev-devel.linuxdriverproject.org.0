Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A6EB4BAD
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 12:13:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 23C5D84B88;
	Tue, 17 Sep 2019 10:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a612mLtM-Ggl; Tue, 17 Sep 2019 10:13:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C01A681B87;
	Tue, 17 Sep 2019 10:13:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 495571BF3D4
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 10:13:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 431FB817F4
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 10:13:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8o+t6NJra13b for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 10:13:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp110.ord1d.emailsrvr.com (smtp110.ord1d.emailsrvr.com
 [184.106.54.110])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1E01081724
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 10:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1568715197;
 bh=zBaogtQ3EoCF+64rfNf65r5QvbzLx7Mg3lSrFpdGkKM=;
 h=Subject:To:From:Date:From;
 b=wYi+F6cbUf1Dx7LxP18BTN7foALesFpO4vw1cBLHFIXjXV1yE1nNG+UUpDTp+YKc7
 yDqWPYZ006BYB/SGiIiMwpWl8fqEM6FUPCtQ+zaeRCOJx2DMyGEE2MaGRE0s4JQYFN
 8eNdS+C0H8gileZARkOSf2OIeGtODFmcF7rWbnOQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1568715197;
 bh=zBaogtQ3EoCF+64rfNf65r5QvbzLx7Mg3lSrFpdGkKM=;
 h=Subject:To:From:Date:From;
 b=Cj4hTj+xdzZchVGk7I1Oy9l9SCo4BouxiUFno5o12V9+6w+9QwOEKp7FoZs+GbzPf
 wcpRFNmNZZrl87+eW8IaNAk6/xua2APpNk7s+Q+J3NSNaXz93ERMQKUV+Ws7WDgTrK
 p/d8kliycVsrWrj4CuNa+l4Eva6Q0DVkDly9+APg=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp22.relay.ord1d.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 6209AE0173; 
 Tue, 17 Sep 2019 06:13:16 -0400 (EDT)
X-Sender-Id: abbotti@mev.co.uk
Received: from [10.0.0.173] (remote.quintadena.com [81.133.34.160])
 (using TLSv1.2 with cipher AES128-SHA) by 0.0.0.0:465 (trex/5.7.12);
 Tue, 17 Sep 2019 06:13:17 -0400
Subject: Re: [PATCH] staging: comedi: drivers: prevent memory leak
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Navid Emamdoost <navid.emamdoost@gmail.com>
References: <20190917024147.26290-1-navid.emamdoost@gmail.com>
 <20190917063004.GG18977@kadam>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <86a2ceb0-cc59-2b57-e2b0-f620a42e9ac1@mev.co.uk>
Date: Tue, 17 Sep 2019 11:13:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190917063004.GG18977@kadam>
Content-Language: en-GB
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kjlu@umn.edu, linux-kernel@vger.kernel.org, emamd001@umn.edu, smccaman@umn.edu
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 17/09/2019 07:33, Dan Carpenter wrote:
> On Mon, Sep 16, 2019 at 09:41:43PM -0500, Navid Emamdoost wrote:
>> In das1800_attach, the buffer allocated via kmalloc_array needs to be
>> released if an error happens.
>>
>> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> 
> Commedit calls ->detach() if the ->attach() fails so this patch would
> lead to a double free.  See comedi_device_attach():
> 
> drivers/staging/comedi/drivers.c
>     983          }
>     984          if (!driv->attach) {
>     985                  /* driver does not support manual configuration */
>     986                  dev_warn(dev->class_dev,
>     987                           "driver '%s' does not support attach using comedi_config\n",
>     988                           driv->driver_name);
>     989                  module_put(driv->module);
>     990                  ret = -EIO;
>     991                  goto out;
>     992          }
>     993          dev->driver = driv;
>     994          dev->board_name = dev->board_ptr ? *(const char **)dev->board_ptr
>     995                                           : dev->driver->driver_name;
>     996          ret = driv->attach(dev, it);
>                        ^^^^^^^^^^^^^^^^^^^^^
>     997          if (ret >= 0)
>     998                  ret = comedi_device_postconfig(dev);
>     999          if (ret < 0) {
>    1000                  comedi_device_detach(dev);
>                          ^^^^^^^^^^^^^^^^^^^^^^^^^
> 
>    1001                  module_put(driv->module);
>    1002          }
>    1003          /* On success, the driver module count has been incremented. */

Yes, everything should be freed properly by comedi_device_detach(). 
 From comedi_device_detach(), some of the stuff is freed by 
dev->driver->detach(), and the remainder is freed by 
comedi_device_detach_cleanup().

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

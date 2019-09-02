Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE593A5C0F
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 20:07:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9437B86773;
	Mon,  2 Sep 2019 18:07:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kijLiMYYI33O; Mon,  2 Sep 2019 18:07:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E642B85735;
	Mon,  2 Sep 2019 18:07:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4CE831BF3E9
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 18:07:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4A30085FA8
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 18:07:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GfdzV5IAl4Uk for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 18:07:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BC92C85FA0
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 18:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c5UKk/WUqmxqtU3WpUzbuDwbt+WLxvtk3T/wDs7cTaI=; b=tFFWIXxuHlrcBDXTEYoGRQIOX
 yiVt+S4Nlh9YE9muq1/9s8LrreLMTC8sogsYkYEJ048MHkTLkp1T4ipminIZuUDIFDu3EhwyGJarq
 5HQPFfFkfXpYEm4GcLm76SyhP4Z0qUOfQ86XH2Al1Ek02sxxaJTfA2jNd9VOzm1ZzfVfIedRN/zPW
 WGZbFtfGyC7/qBnyJDDOdpRA0E/qvfIwMzdmoUkHrPBpTMlhbJmAKEyLyJgFwepqn+eEyWJMCL6Qp
 4fI3uvV4h9GFnl62ajWxX7cEL1BwyS2ZoUfox16rkHQeXZ6cQVfeDGxaxUfOtGC8mc+NJ7fuXF+/B
 fbgpOogFg==;
Received: from [2601:1c0:6200:6e8::4f71]
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i4qjt-0004SO-MG; Mon, 02 Sep 2019 18:07:41 +0000
Subject: Re: linux-next: Tree for Sep 2 (exfat)
To: Greg KH <greg@kroah.com>
References: <20190902224310.208575dc@canb.auug.org.au>
 <cecc2af6-7ef6-29f6-569e-b591365e45ad@infradead.org>
 <20190902174631.GB31445@kroah.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <13e2db80-0c89-0f36-6876-f9639f0d30ab@infradead.org>
Date: Mon, 2 Sep 2019 11:07:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902174631.GB31445@kroah.com>
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/2/19 10:46 AM, Greg KH wrote:
> On Mon, Sep 02, 2019 at 10:39:39AM -0700, Randy Dunlap wrote:
>> On 9/2/19 5:43 AM, Stephen Rothwell wrote:
>>> Hi all,
>>>
>>> News: I will only be doing 2 more releases before I leave for Kernel
>>> Summit (there may be some reports on Thursday, but I doubt I will have
>>> time to finish the full release) and then no more until Sept 30.
>>>
>>> Changes since 20190830:
>>>
>>
>> Hi,
>> I am seeing lots of exfat build errors when CONFIG_BLOCK is not set/enabled.
>> Maybe its Kconfig should also say
>> 	depends on BLOCK
>> ?
> 
> Here's what I committed to my tree:
> 
> 
> From e2b880d3d1afaa5cad108c29be3e307b1917d195 Mon Sep 17 00:00:00 2001
> From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Date: Mon, 2 Sep 2019 19:45:06 +0200
> Subject: staging: exfat: make exfat depend on BLOCK
> 
> This should fix a build error in some configurations when CONFIG_BLOCK
> is not selected.  Also properly set the dependancy for no FAT support at
> the same time.
> 
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Valdis Kletnieks <valdis.kletnieks@vt.edu>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

That works. Thanks.
Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

> ---
>  drivers/staging/exfat/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/exfat/Kconfig b/drivers/staging/exfat/Kconfig
> index f52129c67f97..290dbfc7ace1 100644
> --- a/drivers/staging/exfat/Kconfig
> +++ b/drivers/staging/exfat/Kconfig
> @@ -1,11 +1,13 @@
>  config EXFAT_FS
>  	tristate "exFAT fs support"
> +	depends on BLOCK
>  	select NLS
>  	help
>  	  This adds support for the exFAT file system.
>  
>  config EXFAT_DONT_MOUNT_VFAT
>  	bool "Prohibit mounting of fat/vfat filesysems by exFAT"
> +	depends on EXFAT_FS
>  	default y
>  	help
>  	  By default, the exFAT driver will only mount exFAT filesystems, and refuse
> 


-- 
~Randy
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

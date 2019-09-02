Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8938FA5BDD
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 19:39:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6B32F21552;
	Mon,  2 Sep 2019 17:39:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kn2aTeSnwFvK; Mon,  2 Sep 2019 17:39:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4FEFA2155E;
	Mon,  2 Sep 2019 17:39:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D4D121BF30B
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 17:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D20C220774
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 17:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mbrMOFget7+A for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 17:39:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id 7CE2921552
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 17:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hEGWoA2tYnse4FOhsxlEH/jFHn84yJrgUujZ+4IiIa0=; b=SGnGV0+pbDM5rhHxiPkQ4xpwq
 x1hSrK8wB/eqxQj3w8PwB2x4+zvIj6JAHzC+MizEH1JZoXlBabDFBRikErFoxpY+2tFaqzqyZxCb7
 zshjdYup4vA0RmXnCa+RP/n2e7uT3KgxbWASVCh4pYb9Y3W+dZlIAkVCkCkJMPZ39uRtU24LuyrPr
 uKv77MJGwrZ9gHUYW3bggdXVm69N9NSDZS6EIxtpHmZ8ge9WW99zy6Azz1FdaUJXeFfLVcH1p94fw
 MTym2Yo6Tk26Cv5APe8XiGV4gtZYylywthwojnHyPQzlDd8gA9Q85UPLZBAu9oSaKOUqIgyv5uALy
 fq5BSxPWw==;
Received: from [2601:1c0:6200:6e8::4f71]
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i4qIm-0004GB-Di; Mon, 02 Sep 2019 17:39:40 +0000
Subject: Re: linux-next: Tree for Sep 2 (exfat)
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>
References: <20190902224310.208575dc@canb.auug.org.au>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <cecc2af6-7ef6-29f6-569e-b591365e45ad@infradead.org>
Date: Mon, 2 Sep 2019 10:39:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902224310.208575dc@canb.auug.org.au>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 9/2/19 5:43 AM, Stephen Rothwell wrote:
> Hi all,
> 
> News: I will only be doing 2 more releases before I leave for Kernel
> Summit (there may be some reports on Thursday, but I doubt I will have
> time to finish the full release) and then no more until Sept 30.
> 
> Changes since 20190830:
> 

Hi,
I am seeing lots of exfat build errors when CONFIG_BLOCK is not set/enabled.
Maybe its Kconfig should also say
	depends on BLOCK
?

-- 
~Randy
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

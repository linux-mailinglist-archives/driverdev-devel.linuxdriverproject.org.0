Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B26A322CAEF
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 18:23:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4700E241AE;
	Fri, 24 Jul 2020 16:23:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tFIfwuDDcO+q; Fri, 24 Jul 2020 16:23:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E79ED20008;
	Fri, 24 Jul 2020 16:23:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F215E1BF44A
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 16:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EE48387F89
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 16:23:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L1VdL0hTRLT8 for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 16:23:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7218987ECF
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 16:23:30 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB865206F6;
 Fri, 24 Jul 2020 16:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595607810;
 bh=kWOqPLbIxJiKn2O2IMkU20zkOXo+hlHrLVnq9YiRIdM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZOXUlXMIY/dy791ByZRJ63cB2egO9nk3M7qJOLqhKrgnbZZlON8BA3+KofLbzKdra
 dHvIFpK/XYU1UNIiglMjNnNCd5+gB1vqF+lJarw4ktB6t5aLp9XBIX2hxpZbvbuNt1
 v2rHtUVGyEhjnLgcyXdHPNRvV9y088qo48x39dn4=
Date: Fri, 24 Jul 2020 18:23:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Subject: Re: [PATCH v3] staging: nvec: change usage of slave to secondary
Message-ID: <20200724162331.GA542507@kroah.com>
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
 <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <20200724140947.GW2549@kadam>
 <79c59734-d4ed-7968-5c9d-17d0ffe37b73@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <79c59734-d4ed-7968-5c9d-17d0ffe37b73@gmail.com>
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
Cc: devel@driverdev.osuosl.org, marvin24@gmx.de,
 Dan Carpenter <dan.carpenter@oracle.com>, p.zabel@pengutronix.de,
 linux-tegra@vger.kernel.org, ac100@lists.launchpad.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 24, 2020 at 09:21:47PM +0530, Rohit K Bharadwaj wrote:
> On 24/07/20 7:39 pm, Dan Carpenter wrote:
> > On Fri, Jul 24, 2020 at 10:06:34AM +0530, Rohit K Bharadwaj wrote:
> >> @@ -784,7 +784,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
> >>  	platform_set_drvdata(pdev, nvec);
> >>  	nvec->dev = dev;
> >>  
> >> -	if (of_property_read_u32(dev->of_node, "slave-addr", &nvec->i2c_addr)) {
> >> +	if (of_property_read_u32(dev->of_node, "secondary-addr", &nvec->i2c_addr)) {
> > 
> > Sorry, I should have looked for v3 at the start to reply to it.  This
> > line will break the driver.
> > 
> > regards,
> > dan carpenter
> > 
> 
> Thank you for your review sir, my intention was to fix kernel coding style issues and hence had picked this one. 
> Could you please let me know whether I should undo that particular line and submit the patch again so as not to break the driver? 

Try making patches that do not break things :)

Maybe a different type of patch?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

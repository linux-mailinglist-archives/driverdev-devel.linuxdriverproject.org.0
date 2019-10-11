Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F641D3F3B
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 14:08:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D933086EE4;
	Fri, 11 Oct 2019 12:08:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aMB8Tbw9kF_6; Fri, 11 Oct 2019 12:08:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D75386CEF;
	Fri, 11 Oct 2019 12:08:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1A3101BF292
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 12:08:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1687525877
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 12:08:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SZz1gRh3YuZN for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 12:08:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id A1E4925281
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 12:08:49 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 009CE214E0;
 Fri, 11 Oct 2019 12:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570795729;
 bh=7CIPFLIoZZluL3rWipgb8S80+pXhDenVx59NnSIkLzI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b3mw0mo48g1XYqGl1KLzGYWhF9OmlOsXrOiw/4Jmr9Sp2dGvl5NeqmR2aPmdvCwCw
 hMzGgTWLATc14Lqf0kZV91LuEJMGKIyW+++M3RQvXiWWKmAqfzm+B4O8QWjiQMv54h
 lqvSe4tlHsdbHfVYwq/81oFSt+2VTM8o8QFLbMP4=
Date: Fri, 11 Oct 2019 14:08:47 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3 1/4] staging: rtl8723bs: Remove comparisons to NULL in
 conditionals
Message-ID: <20191011120847.GB1143018@kroah.com>
References: <cover.1570712632.git.wambui.karugax@gmail.com>
 <f4752d3a49e02193ed7b47a353e18e56d94b5a68.1570712632.git.wambui.karugax@gmail.com>
 <20191011105404.GA4774@kadam> <20191011120717.GA1143018@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011120717.GA1143018@kroah.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 02:07:17PM +0200, Greg KH wrote:
> On Fri, Oct 11, 2019 at 01:54:04PM +0300, Dan Carpenter wrote:
> > On Thu, Oct 10, 2019 at 04:15:29PM +0300, Wambui Karuga wrote:
> > >  	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
> > > -	if (psetauthparm == NULL) {
> > > -		kfree(pcmd);
> > > +	if (!psetauthparm) {
> > > +		kfree((unsigned char *)pcmd);
> > 
> > This new cast is unnecessary and weird.
> 
> Ah, I missed that, good catch.  I'll go drop this patch now.

And that caused the second patch to get dropped as well.  I'll just drop
them all, can you redo the whole series please?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

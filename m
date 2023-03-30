Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2986D104E
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Mar 2023 22:53:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB22A60A99;
	Thu, 30 Mar 2023 20:53:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB22A60A99
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rFIf3bpaRwOQ; Thu, 30 Mar 2023 20:53:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD8CF607F0;
	Thu, 30 Mar 2023 20:53:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD8CF607F0
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B164D1BF59C
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 20:53:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 981E882050
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 20:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 981E882050
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NDw4Ec4Py9Vr
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 20:53:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D92968204D
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D92968204D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 20:53:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A0F8EB82A32;
 Thu, 30 Mar 2023 20:53:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13FA7C433D2;
 Thu, 30 Mar 2023 20:53:33 +0000 (UTC)
Date: Thu, 30 Mar 2023 22:53:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Joel C. Chang" <jcchangg3@gmail.com>
Subject: Re: [PATCH] staging: ks7010: remove unnecesary parentheses
Message-ID: <ZCX2yxHVwCZ930WH@kroah.com>
References: <ZCWEM7DCDUEOzBe9@joel-ubuntu-desktop> <ZCWFcosyX0PllKLI@kroah.com>
 <ZCXBO0cugdyR80g3@joel-ubuntu-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCXBO0cugdyR80g3@joel-ubuntu-desktop>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1680209614;
 bh=wEGZ+6j3CKnjQ3nGoAdQWclI5P8LTLHhql9Q0wON1hk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rcee/cJS4Jjr3mhLvzkHAllhW76FLqEqnV5qunxsiQf90Rau10W8J3LKl8jf1K4sM
 6OAQj3lagd5cDrkMCrdwPFTtK6S0kofvwUvIAhc9xsSpJQNsuhmgPEL3SvIHu7e5Gy
 axRRUwTYbq+RaDNmU3lcLhzfVzXYW6GUt0pm+jW8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=Rcee/cJS
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
Cc: driverdev-devel@linuxdriverproject.org, linux-staging@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 31, 2023 at 01:04:59AM +0800, Joel C. Chang wrote:
> On Thu, Mar 30, 2023 at 02:49:54PM +0200, Greg KH wrote:
> > On Thu, Mar 30, 2023 at 08:44:35PM +0800, Joel Camilo Chang Gonzalez wrote:
> > > Remove parentheses not needed in if statement
> > > 
> > > Signed-off-by: Joel Camilo Chang Gonzalez <jcchangg3@gmail.com>
> > > ---
> > >  drivers/staging/ks7010/ks_hostif.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> > > index af3825578d85..8bded7e88ce7 100644
> > > --- a/drivers/staging/ks7010/ks_hostif.c
> > > +++ b/drivers/staging/ks7010/ks_hostif.c
> > > @@ -129,7 +129,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info *ap_info)
> > >  	size = (ap_info->rsn.size <= RSN_IE_BODY_MAX) ?
> > >  		ap_info->rsn.size : RSN_IE_BODY_MAX;
> > >  	if ((ap_info->rsn_mode & RSN_MODE_WPA2) &&
> > > -	    (priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2)) {
> > > +	    priv->wpa.version == IW_AUTH_WPA_VERSION_WPA2) {
> > 
> > If you look in the archives, you will see that I reject this type of
> > patch all the time.
> > 
> > Also, please use scripts/get_maintainer.pl to determine who to send this
> > to, you used a very old mailing list address that is long dead.
> > 
> > thanks,
> > 
> > greg k-h
> 
> Thanks for the input. I wasn't sure who to send it to, since the TODO in
> the driver and the script have different email addresses.
> 
> Is there a place to check for inactive mailing lists?

Just trust the get_maintainer.pl script, it knows what to do.

thanks,
greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

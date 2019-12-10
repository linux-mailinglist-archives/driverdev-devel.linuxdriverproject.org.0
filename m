Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F20DA1183D6
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 10:42:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B08D85B04;
	Tue, 10 Dec 2019 09:42:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rthpgtfJSHmA; Tue, 10 Dec 2019 09:42:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E8A97852E9;
	Tue, 10 Dec 2019 09:42:51 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A66D41BF2A0
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 09:42:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A386E87D60
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 09:42:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tZKVegDhy8bJ
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 09:42:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C0F0987D09
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 09:42:47 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2576920663;
 Tue, 10 Dec 2019 09:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575970967;
 bh=pIVrN6KwCGZNLd5wKNsSI0T3xIqA0duUdzXcDBxItVI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UwjVfT7UgsNTQws6gNEnlOZi9hXSpnBGsJr8xT4f06dodKNxzN1Jecx95ROiEQMWD
 fdZd9FoSG//osat2CDH0BJ0g+GH7W6pmbrtp7CjBsA+59L61MRKsANKJAkzjvgAhzz
 pTS+hxrCc0t/kQQ6Ue5JKhSHgThWCU27dkYs+ZRI=
Date: Tue, 10 Dec 2019 10:42:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH RFC 2/6] staging: most: rename core.h to most.h
Message-ID: <20191210094244.GA3638653@kroah.com>
References: <1574697096-2942-1-git-send-email-christian.gromm@microchip.com>
 <1574697096-2942-3-git-send-email-christian.gromm@microchip.com>
 <20191206143528.GA32126@kroah.com>
 <1575897968.2957.4.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575897968.2957.4.camel@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 09, 2019 at 01:25:17PM +0000, Christian.Gromm@microchip.com wrote:
> On Fr, 2019-12-06 at 15:35 +0100, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Mon, Nov 25, 2019 at 04:51:32PM +0100, Christian Gromm wrote:
> > > 
> > > This patch renames the core header file core.h to most.h. The
> > > intention
> > > behind this is to have a meaningful name once this file is moved to
> > > the
> > > /include/linux directory.
> > Does everything in this .h file have to be exposed to the whole
> > kernel?
> > Are there any things in here that are local only to the most "core"
> > code?
> > 
> > If this whole thing is public, you might want to clean up your naming
> > of
> > some structures:
> 
> Yes, those structs are needed by modules registering with the core.
> 
> Do you want me to reroll v2 of this set with these changes or to wait
> for more comments to come?

Please resend, I doubt there is anything else going to be reviewed on
this at the moment.

Note, I applied the first patch in this series already, no need to
resend that.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C4E9F0FF
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 19:00:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1A2E923251;
	Tue, 27 Aug 2019 16:59:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NfqwZIF+tKcx; Tue, 27 Aug 2019 16:59:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9089623120;
	Tue, 27 Aug 2019 16:59:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 597601BF20D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 16:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 50F24857A4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 16:59:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kn-VKPTvtcoQ
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 16:59:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 68E8A85784
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 16:59:51 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B88072173E;
 Tue, 27 Aug 2019 16:59:50 +0000 (UTC)
Date: Tue, 27 Aug 2019 18:59:48 +0200
From: Greg KH <greg@kroah.com>
To: Rui Miguel Silva <rmfrfs@gmail.com>
Subject: Re: [PATCH 0/9] staging: move greybus core out of staging
Message-ID: <20190827165948.GA16855@kroah.com>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190827133611.GE23584@kadam> <20190827134557.GA25038@kroah.com>
 <m3d0gqisua.fsf@gmail.com> <20190827154308.GD534@kroah.com>
 <m3blwaiotb.fsf@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3blwaiotb.fsf@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 driverdev-devel@linuxdriverproject.org, johan@kernel.org,
 linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 27, 2019 at 04:57:20PM +0100, Rui Miguel Silva wrote:
> Hi Greg,
> On Tue 27 Aug 2019 at 16:43, Greg KH wrote:
> > On Tue, Aug 27, 2019 at 03:30:21PM +0100, Rui Miguel Silva wrote:
> >> Hi,
> >> On Tue 27 Aug 2019 at 14:45, Greg Kroah-Hartman wrote:
> >> > On Tue, Aug 27, 2019 at 04:36:11PM +0300, Dan Carpenter wrote:
> >> >> I can't compile greybus so it's hard to run Smatch on it...  I have a
> >> >> Smatch thing which ignores missing includes and just tries its best.
> >> >> It mostly generates garbage output but a couple of these look like
> >> >> potential issues:
> >> >
> >> > Why can't you compile the code?
> >> >
> >>
> >> I think we are missing includes in some of the
> >> greybus header files.
> >
> > Really?  Where?  Builds fine here and passes 0-day :)
> >
> 
> Yeah; just sent a patch to fix it.

Thanks, now merged!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

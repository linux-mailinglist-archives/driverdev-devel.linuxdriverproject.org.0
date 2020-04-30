Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7F41BF25E
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 10:13:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B806086D20;
	Thu, 30 Apr 2020 08:13:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pbLDxq1DKVCE; Thu, 30 Apr 2020 08:13:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AAD1E86CD7;
	Thu, 30 Apr 2020 08:13:34 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 15E6A1BF2B8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:13:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 12F358165A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:13:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DVnLooptyKuw
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:13:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B020E814B0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:13:31 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 194972073E;
 Thu, 30 Apr 2020 08:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588234411;
 bh=MyCWgYr5H/Fu3u9xz0QDVq+bYODy8QnSEThc7xCjZ5k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=akCwEidnSdbyKrhrOCqJjTBvv0oxswzSnKm49nJm3GGH2wGu6gj+1Zh2chNp6+633
 U5Mgx3RU+muj92rEl3pSb1oXkVjcaupEAR9wx8uobQK78zfK6EMolvbrXWXqzKG1dM
 a3QfWyAn31fwhxFDWdvvI5JMba+7HOHbB9vD/mAg=
Date: Thu, 30 Apr 2020 10:13:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH RFC] staging: most: usb: move USB adapter driver to
 stable branch
Message-ID: <20200430081329.GD2495313@kroah.com>
References: <1588233612-31327-1-git-send-email-christian.gromm@microchip.com>
 <20200430080735.GB2495313@kroah.com>
 <20200430080931.GC2495313@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430080931.GC2495313@kroah.com>
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

On Thu, Apr 30, 2020 at 10:09:31AM +0200, Greg KH wrote:
> On Thu, Apr 30, 2020 at 10:07:35AM +0200, Greg KH wrote:
> > On Thu, Apr 30, 2020 at 10:00:12AM +0200, Christian Gromm wrote:
> > > This patch moves the MOST USB adapter driver to the stable branch.
> > > It is a follow-up to commit <b276527>.
> > 
> > That's not how to refer to git commit ids.  Please see the
> > submitting-patches.rst file for the proper format.
> 
> Also, you might want to run this driver by the usb mailing list, I don't
> think it's been audited by anyone, myself included, for any usb specific
> things.
> 
> As proof, I see at least one thing that should be changed...

Ok, lots of little things, I don't think I ever actually read this
driver before, sorry about that...

Please post it as a patch that just adds the file, which will make it
much easier to review and respond to it.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

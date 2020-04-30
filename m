Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DCA1BF245
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 10:10:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A82487DFE;
	Thu, 30 Apr 2020 08:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IZRExaSDN-t2; Thu, 30 Apr 2020 08:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 103AF86AE5;
	Thu, 30 Apr 2020 08:10:11 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF4B11BF2B8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ABF4986C6A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0C2NloSyK3te
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:10:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F50D85188
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 08:09:34 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 980982073E;
 Thu, 30 Apr 2020 08:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588234174;
 bh=tiVJKTGgduoDK8Zl2N24XKTVlyhJkaxCu7VR3qJmB64=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JM/RHAuUddjBXKJx/VdfMGV27NV7boxdMZ+HzHuOZXsjmCiVjTruFy+ki9/eW5uJ+
 dTzsdDupyklOuldKXuq7+lFvNOexSzJBklfSGKsQGt7EzbaVTXeZYKq9K8TjJWpXX3
 cC+kruJXslzgEaEBsJSgVfn2xAHARlS5JkpG4BD8=
Date: Thu, 30 Apr 2020 10:09:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH RFC] staging: most: usb: move USB adapter driver to
 stable branch
Message-ID: <20200430080931.GC2495313@kroah.com>
References: <1588233612-31327-1-git-send-email-christian.gromm@microchip.com>
 <20200430080735.GB2495313@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430080735.GB2495313@kroah.com>
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

On Thu, Apr 30, 2020 at 10:07:35AM +0200, Greg KH wrote:
> On Thu, Apr 30, 2020 at 10:00:12AM +0200, Christian Gromm wrote:
> > This patch moves the MOST USB adapter driver to the stable branch.
> > It is a follow-up to commit <b276527>.
> 
> That's not how to refer to git commit ids.  Please see the
> submitting-patches.rst file for the proper format.

Also, you might want to run this driver by the usb mailing list, I don't
think it's been audited by anyone, myself included, for any usb specific
things.

As proof, I see at least one thing that should be changed...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

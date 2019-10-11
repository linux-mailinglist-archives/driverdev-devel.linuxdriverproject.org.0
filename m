Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E83D3972
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 08:33:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C97E788842;
	Fri, 11 Oct 2019 06:33:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8X-kp9g3HYjZ; Fri, 11 Oct 2019 06:33:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FD218883F;
	Fri, 11 Oct 2019 06:33:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F5821BF2F8
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0967286EB3
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ZMUkylLg8Z1 for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 06:33:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9C4B186EA2
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 06:33:24 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA0C821D56;
 Fri, 11 Oct 2019 06:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570775604;
 bh=kexi/PchGIii51ijg5Yn+auK9EsQ/SD1LTZB9/0ChgI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cORh7use8CI8YZX4RkK3+TPoQbKLkXaRcPc3EWaF9fgaWcKoI2KbDPYDwV+BhoeeR
 y+sGuOgQj1fB5GK2fhUwWAmznwnlTK9w/129p3t+iJSDPQ5bzoWbmonomPfM2Mz96v
 gGnFZYJswscfffOfOnEaOJ8JwazgYZGYKmAOwWMw=
Date: Fri, 11 Oct 2019 08:33:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Chandra Annamaneni <chandra627@gmail.com>
Subject: Re: [PATCH 2/5] KPC2000: kpc2000_spi.c: Fix style issues (missing
 blank line)
Message-ID: <20191011063321.GB986093@kroah.com>
References: <20191011055155.4985-1-chandra627@gmail.com>
 <20191011055155.4985-2-chandra627@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011055155.4985-2-chandra627@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, michael.scheiderer@fau.de,
 fabian.krueger@fau.de, linux-kernel@vger.kernel.org, simon@nikanor.nu,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 10, 2019 at 10:51:52PM -0700, Chandra Annamaneni wrote:
> Resolved: "CHECK: Please use a blank line after.." from checkpatch.pl
> 
> Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>

Please fix the subject lines for all of these patches and resend.

Also, this is a second set of patches, right?  What changed from the
first ones?  You should properly version your patches and explain under
the --- line what changed as the documentation states to.

Please do that for when you resend these.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

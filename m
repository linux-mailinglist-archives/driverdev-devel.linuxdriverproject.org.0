Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C89CD8C9
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 21:06:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B01F88789B;
	Sun,  6 Oct 2019 19:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QO0fZ2z9S4wG; Sun,  6 Oct 2019 19:06:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DEAD387699;
	Sun,  6 Oct 2019 19:06:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 119331BF23C
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0E2C48682F
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:06:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pJpqr7RD1bd9 for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 19:06:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 636368682C
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 19:06:43 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F2D22080F;
 Sun,  6 Oct 2019 19:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570388803;
 bh=uSjjwqJ+WQNYE7UjlHLyYnUqr6Pwy8Mnlttuvz673UA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L/bvtaOnBCthDPK4ZmxMAF3ECimk4Jylp+MLMmkYRmmhLHwHarvohCbWxnfXx9EkK
 Nlb7QMKYYqyUec4D65xXiN/1qka39yXJkSdpNRm9drA75paFPqY3Znz8xQsFsMiNzS
 yj583ZSZvB4JGPKZxf912Irb3hNiglciIFChME1k=
Date: Sun, 6 Oct 2019 21:06:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Capitalize macro
 name to fix camelcase checkpatch warning
Message-ID: <20191006190640.GA237538@kroah.com>
References: <20191006184827.12021-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910062100530.2515@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910062100530.2515@hadrien>
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 abbotti@mev.co.uk, olsonse@umich.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 06, 2019 at 09:01:09PM +0200, Julia Lawall wrote:
> 
> 
> On Sun, 6 Oct 2019, Jules Irenge wrote:
> 
> > Capitalize RANGE_mA to fix camelcase check warning.
> > Issue reported by checkpatch.pl
> 
> I guess mA means something, so it would be better to keep it?

Yes it does, we need to keep it, sorry.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

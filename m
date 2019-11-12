Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D769F8929
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 07:56:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A676586742;
	Tue, 12 Nov 2019 06:56:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wOMy0dh33EeJ; Tue, 12 Nov 2019 06:56:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 81AC28646F;
	Tue, 12 Nov 2019 06:56:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 36CD61BF308
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 06:56:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 296E584DD1
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 06:56:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BEEIHirA4Hok for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 06:56:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9BB278452F
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 06:56:33 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A9E2206A3;
 Tue, 12 Nov 2019 06:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573541793;
 bh=r0sc5/XzhNJIqfRx4BwQyUrbUeptifp8j9vAKXgaYjQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zFKYlVXOsiL7FaaBRZj3pZQA+ljakifCep4BzkE7lHK14YdhMWhb1UeymOeCpXgtl
 rUWylDHSGWblvFdlUHPUnGwrDUM5bkWW0oxbcahxseMrPioIyeyZCvkwXQSHvs2o6O
 39kxVd60E4PzxfJnJmVi6Tp5CoV02Q6X2PwRXCpg=
Date: Tue, 12 Nov 2019 07:56:29 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [GIT PULL] IIO fixes / Staging driver for 5.4-rc7
Message-ID: <20191112065629.GA1242198@kroah.com>
References: <20191110154303.GA2867499@kroah.com>
 <20191112063440.GA15951@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112063440.GA15951@infradead.org>
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
Cc: devel@linuxdriverproject.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 11, 2019 at 10:34:40PM -0800, Christoph Hellwig wrote:
> On Sun, Nov 10, 2019 at 04:43:03PM +0100, Greg KH wrote:
> > The staging driver addition is the vboxsf filesystem, which is the
> > VirtualBox guest shared folder code.  Hans has been trying to get
> > filesystem reviewers to review the code for many months now, and
> > Christoph finally said to just merge it in staging now as it is
> > stand-alone and the filesystem people can review it easier over time
> > that way.
> 
> No, this is absolutely contrary to what I said.  I told Hans to just
> send it to Linus because it is ready and not staging fodder a atll.

Hah, ok, I got that totally wrong.  I'll send a patch moving it to the
"real" part of the kernel now.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

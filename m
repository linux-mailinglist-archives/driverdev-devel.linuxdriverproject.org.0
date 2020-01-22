Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9AD7144DEB
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jan 2020 09:49:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 567AB207A2;
	Wed, 22 Jan 2020 08:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2CWllLP6r7rW; Wed, 22 Jan 2020 08:49:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BB56F207A4;
	Wed, 22 Jan 2020 08:49:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B01AA1BF2FB
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 08:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A403C878CE
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 08:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6mUOd+9QKmhV for <devel@linuxdriverproject.org>;
 Wed, 22 Jan 2020 08:49:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0136C878BB
 for <devel@driverdev.osuosl.org>; Wed, 22 Jan 2020 08:49:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BCD42465A;
 Wed, 22 Jan 2020 08:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579682963;
 bh=uMvv/qrq9y+hVfZnIN4cofURdvOfgt0g9GnWA7czez8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hTu9WBzSmgRwFe6+Tf3g17dlVc5ZRVHbQCXZWHditbBDYC4btP3YhTJzJHi1QJ/dj
 i48moJ4YizZj8zFzlzOzCsn67msTd61pVlIOVar3Pq1jBKoJcZgST5T6vkey/k6TpA
 ASvxgkUbxfno1pI4f4BMWsme9Pjwyqto1Aj9YCDw=
Date: Wed, 22 Jan 2020 09:49:21 +0100
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Vladimir Stankovic <vladimir.stankovic@displaylink.com>
Subject: Re: [External] Re: staging: Add MA USB Host driver
Message-ID: <20200122084921.GA2420736@kroah.com>
References: <VI1PR10MB19659B32E563620B4D63AF1A91320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <VI1PR10MB1965A077526FE296608D5B1191320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <VI1PR10MB19658F2B6FDAD88FAA05546591320@VI1PR10MB1965.EURPRD10.PROD.OUTLOOK.COM>
 <20200122070312.GB2068857@kroah.com>
 <aba22f24-1124-2203-b9f6-4a5e9274a8a8@displaylink.com>
 <20200122074839.GA2099857@kroah.com>
 <98df2373-6f19-df36-c78c-e0384ddb8730@displaylink.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <98df2373-6f19-df36-c78c-e0384ddb8730@displaylink.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Petar Kovacevic <petar.kovacevic@displaylink.com>,
 Nikola Simic <nikola.simic@displaylink.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marko Miljkovic <marko.miljkovic@displaylink.com>,
 Stefan Lugonjic <stefan.lugonjic@displaylink.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?

http://daringfireball.net/2007/07/on_top

On Wed, Jan 22, 2020 at 08:16:09AM +0000, Vladimir Stankovic wrote:
> Hi Greg,
> 
> It was section 2.5 of the kernel development process, "staging trees".
> In particular, statement "where many sub-directories for drivers or 
> filesystems that are on their way to being added to the kernel tree 
> live" caught our attention.
> 
> Now, by reading it once again, I see that the rest of the section is in 
> line with your comment.
> 
> We'll address all comments received so far, and resubmit patch onto 
> appropriate repository. With that being said, is USB subsystem tree 
> (drivers/usb within usb.git repo) correct one? Please, advise.

If this is a USB host driver, then yes, drivers/usb/host/ would be the
correct location for this.

Note, at first glance, there is a bunch of work to do on this to get it
into "real" mergable shape.  Be sure to at the very least get it
'checkpatch.pl clean' before submitting it, that will help out a lot, if
it is not already done.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

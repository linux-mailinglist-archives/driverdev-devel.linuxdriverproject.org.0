Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 96460EC05F
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 10:15:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 68A4A23730;
	Fri,  1 Nov 2019 09:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6DRyPBXZwvL4; Fri,  1 Nov 2019 09:15:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1602F20243;
	Fri,  1 Nov 2019 09:15:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE50B1BF853
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 09:15:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A10C686A00
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 09:15:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kQDoWEwF7FAg for <devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 09:15:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9A049869EC
 for <devel@driverdev.osuosl.org>; Fri,  1 Nov 2019 09:15:36 +0000 (UTC)
Received: from localhost (unknown [84.241.195.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CAF252080F;
 Fri,  1 Nov 2019 09:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572599736;
 bh=dDSsvh/349/YsGRUcUEAZPUmQFj6QhYNPNtOxvWz+Ck=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OOIRsTldvF2msS/hgSTcDFUYANptm0qqIXeVbeTbUPtNSdIhUlB7eIsIp3bkw8InD
 BIShOY6e8ugng2BPI3DjjsXm+1Ed2fYDOn9k80jb/bTtr1irA8uHATjMvnzcEz2j1N
 AXKwmWS+oUxgcnwxjACqF+keaJHWI+sPPZmRI6xc=
Date: Fri, 1 Nov 2019 10:12:41 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v17 0/1] staging: Add VirtualBox guest shared folder
 (vboxsf) support
Message-ID: <20191101091241.GA2734789@kroah.com>
References: <20191028111744.143863-1-hdegoede@redhat.com>
 <20191028113950.GA2406@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028113950.GA2406@infradead.org>
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
Cc: devel@driverdev.osuosl.org, David Howells <dhowells@redhat.com>,
 Hans de Goede <hdegoede@redhat.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 28, 2019 at 04:39:50AM -0700, Christoph Hellwig wrote:
> On Mon, Oct 28, 2019 at 12:17:43PM +0100, Hans de Goede wrote:
> > Hi Greg,
> > 
> > As discussed previously can you please take vboxsf upstream through
> > drivers/staging?
> > 
> > It has seen many revisions on the fsdevel list, but it seems that the
> > fsdevel people are to busy to pick it up.
> > 
> > Previous versions of this patch have been reviewed by Al Viro, David Howells
> > and Christoph Hellwig (all in the Cc) and I believe that the current
> > version addresses all their review remarks.
> 
> Please just send it to Linus directly.  This is the equivalent of
> consumer hardware enablement and it is in a state as clean as it gets
> for the rather messed up protocol.

Ok, I've merged this to my -linus staging tree and will push it to Linus
in a few days, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

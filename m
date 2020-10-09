Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E2E288614
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 11:39:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A2D7F2E27F;
	Fri,  9 Oct 2020 09:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2WcBTPCzDzIX; Fri,  9 Oct 2020 09:39:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52D812E27E;
	Fri,  9 Oct 2020 09:39:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EDF281BF2FE
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 09:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EAF2086F8E
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 09:39:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vzwOtIREvd0C for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 09:39:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 89C8D86F8D
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 09:39:47 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6C8A722258;
 Fri,  9 Oct 2020 09:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602236386;
 bh=RiPdu2xnznmwFlrhyCIO21H1HDnSPUFZi24it9/7DmI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RohFRqNR2Geya7oIgV4XtvPDv5p6uR2j2LL3thxSCrw3smEF0o4eBQc9oJXMMf5xU
 VIn3usbKwdxP/I3KkWNh7fVaCgYVRHEY/1e7Da1GxC2dfM4IStAJrYe4yE6XbGaDdz
 tld2JbW6GFmcAuRSWnSjzQuEVdrl27CiE2gpRwZQ=
Date: Fri, 9 Oct 2020 11:40:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Sverdlin <alexander.sverdlin@nokia.com>
Subject: Re: [PATCH] staging: octeon: Drop on uncorrectable alignment or FCS
 error
Message-ID: <20201009094033.GA486675@kroah.com>
References: <20200108161042.253618-1-alexander.sverdlin@nokia.com>
 <20200110124832.GA1090147@kroah.com>
 <4fc15baf-313b-27fc-b2e6-46552d6a1630@nokia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4fc15baf-313b-27fc-b2e6-46552d6a1630@nokia.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Ralf Baechle <ralf@linux-mips.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 09, 2020 at 11:34:47AM +0200, Alexander Sverdlin wrote:
> Hello Greg,
> 
> On 10/01/2020 13:48, Greg Kroah-Hartman wrote:
> > On Wed, Jan 08, 2020 at 05:10:42PM +0100, Alexander X Sverdlin wrote:
> >> From: Alexander Sverdlin <alexander.sverdlin@nokia.com>
> >>
> >> Currently in case of alignment or FCS error if the packet cannot be
> >> corrected it's still not dropped. Report the error properly and drop the
> >> packet while making the code around a little bit more readable.
> >>
> >> Fixes: 80ff0fd3ab ("Staging: Add octeon-ethernet driver files.")
> >> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>
> >> ---
> >>  drivers/staging/octeon/ethernet-rx.c | 18 +++++++++---------
> >>  1 file changed, 9 insertions(+), 9 deletions(-)
> > 
> > This driver is now deleted from the tree, sorry.
> 
> Now that the driver is restored, would you please consider this patch again?

Feel free to submit it again if you feel it is still needed.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

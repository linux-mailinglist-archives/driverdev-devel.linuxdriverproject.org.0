Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D95288668
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 11:53:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C34E876FD;
	Fri,  9 Oct 2020 09:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DciVSoXC3reA; Fri,  9 Oct 2020 09:53:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2D52876DB;
	Fri,  9 Oct 2020 09:53:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F0A081BF2FE
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 09:53:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED7442E27E
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 09:53:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cFBRKNoswNen for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 09:53:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 08D022E273
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 09:53:41 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE1A522258;
 Fri,  9 Oct 2020 09:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602237221;
 bh=6HSAtlosTuvLii0lDuA/eNQB3cDV1llV2Y9So14ol98=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DhjVpKS/sUD+sNm36heb0uEqyGLycaVWCPLkXUGjQc123/UT07IdckpOb0G+sGSgD
 in7XddYYACRE9ehiZ3f23Plo5mKLancoOZaVk0pwCKYPs4DrnTUTH4/pwUO3/BqA6/
 k/o8gfgFrgWhInAgnyXM3ioiejQRVacSbRyGeFCM=
Date: Fri, 9 Oct 2020 11:54:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Alexander Sverdlin <alexander.sverdlin@nokia.com>
Subject: Re: [PATCH] staging: octeon: repair "fixed-link" support
Message-ID: <20201009095427.GA489317@kroah.com>
References: <20200108160957.253567-1-alexander.sverdlin@nokia.com>
 <d86d096a-c62a-88fb-c251-6a991b26ddd8@nokia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d86d096a-c62a-88fb-c251-6a991b26ddd8@nokia.com>
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

On Fri, Oct 09, 2020 at 11:40:24AM +0200, Alexander Sverdlin wrote:
> Hello Greg, Dave and all,
> 
> the below patch is still applicable as-is, would you please re-consider it now,
> as the driver has been undeleted?
> 
> On 08/01/2020 17:09, Alexander X Sverdlin wrote:

Why would we have a patch from January still in our inboxes? :)

Please resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6577C1B8439
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 09:42:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B54687F81;
	Sat, 25 Apr 2020 07:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oERovK36zobR; Sat, 25 Apr 2020 07:42:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A5A1987E45;
	Sat, 25 Apr 2020 07:42:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 664F11BF4E7
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 07:42:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6312F85815
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 07:42:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fn4n0tyWxMOk for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 07:42:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8CA5C8577A
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 07:42:14 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CEA6F2071C;
 Sat, 25 Apr 2020 07:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587800534;
 bh=iQgs2VdCh0KAFJBmecFCPBs68W1///ow4IdEZ43p86U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l6RxPjQHYcr0OjV8nbm0GtaH3//6QjiJ2lkVmyG65L5THVlGZTyHVmD1TK4uKrmUX
 8VUmuHOSikOMTjWCTW8sXi6VFOfVh1LUZjFOTkOV3ZXy/EQ+5SClKPHqNcCfx3+XMp
 VjcEqDRfqFmyHPZG77MRlBB1kdm1izxFjEBtGpKo=
Date: Sat, 25 Apr 2020 09:42:11 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kyoungho Koo <rnrudgh@gmail.com>
Subject: Re: [PATCH v2] Staging: gasket: fix typo in gasket_page_table.c
 comments.
Message-ID: <20200425074211.GA2046593@kroah.com>
References: <20200425033247.GA15604@koo-Z370-HD3>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200425033247.GA15604@koo-Z370-HD3>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 25, 2020 at 12:32:51PM +0900, Kyoungho Koo wrote:
> I have found double typed comments "the the". So i modified it to
> one "the".
> 
> Signed-off-by: Kyoungho Koo <rnrudgh@gmail.com>
> ---
>  drivers/staging/gasket/gasket_page_table.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

What changed from v1?  Always put that below the --- line, as
documented.  Please send a v3 with that information.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

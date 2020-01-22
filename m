Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 60905144E18
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jan 2020 09:57:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9217185FA7;
	Wed, 22 Jan 2020 08:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vi6lKFvb-5i0; Wed, 22 Jan 2020 08:57:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 55ACE84583;
	Wed, 22 Jan 2020 08:57:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3B151BF2FB
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 08:57:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B076587AAF
 for <devel@linuxdriverproject.org>; Wed, 22 Jan 2020 08:57:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SNmRP2UW3q8p for <devel@linuxdriverproject.org>;
 Wed, 22 Jan 2020 08:57:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3FCD687A56
 for <devel@driverdev.osuosl.org>; Wed, 22 Jan 2020 08:57:40 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A58D2253D;
 Wed, 22 Jan 2020 08:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579683460;
 bh=BO71Ig/atLd53yrlotlahFJmi4U33jJcXrA6eU31LNI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=deLMlOvVGt6KXrxBOrsAoTZHWciDMV7Sz2wzzQJppb0jnvG7vHH+E0IzQD9Kbx22n
 kgNN3WCX1AD0FMlNy7YxshX7m2I4nWnelN1/qT3vSyqhxNMKl9BOvQxghskC/9bBIK
 MpW5chD0AJHbi+kSoOotLENcW3gOicEgOla/kSDk=
Date: Wed, 22 Jan 2020 09:57:37 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "T.Kohada" <Kohada.Tetsuhiro@dc.mitsubishielectric.co.jp>
Subject: Re: [PATCH] staging: exfat: remove fs_func struct.
Message-ID: <20200122085737.GA2511011@kroah.com>
References: <20200117062046.20491-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117062046.20491-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 motai.hirotaka@aj.mitsubishielectric.co.jp, linux-kernel@vger.kernel.org,
 Mori.Takahiro@ab.mitsubishielectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 17, 2020 at 03:20:46PM +0900, T.Kohada wrote:
> Remove 'fs_func struct' and change indirect calls to direct calls.
> 
> The following issues are described in exfat's TODO.
> > Create helper function for exfat_set_entry_time () and
> > exfat_set_entry_type () because it's sort of ugly to be calling the same functionn directly and other code calling through  the fs_func struc ponters ...
> 
> The fs_func struct was used for switching the helper functions of fat16/fat32/exfat.
> Now, it has lost the role of switching, just making the code less readable.
> 
> Signed-off-by: T.Kohada <Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>

We need a "full" name here, not just an abbreviation, use what you would
for a document.

Also the patch does not apply to the linux-next tree at all, so I can't
take it.  Please rebase and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

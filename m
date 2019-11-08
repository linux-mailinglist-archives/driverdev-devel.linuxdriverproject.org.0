Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD16F519F
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 17:53:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2CE6386D39;
	Fri,  8 Nov 2019 16:53:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5zca4GEaS-AJ; Fri,  8 Nov 2019 16:53:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06D4D84973;
	Fri,  8 Nov 2019 16:53:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BC9C1BF370
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 16:53:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 12EF786274
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 16:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KEh0Gd-h7f+g for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:53:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6C0B584973
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 16:53:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7F7C2178F;
 Fri,  8 Nov 2019 16:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573231992;
 bh=wCFPCJjeLp/mKUX4a3nBezjesoDUvdEgEo0knwJoKiw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nBYjcowddhlr9DrZa28wAXpkV7VCFVTL2XVfAtFdK1ft/AvMzEZQb63K4uLIQeVnT
 vXTNJEAmY7sU1jih6pNGaWPDkjpyRlPpWm0zNdR8y1xZ0iqxmp+ZBt3gLq92f+d8FJ
 w/PmfsLNGi7pRMtpMzy3kbAVqbxnsAoEYyprL6ZI=
Date: Fri, 8 Nov 2019 17:53:09 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH] staging: most: Convert to the common vmalloc memalloc
Message-ID: <20191108165309.GA1168209@kroah.com>
References: <20191108164528.998-1-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108164528.998-1-tiwai@suse.de>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 08, 2019 at 05:45:28PM +0100, Takashi Iwai wrote:
> The recent change (*) in the ALSA memalloc core allows us to drop the
> special vmalloc-specific allocation and page handling.  This patch
> coverts to the common code.
> (*) 1fe7f397cfe2: ALSA: memalloc: Add vmalloc buffer allocation
>                   support
>     7e8edae39fd1: ALSA: pcm: Handle special page mapping in the
>                   default mmap handler
> 
> Signed-off-by: Takashi Iwai <tiwai@suse.de>
> 
> ---
> 
> Since the prerequisite commits above are found only on for-next branch
> of sound git tree, please give ACK if the patch is OK; then I'll apply
> it on top of my branch.  Thanks!
> 
> 

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

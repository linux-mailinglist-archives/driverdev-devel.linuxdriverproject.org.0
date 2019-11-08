Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BB2F4EDA
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 16:01:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57D6386B9E;
	Fri,  8 Nov 2019 15:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QH+9aBGpbAax; Fri,  8 Nov 2019 15:01:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DA1985F9B;
	Fri,  8 Nov 2019 15:01:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 94D111BF865
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 15:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 91C512079C
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 15:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1dFyeGXngGQM for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 15:01:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id D79A320448
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 15:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=G/5u+UhCP50amHPzLKGnv0BTAm+tmQfKhJaUJerqEy0=; b=Y4IVm24qdC7mLkCpXM8IjvNr1
 2Xs+e1a893wg5n8QF6uT2S7l/x2uHVBDxIPRdSKsQOzfQmXlVn+M9tmU08fI2JXgaFdKT27JPAyy+
 CVgEZgjPptvYXa4GttTmv2C7ui4KJ+i3dFPVnDuSad7g7lCRylEb09J4DQbCa1qXAz8jUyJO+2e48
 NIxU03XaWVfTJ3Y1RPnEIqkmZuf50UyqtodEv5Ln1gcaxZfZu3distsGY4hg9j2iUeGfovDe1uQOX
 eBmtw6GZwWs4FwNixbnLNkkpYnwvKB5zNB+xZxfpo0vdbTC0ncY9ZdSMNTywL18YyPjfxNCJ29THB
 ffh0h1TMA==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iT5ld-0002zi-HC; Fri, 08 Nov 2019 15:01:41 +0000
Date: Fri, 8 Nov 2019 07:01:41 -0800
From: Matthew Wilcox <willy@infradead.org>
To: Valery Ivanov <ivalery111@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, Joe Perches <joe@perches.com>
Subject: Re: [PATCH v2] staging: octeon: fix missing a blank line after
 declaration
Message-ID: <20191108150141.GG11823@bombadil.infradead.org>
References: <20191108142329.GA3192@hwsrv-485799.hostwindsdns.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108142329.GA3192@hwsrv-485799.hostwindsdns.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wambui.karugax@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


I would like to reiterate my opinion that this checkpatch warning is
bullshit.  For large functions, sure.  For this kind of function, it's
a waste of space.

On Fri, Nov 08, 2019 at 02:23:29PM +0000, Valery Ivanov wrote:
> This patch fixes "WARNING: Missing a blank line after declarations"
> Issue found by checkpatch.pl
> 
> Signed-off-by: Valery Ivanov <ivalery111@gmail.com>
> ---
> Changes in v2:
>   - fix huge indentation in commit message
> ---
>  drivers/staging/octeon/octeon-stubs.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> index d53bd801f440..ed9d44ff148b 100644
> --- a/drivers/staging/octeon/octeon-stubs.h
> +++ b/drivers/staging/octeon/octeon-stubs.h
> @@ -1375,6 +1375,7 @@ static inline union cvmx_gmxx_rxx_rx_inbnd cvmx_spi4000_check_speed(
>  	int port)
>  {
>  	union cvmx_gmxx_rxx_rx_inbnd r;
> +
>  	r.u64 = 0;
>  	return r;
>  }
> -- 
> 2.17.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

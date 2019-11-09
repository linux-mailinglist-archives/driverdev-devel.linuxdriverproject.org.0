Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5748DF5E13
	for <lists+driverdev-devel@lfdr.de>; Sat,  9 Nov 2019 09:36:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 285E42152A;
	Sat,  9 Nov 2019 08:36:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m20uohvf0ssG; Sat,  9 Nov 2019 08:36:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E2C3C20780;
	Sat,  9 Nov 2019 08:36:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C61131BF8B4
 for <devel@linuxdriverproject.org>; Sat,  9 Nov 2019 08:36:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BB23D87F1F
 for <devel@linuxdriverproject.org>; Sat,  9 Nov 2019 08:36:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RbZun0MzgahL for <devel@linuxdriverproject.org>;
 Sat,  9 Nov 2019 08:36:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9436787F12
 for <devel@driverdev.osuosl.org>; Sat,  9 Nov 2019 08:36:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B4ECC21848;
 Sat,  9 Nov 2019 08:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573288570;
 bh=Twvv3SnCCHk7pjSt9HqENuPTFyAh/jYwa0AK4ACbBLw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2JL2Pj0EnPAF/mh6hgPfwfrsqjFJomnaurivpy3Vz/op1tZu24nWW91vRVpJwpkEL
 Nl7AJLoGanUHv9kpY8U/ehsJ8QIS1c/89SSQ1wjdg4mqgAuRBtH/dDd/sbfdy+coN1
 bwmT7ySi2SNsMQfbmLq82gimKPOsk6SILKF+XKDI=
Date: Sat, 9 Nov 2019 09:36:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH] staging: wfx: add gcc extension __force cast
Message-ID: <20191109083607.GB1289162@kroah.com>
References: <20191108233837.33378-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108233837.33378-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Boqun.Feng@microsoft.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 08, 2019 at 11:38:37PM +0000, Jules Irenge wrote:
> Add gcc extension __force and __le32 cast to fix warning issued by Sparse tool."warning: cast to restricted __le32"

Can you wrap your lines properly please?

> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/wfx/debug.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
> index 0a9ca109039c..aa7b2dd691b9 100644
> --- a/drivers/staging/wfx/debug.c
> +++ b/drivers/staging/wfx/debug.c
> @@ -72,7 +72,7 @@ static int wfx_counters_show(struct seq_file *seq, void *v)
>  		return -EIO;
>  
>  #define PUT_COUNTER(name) \
> -	seq_printf(seq, "%24s %d\n", #name ":", le32_to_cpu(counters.count_##name))
> +	seq_printf(seq, "%24s %d\n", #name ":", le32_to_cpu((__force __le32)(counters.count_##name)))

That's usually a huge hint that something is wrong here.  If the data
type isn't already le32, then why is the data needed to be printed out
that way?  Shouldn't the data type itself be fixed instead?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

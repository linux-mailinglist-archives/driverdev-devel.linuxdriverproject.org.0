Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D79BCD8CB
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 21:08:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC1D486B05;
	Sun,  6 Oct 2019 19:08:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s6ObQ2dbwH8j; Sun,  6 Oct 2019 19:08:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 380A28651C;
	Sun,  6 Oct 2019 19:08:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83A221BF23C
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:08:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5796C87702
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:08:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 66WZ+DivO16j for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 19:08:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A47AC87699
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 19:08:37 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7E832077B;
 Sun,  6 Oct 2019 19:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570388917;
 bh=BcvGHiL+p+7ntg/3PF6YfqrRfphYWWCc4jkG1eHl7LA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gIdqH6hHNI9YsfNptiXFPA2D6mlUCPwKaLQIDbXX/aAMAHucmZCLzrnOXpL0T8t+B
 1cDEGP7P9hYsPSWMXkHNSi+DaPaEHFiAfwXW1BwmTz0Wmd9uOyuTEgws/zMg/Frszh
 K5s4fQKTR8zQKCtaWl3RDNvIuvxHfOvuTAEddRS0=
Date: Sun, 6 Oct 2019 21:08:35 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH] staging: comedi: Fix camelcase check warning
Message-ID: <20191006190835.GC237538@kroah.com>
References: <20191006184453.11765-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006184453.11765-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk, outreachy@googlegroups.com,
 linux-kernel@vger.kernel.org, olsonse@umich.edu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 06, 2019 at 07:44:53PM +0100, Jules Irenge wrote:
> Capitalize unit_ma to fix camelcase check warning.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/comedi/comedi.h    | 4 ++--
>  drivers/staging/comedi/comedidev.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedi.h b/drivers/staging/comedi/comedi.h
> index 09a940066c0e..df770043b37d 100644
> --- a/drivers/staging/comedi/comedi.h
> +++ b/drivers/staging/comedi/comedi.h
> @@ -674,7 +674,7 @@ struct comedi_rangeinfo {
>   * linear (for the purpose of describing the range), with sample value %0
>   * mapping to @min, and the 'maxdata' sample value mapping to @max.
>   *
> - * The currently defined units are %UNIT_volt (%0), %UNIT_mA (%1), and
> + * The currently defined units are %UNIT_volt (%0), %UNIT_MA (%1), and
>   * %UNIT_none (%2).  The @min and @max values are the physical range multiplied
>   * by 1e6, so a @max value of %1000000 (with %UNIT_volt) represents a maximal
>   * value of 1 volt.
> @@ -909,7 +909,7 @@ struct comedi_bufinfo {
>  #define RF_EXTERNAL		0x100
>  
>  #define UNIT_volt		0
> -#define UNIT_mA			1
> +#define UNIT_MA			1

Sorry, but "mA" is a unit of measurement of power, and needs to stay
as-is.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

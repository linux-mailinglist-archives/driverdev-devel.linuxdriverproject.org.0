Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A426224D4F
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Jul 2020 19:23:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22A948784C;
	Sat, 18 Jul 2020 17:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vQoG+uQ87Irs; Sat, 18 Jul 2020 17:23:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2BE7E877EA;
	Sat, 18 Jul 2020 17:23:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D66D1BF20B
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 17:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 662A420346
 for <devel@linuxdriverproject.org>; Sat, 18 Jul 2020 17:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6L8f0bhCRBNZ for <devel@linuxdriverproject.org>;
 Sat, 18 Jul 2020 17:23:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 11DD920336
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 17:23:37 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id l63so8219315pge.12
 for <devel@driverdev.osuosl.org>; Sat, 18 Jul 2020 10:23:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HcAfWAuJs7AnNRSRiy1oRmYmT0Pdkox9ao1uD5Mkx/Y=;
 b=bPWyxXN1h5W20gdA0xK4HiU6GdVqO7ebCxVKv/03F7Eslhe8nhI1NzX/aujdjP6Rox
 5yvEoXivKhEiAbamNsQOJxUCMrZh9rTqqplKu8CcUo67FpJJDHI/dq99hxulvEKpOk/j
 UyOpIMZXhrQ/57rfjN0PS950oJWPNHKIjjqI5DIlK/kji2llpmjLZ83y40KbckMFnDq0
 dnBLavB7dA5j0+LWh68SXr6moLXt6YvgIyDSMevXlgEuX2qIh2+KXcKXHSGD9Nqg6IMx
 9Cd1Rm6DZoqrivpcrxjp8O/A8EXCIfFvq2l/wwk6ITipgFSFwjawn+TqD5ND5gOj78IG
 XqJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HcAfWAuJs7AnNRSRiy1oRmYmT0Pdkox9ao1uD5Mkx/Y=;
 b=M+rKIAFU6n0455Meut0mCteWV+ThZkKBGlQIZ+kGy02yPsqKxDkxAO5PsfK0eNSr5J
 8jo0GS8SAz9G21WQEvMZjBmy3ZzO7As5e2AcoeN/cBXGXneJTmW7Atj0KXuZgLsd0iFI
 3onpOG6un4a56qcAA0/wUKBm1cFSAjQGV7H/utmvdX+6l+PKdK9I7IU6aYCIMD5nd8H2
 LpOTxlJ8iHKOck/I9hojmdBp3jysoGPHRweDeIqv76lSSSRg0ebQeZhl6cUTw7MfkvBv
 l66Zh9WMs5BQ8jKz6VQQJpQ/9ZUDraawlTHqrd8IyGCfIMRlQPBCLjAART3+jHW99cK+
 kngg==
X-Gm-Message-State: AOAM532LaO7erqe+UqnK7ToqCD12aF+7QKn18YFd+mdvfhb9kdtI0mIl
 xn6MvxTa99gJ3qNIHbHT4To=
X-Google-Smtp-Source: ABdhPJzgMIaNsupHLN9mrwUkeIirNGygTkZHn+ssWWxkmgekHUpklVBeI7PFsnj5KE5n7seJQVZFtA==
X-Received: by 2002:a63:7357:: with SMTP id d23mr13162695pgn.393.1595093016518; 
 Sat, 18 Jul 2020 10:23:36 -0700 (PDT)
Received: from saurav ([203.109.108.46])
 by smtp.gmail.com with ESMTPSA id q20sm10903991pfn.111.2020.07.18.10.23.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Jul 2020 10:23:35 -0700 (PDT)
Date: Sat, 18 Jul 2020 22:53:30 +0530
From: SAURAV GIREPUNJE <saurav.girepunje@gmail.com>
To: Ian Abbott <abbotti@mev.co.uk>, gregkh@linuxfoundation.org
Subject: Re: [PATCH] Staging: comedi: driver: Remove condition with no effect
Message-ID: <20200718172330.GA27103@saurav>
References: <20200712070628.GA18340@saurav>
 <20200713133438.GA3122574@kroah.com>
 <7653a794-d5ed-5d9f-95af-745a88769092@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7653a794-d5ed-5d9f-95af-745a88769092@mev.co.uk>
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
Cc: devel@driverdev.osuosl.org, saurav.girepunje@hotmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 13, 2020 at 02:41:19PM +0100, Ian Abbott wrote:
> On 13/07/2020 14:34, Greg KH wrote:
> > On Sun, Jul 12, 2020 at 12:36:28PM +0530, Saurav Girepunje wrote:
> > > Remove below warning in das1800.c
> > > WARNING: possible condition with no effect (if == else)
> > > 
> > > Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
> > > ---
> > >   drivers/staging/comedi/drivers/das1800.c | 6 ------
> > >   1 file changed, 6 deletions(-)
> > > 
> > > diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
> > > index f16aa7e9f4f3..7ab72e83d3d0 100644
> > > --- a/drivers/staging/comedi/drivers/das1800.c
> > > +++ b/drivers/staging/comedi/drivers/das1800.c
> > > @@ -1299,12 +1299,6 @@ static int das1800_attach(struct comedi_device *dev,
> > >   			outb(DAC(i), dev->iobase + DAS1800_SELECT);
> > >   			outw(0, dev->iobase + DAS1800_DAC);
> > >   		}
> > > -	} else if (board->id == DAS1800_ID_AO) {
> > > -		/*
> > > -		 * 'ao' boards have waveform analog outputs that are not
> > > -		 * currently supported.
> > > -		 */
> > > -		s->type		= COMEDI_SUBD_UNUSED;
> > 
> > What gave that warning?  The comment should show you why this is good to
> > keep as-is, right?
> 
> One option is to move the comment into the '} else {' part that follows this
> part.
> 
> -- 
> -=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
> -=( MEV Ltd. is a company registered in England & Wales. )=-
> -=( Registered number: 02862268.  Registered address:    )=-
> -=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
@gregkh : Got the warning using coccinelle. 
@Ian: Yes, we can move comment to else part.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6ACEFC10
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 12:10:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BE6B89309;
	Tue,  5 Nov 2019 11:10:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zIwcsxkELCph; Tue,  5 Nov 2019 11:10:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9356F85EAE;
	Tue,  5 Nov 2019 11:10:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 819D01BF574
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 11:10:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7716C8A669
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 11:10:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tlXjQERtmJhR for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 11:10:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8EA318A623
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 11:10:30 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id q70so20380959wme.1
 for <devel@driverdev.osuosl.org>; Tue, 05 Nov 2019 03:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=y2qxlg9/WxYNrodQutppo1itEPPVt4haSvgHKc6Nv0U=;
 b=fQwTMSPfRFIr9Xsxooeb+ZdrmMotEymjjH3x72bOkSt6I5ppLg3TGDl6JXUCh79wZY
 nwh/hKrc9OI6tvuJ3Il5RdP4wXlfboHsTUlrqY+mzOEuVxVneFmlh4SUGwJe+KaZDMNB
 rJdSD17SV2fe77NLKdviMNLnHXDZlJX4ZUMOiKT8zQKBkNvomvt9TNizP4d3BLe2tRVI
 LL147AeUfVtjMz8qzIHGvcYoTWtIY6NptFe0e9xVWgwJJ198Dum5OrMRu/pMFflk1Gc5
 yA3SRUMgnJkIUX4pxomzJf/l5e7jgD3QWhfXtLQjHnD4vzPwScNRBHkdfcc1r/GyZzfZ
 P12A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=y2qxlg9/WxYNrodQutppo1itEPPVt4haSvgHKc6Nv0U=;
 b=o8GvPw39Zb6mBreBcPXJrhvDwZ4ayVdwk1Lk1ZG03Vl4LQozzdHr2t79G8rsqQHK0d
 mAaUgnhqSfiMxg/GgVORwFqii/XPpjuPqqd1IAbuHst3M/0mVHwb1ppAPROMFyne7Uza
 U/sEAgB+J3XcouTBrXaCCMXlgxu6JHniaCVSxFqjIEoWZVR12KoVG9llIBQ6BKe/YUye
 kuVsXDk8Wmy0bzLSCt1ZTLCv1FLFzY/TpX3XhGkbZrLTWf7p3gaOiLbP3SKPGSjnBrBF
 GIShLsYdS1k9nOfQVpEawITlJMaNTGWlP3P4TDDqVfHmnHzEUoA8YEFONj5yVUEmgCyc
 XHsg==
X-Gm-Message-State: APjAAAUdOWD74nz9WBlHk64lPJrCxQrpjkdH1iHz7bSAWXDRCHFQkYHM
 K0cWpj3RysK68UIF0J3pXg==
X-Google-Smtp-Source: APXvYqyvvSKLAZakm9eFYTOjJ3YOmB1B6VsR9rqH+5wCmZ7zKBaZ55nBL4aPq0HmDNVMb8XotKN8LQ==
X-Received: by 2002:a05:600c:c5:: with SMTP id u5mr3526268wmm.35.1572952228869; 
 Tue, 05 Nov 2019 03:10:28 -0800 (PST)
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com.
 [79.73.36.243])
 by smtp.gmail.com with ESMTPSA id y67sm1366175wmb.38.2019.11.05.03.10.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 03:10:28 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Tue, 5 Nov 2019 11:09:44 +0000 (GMT)
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: rts5208: rewrite macro with GNU extension
 __auto_type
In-Reply-To: <20191104165148.GA2293059@kroah.com>
Message-ID: <alpine.LFD.2.21.1911051107590.11074@ninjahub.org>
References: <20191104164400.9935-1-jbi.octave@gmail.com>
 <20191104165148.GA2293059@kroah.com>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Jules Irenge <jbi.octave@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Mon, 4 Nov 2019, Greg KH wrote:

> On Mon, Nov 04, 2019 at 04:44:00PM +0000, Jules Irenge wrote:
> > Rewrite macro function with GNU extension __auto_type
> > to remove issue detected by checkpatch tool.
> > CHECK: MACRO argument reuse - possible side-effects?
> > 
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/rts5208/rtsx_chip.h | 92 +++++++++++++++++------------
> >  1 file changed, 55 insertions(+), 37 deletions(-)
> > 
> > diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
> > index bac65784d4a1..4b986d5c68da 100644
> > --- a/drivers/staging/rts5208/rtsx_chip.h
> > +++ b/drivers/staging/rts5208/rtsx_chip.h
> > @@ -386,23 +386,31 @@ struct zone_entry {
> >  
> >  /* SD card */
> >  #define CHK_SD(sd_card)			(((sd_card)->sd_type & 0xFF) == TYPE_SD)
> > -#define CHK_SD_HS(sd_card)		(CHK_SD(sd_card) && \
> > -					 ((sd_card)->sd_type & SD_HS))
> > -#define CHK_SD_SDR50(sd_card)		(CHK_SD(sd_card) && \
> > -					 ((sd_card)->sd_type & SD_SDR50))
> > -#define CHK_SD_DDR50(sd_card)		(CHK_SD(sd_card) && \
> > -					 ((sd_card)->sd_type & SD_DDR50))
> > -#define CHK_SD_SDR104(sd_card)		(CHK_SD(sd_card) && \
> > -					 ((sd_card)->sd_type & SD_SDR104))
> > -#define CHK_SD_HCXC(sd_card)		(CHK_SD(sd_card) && \
> > -					 ((sd_card)->sd_type & SD_HCXC))
> > -#define CHK_SD_HC(sd_card)		(CHK_SD_HCXC(sd_card) && \
> > -					 ((sd_card)->capacity <= 0x4000000))
> > -#define CHK_SD_XC(sd_card)		(CHK_SD_HCXC(sd_card) && \
> > -					 ((sd_card)->capacity > 0x4000000))
> > -#define CHK_SD30_SPEED(sd_card)		(CHK_SD_SDR50(sd_card) || \
> > -					 CHK_SD_DDR50(sd_card) || \
> > -					 CHK_SD_SDR104(sd_card))
> > +#define CHK_SD_HS(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> > +					 (_sd->sd_type & SD_HS); })
> > +#define CHK_SD_SDR50(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> > +					 (_sd->sd_type & SD_SDR50); })
> > +#define CHK_SD_DDR50(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> > +					 (_sd->sd_type & SD_DDR50); })
> > +#define CHK_SD_SDR104(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> > +					 (_sd->sd_type & SD_SDR104); })
> > +#define CHK_SD_HCXC(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> > +					 (_sd->sd_type & SD_HCXC); })
> > +#define CHK_SD_HC(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD_HCXC(_sd) && \
> > +					(_sd->capacity <= 0x4000000); })
> > +#define CHK_SD_XC(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD_HCXC(_sd) && \
> > +					 (_sd->capacity > 0x4000000); })
> > +#define CHK_SD30_SPEED(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD_SDR50(_sd) || \
> > +					CHK_SD_DDR50(_sd) || \
> > +					CHK_SD_SDR104(_sd); })
> >  
> >  #define SET_SD(sd_card)			((sd_card)->sd_type = TYPE_SD)
> >  #define SET_SD_HS(sd_card)		((sd_card)->sd_type |= SD_HS)
> > @@ -420,18 +428,24 @@ struct zone_entry {
> >  /* MMC card */
> >  #define CHK_MMC(sd_card)		(((sd_card)->sd_type & 0xFF) == \
> >  					 TYPE_MMC)
> > -#define CHK_MMC_26M(sd_card)		(CHK_MMC(sd_card) && \
> > -					 ((sd_card)->sd_type & MMC_26M))
> > -#define CHK_MMC_52M(sd_card)		(CHK_MMC(sd_card) && \
> > -					 ((sd_card)->sd_type & MMC_52M))
> > -#define CHK_MMC_4BIT(sd_card)		(CHK_MMC(sd_card) && \
> > -					 ((sd_card)->sd_type & MMC_4BIT))
> > -#define CHK_MMC_8BIT(sd_card)		(CHK_MMC(sd_card) && \
> > -					 ((sd_card)->sd_type & MMC_8BIT))
> > -#define CHK_MMC_SECTOR_MODE(sd_card)	(CHK_MMC(sd_card) && \
> > -					 ((sd_card)->sd_type & MMC_SECTOR_MODE))
> > -#define CHK_MMC_DDR52(sd_card)		(CHK_MMC(sd_card) && \
> > -					 ((sd_card)->sd_type & MMC_DDR52))
> > +#define CHK_MMC_26M(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
> > +					 (_sd->sd_type & MMC_26M); })
> 
> Ick, no.  These are obviously pointers, which can not be "evaluated
> twice" so this whole thing is just fine.
> 
> checkpatch is just a "hint" that you might want to look at the code.
> This stuff is just fine, look at how it is being used for proof of that.
> 
> thanks,
> 
> greg k-h
> 
Thanks for the feedback. It's good to know. I really appreciate.
Kind regards,
Jules
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

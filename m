Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C49BEFBF4
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 12:01:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DB00220D0;
	Tue,  5 Nov 2019 11:01:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TNAwoCoKDfT2; Tue,  5 Nov 2019 11:01:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09FEF20475;
	Tue,  5 Nov 2019 11:01:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D4F131BF311
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 11:01:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D120E8A00F
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 11:01:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tldIQYyzMoXf for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 11:01:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BA47889BA5
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 11:01:04 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id s1so20854765wro.0
 for <devel@driverdev.osuosl.org>; Tue, 05 Nov 2019 03:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=EZghrgWEU7PinMbxhgFFAGKP8eV2Li80iVqhELRRUNk=;
 b=R14zOSWyNvnQV94JDavTe85Z2Fw5Vh6JQY1YZyMFH78lqlQ4CFLQK7+AK3SIm8RV1W
 TgFgLPQuZkG/NAFioFBsPbrIfyUKjtJxvQGvRbCzrgILMad9ix/4OabzQJyDcYwgWRLI
 szNcSya8o5WB6aGzYVgRCywhGgV0/aEH4h1ScNVje3D1nu1yvysHJA9ZNaM8sSVITay1
 +MwePjVMuQn2DVL50ykuPTlNJfGnmQJNIaNnoHatgEfhhO4pa6iLY5NQbjSeKWLIa2VJ
 bbxCkFYcBGUU9W+kGodO7729kMfdevtedaVuGwIGuQGf0SivS06ZRc8+X47mjlTl2m+I
 j1rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=EZghrgWEU7PinMbxhgFFAGKP8eV2Li80iVqhELRRUNk=;
 b=cWwZyyyDnrT/coJ68GBRGY7oDz3gQoLlwWX1Qydqsln12YKRrBw+ZGpAiHPOQ0zHKT
 UW/azGafcnzSHL3uliEPr97voqxEjY1zP2hQfXMNHlJTr80SWu+tTy7tt3lkVi+W4ZHO
 rCPhpEgBBD5/korGDzPUEPfyCg92UT0guPDNQcDSxqfmrXo3GAqIgiDqknj9bPZ7amHm
 qPRghuntLm7WvU9jf1c4cDn2kShaWodj87au5e6fFn5qtU4zWC/GdqCx99UEWt0oTqO4
 degTleoehG2rigEaqF/wzaQl/VUebAHCwx/tnORA0gCgsOikvU5g285nE0Tb0Y4IVUKf
 z+VA==
X-Gm-Message-State: APjAAAWfwq742x4zgrhAT3vZWTpPkMzS2b8jhAy3bBHwZiLpHUJxPtZw
 uHfzXSPUK0AKv+xnoarQUg==
X-Google-Smtp-Source: APXvYqyKQZkCpxcqCNeDNXiv68+h/wuBt2avz/C60IDr9TDpC+zLAg6nxXBiuknuLSIG2h47a7oeLQ==
X-Received: by 2002:a5d:4688:: with SMTP id u8mr10457814wrq.40.1572951662765; 
 Tue, 05 Nov 2019 03:01:02 -0800 (PST)
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com.
 [79.73.36.243])
 by smtp.gmail.com with ESMTPSA id j22sm28263721wrd.41.2019.11.05.03.01.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 03:01:02 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Tue, 5 Nov 2019 11:00:44 +0000 (GMT)
To: Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH v2] staging: comedi: rewrite macro function with GNU
 extension typeof
In-Reply-To: <84a2d50f-a1ac-bdc5-989c-b0294e9dea22@mev.co.uk>
Message-ID: <alpine.LFD.2.21.1911051053560.11074@ninjahub.org>
References: <20191104163331.68173-1-jbi.octave@gmail.com>
 <84a2d50f-a1ac-bdc5-989c-b0294e9dea22@mev.co.uk>
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Mon, 4 Nov 2019, Ian Abbott wrote:

> On 04/11/2019 16:33, Jules Irenge wrote:
> > Rewrite macro function with the GNU extension typeof
> > to remove a possible side-effects of MACRO argument reuse "x".
> >   - Problem could rise if arguments have different types
> > and different use though.
> > 
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> > v1 - had no full commit log message, with changes not intended to be in the
> > patch
> > v2 - remove some changes not intended to be in this driver
> >       include note of a potential problem
> >   drivers/staging/comedi/comedi.h | 6 ++++--
> >   1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/comedi/comedi.h
> > b/drivers/staging/comedi/comedi.h
> > index 09a940066c0e..a57691a2e8d8 100644
> > --- a/drivers/staging/comedi/comedi.h
> > +++ b/drivers/staging/comedi/comedi.h
> > @@ -1103,8 +1103,10 @@ enum ni_common_signal_names {
> >   
> >   /* *** END GLOBALLY-NAMED NI TERMINALS/SIGNALS *** */
> >   
> > -#define NI_USUAL_PFI_SELECT(x)	(((x) < 10) ? (0x1 + (x)) : (0xb +
> > (x)))
> > -#define NI_USUAL_RTSI_SELECT(x)	(((x) < 7) ? (0xb + (x)) : 0x1b)
> > +#define NI_USUAL_PFI_SELECT(x)\
> > +	({typeof(x) x_ = (x); (x_ < 10) ? (0x1 + x_) : (0xb + x_); })
> > +#define NI_USUAL_RTSI_SELECT(x)\
> > +	({typeof(x) x_ = (x); (x_ < 7) ? (0xb + x_) : 0x1b; })
> >   
> >   /*
> >    * mode bits for NI general-purpose counters, set with
> > 
> 
> I wasn't sure about this the first time around due to the use of GNU
> extensions in uapi header files, but I see there are a few, rare instances of
> this GNU extension elsewhere in other uapi headers (mainly in netfilter
> stuff), so I guess it's OK.  However, it  does mean that user code that uses
> these macros will no longer compile unless GNU extensions are enabled.
> 
> Does anyone know any "best practices" regarding use of GNU extensions in user
> header files under Linux?
> 
> -- 
> -=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
> -=( MEV Ltd. is a company registered in England & Wales. )=-
> -=( Registered number: 02862268.  Registered address:    )=-
> -=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-
> 
> 
Apology, I misinterpreted the comments and send a second 
version without thinking much.
Please discard it unless you wish to try out.
Any way thanks for the feedback, I really appreciate I find it educative.
Kind regards,
Jules
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

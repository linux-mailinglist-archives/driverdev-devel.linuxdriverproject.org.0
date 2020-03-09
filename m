Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C63E817E105
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Mar 2020 14:26:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D299588332;
	Mon,  9 Mar 2020 13:26:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R6T-J6W5g0jK; Mon,  9 Mar 2020 13:26:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DA5798832D;
	Mon,  9 Mar 2020 13:26:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DCEEE1BF35F
 for <devel@linuxdriverproject.org>; Mon,  9 Mar 2020 13:26:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D98A2888FE
 for <devel@linuxdriverproject.org>; Mon,  9 Mar 2020 13:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ueUiNaSD45Ur for <devel@linuxdriverproject.org>;
 Mon,  9 Mar 2020 13:26:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 47B39888FC
 for <devel@driverdev.osuosl.org>; Mon,  9 Mar 2020 13:26:09 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id ay11so3989878plb.0
 for <devel@driverdev.osuosl.org>; Mon, 09 Mar 2020 06:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SN/uB0D2Yzk6crG8CckiI8AbJhkaIxgSVOsdNRCejtQ=;
 b=vZN2XnYDJ42k+ninu6A+IqHKelBwH0M+hvsD+QV5C1ROyLTi2CL/HhhIyjJdutTh/1
 pm1NaWqdB3J+PCc/hmjN7jo8hHGJwXnBk4S+fbh5wZFbZ5jjP2Km+6L0VY7iMrY0L7aA
 Y7p+WwwdH8DtI3Lb4sE1zsFcv5tQrvN4g/xCdPryr+YFKoAy2AZ2fR72wC2pJp4GuQKj
 KcLsJGg4vKdABf8bMPdCfQuisRs+6A89s78laLH06lBhpeZBHPaDAyZYwR7gPXSVmw70
 p6HMEoGKYu041hKfHOxlPj7MIZzisw82/ECfEnov4ZOLA/1j4hFO+xgcM4dmYDOiHlkl
 EHlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SN/uB0D2Yzk6crG8CckiI8AbJhkaIxgSVOsdNRCejtQ=;
 b=A+rnx6FMaXCLKmTk84PXyDOgz54PSLb7KuQ6U9LMCsk+IM1YDQOEpBEPCxYJENFQwx
 axGzVCyPmknnWXjwuD3g3cMKdvF1YYTcmmkgIpDRIftOWPd4cHAAKT8hg/gQ3E/g3+j1
 sSNTdNxZu5NdP+mE4k4lb+S0yV7K6gST/W9XkSgUVM5QOIdlR7wBmlx75oKxv8uiQnkJ
 sm1RGfahIuedxNQzrzT99+OGx7e8nq8BlEUfOjQIAxhbz/GzkKMCP3t/CRnPkamOX4Kj
 7mZcatpeF7TVBFrsH1a5pLIrPdqBY0Ka08/B8o8552Ml4RG3OVhRtt8YMng9NWThHi92
 ecuw==
X-Gm-Message-State: ANhLgQ3aYUmn12aNHJNLbrJAYykMfpIZOTTpXY94+K4yl3CCQskVVJy/
 tqJqifbFFYfC81J8/ADZYNI=
X-Google-Smtp-Source: ADFU+vuvA9G9Mzw9D+dwlX93AP7zcnrABY3oCgOA0sXAqr3IsZ/b+/wj64/nixCwGiiRrOLixf9kiw==
X-Received: by 2002:a17:90b:238c:: with SMTP id
 mr12mr3164241pjb.161.1583760368597; 
 Mon, 09 Mar 2020 06:26:08 -0700 (PDT)
Received: from Shreeya-Patel ([2405:204:2188:9cfe:18bc:a849:c699:3914])
 by smtp.googlemail.com with ESMTPSA id
 v133sm33700710pfc.68.2020.03.09.06.26.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Mar 2020 06:26:07 -0700 (PDT)
Message-ID: <b2db452217ced8bbd6f85121bf4c8fef3881d6ba.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operators
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Date: Mon, 09 Mar 2020 18:56:00 +0530
In-Reply-To: <alpine.DEB.2.21.2003090825280.2676@hadrien>
References: <20200308220004.9960-1-shreeya.patel23498@gmail.com>
 <f1327099b774e141bbeaa8abc47f98b9c6d49264.camel@perches.com>
 <af1a27fb8c5f7efbaf99ce3055cf3801b366d627.camel@gmail.com>
 <alpine.DEB.2.21.2003090825280.2676@hadrien>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, nramas@linux.microsoft.com,
 daniel.baluta@gmail.com, sbrivio@redhat.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 outreachy-kernel <outreachy-kernel@googlegroups.com>,
 Joe Perches <joe@perches.com>, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-03-09 at 08:35 +0100, Julia Lawall wrote:
> On Mon, 9 Mar 2020, Shreeya Patel wrote:
> 
> > On Sun, 2020-03-08 at 16:05 -0700, Joe Perches wrote:
> > > On Mon, 2020-03-09 at 03:30 +0530, Shreeya Patel wrote:
> > > > Add space around operators for improving the code
> > > > readability.
> > > 
> > > Hello again Shreeya.
> > > 
> > 
> > I have some questions here...
> > 
> > > The subject isn't really quite appropriate as you
> > > are not doing this space around operator addition
> > > for the entire subsystem.
> > > 
> > > IMO, the subject should be:
> > > 
> > > [PATCH] staging: rtl8188eu: rtw_mlme: Add spaces around operators
> > > 
> > > because you are only performing this change on this
> > > single file.
> > > 
> > > If you were to do this for every single file in the
> > > subsystem, you could have many individual patches with
> > > the exact same subject line.
> > > 
> > > And it would be good to show in the changelog that you
> > > have compiled the file pre and post patch without object
> > > code change.
> > > 
> > 
> > I'm not sure how to show this. Do you mean to add the output of
> > "make drivers/staging/rtl8188eu/core" before and after the changes?
> 
> You are working on one specific file, maybe foo.c.  Compile before
> making changes, which will give you foo.o.  Rename that file to
> something
> else.  Make your changes and compile again.  Do a diff with the
> previously
> compiled file.  It should produce nothing, indicating no difference.
> 
> If this .o file doesn't change and you only changed this .c file, the
> whole compiled driver won't change either.
> 

ok, got it.

> > I also don't understand the meaning of no object code change. If we
> > are
> > making the changes to code and then compiling it using the make
> > command
> > then a new file with .o extension is created and replaced by the
> > previous one isn't it?
> > 
> > > Also, it's good to show that git diff -w shows no source
> > > file changes.
> > > 
> > 
> > And this has to be...
> > git diff -w --shortstat drivers/staging/rtl8188eu/core/
> 
> --shortstat does not seem useful.  What you hope to see is that it
> produces nothing.
> 
Okay.
I will send a V2 with all the changes required.

Btw Joe, I am working against staging-testing tree

> julia
> 
> > Am I correct?
> > 
> > Thanks
> > 
> > > > Reported by checkpatch.pl
> > > > 
> > > > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8188eu/core/rtw_mlme.c | 40 +++++++++++--
> > > > ----
> > > > ------
> > > >  1 file changed, 20 insertions(+), 20 deletions(-)
> > > 
> > > When I try this using checkpatch --fix-inplace, I get
> > > 21 changes against the latest -next tree.
> > > 
> > > What tree are you doing this against?
> > > 
> > > 
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit 
> > https://groups.google.com/d/msgid/outreachy-kernel/af1a27fb8c5f7efbaf99ce3055cf3801b366d627.camel%40gmail.com
> > .
> > 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

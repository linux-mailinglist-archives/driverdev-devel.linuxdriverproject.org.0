Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D9C17D916
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Mar 2020 06:49:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 79B108813F;
	Mon,  9 Mar 2020 05:49:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pl1g1Bx6gppX; Mon,  9 Mar 2020 05:49:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF98A88117;
	Mon,  9 Mar 2020 05:49:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 86F501BF4DD
 for <devel@linuxdriverproject.org>; Mon,  9 Mar 2020 05:49:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 82FFC203F7
 for <devel@linuxdriverproject.org>; Mon,  9 Mar 2020 05:49:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g-Eu3Pnee8pY for <devel@linuxdriverproject.org>;
 Mon,  9 Mar 2020 05:49:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id BD49A203E9
 for <devel@driverdev.osuosl.org>; Mon,  9 Mar 2020 05:49:08 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id d9so4201017pgu.3
 for <devel@driverdev.osuosl.org>; Sun, 08 Mar 2020 22:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oZkC5jhk4EOPYchWGqBHGQPJ7o1ZBAozfok1ceDhJV0=;
 b=ZASaf3YuN3B+j/KI/qNDSYWrHHUZtHeQwHKi0PaCz9w4R3sv9X+Ksj14Jcde5QYK9+
 dxykImt3KiJAW0tX9DwbFamh1V39kcau1SxtGpbJrPjy+2z+wzWqaLdSx3RGvbGbYZP0
 Yr8VXYTO10Hu9jB0QT0+VYkHVnz2m44MHYvZErpnNVAcEQquneuZT8UhihN8gSexas2F
 dca1plE3EKhNXfT8p1yqwI+6byGh2w6K585Uawprfk61UtLxU9CxNL54BDGzRC3d26W0
 jzWKqP49f9ELw1MzdPkaQiY4HBCJv5U6IZfCdY5Wxvq5N907h35Yi8C4Ul12IXr08xvi
 vTVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oZkC5jhk4EOPYchWGqBHGQPJ7o1ZBAozfok1ceDhJV0=;
 b=SU3L4Y9YGsybTFxGBoknGL0hM+AVW3+fHnzUBj+TSlVo1XxzwUHsAS27u1H0r+ylI+
 cbZVDioL3F1orqCmwAklvRG1ABM/lALxmyPQoB5aul/hluM4tcRgoI+gW95iy9WhO+AF
 0OW4qgVibD6mzMMOetuV5CowP5maGIlN1x4y6bpLRsgcAaStu4kt+4OOJmKlKgeBwW6t
 7Dnsg/Qv/D6nJC4BC25IlPXpokFachi39/0zJDk0+e/LZj7yFIvFWzA5ElQuhAZdULui
 W4W7eoAZ7M8sDxmn/vsJ1VtkdekcpanzDqPhUOcyBBcsq3fBLb70OagMBdyhBtXifBfv
 XEjQ==
X-Gm-Message-State: ANhLgQ0dbiS0wydVRUAW8TWhC0fgqmZqNFMNj2KftIvhNzLR5YALOOKl
 kR+2FoCtYbHVA3tPpKSMNo4=
X-Google-Smtp-Source: ADFU+vt2URdzb/LPamPP5uu7fSoHrlQcADJNohiXAR3PQoEpQ3THu66EYzZkMez0CUV0foH9kw6O1w==
X-Received: by 2002:a63:f243:: with SMTP id d3mr7471050pgk.254.1583732948106; 
 Sun, 08 Mar 2020 22:49:08 -0700 (PDT)
Received: from Shreeya-Patel ([2405:204:2188:9cfe:18bc:a849:c699:3914])
 by smtp.googlemail.com with ESMTPSA id j5sm16904080pjz.44.2020.03.08.22.49.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 08 Mar 2020 22:49:07 -0700 (PDT)
Message-ID: <e392f09212ef4ad6dc917503e3e9782b7fefc07c.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operators
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Joe Perches <joe@perches.com>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Date: Mon, 09 Mar 2020 11:18:59 +0530
In-Reply-To: <f1327099b774e141bbeaa8abc47f98b9c6d49264.camel@perches.com>
References: <20200308220004.9960-1-shreeya.patel23498@gmail.com>
 <f1327099b774e141bbeaa8abc47f98b9c6d49264.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, daniel.baluta@gmail.com, sbrivio@redhat.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 nramas@linux.microsoft.com,
 "Larry.Finger@lwfinger.net" <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-03-08 at 16:05 -0700, Joe Perches wrote:
> On Mon, 2020-03-09 at 03:30 +0530, Shreeya Patel wrote:
> > Add space around operators for improving the code
> > readability.
> 
> Hello again Shreeya.
> 
> The subject isn't really quite appropriate as you
> are not doing this space around operator addition
> for the entire subsystem.
> 
> IMO, the subject should be:
> 
> [PATCH] staging: rtl8188eu: rtw_mlme: Add spaces around operators
> 
> because you are only performing this change on this
> single file.
> 
> If you were to do this for every single file in the
> subsystem, you could have many individual patches with
> the exact same subject line.

Oh yes, thanks for correcting me.
> 
> And it would be good to show in the changelog that you
> have compiled the file pre and post patch without object
> code change.
> 
> Also, it's good to show that git diff -w shows no source
> file changes.

okay will do this in v2.

> 
> > Reported by checkpatch.pl
> > 
> > Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_mlme.c | 40 +++++++++++------
> > ------
> >  1 file changed, 20 insertions(+), 20 deletions(-)
> 
> When I try this using checkpatch --fix-inplace, I get
> 21 changes against the latest -next tree.
> 
> What tree are you doing this against?

I am doing this against the latest -testing tree

Thanks
> 
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB7717D965
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Mar 2020 07:43:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 286E787FBE;
	Mon,  9 Mar 2020 06:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKeMlS88Lun4; Mon,  9 Mar 2020 06:43:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5EAE86123;
	Mon,  9 Mar 2020 06:43:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7FE31BF4D8
 for <devel@linuxdriverproject.org>; Mon,  9 Mar 2020 06:43:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D1DB7887C1
 for <devel@linuxdriverproject.org>; Mon,  9 Mar 2020 06:43:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VUQEfiZYt50T for <devel@linuxdriverproject.org>;
 Mon,  9 Mar 2020 06:43:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 05E27887B7
 for <devel@driverdev.osuosl.org>; Mon,  9 Mar 2020 06:43:46 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id w65so3830962pfb.6
 for <devel@driverdev.osuosl.org>; Sun, 08 Mar 2020 23:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vLzrIJTiJKWG/umLvpXl6KYDmMyAdQ96Sz6v66POXZo=;
 b=JIOsbo3oJ4xYG9s8Fr+jNcxbSeSP5nY8gr6LEmZwKl+1229/GElB1DADY0z9ZQYnxw
 D9tjUxq6f5RfNEclWemi5X22nj6/kZR6Qhjs9cTH35ibT5TCbK38kF+EY8RTxyw0RXYc
 Qe1P6wCYCTGIGeDFRSe0XBH1I2CKat+ocEQ6zYTOV9vPEWEUtwe0IV/3lHCusLMgYH1N
 uqdHQPSUUCRj5dxnQlyvOUUVIvXyU0JHPuakCYzOWcYxBJimQril1q8H1lfaIZ6XZlg+
 eU0lyE9iSpH+v6tqIp+F3RNBNQgDYAGRaWa/rLRF3MTZ1c7QIucsyLzIjqEiM8qyWHLp
 w2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vLzrIJTiJKWG/umLvpXl6KYDmMyAdQ96Sz6v66POXZo=;
 b=JAnt5IlCcbHweNOdqTf0JDDuk1jii5Jz/4mSwLnXmi3MddFtbq//mHBn1p4QQTc6tn
 e9G6ajLielBdzUpodt0+21F3R8v+5ctP6ESD5zB/8PJBXwfMYYtMScxiRQm+EZ7jrgnp
 KS2wmVCdoyuDDAgzCry62IV1mC5IiIRAet7WR+K6K4TR6uI/QJhfiqVYir/Tcba2Tppq
 ReKXtXO/yCnYv7U46v8igLHMiY5ByimAZ9xRJ+Rc90ImjyUmMmQTzN+aHAJGNExtXPoi
 4nEEjxuU8VQsUzm1KHKgXOZ1TxgIEBZ0WSnpbxEiPjlDi+/Vt0LNQ82gHKU9O4m4++oE
 YWmA==
X-Gm-Message-State: ANhLgQ2H8DT3jR3lAzVJApl/L8M0YLpZSfF/RmHpf0qUbcB2EjZgrPSh
 NYuOGEs2yV+aEPQvxTX0sA65XBRtAYDaLA==
X-Google-Smtp-Source: ADFU+vu5alnH4WMHxnR00roXIgV1wZUcacmBPffsBDeWsRAHzzbVdNLdUE91+PSDWE5JkMsO2ZScGA==
X-Received: by 2002:aa7:92da:: with SMTP id k26mr5983809pfa.139.1583736225415; 
 Sun, 08 Mar 2020 23:43:45 -0700 (PDT)
Received: from Shreeya-Patel ([2405:204:2188:9cfe:18bc:a849:c699:3914])
 by smtp.googlemail.com with ESMTPSA id m68sm6869638pjb.0.2020.03.08.23.43.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 08 Mar 2020 23:43:45 -0700 (PDT)
Message-ID: <af1a27fb8c5f7efbaf99ce3055cf3801b366d627.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Add space around
 operators
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Joe Perches <joe@perches.com>, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Date: Mon, 09 Mar 2020 12:13:37 +0530
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
 nramas@linux.microsoft.com, Larry.Finger@lwfinger.net
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
I have some questions here...

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
> 
> And it would be good to show in the changelog that you
> have compiled the file pre and post patch without object
> code change.
> 
I'm not sure how to show this. Do you mean to add the output of
"make drivers/staging/rtl8188eu/core" before and after the changes?

I also don't understand the meaning of no object code change. If we are
making the changes to code and then compiling it using the make command
then a new file with .o extension is created and replaced by the
previous one isn't it?  

> Also, it's good to show that git diff -w shows no source
> file changes.
> 

And this has to be...
git diff -w --shortstat drivers/staging/rtl8188eu/core/

Am I correct?

Thanks

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
> 
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

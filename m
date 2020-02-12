Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2360215AAE0
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 15:22:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1CC7784BB6;
	Wed, 12 Feb 2020 14:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iikex5Lq2m_H; Wed, 12 Feb 2020 14:22:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49011851D6;
	Wed, 12 Feb 2020 14:22:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F8AF1BF31C
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 14:22:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1C5CE84526
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 14:22:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m67oGi6edA-b for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 14:22:46 +0000 (UTC)
X-Greylist: delayed 02:23:48 by SQLgrey-1.7.6
Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com
 [209.85.219.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E46884514
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 14:22:41 +0000 (UTC)
Received: by mail-qv1-f67.google.com with SMTP id db9so985854qvb.3
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 06:22:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=d/Kt8yBYKJlgNHo8OSn7XhHpeaNdSfoPdFGNVhCHXhg=;
 b=ms1X1VaxpbbR8+Gk6MFJXoY/QlUkt8ucQV97uUV4Y3wVe0DRzl0usi8HObvPIVEE7X
 tT2hOzuTCvELQf557+7PiEks8opcHWEccFRMFkoOUslEFn+rVB6x9zfJ2CFSq2wmh5U7
 4E3TG1nwUHjYm7aNeC+Prq7Vb+29Uu3liB/H2xrXfVGmyWKSJIXwrXmzq5FcytNxUwLQ
 w6qBeazegpBi4rBSJmLNsTSl+Kq3QosePjngqd532wph53r4LKdLN0zest5joXIu6u0c
 BdQu8OgNtres8Z31Lyhvo3MdGMZR25tXuERPjBQtPbVcA0sdhQWKOqEfJljFfkLZ4aE1
 ieJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=d/Kt8yBYKJlgNHo8OSn7XhHpeaNdSfoPdFGNVhCHXhg=;
 b=KTbxPRtsrLWazHYYixkrh+PmXjP1zSC+b/GyTh1YN3XzKJaArgn2hu0d6z3+DNubmR
 Bjzy7VizVnepeZMznOlBn3W0fh6eSXBJCKDicilyTyQIOzYIwEfooX86dRivSlsR5j7f
 TZvRk1jtlTWH8uCHecMbXplaMk8GMZ3P3LrvGiEuKoYsoRAA3c5uQ/NoG+4nFErRAJte
 pjdA/gKCepKHb9VcbjueKYAeWzyyH2ONAqdo94nxEaao56G7x9vxR88rONYUpV0me+9g
 FWD748C6Yimr9Z0XavopdLUFFCnUW+BoCBo2cv7Su/Erl0WiZLhHUcuWyTxm/quQ0HYK
 8aSQ==
X-Gm-Message-State: APjAAAWXq6GP4jD69SBewm0fPXj9Zmn3p4fe3AkpVxpgRcaUGxt6rV+u
 ozplX6WgfJHV1SFcwhrHFVnnVVoqA8G61SHq
X-Google-Smtp-Source: APXvYqyvjba5s0JoLMVHbgm6nxAIDm5JLzYHeLGpGGZFqZiO6EA8wawgQdDDR4zlWxwLF5VroYLP0g==
X-Received: by 2002:aa7:8699:: with SMTP id d25mr8068680pfo.139.1581508247018; 
 Wed, 12 Feb 2020 03:50:47 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.171])
 by smtp.gmail.com with ESMTPSA id a195sm663016pfa.120.2020.02.12.03.50.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 03:50:45 -0800 (PST)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Wed, 12 Feb 2020 17:20:35 +0530
To: Julia Lawall <julia.lawall@inria.fr>
Subject: [PATCH v2] staging:gasket:gasket_core.c:unified quoted string split
 across lines in one line
Message-ID: <20200212115035.GB21751@kaaira-HP-Pavilion-Notebook>
References: <20200211200456.GA10351@kaaira-HP-Pavilion-Notebook>
 <alpine.DEB.2.21.2002112139550.3266@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2002112139550.3266@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
 linux-kernel@vger.kernel.org, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 11, 2020 at 09:45:03PM +0100, Julia Lawall wrote:
> On Wed, 12 Feb 2020, Kaaira Gupta wrote:
> 
> > Whenever it tries to map a region, but the region has permissions, or it attempts to open gasket with tgid, or it releases device node the messages are displayed in one line only, respectively.
> > And it becomes confusing for the developer to search for the code based on these lines' output since they are written in separate lines in the code.
> > So, this patch fixes this 'WARNING: quoted string split across lines'
> > in three lines in the file gasket_core.c.
> 
> Congratulations on making the first submission of this round :)

Thanks!

> 
> However, some changes are needed.  The subject line needs better tags at
> the beginning to highlight what part of the kernel is affected.  Use git
> log --oneline on this file to see what others have done.  And follow the
> style used, in terms of whitespace.  Also, try to avoid the word Fix in
> the subject line, which is not very descriptive.  The word WARNING: is
> probably also not necessary.
> 
> Afterwards, the log message should also respect the 80 character limit.
> Ideally even fewer characters, because it will come out indented in the
> resulting path.
> 
> Finally, the log message should describe what it does using the
> imperative, and again should avoid the word "fix".
> 
> julia

When the driver tries to map a region, but the region has certain
permissions, or when it attempts to open gasket with tgid, or when it
realeases device node; the logs are displayed in one line only while the
code has the strings split in two lines which makes it difficult for
developers to search for code based on the log messages. So, this patch
fixes three warnings of 'quoted string split across lines' in
gasket_core.c by merging the strings in one line.

Also, I wasn't sure if I were to send a separate batch or reply with a
v2 for this one. If former was the case than please let me know.
Thanks for your time!

> 
> >
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/gasket/gasket_core.c | 9 +++------
> >  1 file changed, 3 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/gasket/gasket_core.c b/drivers/staging/gasket/gasket_core.c
> > index cd8be80d2076..411aaf248b37 100644
> > --- a/drivers/staging/gasket/gasket_core.c
> > +++ b/drivers/staging/gasket/gasket_core.c
> > @@ -692,8 +692,7 @@ static bool gasket_mmap_has_permissions(struct gasket_dev *gasket_dev,
> >  		(vma->vm_flags & (VM_WRITE | VM_READ | VM_EXEC));
> >  	if (requested_permissions & ~(bar_permissions)) {
> >  		dev_dbg(gasket_dev->dev,
> > -			"Attempting to map a region with requested permissions "
> > -			"0x%x, but region has permissions 0x%x.\n",
> > +			"Attempting to map a region with requested permissions 0x%x, but region has permissions 0x%x.\n",
> >  			requested_permissions, bar_permissions);
> >  		return false;
> >  	}
> > @@ -1180,8 +1179,7 @@ static int gasket_open(struct inode *inode, struct file *filp)
> >  	inode->i_size = 0;
> >
> >  	dev_dbg(gasket_dev->dev,
> > -		"Attempting to open with tgid %u (%s) (f_mode: 0%03o, "
> > -		"fmode_write: %d is_root: %u)\n",
> > +		"Attempting to open with tgid %u (%s) (f_mode: 0%03o, fmode_write: %d is_root: %u)\n",
> >  		current->tgid, task_name, filp->f_mode,
> >  		(filp->f_mode & FMODE_WRITE), is_root);
> >
> > @@ -1258,8 +1256,7 @@ static int gasket_release(struct inode *inode, struct file *file)
> >  	mutex_lock(&gasket_dev->mutex);
> >
> >  	dev_dbg(gasket_dev->dev,
> > -		"Releasing device node. Call origin: tgid %u (%s) "
> > -		"(f_mode: 0%03o, fmode_write: %d, is_root: %u)\n",
> > +		"Releasing device node. Call origin: tgid %u (%s) (f_mode: 0%03o, fmode_write: %d, is_root: %u)\n",
> >  		current->tgid, task_name, file->f_mode,
> >  		(file->f_mode & FMODE_WRITE), is_root);
> >  	dev_dbg(gasket_dev->dev, "Current open count (owning tgid %u): %d\n",
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200211200456.GA10351%40kaaira-HP-Pavilion-Notebook.
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

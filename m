Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C75F3171D4
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 22:00:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BF2A86C37;
	Wed, 10 Feb 2021 21:00:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W1AX1A-GU4GM; Wed, 10 Feb 2021 21:00:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44EB086B87;
	Wed, 10 Feb 2021 21:00:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 437111BF42D
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 21:00:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 404AC87129
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 21:00:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lm+HAm6JuIWl for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 21:00:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2378587176
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 21:00:43 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id o15so1272506wmq.5
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 13:00:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rZp7A+v4WBoQUiE0OhhhKKw56QCYcEoeSnDvzhpwo2M=;
 b=JDVIaflUJw9bBTdq3ctIHkYy8SkkxhtSJgQQP9bW7tduZv6mCoJHnNnGYEH/Or393r
 GJEjkYBy9wSzZXPv+zNXdE1gnpjVLsTxR/jTjyvRFEqm61I4Nfbw4KaUJ67SjVQgWjkv
 wAzvfs3J48W8ZHKVaMg1fV265PDLE5qrRl7bJ3nA5NrUVIRyXHR6wXBR13zmuCcu/vf5
 FY7u0zLTqxZ59jrJyciU9ZIHLWt2RRNgUaDwG8F3w/o+DJgOnNUk0MKaaHeqZglJoP/h
 7qt/ARv3ydu7fCiPiEt9GMKXdun8NyBjcEbsa72qQlAX/P7laTHCV8SXHMVymQ9UFEd4
 ehyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rZp7A+v4WBoQUiE0OhhhKKw56QCYcEoeSnDvzhpwo2M=;
 b=lM/CUIzWdsHLEaxIN7QybrHn2Z45QP5+YC19IgDPJfiEN1sL0NeA1Kt93aLzndQ3ha
 yzRr6bH1mu/tXGIds6HoFrizulenbjVBH9VXwRwdKmCIM+13Y93n9PmXCgzTWgejMYXv
 IArZ9ffYMxtw53h+bu7kElR/1ckuP3ptuo07oTKskfP14P32ecgoFvDl7yB1oqHKR0Jn
 bka0L93qoYLIVy/R8ebc+Huszr3R6saLOcRFuTdcFBZT+Ur6u0mz/J2U9lBAyabd8kwk
 JKslwiEIOZdZCDpcjObxZ6wuLZE97ZKiVeJyvIq2TSJhZybD532E2O1qgFhGpsNbAvxc
 docg==
X-Gm-Message-State: AOAM531If5/vFifD6XudgYcFB4puca9y1hHAHtVf86LmtwyKmUq1u26C
 yCR55+D6WY2c+3fE3uzDlrgmlQ==
X-Google-Smtp-Source: ABdhPJxyJid9SF3FUbzMJFgxrftMe8ZG6eNhOB+9JksMFmVt31UxXtc0O162hXH0PMYeedtTDSIKyQ==
X-Received: by 2002:a7b:c5c1:: with SMTP id n1mr870556wmk.163.1612990837207;
 Wed, 10 Feb 2021 13:00:37 -0800 (PST)
Received: from kernelvm
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id z63sm4708558wme.8.2021.02.10.13.00.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 13:00:36 -0800 (PST)
Date: Wed, 10 Feb 2021 21:00:34 +0000
From: Phillip Potter <phil@philpotter.co.uk>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8723bs: cleanup macros within
 include/rtw_debug.h
Message-ID: <20210210210034.GA1919@kernelvm>
References: <20210210170003.100880-1-phil@philpotter.co.uk>
 <20210210184027.GZ2696@kadam> <20210210185544.GA1786@kernelvm>
 <20210210201849.GA2696@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210201849.GA2696@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, luk@wybcz.pl,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> > So I'm in the process of stripping out _dbgdump entirely as per Greg
> > K-H's suggestion - am I to understand raw printk is frowned upon though,
> > even with the correct KERN_x level specified?
> 
> Yes.  Ideally in drivers everything would use dev_dbg() and dev_err() or
> whatever.  But it's perhaps tricky to convert everything in a single
> patch so changing _dbgdump() to "#define pr_debug" as an intermediate
> step is probably fine.
> 
> Look at how people do pr_fmt():
> #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> 
> You could do a patch that does a mass replacement of DBG_871X with
> pr_debug().  Again, I haven't really looked at this code so you'll have
> to double check and consider what is the best way to break up the
> patches.
> 

That sounds great, I'll take a look, thanks.

> > One query I have is that individual patches I'm working on for this file are
> > generating an awful lot of checkpatch warnings themselves due to the
> > nature of the existing violations on the relevant lines. Is it
> > considered acceptable for me to still submit these, providing I do so in
> > a series which cleans up the other violations in separate patches?
> 
> It's tricky to know how to break up patches.  Probably the simplest
> advice is to only clean up a single type of checkpatch warning at a
> time.  But fix all the instances of that warning in a file.  Don't
> change anything else even if it is tempting.  Do that in the next patch.
> 
> The actuall rules are slightly more complicated and nuanced than that,
> but if you just fix one type at a time then that's okay.
> 
> One thing is that your patches should not introduce new checkpatch
> warnings.  So if you have two statements in an if statement and you
> delete one, then that means you have to delete he curly braces as well.
> 
> regards,
> dan carpenter
> 

Thanks again for the feedback. I will work on something over the next
few days.

Regards,
Phil
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

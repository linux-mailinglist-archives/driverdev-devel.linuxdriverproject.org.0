Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EEAC4B3D
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 12:20:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A185884173;
	Wed,  2 Oct 2019 10:20:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UPE+uYsSAA9h; Wed,  2 Oct 2019 10:20:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AB6DD87D9C;
	Wed,  2 Oct 2019 10:20:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8EA371BF9BA
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 10:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 85F60847CC
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 10:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3keToTu3ExIe for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 10:19:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
 [209.85.222.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C940584173
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 10:19:16 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id n63so6495011uan.2
 for <devel@driverdev.osuosl.org>; Wed, 02 Oct 2019 03:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XNa30yve2Gc+E2on5z0g/k/BCQ7mEkNTx69rJq/NTHs=;
 b=q1kj9JKvYBv2nJ93OYSc1lBisUWa2YsdS4Zx/UlAtjsWZM2cqlQ9eOX3soN5Ldosl7
 cP+OYpuhlZFYPP2J44/hN6CxFCawpyTGNG0MaFEisj1z+1a4SfGahRzHmcJBFFagwwaD
 M8v0m/OvzRINakHqjpTRlzzQFbbIO11cV8AH1efL1j5eJE09vZa6TXSqZFdocFaSfAzS
 OBfDWvzER17AI6e4PUmcB2WNY9Is18asTwIV6IEt5CcfE7VPhvB/5yGr7DWzwd6s31mk
 9DZFDs/rr9PaVExxKA1pX8RYGNsgYhICj7KqMYJ9GPWUKKSYup5XaV5k8+bBsQtAilQi
 ozrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XNa30yve2Gc+E2on5z0g/k/BCQ7mEkNTx69rJq/NTHs=;
 b=oTcdTayAEktDgSgah8Qgo8wQWYAVl0NTzParjiOIfydhHSX3YqKQ8oX9meQ+mxZIqk
 cyfD7cLUPld1IXSqQJpUE3hVNYNdW1lgk8TPWUUBy6K3T8Cwd6ZrtMm1MOasJhUIZ9Cl
 snhSkGqB02JWh5RuP7mVKofG2RDeDAUU+tR2K29QpoxjhTqyewR4XkdjpO1lDXgKlHmP
 fr3OrP+5DE8KHiJ9fGCPO/mcUWvcNbKWNUyip0eLXV1NcOLno0IXdR/X+GwLhvkgqsgT
 oKbGDwnKlOse17Fw71I4UMfcUxJ09haYy14x2SIboBrmjIdX6mcKfnznTCFFcyvWWgSj
 +rxw==
X-Gm-Message-State: APjAAAWDesIJJNGEgYsKXxAYEo2CsfQ53bsExNGzFgGt4u1UHUyGuuyE
 h/7KQm65KQlvDbFlJgJFASglxG9/YNv6WNNNWwg=
X-Google-Smtp-Source: APXvYqzkHy452gDpQx3Nhw9WERh6kNvwKDMOALwbs2RwGrJNwPWukoN1nLGAepNvvpGUW/fUaF39eQHscUJ63JSC4/g=
X-Received: by 2002:ab0:2982:: with SMTP id u2mr1270223uap.79.1570011555589;
 Wed, 02 Oct 2019 03:19:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190913180101.14573-1-sylphrenadin@gmail.com>
 <20190924151713.GA663334@kroah.com>
In-Reply-To: <20190924151713.GA663334@kroah.com>
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
Date: Wed, 2 Oct 2019 15:49:04 +0530
Message-ID: <CACAkLuqtNGymScoRXKSkf_F3-qc=89za9S34hEwkT8FwH_8ujQ@mail.gmail.com>
Subject: Re: [RESEND PATCH] staging: rtl8192u: Fix indentation for cleaner code
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 24, 2019 at 8:47 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Fri, Sep 13, 2019 at 11:31:01PM +0530, Sumera Priyadarsini wrote:
> > Fixes indentation for if condition in the file r8190_rtl8256.c for better readability as suggested by Dan Carpenter.
>
> Please wrap your lines at 72 columns.
>
>
I will keep this in mind. I was under the impression that the line
length must be 80 columns
but will make the change immediately. To be able to wrap the lines,
maybe code implementation
needs to be changed slightly as there is a lot of nesting present in
the current code?
>
>
> >
> > Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> > Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/r8190_rtl8256.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
>
> Why was this resent?  What changed from the 1st one that caused this to
> be required to be resent?
>
> Now you owe me a v2 of this patch with the changelog text fixed up :)
>
> thanks,
>
> greg k-h

I actually did not know that the merge window was closed, and thought
this patch may have been
missed as I did not get any reply.  So I resent it as it was following
the instructions here(https://kernelnewbies.org/Outreachyfirstpatch)
Should I send a v2 with the changelog stating the same?

regards,
Sumera
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

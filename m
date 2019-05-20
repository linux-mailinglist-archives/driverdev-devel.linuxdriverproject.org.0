Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98DA924152
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 21:40:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB03684D16;
	Mon, 20 May 2019 19:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MOy3G7UuQRxP; Mon, 20 May 2019 19:40:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3CD2184DDD;
	Mon, 20 May 2019 19:40:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE3011BF852
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 19:39:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA15B231F2
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 19:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2wN+mSghFoeJ for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 19:39:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 5FE54227EC
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 19:39:58 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id u11so14088776otq.7
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 12:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YUebiJ17NNcVQLQtzTcIV5nv9UHDA/a87tJuX5tMn/8=;
 b=HOcdZ37iA3KIpicArUDLvp/H06khXD4BJ8w51c5cTnkSaYcohwuP6m4KIyPJUbg2Ln
 frxbp3AmBj1k+v1fFV78QttRQqgKj2kiulb9Hz8+o5jM7o4ikoYb/DcsxCQ0rVqgCvp+
 rYyfigZThMPu0bHxSCQGAhxBBeVCL9q8Irv/75St48hPEDy2Rr+1INJ0luV0UxDmDHQ5
 4GRp7pIfgwNqxLyYMeW1XMGPe+Wa4O3d6hROV4IcY82Ig1IagwemYysS88KP4HQUgeQG
 DnWRWi+drPXnemSrVDFMMgDcZaPpz7T5yRJ9WbyEfxD5Q2R80mZVQogRxBtmS1+FldgO
 uQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YUebiJ17NNcVQLQtzTcIV5nv9UHDA/a87tJuX5tMn/8=;
 b=Db88wxH8ky5ZCxDNu1qfaIkpnc1TXjZAaFm8J4v/ciR7NMzzG81sVq7mJzfKldYplm
 qWLHKM5PvCew5DlH6jbhFdPvN2gSLzlZmcoMr/izLXnnLYQ3rIfiVvSkPekEitsFH0ns
 grGBirjxTgkbnJVIe4Se9+/h6TFbyh23WiY27oRV44qHPh+YhvE+QdoLJgCQ10eLmiTE
 B0PC9euFI8bR7qoU/CNlw61L+GTazl8C8U24udUZ+51F8hKWAXEAVsK42n8K4ejx+CAr
 w0tO5EJ+zsLOnZ0/crxEJOqGwoPqZQKcuZxbfDFMdTVtYI3rKg72UVl43sf+8wTPOYmE
 j0Lg==
X-Gm-Message-State: APjAAAXlyW79s/AdU93ouLi7FjvG+4xuVFCN8eW7GzuMHScJib967W4I
 8gKc3gYZtm6ANIX4DQkzHh6dHx/lvnbIppuLK5w=
X-Google-Smtp-Source: APXvYqyAzsyd0JjafVrjBkqHTQm6x3Gej0Of1TZSOGirgn94Wl2rSIKwhd/jZA3Dh5DHWiyM2soWCtM8a12Mu8PfuKc=
X-Received: by 2002:a9d:6e0f:: with SMTP id e15mr35944128otr.0.1558381197425; 
 Mon, 20 May 2019 12:39:57 -0700 (PDT)
MIME-Version: 1.0
References: <1558115396-3244-1-git-send-email-oscargomezf@gmail.com>
 <CAGngYiUZmfnuj5WUnwk18szijmsQjF27j=OxQfJtp5bNORppRQ@mail.gmail.com>
In-Reply-To: <CAGngYiUZmfnuj5WUnwk18szijmsQjF27j=OxQfJtp5bNORppRQ@mail.gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Mon, 20 May 2019 15:39:46 -0400
Message-ID: <CAGngYiUCedv6oqTPOS+eFwnQJajor3hwKjxeNRcKq031giZeXg@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: solve warning incorrect type dev_core.c
To: Oscar Gomez Fuente <oscargomezf@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 20, 2019 at 2:35 PM Sven Van Asbroeck <thesven73@gmail.com> wrote:
>
> Hi Oscar, thank you for your contribution! I have a question, see inline.
>
> On Fri, May 17, 2019 at 1:50 PM Oscar Gomez Fuente
> <oscargomezf@gmail.com> wrote:
> >
> > These changes solve a warning realated to an incorrect type inilizer in the function
> > fieldbus_poll.
> >

This warning was generated by sparse, right?

$ make C=2 drivers/staging/fieldbus/
<snip>
  CHECK   drivers/staging/fieldbus/dev_core.c
drivers/staging/fieldbus/dev_core.c:232:27: warning: incorrect type in
initializer (different base types)
drivers/staging/fieldbus/dev_core.c:232:27:    expected restricted
__poll_t ( *poll )( ... )
drivers/staging/fieldbus/dev_core.c:232:27:    got unsigned int (
*<noident> )( ... )
<snip>

I will test your patch on actual h/w, probably tomorrow.
I don't expect to see any problems.

Sven
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3132EADFC
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Jan 2021 16:13:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D9008539A;
	Tue,  5 Jan 2021 15:13:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WkeQOE75J-0d; Tue,  5 Jan 2021 15:13:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D4A485EBE;
	Tue,  5 Jan 2021 15:13:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBDBF1BF30A
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 15:13:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 94166203A0
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 15:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uf4T5bH+YNTl for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 15:13:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 98BFA20367
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 15:13:43 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2A7F622BEA
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 15:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609859623;
 bh=MqjUnFM1qYEObcIxrdd40/0DMydoq94Cw/5OgAF6XdQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GZv2zla4ypW06eAfrJi92frTdXt0lhbGzjbH29kDP4dNy0lhFmvx3XhALSaO7j2Z2
 uBi/8Jsq2eT4NavSR003v3IOEbcD3sSBkR3QsMLYMg/uqJuTC0jUjkvTG8VdRdQnn8
 pGQc7EI9WMCsI2/eofBo9ndpTbEFKbUj7Y/2LWdJzaSJJg3fcCfj9VkcNedmLON9zV
 +63rbx1Zpfs2SgXgCvdfvYpqsteWIaTN2+fAM8DG6nQBIHj+UHgWkI+N4A7d/NVSNj
 rv76qmOCLAOI+4remgxDsqVqIqrkjvbJbuVZxeyaAiylt/OYVPVbbUQNuH8nZL8Vg+
 fV6IQBifzWwyg==
Received: by mail-ot1-f51.google.com with SMTP id q25so29502906otn.10
 for <devel@driverdev.osuosl.org>; Tue, 05 Jan 2021 07:13:43 -0800 (PST)
X-Gm-Message-State: AOAM533eqfZtOO54lqm5MWC8lGfwDNbvRQGNiGNlV/768PO6vXCI/YmD
 m4UcvjJ3oxuzYtPd8lvGO0iVEUNMh8Wv/azd6cU=
X-Google-Smtp-Source: ABdhPJwA/H6p1+9QS0+62bmdYvonCnuUEkpfFFejSz5J7qObD+Mf5NjjnMtEb9bfHGx0tQq5sDW7E98x19TIBphGafA=
X-Received: by 2002:a9d:7a4b:: with SMTP id z11mr56376299otm.305.1609859622523; 
 Tue, 05 Jan 2021 07:13:42 -0800 (PST)
MIME-Version: 1.0
References: <20210104120929.294063-1-phil@raspberrypi.com>
 <20210104120929.294063-2-phil@raspberrypi.com>
 <20210104183134.GV2809@kadam>
 <989ef44f-2afe-5147-1277-74df56797a4c@raspberrypi.com>
 <20210105110140.GW2809@kadam>
 <CAMEGJJ2emHFr7P1nzBCKK66ynuFZU-+ftLdP=dG+14JUGofXUw@mail.gmail.com>
In-Reply-To: <CAMEGJJ2emHFr7P1nzBCKK66ynuFZU-+ftLdP=dG+14JUGofXUw@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 5 Jan 2021 16:13:26 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0Vi58Z48SfNoK=u8jdEmv+fvzPYQzodLiU1bccD5adiw@mail.gmail.com>
Message-ID: <CAK8P3a0Vi58Z48SfNoK=u8jdEmv+fvzPYQzodLiU1bccD5adiw@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Fix bulk userdata handling
To: Phil Elwell <phil@raspberrypi.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 5, 2021 at 12:53 PM Phil Elwell <phil@raspberrypi.com> wrote:
> On Tue, 5 Jan 2021 at 11:04, Dan Carpenter <dan.carpenter@oracle.com> wrote:

> >
> > Mixing __user pointers and regular pointers is dangerous and has lead to
> > security problems in this driver in the past.  But also mixing mixing
> > tokens with pointers just makes the code hard to read.  Instead of
> > undoing Arnd's work where he split the user space and kernel pointers
> > apart we should go ahead and spit it up even more.  At least add a giant
> > FIXME comment and an item in the TODO list so we don't forget to do this
> > before removing the code from staging.
>
> Those all sound like valid comments to have made against the original
> patch, but that seems to have received little attention.
>
> I'll just leave this here - perhaps Arnd has the patience to finish the job.

I don't really have an interest in this driver. I did a larger cleanup
in order to kill off copy_in_user() from the kernel, and then cleaned
it up some more for good measure, but I would hope someone
else can finish the address space mismatch.

       Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

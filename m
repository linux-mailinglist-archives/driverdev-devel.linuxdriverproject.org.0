Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BADAD286244
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Oct 2020 17:38:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B677486AE1;
	Wed,  7 Oct 2020 15:38:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q9ULWYNSmn4Q; Wed,  7 Oct 2020 15:38:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9060686ABF;
	Wed,  7 Oct 2020 15:38:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 32ED51BF5DB
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 15:37:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2F7AC8728E
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 15:37:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T6DMOz5LodDk for <devel@linuxdriverproject.org>;
 Wed,  7 Oct 2020 15:37:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E72C88728A
 for <devel@driverdev.osuosl.org>; Wed,  7 Oct 2020 15:37:56 +0000 (UTC)
Received: from mail-qt1-f169.google.com ([209.85.160.169]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mc0Aj-1kwEgA1oid-00dWWb for <devel@driverdev.osuosl.org>; Wed, 07 Oct
 2020 17:37:53 +0200
Received: by mail-qt1-f169.google.com with SMTP id h12so681807qtu.1
 for <devel@driverdev.osuosl.org>; Wed, 07 Oct 2020 08:37:52 -0700 (PDT)
X-Gm-Message-State: AOAM533RgFsvdBoS+gvHQPolaC9lsftcdao7HmPyDFJBcWqYteQq4U23
 UW2nFbvOD+FhKQL/OeOlXGczftghjtd5Tyt2TZk=
X-Google-Smtp-Source: ABdhPJz1UVvdnvYbeBpkWMxqxLtjj8co5Lbs7eY9E/m3oUp5zJUn8Q+Zu+P5QH4HKcr9UjsA/z0soG9AFQZi8lXMrJ8=
X-Received: by 2002:ac8:7cba:: with SMTP id z26mr2055142qtv.7.1602085072021;
 Wed, 07 Oct 2020 08:37:52 -0700 (PDT)
MIME-Version: 1.0
References: <20201007141702.655724-1-arnd@arndb.de>
 <20201007141812.GA1578@lst.de>
In-Reply-To: <20201007141812.GA1578@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 7 Oct 2020 17:37:35 +0200
X-Gmail-Original-Message-ID: <CAK8P3a38xRc602Sm2mRQQ2h5qp2r8znXBjzdfV2MWK33T21fSA@mail.gmail.com>
Message-ID: <CAK8P3a38xRc602Sm2mRQQ2h5qp2r8znXBjzdfV2MWK33T21fSA@mail.gmail.com>
Subject: Re: [PATCH] media: atomisp: stop compiling compat_ioctl32 code
To: Christoph Hellwig <hch@lst.de>
X-Provags-ID: V03:K1:2Wb6RfUgFHjHY+DzkXUI3dp/1IarTbiR/o0Nh3JXowkjZg9IBag
 ci+zP0f1zylPOkGZr1sPd2M3q/XlGiZkhpXisPOeL4Wt70ifvs8Fd4gcJqXGCD5+f6vQb2W
 ejbSJEivgmSNoZNrLt4pLchJAG8Athf4MZhrO2n443qobKxG0os8qFyQKHeCj1GEGPsvYKk
 qjlmTrEbQK7HQmndM70OA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:44eBIV9ok24=:jSzAUucNIqccygXlKuQ7Ss
 nvb+qu9QPpiZFqDRVGUQhqKOdsom/tez/zqpoB2S0iamMcEJeS8P1YlpOm+QRUekml5NRbkIT
 KVqjNzB/1TPnGO+w7qvcc/Piv4pcG6q3Be1qGMmm5dwW6EWluwtUJoymfBZqjHGEIGlWIaPbD
 xE/yKSDbQ3q9RR2cOV6wLvomg+5HY9hWAuauTiDGBJn7xpznMunSRwOHmY3juuPDVBDonN5ec
 pXZZYqHuqPD9/sQKO0fOCZsAVjuls9+kOwZqgoTGK0ENqmZ4Oso5iJ5VghbfZ30xMcHikIjgq
 29aNjk++QesG2RDDQPCvF4xv04MjSXWRKDZzE/tndfdO/ahqyxjquyB+Fr9u0rwnDOR0p5pZU
 vWgoaTyO+eYXCeBUrlgRrg4u1A8nG+9JoJ0DJV0r0/qDh99dToVO6Z8jVqdoPgH9bBuEXFNHf
 ZHun8C5YZotzXvXmyXA+jHY/cUt1uQvJtnUubmjmc0klQBOHVsKGJn73IpEoG9mkZzkvLqbsz
 j3vpf648neNLxw3G2lhVSzcWckXAUJt+8XmA+moeUby1daNZyTTto2vrkV1DsEWkhH23WkS5f
 NTq/C+t4ETnWBmxY8LDGxwo2rM2d+zgkbAeT9RtOQxLsPN8tJmT5XXgwH1yQD+U+DRsfVWm78
 LAV0GFEa58vhjO8QfiTSK1n2rZ6jF/jR2Yhl9fOiDCJoyr/tMjHqeF/wPayHjrIRJNzSL5J8j
 /HybEOKK66e0dFgCTsPLkQQeSwyq0SUQZwNYmMCAgkmS8lhUJ/lpQ6tc7CNAbkps6+rXa056u
 Hm09Hr1qjTGCJu4RMOOQA064kRaPQfVN09kV1T3Y5ts8H4bNlOs2LWTfQnr28Hh8GP1mMfJ
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 7, 2020 at 4:18 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Wed, Oct 07, 2020 at 04:16:39PM +0200, Arnd Bergmann wrote:
> > Alternatively, the entire file could just be removed, since anyone
> > willing to restore the functionality can equally well just look up
> > the contents in the git history if needed.
>
> I suspect that is the right thing.  Note that given that the driver
> is only in staging anyway, the right thing to do would be to change
> the ioctl ABI to be more compat friendly to start with.

Ok, I sent that as v2 now.

I wonder how many of those 56 ioctl commands in the driver are
actually used in practice. Is there a public repository for the
matching user space? Is it required to even use the driver
or is it otherwise compatible with normal v4l2 applications?

     Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

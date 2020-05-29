Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9D71E88EF
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 22:32:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D565F8859C;
	Fri, 29 May 2020 20:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MvsfQ6LORegr; Fri, 29 May 2020 20:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC53C8857E;
	Fri, 29 May 2020 20:32:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E7341BF346
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:32:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 56B6C8845E
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:32:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZoywZbtczD8g for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 20:32:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 935B38843F
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:32:03 +0000 (UTC)
Received: from mail-qk1-f180.google.com ([209.85.222.180]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mo73N-1jCXbm1DIp-00pZll for <devel@driverdev.osuosl.org>; Fri, 29 May
 2020 22:32:01 +0200
Received: by mail-qk1-f180.google.com with SMTP id s1so3477661qkf.9
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 13:32:01 -0700 (PDT)
X-Gm-Message-State: AOAM5324J5Tsl9VvogSwLE487t+Sa5iKnIdyUFCzZW2LehxxeA94YiJg
 GgqVyYPAuUO0AncvVx30HmbMdOocWmhr+dePELU=
X-Google-Smtp-Source: ABdhPJy22yz3chCQpFZuSTeS6bry0c1AdpBaXRM1H0/FX/oT/GPx28PEHETRXkrO9QPJfadK30BEV25AFXtnDouepOo=
X-Received: by 2002:a37:554:: with SMTP id 81mr9541210qkf.394.1590784320047;
 Fri, 29 May 2020 13:32:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200529200031.4117841-1-arnd@arndb.de>
 <CAKwvOdnND7XFgr7W9PvZAikJB1nKxB4K5N-oP0YrBT74oX_C9g@mail.gmail.com>
 <CAK8P3a2UKC=s7re2P+qfxz8eqeC+yCcPGuYKkgji9N_ugdgWhg@mail.gmail.com>
In-Reply-To: <CAK8P3a2UKC=s7re2P+qfxz8eqeC+yCcPGuYKkgji9N_ugdgWhg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 May 2020 22:31:44 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3u9fs9pSOXSkrmO=xNWUZ5fxZnL_O=f=0BDZ8DkHNYWQ@mail.gmail.com>
Message-ID: <CAK8P3a3u9fs9pSOXSkrmO=xNWUZ5fxZnL_O=f=0BDZ8DkHNYWQ@mail.gmail.com>
Subject: Re: [PATCH 1/9] staging: media: atomisp: fix incorrect NULL pointer
 check
To: Nick Desaulniers <ndesaulniers@google.com>
X-Provags-ID: V03:K1:Q4dH8NfK1fR3TFRX2Ouakdwovm7VEDjhk40P3bVCas8UgGLPCUj
 vGOCDOkoALeRWP+egUbtAUi/JzEp2h31PDVtwSIEyOO7SVNOFpVlrMMXZWm+pOWUaPCtPJU
 vMmIoous+L6nuCMR99SAdEF6Jrd+olBfU7rWQC7hSUpoRXcZ0JTW6i3r2vjJm2kC/Gf/TuB
 5mE8rhCjotm0d6HVCRdQg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:XNm+fZLMFCw=:xrvaFRSxP8LHKg1u5aMbfh
 nlos39SYWRVVZSnBA4oDcubFRGYSiOlBIgANBUL9GoIMPO7ouOKP2eHTqPw23/un8OlWv4e7h
 QjV55v2NvYaSudFkcuTWW6LrFIQOSeJoVESYrNlausy+A/RMTVtesCB1fzHP83p4chH/q/FOp
 uZUSAX82ZGYLV22gOhS1iGfXeT4HYJtF7M53zhjPPkqTeeFqFCiRGvjIAn4DR7+S4UghaQfhL
 4uyoLzxHn897udELglIe25EsopkBnez8+Yz1v9BD6YqNv/Pi2rv/LQ1k2uSjUjPm3ZbgQOAC6
 yej7Bc9bH3stlq2b9ivri0OYABeShJqFC+YnXSzXm7aFniI75BfwqJPglmW2wT47eXGPzokrL
 ek7K4pcW3cYIaBNNaOqCfD+qERaCkuQjKeTsDrXSBIsb2Y0z3LIRFYkwiKbpp/9zNFLRxcKrd
 HeIPEL5VyiGN1i3fjXCL3YeOz3wp/73lP/TV6bJLrprD0uLY0Num24cIlibSsoetqjw/iZqRT
 dVt4Alj35kAfL60K0IvHgOIU+sF2i4hZ3+U8tGu8meDtgbOWwlMv/gVKvQcbRDAl6iqvY3b5h
 7Ym5G8iNs+89srH6bDshVbWMCd85Wu5UJsZmJuXV68pjY7rv/2/FhVF5p3Oem31f9v/V8n4af
 rVNTXZnf5wDBqLzu1cwE570ce6w6I3e4tZMIHymHnOBrSWeEnLcHJZH9PayVNZJuzeyibs5EF
 wJUvUrEluwAgewcstWD1YSnfty8x+FWVXQQPJZ62GnPJYXNF86AJjI1gDjgP2vP1BZYHWnGbS
 lHvmBxa/x49K5AX7bOV8KNbtiOqfQTIF1t/lLpDsEPrrx6KopY=
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
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 29, 2020 at 10:23 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, May 29, 2020 at 10:04 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > See also Nathan's 7 patch series.
> > https://lore.kernel.org/lkml/20200527071150.3381228-1-natechancellor@gmail.com/
> >
> > Might be some overlap between series?
> >
>
> Probably. I really should have checked when I saw the number of warnings.
>
> At least this gives Mauro a chance to double-check the changes and see if
> Nathan and I came to different conclusions on any of them.

I checked now and found that the overlap is smaller than I expected.
In each case, Nathans' solution seems more complete than mine,
so this patch ("staging: media: atomisp: fix incorrect NULL pointer check")
and also "staging: media: atomisp: fix a type conversion warning" can be
dropped, but I think the others are still needed.

        Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

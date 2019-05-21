Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2392125A92
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 00:58:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 34B2D861F6;
	Tue, 21 May 2019 22:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OM4wDCtNoMOH; Tue, 21 May 2019 22:58:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E57385F84;
	Tue, 21 May 2019 22:58:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EC2A61BF369
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 22:57:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E65D086C1A
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 22:57:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bfaSfTi-S30E for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 22:57:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B6F3583970
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 22:57:58 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id e17so101115pgo.9
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 15:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Rucfmk6PQ+2b/65f5JoM4xkSIs4QXvUCkcZfbiU0v90=;
 b=Gl/VhcZFOBivxkiKw6dBnjOHFfkQn7ndyD/yixWgkgIiArp2I/BASUN8QxBl0aSeex
 RhDowpMU4HPLr4kEzwplUClGeUx/WiwtxsjnWjvvhBDXXyhE903aTpqlc8e9GRDY9G63
 iI1/xwka4FG01ivpWKjGXouiFHP1oapXaaupJXDbTtfFWlP9S6Q3pe09P1gaBaq4Avm3
 l70WtW/znfdzLDgSy0PW1CoxAiMS1f3+2XJIJ8QNmIG64Booan14UuJGgVC1MqmYIhR5
 nSmG2EtCSTxLOz2QbkS/dnVu9V2m1LZwup2Zw6a/W1Fxt0VF8uj16h/grNsuW6bigTRS
 je7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Rucfmk6PQ+2b/65f5JoM4xkSIs4QXvUCkcZfbiU0v90=;
 b=Wt4Cvx87uxthZ0NZhkjY2RgzN5/ThgfVL0ZxDxSCJQl9Sqgy9ROpu2b2dNnhBfMOxh
 izkD566kJ5fjyPT29dR9iA/U6Nlp4PPkPJ5R7T0HLyFdsODQhWZGitAnJlLRk0kAcB4x
 rdFSD7WYOX7iW1lfzewBVykuNqS8M67tspwh5/LtPxZbupjgtb16dZMqj1Sft7fLiJn/
 wqEqR0yHjO8PymEsitVoD+3WrnaUZrZ9dIRlxOxGrwVhFkn1S38x3z4ZFHU1h49RBzV/
 Zzia10hDIrU0i2Q8ZShNrg1ulqh2WS5NnIlJldVs/117D36aKu1/CXHCrEgLLuI6jL/I
 RIOQ==
X-Gm-Message-State: APjAAAXUXrTOzTrMvCc3xIQJlUxG2gIsQETbdvNo7R6FXDhC+mMLCalS
 uUo3/SOKD1iXZk7rK0GPH7wJt6TbzjY4vaF/ZHQsuw==
X-Google-Smtp-Source: APXvYqwxGSrs8uXEi1pQFu8Gcuy8B0mZUnnb4Oe/zWZjSl2FAodQnq6jQIaD+xkJYbuz+M7NzU3HxrxsspYTM6uMgIY=
X-Received: by 2002:a62:2b94:: with SMTP id r142mr549906pfr.184.1558479477850; 
 Tue, 21 May 2019 15:57:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190521174221.124459-1-natechancellor@gmail.com>
 <CAKwvOdmgpx0+d905PdRqUFeg8Fj8zf3mrWVOho_dajvEWvam9w@mail.gmail.com>
In-Reply-To: <CAKwvOdmgpx0+d905PdRqUFeg8Fj8zf3mrWVOho_dajvEWvam9w@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 21 May 2019 15:57:46 -0700
Message-ID: <CAKwvOdmpHOMwVM+d_W3eeu3xC+nZqBTO_hx9Wf1z10yivxSe7A@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8192u: Remove an unnecessary NULL check
To: Nathan Chancellor <natechancellor@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, John Whitmore <johnfwhitmore@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Richard Smith <richardsmith@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

+ Richard for real this time.

On Tue, May 21, 2019 at 3:53 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, May 21, 2019 at 10:42 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang warns:
> >
> > drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c:2663:47: warning:
> > address of array 'param->u.wpa_ie.data' will always evaluate to 'true'
> > [-Wpointer-bool-conversion]
> >             (param->u.wpa_ie.len && !param->u.wpa_ie.data))
> >                                     ~~~~~~~~~~~~~~~~~^~~~
> >
> > This was exposed by commit deabe03523a7 ("Staging: rtl8192u: ieee80211:
> > Use !x in place of NULL comparisons") because we disable the warning
> > that would have pointed out the comparison against NULL is also false:
> >
> > drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c:2663:46: warning:
> > comparison of array 'param->u.wpa_ie.data' equal to a null pointer is
> > always false [-Wtautological-pointer-compare]
> >             (param->u.wpa_ie.len && param->u.wpa_ie.data == NULL))
> >                                     ~~~~~~~~~~~~~~~~^~~~    ~~~~
> >
> > Remove it so clang no longer warns.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/487
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> > index f38f9d8b78bb..e0da0900a4f7 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> > @@ -2659,8 +2659,7 @@ static int ieee80211_wpa_set_wpa_ie(struct ieee80211_device *ieee,
> >  {
> >         u8 *buf;
> >
> > -       if (param->u.wpa_ie.len > MAX_WPA_IE_LEN ||
> > -           (param->u.wpa_ie.len && !param->u.wpa_ie.data))
>
> Right so, the types in this expression:
>
> param: struct ieee_param*
> param->u: *anonymous union*
> param->u.wpa_ie: *anonymous struct*
> param->u.wpa_ie.len: u32
> param->u.wpa_ie.data: u8 [0]
> as defined in drivers/staging/rtl8192u/ieee80211/ieee80211.h#L295
> https://github.com/ClangBuiltLinux/linux/blob/9c7db5004280767566e91a33445bf93aa479ef02/drivers/staging/rtl8192u/ieee80211/ieee80211.h#L295-L322
>
> so this is a tricky case, because in general array members can never
> themselves be NULL, and usually I trust -Wpointer-bool-conversion, but
> this is a special case because of the flexible array member:
> https://en.wikipedia.org/wiki/Flexible_array_member. (It seems that
> having the 0 in the length explicitly was pre-c99 GNU extension:
> https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html). I wonder if
> -Wtautological-pointer-compare applies to Flexible Array Members or
> not (Richard, do you know)?  In general, you'd be setting
> param->u.wpa_ie to the return value of a dynamic memory allocation,
> not param->u.wpa_ie.data, so this check is fishy to me.
>
> > +       if (param->u.wpa_ie.len > MAX_WPA_IE_LEN)
> >                 return -EINVAL;
> >
> >         if (param->u.wpa_ie.len) {
> > --
> > 2.22.0.rc1
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

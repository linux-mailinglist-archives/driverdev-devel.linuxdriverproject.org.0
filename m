Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B6D21C5F
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 19:24:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3E554318E0;
	Fri, 17 May 2019 17:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JsZd4DPpK6Mh; Fri, 17 May 2019 17:24:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 79F78318CD;
	Fri, 17 May 2019 17:24:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 938011BF5A6
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 17:24:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 90031883B0
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 17:24:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9E5HLHsAp-dp for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 17:24:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7A2DC8839F
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 17:24:49 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id e13so6943746ljl.11
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 10:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=AmXm4mte+zKcRwUfgm7yrjVf+yzjXJtSQs1xu+wr18Y=;
 b=Byc6MLZxhstwWrZKbHUArEiROx0Xz+ebzcmQSrUYGLddb+Vr5Rhojy2hsG4A0Ina+E
 wKN1gSz5nXCgSzkqmbUf1oeEwa0MbmeolFixrDweKEJoJZl6i5ts8H8bdPThFwFvFFTH
 CmYJo43iBpvPxieQ0bPwp7ByjMMUo9d+3QuW6vC+Hl6O6204m1wVGGd51IgouKwAzgCJ
 WHtiEGVqm6Azjran2Y75+i8allxtUkDMj7QKlmhBeQcqNhVJeOwvFfn+EqGwM+WG0OYk
 myalanETQYxQTD/+MvIMp46wbz5N7RcuDGKHTW4vP0JD40SncyQ3Yfhan40e3I40U/l+
 Mfeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=AmXm4mte+zKcRwUfgm7yrjVf+yzjXJtSQs1xu+wr18Y=;
 b=o2k3K1dCdHvVAQm9Vakt/WpvcEQoZprARDuxouxAw+jE+1tfFglUoO4s3cyouYSRHP
 ur1KBcgyHvmF4NpKwgARew8zYMYfvbrvhVcRH45qz+dL7yFXA/LZe3xhCRKTqHJJDASw
 Qt64bSTkmue/UiUPtKil2DBesv+UIUlwWqbC0wLNUDBaoJiY/MDeNp2tqARwm6E+KCct
 j0L52pC8f1Hysepw5SZ20TQIVRNQKPfYGTzzP/NaWe3tYCxPCe3s3+CqbOipIu+lBlRc
 kszdzMVz2K80yk0IbrjiKq6PxowgdywXwym48KaUJCILNaeSY/B8HUFndqvW2MVJxLgc
 8AOA==
X-Gm-Message-State: APjAAAXkefAKZXNxSBXhCZb1z7mBAOu7DwKKC9bNr+bl8yrvqJt+Bw9P
 2xByfE4/RjrZVJKYEn/Ass5932Jzc5Q5EsrJPiq8Kg==
X-Google-Smtp-Source: APXvYqzwYIRqHsI7YC50VtLBNAvQFIT93L0uR2LTLAAVvk9GLhBX0BS6TNc+beAueO9JP4gznut0cRdd4JfYqE8uNX4=
X-Received: by 2002:a2e:2d02:: with SMTP id t2mr26134557ljt.148.1558113887278; 
 Fri, 17 May 2019 10:24:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRSSEy3od0-7HMCOjbHprc9ihu3VqkJi1-5OKew0oN-2BcPvA@mail.gmail.com>
 <0000000000001165cb058538aaee@google.com>
 <CACT4Y+bvMEQRcxqM4c9zc-eySQBnuGipwudCNvBv5f+Dgyr3ow@mail.gmail.com>
 <CAHRSSEyFoGXLnR4RCf-_eefMjf18pPKmJni7GWTROtPmYAnaOA@mail.gmail.com>
 <CACT4Y+aH8eApRv8u_DKh8Rr4Rr70GK4Lv1Wxac=18DxXu8GWjw@mail.gmail.com>
In-Reply-To: <CACT4Y+aH8eApRv8u_DKh8Rr4Rr70GK4Lv1Wxac=18DxXu8GWjw@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 17 May 2019 10:24:36 -0700
Message-ID: <CAHRSSEx5_Aoa27npJ2gr9xb7kGGBp3bJH9s=EiaYsixZrGh4rQ@mail.gmail.com>
Subject: Re: kernel BUG at drivers/android/binder_alloc.c:LINE! (3)
To: Dmitry Vyukov <dvyukov@google.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>,
 syzbot <syzbot+f9f3f388440283da2965@syzkaller.appspotmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgODozMyBBTSBEbWl0cnkgVnl1a292IDxkdnl1a292QGdv
b2dsZS5jb20+IHdyb3RlOgo+Cj4gT24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgNToyNiBQTSBUb2Rk
IEtqb3MgPHRram9zQGdvb2dsZS5jb20+IHdyb3RlOgo+ID4KPiA+IFllcyAoYW5kIHN5emJvdCBz
ZWVtZWQgdG8gY29uZmlybSB0aGUgZml4KS4gSSBkaWRuJ3QgcmVhbGl6ZSBJIG5lZWRlZAo+ID4g
dG8gbWFudWFsbHkgY2xvc2UgdGhlIGlzc3VlLiBJIGd1ZXNzIHlvdSBjbG9zZWQgaXQgeWVzdGVy
ZGF5Lgo+Cj4gVGhpcyBpcyByZXF1aXJlZCB0byBhdXRvLWNsb3NlIHRoZSBidWcgd2hlbiB0aGUg
Y29tbWl0IGlzIG1lcmdlZDoKPgo+ID4gSU1QT1JUQU5UOiBpZiB5b3UgZml4IHRoZSBidWcsIHBs
ZWFzZSBhZGQgdGhlIGZvbGxvd2luZyB0YWcgdG8gdGhlIGNvbW1pdDoKPiA+IFJlcG9ydGVkLWJ5
OiBzeXpib3QrZjlmM2YzODg0NDAyODNkYTI5NjVAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+
Cj4gT3RoZXJ3aXNlIHNvbWVib2R5IG5lZWRzIHRvIHNheToKPgo+ICNzeXogZml4OiBiaW5kZXI6
IGZpeCBCVUdfT04gZm91bmQgYnkgc2VsaW51eC10ZXN0c3VpdGUKCkl0IGxvb2tzIGxpa2UgeW91
IGNsb3NlZCBpdCB3aXRoIHlvdXIgI3N5cyBjb21tZW50IF5eXgoKPgo+Cj4gPiBGcm9tOiBEbWl0
cnkgVnl1a292IDxkdnl1a292QGdvb2dsZS5jb20+Cj4gPiBEYXRlOiBGcmksIE1heSAxNywgMjAx
OSBhdCAzOjA4IEFNCj4gPiBUbzogc3l6Ym90Cj4gPiBDYzogQXJ2ZSBIasO4bm5ldsOlZywgQ2hy
aXN0aWFuIEJyYXVuZXIsIG9wZW4gbGlzdDpBTkRST0lEIERSSVZFUlMsIEdyZWcKPiA+IEtyb2Fo
LUhhcnRtYW4sIEpvZWwgRmVybmFuZGVzLCBMS01MLCBNYXJ0aWpuIENvZW5lbiwgc3l6a2FsbGVy
LWJ1Z3MsCj4gPiBUb2RkIEtqb3MgPHRram9zQGFuZHJvaWQuY29tPiwgVG9kZCBLam9zIDx0a2pv
c0Bnb29nbGUuY29tPgo+ID4KPiA+ID4gT24gRnJpLCBNYXIgMjksIDIwMTkgYXQgMTA6NTUgQU0g
c3l6Ym90Cj4gPiA+IDxzeXpib3QrZjlmM2YzODg0NDAyODNkYTI5NjVAc3l6a2FsbGVyLmFwcHNw
b3RtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBIZWxsbywKPiA+ID4gPgo+ID4gPiA+
IHN5emJvdCBoYXMgdGVzdGVkIHRoZSBwcm9wb3NlZCBwYXRjaCBhbmQgdGhlIHJlcHJvZHVjZXIg
ZGlkIG5vdCB0cmlnZ2VyCj4gPiA+ID4gY3Jhc2g6Cj4gPiA+ID4KPiA+ID4gPiBSZXBvcnRlZC1h
bmQtdGVzdGVkLWJ5Ogo+ID4gPiA+IHN5emJvdCtmOWYzZjM4ODQ0MDI4M2RhMjk2NUBzeXprYWxs
ZXIuYXBwc3BvdG1haWwuY29tCj4gPiA+ID4KPiA+ID4gPiBUZXN0ZWQgb246Cj4gPiA+ID4KPiA+
ID4gPiBjb21taXQ6ICAgICAgICAgOGMyZmZkOTEgTGludXggNS4xLXJjMgo+ID4gPiA+IGdpdCB0
cmVlOgo+ID4gPiA+IGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC9zdGFibGUvbGludXgtc3RhYmxlLmdpdCBtYXN0ZXIKPiA+ID4gPiBrZXJuZWwgY29uZmlnOiAg
aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20veC8uY29uZmlnP3g9OGRjZGNlMjVlYTcyYmVk
Zgo+ID4gPiA+IGNvbXBpbGVyOiAgICAgICBnY2MgKEdDQykgOS4wLjAgMjAxODEyMzEgKGV4cGVy
aW1lbnRhbCkKPiA+ID4gPiBwYXRjaDogICAgICAgICAgaHR0cHM6Ly9zeXprYWxsZXIuYXBwc3Bv
dC5jb20veC9wYXRjaC5kaWZmP3g9MTBmZWQ2NjMyMDAwMDAKPiA+ID4gPgo+ID4gPiA+IE5vdGU6
IHRlc3RpbmcgaXMgZG9uZSBieSBhIHJvYm90IGFuZCBpcyBiZXN0LWVmZm9ydCBvbmx5Lgo+ID4g
Pgo+ID4gPgo+ID4gPiBUb2RkLAo+ID4gPgo+ID4gPiBTaG91bGQgdGhpcyBwYXRjaCBmaXggdGhl
IGJ1Zz8gU2hvdWxkIHdlIGNsb3NlIHRoZSBidWcgYXMgZml4ZWQgdGhlbj8KPiA+ID4gSW4gbXkg
bG9jYWwgdGVzdGluZyBJIHNlZSB0aGlzIEJVRyBzdGlsbCBmaXJlcywgYnV0IGlmIHdlIHdpbGwg
bGVhdmUKPiA+ID4gb2xkIGZpeGVkIGJ1Z3Mgb3Blbiwgd2Ugd2lsbCBub3QgZ2V0IG5vdGlmaWNh
dGlvbnMgYWJvdXQgbmV3IGNyYXNoZXMuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9C821A81
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 17:26:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C348286AFB;
	Fri, 17 May 2019 15:26:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FpoB-uSj3pP0; Fri, 17 May 2019 15:26:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6519686AE2;
	Fri, 17 May 2019 15:26:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38F0F1BF397
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 15:26:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3573B87802
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 15:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4WYlpQBjphwj for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 15:26:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D9576877EA
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 15:26:19 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id j24so6704061ljg.1
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zvJW3K/FS9j2vxT/67+kmUSDA+MGU3uHDKkLdS8tVa0=;
 b=OaMaKXy54R+NbVudd2Xg6OpB6auFmiMDHwz8V3o46MZbUkAufgvpUgBxdrDuCS+Lz2
 2/M/uqSr+sN0/6MXQqfKRbIC3N+xgAgzK1o3KihDM6wd8EUwfWk36YY1pERMHvgcIKPX
 M6JMBdpr5RnThlCXjj1rKxEfPfROfeNZ7DcNlzQ5alD5iIv0yJ0kcZ2jjM73h+xVtDIp
 h3eYta6zyDoaAtsMFPe4YQKrT/C8Y1WmPkk3GwBuXYVxHp8mcnRJ2YEu1jYW6sPb5dXz
 u/FG4qrmw3Ky+gfKI0ppAo2C7wYqcmojjYbgofHn+7f5ww5/YPWv1jLFqK0hrsoaFZRb
 jkdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zvJW3K/FS9j2vxT/67+kmUSDA+MGU3uHDKkLdS8tVa0=;
 b=txRxpvkjPQdktS8/Bcsns298wpF6FMLSP/lVpgy3HBzOr+InOkmQeYLYQ98iTlEY11
 ukqaIlkATr97TSj8W0DLewPJfM5fcBpe1dMrMQVLJGWXT0Qnlo4injgFBC2uD0aVKes8
 Wzweq+iOfg+Tt7k6aRcSWNeIJ/Ug0PTcFEHy3kgzcvweWYzF5PYjQ9Ki5RYBwZrIsne+
 ht+lgCCWfwfvU3I4Mn1ROo04PbglC8HELSAuMCdxEWo1mAyx3zuvXPaIdlEnVDAn0yxI
 j0I7bg14wtM7OPwT49w0CPn6ePI3Mnz8+Zt9nQjEk/ZAch8eXnFSqMGf3NI9bKw8K8xT
 hP+g==
X-Gm-Message-State: APjAAAUfMXCTALMP7ichuYfM+Boueye5SIwi18OMILGoD+19yY76/vSN
 4MmQHPJbJzMvVEtCXjwQ/YVdxcaiwB87Adb+GVBZnA==
X-Google-Smtp-Source: APXvYqziH1YiKmkZ41CrbuyqVAx2OuWdaW+f59YxwY0995kt+Y9k5l7uq9QglgyQJp9P/BFOAZgpZ7DoIPSV4byKM9s=
X-Received: by 2002:a2e:9756:: with SMTP id f22mr7457174ljj.30.1558106777511; 
 Fri, 17 May 2019 08:26:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRSSEy3od0-7HMCOjbHprc9ihu3VqkJi1-5OKew0oN-2BcPvA@mail.gmail.com>
 <0000000000001165cb058538aaee@google.com>
 <CACT4Y+bvMEQRcxqM4c9zc-eySQBnuGipwudCNvBv5f+Dgyr3ow@mail.gmail.com>
In-Reply-To: <CACT4Y+bvMEQRcxqM4c9zc-eySQBnuGipwudCNvBv5f+Dgyr3ow@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 17 May 2019 08:26:06 -0700
Message-ID: <CAHRSSEyFoGXLnR4RCf-_eefMjf18pPKmJni7GWTROtPmYAnaOA@mail.gmail.com>
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

WWVzIChhbmQgc3l6Ym90IHNlZW1lZCB0byBjb25maXJtIHRoZSBmaXgpLiBJIGRpZG4ndCByZWFs
aXplIEkgbmVlZGVkCnRvIG1hbnVhbGx5IGNsb3NlIHRoZSBpc3N1ZS4gSSBndWVzcyB5b3UgY2xv
c2VkIGl0IHllc3RlcmRheS4KCkZyb206IERtaXRyeSBWeXVrb3YgPGR2eXVrb3ZAZ29vZ2xlLmNv
bT4KRGF0ZTogRnJpLCBNYXkgMTcsIDIwMTkgYXQgMzowOCBBTQpUbzogc3l6Ym90CkNjOiBBcnZl
IEhqw7hubmV2w6VnLCBDaHJpc3RpYW4gQnJhdW5lciwgb3BlbiBsaXN0OkFORFJPSUQgRFJJVkVS
UywgR3JlZwpLcm9haC1IYXJ0bWFuLCBKb2VsIEZlcm5hbmRlcywgTEtNTCwgTWFydGlqbiBDb2Vu
ZW4sIHN5emthbGxlci1idWdzLApUb2RkIEtqb3MgPHRram9zQGFuZHJvaWQuY29tPiwgVG9kZCBL
am9zIDx0a2pvc0Bnb29nbGUuY29tPgoKPiBPbiBGcmksIE1hciAyOSwgMjAxOSBhdCAxMDo1NSBB
TSBzeXpib3QKPiA8c3l6Ym90K2Y5ZjNmMzg4NDQwMjgzZGEyOTY1QHN5emthbGxlci5hcHBzcG90
bWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IEhlbGxvLAo+ID4KPiA+IHN5emJvdCBoYXMgdGVzdGVk
IHRoZSBwcm9wb3NlZCBwYXRjaCBhbmQgdGhlIHJlcHJvZHVjZXIgZGlkIG5vdCB0cmlnZ2VyCj4g
PiBjcmFzaDoKPiA+Cj4gPiBSZXBvcnRlZC1hbmQtdGVzdGVkLWJ5Ogo+ID4gc3l6Ym90K2Y5ZjNm
Mzg4NDQwMjgzZGEyOTY1QHN5emthbGxlci5hcHBzcG90bWFpbC5jb20KPiA+Cj4gPiBUZXN0ZWQg
b246Cj4gPgo+ID4gY29tbWl0OiAgICAgICAgIDhjMmZmZDkxIExpbnV4IDUuMS1yYzIKPiA+IGdp
dCB0cmVlOgo+ID4gZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0
L3N0YWJsZS9saW51eC1zdGFibGUuZ2l0IG1hc3Rlcgo+ID4ga2VybmVsIGNvbmZpZzogIGh0dHBz
Oi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvLmNvbmZpZz94PThkY2RjZTI1ZWE3MmJlZGYKPiA+
IGNvbXBpbGVyOiAgICAgICBnY2MgKEdDQykgOS4wLjAgMjAxODEyMzEgKGV4cGVyaW1lbnRhbCkK
PiA+IHBhdGNoOiAgICAgICAgICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94L3BhdGNo
LmRpZmY/eD0xMGZlZDY2MzIwMDAwMAo+ID4KPiA+IE5vdGU6IHRlc3RpbmcgaXMgZG9uZSBieSBh
IHJvYm90IGFuZCBpcyBiZXN0LWVmZm9ydCBvbmx5Lgo+Cj4KPiBUb2RkLAo+Cj4gU2hvdWxkIHRo
aXMgcGF0Y2ggZml4IHRoZSBidWc/IFNob3VsZCB3ZSBjbG9zZSB0aGUgYnVnIGFzIGZpeGVkIHRo
ZW4/Cj4gSW4gbXkgbG9jYWwgdGVzdGluZyBJIHNlZSB0aGlzIEJVRyBzdGlsbCBmaXJlcywgYnV0
IGlmIHdlIHdpbGwgbGVhdmUKPiBvbGQgZml4ZWQgYnVncyBvcGVuLCB3ZSB3aWxsIG5vdCBnZXQg
bm90aWZpY2F0aW9ucyBhYm91dCBuZXcgY3Jhc2hlcy4KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

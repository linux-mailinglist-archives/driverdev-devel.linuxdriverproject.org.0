Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A372036368
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 20:35:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93990861A3;
	Wed,  5 Jun 2019 18:35:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TEJahtsZPtvc; Wed,  5 Jun 2019 18:35:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3475484081;
	Wed,  5 Jun 2019 18:35:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C24C11BF3D7
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 18:35:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BA1298454E
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 18:35:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xtWs149aIQuK for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 18:35:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CF2B784081
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 18:35:30 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id i21so9514904ljj.3
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 11:35:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mnQfEm/7MtOSZQedYm/rNaUF8QKgQXPP5OxaldDdaVg=;
 b=IaBx1KaUg4beUnORkz2kM+Zr1JHEw8t0HThTj0en+wwhzRLCx3gKJtmznipuIqRaop
 GTtaouR/UZMK3TxLqd42PUnQ5Pw6wicato733KDFqyly8G5gNTN0aNH70PEQlJX2zrti
 jO3iCTFdFY54zVjp8QTGesb6uB9WLsBb1aEnR25YSmgqwkkIDP7oLUwJmUeGGDtr1VbE
 sDf4R4vnFLZx+D4ypqRRc47AH2dzkUTP2DKfl13+Gq7faOd942KQsRfxj9Cj4qz83P0b
 fpAtdCpKn/W/3YUoxjn4Cpw3ipCAs6J2yYA63hQaxPLNR+ZHftjCJMSlmbg7cVaXqqK+
 rlxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mnQfEm/7MtOSZQedYm/rNaUF8QKgQXPP5OxaldDdaVg=;
 b=Xb1wk3glcNP/hoVKJdDQ152zjxTJEnGK27vLsmL0GwSs1+iegBRnrnjXXc3EHzjV+S
 xDbj1BRcygh7F0ZY+C9M0nU6SvuZRLgZ7kGlVlk7djQOlE0ftiGbonk90mvBc/5TOVwm
 vnVMmJYaG50GXfvdTK7ofTjHtDIL3qXRYWCJRGXxfANtF2tUv3LpOMu4FdJFADrb7WnM
 hHNt1sgGxcStogV5v7+69GxINyrxV1BCKrz6aUDpBXrS+6PTMWaUcnzC3Nsv7pN5JqW3
 252sWyrF08/kRMrKamfvQdXMMrNyJdvWuQvoElHHvtotvOlpq4IbqJ76gE/5F1HABusV
 Gt3w==
X-Gm-Message-State: APjAAAWhqCkjWERl83//mGfj8YLIoVKLji/FsXdlU/Mc/nuHUWvWppbh
 MKqhpt4EK5dnR+wMcTZCMZR8Er/d68IdMzRSjd1sRA==
X-Google-Smtp-Source: APXvYqxWy9Ie6/69Mv1P2DMgDeBDqBfjVGt+yCAk0MnHMAl5TZmKwryhjEQvieqqbQVQQBnoIvQPGB9HLdv12uHiwPk=
X-Received: by 2002:a2e:5d49:: with SMTP id r70mr22262706ljb.102.1559759728273; 
 Wed, 05 Jun 2019 11:35:28 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+Z9GcY-d19ROSXgAq4-d_hOBVArfgGV1VdYcYD_X1coPQ@mail.gmail.com>
 <CAHRSSEw7QAfuKsQhHNZcwizn5zEVA6CjAdO7qh69g3fkXrk7DA@mail.gmail.com>
 <CACT4Y+ZLZHbsW3kFD5oXssuOP6LmY0YRRPnWc41CBQ6APJS4MA@mail.gmail.com>
 <CACT4Y+ZW=OaNBsWm0FMXfefHnNgpjb698r_+Xhn66dQZHfgVRw@mail.gmail.com>
 <CACT4Y+Z5wTRMCWYrhYArb0kBS5kRKJYH82m6F+_6qUucJUy7jQ@mail.gmail.com>
 <CACT4Y+b4+rnStjwQ2X5TzYHR1Jhu36MMA30fRCWZ0iGAuH6CCQ@mail.gmail.com>
 <CAHRSSEx0gkKMHoJu-qLxbb1YKqAwWF8xs6myGWsioeOAz+JvBg@mail.gmail.com>
 <CACT4Y+bMKPYnP2Pgo0Vn3EoQERmhq0+k6X8x0xvnOkCLUMa4pg@mail.gmail.com>
In-Reply-To: <CACT4Y+bMKPYnP2Pgo0Vn3EoQERmhq0+k6X8x0xvnOkCLUMa4pg@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 5 Jun 2019 11:35:17 -0700
Message-ID: <CAHRSSEy_q3j_2FxZawqiXr-F0aRxOH--DC4SbXeHq54azBZgFA@mail.gmail.com>
Subject: Re: binder stress testing
To: Dmitry Vyukov <dvyukov@google.com>, Hridya Valsaraju <hridya@google.com>
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
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 syzkaller <syzkaller@googlegroups.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

K0hyaWR5YSBWYWxzYXJhanUKCkRtaXRyeSwgSSBmaWxlZCBhbiBpbnRlcm5hbCBidWcgdG8gdHJh
Y2sgdGhpcyBjYXNlIChiLzEzNDU4NTk0MykuCjdhYTEzNWZjZjI2MyBkaWRuJ3QgcHJldmVudCBp
dCBzaW5jZSB5b3VyIHRlc3QgcHJvZ3JhbSBvcGVucwovZGV2L2JpbmRlcjAgdHdpY2UgYW5kIG9u
ZSBwcm9jIGluc3RhbmNlIGlzIHNlbmRpbmcgdGhlIGZkIHRvIHRoZQpvdGhlciBwcm9jIGluc3Rh
bmNlLiBEZWZpbml0ZWx5IGEgYnVnIGluIHRoZSBkcml2ZXIgKHRob3VnaCBub3Qgb25lCndlJ2Qg
ZXZlciBzZWUgaW4gYSAibm9ybWFsIiBiaW5kZXIgZW52aXJvbm1lbnQpLgoKT24gU2F0LCBNYXkg
MTgsIDIwMTkgYXQgMTI6MjUgQU0gRG1pdHJ5IFZ5dWtvdiA8ZHZ5dWtvdkBnb29nbGUuY29tPiB3
cm90ZToKPgo+IE9uIEZyaSwgTWF5IDE3LCAyMDE5IGF0IDg6MzQgUE0gVG9kZCBLam9zIDx0a2pv
c0Bnb29nbGUuY29tPiB3cm90ZToKPiA+ID4gT24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgNTo1MSBQ
TSBEbWl0cnkgVnl1a292IDxkdnl1a292QGdvb2dsZS5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+ID4gRnJvbTogRG1pdHJ5IFZ5dWtvdiA8ZHZ5dWtvdkBnb29nbGUuY29tPgo+
ID4gPiA+ID4gPiA+IERhdGU6IEZyaSwgTWF5IDE3LCAyMDE5IGF0IDM6MjYgQU0KPiA+ID4gPiA+
ID4gPiBUbzogR3JlZyBLcm9haC1IYXJ0bWFuLCBBcnZlIEhqw7hubmV2w6VnLCBUb2RkIEtqb3Ms
IE1hcnRpam4gQ29lbmVuLAo+ID4gPiA+ID4gPiA+IEpvZWwgRmVybmFuZGVzLCBDaHJpc3RpYW4g
QnJhdW5lciwgb3BlbiBsaXN0OkFORFJPSUQgRFJJVkVSUywgTEtNTAo+ID4gPiA+ID4gPiA+IENj
OiBzeXprYWxsZXIKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gSGksCj4gPiA+ID4gPiA+
ID4gPgo+ID4gPiA+ID4gPiA+ID4gSSBoYXZlIDIgcXVlc3Rpb25zIHJlIGRyaXZlcnMvYW5kcm9p
ZC9iaW5kZXIuYyBzdHJlc3MgdGVzdGluZy4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4g
PiAxLiBBcmUgdGhlcmUgYW55IGRvY3Mgb24gdGhlIGtlcm5lbCBpbnRlcmZhY2U/IE9yIHNvbWUg
ZXhhbXBsZXMgb24gaG93Cj4gPiA+ID4gPiA+ID4gPiB0byB1c2UgaXQgYW5kIHJlZmVyZW5jZSBz
eXNjYWxsIHNlcXVlbmNlcyB0byBtYWtlIGl0IGRvIHNvbWV0aGluZwo+ID4gPiA+ID4gPiA+ID4g
bWVhbmluZ2Z1bD8KPiA+ID4gPiA+ID4gPiA+IEkgaG9wZWZ1bGx5IGZpZ3VyZWQgb3V0IHN0cnVj
dCBsYXlvdXRzIGFuZCBvZmZzZXRzIG9mIG9iamVjdHMgdGhpbmcsCj4gPiA+ID4gPiA+ID4gPiBi
dXQgSSBzdGlsbCBjYW4ndCBmaWd1cmUgb3V0IGhhbmRsZXMsIHBvaW50ZXJzLCBub2RlcywgcG9p
bnRlciB0bwo+ID4gPiA+ID4gPiA+ID4gbm9kZXMuLi4gcG9pbnRlciB0byBkYXRhICg/KSwgcmVm
ZXJlbmNlcywgY29va2llcyBhbmQgd2hlcmUgZG9lcyBvbmUKPiA+ID4gPiA+ID4gPiA+IGdldCB2
YWxpZCB2YWx1ZXMgZm9yIHRoZXNlLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gVGhlIGtl
cm5lbCBpbnRlcmZhY2UgaXMgbm90IHdlbGwgZG9jdW1lbnRlZCBzaW5jZSBpdCBpc24ndCBpbnRl
bmRlZCB0bwo+ID4gPiA+ID4gPiA+IGJlIHVzZWQgYXBhcnQgZnJvbSBsaWJiaW5kZXIuIFRoZSBi
ZXN0IGV4YW1wbGUgZm9yIHlvdXIgcHVycG9zZXMgaXMKPiA+ID4gPiA+ID4gPiBwcm9iYWJseSB0
aGUgYmluZGVyRHJpdmVySW50ZXJmYWNlVGVzdCB3aGljaCB5b3UgY2FuIGZpbmQgYXQKPiA+ID4g
PiA+ID4gPiBodHRwczovL2FuZHJvaWQuZ29vZ2xlc291cmNlLmNvbS9wbGF0Zm9ybS9mcmFtZXdv
cmtzL25hdGl2ZS8rL3JlZnMvaGVhZHMvbWFzdGVyL2xpYnMvYmluZGVyL3Rlc3RzL2JpbmRlckRy
aXZlckludGVyZmFjZVRlc3QuY3BwLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gVGhlIGxp
YmJpbmRlciBzb3VyY2UgaXMgYXQKPiA+ID4gPiA+ID4gPiBodHRwczovL2FuZHJvaWQuZ29vZ2xl
c291cmNlLmNvbS9wbGF0Zm9ybS9mcmFtZXdvcmtzL25hdGl2ZS8rL3JlZnMvaGVhZHMvbWFzdGVy
L2xpYnMvYmluZGVyLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+
ID4gMi4gSW4gbXkgdGVzdHMgYW55IHRyYW5zYWN0aW9uIGJyZWFrcyBiaW5kZXIgZGV2aWNlIHVu
dGlsIHRoZSBuZXh0IHJlYm9vdC4KPiA+ID4gPiA+ID4gPiA+IElmIEkgb3BlbiBiaW5kZXIgZGV2
aWNlIHR3aWNlLCBtbWFwLCBzZXQgY29udGV4dCBhbmQgdGhlbiB0aGUgcHJvY2Vzcwo+ID4gPiA+
ID4gPiA+ID4gZGllcywgdGhlbiBldmVyeXRoaW5nIGl0IHJlbGVhc2VkIGZpbmUsIGluIHBhcnRp
Y3VsYXIgdGhlIGNvbnRleHQKPiA+ID4gPiA+ID4gPiA+IChjb250ZXh0X21ncl9ub2RlIGdvbmUp
LiBTbyB0aGUgZGV2aWNlIGlzIHJlYWR5IGZvciBhIG5leHQgdGVzdDoKPiA+ID4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+ID4gPiBbICAgNDAuMjQ3OTcwXVsgVDYyMzldIGJpbmRlcjogYmluZGVyX29w
ZW46IDYyMzg6NjIzOQo+ID4gPiA+ID4gPiA+ID4gWyAgIDQwLjI1MDgxOV1bIFQ2MjM5XSBiaW5k
ZXI6IDYyMzg6NjIzOSBub2RlIDEgdTAwMDAwMDAwMDAwMDAwMDAKPiA+ID4gPiA+ID4gPiA+IGMw
MDAwMDAwMDAwMDAwMDAwIGNyZWF0ZWQKPiA+ID4gPiA+ID4gPiA+IFsgICA0MC4yNTMzNjVdWyBU
NjIzOV0gYmluZGVyOiBiaW5kZXJfbW1hcDogNjIzOCAyMDBhMDAwMC0yMDBhMjAwMCAoOAo+ID4g
PiA+ID4gPiA+ID4gSykgdm1hIGY5IHBhZ2VwIDgwMDAwMDAwMDAwMDAwMjUKPiA+ID4gPiA+ID4g
PiA+IFsgICA0MC4yNTY0NTRdWyBUNjIzOV0gYmluZGVyOiBiaW5kZXJfb3BlbjogNjIzODo2MjM5
Cj4gPiA+ID4gPiA+ID4gPiBbICAgNDAuMjU5NjA0XVsgVDYyMzldIGJpbmRlcjogYmluZGVyX21t
YXA6IDYyMzggMjAwYzAwMDAtMjAwYzIwMDAgKDgKPiA+ID4gPiA+ID4gPiA+IEspIHZtYSBmOSBw
YWdlcCA4MDAwMDAwMDAwMDAwMDI1Cj4gPiA+ID4gPiA+ID4gPiBbICAgNDAuMjcxNTI2XVsgVDYy
MzhdIGJpbmRlcjogNjIzOCBjbG9zZSB2bSBhcmVhIDIwMGEwMDAwLTIwMGEyMDAwICg4Cj4gPiA+
ID4gPiA+ID4gPiBLKSB2bWEgMTgwMjAwZDkgcGFnZXAgODAwMDAwMDAwMDAwMDAyNQo+ID4gPiA+
ID4gPiA+ID4gWyAgIDQwLjI3MzExM11bIFQ2MjM4XSBiaW5kZXI6IDYyMzggY2xvc2Ugdm0gYXJl
YSAyMDBjMDAwMC0yMDBjMjAwMCAoOAo+ID4gPiA+ID4gPiA+ID4gSykgdm1hIDE4MDIwMGQ5IHBh
Z2VwIDgwMDAwMDAwMDAwMDAwMjUKPiA+ID4gPiA+ID4gPiA+IFsgICA0MC4yNzUwNThdWyAgIFQx
N10gYmluZGVyOiBiaW5kZXJfZmx1c2g6IDYyMzggd29rZSAwIHRocmVhZHMKPiA+ID4gPiA+ID4g
PiA+IFsgICA0MC4yNzU5OTddWyAgIFQxN10gYmluZGVyOiBiaW5kZXJfZmx1c2g6IDYyMzggd29r
ZSAwIHRocmVhZHMKPiA+ID4gPiA+ID4gPiA+IFsgICA0MC4yNzY5NjhdWyAgIFQxN10gYmluZGVy
OiBiaW5kZXJfZGVmZXJyZWRfcmVsZWFzZTogNjIzOCB0aHJlYWRzCj4gPiA+ID4gPiA+ID4gPiAw
LCBub2RlcyAwIChyZWYgMCksIHJlZnMgMCwgYWN0aXZlIHRyYW5zYWN0aW9ucyAwCj4gPiA+ID4g
PiA+ID4gPiBbICAgNDAuMjc4NjI2XVsgICBUMTddIGJpbmRlcjogYmluZGVyX2RlZmVycmVkX3Jl
bGVhc2U6IDYyMzgKPiA+ID4gPiA+ID4gPiA+IGNvbnRleHRfbWdyX25vZGUgZ29uZQo+ID4gPiA+
ID4gPiA+ID4gWyAgIDQwLjI3OTc1Nl1bICAgVDE3XSBiaW5kZXI6IGJpbmRlcl9kZWZlcnJlZF9y
ZWxlYXNlOiA2MjM4IHRocmVhZHMKPiA+ID4gPiA+ID4gPiA+IDEsIG5vZGVzIDEgKHJlZiAwKSwg
cmVmcyAwLCBhY3RpdmUgdHJhbnNhY3Rpb25zIDAKPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
ID4gPgo+ID4gPiA+ID4gPiA+ID4gSG93ZXZlciwgaWYgSSBhbHNvIHNlbmQgYSB0cmFuc2FjdGlv
biBiZXR3ZWVuIHRoZXNlIGZkJ3MsIHRoZW4KPiA+ID4gPiA+ID4gPiA+IGNvbnRleHRfbWdyX25v
ZGUgaXMgbm90IHJlbGVhc2VkOgo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+IFsgIDc4
My44NTE0MDNdWyBUNjE2N10gYmluZGVyOiBiaW5kZXJfb3BlbjogNjE2Njo2MTY3Cj4gPiA+ID4g
PiA+ID4gPiBbICA3ODMuODU4ODAxXVsgVDYxNjddIGJpbmRlcjogNjE2Njo2MTY3IG5vZGUgMSB1
MDAwMDAwMDAwMDAwMDAwMAo+ID4gPiA+ID4gPiA+ID4gYzAwMDAwMDAwMDAwMDAwMDAgY3JlYXRl
ZAo+ID4gPiA+ID4gPiA+ID4gWyAgNzgzLjg2MjQ1OF1bIFQ2MTY3XSBiaW5kZXI6IGJpbmRlcl9t
bWFwOiA2MTY2IDIwMGEwMDAwLTIwMGEyMDAwICg4Cj4gPiA+ID4gPiA+ID4gPiBLKSB2bWEgZjkg
cGFnZXAgODAwMDAwMDAwMDAwMDAyNQo+ID4gPiA+ID4gPiA+ID4gWyAgNzgzLjg2NTc3N11bIFQ2
MTY3XSBiaW5kZXI6IGJpbmRlcl9vcGVuOiA2MTY2OjYxNjcKPiA+ID4gPiA+ID4gPiA+IFsgIDc4
My44Njc4OTJdWyBUNjE2N10gYmluZGVyOiBiaW5kZXJfbW1hcDogNjE2NiAyMDBjMDAwMC0yMDBj
MjAwMCAoOAo+ID4gPiA+ID4gPiA+ID4gSykgdm1hIGY5IHBhZ2VwIDgwMDAwMDAwMDAwMDAwMjUK
PiA+ID4gPiA+ID4gPiA+IFsgIDc4My44NzA4MTBdWyBUNjE2N10gYmluZGVyOiA2MTY2OjYxNjcg
d3JpdGUgNzYgYXQgMDAwMDAwMDAyMDAwMDE4MCwKPiA+ID4gPiA+ID4gPiA+IHJlYWQgMCBhdCAw
MDAwMDAwMDIwMDAwMzAwCj4gPiA+ID4gPiA+ID4gPiBbICA3ODMuODcyMjExXVsgVDYxNjddIGJp
bmRlcjogNjE2Njo2MTY3IEJDX1RSQU5TQUNUSU9OIDIgLT4gNjE2NiAtCj4gPiA+ID4gPiA+ID4g
PiBub2RlIDEsIGRhdGEgMDAwMDAwMDAyMDAwMDIwMC0wMDAwMDAwMDIwMDAwMmMwIHNpemUgODgt
MjQtMTYKPiA+ID4gPiA+ID4gPiA+IFsgIDc4My44NzM4MTldWyBUNjE2N10gYmluZGVyOiA2MTY2
OjYxNjcgbm9kZSAzIHUwMDAwMDAwMDAwMDAwMDAwCj4gPiA+ID4gPiA+ID4gPiBjMDAwMDAwMDAw
MDAwMDAwMCBjcmVhdGVkCj4gPiA+ID4gPiA+ID4gPiBbICA3ODMuODc1MDMyXVsgVDYxNjddIGJp
bmRlcjogNjE2NiBuZXcgcmVmIDQgZGVzYyAxIGZvciBub2RlIDMKPiA+ID4gPiA+ID4gPiA+IFsg
IDc4My44NzU4NjBdWyBUNjE2N10gYmluZGVyOiAgICAgICAgIG5vZGUgMyB1MDAwMDAwMDAwMDAw
MDAwMCAtPiByZWYgNCBkZXNjIDEKPiA+ID4gPiA+ID4gPiA+IFsgIDc4My44NzY4NjhdWyBUNjE2
N10gYmluZGVyOiA2MTY2OjYxNjcgd3JvdGUgNzYgb2YgNzYsIHJlYWQgcmV0dXJuIDAgb2YgMAo+
ID4gPiA+ID4gPiA+ID4gWyAgNzgzLjg4NjcxNF1bIFQ2MTY3XSBiaW5kZXI6IDYxNjYgY2xvc2Ug
dm0gYXJlYSAyMDBhMDAwMC0yMDBhMjAwMCAoOAo+ID4gPiA+ID4gPiA+ID4gSykgdm1hIDE4MDIw
MGQ5IHBhZ2VwIDgwMDAwMDAwMDAwMDAwMjUKPiA+ID4gPiA+ID4gPiA+IFsgIDc4My44ODgxNjFd
WyBUNjE2N10gYmluZGVyOiA2MTY2IGNsb3NlIHZtIGFyZWEgMjAwYzAwMDAtMjAwYzIwMDAgKDgK
PiA+ID4gPiA+ID4gPiA+IEspIHZtYSAxODAyMDBkOSBwYWdlcCA4MDAwMDAwMDAwMDAwMDI1Cj4g
PiA+ID4gPiA+ID4gPiBbICA3ODMuODkwMTM0XVsgICBUMjddIGJpbmRlcjogYmluZGVyX2ZsdXNo
OiA2MTY2IHdva2UgMCB0aHJlYWRzCj4gPiA+ID4gPiA+ID4gPiBbICA3ODMuODkxMDM2XVsgICBU
MjddIGJpbmRlcjogYmluZGVyX2ZsdXNoOiA2MTY2IHdva2UgMCB0aHJlYWRzCj4gPiA+ID4gPiA+
ID4gPiBbICA3ODMuODkyMDI3XVsgVDI5MDNdIGJpbmRlcjogcmVsZWFzZSA2MTY2OjYxNjcgdHJh
bnNhY3Rpb24gMiBvdXQsIHN0aWxsIGFjdGl2ZQo+ID4gPiA+ID4gPiA+ID4gWyAgNzgzLjg5MzA5
N11bIFQyOTAzXSBiaW5kZXI6IHVuZXhwZWN0ZWQgd29yayB0eXBlLCA0LCBub3QgZnJlZWQKPiA+
ID4gPiA+ID4gPiA+IFsgIDc4My44OTM5NDddWyBUMjkwM10gYmluZGVyOiB1bmRlbGl2ZXJlZCBU
UkFOU0FDVElPTl9DT01QTEVURQo+ID4gPiA+ID4gPiA+ID4gWyAgNzgzLjg5NDg0OV1bIFQyOTAz
XSBiaW5kZXI6IG5vZGUgMyBub3cgZGVhZCwgcmVmcyAxLCBkZWF0aCAwCj4gPiA+ID4gPiA+ID4g
PiBbICA3ODMuODk1NzE3XVsgVDI5MDNdIGJpbmRlcjogYmluZGVyX2RlZmVycmVkX3JlbGVhc2U6
IDYxNjYgdGhyZWFkcwo+ID4gPiA+ID4gPiA+ID4gMSwgbm9kZXMgMSAocmVmIDEpLCByZWZzIDAs
IGFjdGl2ZSB0cmFuc2FjdGlvbnMgMQo+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+Cj4g
PiA+ID4gPiA+ID4gPiBBbmQgYWxsIHN1YnNlcXVlbnQgdGVzdHMgd2lsbCBmYWlsIGJlY2F1c2Ug
IkJJTkRFUl9TRVRfQ09OVEVYVF9NR1IKPiA+ID4gPiA+ID4gPiA+IGFscmVhZHkgc2V0IiBwcmVz
dW1hYmx5IHRvIHRoZSBub3cgdW5yZWNvdmVyYWJseSBkZWFkIHByb2Nlc3M6Cj4gPiA+ID4gPiA+
ID4gPgo+ID4gPiA+ID4gPiA+ID4gWyAgODMxLjA4NTE3NF1bIFQ2MTkxXSBiaW5kZXI6IGJpbmRl
cl9vcGVuOiA2MTkwOjYxOTEKPiA+ID4gPiA+ID4gPiA+IFsgIDgzMS4wODc0NTBdWyBUNjE5MV0g
YmluZGVyOiBCSU5ERVJfU0VUX0NPTlRFWFRfTUdSIGFscmVhZHkgc2V0Cj4gPiA+ID4gPiA+ID4g
PiBbICA4MzEuMDg4OTEwXVsgVDYxOTFdIGJpbmRlcjogNjE5MDo2MTkxIGlvY3RsIDQwMTg2MjBk
IDIwMDAwMGMwIHJldHVybmVkIC0xNgo+ID4gPiA+ID4gPiA+ID4gWyAgODMxLjA5MDYyNl1bIFQ2
MTkxXSBiaW5kZXI6IGJpbmRlcl9tbWFwOiA2MTkwIDIwMGEwMDAwLTIwMGEyMDAwICg4Cj4gPiA+
ID4gPiA+ID4gPiBLKSB2bWEgZjkgcGFnZXAgODAwMDAwMDAwMDAwMDAyNQo+ID4gPiA+ID4gPiA+
ID4gWyAgODMxLjA5Mjc4M11bIFQ2MTkxXSBiaW5kZXI6IGJpbmRlcl9vcGVuOiA2MTkwOjYxOTEK
PiA+ID4gPiA+ID4gPiA+IFsgIDgzMS4wOTQwNzZdWyBUNjE5MV0gYmluZGVyOiBiaW5kZXJfbW1h
cDogNjE5MCAyMDBjMDAwMC0yMDBjMjAwMCAoOAo+ID4gPiA+ID4gPiA+ID4gSykgdm1hIGY5IHBh
Z2VwIDgwMDAwMDAwMDAwMDAwMjUKPiA+ID4gPiA+ID4gPiA+IFsgIDgzMS4wOTYyMThdWyBUNjE5
MV0gYmluZGVyOiA2MTkwOjYxOTEgd3JpdGUgNzYgYXQgMDAwMDAwMDAyMDAwMDE4MCwKPiA+ID4g
PiA+ID4gPiA+IHJlYWQgMCBhdCAwMDAwMDAwMDIwMDAwMzAwCj4gPiA+ID4gPiA+ID4gPiBbICA4
MzEuMDk3NjA2XVsgVDYxOTFdIGJpbmRlcjogNjE5MDo2MTkxIEJDX1RSQU5TQUNUSU9OIDUgLT4g
NjE2NiAtCj4gPiA+ID4gPiA+ID4gPiBub2RlIDEsIGRhdGEgMDAwMDAwMDAyMDAwMDIwMC0wMDAw
MDAwMDIwMDAwMmMwIHNpemUgODgtMjQtMTYKPiA+ID4gPiA+ID4gPiA+IFsgIDgzMS4wOTkyNTFd
WyBUNjE5MV0gYmluZGVyX2FsbG9jOiA2MTY2OiBiaW5kZXJfYWxsb2NfYnVmLCBubyB2bWEKPiA+
ID4gPiA+ID4gPiA+IFsgIDgzMS4xMDA0MzNdWyBUNjE5MV0gYmluZGVyOiA2MTkwOjYxOTEgdHJh
bnNhY3Rpb24gZmFpbGVkIDI5MTg5Ly0zLAo+ID4gPiA+ID4gPiA+ID4gc2l6ZSA4OC0yNCBsaW5l
IDMxNTcKPiA+ID4gPiA+ID4gPiA+IFsgIDgzMS4xMDE1NTldWyBUNjE5MV0gYmluZGVyOiA2MTkw
OjYxOTEgd3JvdGUgNzYgb2YgNzYsIHJlYWQgcmV0dXJuIDAgb2YgMAo+ID4gPiA+ID4gPiA+ID4g
WyAgODMxLjExMDMxN11bIFQ2MTkxXSBiaW5kZXI6IDYxOTAgY2xvc2Ugdm0gYXJlYSAyMDBhMDAw
MC0yMDBhMjAwMCAoOAo+ID4gPiA+ID4gPiA+ID4gSykgdm1hIDE4MDIwMGQ5IHBhZ2VwIDgwMDAw
MDAwMDAwMDAwMjUKPiA+ID4gPiA+ID4gPiA+IFsgIDgzMS4xMTE3NTJdWyBUNjE5MV0gYmluZGVy
OiA2MTkwIGNsb3NlIHZtIGFyZWEgMjAwYzAwMDAtMjAwYzIwMDAgKDgKPiA+ID4gPiA+ID4gPiA+
IEspIHZtYSAxODAyMDBkOSBwYWdlcCA4MDAwMDAwMDAwMDAwMDI1Cj4gPiA+ID4gPiA+ID4gPiBb
ICA4MzEuMTEzMjY2XVsgVDMzNDRdIGJpbmRlcjogYmluZGVyX2ZsdXNoOiA2MTkwIHdva2UgMCB0
aHJlYWRzCj4gPiA+ID4gPiA+ID4gPiBbICA4MzEuMTE0MTQ3XVsgVDMzNDRdIGJpbmRlcjogYmlu
ZGVyX2ZsdXNoOiA2MTkwIHdva2UgMCB0aHJlYWRzCj4gPiA+ID4gPiA+ID4gPiBbICA4MzEuMTE1
MDg3XVsgVDMzNDRdIGJpbmRlcjogdW5kZWxpdmVyZWQgVFJBTlNBQ1RJT05fRVJST1I6IDI5MTg5
Cj4gPiA+ID4gPiA+ID4gPiBbICA4MzEuMTE1OTkxXVsgVDMzNDRdIGJpbmRlcjogYmluZGVyX2Rl
ZmVycmVkX3JlbGVhc2U6IDYxOTAgdGhyZWFkcwo+ID4gPiA+ID4gPiA+ID4gMSwgbm9kZXMgMCAo
cmVmIDApLCByZWZzIDAsIGFjdGl2ZSB0cmFuc2FjdGlvbnMgMAo+ID4gPiA+ID4gPiA+ID4gWyAg
ODMxLjExNzUyNV1bIFQzMzQ0XSBiaW5kZXI6IGJpbmRlcl9kZWZlcnJlZF9yZWxlYXNlOiA2MTkw
IHRocmVhZHMKPiA+ID4gPiA+ID4gPiA+IDEsIG5vZGVzIDAgKHJlZiAwKSwgcmVmcyAwLCBhY3Rp
dmUgdHJhbnNhY3Rpb25zIDAKPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiA+ID4gVGhlIHF1ZXN0aW9uIGlzOiBpZiBwcm9jZXNzZXMgdGhhdCBvcGVuZWQgdGhlIGRl
dmljZSBhbmQgZXZlciBtYXBwZWQKPiA+ID4gPiA+ID4gPiA+IGl0IGFyZSBub3cgY29tcGxldGVs
eSBnb25lLCBzaG91bGQgaXQgcmVzZXQgdGhlIG9yaWdpbmFsIHN0YXRlIHdoZW4KPiA+ID4gPiA+
ID4gPiA+IGNvbnRleHQgY2FuIGJlIGJvdW5kIGFnYWluPyBJcyBpdCBhIGJ1ZyBpbiBiaW5kZXIg
dGhhdCBpdCBkb2VzIG5vdD8gSWYKPiA+ID4gPiA+ID4gPiA+IHNvLCBpcyB0aGVyZSBzb21lIGtp
bmQgb2YgdGVtcCB3b3JrLWFyb3VuZCBmb3IgdGhpcz8KPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4g
PiA+IElmIGFsbCB0aGUgcHJvY2Vzc2VzIHRoYXQgb3BlbmVkIHRoZSBkZXZpY2UgYXJlIGdvbmUs
IGV2ZXJ5dGhpbmcKPiA+ID4gPiA+ID4gPiBzaG91bGQgYmUgY2xlYW5lZCB1cCBhbmQgbGVhdmUg
YmluZGVyIGluIGEgdXNlYWJsZSBzdGF0ZS4gV2hlbiB0aGUKPiA+ID4gPiA+ID4gPiBkZXZpY2Ug
aXMgaW4gdGhpcyBzdGF0ZSwgY2FuIHlvdSBkdW1wIG91dAo+ID4gPiA+ID4gPiA+IC9zeXMvZGVi
dWcva2VybmVsL2JpbmRlci9zdGF0ZSBhbmQgc2VuZCBpdCB0byBtZT8KPiA+ID4gPiA+ID4KPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gSGVyZSBpdCBpczoKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gYmluZGVyIHN0YXRlOgo+ID4gPiA+ID4gPiBkZWFkIG5vZGVzOgo+ID4gPiA+
ID4gPiAgIG5vZGUgMzogdTAwMDAwMDAwMDAwMDAwMDAgYzAwMDAwMDAwMDAwMDAwMDAgaHMgMCBo
dyAwIGxzIDAgbHcgMCBpcyAxCj4gPiA+ID4gPiA+IGl3IDEgdHIgMSBwcm9jIDYxOTMKPiA+ID4g
PiA+ID4gcHJvYyA2MTkzCj4gPiA+ID4gPgo+ID4gPiA+ID4gL1wvXC9cCj4gPiA+ID4gPgo+ID4g
PiA+ID4gVGhpcyBwcm9jZXNzIGRvZXMgbm90IGV4aXN0IGFueW1vcmUgZm9yIG1pbnV0ZXMuIExp
a2UgYXQgYWxsLiBFdmVuIG5vCj4gPiA+ID4gPiBwcm9jZnMgbm9kZS4KPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+IGNvbnRleHQgYmluZGVyMAo+ID4gPiA+ID4gPiAgIHRocmVhZCA2MTk0OiBsIDAwIG5l
ZWRfcmV0dXJuIDEgdHIgMAo+ID4gPiA+ID4gPiAgIG5vZGUgMTogdTAwMDAwMDAwMDAwMDAwMDAg
YzAwMDAwMDAwMDAwMDAwMDAgaHMgMSBodyAxIGxzIDIgbHcgMSBpcyAwIGl3IDAgdHIgMQo+ID4g
PiA+ID4gPiAgIHJlZiA0OiBkZXNjIDEgZGVhZCBub2RlIDMgcyAxIHcgMCBkIDAwMDAwMDAwZTc3
YWVhM2IKPiA+ID4gPiA+ID4gICBidWZmZXIgMjogMDAwMDAwMDBiMjMwMWNmYSBzaXplIDg4OjI0
OjE2IGFjdGl2ZQo+ID4gPiA+ID4gPiAgIHBlbmRpbmcgdHJhbnNhY3Rpb24gMjogMDAwMDAwMDBi
MTU5MTE2NiBmcm9tIDA6MCB0byA2MTkzOjAgY29kZSAwCj4gPiA+ID4gPiA+IGZsYWdzIDAgcHJp
IDAgcjEgbm9kZSAxIHNpemUgODg6MjQgZGF0YSAwMDAwMDAwMGIyMzAxY2ZhCj4gPiA+ID4gPiA+
Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IEtlcm5lbCBhbHNvIHNhaWQ6Cj4g
PiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFsgIDE5Ny4wNDk3MDJdWyAgIFQxMl0gYmluZGVyOiByZWxl
YXNlIDYxOTM6NjE5NCB0cmFuc2FjdGlvbiAyIG91dCwgc3RpbGwgYWN0aXZlCj4gPiA+ID4gPiA+
IFsgIDE5Ny4wNTA4MDNdWyAgIFQxMl0gYmluZGVyOiB1bmV4cGVjdGVkIHdvcmsgdHlwZSwgNCwg
bm90IGZyZWVkCj4gPiA+ID4gPiA+IFsgIDE5Ny4wNTE2NThdWyAgIFQxMl0gYmluZGVyOiB1bmRl
bGl2ZXJlZCBUUkFOU0FDVElPTl9DT01QTEVURQo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBOb3Qg
c3VyZSB3aHkgdGhlcmUgaXMgc29tZXRoaW5nIHVuZXhwZWN0ZWQuIEkgZG9uJ3QgdHJ5IHRvIGZ1
enogaXQgb3IKPiA+ID4gPiA+ID4gc29tZXRoaW5nIGF0IHRoaXMgcG9pbnQuIEp1c3QgcnVuIGEg
YmFzaWMgdGVzdC4KPiA+ID4gPiA+ID4gSGVyZSBpcyB0aGUgdGVzdCwgaXQncyBpbiBzeXprYWxs
ZXIgbm90YXRpb24sIGJ1dCBob3BlZnVsbHkgeW91IGNhbgo+ID4gPiA+ID4gPiBnZXQgb3ZlcmFs
bCBpZGVhOgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiByMCA9IHN5el9vcGVuX2RldiRiaW5kZXIo
JkFVVE89Jy9kZXYvYmluZGVyI1x4MDAnLCAweDAsIDB4MikKPiA+ID4gPiA+ID4gaW9jdGwkQklO
REVSX1NFVF9DT05URVhUX01HUl9FWFQocjAsIEFVVE8sICZBVVRPPXtBVVRPLCAweDEwMCwgMHgw
LCAweDB9KQo+ID4gPiA+ID4gPiBtbWFwJGJpbmRlcigmKDB4N2YwMDAwMGEwMDAwKSwgMHgyMDAw
LCAweDEsIDB4MTEsIHIwLCAweDApCj4gPiA+ID4gPiA+IHIxID0gc3l6X29wZW5fZGV2JGJpbmRl
cigmQVVUTz0nL2Rldi9iaW5kZXIjXHgwMCcsIDB4MCwgMHgyKQo+ID4gPiA+ID4gPiBtbWFwJGJp
bmRlcigmKDB4N2YwMDAwMGMwMDAwKSwgMHgyMDAwLCAweDEsIDB4MTEsIHIxLCAweDApCj4gPiA+
ID4gPiA+IGlvY3RsJEJJTkRFUl9XUklURV9SRUFEKHIxLCBBVVRPLCAmQVVUTz17QVVUTywgQVVU
TywKPiA+ID4gPiA+ID4gJkFVVE89W0B0cmFuc2FjdGlvbl9zZz17QVVUTywgezB4MCwgMHgwLCAw
eDAsIDB4MCwgMHgwLCAweDAsIDB4MCwKPiA+ID4gPiA+ID4gQVVUTywgQVVUTywgJkFVVE89e0Bm
bGF0PUBiaW5kZXI9e0FVVE8sIDB4MCwgMHgwLCAweDB9LCBAZmQ9e0FVVE8sCj4gPiA+ID4gPiA+
IEFVVE8sIHIwLCBBVVRPLCAweDB9LCBAcHRyPXtBVVRPLCAweDAsICZBVVRPPSIiLzEwLCBBVVRP
LCAweDAsIDB4MH19LAo+ID4gPiA+ID4gPiAmQVVUTz17QVVUTywgQVVUTywgQVVUT319LCAweDEw
fV0sIEFVVE8sIEFVVE8sICZBVVRPfSkKPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gSGVyZSBpcyBj
b3JyZXNwb25kaW5nIEMgdGVzdCB0aGF0IHlvdSBjYW4gdXNlOgo+ID4gPiA+IGh0dHBzOi8vZ2lz
dC5naXRodWJ1c2VyY29udGVudC5jb20vZHZ5dWtvdi80ODQzNjg5NTAyODk5NTQ1MTZlMzUyYTBk
MDg2Nzk0Yi9yYXcvZmFiNmIwZmIzZWY3YWY1N2MzMDQwYTNhZGVlZDI2YmNmMDNlNzVhNi9naXN0
ZmlsZTEudHh0Cj4gPiA+Cj4gPiA+IFdhaXQsIGlzIGl0IGJlY2F1c2UgSSBzZW5kIGJpbmRlciBm
ZCBpbiBCSU5ERVJfVFlQRV9GRCBvYmplY3Q/Cj4gPiA+IEkgd2FzIGp1c3QgdGVzdGluZyBkaWZm
ZXJlbnQgb2JqZWN0IHR5cGVzIGFuZCBmb3IgQklOREVSX1RZUEVfRkQgSQo+ID4gPiBuZWVkZWQg
YW4gZmQsIGFuZCB0aGUgYmluZGVyIGZkIHdhcyB0aGUgb25seSBmZCB0aGF0IHRoZSB0ZXN0IGFs
cmVhZHkKPiA+ID4gaGFkIG9wZW5lZCwgc28gSSB3YXMgbGlrZSBPSywgaGVyZSBpcyBhbiBmZCBp
ZiB5b3UgbmVlZCBvbmUgaGVyZS4uLi4KPiA+ID4gQ2FuIGl0IGJlIGEgcHJvYmxlbSBpbiByZWFs
IGxpZmU/IEJ1dCBlaXRoZXIgd2F5IHRoaXMgZGVhZGxvY2sgaXMKPiA+ID4gcXVpdGUgdW5wbGVh
c2FudCBmb3IgZnV6emluZy4uLgo+ID4KPiA+IFdoaWNoIGtlcm5lbCBicmFuY2ggaXMgdGhpcz8g
SSB0aGluayB5b3UgYXJlIHNlZWluZyBhbiBpc3N1ZSB0aGF0Cj4gPiBzaG91bGQgaGF2ZSBiZWVu
IGZpeGVkIGluIG1haW5saW5lIGJ5IDdhYTEzNWZjZjI2MyAoIkFORFJPSUQ6IGJpbmRlcjoKPiA+
IHByZXZlbnQgdHJhbnNhY3Rpb25zIGludG8gb3duIHByb2Nlc3MuIikuIFRoZSBwcm9jZXNzIGlz
IHNlbmRpbmcgYQo+ID4gdHJhbnNhY3Rpb24gdG8gaXRzZWxmIHdoaWNoIHNob3VsZCBoYXZlIGZh
aWxlZC4KPiA+Cj4gPiBUaGUgaGFuZyBpcyBiZWNhdXNlIHRoZSBoYW5kbGluZyBvZiBCSU5ERVJf
VFlQRV9GRCBkb2VzIGFuIGZnZXQoKSBvbgo+ID4gdGhlIGZkICh3aGljaCBpcyBvbiAvZGV2L2Jp
bmRlcjAgaW4gdGhpcyBjYXNlKS4gU2luY2UgdGhlIHRyYW5zYWN0aW9uCj4gPiBpcyBzdHVjayBv
biB0aGUgcXVldWUgKG5vIHNlcnZlciB0aHJlYWQgdG8gaGFuZGxlIGl0KSwgbm8gb25lIGlzCj4g
PiBjYWxsaW5nIGZwdXQoKS4gVGhlIHJlc3VsdCBpcyB0aGF0IGV4aXQoKSBkb2Vzbid0IHJlc3Vs
dCBpbgo+ID4gYmluZGVyX3JlbGVhc2UoKSBiZWluZyBjYWxsZWQgdG8gY2xlYW51cCB0aGUgcHJv
Y2VzcyBiaW5kZXIgc3RhdGUuCj4gPgo+ID4gU28sIGlmIHlvdSB1c2UgYSBkaWZmZXJlbnQgZmQs
IHRoZSBpc3N1ZSB3b3VsZCBiZSBhdm9pZGVkIC0tIGJ1dCBhcyBJCj4gPiBzYWlkLCB0aGlzIHNo
b3VsZG4ndCBoYXZlIGhhcHBlbmVkIGluIHRoZSBmaXJzdCBwbGFjZSBvbiBtYWlubGluZSwgc28K
PiA+IGlmIHRoaXMgaXMgbWFpbmxpbmUgb3IgYW55IGJyYW5jaCB0aGF0IGhhcyB0aGUgYWJvdmUg
cGF0Y2gsIHRoZXJlIGlzIGEKPiA+IG5ldyBkcml2ZXIgYnVnIHRoYXQgaXMgc29tZWhvdyBhbGxv
d2luZyB0cmFuc2FjdGlvbnMgdG8gc2VsZi4KPgo+IEkgYW0gb24gdGhlIGxhdGVzdCBMaW51cyB0
cmVlOgo+Cj4gY29tbWl0IDYzODYzZWU4ZTJmNmY2YWU0N2JlM2RmZjRhZjJmMjgwNmY1Y2EyZGQg
KEhFQUQgLT4gbWFzdGVyLAo+IG9yaWdpbi9tYXN0ZXIsIG9yaWdpbi9IRUFEKQo+IE1lcmdlOiBm
YmNkZTE5N2UxYmUgMjU5Nzk5ZWE1YTlhCj4gQXV0aG9yOiBMaW51cyBUb3J2YWxkcyA8dG9ydmFs
ZHNAbGludXgtZm91bmRhdGlvbi5vcmc+Cj4gRGF0ZTogICBNb24gTWF5IDEzIDE2OjAxOjUyIDIw
MTkgLTA3MDAKPgo+IFRoZSBjb21taXQgeW91IG1lbnRpb25lZCBpcyBhbHJlYWR5IHRoZXJlLiBZ
b3UgY2FuIGNoZWNrIHRoZSBDIHJlcHJvCj4gaG93IGl0IHNlbmRzIHN1Y2ggYSB0cmFuc2FjdGlv
bi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A35AE21ABB
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 17:36:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B616B86B0E;
	Fri, 17 May 2019 15:36:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id necSHgodl6KA; Fri, 17 May 2019 15:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3509586AFB;
	Fri, 17 May 2019 15:36:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 02CF91BF397
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 15:36:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F24E08799A
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 15:36:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hCrjqhkuP1eR for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 15:36:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A1A5087999
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 15:36:33 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id q17so5662065lfo.4
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=oZcAaE96cSVFWi9Z2GMlWClyPZwgW4ysxzcgvnYID2w=;
 b=ukQJJ6QWk/wEWo45qlJo55ycIMOzrNaD/adNVJiPR6LgZz+jATCHfkKEwDA5e6hWHq
 1oPQQZKdJU+V4YSjNARNb4tzmjZ53aLzUXNsz/agIMwWcs8psk5gVQdTXaRGG0u5HgGb
 oUqtYERB1ptM6flPp0Unimi/ZV3qiNFfql7uAdSPqYGwbielDc/SeCk0JzYCKJeNqIAJ
 Rpf/lEX3lAetp1HdXFi6a7Y9rFbNLj+gQvdnRzhhR4BEKMDQ5jXDavCqgEI0+K34WD34
 qKRdivF0KpiCsHavuTnnTp68NHCkJY5WRlfmpzwwvqGp3uSLg3NQb4Eu1ndB98xRGI0s
 3s/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=oZcAaE96cSVFWi9Z2GMlWClyPZwgW4ysxzcgvnYID2w=;
 b=hmVx/uYtFg0RPiHyFVAV65i34xms00iUvEzF41lpjXHDNQTVXOtvF3R/fLi4QokYwn
 kTzSKUvap3wfSlsChySiOx0ezOthFEifI2T8f+/nIE5WfS4LkA9kEdKjLHt/6/46TjkK
 BkYMgqWrgRvOPrI92EqA878kra5nHmhYGRq9XXLDdvh57LzntEO73GBo2RQvIuYcUjtA
 ODO6bj+Mp1ZVP7YzFlnixaqVWfJ45bsto2q1kkjdqByVUhzoe8mSZgTdQ5NkOXY31zj3
 yE9XaXd7/nP0pFijKJ8kHaswkxrF6nryYfk5HUZFBRZUVrYQSYfGstCUM+6IHAXnYVn7
 lrxQ==
X-Gm-Message-State: APjAAAUQZS4oGXXVoZxNz3n1emsZslXOoY290BJb8BMuCSOrnh813Y+8
 coADe2rRo0TgT+kvAIvawgqVQMB47wd/xOsyA5YJ6g==
X-Google-Smtp-Source: APXvYqz64d2LvnJfbN5s9Gb1Iyfpq0GgEc7anMX6fK9nGSMysnHpVM4aVTsGauTros3Zi5dYfKdhTRyzoN/v9tBQ1aQ=
X-Received: by 2002:a19:7d42:: with SMTP id y63mr20552876lfc.54.1558107391166; 
 Fri, 17 May 2019 08:36:31 -0700 (PDT)
MIME-Version: 1.0
References: <CACT4Y+Z9GcY-d19ROSXgAq4-d_hOBVArfgGV1VdYcYD_X1coPQ@mail.gmail.com>
In-Reply-To: <CACT4Y+Z9GcY-d19ROSXgAq4-d_hOBVArfgGV1VdYcYD_X1coPQ@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 17 May 2019 08:36:19 -0700
Message-ID: <CAHRSSEw7QAfuKsQhHNZcwizn5zEVA6CjAdO7qh69g3fkXrk7DA@mail.gmail.com>
Subject: Re: binder stress testing
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

RnJvbTogRG1pdHJ5IFZ5dWtvdiA8ZHZ5dWtvdkBnb29nbGUuY29tPgpEYXRlOiBGcmksIE1heSAx
NywgMjAxOSBhdCAzOjI2IEFNClRvOiBHcmVnIEtyb2FoLUhhcnRtYW4sIEFydmUgSGrDuG5uZXbD
pWcsIFRvZGQgS2pvcywgTWFydGlqbiBDb2VuZW4sCkpvZWwgRmVybmFuZGVzLCBDaHJpc3RpYW4g
QnJhdW5lciwgb3BlbiBsaXN0OkFORFJPSUQgRFJJVkVSUywgTEtNTApDYzogc3l6a2FsbGVyCgo+
IEhpLAo+Cj4gSSBoYXZlIDIgcXVlc3Rpb25zIHJlIGRyaXZlcnMvYW5kcm9pZC9iaW5kZXIuYyBz
dHJlc3MgdGVzdGluZy4KPgo+IDEuIEFyZSB0aGVyZSBhbnkgZG9jcyBvbiB0aGUga2VybmVsIGlu
dGVyZmFjZT8gT3Igc29tZSBleGFtcGxlcyBvbiBob3cKPiB0byB1c2UgaXQgYW5kIHJlZmVyZW5j
ZSBzeXNjYWxsIHNlcXVlbmNlcyB0byBtYWtlIGl0IGRvIHNvbWV0aGluZwo+IG1lYW5pbmdmdWw/
Cj4gSSBob3BlZnVsbHkgZmlndXJlZCBvdXQgc3RydWN0IGxheW91dHMgYW5kIG9mZnNldHMgb2Yg
b2JqZWN0cyB0aGluZywKPiBidXQgSSBzdGlsbCBjYW4ndCBmaWd1cmUgb3V0IGhhbmRsZXMsIHBv
aW50ZXJzLCBub2RlcywgcG9pbnRlciB0bwo+IG5vZGVzLi4uIHBvaW50ZXIgdG8gZGF0YSAoPyks
IHJlZmVyZW5jZXMsIGNvb2tpZXMgYW5kIHdoZXJlIGRvZXMgb25lCj4gZ2V0IHZhbGlkIHZhbHVl
cyBmb3IgdGhlc2UuCgpUaGUga2VybmVsIGludGVyZmFjZSBpcyBub3Qgd2VsbCBkb2N1bWVudGVk
IHNpbmNlIGl0IGlzbid0IGludGVuZGVkIHRvCmJlIHVzZWQgYXBhcnQgZnJvbSBsaWJiaW5kZXIu
IFRoZSBiZXN0IGV4YW1wbGUgZm9yIHlvdXIgcHVycG9zZXMgaXMKcHJvYmFibHkgdGhlIGJpbmRl
ckRyaXZlckludGVyZmFjZVRlc3Qgd2hpY2ggeW91IGNhbiBmaW5kIGF0Cmh0dHBzOi8vYW5kcm9p
ZC5nb29nbGVzb3VyY2UuY29tL3BsYXRmb3JtL2ZyYW1ld29ya3MvbmF0aXZlLysvcmVmcy9oZWFk
cy9tYXN0ZXIvbGlicy9iaW5kZXIvdGVzdHMvYmluZGVyRHJpdmVySW50ZXJmYWNlVGVzdC5jcHAu
CgpUaGUgbGliYmluZGVyIHNvdXJjZSBpcyBhdApodHRwczovL2FuZHJvaWQuZ29vZ2xlc291cmNl
LmNvbS9wbGF0Zm9ybS9mcmFtZXdvcmtzL25hdGl2ZS8rL3JlZnMvaGVhZHMvbWFzdGVyL2xpYnMv
YmluZGVyLgoKPgo+IDIuIEluIG15IHRlc3RzIGFueSB0cmFuc2FjdGlvbiBicmVha3MgYmluZGVy
IGRldmljZSB1bnRpbCB0aGUgbmV4dCByZWJvb3QuCj4gSWYgSSBvcGVuIGJpbmRlciBkZXZpY2Ug
dHdpY2UsIG1tYXAsIHNldCBjb250ZXh0IGFuZCB0aGVuIHRoZSBwcm9jZXNzCj4gZGllcywgdGhl
biBldmVyeXRoaW5nIGl0IHJlbGVhc2VkIGZpbmUsIGluIHBhcnRpY3VsYXIgdGhlIGNvbnRleHQK
PiAoY29udGV4dF9tZ3Jfbm9kZSBnb25lKS4gU28gdGhlIGRldmljZSBpcyByZWFkeSBmb3IgYSBu
ZXh0IHRlc3Q6Cj4KPiBbICAgNDAuMjQ3OTcwXVsgVDYyMzldIGJpbmRlcjogYmluZGVyX29wZW46
IDYyMzg6NjIzOQo+IFsgICA0MC4yNTA4MTldWyBUNjIzOV0gYmluZGVyOiA2MjM4OjYyMzkgbm9k
ZSAxIHUwMDAwMDAwMDAwMDAwMDAwCj4gYzAwMDAwMDAwMDAwMDAwMDAgY3JlYXRlZAo+IFsgICA0
MC4yNTMzNjVdWyBUNjIzOV0gYmluZGVyOiBiaW5kZXJfbW1hcDogNjIzOCAyMDBhMDAwMC0yMDBh
MjAwMCAoOAo+IEspIHZtYSBmOSBwYWdlcCA4MDAwMDAwMDAwMDAwMDI1Cj4gWyAgIDQwLjI1NjQ1
NF1bIFQ2MjM5XSBiaW5kZXI6IGJpbmRlcl9vcGVuOiA2MjM4OjYyMzkKPiBbICAgNDAuMjU5NjA0
XVsgVDYyMzldIGJpbmRlcjogYmluZGVyX21tYXA6IDYyMzggMjAwYzAwMDAtMjAwYzIwMDAgKDgK
PiBLKSB2bWEgZjkgcGFnZXAgODAwMDAwMDAwMDAwMDAyNQo+IFsgICA0MC4yNzE1MjZdWyBUNjIz
OF0gYmluZGVyOiA2MjM4IGNsb3NlIHZtIGFyZWEgMjAwYTAwMDAtMjAwYTIwMDAgKDgKPiBLKSB2
bWEgMTgwMjAwZDkgcGFnZXAgODAwMDAwMDAwMDAwMDAyNQo+IFsgICA0MC4yNzMxMTNdWyBUNjIz
OF0gYmluZGVyOiA2MjM4IGNsb3NlIHZtIGFyZWEgMjAwYzAwMDAtMjAwYzIwMDAgKDgKPiBLKSB2
bWEgMTgwMjAwZDkgcGFnZXAgODAwMDAwMDAwMDAwMDAyNQo+IFsgICA0MC4yNzUwNThdWyAgIFQx
N10gYmluZGVyOiBiaW5kZXJfZmx1c2g6IDYyMzggd29rZSAwIHRocmVhZHMKPiBbICAgNDAuMjc1
OTk3XVsgICBUMTddIGJpbmRlcjogYmluZGVyX2ZsdXNoOiA2MjM4IHdva2UgMCB0aHJlYWRzCj4g
WyAgIDQwLjI3Njk2OF1bICAgVDE3XSBiaW5kZXI6IGJpbmRlcl9kZWZlcnJlZF9yZWxlYXNlOiA2
MjM4IHRocmVhZHMKPiAwLCBub2RlcyAwIChyZWYgMCksIHJlZnMgMCwgYWN0aXZlIHRyYW5zYWN0
aW9ucyAwCj4gWyAgIDQwLjI3ODYyNl1bICAgVDE3XSBiaW5kZXI6IGJpbmRlcl9kZWZlcnJlZF9y
ZWxlYXNlOiA2MjM4Cj4gY29udGV4dF9tZ3Jfbm9kZSBnb25lCj4gWyAgIDQwLjI3OTc1Nl1bICAg
VDE3XSBiaW5kZXI6IGJpbmRlcl9kZWZlcnJlZF9yZWxlYXNlOiA2MjM4IHRocmVhZHMKPiAxLCBu
b2RlcyAxIChyZWYgMCksIHJlZnMgMCwgYWN0aXZlIHRyYW5zYWN0aW9ucyAwCj4KPgo+IEhvd2V2
ZXIsIGlmIEkgYWxzbyBzZW5kIGEgdHJhbnNhY3Rpb24gYmV0d2VlbiB0aGVzZSBmZCdzLCB0aGVu
Cj4gY29udGV4dF9tZ3Jfbm9kZSBpcyBub3QgcmVsZWFzZWQ6Cj4KPiBbICA3ODMuODUxNDAzXVsg
VDYxNjddIGJpbmRlcjogYmluZGVyX29wZW46IDYxNjY6NjE2Nwo+IFsgIDc4My44NTg4MDFdWyBU
NjE2N10gYmluZGVyOiA2MTY2OjYxNjcgbm9kZSAxIHUwMDAwMDAwMDAwMDAwMDAwCj4gYzAwMDAw
MDAwMDAwMDAwMDAgY3JlYXRlZAo+IFsgIDc4My44NjI0NThdWyBUNjE2N10gYmluZGVyOiBiaW5k
ZXJfbW1hcDogNjE2NiAyMDBhMDAwMC0yMDBhMjAwMCAoOAo+IEspIHZtYSBmOSBwYWdlcCA4MDAw
MDAwMDAwMDAwMDI1Cj4gWyAgNzgzLjg2NTc3N11bIFQ2MTY3XSBiaW5kZXI6IGJpbmRlcl9vcGVu
OiA2MTY2OjYxNjcKPiBbICA3ODMuODY3ODkyXVsgVDYxNjddIGJpbmRlcjogYmluZGVyX21tYXA6
IDYxNjYgMjAwYzAwMDAtMjAwYzIwMDAgKDgKPiBLKSB2bWEgZjkgcGFnZXAgODAwMDAwMDAwMDAw
MDAyNQo+IFsgIDc4My44NzA4MTBdWyBUNjE2N10gYmluZGVyOiA2MTY2OjYxNjcgd3JpdGUgNzYg
YXQgMDAwMDAwMDAyMDAwMDE4MCwKPiByZWFkIDAgYXQgMDAwMDAwMDAyMDAwMDMwMAo+IFsgIDc4
My44NzIyMTFdWyBUNjE2N10gYmluZGVyOiA2MTY2OjYxNjcgQkNfVFJBTlNBQ1RJT04gMiAtPiA2
MTY2IC0KPiBub2RlIDEsIGRhdGEgMDAwMDAwMDAyMDAwMDIwMC0wMDAwMDAwMDIwMDAwMmMwIHNp
emUgODgtMjQtMTYKPiBbICA3ODMuODczODE5XVsgVDYxNjddIGJpbmRlcjogNjE2Njo2MTY3IG5v
ZGUgMyB1MDAwMDAwMDAwMDAwMDAwMAo+IGMwMDAwMDAwMDAwMDAwMDAwIGNyZWF0ZWQKPiBbICA3
ODMuODc1MDMyXVsgVDYxNjddIGJpbmRlcjogNjE2NiBuZXcgcmVmIDQgZGVzYyAxIGZvciBub2Rl
IDMKPiBbICA3ODMuODc1ODYwXVsgVDYxNjddIGJpbmRlcjogICAgICAgICBub2RlIDMgdTAwMDAw
MDAwMDAwMDAwMDAgLT4gcmVmIDQgZGVzYyAxCj4gWyAgNzgzLjg3Njg2OF1bIFQ2MTY3XSBiaW5k
ZXI6IDYxNjY6NjE2NyB3cm90ZSA3NiBvZiA3NiwgcmVhZCByZXR1cm4gMCBvZiAwCj4gWyAgNzgz
Ljg4NjcxNF1bIFQ2MTY3XSBiaW5kZXI6IDYxNjYgY2xvc2Ugdm0gYXJlYSAyMDBhMDAwMC0yMDBh
MjAwMCAoOAo+IEspIHZtYSAxODAyMDBkOSBwYWdlcCA4MDAwMDAwMDAwMDAwMDI1Cj4gWyAgNzgz
Ljg4ODE2MV1bIFQ2MTY3XSBiaW5kZXI6IDYxNjYgY2xvc2Ugdm0gYXJlYSAyMDBjMDAwMC0yMDBj
MjAwMCAoOAo+IEspIHZtYSAxODAyMDBkOSBwYWdlcCA4MDAwMDAwMDAwMDAwMDI1Cj4gWyAgNzgz
Ljg5MDEzNF1bICAgVDI3XSBiaW5kZXI6IGJpbmRlcl9mbHVzaDogNjE2NiB3b2tlIDAgdGhyZWFk
cwo+IFsgIDc4My44OTEwMzZdWyAgIFQyN10gYmluZGVyOiBiaW5kZXJfZmx1c2g6IDYxNjYgd29r
ZSAwIHRocmVhZHMKPiBbICA3ODMuODkyMDI3XVsgVDI5MDNdIGJpbmRlcjogcmVsZWFzZSA2MTY2
OjYxNjcgdHJhbnNhY3Rpb24gMiBvdXQsIHN0aWxsIGFjdGl2ZQo+IFsgIDc4My44OTMwOTddWyBU
MjkwM10gYmluZGVyOiB1bmV4cGVjdGVkIHdvcmsgdHlwZSwgNCwgbm90IGZyZWVkCj4gWyAgNzgz
Ljg5Mzk0N11bIFQyOTAzXSBiaW5kZXI6IHVuZGVsaXZlcmVkIFRSQU5TQUNUSU9OX0NPTVBMRVRF
Cj4gWyAgNzgzLjg5NDg0OV1bIFQyOTAzXSBiaW5kZXI6IG5vZGUgMyBub3cgZGVhZCwgcmVmcyAx
LCBkZWF0aCAwCj4gWyAgNzgzLjg5NTcxN11bIFQyOTAzXSBiaW5kZXI6IGJpbmRlcl9kZWZlcnJl
ZF9yZWxlYXNlOiA2MTY2IHRocmVhZHMKPiAxLCBub2RlcyAxIChyZWYgMSksIHJlZnMgMCwgYWN0
aXZlIHRyYW5zYWN0aW9ucyAxCj4KPgo+IEFuZCBhbGwgc3Vic2VxdWVudCB0ZXN0cyB3aWxsIGZh
aWwgYmVjYXVzZSAiQklOREVSX1NFVF9DT05URVhUX01HUgo+IGFscmVhZHkgc2V0IiBwcmVzdW1h
Ymx5IHRvIHRoZSBub3cgdW5yZWNvdmVyYWJseSBkZWFkIHByb2Nlc3M6Cj4KPiBbICA4MzEuMDg1
MTc0XVsgVDYxOTFdIGJpbmRlcjogYmluZGVyX29wZW46IDYxOTA6NjE5MQo+IFsgIDgzMS4wODc0
NTBdWyBUNjE5MV0gYmluZGVyOiBCSU5ERVJfU0VUX0NPTlRFWFRfTUdSIGFscmVhZHkgc2V0Cj4g
WyAgODMxLjA4ODkxMF1bIFQ2MTkxXSBiaW5kZXI6IDYxOTA6NjE5MSBpb2N0bCA0MDE4NjIwZCAy
MDAwMDBjMCByZXR1cm5lZCAtMTYKPiBbICA4MzEuMDkwNjI2XVsgVDYxOTFdIGJpbmRlcjogYmlu
ZGVyX21tYXA6IDYxOTAgMjAwYTAwMDAtMjAwYTIwMDAgKDgKPiBLKSB2bWEgZjkgcGFnZXAgODAw
MDAwMDAwMDAwMDAyNQo+IFsgIDgzMS4wOTI3ODNdWyBUNjE5MV0gYmluZGVyOiBiaW5kZXJfb3Bl
bjogNjE5MDo2MTkxCj4gWyAgODMxLjA5NDA3Nl1bIFQ2MTkxXSBiaW5kZXI6IGJpbmRlcl9tbWFw
OiA2MTkwIDIwMGMwMDAwLTIwMGMyMDAwICg4Cj4gSykgdm1hIGY5IHBhZ2VwIDgwMDAwMDAwMDAw
MDAwMjUKPiBbICA4MzEuMDk2MjE4XVsgVDYxOTFdIGJpbmRlcjogNjE5MDo2MTkxIHdyaXRlIDc2
IGF0IDAwMDAwMDAwMjAwMDAxODAsCj4gcmVhZCAwIGF0IDAwMDAwMDAwMjAwMDAzMDAKPiBbICA4
MzEuMDk3NjA2XVsgVDYxOTFdIGJpbmRlcjogNjE5MDo2MTkxIEJDX1RSQU5TQUNUSU9OIDUgLT4g
NjE2NiAtCj4gbm9kZSAxLCBkYXRhIDAwMDAwMDAwMjAwMDAyMDAtMDAwMDAwMDAyMDAwMDJjMCBz
aXplIDg4LTI0LTE2Cj4gWyAgODMxLjA5OTI1MV1bIFQ2MTkxXSBiaW5kZXJfYWxsb2M6IDYxNjY6
IGJpbmRlcl9hbGxvY19idWYsIG5vIHZtYQo+IFsgIDgzMS4xMDA0MzNdWyBUNjE5MV0gYmluZGVy
OiA2MTkwOjYxOTEgdHJhbnNhY3Rpb24gZmFpbGVkIDI5MTg5Ly0zLAo+IHNpemUgODgtMjQgbGlu
ZSAzMTU3Cj4gWyAgODMxLjEwMTU1OV1bIFQ2MTkxXSBiaW5kZXI6IDYxOTA6NjE5MSB3cm90ZSA3
NiBvZiA3NiwgcmVhZCByZXR1cm4gMCBvZiAwCj4gWyAgODMxLjExMDMxN11bIFQ2MTkxXSBiaW5k
ZXI6IDYxOTAgY2xvc2Ugdm0gYXJlYSAyMDBhMDAwMC0yMDBhMjAwMCAoOAo+IEspIHZtYSAxODAy
MDBkOSBwYWdlcCA4MDAwMDAwMDAwMDAwMDI1Cj4gWyAgODMxLjExMTc1Ml1bIFQ2MTkxXSBiaW5k
ZXI6IDYxOTAgY2xvc2Ugdm0gYXJlYSAyMDBjMDAwMC0yMDBjMjAwMCAoOAo+IEspIHZtYSAxODAy
MDBkOSBwYWdlcCA4MDAwMDAwMDAwMDAwMDI1Cj4gWyAgODMxLjExMzI2Nl1bIFQzMzQ0XSBiaW5k
ZXI6IGJpbmRlcl9mbHVzaDogNjE5MCB3b2tlIDAgdGhyZWFkcwo+IFsgIDgzMS4xMTQxNDddWyBU
MzM0NF0gYmluZGVyOiBiaW5kZXJfZmx1c2g6IDYxOTAgd29rZSAwIHRocmVhZHMKPiBbICA4MzEu
MTE1MDg3XVsgVDMzNDRdIGJpbmRlcjogdW5kZWxpdmVyZWQgVFJBTlNBQ1RJT05fRVJST1I6IDI5
MTg5Cj4gWyAgODMxLjExNTk5MV1bIFQzMzQ0XSBiaW5kZXI6IGJpbmRlcl9kZWZlcnJlZF9yZWxl
YXNlOiA2MTkwIHRocmVhZHMKPiAxLCBub2RlcyAwIChyZWYgMCksIHJlZnMgMCwgYWN0aXZlIHRy
YW5zYWN0aW9ucyAwCj4gWyAgODMxLjExNzUyNV1bIFQzMzQ0XSBiaW5kZXI6IGJpbmRlcl9kZWZl
cnJlZF9yZWxlYXNlOiA2MTkwIHRocmVhZHMKPiAxLCBub2RlcyAwIChyZWYgMCksIHJlZnMgMCwg
YWN0aXZlIHRyYW5zYWN0aW9ucyAwCj4KPgo+IFRoZSBxdWVzdGlvbiBpczogaWYgcHJvY2Vzc2Vz
IHRoYXQgb3BlbmVkIHRoZSBkZXZpY2UgYW5kIGV2ZXIgbWFwcGVkCj4gaXQgYXJlIG5vdyBjb21w
bGV0ZWx5IGdvbmUsIHNob3VsZCBpdCByZXNldCB0aGUgb3JpZ2luYWwgc3RhdGUgd2hlbgo+IGNv
bnRleHQgY2FuIGJlIGJvdW5kIGFnYWluPyBJcyBpdCBhIGJ1ZyBpbiBiaW5kZXIgdGhhdCBpdCBk
b2VzIG5vdD8gSWYKPiBzbywgaXMgdGhlcmUgc29tZSBraW5kIG9mIHRlbXAgd29yay1hcm91bmQg
Zm9yIHRoaXM/CgpJZiBhbGwgdGhlIHByb2Nlc3NlcyB0aGF0IG9wZW5lZCB0aGUgZGV2aWNlIGFy
ZSBnb25lLCBldmVyeXRoaW5nCnNob3VsZCBiZSBjbGVhbmVkIHVwIGFuZCBsZWF2ZSBiaW5kZXIg
aW4gYSB1c2VhYmxlIHN0YXRlLiBXaGVuIHRoZQpkZXZpY2UgaXMgaW4gdGhpcyBzdGF0ZSwgY2Fu
IHlvdSBkdW1wIG91dAovc3lzL2RlYnVnL2tlcm5lbC9iaW5kZXIvc3RhdGUgYW5kIHNlbmQgaXQg
dG8gbWU/Cgo+Cj4gVGhhbmtzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=

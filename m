Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDCA185C5F
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Mar 2020 13:35:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7D2D789D5B;
	Sun, 15 Mar 2020 12:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xEn6ZIZ8wrL1; Sun, 15 Mar 2020 12:35:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A19DA89D35;
	Sun, 15 Mar 2020 12:35:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 168FF1BF409
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 15 Mar 2020 12:35:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 129AC20785
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 15 Mar 2020 12:35:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LzBgoYBC07JJ
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 15 Mar 2020 12:35:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 196AE20430
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 15 Mar 2020 12:35:33 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id j16so14982046otl.1
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 15 Mar 2020 05:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=O3VrQYTMtRofPuPgMHyTsdjCqPvBfF6E5K3FtuGI9wE=;
 b=HmDKohqQAvOxxLE5e+8XkdPOnKc4LR8AiHc12JIDv61uaAbcsSpzySnxmbgPt5Hh1t
 jV5eOZPUk/Mu31SOxIxW6WcimleJAHM/M8V9wd+XPBzMvbADlJMIiI6zmAaAAgJ8uVl5
 C6oQhXyed0ZCMKZFLGRG1QwO87GvhLra8G3M1q5uCXH7qvw8l/mDUhxFEDtGhGMyuzcQ
 V8DW4VbMeioLJCzATPrpnEtvl3kBRC2Mc0EnS7nc5SB+xvBNErYVC0rzbZCsFGgrVgfw
 7q1WaD2mcNwewI64UvZuEZRldcFRhiSX+Mmv3gqy5kjYIgD+jc4J3hwJFa5aWkKjTE1s
 Uv6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=O3VrQYTMtRofPuPgMHyTsdjCqPvBfF6E5K3FtuGI9wE=;
 b=YRbEexKk4q5IuUjPrc8yBuWV4qDVBUB61L2zj84IeQvAwPo2dhQrNEZalZGGDdzzQX
 gOhYyeSo9gT+QbY+3uNB2qNTLY+WcstSsn8FyoQtDdqDzqMdm2Pog1dyjoRSZAQgUMyN
 1e69ETDP/dkgJ1W9swhauwiz03JuzIOS6R2elKahyYeXrkqV+EYTRUcIY8q7Zw4dAvhQ
 jB1h2B4ePuKu3rf0t06NPYu/TBZQWthczTglRrf0Wiq8bzeqwGJ/6pQHCogO3MRDW1JJ
 LDvEHqatwuW3q+VRDtfL064K0CxZvzCOaUsh16XB5tVgz82l0t8iUjAJB1ptatdlG143
 A4MQ==
X-Gm-Message-State: ANhLgQ1zcd6AaWWuOIrek/bDStGkJhMLsyRpZ6FNws/zF4f/u/KvdBCY
 C1gvSRcwuphpoe3gOoLxts/066YIFvcGQpHMPu8=
X-Google-Smtp-Source: ADFU+vuMgsqkBbTi+/9iq35JbLLCb9v1bZeRAD8O20s15d0mbOzt92Q6dzVhfHGtDBj/ui/rzGkxWQU0SMjap1h59d0=
X-Received: by 2002:a05:6830:1498:: with SMTP id
 s24mr17158507otq.242.1584275732252; 
 Sun, 15 Mar 2020 05:35:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
 <CAMhs-H_r_VTFBVAy1tgdxwdBF+=A1yhxhMU-cjPJ254PbZb=Mg@mail.gmail.com>
In-Reply-To: <CAMhs-H_r_VTFBVAy1tgdxwdBF+=A1yhxhMU-cjPJ254PbZb=Mg@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sun, 15 Mar 2020 13:35:21 +0100
Message-ID: <CAMhs-H9Mdogr5tYzoU4eg1e=Gxvq98hd5R+1P=S7Tzy7oEyEYw@mail.gmail.com>
Subject: Re: [PATCH v4 0/6] staging: mt7621-pci: re-do reset boot process
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
Cc: ryder.lee@mediatek.com, Linus Walleij <linus.walleij@linaro.org>,
 driverdev-devel@linuxdriverproject.org, weijie.gao@mediatek.com,
 Greg Ungerer <gerg@kernel.org>, NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGksCgpPbiBTYXQsIE1hciAxNCwgMjAyMCBhdCAxMTo0MiBBTSBTZXJnaW8gUGFyYWN1ZWxsb3MK
PHNlcmdpby5wYXJhY3VlbGxvc0BnbWFpbC5jb20+IHdyb3RlOgpbc25pcF0KCj4gPgo+ID4gQ2hh
bmdlcyBpbiB2NDoKPiA+ICogTWFrZSB1c2Ugb2YgJ2Rldm1fZ3Bpb2RfZ2V0X2luZGV4X29wdGlv
bmFsJyBpbnN0ZWFkIG9mICdkZXZtX2dwaW9kX2dldF9pbmRleCcuCj4gPiAqIFVzZSAnZGV2X2Vy
cicgaW5zdGVhZCBvZiAnZGV2X25vdGljZScgYW5kIHJldHVybiBFUlJfUFRSIGlmCj4gPiAnZGV2
bV9ncGlvZF9nZXRfaW5kZXhfb3B0aW9uYWwnIGZhaWxzLgo+ID4gKiBSZW5hbWUgcGVycyBkZWFs
eSBtYWNybyB0byBQRVJTVF9ERUxBWV9NUy4KPiA+ICogQWRkIG5ldyBwYXRjaCA2IHdoaWNoIHJl
bW92ZXMgZnVuY3Rpb24gJ210NzYyMV9yZXNldF9wb3J0JyBub3QgbmVlZGVkIGFueW1vcmUuCj4K
PiBJdCBzZWVtcyB0aGlzIHNlcmllcyB3b3JrIGJ1dCBkdWUgdG8gYW4gdW5rbm93IGJ1ZyBzZXQg
LyBjbGVhciBncGlvCj4gcmVnaXN0ZXJzIGFyZSBub3QgcHJvcGVybHkgd29ya2luZy4KPiBTbyBt
YXliZSB0aGlzIHBhdGNoIGlzIGFsc28gbmVjZXNzYXJ5Ogo+IGh0dHBzOi8vZ2l0aHViLmNvbS9v
cGVud3J0L29wZW53cnQvcHVsbC8yNzk4L2NvbW1pdHMvODIzZDQxZTI4YjRlMTU3MzQ1NjA1MDhi
MjlkZjcyNmIxNmM1MWRhYgoKQW4gdXBkYXRlIG9uIHRoaXMuIEl0IHNlZW1zIGdwaW8tbW1pbyBk
cml2ZXIgdXBzdHJlYW0gaXMgYnJva2VuIGZvcgp0aGlzIGFyY2ggYmVjYXVzZSBiZ3Bpb19kaXJf
b3V0IHNldHMgcGluIHZhbHVlIGJlZm9yZSBzcGVjaWZ5aW5nIHBpbgptb2RlIGFuZCBzZXQvY2xl
YXIgcmVnaXN0ZXIgb25seSB3b3JrcyB3aGVuIHBpbiBpcyBhdCBvdXRwdXQgbW9kZS4KClRoZSBm
b2xsb3dpbmcgcGF0Y2hlcyBoYXZlIGJlZW4gc2VudCB0byBsaW51eC1ncGlvIG1haWwgbGlzdCBi
eSBDaHVhbmhvbmcgR3VvOgoKaHR0cHM6Ly9tYXJjLmluZm8vP2w9bGludXgtZ3BpbyZtPTE1ODQy
NzQ0NjkwNjg5NSZ3PTIKClRoaXMgaXNzdWUgZG9lcyBub3QgYWZmZWN0IHRoaXMgcGNpZSBkcml2
ZXIuCgpCZXN0IHJlZ2FyZHMsCiAgICAgU2VyZ2lvIFBhcmFjdWVsbG9zCj4KPiBTaG91bGQgdGhp
cyBwYXRjaCBiZSBhbHNvIHByb3Blcmx5IGFkZGVkIHRvIHRoZSB0cmVlPyBBZGRlZCBMaW51cwo+
IFdhbGxlaWogYW5kIFJlbsOpIHZhbiBEb3JzdCBpbiBvcmRlciB0byBnZXQgZmVlZGJhY2sgYWJv
dXQgdGhpcyBpc3N1ZS4KPgo+IEkgYWxzbyBhZGQgYWxsIHRoZSB0aHJlYWQgdG8gZ2V0IG9wZW53
cnQgd29ya2luZyB3aXRoIDUuNCBpbiB3aGVyZQo+IHRoaXMgcGF0Y2hlcyBhbmQgdGhlIGdwaW8g
b25lIGhhdmUgYmVlbiBhZGRlZCAoanVzdCBpbiBjYXNlIGlzCj4gaW50ZXJlc3RpbmcgZm9yIGFu
eW9uZSk6Cj4gaHR0cHM6Ly9naXRodWIuY29tL29wZW53cnQvb3BlbndydC9wdWxsLzI3OTgKPgo+
IEJlc3QgcmVnYXJkcywKPiAgICAgU2VyZ2lvIFBhcmFjdWVsbG9zCj4gPgo+ID4gQ2hhbmdlcyBp
biB2MzoKPiA+ICogQXZvaWQgdG8gZmFpbCBpZiBncGlvIGRlc2NyaXB0b3IgZmFpbHMgb24gZ2V0
Lgo+ID4gKiByZS1kbyBQQVRDSCAxIGNvbW1pdCBtZXNzYWdlLgo+ID4gKiBUYWtlIGludG8gYWNj
b3VudCBncGlvIGxvdyBwb2xhcml0eSBvbiByZXF1ZXN0IGFuZCBhc3NlcnQgYW5kIGRlYXNzZXJ0
Lgo+ID4gKiBSZXZpZXcgZXJyb3IgcGF0aCBvZiBkcml2ZXIgdG8gcHJvcGVybHkgcmVsZWFzZSBn
cGlvJ3MgcmVzb3VyY2VzLgo+ID4KPiA+IENoYW5nZXMgaW4gdjI6Cj4gPiAqIHJlc3RvcmUgY29u
ZmlndXJhdGlvbiBmb3IgcGVycyBtb2RlIHRvIEdQSU8uCj4gPiAqIEF2b2lkIHRvIHJlYWQgRlRT
X05VTSByZWdpc3RlciBpbiByZXNldCBzdGF0ZS4KPiA+ICogUmVsZWFzZSBncGlvJ3MgcGF0Y2gg
YWRkZWQKPiA+Cj4gPiBCZXN0IHJlZ2FyZHMsCj4gPiAgICAgU2VyZ2lvIFBhcmFjdWVsbG9zCj4g
Pgo+ID4KPiA+IFNlcmdpbyBQYXJhY3VlbGxvcyAoNik6Cj4gPiAgIHN0YWdpbmc6IG10NzYyMS1w
Y2k6IHVzZSBncGlvcyBmb3IgcHJvcGVybHkgcmVzZXQKPiA+ICAgc3RhZ2luZzogbXQ3NjIxLXBj
aTogY2hhbmdlIHZhbHVlIGZvciAnUEVSU1RfREVMQVlfTVMnCj4gPiAgIHN0YWdpbmc6IG10NzYy
MS1kdHM6IG1ha2UgdXNlIG9mICdyZXNldC1ncGlvcycgcHJvcGVydHkgZm9yIHBjaQo+ID4gICBz
dGFnaW5nOiBtdDc2MjEtcGNpOiBiaW5kaW5nczogdXBkYXRlIGRvYyBhY2NvcmRseSB0byBsYXN0
IGNoYW5nZXMKPiA+ICAgc3RhZ2luZzogbXQ3NjIxLXBjaTogcmVsZWFzZSBncGlvcyBhZnRlciBw
Y2kgaW5pdGlhbGl6YXRpb24KPiA+ICAgc3RhZ2luZzogbXQ3NjIxLXBjaTogZGVsZXRlIG5vIG1v
cmUgbmVlZGVkICdtdDc2MjFfcmVzZXRfcG9ydCcKPiA+Cj4gPiAgZHJpdmVycy9zdGFnaW5nL210
NzYyMS1kdHMvbXQ3NjIxLmR0c2kgICAgICAgIHwgIDExICstCj4gPiAgLi4uL210NzYyMS1wY2kv
bWVkaWF0ZWssbXQ3NjIxLXBjaS50eHQgICAgICAgIHwgICA3ICstCj4gPiAgZHJpdmVycy9zdGFn
aW5nL210NzYyMS1wY2kvcGNpLW10NzYyMS5jICAgICAgIHwgMTIyICsrKysrKysrKystLS0tLS0t
LQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgODIgaW5zZXJ0aW9ucygrKSwgNTggZGVsZXRpb25zKC0p
Cj4gPgo+ID4gLS0KPiA+IDIuMjUuMQo+ID4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

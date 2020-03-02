Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6311762A3
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 19:28:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A95A8763E;
	Mon,  2 Mar 2020 18:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gOzmTNWxLxwt; Mon,  2 Mar 2020 18:28:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D6E887020;
	Mon,  2 Mar 2020 18:28:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BAD2C1BF392
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 18:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B1F7487133
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 18:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nehyj2klwX5z for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 18:28:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A33F887020
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 18:28:17 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id c24so108881wml.4
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 10:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=DVVfeNHnLShVmNI+xo5NmA/CGXvIx1qRNWkzr1ndFCk=;
 b=FHqugw6NwLRZm5V4+dSVNR4BiQEdtOjVfEaDWjKYTBxVezrgu0n7cY2wAZOYxQbjc2
 9LZJvyDGtZUmy407Lg0G7/vdxZ3t5lGc/HAW3BzX01VYMSE+/y/5eNUHRsC+DUFK3FQB
 q7fnPvss9SToolOIafdH66a2StOhVFEBc/8ydld89rK1fC+E3tZdCLmj/jInPEb7hzuh
 CMJSP0HQ/UGUWIbdejqZ0t6a7OC7rUcLb8HCQQuQTx2I6iuTgn2jiL0FFf1qx+DRRp59
 SJxC3qGcToJ2EyglhlVyy9y64xq58xaFoPnfjN6P5/FqOr2TkG0laSaPh/2bi9IrHs5I
 m82A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=DVVfeNHnLShVmNI+xo5NmA/CGXvIx1qRNWkzr1ndFCk=;
 b=da6ppkk982u+zGxkxDVpsI7a4Al9yzKl9zV6Nud2hxx5jdVYOmPx4FauXr9/uPMg8O
 3xIPmcWocK7IIVtdCpkbTAN68842yR3WF606JnVGgnURiMBGzOIzmYpEjQxqBnzRJxCB
 YMG+ZvAW4+SmaHFrof5QUiGe6JMacdPi6BKNEiRhGSXjfKW0oAzWtF/NL+/BrTcGVDim
 1qRw7EeSxioG5xA90lQVOsE3EqTsdblzSO6xM0oflVCFaprtDfKIPszCnASuGozRm3tU
 ci4D6UEJo4KSOVNcGyJ1WuTsYBPXOSU89g359AEAhZ9QBxRwmbi3cmExjZIXb252hs12
 fWbg==
X-Gm-Message-State: ANhLgQ0J1rXqcsfrJfILYJQdtn1EGqHOsvuFMikZRcYQ5A0jUBLOcwt3
 TnKPXhC157SabTPAdrvLAv3GKiZ2GjfI2QPwA8wAnw==
X-Google-Smtp-Source: ADFU+vtPQGvrqx3+71+klizKiHy1WgLnxvxSsIbkpUsLQ/5J3j0JDtAVV5bqIdO+NSaFCVMRb3H9+kQUCa4EGai01ew=
X-Received: by 2002:a1c:7907:: with SMTP id l7mr309755wme.37.1583173694833;
 Mon, 02 Mar 2020 10:28:14 -0800 (PST)
MIME-Version: 1.0
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <20200302173852.GB109022@kroah.com>
In-Reply-To: <20200302173852.GB109022@kroah.com>
From: Alexander Potapenko <glider@google.com>
Date: Mon, 2 Mar 2020 19:28:03 +0100
Message-ID: <CAG_fn=WvA44J5fN=3i0WoOa-TK=1CqSrdCtR_ceZX0AzUM5s5A@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Dmitriy Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBNYXIgMiwgMjAyMCBhdCA2OjM4IFBNIEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5k
YXRpb24ub3JnPiB3cm90ZToKPgo+IE9uIE1vbiwgTWFyIDAyLCAyMDIwIGF0IDAyOjA0OjI5UE0g
KzAxMDAsIGdsaWRlckBnb29nbGUuY29tIHdyb3RlOgo+ID4gQ2VydGFpbiBjb3B5X2Zyb21fdXNl
cigpIGludm9jYXRpb25zIGluIGJpbmRlci5jIGFyZSBrbm93biB0bwo+ID4gdW5jb25kaXRpb25h
bGx5IGluaXRpYWxpemUgbG9jYWxzIGJlZm9yZSB0aGVpciBmaXJzdCB1c2UsIGxpa2UgZS5nLiBp
bgo+ID4gdGhlIGZvbGxvd2luZyBjYXNlOgo+ID4KPiA+ICAgICAgIHN0cnVjdCBiaW5kZXJfdHJh
bnNhY3Rpb25fZGF0YSB0cjsKPiA+ICAgICAgIGlmIChjb3B5X2Zyb21fdXNlcigmdHIsIHB0ciwg
c2l6ZW9mKHRyKSkpCj4gPiAgICAgICAgICAgICAgIHJldHVybiAtRUZBVUxUOwo+ID4KPiA+IElu
IHN1Y2ggY2FzZXMgZW5hYmxpbmcgQ09ORklHX0lOSVRfU1RBQ0tfQUxMIGxlYWRzIHRvIGluc2Vy
dGlvbiBvZgo+ID4gcmVkdW5kYW50IGxvY2FscyBpbml0aWFsaXphdGlvbiB0aGF0IHRoZSBjb21w
aWxlciBmYWlscyB0byByZW1vdmUuCj4gPiBUbyB3b3JrIGFyb3VuZCB0aGlzIHByb2JsZW0gdGls
bCBDbGFuZyBjYW4gZGVhbCB3aXRoIGl0LCB3ZSBhcHBseQo+ID4gX19ub19pbml0aWFsaXplIHRv
IGxvY2FsIEJpbmRlciBzdHJ1Y3R1cmVzLgo+Cj4gSSB3b3VsZCBsaWtlIHRvIHNlZSBhY3R1YWwg
YmVuY2htYXJrIG51bWJlcnMgc2hvd2luZyB0aGlzIGlzCj4gbmVlZGVkL3VzZWZ1bCBvdGhlcndp
c2UgaXQncyBnb2luZyB0byBqdXN0IGJlIHJhbmRvbSBwZW9wbGUgYWRkaW5nIHRoaXMKPiBtYXJr
aW5nIHRvIHJhbmRvbSBwbGFjZXMgd2l0aCBubyByZWFsIHJlYXNvbi4KVGhpcyB3ZXJlIGxpYlto
d11iaW5kZXJfYmVuY2htYXJrcy4KSSB3aWxsIHVwZGF0ZSBwYXRjaCBkZXNjcmlwdGlvbiB3aXRo
IGJlbmNobWFyayBkYXRhLgo+IHRoYW5rcywKPgo+IGdyZWcgay1oCgoKCi0tIApBbGV4YW5kZXIg
UG90YXBlbmtvClNvZnR3YXJlIEVuZ2luZWVyCgpHb29nbGUgR2VybWFueSBHbWJICkVyaWthLU1h
bm4tU3RyYcOfZSwgMzMKODA2MzYgTcO8bmNoZW4KCkdlc2Now6RmdHNmw7xocmVyOiBQYXVsIE1h
bmljbGUsIEhhbGltYWggRGVMYWluZSBQcmFkbwpSZWdpc3RlcmdlcmljaHQgdW5kIC1udW1tZXI6
IEhhbWJ1cmcsIEhSQiA4Njg5MQpTaXR6IGRlciBHZXNlbGxzY2hhZnQ6IEhhbWJ1cmcKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

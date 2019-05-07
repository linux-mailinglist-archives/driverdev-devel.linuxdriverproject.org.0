Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A89C16808
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 18:38:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3AA2887E09;
	Tue,  7 May 2019 16:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HKWg0ADuiKFq; Tue,  7 May 2019 16:38:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACE7485B0E;
	Tue,  7 May 2019 16:38:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C1F41BF5B4
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 16:38:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4885087CD6
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 16:38:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MkC2hPZiI-N7 for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 16:38:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4C0AD85B0E
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 16:38:46 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id w33so17010977edb.10
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 09:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=L5mTg3IJOrwjhS+4cPOuegpeW4KFCpGlZhmjVpA3VdM=;
 b=TZqcIJFTbUSo9Ua8ldXyHOWmYelZuh+ci+tG/uK+Auxsogv2R0GzFbnxM2ohTHrxkk
 BLJit9pSJmlGzSX7jOKNlYqSax5frQHIo5rZrO7H/spEV59QpPRFaHIdhGNOdsHChlKL
 PPGgWoaQB2X8a18GyvrnwTqKS77YLA0aTxpL4YziGX+jOGOwDy/oVxm7OSBhSv8lFf3M
 81UM8L+ulbjik4XbCKiDwnkOUH16HJMKcjJ1HBS51KbV35uZw18+6R5tdQayAKcKAq5b
 kvVslTyy4hgs6RdBUSCb7yoc5aGfnIvnd5/JP4YILmOZM8Qg/ef3RgJunaMicjznP1u+
 iuNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=L5mTg3IJOrwjhS+4cPOuegpeW4KFCpGlZhmjVpA3VdM=;
 b=qdTKNTV95ltdnOsQWQL004r6z+4oFtt6NWAAsWNQxnaiWg7gLhVknBsk3mj65tSqhj
 BPrVdQ1Fh/l7gtnRc/lz2IiL9KdgP5zEOQtZHX4CvrjuSSTa0o3heyiV5nG3lTZLAOHz
 mZuVkr+jmWIX3GcKpd4vVL8LvBsHQjBOfnh//8y2YnPbuqz91IZYbR7PP4gKi2bIDurE
 cpJlr2t0IpzYFfukQrMrxJJkuB45b5rzVhRqJFkAtu43VTBj+Oyec+nIv7GCkeYk0dW0
 eaHBOR5GeSh/7wtm8anYBiNyK8Nyk/8U+VHoB3aUEyAoVcJgpirzZQQkLm36WKBOriOv
 SzJw==
X-Gm-Message-State: APjAAAXVBmotAXmKaIBLXJq99LqN905yK/FECemjKHEHcxc/o6vF4LZq
 MMPnZOSQSN5OQsqCrninyDzoXA==
X-Google-Smtp-Source: APXvYqxqGfVOQLd9+OfqbkWi7vAXao7KwEDvX5FZFmc78pnVY4Z06OGLMC4o81qzLxEoDm36/lbipw==
X-Received: by 2002:a17:906:7c0b:: with SMTP id
 t11mr4919748ejo.100.1557247124621; 
 Tue, 07 May 2019 09:38:44 -0700 (PDT)
Received: from brauner.io ([212.91.227.56])
 by smtp.gmail.com with ESMTPSA id n21sm260895eju.63.2019.05.07.09.38.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 07 May 2019 09:38:44 -0700 (PDT)
Date: Tue, 7 May 2019 18:38:42 +0200
From: Christian Brauner <christian@brauner.io>
To: Suren Baghdasaryan <surenb@google.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507163841.45v4ym63ug2ni7pb@brauner.io>
References: <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507070430.GA24150@kroah.com>
 <20190507072721.GA4364@sultan-box.localdomain>
 <20190507074334.GB26478@kroah.com>
 <20190507081236.GA1531@sultan-box.localdomain>
 <20190507105826.oi6vah6x5brt257h@brauner.io>
 <CAJuCfpFeOVzDUq5O_cVgVGjonWDWjVVR192On6eB5gf==_uPKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJuCfpFeOVzDUq5O_cVgVGjonWDWjVVR192On6eB5gf==_uPKw@mail.gmail.com>
User-Agent: NeoMutt/20180716
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
 Daniel Colascione <dancol@google.com>, kernel-team <kernel-team@android.com>,
 Todd Kjos <tkjos@android.com>, Kees Cook <keescook@chromium.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Tim Murray <timmurray@google.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Oleg Nesterov <oleg@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 Sultan Alsawaf <sultan@kerneltoast.com>, Andy Lutomirski <luto@amacapital.net>,
 Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBNYXkgMDcsIDIwMTkgYXQgMDk6Mjg6NDdBTSAtMDcwMCwgU3VyZW4gQmFnaGRhc2Fy
eWFuIHdyb3RlOgo+IEZyb206IENocmlzdGlhbiBCcmF1bmVyIDxjaHJpc3RpYW5AYnJhdW5lci5p
bz4KPiBEYXRlOiBUdWUsIE1heSA3LCAyMDE5IGF0IDM6NTggQU0KPiBUbzogU3VsdGFuIEFsc2F3
YWYKPiBDYzogR3JlZyBLcm9haC1IYXJ0bWFuLCBvcGVuIGxpc3Q6QU5EUk9JRCBEUklWRVJTLCBE
YW5pZWwgQ29sYXNjaW9uZSwKPiBUb2RkIEtqb3MsIEtlZXMgQ29vaywgUGV0ZXIgWmlqbHN0cmEs
IE1hcnRpam4gQ29lbmVuLCBMS01MLCBUaW0KPiBNdXJyYXksIE1pY2hhbCBIb2NrbywgU3VyZW4g
QmFnaGRhc2FyeWFuLCBsaW51eC1tbSwgQXJ2ZSBIasO4bm5ldsOlZywKPiBJbmdvIE1vbG5hciwg
U3RldmVuIFJvc3RlZHQsIE9sZWcgTmVzdGVyb3YsIEpvZWwgRmVybmFuZGVzLCBBbmR5Cj4gTHV0
b21pcnNraSwga2VybmVsLXRlYW0KPiAKPiA+IE9uIFR1ZSwgTWF5IDA3LCAyMDE5IGF0IDAxOjEy
OjM2QU0gLTA3MDAsIFN1bHRhbiBBbHNhd2FmIHdyb3RlOgo+ID4gPiBPbiBUdWUsIE1heSAwNywg
MjAxOSBhdCAwOTo0MzozNEFNICswMjAwLCBHcmVnIEtyb2FoLUhhcnRtYW4gd3JvdGU6Cj4gPiA+
ID4gR2l2ZW4gdGhhdCBhbnkgIm5ldyIgYW5kcm9pZCBkZXZpY2UgdGhhdCBnZXRzIHNoaXBwZWQg
InNvb24iIHNob3VsZCBiZQo+ID4gPiA+IHVzaW5nIDQuOS55IG9yIG5ld2VyLCBpcyB0aGlzIGEg
cmVhbCBpc3N1ZT8KPiA+ID4KPiA+ID4gSXQncyBjZXJ0YWlubHkgYSByZWFsIGlzc3VlIGZvciB0
aG9zZSB3aG8gY2FuJ3QgYnV5IGJyYW5kIG5ldyBBbmRyb2lkIGRldmljZXMKPiA+ID4gd2l0aG91
dCBzb2Z0d2FyZSBidWdzIGV2ZXJ5IHNpeCBtb250aHMgOikKPiA+ID4KPiAKPiBIaSBTdWx0YW4s
Cj4gTG9va3MgbGlrZSB5b3UgYXJlIHBvc3RpbmcgdGhpcyBwYXRjaCBmb3IgZGV2aWNlcyB0aGF0
IGRvIG5vdCB1c2UKPiB1c2Vyc3BhY2UgTE1LRCBzb2x1dGlvbiBkdWUgdG8gdGhlbSB1c2luZyBv
bGRlciBrZXJuZWxzIG9yIGR1ZSB0bwo+IHRoZWlyIHZlbmRvcnMgc3RpY2tpbmcgdG8gaW4ta2Vy
bmVsIHNvbHV0aW9uLiBJZiBzbywgSSBzZWUgY291cGxlCj4gbG9naXN0aWNhbCBpc3N1ZXMgd2l0
aCB0aGlzIHBhdGNoLiBJIGRvbid0IHNlZSBpdCBiZWluZyBhZG9wdGVkIGluCj4gdXBzdHJlYW0g
a2VybmVsIDUueCBzaW5jZSBpdCByZS1pbXBsZW1lbnRzIGEgZGVwcmVjYXRlZCBtZWNoYW5pc20g
ZXZlbgo+IHRob3VnaCB2ZW5kb3JzIHN0aWxsIHVzZSBpdC4gVmVuZG9ycyBvbiB0aGUgb3RoZXIg
aGFuZCwgd2lsbCBub3QgYWRvcHQKPiBpdCB1bnRpbCB5b3Ugc2hvdyBldmlkZW5jZSB0aGF0IGl0
IHdvcmtzIHdheSBiZXR0ZXIgdGhhbiB3aGF0Cj4gbG93bWVtb3J5a2lsbGVkIGRyaXZlciBkb2Vz
IG5vdy4gWW91IHdvdWxkIGhhdmUgdG8gcHJvdmlkZSBtZWFzdXJhYmxlCj4gZGF0YSBhbmQgZXhw
bGFpbiB5b3VyIHRlc3RzIGJlZm9yZSB0aGV5IHdvdWxkIGNvbnNpZGVyIHNwZW5kaW5nIHRpbWUK
PiBvbiB0aGlzLgo+IE9uIHRoZSBpbXBsZW1lbnRhdGlvbiBzaWRlIEknbSBub3QgY29udmluY2Vk
IGF0IGFsbCB0aGF0IHRoaXMgd291bGQKPiB3b3JrIGJldHRlciBvbiBhbGwgZGV2aWNlcyBhbmQg
aW4gYWxsIGNpcmN1bXN0YW5jZXMuIFdlIGhhZCBjYXNlcyB3aGVuCj4gYSBuZXcgbWVjaGFuaXNt
IHdvdWxkIHNob3cgdmVyeSBnb29kIHJlc3VsdHMgdW50aWwgb25lIHVzZWNhc2UKPiBjb21wbGV0
ZWx5IGJyb2tlIGl0LiBCdWxrIGtpbGxpbmcgb2YgcHJvY2Vzc2VzIHRoYXQgeW91IGFyZSBkb2lu
ZyBpbgo+IHlvdXIgcGF0Y2ggd2FzIGEgdmVyeSBnb29kIGV4YW1wbGUgb2Ygc3VjaCBhIGRlY2lz
aW9uIHdoaWNoIGxhdGVyIG9uCj4gd2UgaGFkIHRvIHJldGhpbmsuIFRoYXQncyB3aHkgYmFraW5n
IHRoZXNlIHBvbGljaWVzIGludG8ga2VybmVsIGlzCj4gdmVyeSBwcm9ibGVtYXRpYy4gQW5vdGhl
ciBwcm9ibGVtIEkgc2VlIHdpdGggdGhlIGltcGxlbWVudGF0aW9uIHRoYXQKPiBpdCB0aWVzIHBy
b2Nlc3Mga2lsbGluZyB3aXRoIHRoZSByZWNsYWltIHNjYW4gZGVwdGguIEl0J3MgdmVyeSBzaW1p
bGFyCj4gdG8gaG93IHZtcHJlc3N1cmUgd29ya3MgYW5kIHZtcHJlc3N1cmUgaW4gbXkgZXhwZXJp
ZW5jZSBpcyB2ZXJ5Cj4gdW5wcmVkaWN0YWJsZS4KPiAKPiA+ID4gPiBBbmQgaWYgaXQgaXMsIEkn
bSBzdXJlIHRoYXQgYXNraW5nIGZvciB0aG9zZSBwYXRjaGVzIHRvIGJlIGJhY2twb3J0ZWQgdG8K
PiA+ID4gPiA0LjQueSB3b3VsZCBiZSBqdXN0IGZpbmUsIGhhdmUgeW91IGFza2VkPwo+ID4gPiA+
Cj4gPiA+ID4gTm90ZSB0aGF0IEkga25vdyBvZiBBbmRyb2lkIEdvIGRldmljZXMsIHJ1bm5pbmcg
My4xOC55IGtlcm5lbHMsIGRvIE5PVAo+ID4gPiA+IHVzZSB0aGUgaW4ta2VybmVsIG1lbW9yeSBr
aWxsZXIsIGJ1dCBpbnN0ZWFkIHVzZSB0aGUgdXNlcnNwYWNlIHNvbHV0aW9uCj4gPiA+ID4gdG9k
YXkuICBTbyB0cnlpbmcgdG8gZ2V0IGFub3RoZXIgaW4ta2VybmVsIG1lbW9yeSBraWxsZXIgc29s
dXRpb24gYWRkZWQKPiA+ID4gPiBhbnl3aGVyZSBzZWVtcyBxdWl0ZSBvZGQuCj4gPiA+Cj4gPiA+
IEl0J3MgZXZlbiBtb3JlIG9kZCB0aGF0IGFsdGhvdWdoIGEgdXNlcnNwYWNlIHNvbHV0aW9uIGlz
IHRvdXRlZCBhcyB0aGUgcHJvcGVyCj4gPiA+IHdheSB0byBnbyBvbiBMS01MLCBhbG1vc3Qgbm8g
QW5kcm9pZCBPRU1zIGFyZSB1c2luZyBpdCwgYW5kIGV2ZW4gaW4gdGhhdCBjb21taXQKPiA+Cj4g
PiBUaGF0J3MgcHJvYmFibHkgYmVjYXVzZSB3aXRob3V0IHByb3BlciBrZXJuZWwgY2hhbmdlcyB0
aGlzIGlzIHJhdGhlcgo+ID4gdHJpY2t5IHRvIHVzZSBzYWZlbHkgKHNlZSBiZWxvdykuCj4gPgo+
ID4gPiBJIGxpbmtlZCBpbiB0aGUgcHJldmlvdXMgbWVzc2FnZSwgR29vZ2xlIG1hZGUgYSByYXRo
ZXIgbGFyZ2Ugc2V0IG9mCj4gPiA+IG1vZGlmaWNhdGlvbnMgdG8gdGhlIHN1cHBvc2VkbHktZGVm
dW5jdCBsb3dtZW1vcnlraWxsZXIuYyBub3Qgb25lIG1vbnRoIGFnby4KPiA+ID4gV2hhdCdzIGdv
aW5nIG9uPwo+IAo+IElmIHlvdSBsb29rIGludG8gdGhhdCBjb21taXQsIGl0IGFkZHMgYWJpbGl0
eSB0byByZXBvcnQga2lsbCBzdGF0cy4gSWYKPiB0aGF0IHdhcyBhIGNoYW5nZSBpbiBob3cgdGhh
dCBkcml2ZXIgd29ya3MgaXQgd291bGQgYmUgcmVqZWN0ZWQuCj4gCj4gPiA+Cj4gPiA+IFF1YWxj
b21tIHN0aWxsIHVzZXMgbG93bWVtb3J5a2lsbGVyLmMgWzFdIG9uIHRoZSBTbmFwZHJhZ29uIDg0
NS4gSWYgUFNJIHdlcmUKPiA+ID4gYmFja3BvcnRlZCB0byA0LjQsIG9yIGV2ZW4gMy4xOCwgd291
bGQgaXQgcmVhbGx5IGJlIHVzZWQ/IEkgZG9uJ3QgcmVhbGx5Cj4gPiA+IHVuZGVyc3RhbmQgdGhl
IGF2ZXJzaW9uIHRvIGFuIGluLWtlcm5lbCBtZW1vcnkga2lsbGVyIG9uIExLTUwgZGVzcGl0ZSB0
aGUgcmVzdAo+ID4gPiBvZiB0aGUgaW5kdXN0cnkncyBhdHRyYWN0aW9uIHRvIGl0LiBQZXJoYXBz
IHRoZXJlJ3Mgc29tZSBpbmhlcmVudGx5IGdyZWF0IGNvc3QKPiA+ID4gaW4gdXNpbmcgdGhlIHVz
ZXJzcGFjZSBzb2x1dGlvbiB0aGF0IEknbSB1bmF3YXJlIG9mPwo+IAo+IFZlbmRvcnMgYXJlIGNh
dXRpb3VzIGFib3V0IGFkb3B0aW5nIHVzZXJzcGFjZSBzb2x1dGlvbiBhbmQgaXQgaXMgYQo+IHBy
b2Nlc3MgdG8gYWRkcmVzcyBhbGwgY29uY2VybnMgYnV0IHdlIGFyZSBnZXR0aW5nIHRoZXJlLgo+
IAo+ID4gPiBSZWdhcmRsZXNzLCBldmVuIGlmIFBTSSB3ZXJlIGJhY2twb3J0ZWQsIGEgZnVsbC1m
bGVkZ2VkIExNS0QgdXNpbmcgaXQgaGFzIHlldCB0bwo+ID4gPiBiZSBtYWRlLCBzbyBpdCB3b3Vs
ZG4ndCBiZSBvZiBtdWNoIHVzZSBub3cuCj4gPgo+ID4gVGhpcyBpcyB3b3JrIHRoYXQgaXMgb25n
b2luZyBhbmQgcmVxdWlyZXMga2VybmVsIGNoYW5nZXMgdG8gbWFrZSBpdAo+ID4gZmVhc2libGUu
IE9uZSBvZiB0aGUgdGhpbmdzIHRoYXQgSSBoYXZlIGJlZW4gd29ya2luZyBvbiBmb3IgcXVpdGUg
YQo+ID4gd2hpbGUgaXMgdGhlIHdob2xlIGZpbGUgZGVzY3JpcHRvciBmb3IgcHJvY2Vzc2VzIHRo
aW5nIHRoYXQgaXMgaW1wb3J0YW50Cj4gPiBmb3IgTE1LRCAoRXZlbiB0aG91Z2ggSSBuZXZlciB0
aG91Z2h0IGFib3V0IHRoaXMgdXNlLWNhc2Ugd2hlbiBJIHN0YXJ0ZWQKPiA+IHBpdGNoaW5nIHRo
aXMuKS4gSm9lbCBhbmQgRGFuaWVsIGhhdmUgam9pbmVkIGluIGFuZCBhcmUgd29ya2luZyBvbgo+
ID4gbWFraW5nIExNS0QgcG9zc2libGUuCj4gPiBXaGF0IEkgZmluZCBvZGQgaXMgdGhhdCBldmVy
eSBjb3VwbGUgb2Ygd2Vla3MgZGlmZmVyZW50IHNvbHV0aW9ucyB0byB0aGUKPiA+IGxvdyBtZW1v
cnkgcHJvYmxlbSBhcmUgcGl0Y2hlZC4gVGhlcmUgaXMgc2ltcGxlX2xrbWwsIHRoZXJlIGlzIExN
S0QsIGFuZAo+ID4gdGhlcmUgd2FzIGEgcGF0Y2hzZXQgdGhhdCB3YW50ZWQgdG8gc3BlZWQgdXAg
bWVtb3J5IHJlY2xhaW0gYXQgcHJvY2Vzcwo+ID4ga2lsbC10aW1lIGJ5IGFkZGluZyBhIG5ldyBm
bGFnIHRvIHRoZSBuZXcgcGlkZmRfc2VuZF9zaWduYWwoKSBzeXNjYWxsLgo+ID4gVGhhdCBhbGwg
c2VlbXMgLSB0aG91Z2ggcmVsYXRlZCAtIHJhdGhlciB1bmNvb3JkaW5hdGVkLgo+IAo+IEknbSBu
b3Qgc3VyZSB3aHkgcGlkZmRfd2FpdCBhbmQgZXhwZWRpdGVkIHJlY2xhaW0gaXMgc2VlbiBhcwo+
IHVuY29vcmRpbmF0ZWQgZWZmb3J0LiBBbGwgb2YgdGhlbSBhcmUgZG9uZSB0byBpbXByb3ZlIHVz
ZXJzcGFjZSBMTUtELgoKSWYgc28gdGhhdCB3YXNuJ3QgdmVyeSBvYnZpb3VzIGFuZCB0aGVyZSB3
YXMgc29tZSBkaXNhZ3JlZW1lbnQgdGhlcmUgYXMKd2VsbCB3aGV0aGVyIHRoaXMgd291bGQgYmUg
dGhlIHJpZ2h0IHNvbHV0aW9uLgpJbiBhbnkgY2FzZSwgdGhlIHBvaW50IGlzIHRoYXQgTE1LRCBz
ZWVtcyB0byBiZSB0aGUgd2F5IGZvcndhcmQgYW5kIHdpdGgKYWxsIG9mIHRoZSBhcmd1bWVudHMg
YnJvdWdodCBmb3J3YXJkIGhlcmUgdGhpcyBwYXRjaHNldCBzZWVtcyBsaWtlIGl0J3MKZ29pbmcg
aW4gdGhlIHdyb25nIGRpcmVjdGlvbi4KCkNocmlzdGlhbgoKPiAKPiA+IE5vdyBncmFudGVkLAo+
ID4gY29vcmRpbmF0ZWQgaXMgdXN1YWxseSBub3QgaG93IGtlcm5lbCBkZXZlbG9wbWVudCBuZWNl
c3NhcmlseSB3b3JrcyBidXQKPiA+IGl0IHdvdWxkIHByb2JhYmx5IGJlIGdvb2QgdG8gaGF2ZSBz
b21lIHNvcnQgb2YgZGlyZWN0aW9uIGFuZCBmcm9tIHdoYXQgSQo+ID4gaGF2ZSBzZWVuIExNS0Qg
c2VlbXMgdG8gYmUgdGhlIG1vc3QgY29vcmRpbmF0ZWQgZWZmb3J0LiBCdXQgdGhhdCBtaWdodAo+
ID4ganVzdCBiZSBteSBpbXByZXNzaW9uLgo+ID4KPiA+IENocmlzdGlhbgo+IAo+IFRoYW5rcywK
PiBTdXJlbi4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==

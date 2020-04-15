Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D23A91A91FE
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Apr 2020 06:41:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B9B7085EEF;
	Wed, 15 Apr 2020 04:41:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rB5O24oAGIYA; Wed, 15 Apr 2020 04:41:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ABC2385D3F;
	Wed, 15 Apr 2020 04:41:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31A891BF3E3
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 04:41:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2C348204ED
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 04:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHopnQwUrh5d for <devel@linuxdriverproject.org>;
 Wed, 15 Apr 2020 04:41:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 04940204BE
 for <devel@driverdev.osuosl.org>; Wed, 15 Apr 2020 04:41:43 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id b13so2167684oti.3
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 21:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yuNggtIe2GcnI6FuGYRCP7sxE6PadkqmBj6CF6tR/Gs=;
 b=OTB3RfMyrdVJ7ygI0eAB6m89DfyK7Br1DSBVEoq2OJ7g7XFVWBZQPhOzgDy4S2LXTG
 AJMMYR4R29njK35OPsxHnQWrI4xuOC6YfmkFBSL5Y+FgN3f+0KpEoFSNwgomtJqP6l+t
 67AkaK6noIU47090e/BLlc5lXsENljKM6uNHv5jQ8a5ZPyksi5DuPEmiD3YDvILPQnSd
 FAtwGQFURFCCkodWA0D/g9A/wdDKxcAfw2dFzbvHNG6sP3CPa2rfBd08PS+4c+nmxokI
 DSYZFItuasCmP6x1Ah64Othz0RVdteA6jakPuTPC+ob5HEcxFBDDGgFT1q6KPNyyuJGY
 xFJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yuNggtIe2GcnI6FuGYRCP7sxE6PadkqmBj6CF6tR/Gs=;
 b=rI+Z7EDqgBRnplAhFvQ7xNm4cq69lDNtP2Mpvt9t37oaIDCUH6gwxeX+y/FBBkYpm4
 ygnrBoTteEfF6v6YoLQIxI3N6OfJtgRfWUdGLFwvZWJNcdC4UmMkVM5F9N+yqSWTc51l
 ztTLwKAyYDpoTgSAalMITImFZR7Y9cf5zNB+IVFhPjxuNT2gil46/YSnaA9iKWw9MZGZ
 7wEk25+iowjE/iwfOXGeE2wOoqmxEwQY6DsQFPHNXOLlbh+as0wI+OLBgf/DpjPi9FUh
 a2GlNnUwM37jPwcVDSmrbl0nMJfDu+pTfeeg8iut6OoPg1t4/gl4xq5VqbCthN4ezDSK
 wXzw==
X-Gm-Message-State: AGi0PuZ1yM3k/N1EoVQ0/Nb7Xb3WFNNr7zdu4fe7crlAY2nEal0L0lfP
 Am3zIXnNod/ZAuclbhtaudBi8Iaxxv+vK+rKULEPKw==
X-Google-Smtp-Source: APiQypLZVsuOAs/qV12E+s9L226LVjpTiUij81eio0cenUOY+4mpYMVYUEaDSaDyVC+DuicUwi+ryEMvkOkdej8Zuqw=
X-Received: by 2002:a05:6830:20c3:: with SMTP id
 z3mr15050625otq.102.1586925703073; 
 Tue, 14 Apr 2020 21:41:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200414134629.54567-1-orjan.eide@arm.com>
 <20200414141849.55654-1-orjan.eide@arm.com>
 <20200414142810.GA958163@kroah.com>
In-Reply-To: <20200414142810.GA958163@kroah.com>
From: John Stultz <john.stultz@linaro.org>
Date: Tue, 14 Apr 2020 21:41:31 -0700
Message-ID: <CALAqxLX-SUhHPH6ewt-s9cEMc8DtMTgXem=JruAkLofuJf1syg@mail.gmail.com>
Subject: Re: [PATCH] staging: android: ion: Skip sync if not mapped
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, nd <nd@arm.com>,
 Todd Kjos <tkjos@android.com>, Lecopzer Chen <lecopzer.chen@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Anders Pedersen <anders.pedersen@arm.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "Darren Hart \(VMware\)" <dvhart@infradead.org>,
 =?UTF-8?Q?=C3=98rjan_Eide?= <orjan.eide@arm.com>,
 Laura Abbott <labbott@redhat.com>, Martijn Coenen <maco@android.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBBcHIgMTQsIDIwMjAgYXQgNzoyOCBBTSBHcmVnIEtyb2FoLUhhcnRtYW4KPGdyZWdr
aEBsaW51eGZvdW5kYXRpb24ub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgQXByIDE0LCAyMDIwIGF0
IDA0OjE4OjQ3UE0gKzAyMDAsIMOYcmphbiBFaWRlIHdyb3RlOgo+ID4gT25seSBzeW5jIHRoZSBz
Zy1saXN0IG9mIGFuIElvbiBkbWEtYnVmIGF0dGFjaG1lbnQgd2hlbiB0aGUgYXR0YWNobWVudAo+
ID4gaXMgYWN0dWFsbHkgbWFwcGVkIG9uIHRoZSBkZXZpY2UuCj4gPgo+ID4gZG1hLWJ1ZnMgbWF5
IGJlIHN5bmNlZCBhdCBhbnkgdGltZS4gSXQgY2FuIGJlIHJlYWNoZWQgZnJvbSB1c2VyIHNwYWNl
Cj4gPiB2aWEgRE1BX0JVRl9JT0NUTF9TWU5DLCBzbyB0aGVyZSBhcmUgbm8gZ3VhcmFudGVlcyBm
cm9tIGNhbGxlcnMgb24gd2hlbgo+ID4gc3luY3MgbWF5IGJlIGF0dGVtcHRlZCwgYW5kIGRtYV9i
dWZfZW5kX2NwdV9hY2Nlc3MoKSBhbmQKPiA+IGRtYV9idWZfYmVnaW5fY3B1X2FjY2VzcygpIG1h
eSBub3QgYmUgcGFpcmVkLgo+ID4KPiA+IFNpbmNlIHRoZSBzZ19saXN0J3MgZG1hX2FkZHJlc3Mg
aXNuJ3Qgc2V0IHVwIHVudGlsIHRoZSBidWZmZXIgaXMgdXNlZAo+ID4gb24gdGhlIGRldmljZSwg
YW5kIGRtYV9tYXBfc2coKSBpcyBjYWxsZWQgb24gaXQsIHRoZSBkbWFfYWRkcmVzcyB3aWxsIGJl
Cj4gPiBOVUxMIGlmIHN5bmMgaXMgYXR0ZW1wdGVkIG9uIHRoZSBkbWEtYnVmIGJlZm9yZSBpdCdz
IG1hcHBlZCBvbiBhIGRldmljZS4KPiA+Cj4gPiBCZWZvcmUgdjUuMCAoY29tbWl0IDU1ODk3YWY2
MzA5MSAoImRtYS1kaXJlY3Q6IG1lcmdlIHN3aW90bGJfZG1hX29wcwo+ID4gaW50byB0aGUgZG1h
X2RpcmVjdCBjb2RlIikpIHRoaXMgd2FzIGEgcHJvYmxlbSBhcyB0aGUgZG1hLWFwaSAoYXQgbGVh
c3QKPiA+IHRoZSBzd2lvdGxiX2RtYV9vcHMgb24gYXJtNjQpIHdvdWxkIHVzZSB0aGUgcG90ZW50
aWFsbHkgaW52YWxpZAo+ID4gZG1hX2FkZHJlc3MuIEhvdyB0aGF0IGZhaWxlZCBkZXBlbmRlZCBv
biBob3cgdGhlIGRldmljZSBoYW5kbGVkIHBoeXNpY2FsCj4gPiBhZGRyZXNzIDAuIElmIDAgd2Fz
IGEgdmFsaWQgYWRkcmVzcyB0byBwaHlzaWNhbCByYW0sIHRoYXQgcGFnZSB3b3VsZCBnZXQKPiA+
IGZsdXNoZWQgYSBsb3QsIHdoaWxlIHRoZSBhY3R1YWwgcGFnZXMgaW4gdGhlIGJ1ZmZlciB3b3Vs
ZCBub3QgZ2V0IHN5bmNlZAo+ID4gY29ycmVjdGx5LiBXaGlsZSBpZiAwIGlzIGFuIGludmFsaWQg
cGh5c2ljYWwgYWRkcmVzcyBpdCBtYXkgY2F1c2UgYQo+ID4gZmF1bHQgYW5kIHRyaWdnZXIgYSBj
cmFzaC4KPiA+Cj4gPiBJbiB2NS4wIHRoaXMgd2FzIGluY2lkZW50YWxseSBmaXhlZCBieSBjb21t
aXQgNTU4OTdhZjYzMDkxICgiZG1hLWRpcmVjdDoKPiA+IG1lcmdlIHN3aW90bGJfZG1hX29wcyBp
bnRvIHRoZSBkbWFfZGlyZWN0IGNvZGUiKSwgYXMgdGhpcyBtb3ZlZCB0aGUKPiA+IGRtYS1hcGkg
dG8gdXNlIHRoZSBwYWdlIHBvaW50ZXIgaW4gdGhlIHNnX2xpc3QsIGFuZCAoZm9yIElvbiBidWZm
ZXJzIGF0Cj4gPiBsZWFzdCkgdGhpcyB3aWxsIGFsd2F5cyBiZSB2YWxpZCBpZiB0aGUgc2dfbGlz
dCBleGlzdHMgYXQgYWxsLgo+ID4KPiA+IEJ1dCwgdGhpcyBpc3N1ZSBpcyByZS1pbnRyb2R1Y2Vk
IGluIHY1LjMgd2l0aAo+ID4gY29tbWl0IDQ0OWZhNTRkNjgxNSAoImRtYS1kaXJlY3Q6IGNvcnJl
Y3QgdGhlIHBoeXNpY2FsIGFkZHIgaW4KPiA+IGRtYV9kaXJlY3Rfc3luY19zZ19mb3JfY3B1L2Rl
dmljZSIpIG1vdmVzIHRoZSBkbWEtYXBpIGJhY2sgdG8gdGhlIG9sZAo+ID4gYmVoYXZpb3VyIGFu
ZCBwaWNrcyB0aGUgZG1hX2FkZHJlc3MgdGhhdCBtYXkgYmUgaW52YWxpZC4KPiA+Cj4gPiBkbWEt
YnVmIGNvcmUgZG9lc24ndCBlbnN1cmUgdGhhdCB0aGUgYnVmZmVyIGlzIG1hcHBlZCBvbiB0aGUg
ZGV2aWNlLCBhbmQKPiA+IHRodXMgaGF2ZSBhIHZhbGlkIHNnX2xpc3QsIGJlZm9yZSBjYWxsaW5n
IHRoZSBleHBvcnRlcidzCj4gPiBiZWdpbl9jcHVfYWNjZXNzLgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IMOYcmphbiBFaWRlIDxvcmphbi5laWRlQGFybS5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJz
L3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMgfCAxMiArKysrKysrKysrKysKPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IFJlc3VibWl0IHdpdGhvdXQgZGlzY2xh
aW1lciwgc29ycnkgYWJvdXQgdGhhdC4KPiA+Cj4gPiBUaGlzIHNlZW1zIHRvIGJlIHBhcnQgb2Yg
YSBiaWdnZXIgaXNzdWUgd2hlcmUgZG1hLWJ1ZiBleHBvcnRlcnMgYXNzdW1lCj4gPiB0aGF0IHRo
ZWlyIGRtYS1idWYgYmVnaW5fY3B1X2FjY2VzcyBhbmQgZW5kX2NwdV9hY2Nlc3MgY2FsbGJhY2tz
IGhhdmUgYQo+ID4gY2VydGFpbiBndWFyYW50ZWVkIGJlaGF2aW9yLCB3aGljaCBpc24ndCBlbnN1
cmVkIGJ5IGRtYS1idWYgY29yZS4KPiA+Cj4gPiBUaGlzIHBhdGNoIGZpeGVzIHRoaXMgaW4gaW9u
IG9ubHksIGJ1dCBpdCBhbHNvIG5lZWRzIHRvIGJlIGZpeGVkIGZvcgo+ID4gb3RoZXIgZXhwb3J0
ZXJzLCBlaXRoZXIgaGFuZGxlZCBsaWtlIHRoaXMgaW4gZWFjaCBleHBvcnRlciwgb3IgaW4KPiA+
IGRtYS1idWYgY29yZSBiZWZvcmUgY2FsbGluZyBpbnRvIHRoZSBleHBvcnRlcnMuCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYyBiL2RyaXZlcnMv
c3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+ID4gaW5kZXggMzhiNTFlYWNlNGY5Li43Yjc1MmJh
MGNiNmQgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvYW5kcm9pZC9pb24vaW9uLmMK
PiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9hbmRyb2lkL2lvbi9pb24uYwo+Cj4gTm93IHRoYXQg
d2UgaGF2ZSB0aGUgZG1hLWJ1ZmYgc3R1ZmYgaW4gdGhlIHRyZWUsIGRvIHdlIGV2ZW4gbmVlZCB0
aGUKPiBpb24gY29kZSBpbiB0aGUga2VybmVsIGFueW1vcmU/ICBDYW4ndCB3ZSBkZWxldGUgaXQg
bm93Pwo+CgpJIGFncmVlIHRoYXQgd2Ugc2hvdWxkbid0IGJlIHRha2luZyBmdXJ0aGVyIChub24t
c2VjdXJpdHkvY2xlYW51cCkKcGF0Y2hlcyB0byB0aGUgSU9OIGNvZGUuCgpJJ2QgbGlrZSB0byBn
aXZlIGRldmVsb3BlcnMgYSBsaXR0bGUgYml0IG9mIGEgdHJhbnNpdGlvbiBwZXJpb2QgKEkgd2Fz
CnRoaW5raW5nIGEgeWVhciwgYnV0IHJlYWxseSBqdXN0IG9uZSBMVFMgcmVsZWFzZSB0aGF0IGhh
cyBib3RoIHdvdWxkCmRvKSB3aGVyZSB0aGV5IGNhbiBtb3ZlIHRoZWlyIElPTiBoZWFwcyBvdmVy
IHRvIGRtYWJ1ZiBoZWFwcyBhbmQgdGVzdApib3RoIGFnYWluc3QgdGhlIHNhbWUgdHJlZS4KCkJ1
dCBJIGRvIHRoaW5rIHdlIGNhbiBtYXJrIGl0IGFzIGRlcHJlY2F0ZWQgYW5kIGxldCBmb2xrcyBr
bm93IHRoYXQKYXJvdW5kIHRoZSBlbmQgb2YgdGhlIHllYXIgaXQgd2lsbCBiZSBkZWxldGVkLgoK
VGhhdCBzb3VuZCBvaz8KCnRoYW5rcwotam9obgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

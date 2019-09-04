Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F71A96B0
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 00:47:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49F5F87BD7;
	Wed,  4 Sep 2019 22:47:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UgLqjrjTYNWi; Wed,  4 Sep 2019 22:47:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E50E887B27;
	Wed,  4 Sep 2019 22:47:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41D741BF31A
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 22:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 37D4487778
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 22:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FnZoZvSrRQhB for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 22:47:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 97A9F87744
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 22:47:49 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id b2so453792qtq.5
 for <devel@driverdev.osuosl.org>; Wed, 04 Sep 2019 15:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CKyHosvEnb91lwk3iCp8C93MqyR+kvMHU7ULcRus+7I=;
 b=qx5Z70JbBnAHWChlfXFE5EcvHvuUeZjp0pNuSkBiAK4wxUKeeemJ240MWaAqAXJup6
 L/6DwaJW80L776VdT8vX/kDYIxrwUBFUh47iJCETmYZBlzVeRhrRF2qfTKQUfNg9CwsU
 bHCYMewVtXjnvT5I2plewmkYMEK4oLVLz2poKjWltxRLermJ/7BHUoF8eMhgUEeRpUss
 e3g1nDrySwS29cKYneZUgpPDWvio7J0SPrXVpCLqxLX7/xfeEgG309tTWjTXe1hlNTls
 8CTgWlig0f9VUs7K3VJKAG3bJ7HOJI/E2R/FiF4l8GPGV1otIkvvq75A/CxAALguD7PZ
 /PPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CKyHosvEnb91lwk3iCp8C93MqyR+kvMHU7ULcRus+7I=;
 b=ewTzKTEesQBDsjIFTPjmGcaftz2E6lMOwimhrDagbSiXTb9FxTB5HrrOocVKExo+jg
 bI4eLSECLwmC049LV3/iawakTiV7S3MqMY0B6DfD8Kn4aiQRA63URyEzMTS8oSkugp2u
 eJGB4GYgcqmsAlzqtJLujteLK+gs4P8UgXYx2Ne2SYKY1bJdxlxvAxfDvREn/7S8D3Pq
 sUj+dwZd5XbMaMX+/tF04C5jByKZXgSUowjUuzePhXI9zTPbjmOy2VDZcLWDcdquR51a
 bBhpZc5+/DPTtuCMqT6uicneQnuPtrsc75ehZP9Oj9c08b/sAbe6IvP3LXhiF7oDrGR7
 w3Bg==
X-Gm-Message-State: APjAAAVS1cw4F6y2Ndb4hePdByiICFUPJNMwCJEEKcVjPKFM4zB+0oF+
 p0GuzKEeJYJJpKAxcXSApbokmXIcPhzF0thKrx0=
X-Google-Smtp-Source: APXvYqxHz3NP2NmOFPlG2V4YfgrtnS7CaVm8XSVUZfgCbTTa3LE71JKOBFGtZLN4+eA+Rjux7wZV78pzYvlgwg0s/qE=
X-Received: by 2002:ac8:51c4:: with SMTP id d4mr543637qtn.17.1567637268581;
 Wed, 04 Sep 2019 15:47:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190904082232.GA171180@LGEARND20B15>
 <a9ca05ec-55a9-a58c-267a-334771a1480a@rasmusvillemoes.dk>
In-Reply-To: <a9ca05ec-55a9-a58c-267a-334771a1480a@rasmusvillemoes.dk>
From: Austin Kim <austindh.kim@gmail.com>
Date: Thu, 5 Sep 2019 07:47:39 +0900
Message-ID: <CADLLry6WYJRWz1mkgO-fvKeRmOhOJQ3S_hXH1sBW11TujT-a1g@mail.gmail.com>
Subject: Re: [PATCH] media: meson: Add NULL check after the call to kmalloc()
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
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
Cc: mjourdan@baylibre.com, devel@driverdev.osuosl.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-amlogic@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MjAxOeuFhCA57JuUIDTsnbwgKOyImCkg7Jik7ZuEIDU6NDMsIFJhc211cyBWaWxsZW1vZXMgPGxp
bnV4QHJhc211c3ZpbGxlbW9lcy5kaz7ri5jsnbQg7J6R7ISxOgo+Cj4gT24gMDQvMDkvMjAxOSAx
MC4yMiwgQXVzdGluIEtpbSB3cm90ZToKPiA+IElmIHRoZSBrbWFsbG9jKCkgcmV0dXJuIE5VTEws
IHRoZSBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2Ugd2lsbCBvY2N1ci4KPiA+ICAgICAgIG5ld190
cy0+dHMgPSB0czsKPiA+Cj4gPiBBZGQgZXhjZXB0aW9uIGNoZWNrIGFmdGVyIHRoZSBjYWxsIHRv
IGttYWxsb2MoKSBpcyBtYWRlLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEF1c3RpbiBLaW0gPGF1
c3RpbmRoLmtpbUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEv
bWVzb24vdmRlYy92ZGVjX2hlbHBlcnMuYyB8IDQgKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlh
L21lc29uL3ZkZWMvdmRlY19oZWxwZXJzLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvbWVzb24v
dmRlYy92ZGVjX2hlbHBlcnMuYwo+ID4gaW5kZXggZjE2OTQ4Yi4uZTdlNTZkNSAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9tZXNvbi92ZGVjL3ZkZWNfaGVscGVycy5jCj4g
PiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvbWVzb24vdmRlYy92ZGVjX2hlbHBlcnMuYwo+
ID4gQEAgLTIwNiw2ICsyMDYsMTAgQEAgdm9pZCBhbXZkZWNfYWRkX3RzX3Jlb3JkZXIoc3RydWN0
IGFtdmRlY19zZXNzaW9uICpzZXNzLCB1NjQgdHMsIHUzMiBvZmZzZXQpCj4gPiAgICAgICB1bnNp
Z25lZCBsb25nIGZsYWdzOwo+ID4KPiA+ICAgICAgIG5ld190cyA9IGttYWxsb2Moc2l6ZW9mKCpu
ZXdfdHMpLCBHRlBfS0VSTkVMKTsKPiA+ICsgICAgIGlmICghbmV3X3RzKSB7Cj4gPiArICAgICAg
ICAgICAgIGRldl9lcnIoc2Vzcy0+Y29yZS0+ZGV2LCAiRmFpbGVkIHRvIGttYWxsb2MoKVxuIik7
Cj4gPiArICAgICAgICAgICAgIHJldHVybjsKPiA+ICsgICAgIH0KPiA+ICAgICAgIG5ld190cy0+
dHMgPSB0czsKPiA+ICAgICAgIG5ld190cy0+b2Zmc2V0ID0gb2Zmc2V0Owo+Cj4gTm8gbmVlZCB0
byBwcmludGsoKSBvbiBlcnJvciwgQUZBSUsgdGhlIG1tIHN1YnN5c3RlbSBzaG91bGQgYWxyZWFk
eSBtYWtlCj4gc29tZSBub2lzZSBpZiBhbiBhbGxvY2F0aW9uIGZhaWxzLgoKVGhhbmtzIGZvciB2
YWx1YWJsZSBmZWVkYmFjay4KQlRXLCBpZiB0aGUga21hbGxvYyByZXR1cm4gTlVMTCwgbW0gc3Vi
c3lzdGVtIHRocm93cyBlcnJvciBsb2cgd2l0aCAxMDAlPwpJZiBubywgcGxlYXNlIHNoYXJlIGVy
cm9yIHNpZ25hdHVyZSBvZiBrZXJuZWwuCgo+IFRoaXMgaXMgbm90IGEgcHJvcGVyIGZpeCAtIHlv
dSBuZWVkIHRvIG1ha2UgdGhlIGZ1bmN0aW9uIHJldHVybiBhbiBlcnJvcgo+ICgtRU5PTUVNKSB0
byBsZXQgdGhlIGNhbGxlciBrbm93IGFsbG9jYXRpb24gZmFpbGVkLCBhbmQgYWxsb3cgdGhhdCB0
bwo+IHByb3BhZ2F0ZSB0aGUgZXJyb3IuIFRoZXJlJ3Mgb25seSBvbmUgY2FsbGVyLCB3aGljaCBh
bHJlYWR5IHNlZW1zCj4gY2FwYWJsZSBvZiByZXR1cm5pbmcgZXJyb3JzICh0aGVyZSdzIGFuIC1F
QUdBSU4pLCBzbyBpdCBzaG91bGRuJ3QgYmUKPiB0aGF0IGhhcmQgLSB0aG91Z2ggb2YgY291cnNl
IG9uZSBuZWVkcyB0byB1bmRvIHdoYXQgaGFzIGJlZW4gZG9uZSBzbyBmYXIuCj4KPiBBbHNvLCB1
bnJlbGF0ZWQgdG8gdGhlIGttYWxsb2MoKSBoYW5kbGluZzogYW12ZGVjX2FkZF90c19yZW9yZGVy
KCkgY291bGQKPiBiZSBtb3ZlZCB0byBlc3BhcnNlci5jIGFuZCBtYWRlIHN0YXRpYywgb3IgYXQg
dGhlIHZlcnkgbGVhc3QgdGhlCj4gRVhQT1JUX1NZTUJPTCBjYW4gYmUgcmVtb3ZlZCBzaW5jZSB2
ZGVjX2hlbHBlcnMubyBpcyBsaW5rZWQgaW4gdG8gdGhlCj4gc2FtZSBtb2R1bGUgYXMgdGhlIHNv
bGUgdXNlci4gVGhhdCBwcm9iYWJseSBnb2VzIGZvciBhbGwgdGhlCj4gRVhQT1JUX1NZTUJPTChh
bXZkZWNfKikuCgpJIGFncmVlZCB3aXRoIHlvdXIgZmVlZGJhY2suCi0gT24gbWVtb3J5IGFsbG9j
YXRpb24gZmFpbHVyZSwgaXQgc2hvdWxkIGhhdmUgcmV0dXJuZWQgKC1FTk9NRU0pCnJhdGhlciB0
aGFuICdyZXR1cm4nIHN0YXRlbWVudC4KLSBUaGUgY2FsbCB0byBhbXZkZWNfYWRkX3RzX3Jlb3Jk
ZXIoKSBpcyBvbmx5IG1hZGUgYnkgZXNwYXJzZXJfcXVldWUoKS4KCkxldCBtZSByZXNlbmQgdGhl
IHBhdGNoIGlmIG5lY2Vzc2FyeS4KClRoYW5rcywKQXVzdGluIEtpbQo+Cj4gUmFzbXVzCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D1AFA9A8
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 06:32:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 485232045D;
	Wed, 13 Nov 2019 05:32:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aPHW6NbuZX7S; Wed, 13 Nov 2019 05:32:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 008422042D;
	Wed, 13 Nov 2019 05:32:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9FB731BF3CD
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 05:32:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 986622042D
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 05:32:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ciJ4D-TkiNZn for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 05:32:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BE35620425
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 05:32:45 +0000 (UTC)
Received: from localhost (unknown [8.46.76.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56C01222D0;
 Wed, 13 Nov 2019 05:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573623165;
 bh=C1q3nxJLFdJUiuG7WqulAT2rk8eFJT/0XIVbaVKi4qA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f4h3ejptnWDHrNXduCQ1rGWFA0oid4R4gKqt97QrBLCYOvy4RbvDxK1AdBUXo/HAW
 gcFoDDIwBGkuQSTMQfxU+dLPOe5PULfmweiHY8Oupedhi+yKP/hetQg6OEQt192f2a
 zFon92cdHxZZ7pfU5bDEvv0Xx8kjhbr3Nd12NfC4=
Date: Wed, 13 Nov 2019 06:32:32 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Subject: Re: [PATCH 1/2] staging: vchiq: Move retrieval of rpi_firmware to
 vchiq_platform_init()
Message-ID: <20191113053232.GA2036664@kroah.com>
References: <cover.1573482698.git.marcgonzalez@google.com>
 <6054322775b30a90c1fed28a085e5fd578ed70fa.1573482698.git.marcgonzalez@google.com>
 <20191112230915.GA1931478@kroah.com>
 <CAKvFj6pA9aR5DP6L63252aWUmcAX_1tnwu6-O0dZTWXGYt8YLA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKvFj6pA9aR5DP6L63252aWUmcAX_1tnwu6-O0dZTWXGYt8YLA@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net,
 Stefan Wahren <wahrenst@gmx.net>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBOb3YgMTIsIDIwMTkgYXQgMDY6Mjk6NTVQTSAtMDUwMCwgTWFyY2VsbyBEaW9wLUdv
bnphbGV6IHdyb3RlOgo+IE9uIFR1ZSwgTm92IDEyLCAyMDE5IGF0IDY6MDkgUE0gR3JlZyBLSCA8
Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+ID4KPiA+IE9uIE1vbiwgTm92IDEx
LCAyMDE5IGF0IDEyOjE0OjIzUE0gLTA1MDAsIE1hcmNlbG8gRGlvcC1Hb256YWxleiB3cm90ZToK
PiA+ID4gVGhpcyBhbGxvd3MgdGhlIHJlbW92YWwgb2YgdGhlIHN0cnVjdCBycGlfZmlybXdhcmUq
IG1lbWJlcgo+ID4gPiBmcm9tIHN0cnVjdCB2Y2hpcV9kcnZkYXRhLgo+ID4gPgo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBNYXJjZWxvIERpb3AtR29uemFsZXogPG1hcmNnb256YWxlekBnb29nbGUuY29t
Pgo+ID4gPiAtLS0KPiA+ID4gIC4uLi9pbnRlcmZhY2UvdmNoaXFfYXJtL3ZjaGlxXzI4MzVfYXJt
LmMgICAgICAgICAgIHwgMTQgKysrKysrKysrKysrKy0KPiA+ID4gIC4uLi92YzA0X3NlcnZpY2Vz
L2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFfYXJtLmMgIHwgMTQgLS0tLS0tLS0tLS0tLS0KPiA+
ID4gIC4uLi92YzA0X3NlcnZpY2VzL2ludGVyZmFjZS92Y2hpcV9hcm0vdmNoaXFfYXJtLmggIHwg
IDEgLQo+ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlv
bnMoLSkKPiA+Cj4gPiBUaGlzIGNvbW1pdCBicmVha3MgdGhlIGJ1aWxkOgo+ID4KPiA+IEluIGZ1
bmN0aW9uIOKAmGZyZWVfcGFnZWxpc3TigJksCj4gPiAgICAgaW5saW5lZCBmcm9tIOKAmHZjaGlx
X2NvbXBsZXRlX2J1bGvigJkgYXQgZHJpdmVycy9zdGFnaW5nL3ZjMDRfc2VydmljZXMvaW50ZXJm
YWNlL3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jOjI1ODozOgo+ID4gZHJpdmVycy9zdGFnaW5n
L3ZjMDRfc2VydmljZXMvaW50ZXJmYWNlL3ZjaGlxX2FybS92Y2hpcV8yODM1X2FybS5jOjU4ODo0
OiB3YXJuaW5nOiBhcmd1bWVudCAyIG51bGwgd2hlcmUgbm9uLW51bGwgZXhwZWN0ZWQgWy1Xbm9u
bnVsbF0KPiA+ICAgNTg4IHwgICAgbWVtY3B5KChjaGFyICopa21hcChwYWdlc1swXSkgKwo+ID4g
ICAgICAgfCAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gPiAgIDU4OSB8ICAg
ICBwYWdlbGlzdC0+b2Zmc2V0LAo+ID4gICAgICAgfCAgICAgfn5+fn5+fn5+fn5+fn5+fn4KPiA+
ICAgNTkwIHwgICAgIGZyYWdtZW50cywKPiA+ICAgICAgIHwgICAgIH5+fn5+fn5+fn4KPiA+ICAg
NTkxIHwgICAgIGhlYWRfYnl0ZXMpOwo+ID4gICAgICAgfCAgICAgfn5+fn5+fn5+fn4KPiA+Cj4g
PiBQbGVhc2UgYmUgbW9yZSBjYXJlZnVsIGFuZCBhdCBsZWFzdCB0ZXN0IHlvdXIgY2hhbmdlcyBi
ZWZvcmUgc2VuZGluZwo+ID4gdGhlbSBvdXQgOigKPiAKPiBBaCBzb3JyeSA6KCgoLiBDb3VsZCB5
b3UgbGV0IG1lIGtub3cgd2hhdCBjb25maWcgeW91IHNhdyB0aGF0IGVycm9yCj4gd2l0aD8gSSBz
ZWUgbm8gd2FybmluZ3MvZXJyb3JzIHdpdGggYmNtMjgzNV9kZWZjb25maWcuCgpJJ20ganVzdCBi
dWlsZGluZyBvbiB4ODYtNjQsIHRyeSAnYWxsbW9kY29uZmlnJyBvbiB5b3VyIGRlc2t0b3AgYW5k
IHNlZQp3aGF0IGhhcHBlbnMuCgpncmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

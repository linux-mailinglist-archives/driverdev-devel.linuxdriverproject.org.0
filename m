Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D212D511F
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 04:07:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE13587B2C;
	Thu, 10 Dec 2020 03:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zYM5hPPs54e5; Thu, 10 Dec 2020 03:07:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0084387A57;
	Thu, 10 Dec 2020 03:07:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D03401BF2B4
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 03:07:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CCD9487A6B
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 03:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h7KC71YyCLID for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 03:07:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E5AC887A57
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 03:07:12 +0000 (UTC)
X-Gm-Message-State: AOAM532IyzXDd1I9sehlIGYb5mF7ZVsRJwPA373rM+e9QavCx4tEE95R
 zkA0qY08a+6ZI4RzvUv+LQ1IewB7ATp/mdSVlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607569632;
 bh=Ij9Zk/sFw/WVF3WIL7Awpv4vVlyqAocQrIlQUfk4EAM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mRGdRf7AkW5/S3/2Xi22QAXd+Bjl7ZSR49AkoK96PrfRW5t8qzjkJFb7fY9xfKRCx
 Aqu9uXWF4D2wQ1m+7eJgRtYZKe5k5m6iUEZr/1Eo20oURDQE7M5cbjkFkXTzb9FKpB
 kA4UPru0N88k3tc3UnDFqw/OqaxEYPy14C90ZB3DiI3isg71Y+Bc7LInUidzUc7jeQ
 jFEc+P6d8sAf6CxoSevVhfl6iJjH+qxYuR2B/UZBduEYBTAMsFpclIVisVXY3eQb3X
 K4V3wcjr4zI+SX4XMd9NkPehFR27gL5zmA2KcgKjKG/tk6f+tyzu28xwwfzNQ0cnvR
 Q0pSs0Hf0WLRw==
X-Google-Smtp-Source: ABdhPJwEtsuU+F78ug25YRx5NKd5Abr/WII+jJ4HNESUFqg/3e6qw3rnVpO4bkSIn2pbjdbajOHhLUzB3jTHEwV50Sw=
X-Received: by 2002:a05:6402:ca2:: with SMTP id
 cn2mr4762536edb.137.1607569630778; 
 Wed, 09 Dec 2020 19:07:10 -0800 (PST)
MIME-Version: 1.0
References: <!&!AAAAAAAAAAAuAAAAAAAAAM7AkQxKEJRHh2BgMNSTrQkBAExvbAW64DNBoXXP8CRioZMAAAAzfOEAABAAAAAJUqiRO33GQqGIHffCVyG/AQAAAAA=@ministro.hu>
In-Reply-To: <!&!AAAAAAAAAAAuAAAAAAAAAM7AkQxKEJRHh2BgMNSTrQkBAExvbAW64DNBoXXP8CRioZMAAAAzfOEAABAAAAAJUqiRO33GQqGIHffCVyG/AQAAAAA=@ministro.hu>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 9 Dec 2020 21:06:59 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ5gXcVnqRxFWt0UadGTFA=QjquQhs3UtyVC=9Jb2-xdg@mail.gmail.com>
Message-ID: <CAL_JsqJ5gXcVnqRxFWt0UadGTFA=QjquQhs3UtyVC=9Jb2-xdg@mail.gmail.com>
Subject: Re: [PATCH] Staging: silabs si4455 serial driver
To: Info <info@ministro.hu>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBEZWMgOSwgMjAyMCBhdCA1OjE3IEFNIEluZm8gPGluZm9AbWluaXN0cm8uaHU+IHdy
b3RlOgo+Cj4gVGhpcyBpcyBhIHNlcmlhbCBwb3J0IGRyaXZlciBmb3IKPiBTaWxpY29uIExhYnMg
U2k0NDU1IFN1Yi1HSHogdHJhbnNjaXZlci4KPgo+IFNpZ25lZC1vZmYtYnk6IErDs3pzZWYgSG9y
dsOhdGggPGluZm9AbWluaXN0cm8uaHU+Cj4gLS0tCj4gIC4uLi9iaW5kaW5ncy9zdGFnaW5nL3Nl
cmlhbC9zaWxhYnMsc2k0NDU1LnR4dCB8ICAgMzkgKwoKTG9va3Mgc3RyYWlnaHRmb3J3YXJkIGVu
b3VnaCB0byBub3QgYmUgaW4gc3RhZ2luZy4gUGx1cwpiaW5kaW5ncy9zdGFnaW5nL3NlcmlhbCBp
cyBub3QgYSBkaXJlY3RvcnkgSSB3YW50LgoKRFQgYmluZGluZ3MgYXJlIGluIERUIHNjaGVtYSBm
b3JtYXQgbm93LiBTZWUKRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL3dyaXRpbmctc2NoZW1hLnJz
dC4KCj4gIGRyaXZlcnMvc3RhZ2luZy9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICB8ICAg
IDIgKwo+ICBkcml2ZXJzL3N0YWdpbmcvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgfCAg
ICAxICsKPiAgZHJpdmVycy9zdGFnaW5nL3NpNDQ1NS9LY29uZmlnICAgICAgICAgICAgICAgIHwg
ICAgOCArCj4gIGRyaXZlcnMvc3RhZ2luZy9zaTQ0NTUvTWFrZWZpbGUgICAgICAgICAgICAgICB8
ICAgIDIgKwo+ICBkcml2ZXJzL3N0YWdpbmcvc2k0NDU1L1RPRE8gICAgICAgICAgICAgICAgICAg
fCAgICAzICsKPiAgZHJpdmVycy9zdGFnaW5nL3NpNDQ1NS9zaTQ0NTUuYyAgICAgICAgICAgICAg
IHwgMTQ2NSArKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL3N0YWdpbmcvc2k0NDU1L3NpNDQ1
NV9hcGkuaCAgICAgICAgICAgfCAgIDU2ICsKPiAgOCBmaWxlcyBjaGFuZ2VkLCAxNTc2IGluc2Vy
dGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0Cj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3N0YWdpbmcvc2VyaWFsL3NpbGFicyxzaTQ0NTUudHh0Cj4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcvc2k0NDU1L0tjb25maWcKPiAgY3JlYXRlIG1vZGUgMTAw
NjQ0IGRyaXZlcnMvc3RhZ2luZy9zaTQ0NTUvTWFrZWZpbGUKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvc3RhZ2luZy9zaTQ0NTUvVE9ETwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9zdGFnaW5nL3NpNDQ1NS9zaTQ0NTUuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9z
dGFnaW5nL3NpNDQ1NS9zaTQ0NTVfYXBpLmgKPgo+IGRpZmYgLS1naXQKPiBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9zdGFnaW5nL3NlcmlhbC9zaWxhYnMsc2k0NDU1LnR4dAo+
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3N0YWdpbmcvc2VyaWFsL3NpbGFi
cyxzaTQ0NTUudHh0Cj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAu
LmFiZDY1OWI3Yjk1Mgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3Mvc3RhZ2luZy9zZXJpYWwvc2lsYWJzLHNpNDQ1NS50eHQKPiBAQCAtMCww
ICsxLDM5IEBACj4gKyogU2lsaWNvbiBMYWJzIFNpNDQ1NSBFQVNZLVRPLVVTRSwgTE9XLUNVUlJF
TlQgT09LLyhHKUZTSyBTVUItR0haCj4gVFJBTlNDRUlWRVIKPiArCj4gK1JlcXVpcmVkIHByb3Bl
cnRpZXM6Cj4gKy0gY29tcGF0aWJsZTogU2hvdWxkIGJlIG9uZSBvZiB0aGUgZm9sbG93aW5nOgo+
ICsgIC0gInNpbGFicyxzaTQ0NTUiIGZvciBTaWxpY29uIExhYnMgU2k0NDU1LUIxQSBvciBTaTQ0
NTUtQzJBIChkcml2ZXIKPiBhdXRvbWF0aWNhbGx5IGRldGVjdHMgdGhlIHBhcnQgaW5mbyksCgpF
aXRoZXIgZG8gdGhpcyBvci4uLgoKPiArICAtICJzaWxhYnMsc2k0NDU1YjFhIiBmb3IgU2lsaWNv
biBMYWJzIFNpNDQ1NS1CMUEsCj4gKyAgLSAic2lsYWJzLHNpNDQ1NWMyYSIgZm9yIFNpbGljb24g
TGFicyBTaTQ0NTUtQzJBLAoKdGhpcy4gTm90IGJvdGguIEkgYXNzdW1lIHRoZXJlJ3MgYW4gaWQg
cmVnaXN0ZXIgb3Igc29tZXRoaW5nIHlvdSBjYW4KcmVhZCB0byBkZXRlcm1pbmUgd2hpY2ggb25l
LiBUaGF0J3MgZmluZSwgYnV0IGNvbnNpZGVyIGlmIHRoZXJlJ3MgYW55CnBvd2VyIHNlcXVlbmNp
bmcgZGlmZmVyZW5jZXMgdGhhdCB5b3UnZCBuZWVkIHRvIGhhbmRsZSBiZWZvcmUgeW91IGNhbgpy
ZWFkIHRoYXQgcmVnaXN0ZXIuCgo+ICstIHJlZzogU1BJIGNoaXAgc2VsZWN0IG51bWJlci4KPiAr
LSBpbnRlcnJ1cHRzOiBTcGVjaWZpZXMgdGhlIGludGVycnVwdCBzb3VyY2Ugb2YgdGhlIHBhcmVu
dCBpbnRlcnJ1cHQKPiArICBjb250cm9sbGVyLiBUaGUgZm9ybWF0IG9mIHRoZSBpbnRlcnJ1cHQg
c3BlY2lmaWVyIGRlcGVuZHMgb24gdGhlCj4gKyAgcGFyZW50IGludGVycnVwdCBjb250cm9sbGVy
Lgo+ICstIGNsb2NrczogcGhhbmRsZSB0byB0aGUgSUMgc291cmNlIGNsb2NrIChvbmx5IGV4dGVy
bmFsIGNsb2NrIHNvdXJjZQo+IHN1cHBvcnRlZCkuCj4gKy0gc3BpLW1heC1mcmVxdWVuY3k6IG1h
eGltdW0gY2xvY2sgZnJlcXVlbmN5IG9uIFNQSSBwb3J0Cj4gKy0gc2hkbi1ncGlvczogZ3BpbyBw
aW4gZm9yIFNETgoKc2h1dGRvd24tZ3Bpb3MgaXMgdGhlIHNlbWktc3RhbmRhcmQgbmFtZS4KCj4g
Kwo+ICtFeGFtcGxlOgo+ICsKPiArLyB7Cj4gKyAgICAgICBjbG9ja3Mgewo+ICsgICAgICAgICAg
ICAgICAgc2k0NDU1XzFfMl9vc2M6IHNpNDQ1NV8xXzJfb3NjIHsKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgY29tcGF0aWJsZSA9ICJmaXhlZC1jbG9jayI7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICNjbG9jay1jZWxscyA9IDwwPjsKPiArICAgICAgICAgICAgICAgICAgICAgICAgY2xv
Y2stZnJlcXVlbmN5ICA9IDwzMDAwMDAwMD47Cj4gKyAgICAgICAgICAgICAgICB9Owo+ICsgICAg
ICAgfTsKCkRvbid0IG5lZWQgdG8gc2hvdyB0aGlzIGZvciB0aGUgZXhhbXBsZS4KCj4gK307Cj4g
Kwo+ICsmc3BpMCB7Cj4gKyAgICAgICBzaTQ0NTU6IHNpNDQ1NUAwIHsKPiArICAgICAgICAgICAg
ICAgY29tcGF0aWJsZSA9ICJzaWxhYnMsc2k0NDU1IjsKPiArICAgICAgICAgICAgICAgcmVnID0g
PDA+Owo+ICsgICAgICAgICAgICAgICBjbG9ja3MgPSA8JnNpNDQ1NV8xXzJfb3NjPjsKPiArICAg
ICAgICAgICAgICAgaW50ZXJydXB0LXBhcmVudCA9IDwmZ3Bpbz47Cj4gKyAgICAgICAgICAgICAg
IGludGVycnVwdHMgPSA8NyBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+ICsgICAgICAgICAgICAgICAg
c2hkbi1ncGlvcyA9IDwmZ3BpbyAyNiAxPjsKPiArICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJv
a2F5IjsKCkRvbid0IHNob3cgc3RhdHVzIGluIGV4YW1wbGVzLgoKPiArICAgICAgICAgICAgICAg
IHNwaS1tYXgtZnJlcXVlbmN5ID0gPDMwMDAwMDA+Owo+ICsgICAgICAgfTsKPiArfTsKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

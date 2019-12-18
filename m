Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C8E1245B7
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Dec 2019 12:25:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 94B5B86C32;
	Wed, 18 Dec 2019 11:25:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fs80L6B0t8AN; Wed, 18 Dec 2019 11:25:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A51186B1A;
	Wed, 18 Dec 2019 11:25:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1323C1BF46A
 for <devel@linuxdriverproject.org>; Wed, 18 Dec 2019 11:25:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DE4BA2045F
 for <devel@linuxdriverproject.org>; Wed, 18 Dec 2019 11:25:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id padYzP1-V-6P for <devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 11:25:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from nbd.name (nbd.name [46.4.11.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 972FB2040F
 for <devel@driverdev.osuosl.org>; Wed, 18 Dec 2019 11:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ahKETmSCdf4Aufhf/pe09Jyk6OW5gLzkRqCRss+g1CU=; b=QxUj7/YJsLaThVaFFFbPdWLy+e
 N+MGkOb+ZWgYVK2o6d/98gsDkGi88LZhVIcZUnnq7R4I2eW2PHO0OTZ8JoND/aE31GYuYdX+0fMPr
 isRSUxPE27n+xsx0BjYIThpxFZwSLU3pcJ3DpI2SPQ06I3RTjwF272Ff1/ExetHEQvz0=;
Received: from [80.255.7.118] (helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1ihXS3-0004br-Cs; Wed, 18 Dec 2019 12:25:11 +0100
Subject: Re: [PATCH 07/55] staging: wfx: ensure that retry policy always
 fallbacks to MCS0 / 1Mbps
To: =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
References: <20191216170302.29543-1-Jerome.Pouiller@silabs.com>
 <3755885.sodJc2dsoe@pc-42> <f5a6b1b4-6000-04c9-f3a6-c2be8e5dcc61@nbd.name>
 <3099559.gv3Q75KnN1@pc-42>
From: Felix Fietkau <nbd@nbd.name>
Autocrypt: addr=nbd@nbd.name; prefer-encrypt=mutual; keydata=
 xsDiBEah5CcRBADIY7pu4LIv3jBlyQ/2u87iIZGe6f0f8pyB4UjzfJNXhJb8JylYYRzIOSxh
 ExKsdLCnJqsG1PY1mqTtoG8sONpwsHr2oJ4itjcGHfn5NJSUGTbtbbxLro13tHkGFCoCr4Z5
 Pv+XRgiANSpYlIigiMbOkide6wbggQK32tC20QxUIwCg4k6dtV/4kwEeiOUfErq00TVqIiEE
 AKcUi4taOuh/PQWx/Ujjl/P1LfJXqLKRPa8PwD4j2yjoc9l+7LptSxJThL9KSu6gtXQjcoR2
 vCK0OeYJhgO4kYMI78h1TSaxmtImEAnjFPYJYVsxrhay92jisYc7z5R/76AaELfF6RCjjGeP
 wdalulG+erWju710Bif7E1yjYVWeA/9Wd1lsOmx6uwwYgNqoFtcAunDaMKi9xVQW18FsUusM
 TdRvTZLBpoUAy+MajAL+R73TwLq3LnKpIcCwftyQXK5pEDKq57OhxJVv1Q8XkA9Dn1SBOjNB
 l25vJDFAT9ntp9THeDD2fv15yk4EKpWhu4H00/YX8KkhFsrtUs69+vZQwc0cRmVsaXggRmll
 dGthdSA8bmJkQG5iZC5uYW1lPsJgBBMRAgAgBQJGoeQnAhsjBgsJCAcDAgQVAggDBBYCAwEC
 HgECF4AACgkQ130UHQKnbvXsvgCgjsAIIOsY7xZ8VcSm7NABpi91yTMAniMMmH7FRenEAYMa
 VrwYTIThkTlQzsFNBEah5FQQCACMIep/hTzgPZ9HbCTKm9xN4bZX0JjrqjFem1Nxf3MBM5vN
 CYGBn8F4sGIzPmLhl4xFeq3k5irVg/YvxSDbQN6NJv8o+tP6zsMeWX2JjtV0P4aDIN1pK2/w
 VxcicArw0VYdv2ZCarccFBgH2a6GjswqlCqVM3gNIMI8ikzenKcso8YErGGiKYeMEZLwHaxE
 Y7mTPuOTrWL8uWWRL5mVjhZEVvDez6em/OYvzBwbkhImrryF29e3Po2cfY2n7EKjjr3/141K
 DHBBdgXlPNfDwROnA5ugjjEBjwkwBQqPpDA7AYPvpHh5vLbZnVGu5CwG7NAsrb2isRmjYoqk
 wu++3117AAMFB/9S0Sj7qFFQcD4laADVsabTpNNpaV4wAgVTRHKV/kC9luItzwDnUcsZUPdQ
 f3MueRJ3jIHU0UmRBG3uQftqbZJj3ikhnfvyLmkCNe+/hXhPu9sGvXyi2D4vszICvc1KL4RD
 aLSrOsROx22eZ26KqcW4ny7+va2FnvjsZgI8h4sDmaLzKczVRIiLITiMpLFEU/VoSv0m1F4B
 FtRgoiyjFzigWG0MsTdAN6FJzGh4mWWGIlE7o5JraNhnTd+yTUIPtw3ym6l8P+gbvfoZida0
 TspgwBWLnXQvP5EDvlZnNaKa/3oBes6z0QdaSOwZCRA3QSLHBwtgUsrT6RxRSweLrcabwkkE
 GBECAAkFAkah5FQCGwwACgkQ130UHQKnbvW2GgCfTKx80VvCR/PvsUlrvdOLsIgeRGAAn1ee
 RjMaxwtSdaCKMw3j33ZbsWS4
Message-ID: <220d3638-f500-eee8-8e00-2abd44282310@nbd.name>
Date: Wed, 18 Dec 2019 12:25:10 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <3099559.gv3Q75KnN1@pc-42>
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alban Jeantheau <Alban.Jeantheau@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjAxOS0xMi0xNyAxNjoxNSwgSsOpcsO0bWUgUG91aWxsZXIgd3JvdGU6Cj4gT24gVHVlc2Rh
eSAxNyBEZWNlbWJlciAyMDE5IDEyOjIwOjQwIENFVCBGZWxpeCBGaWV0a2F1IHdyb3RlOgo+IFsu
Li5dCj4+IEluc3RlYWQgb2YgdXNpbmcgcGVyLXBhY2tldCByYXRlIGluZm8sIGltcGxlbWVudCB0
aGUKPj4gLnN0YV9yYXRlX3RibF91cGRhdGUgY2FsbGJhY2sgdG8gbWFpbnRhaW4gYSBwcmltYXJ5
IHR4IHBvbGljeSB1c2VkIGZvcgo+PiBhbGwgbm9uLXByb2Jpbmcgbm9uLWZpeGVkLXJhdGUgcGFj
a2V0cywgd2hpY2ggeW91IGNhbiBhbHRlciB3aGlsZQo+PiBwYWNrZXRzIHVzaW5nIGl0IGFyZSBx
dWV1ZWQgYWxyZWFkeS4KPj4gVGhlIGV4aXN0aW5nIGFwcHJvYWNoIHVzaW5nIHBlci1wYWNrZXQg
dHhfaW5mbyBkYXRhIHNob3VsZCB0aGVuIGJlIHVzZWQKPj4gb25seSBmb3IgcHJvYmluZyBvciBm
aXhlZC1yYXRlIHBhY2tldHMuCj4+IFlvdSB0aGVuIHByb2JhYmx5IGhhdmUgdG8gYmUgYSBiaXQg
Y2xldmVyIGluIHRoZSB0eCBzdGF0dXMgcGF0aCBmb3IKPj4gZmlndXJpbmcgb3V0IHdoYXQgcmF0
ZXMgd2VyZSBhY3R1YWxseSB1c2VkLgo+IAo+IEluZGVlZCwgSSBoYXZlIG5vdGljZWQgdGhhdCB3
ZSBhcmUgYXJlIHRvIHJlYWN0IHRvIGFueSBjaGFuZ2VzIG9uIHRoZQo+IGxpbmsgcXVhbGl0eS4g
WW91ciBpZGVhIG1heSBoZWxwcyBhIGxvdC4gVGhhbmsgeW91Lgo+IAo+IERvIHlvdSBrbm93IGlm
IEkgY2FuIHNhZmVseSByZWx5IG9uIElFRUU4MDIxMV9UWF9DVExfUkFURV9DVFJMX1BST0JFIGFu
ZAo+IElFRUU4MDIxMV9UWF9DVExfVVNFX01JTlJBVEUgdG8gZGV0ZWN0IHByb2JpbmcgYW5kIGZp
eGVkLXJhdGUgcGFja2V0cz8KU2V0IHRoZSBodyBmbGFnIFNVUFBPUlRTX1JDX1RBQkxFLiBUaGF0
IHdheSB0aGUgc2tiIHR4X2luZm8gd2lsbCBvbmx5CmhhdmUgY29udHJvbC0+cmF0ZXMgc2V0IGZv
ciBpZiB0aGVyZSBhcmUgb3ZlcnJpZGVzLCBwcm9iaW5nIHJhdGUsIGZpeGVkCnJhdGUsIGV0Yy4K
VGhhdCB3YXkgeW91IGNhbiB1c2UgdGhlIGRlZmF1bHQgcG9saWN5IGlmIGluZm8tPmNvbnRyb2wu
cmF0ZXNbMF0uaWR4ID09IC0xCgo+IEkgY3VycmVudGx5IHdvcmsgb24gb3RoZXJzIHBhcnRzLCBi
dXQgSSB0aGluayBJIHdpbGwgdHJ5IHlvdXIgc3VnZ2VzdGlvbgo+IGluIEphbnVhcnkuCj4gCj4g
T25lIGxhc3QgdGhpbmcsIGRvIHlvdSBrbm93IHdoeSBtaW5zdHJlbCBhcHBlbmRzIHRoZSBsb3dl
c3QgcmF0ZSBhbmQKPiBtaW5zdHJlbF9odCBkb24ndD8gVGhleSBzaG91bGQgYmUgaWRlbnRpY2Fs
LCBub3Q/ClRoZSBtaW5zdHJlbF9odCBhbGdvcml0aG0gaXMgbmV3ZXIgYW5kIG1pbnN0cmVsIGp1
c3QgaGFzbid0IGJlZW4gdXBkYXRlZApmb3IgYSBudW1iZXIgb2YgYWxnb3JpdGhtIGNoYW5nZXMg
eWV0LgoKLSBGZWxpeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK

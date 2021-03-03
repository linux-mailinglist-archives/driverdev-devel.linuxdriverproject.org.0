Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4E432B8E5
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Mar 2021 16:20:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85A6E4011A;
	Wed,  3 Mar 2021 15:20:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3xeUEyFDEhK7; Wed,  3 Mar 2021 15:20:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D9602400F4;
	Wed,  3 Mar 2021 15:20:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 783AA1BF868
 for <devel@linuxdriverproject.org>; Wed,  3 Mar 2021 15:20:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 66E26843C8
 for <devel@linuxdriverproject.org>; Wed,  3 Mar 2021 15:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MkDCCOym64ha for <devel@linuxdriverproject.org>;
 Wed,  3 Mar 2021 15:20:39 +0000 (UTC)
X-Greylist: delayed 00:31:51 by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 07EAC843AE
 for <devel@driverdev.osuosl.org>; Wed,  3 Mar 2021 15:20:38 +0000 (UTC)
Received: from [IPv6:2a01:e0a:4cb:a870:30e8:5098:73c5:2bfe] (unknown
 [IPv6:2a01:e0a:4cb:a870:30e8:5098:73c5:2bfe])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id EB8F91F45DD2;
 Wed,  3 Mar 2021 15:20:36 +0000 (GMT)
Subject: Re: [PATCH v3 0/5] Reset driver for IMX8MQ VPU hardware block
To: Philipp Zabel <p.zabel@pengutronix.de>, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <e6f8537d2a1f34d0a424b68e056c0ae556c93efd.camel@pengutronix.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <2d55ad69-9b93-ab0e-04af-cd775cc9248b@collabora.com>
Date: Wed, 3 Mar 2021 16:20:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <e6f8537d2a1f34d0a424b68e056c0ae556c93efd.camel@pengutronix.de>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkxlIDAzLzAzLzIwMjEgw6AgMTU6MTcsIFBoaWxpcHAgWmFiZWwgYSDDqWNyaXTCoDoKPiBIaSBC
ZW5qYW1pbiwKPgo+IE9uIE1vbiwgMjAyMS0wMy0wMSBhdCAxNjoxNyArMDEwMCwgQmVuamFtaW4g
R2FpZ25hcmQgd3JvdGU6Cj4+IFRoZSB0d28gVlBVcyBpbnNpZGUgSU1YOE1RIHNoYXJlIHRoZSBz
YW1lIGNvbnRyb2wgYmxvY2sgd2hpY2ggY2FuIGJlIHNlZQo+PiBhcyBhIHJlc2V0IGhhcmR3YXJl
IGJsb2NrLgo+IFRoaXMgaXNuJ3QgYSByZXNldCBjb250cm9sbGVyIHRob3VnaC4gVGhlIGNvbnRy
b2wgYmxvY2sgYWxzbyBjb250YWlucwo+IGNsb2NrIGdhdGVzIG9mIHNvbWUgc29ydCBhbmQgYSBm
aWx0ZXIgcmVnaXN0ZXIgZm9yIHRoZSBmZWF0dXJlc2V0IGZ1c2VzLgo+IFRob3NlIHNob3VsZG4n
dCBiZSBtYW5pcHVsYXRlZCB2aWEgdGhlIHJlc2V0IEFQSS4KClRoZXkgYXJlIGFsbCBwYXJ0IG9m
IHRoZSBjb250cm9sIGJsb2NrIGFuZCBvZiB0aGUgcmVzZXQgcHJvY2VzcyBmb3IgdGhpcwpoYXJk
d2FyZSB0aGF0IHdoeSBJIHB1dCB0aGVtIGhlcmUuIEkgZ3Vlc3MgaXQgaXMgYm9yZGVyIGxpbmUg
Oi0pCgo+Cj4+IEluIG9yZGVyIHRvIGJlIGFibGUgdG8gYWRkIHRoZSBzZWNvbmQgVlBVIChmb3Ig
SEVDViBkZWNvZGluZykgaXQgd2lsbCBiZQo+PiBtb3JlIGhhbmR5IGlmIHRoZSBib3RoIFZQVSBk
cml2ZXJzIGluc3RhbmNlIGRvbid0IGhhdmUgdG8gc2hhcmUgdGhlCj4+IGNvbnRyb2wgYmxvY2sg
cmVnaXN0ZXJzLiBUaGlzIGxlYWQgdG8gaW1wbGVtZW50IGl0IGFzIGFuIGluZGVwZW5kIHJlc2V0
Cj4+IGRyaXZlciBhbmQgdG8gY2hhbmdlIHRoZSBWUFUgZHJpdmVyIHRvIHVzZSBpdC4KPiBXaHkg
bm90IHN3aXRjaCB0byBhIHN5c2NvbiByZWdtYXAgZm9yIHRoZSBjb250cm9sIGJsb2NrPyBUaGF0
IHNob3VsZAo+IGFsc28gYWxsb3cgdG8ga2VlcCBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSB3aXRo
IHRoZSBvbGQgYmluZGluZyB3aXRoCj4gbWluaW1hbCBlZmZvcnQuCgpJIHdpbGwgZ2l2ZSBhIHRy
eSBpbiB0aGlzIGRpcmVjdGlvbi4KCj4KPj4gUGxlYXNlIG5vdGUgdGhhdCB0aGlzIHNlcmllcyBi
cmVhayB0aGUgY29tcGF0aWJpbGl0eSBiZXR3ZWVuIHRoZSBEVEIgYW5kCj4+IGtlcm5lbC4gVGhp
cyBicmVhayBpcyBsaW1pdGVkIHRvIElNWDhNUSBTb0MgYW5kIGlzIGRvbmUgd2hlbiB0aGUgZHJp
dmVyCj4+IGlzIHN0aWxsIGluIHN0YWdpbmcgZGlyZWN0b3J5Lgo+IEkga25vdyBpbiB0aGlzIGNh
c2Ugd2UgYXJlIHByZXR0eSBzdXJlIHRoZXJlIGFyZSBubyB1c2VycyBvZiB0aGlzCj4gYmluZGlu
ZyBleGNlcHQgZm9yIGEgc3RhZ2luZyBkcml2ZXIsIGJ1dCBpdCB3b3VsZCBzdGlsbCBiZSBuaWNl
IHRvIGtlZXAKPiBzdXBwb3J0IGZvciB0aGUgZGVwcmVjYXRlZCBiaW5kaW5nLCB0byBhdm9pZCB0
aGUgcmVxdWlyZW1lbnQgb2YgdXBkYXRpbmcKPiBrZXJuZWwgYW5kIERUIGluIGxvY2stc3RlcC4K
CklmIEkgd2FudCB0byB1c2UgYSBzeXNjb24gKG9yIGEgcmVzZXQpIHRoZSBkcml2ZXIgbXVzdCBu
b3QgaW9yZW1hcCB0aGUgImN0cmwiCnJlZ2lzdGVycy4gSXQgbWVhbnMgdGhhdCAiY3RybCIgaGFz
IHRvIGJlIHJlbW92ZWQgZnJvbSB0aGUgZHJpdmVyIHJlcXVlc3RlZApyZWctbmFtZXMgKGlteDht
cV9yZWdfbmFtZXNbXSkuIERvaW5nIHRoYXQgYnJlYWsgdGhlIGtlcm5lbC9EVCBjb21wYXRpYmls
aXR5LgpTb21laG93IHN5c2NvbiBhbmQgImN0cmwiIGFyZSBleGNsdXNpdmUuCgpCZW5qYW1pbgoK
Pgo+IHJlZ2FyZHMKPiBQaGlsaXBwCj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==

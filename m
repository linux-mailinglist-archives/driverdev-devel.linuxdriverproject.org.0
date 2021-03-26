Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A6A34A9C3
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Mar 2021 15:33:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E4011405D8;
	Fri, 26 Mar 2021 14:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U_ub4rjSl8-S; Fri, 26 Mar 2021 14:33:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE226405DF;
	Fri, 26 Mar 2021 14:33:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF4CD1BF59E
 for <devel@linuxdriverproject.org>; Fri, 26 Mar 2021 14:33:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A59C44183B
 for <devel@linuxdriverproject.org>; Fri, 26 Mar 2021 14:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VKNu2ndRxKiO for <devel@linuxdriverproject.org>;
 Fri, 26 Mar 2021 14:33:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C72E141839
 for <devel@driverdev.osuosl.org>; Fri, 26 Mar 2021 14:33:27 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 41A5E1F40DAB
Subject: Re: [PATCH v6 13/13] arm64: dts: imx8mq: Add node to G2 hardware
To: Philipp Zabel <pza@pengutronix.de>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-14-benjamin.gaignard@collabora.com>
 <20210326142440.GD8441@pengutronix.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <4df3c9e4-0983-6007-f3b3-323882f903cf@collabora.com>
Date: Fri, 26 Mar 2021 15:33:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210326142440.GD8441@pengutronix.de>
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org, lee.jones@linaro.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, linux-imx@nxp.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 s.hauer@pengutronix.de, mripard@kernel.org, robh+dt@kernel.org,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, jernej.skrabec@siol.net,
 gregkh@linuxfoundation.org, emil.l.velikov@gmail.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkxlIDI2LzAzLzIwMjEgw6AgMTU6MjQsIFBoaWxpcHAgWmFiZWwgYSDDqWNyaXTCoDoKPiBPbiBU
aHUsIE1hciAxOCwgMjAyMSBhdCAwOToyMDo0NkFNICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3
cm90ZToKPj4gU3BsaXQgVlBVIG5vZGUgaW4gdHdvOiBvbmUgZm9yIEcxIGFuZCBvbmUgZm9yIEcy
IHNpbmNlIHRoZXkgYXJlCj4+IGRpZmZlcmVudCBoYXJkd2FyZSBibG9ja3MuCj4+IEFkZCBzeXNj
b24gZm9yIGhhcmR3YXJlIGNvbnRyb2wgYmxvY2suCj4+IFJlbW92ZSByZWctbmFtZXMgcHJvcGVy
dHkgdGhhdCBpcyB1c2VsZXNzLgo+PiBFYWNoIFZQVSBub2RlIG9ubHkgbmVlZCBvbmUgaW50ZXJy
dXB0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2Fp
Z25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+IHZlcnNpb24gNToKPj4gICAtIHVzZSBzeXNj
b24gaW5zdGVhZCBvZiBWUFUgcmVzZXQKPj4KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bXEuZHRzaSB8IDQzICsrKysrKysrKysrKysrKysrKy0tLS0tCj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXEuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpCj4+IGluZGV4IDE3YzQ0OWUxMmMyZS4u
YjUzN2QxNTNlYmJkIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXEuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4
bXEuZHRzaQo+PiBAQCAtMTMyOSwxNSArMTMyOSwxNiBAQCB1c2IzX3BoeTE6IHVzYi1waHlAMzgy
ZjAwNDAgewo+PiAgIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+ICAgCQl9Owo+PiAgIAo+PiAt
CQl2cHU6IHZpZGVvLWNvZGVjQDM4MzAwMDAwIHsKPj4gKwkJdnB1X2N0cmw6IHN5c2NvbkAzODMy
MDAwMCB7Cj4+ICsJCQljb21wYXRpYmxlID0gIm54cCxpbXg4bXEtdnB1LWN0cmwiLCAic3lzY29u
IjsKPj4gKwkJCXJlZyA9IDwweDM4MzIwMDAwIDB4MTAwMDA+Owo+PiArCQl9Owo+PiArCj4+ICsJ
CXZwdV9nMTogdmlkZW8tY29kZWNAMzgzMDAwMDAgewo+PiAgIAkJCWNvbXBhdGlibGUgPSAibnhw
LGlteDhtcS12cHUiOwo+PiAtCQkJcmVnID0gPDB4MzgzMDAwMDAgMHgxMDAwMD4sCj4+IC0JCQkg
ICAgICA8MHgzODMxMDAwMCAweDEwMDAwPiwKPj4gLQkJCSAgICAgIDwweDM4MzIwMDAwIDB4MTAw
MDA+Owo+PiAtCQkJcmVnLW5hbWVzID0gImcxIiwgImcyIiwgImN0cmwiOwo+PiAtCQkJaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDcgSVJRX1RZUEVfTEVWRUxfSElHSD4sCj4+IC0JCQkJICAgICA8R0lD
X1NQSSA4IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiAtCQkJaW50ZXJydXB0LW5hbWVzID0gImcx
IiwgImcyIjsKPj4gKwkJCXJlZyA9IDwweDM4MzAwMDAwIDB4MTAwMDA+Owo+PiArCQkJaW50ZXJy
dXB0cyA9IDxHSUNfU1BJIDcgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+ICsJCQlpbnRlcnJ1cHQt
bmFtZXMgPSAiZzEiOwo+PiAgIAkJCWNsb2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfVlBVX0cxX1JP
T1Q+LAo+PiAgIAkJCQkgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD4sCj4+ICAgCQkJCSA8
JmNsayBJTVg4TVFfQ0xLX1ZQVV9ERUNfUk9PVD47Cj4+IEBAIC0xMzUwLDkgKzEzNTEsMzMgQEAg
dnB1OiB2aWRlby1jb2RlY0AzODMwMDAwMCB7Cj4+ICAgCQkJCQkJIDwmY2xrIElNWDhNUV9WUFVf
UExMX09VVD4sCj4+ICAgCQkJCQkJIDwmY2xrIElNWDhNUV9TWVMxX1BMTF84MDBNPiwKPj4gICAJ
CQkJCQkgPCZjbGsgSU1YOE1RX1ZQVV9QTEw+Owo+PiAtCQkJYXNzaWduZWQtY2xvY2stcmF0ZXMg
PSA8NjAwMDAwMDAwPiwgPDYwMDAwMDAwMD4sCj4+ICsJCQlhc3NpZ25lZC1jbG9jay1yYXRlcyA9
IDw2MDAwMDAwMDA+LCA8MzAwMDAwMDAwPiwKPiBJJ2QgbGlrZSB0byBzZWUgdGhpcyBtZW50aW9u
ZWQgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKWWVzIEkgd291bGQgZG8gdGhhdC4KVGhlIHZhbHVl
IGNvbWVzIGZyb20gdGhlIGRhdGFzaGVldC4KCj4KPj4gKwkJCQkJICAgICAgIDw4MDAwMDAwMDA+
LCA8MD47Cj4+ICsJCQlwb3dlci1kb21haW5zID0gPCZwZ2NfdnB1PjsKPj4gKwkJCW54cCxpbXg4
bXEtdnB1LWN0cmwgPSA8JnZwdV9jdHJsPjsKPj4gKwkJfTsKPj4gKwo+PiArCQl2cHVfZzI6IHZp
ZGVvLWNvZGVjQDM4MzEwMDAwIHsKPj4gKwkJCWNvbXBhdGlibGUgPSAibnhwLGlteDhtcS12cHUt
ZzIiOwo+PiArCQkJcmVnID0gPDB4MzgzMTAwMDAgMHgxMDAwMD47Cj4+ICsJCQlpbnRlcnJ1cHRz
ID0gPEdJQ19TUEkgOCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gKwkJCWludGVycnVwdC1uYW1l
cyA9ICJnMiI7Cj4+ICsJCQljbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX1ZQVV9HMV9ST09UPiwK
Pj4gKwkJCQkgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD4sCj4+ICsJCQkJIDwmY2xrIElN
WDhNUV9DTEtfVlBVX0RFQ19ST09UPjsKPj4gKwkJCWNsb2NrLW5hbWVzID0gImcxIiwgImcyIiwg
ICJidXMiOwo+PiArCQkJYXNzaWduZWQtY2xvY2tzID0gPCZjbGsgSU1YOE1RX0NMS19WUFVfRzE+
LAo+IENhbiB0aGUgRzEgY2xvY2sgY29uZmlndXJhdGlvbiBiZSBkcm9wcGVkIGZyb20gdGhlIEcy
IGRldmljZSBub2RlIGFuZAo+IHRoZSBHMiBjbG9jayBjb25maWd1cmF0aW9uIGZyb20gdGhlIEcx
IGRldmljZSBub2RlPyBJdCBsb29rcyB3ZWlyZCB0aGF0Cj4gdGhlc2UgZGV2aWNlcyBjb25maWd1
cmUgZWFjaCBvdGhlcidzIGNsb2Nrcy4KCk5vIGJlY2F1c2UgaWYgb25seSBvbmUgZGV2aWNlIG5v
ZGUgaXMgZW5hYmxlZCB3ZSBuZWVkIHRvIGNvbmZpZ3VyZSB0aGUgYm90aApjbG9ja3MgYW55d2F5
LgoKQmVuamFtaW4KCj4KPiByZWdhcmRzCj4gUGhpbGlwcAo+Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

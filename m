Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB8734A9AD
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Mar 2021 15:26:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 59FCB41826;
	Fri, 26 Mar 2021 14:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FzrifPwewWZL; Fri, 26 Mar 2021 14:26:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF700414F9;
	Fri, 26 Mar 2021 14:26:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F11931BF59E
 for <devel@linuxdriverproject.org>; Fri, 26 Mar 2021 14:26:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E05A440268
 for <devel@linuxdriverproject.org>; Fri, 26 Mar 2021 14:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id llWMEkB0nwSc for <devel@linuxdriverproject.org>;
 Fri, 26 Mar 2021 14:26:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F1FA840252
 for <devel@driverdev.osuosl.org>; Fri, 26 Mar 2021 14:26:20 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 98B0A1F46FC8
Subject: Re: [PATCH v6 02/13] dt-bindings: media: nxp,imx8mq-vpu: Update the
 bindings for G2 support
To: Philipp Zabel <pza@pengutronix.de>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-3-benjamin.gaignard@collabora.com>
 <20210326141156.GA8441@pengutronix.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <3c23bfb0-eed4-63ad-be70-58aa129b0e35@collabora.com>
Date: Fri, 26 Mar 2021 15:26:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210326141156.GA8441@pengutronix.de>
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

CkxlIDI2LzAzLzIwMjEgw6AgMTU6MTEsIFBoaWxpcHAgWmFiZWwgYSDDqWNyaXTCoDoKPiBPbiBU
aHUsIE1hciAxOCwgMjAyMSBhdCAwOToyMDozNUFNICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3
cm90ZToKPj4gSW50cm9kdWNpbmcgRzIgaGV2YyB2aWRlbyBkZWNvZGVyIGxlYWQgdG8gbW9kaWZ5
IHRoZSBiaW5kaW5ncyB0byBhbGxvdwo+PiB0byBnZXQgb25lIG5vZGUgcGVyIFZQVXMuCj4+IFZQ
VXMgc2hhcmUgb25lIGhhcmR3YXJlIGNvbnRyb2wgYmxvY2sgd2hpY2ggaXMgcHJvdmlkZWQgYXMg
YSBwaGFuZGxlIG9uCj4+IGFuIHN5c2Nvbi4KPj4gRWFjaCBub2RlIGdvdCBub3cgb25lIHJlZyBh
bmQgb25lIGludGVycnVwdC4KPj4gQWRkIGEgY29tcGF0aWJsZSBmb3IgRzIgaGFyZHdhcmUgYmxv
Y2s6IG54cCxpbXg4bXEtdnB1LWcyLgo+Pgo+PiBUbyBiZSBjb21wYXRpYmxlIHdpdGggb2xkZXIg
RFQgdGhlIGRyaXZlciBpcyBzdGlsbCBjYXBhYmxlIHRvIHVzZSAnY3RybCcKPj4gcmVnLW5hbWUg
ZXZlbiBpZiBpdCBpcyBkZXByZWNhdGVkIG5vdy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFt
aW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiB2
ZXJzaW9uIDU6Cj4+IC0gVGhpcyB2ZXJzaW9uIGRvZXNuJ3QgYnJlYWsgdGhlIGJhY2t3YXJkIGNv
bXBhdGliaWx0eSBiZXR3ZWVuIGtlcm5lbAo+PiAgICBhbmQgRFQuCj4+Cj4+ICAgLi4uL2JpbmRp
bmdzL21lZGlhL254cCxpbXg4bXEtdnB1LnlhbWwgICAgICAgIHwgNTMgKysrKysrKysrKysrLS0t
LS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZWRpYS9ueHAsaW14OG1xLXZwdS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL21lZGlhL254cCxpbXg4bXEtdnB1LnlhbWwKPj4gaW5kZXggNzYyYmUzZjk2Y2U5Li43OTUw
MmZjOGJkZTUgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZWRpYS9ueHAsaW14OG1xLXZwdS55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tZWRpYS9ueHAsaW14OG1xLXZwdS55YW1sCj4+IEBAIC0xNSwyMiArMTUs
MTggQEAgZGVzY3JpcHRpb246Cj4+ICAgCj4+ICAgcHJvcGVydGllczoKPj4gICAgIGNvbXBhdGli
bGU6Cj4+IC0gICAgY29uc3Q6IG54cCxpbXg4bXEtdnB1Cj4+ICsgICAgb25lT2Y6Cj4+ICsgICAg
ICAtIGNvbnN0OiBueHAsaW14OG1xLXZwdQo+PiArICAgICAgLSBjb25zdDogbnhwLGlteDhtcS12
cHUtZzIKPj4gICAKPj4gICAgIHJlZzoKPj4gLSAgICBtYXhJdGVtczogMwo+PiAtCj4+IC0gIHJl
Zy1uYW1lczoKPj4gLSAgICBpdGVtczoKPj4gLSAgICAgIC0gY29uc3Q6IGcxCj4+IC0gICAgICAt
IGNvbnN0OiBnMgo+PiAtICAgICAgLSBjb25zdDogY3RybAo+PiArICAgIG1heEl0ZW1zOiAxCj4+
ICAgCj4+ICAgICBpbnRlcnJ1cHRzOgo+PiAtICAgIG1heEl0ZW1zOiAyCj4+ICsgICAgbWF4SXRl
bXM6IDEKPj4gICAKPj4gICAgIGludGVycnVwdC1uYW1lczoKPj4gLSAgICBpdGVtczoKPj4gKyAg
ICBvbmVPZjoKPj4gICAgICAgICAtIGNvbnN0OiBnMQo+PiAgICAgICAgIC0gY29uc3Q6IGcyCj4+
ICAgCj4+IEBAIC00NiwxNCArNDIsMTggQEAgcHJvcGVydGllczoKPj4gICAgIHBvd2VyLWRvbWFp
bnM6Cj4+ICAgICAgIG1heEl0ZW1zOiAxCj4+ICAgCj4+ICsgIG54cCxpbXg4bXEtdnB1LWN0cmw6
Cj4+ICsgICAgZGVzY3JpcHRpb246IFNwZWNpZmllcyBhIHBoYW5kbGUgdG8gc3lzY29uIFZQVSBo
YXJkd2FyZSBjb250cm9sIGJsb2NrCj4+ICsgICAgJHJlZjogIi9zY2hlbWFzL3R5cGVzLnlhbWwj
L2RlZmluaXRpb25zL3BoYW5kbGUiCj4+ICsKPiBTaG91bGQgd2UgZHJvcCB0aGUgJ3EnIGhlcmUs
IGkuZS4gbnhwLGlteDhtLXZwdS1jdHJsIHNvIHdlIGNhbiB1c2UgdGhlIHNhbWUKPiBiaW5kaW5n
IGZvciBpLk1YOE1NIGxhdGVyPwoKSSBkb24ndCBrbm93IGlmIHRoZSBjb250cm9sIGJsb2NrIGlz
IHRoZSBzYW1lIG9yIG5vdCBvbiBJTVg4TU0sIHNvIEkgaGF2ZSBvbmx5CnB1dCBhIGNvbXBhdGli
bGUgdGFyZ2V0aW5nIElNWDhNUS4KCj4KPj4gICByZXF1aXJlZDoKPj4gICAgIC0gY29tcGF0aWJs
ZQo+PiAgICAgLSByZWcKPj4gLSAgLSByZWctbmFtZXMKPj4gICAgIC0gaW50ZXJydXB0cwo+PiAg
ICAgLSBpbnRlcnJ1cHQtbmFtZXMKPj4gICAgIC0gY2xvY2tzCj4+ICAgICAtIGNsb2NrLW5hbWVz
Cj4+ICsgIC0gbnhwLGlteDhtcS12cHUtY3RybAo+PiAgIAo+PiAgIGFkZGl0aW9uYWxQcm9wZXJ0
aWVzOiBmYWxzZQo+PiAgIAo+PiBAQCAtNjIsMTggKzYyLDMzIEBAIGV4YW1wbGVzOgo+PiAgICAg
ICAgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2NrL2lteDhtcS1jbG9jay5oPgo+PiAgICAg
ICAgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMu
aD4KPj4gICAKPj4gLSAgICAgICAgdnB1OiB2aWRlby1jb2RlY0AzODMwMDAwMCB7Cj4+ICsgICAg
ICAgIHZwdV9jdHJsOiBzeXNjb25AMzgzMjAwMDAgewo+PiArICAgICAgICAgICAgICAgICBjb21w
YXRpYmxlID0gIm54cCxpbXg4bXEtdnB1LWN0cmwiLCAic3lzY29uIjsKPj4gKyAgICAgICAgICAg
ICAgICAgcmVnID0gPDB4MzgzMjAwMDAgMHgxMDAwMD47Cj4+ICsgICAgICAgIH07Cj4+ICsKPj4g
KyAgICAgICAgdnB1X2cxOiB2aWRlby1jb2RlY0AzODMwMDAwMCB7Cj4+ICAgICAgICAgICAgICAg
ICAgIGNvbXBhdGlibGUgPSAibnhwLGlteDhtcS12cHUiOwo+PiAtICAgICAgICAgICAgICAgIHJl
ZyA9IDwweDM4MzAwMDAwIDB4MTAwMDA+LAo+PiAtICAgICAgICAgICAgICAgICAgICAgIDwweDM4
MzEwMDAwIDB4MTAwMDA+LAo+PiAtICAgICAgICAgICAgICAgICAgICAgIDwweDM4MzIwMDAwIDB4
MTAwMDA+Owo+PiAtICAgICAgICAgICAgICAgIHJlZy1uYW1lcyA9ICJnMSIsICJnMiIsICJjdHJs
IjsKPj4gLSAgICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgNyBJUlFfVFlQRV9M
RVZFTF9ISUdIPiwKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPEdJQ19TUEkgOCBJ
UlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gLSAgICAgICAgICAgICAgICBpbnRlcnJ1cHQtbmFtZXMg
PSAiZzEiLCAiZzIiOwo+PiArICAgICAgICAgICAgICAgIHJlZyA9IDwweDM4MzAwMDAwIDB4MTAw
MDA+Owo+PiArICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA3IElSUV9UWVBF
X0xFVkVMX0hJR0g+Owo+PiArICAgICAgICAgICAgICAgIGludGVycnVwdC1uYW1lcyA9ICJnMSI7
Cj4+ICsgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbGsgSU1YOE1RX0NMS19WUFVfRzFfUk9P
VD4sCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJf
Uk9PVD4sCj4gRG9lcyB0aGUgRzEgVlBVIHJlcXVpcmUgdGhlIEcyIGNsb2NrIGFuZCB2aWNlIHZl
cnNhPwoKWWVzIGVpdGhlciB0aGUgY29udHJvbCBoYXJkd2FyZSBibG9jayB3b24ndCB3b3JrLgoK
QmVuamFtaW4KCj4KPiByZWdhcmRzCj4gUGhpbGlwcAo+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

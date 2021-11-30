Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF09463460
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Nov 2021 13:34:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A4B180EFF;
	Tue, 30 Nov 2021 12:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NVGQbmdYM5OB; Tue, 30 Nov 2021 12:34:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4F26880F0F;
	Tue, 30 Nov 2021 12:34:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D30DD1BF2CA
 for <devel@linuxdriverproject.org>; Tue, 30 Nov 2021 12:34:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BCCA5402C5
 for <devel@linuxdriverproject.org>; Tue, 30 Nov 2021 12:34:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=fail (2048-bit key) reason="fail (bad RSA signature)"
 header.d=collabora.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zsI55nngJ3YL for <devel@linuxdriverproject.org>;
 Tue, 30 Nov 2021 12:34:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 092B5402A9
 for <devel@driverdev.osuosl.org>; Tue, 30 Nov 2021 12:34:05 +0000 (UTC)
Received: from [IPv6:2a01:e0a:120:3210:b422:9841:4afb:11b5] (unknown
 [IPv6:2a01:e0a:120:3210:b422:9841:4afb:11b5])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id F38FA1F4500C;
 Tue, 30 Nov 2021 12:34:02 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1638275643; bh=QqCRwQ2875SMqv/AolhMllnqBqyumXGxkjHr+hKDVS4=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=SZv1pYFCv6I+Dv3ozDVt5uFZcr7IZWZ4XeRoUyUMIu/ya8qzbMH+OqsGwWlocMyer
 M7/Hrb1A/4u6vSeEBrdlsCP/7G+yUagSHtd3jRIlMf6kSiEEPFBadpWQrLKrbzyi8p
 YXNRs9cz+fF3JWny8VN6FeLwlXvlEe3xgdEnClYQeUat17GBZpZV6nUteVZGmJZA+f
 /K6CMe0H8I7epGn2tNPJC5U583cLPxILjslPRTHwuF7CwFf63mRzp47ZSzbhVZ0pOP
 3Itfn5ShA2oXAjcuNcYpDQ59v30KaQCErVpQrqWZIErawQcftI6/f9O7YHL1y4ljwZ
 EDQZOosbH/Ovw==
Subject: Re: [PATCH v9 02/13] dt-bindings: media: nxp, imx8mq-vpu: Update the
 bindings for G2 support
To: Adam Ford <aford173@gmail.com>
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-3-benjamin.gaignard@collabora.com>
 <CAHCN7x+HOMoVNq-swqA2p3ddGKft_8QkB2qm00-CN8Dujaw52Q@mail.gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <f6754878-50bf-8873-ac4b-ea54a5074e23@collabora.com>
Date: Tue, 30 Nov 2021 13:34:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAHCN7x+HOMoVNq-swqA2p3ddGKft_8QkB2qm00-CN8Dujaw52Q@mail.gmail.com>
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org,
 Rob Herring <robh@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, NXP Linux Team <linux-imx@nxp.com>,
 Chris Healy <cphealy@gmail.com>, linux-media <linux-media@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 mripard@kernel.org, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, emil.l.velikov@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 paul.kocialkowski@bootlin.com, Sascha Hauer <kernel@pengutronix.de>,
 hverkuil-cisco@xs4all.nl, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkxlIDI5LzExLzIwMjEgw6AgMjE6MTMsIEFkYW0gRm9yZCBhIMOpY3JpdMKgOgo+IE9uIFdlZCwg
QXByIDcsIDIwMjEgYXQgMjozNyBBTSBCZW5qYW1pbiBHYWlnbmFyZAo+IDxiZW5qYW1pbi5nYWln
bmFyZEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPj4gSW50cm9kdWNpbmcgdGhlIEcyIGhldmMgdmlk
ZW8gZGVjb2RlciByZXF1aXJlcyBtb2RpZmljYXRpb25zIG9mIHRoZSBiaW5kaW5ncyB0byBhbGxv
dwo+PiBvbmUgbm9kZSBwZXIgVlBVLgo+Pgo+PiBWUFVzIHNoYXJlIG9uZSBoYXJkd2FyZSBjb250
cm9sIGJsb2NrIHdoaWNoIGlzIHByb3ZpZGVkIGFzIGEgcGhhbmRsZSBvbgo+PiBhIHN5c2Nvbi4K
Pj4gRWFjaCBub2RlIGhhcyBub3cgb25lIHJlZyBhbmQgb25lIGludGVycnVwdC4KPj4gQWRkIGEg
Y29tcGF0aWJsZSBmb3IgRzIgaGFyZHdhcmUgYmxvY2s6IG54cCxpbXg4bXEtdnB1LWcyLgo+Pgo+
PiBUbyBiZSBjb21wYXRpYmxlIHdpdGggb2xkZXIgRFQgdGhlIGRyaXZlciBpcyBzdGlsbCBjYXBh
YmxlIHRvIHVzZSB0aGUgJ2N0cmwnCj4+IHJlZy1uYW1lIGV2ZW4gaWYgaXQgaXMgZGVwcmVjYXRl
ZCBub3cuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5n
YWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiBSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhA
a2VybmVsLm9yZz4KPj4gUmV2aWV3ZWQtYnk6IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0
cm9uaXguZGU+Cj4gSSBuZWVkIHRvIGVkaXQgdGhlIHlhbWwgZmlsZSB0byBhZGQgc3VwcG9ydCB0
aGUgaW14OG1tLCBidXQgaXQgZG9lc24ndAo+IGFwcGVhciB0aGF0IHRoaXMgc2VyaWVzIGhhcyBn
b25lIGFueXdoZXJlLiAgSSBrbm93IHRoZXJlIGlzIHN0aWxsIHNvbWUKPiB3YWl0aW5nIG9uIHRo
ZSB2cHUtYmxrLWN0cmwgZHJpdmVyLCBidXQgaXQgc2VlbXMgbGlrZSB0aGUgOG1xIGNvdWxkCj4g
c3BsaXQgdGhlIGNvZGVjcyBvdXQgdXNpbmcgc3lzY29uIGluIHBsYWNlIG9mIHRoZSBibGstY3Ry
bCB1bnRpbCB0aGF0Cj4gZHJpdmVyIGlzIGF2YWlsYWJsZS4gIElmIHRoYXQgZG9lc24ndCB3b3Jr
LCBJIG1pZ2h0IGhhdmUgdG8gaW50cm9kdWNlCj4gYSBzZXBhcmF0ZSB5YW1sIGZpbGUgZm9yIG1p
bmkgd2hpY2ggY291bGQgYmUgc29tZWhvdyBtZXJnZWQgd2l0aCB0aGUKPiA4bXEgaW4gdGhlIGZ1
dHVyZS4gIEkgYW0ganVzdCBub3Qgc3VyZSB3aGljaCB3YXkgdG8gZ28gcmlnaHQgbm93LgoKVG8g
c3VtbWFyaXplIEx1Y2FzIGEgaGF2ZSBhIGJyYW5jaCBoZXJlOiBodHRwczovL2dpdC5wZW5ndXRy
b25peC5kZS9jZ2l0L2xzdC9saW51eC9sb2cvP2g9aW14OG1xLXZwdS1ibGstY3RybAp3aGVyZSBo
ZSB0cnkgdG8gZW5hYmxlIGJsay1jdHJsIGZvciBpbXg2bXEsIGl0IGlzIHdvcmtpbmcgZm9yIEcx
IGJ1dCBub3QgZm9yIEcyLgoKWW91IGNhbiBmaW5kIHRoZSB0aHJlYWQgYWJvdXQgdGhhdCBoZXJl
OgpodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9kZXZpY2V0cmVlL21zZzQ1MDgzMS5odG1s
CgpSZWdhcmRzLApCZW5qYW1pbgoKPgo+IGFkYW0KPj4gLS0tCj4+IHZlcnNpb24gOToKPj4gICAt
IENvcnJlY3Rpb25zIGluIGNvbW1pdCBtZXNzYWdlCj4+Cj4+IHZlcnNpb24gNzoKPj4gICAtIEFk
ZCBSb2IgYW5kIFBoaWxpcHAgcmV2aWV3ZWQtYnkgdGFnCj4+ICAgLSBDaGFuZ2Ugc3lzY29uIHBo
YW5kbGUgbmFtZSB0byBueHAsaW14OG0tdnB1LWN0cmwgKHJlbW92ZSAncScgdG8gYmUKPj4gICAg
IHVzYWJsZSBmb3IgaU1YOE1NIHRvbykKPj4KPj4gdmVyc2lvbiA1Ogo+PiAtIFRoaXMgdmVyc2lv
biBkb2Vzbid0IGJyZWFrIHRoZSBiYWNrd2FyZCBjb21wYXRpYmlsdHkgYmV0d2VlbiBrZXJuZWwK
Pj4gICAgYW5kIERULgo+Pgo+PiAgIC4uLi9iaW5kaW5ncy9tZWRpYS9ueHAsaW14OG1xLXZwdS55
YW1sICAgICAgICB8IDUzICsrKysrKysrKysrKy0tLS0tLS0KPj4gICAxIGZpbGUgY2hhbmdlZCwg
MzQgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvbnhwLGlteDhtcS12cHUueWFtbCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9ueHAsaW14OG1xLXZwdS55
YW1sCj4+IGluZGV4IDc2MmJlM2Y5NmNlOS4uMThlN2Q0MGE1ZjI0IDEwMDY0NAo+PiAtLS0gYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvbnhwLGlteDhtcS12cHUueWFt
bAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvbnhwLGlt
eDhtcS12cHUueWFtbAo+PiBAQCAtMTUsMjIgKzE1LDE4IEBAIGRlc2NyaXB0aW9uOgo+Pgo+PiAg
IHByb3BlcnRpZXM6Cj4+ICAgICBjb21wYXRpYmxlOgo+PiAtICAgIGNvbnN0OiBueHAsaW14OG1x
LXZwdQo+PiArICAgIG9uZU9mOgo+PiArICAgICAgLSBjb25zdDogbnhwLGlteDhtcS12cHUKPj4g
KyAgICAgIC0gY29uc3Q6IG54cCxpbXg4bXEtdnB1LWcyCj4+Cj4+ICAgICByZWc6Cj4+IC0gICAg
bWF4SXRlbXM6IDMKPj4gLQo+PiAtICByZWctbmFtZXM6Cj4+IC0gICAgaXRlbXM6Cj4+IC0gICAg
ICAtIGNvbnN0OiBnMQo+PiAtICAgICAgLSBjb25zdDogZzIKPj4gLSAgICAgIC0gY29uc3Q6IGN0
cmwKPj4gKyAgICBtYXhJdGVtczogMQo+Pgo+PiAgICAgaW50ZXJydXB0czoKPj4gLSAgICBtYXhJ
dGVtczogMgo+PiArICAgIG1heEl0ZW1zOiAxCj4+Cj4+ICAgICBpbnRlcnJ1cHQtbmFtZXM6Cj4+
IC0gICAgaXRlbXM6Cj4+ICsgICAgb25lT2Y6Cj4+ICAgICAgICAgLSBjb25zdDogZzEKPj4gICAg
ICAgICAtIGNvbnN0OiBnMgo+Pgo+PiBAQCAtNDYsMTQgKzQyLDE4IEBAIHByb3BlcnRpZXM6Cj4+
ICAgICBwb3dlci1kb21haW5zOgo+PiAgICAgICBtYXhJdGVtczogMQo+Pgo+PiArICBueHAsaW14
OG0tdnB1LWN0cmw6Cj4+ICsgICAgZGVzY3JpcHRpb246IFNwZWNpZmllcyBhIHBoYW5kbGUgdG8g
c3lzY29uIFZQVSBoYXJkd2FyZSBjb250cm9sIGJsb2NrCj4+ICsgICAgJHJlZjogIi9zY2hlbWFz
L3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3BoYW5kbGUiCj4+ICsKPj4gICByZXF1aXJlZDoKPj4g
ICAgIC0gY29tcGF0aWJsZQo+PiAgICAgLSByZWcKPj4gLSAgLSByZWctbmFtZXMKPj4gICAgIC0g
aW50ZXJydXB0cwo+PiAgICAgLSBpbnRlcnJ1cHQtbmFtZXMKPj4gICAgIC0gY2xvY2tzCj4+ICAg
ICAtIGNsb2NrLW5hbWVzCj4+ICsgIC0gbnhwLGlteDhtLXZwdS1jdHJsCj4+Cj4+ICAgYWRkaXRp
b25hbFByb3BlcnRpZXM6IGZhbHNlCj4+Cj4+IEBAIC02MiwxOCArNjIsMzMgQEAgZXhhbXBsZXM6
Cj4+ICAgICAgICAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvY2xvY2svaW14OG1xLWNsb2NrLmg+
Cj4+ICAgICAgICAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIv
YXJtLWdpYy5oPgo+Pgo+PiAtICAgICAgICB2cHU6IHZpZGVvLWNvZGVjQDM4MzAwMDAwIHsKPj4g
KyAgICAgICAgdnB1X2N0cmw6IHN5c2NvbkAzODMyMDAwMCB7Cj4+ICsgICAgICAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAibnhwLGlteDhtcS12cHUtY3RybCIsICJzeXNjb24iOwo+PiArICAgICAg
ICAgICAgICAgICByZWcgPSA8MHgzODMyMDAwMCAweDEwMDAwPjsKPj4gKyAgICAgICAgfTsKPj4g
Kwo+PiArICAgICAgICB2cHVfZzE6IHZpZGVvLWNvZGVjQDM4MzAwMDAwIHsKPj4gICAgICAgICAg
ICAgICAgICAgY29tcGF0aWJsZSA9ICJueHAsaW14OG1xLXZwdSI7Cj4+IC0gICAgICAgICAgICAg
ICAgcmVnID0gPDB4MzgzMDAwMDAgMHgxMDAwMD4sCj4+IC0gICAgICAgICAgICAgICAgICAgICAg
PDB4MzgzMTAwMDAgMHgxMDAwMD4sCj4+IC0gICAgICAgICAgICAgICAgICAgICAgPDB4MzgzMjAw
MDAgMHgxMDAwMD47Cj4+IC0gICAgICAgICAgICAgICAgcmVnLW5hbWVzID0gImcxIiwgImcyIiwg
ImN0cmwiOwo+PiAtICAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSA3IElSUV9U
WVBFX0xFVkVMX0hJR0g+LAo+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8R0lDX1NQ
SSA4IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+PiAtICAgICAgICAgICAgICAgIGludGVycnVwdC1u
YW1lcyA9ICJnMSIsICJnMiI7Cj4+ICsgICAgICAgICAgICAgICAgcmVnID0gPDB4MzgzMDAwMDAg
MHgxMDAwMD47Cj4+ICsgICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDcgSVJR
X1RZUEVfTEVWRUxfSElHSD47Cj4+ICsgICAgICAgICAgICAgICAgaW50ZXJydXB0LW5hbWVzID0g
ImcxIjsKPj4gKyAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX1ZQVV9H
MV9ST09UPiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICA8JmNsayBJTVg4TVFfQ0xLX1ZQ
VV9HMl9ST09UPiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICA8JmNsayBJTVg4TVFfQ0xL
X1ZQVV9ERUNfUk9PVD47Cj4+ICsgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiZzEiLCAi
ZzIiLCAiYnVzIjsKPj4gKyAgICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZwZ2NfdnB1
PjsKPj4gKyAgICAgICAgICAgICAgICBueHAsaW14OG0tdnB1LWN0cmwgPSA8JnZwdV9jdHJsPjsK
Pj4gKyAgICAgICAgfTsKPj4gKwo+PiArICAgICAgICB2cHVfZzI6IHZpZGVvLWNvZGVjQDM4MzEw
MDAwIHsKPj4gKyAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gIm54cCxpbXg4bXEtdnB1LWcy
IjsKPj4gKyAgICAgICAgICAgICAgICByZWcgPSA8MHgzODMwMDAwMCAweDEwMDAwPjsKPj4gKyAg
ICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgOCBJUlFfVFlQRV9MRVZFTF9ISUdI
PjsKPj4gKyAgICAgICAgICAgICAgICBpbnRlcnJ1cHQtbmFtZXMgPSAiZzIiOwo+PiAgICAgICAg
ICAgICAgICAgICBjbG9ja3MgPSA8JmNsayBJTVg4TVFfQ0xLX1ZQVV9HMV9ST09UPiwKPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD4sCj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY2xrIElNWDhNUV9DTEtfVlBVX0RFQ19ST09U
PjsKPj4gICAgICAgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAiZzEiLCAiZzIiLCAiYnVzIjsK
Pj4gICAgICAgICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9IDwmcGdjX3ZwdT47Cj4+ICsgICAg
ICAgICAgICAgICAgbnhwLGlteDhtLXZwdS1jdHJsID0gPCZ2cHVfY3RybD47Cj4+ICAgICAgICAg
ICB9Owo+PiAtLQo+PiAyLjI1LjEKPj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPj4g
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

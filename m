Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C0531EBB5
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 16:47:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2513B87357;
	Thu, 18 Feb 2021 15:47:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wZlKLNZnjpMo; Thu, 18 Feb 2021 15:47:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48BA187316;
	Thu, 18 Feb 2021 15:47:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B71EF1BF391
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 15:47:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B350786EA3
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 15:47:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fyuQSIO9G-YN for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 15:47:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4CDA986EA0
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 15:47:14 +0000 (UTC)
Received: from [IPv6:2a01:e0a:4cb:a870:851a:1dfb:a143:80e] (unknown
 [IPv6:2a01:e0a:4cb:a870:851a:1dfb:a143:80e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AFFDF1F45D55;
 Thu, 18 Feb 2021 15:47:10 +0000 (GMT)
Subject: Re: [PATCH v1 18/18] arm64: dts: imx8mq: Add node to G2 hardware
To: Ezequiel Garcia <ezequiel@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com, adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com, Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-19-benjamin.gaignard@collabora.com>
 <b7338896a344ac06f41d782b6b56db227e359348.camel@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <49b162a6-5b13-5b55-4c84-2d6e354a8ad4@collabora.com>
Date: Thu, 18 Feb 2021 16:47:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b7338896a344ac06f41d782b6b56db227e359348.camel@collabora.com>
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
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkxlIDE3LzAyLzIwMjEgw6AgMjE6NDMsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IE9u
IFdlZCwgMjAyMS0wMi0xNyBhdCAwOTowMyArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6
Cj4+IFNwbGl0IFZQVSBub2RlIGluIHR3bzogb25lIGZvciBHMSBhbmQgb25lIGZvciBHMiBzaW5j
ZSB0aGV5IGFyZQo+PiBkaWZmZXJlbnQgaGFyZHdhcmUgYmxvY2tzLgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4K
Pj4gLS0tCj4+ICDCoGFyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcS5kdHNpIHwg
NDMgKysrKysrKysrKysrKysrKystLS0tLS0KPj4gIMKgMSBmaWxlIGNoYW5nZWQsIDMzIGluc2Vy
dGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bXEuZHRzaQo+PiBpbmRleCBkOWQ5ZWZjODU5MmQuLjNjYWIzZjBiOTEzMSAxMDA2
NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1xLmR0c2kKPj4gQEAgLTEy
ODcsMTcgKzEyODcsMTYgQEAgdnB1X3Jlc2V0OiB2cHUtcmVzZXRAMzgzMjAwMDAgewo+PiAgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgI3Jlc2V0LWNlbGxz
ID0gPDE+Owo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+PiAgIAo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdnB1OiB2aWRlby1jb2RlY0AzODMwMDAwMCB7
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2cHVfZzE6IHZpZGVvLWNvZGVjQDM4
MzAwMDAwIHsKPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGNvbXBhdGlibGUgPSAibnhwLGlteDhtcS12cHUiOwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZyA9IDwweDM4MzAwMDAwIDB4MTAwMDA+LAo+
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPDB4MzgzMTAwMDAgMHgxMDAwMD47Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcmVnLW5hbWVzID0gImcxIiwgImcyIjsKPj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlcnJ1cHRzID0gPEdJQ19TUEkg
NyBJUlFfVFlQRV9MRVZFTF9ISUdIPiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPEdJQ19TUEkgOCBJUlFf
VFlQRV9MRVZFTF9ISUdIPjsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBpbnRlcnJ1cHQtbmFtZXMgPSAiZzEiLCAiZzIiOwo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJlZyA9IDwweDM4MzAwMDAwIDB4MTAw
MDA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
Zy1uYW1lcyA9ICJnMSI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDcgSVJRX1RZUEVfTEVWRUxfSElHSD47Cj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZXJydXB0
LW5hbWVzID0gImcxIjsKPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoGNsb2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfVlBVX0cxX1JPT1Q+LAo+PiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD47Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2xvY2stbmFtZXMgPSAiZzEiLCAiZzIiOwo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD4sCj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNsayBJTVg4
TVFfQ0xLX1ZQVV9ERUNfUk9PVD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgY2xvY2stbmFtZXMgPSAiZzEiLCAiZzIiLCAiYnVzIjsKPiBIb3cgY29t
ZSB0aGUgRzEgYmxvY2sgbmVlZHMgdGhlIEcyIGNsb2NrPwoKSXQgZG9lc24ndCwgSSB3aWxsIHJl
bW92ZSBpdCBpbiB2MgoKPgo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgYXNzaWduZWQtY2xvY2tzID0gPCZjbGsgSU1YOE1RX0NMS19WUFVfRzE+LAo+
PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmNsayBJTVg4TVFfQ0xLX1ZQVV9HMj4sCj4+
ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY2xrIElNWDhNUV9DTEtfVlBVX0JVUz4sCj4+
IEBAIC0xMzA2LDEyICsxMzA1LDM2IEBAIHZwdTogdmlkZW8tY29kZWNAMzgzMDAwMDAgewo+PiAg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmY2xrIElNWDhNUV9WUFVf
UExMX09VVD4sCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZj
bGsgSU1YOE1RX1NZUzFfUExMXzgwME0+LAo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDwmY2xrIElNWDhNUV9WUFVfUExMPjsKPj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDw2MDAw
MDAwMDA+LCA8NjAwMDAwMDAwPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDw2MDAwMDAwMDA+LCA8MzAwMDAw
MDAwPiwKPj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDw4MDAwMDAwMDA+
LCA8MD47Cj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXNldHMgPSA8JnZwdV9yZXNldCBJTVg4TVFfUkVTRVRfVlBVX1JFU0VUX0cxPjsKPj4gIMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBvd2VyLWRvbWFp
bnMgPSA8JnBnY192cHU+Owo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Owo+
PiAgIAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdnB1X2cyOiB2aWRlby1jb2Rl
Y0AzODMxMDAwMCB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgY29tcGF0aWJsZSA9ICJueHAsaW14OG1xLXZwdS1nMiI7Cj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVnID0gPDB4MzgzMTAwMDAgMHgxMDAw
MD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVn
LW5hbWVzID0gImcyIjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgOCBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlcnJ1cHQt
bmFtZXMgPSAiZzIiOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGNsb2NrcyA9IDwmY2xrIElNWDhNUV9DTEtfVlBVX0cxX1JPT1Q+LAo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PCZjbGsgSU1YOE1RX0NMS19WUFVfRzJfUk9PVD4sCj4gRGl0dG8sIHRoZSBHMiBibG9jayBuZWVk
cyB0aGUgRzEgY2xvY2s/Cj4KPiBUaGFua3MsCj4gRXplcXVpZWwKPgo+Cl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904D436556D
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Apr 2021 11:31:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC94240215;
	Tue, 20 Apr 2021 09:31:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LbyeAjEHVr4B; Tue, 20 Apr 2021 09:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E03DE4020D;
	Tue, 20 Apr 2021 09:31:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D13191BF2C0
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 09:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CDFC583A6A
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 09:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ky7ql74NXWEl for <devel@linuxdriverproject.org>;
 Tue, 20 Apr 2021 09:31:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F3B0483A5F
 for <devel@driverdev.osuosl.org>; Tue, 20 Apr 2021 09:31:21 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 906181F4277A
Subject: Re: [PATCH v9 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Lucas Stach <l.stach@pengutronix.de>, ezequiel@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 lee.jones@linaro.org, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
 Jacky Bai <ping.bai@nxp.com>
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-4-benjamin.gaignard@collabora.com>
 <7bcbb787d82f21d42563d8fb7e3c2e7d40123932.camel@pengutronix.de>
 <ffe9b3f5-94f5-453e-73f0-4b42d0454b63@collabora.com>
 <529b61b1b1e6030c92a7944c4864246521b2ccdd.camel@pengutronix.de>
 <36008691-d075-203d-0cac-2a012773ea34@collabora.com>
 <43a767f8-77f5-7937-c484-753a3123f6a2@xs4all.nl>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <e7064bb1-69e6-4214-380d-c464b7832da5@collabora.com>
Date: Tue, 20 Apr 2021 11:31:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <43a767f8-77f5-7937-c484-753a3123f6a2@xs4all.nl>
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
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 kernel@collabora.com, cphealy@gmail.com, linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CkxlIDIwLzA0LzIwMjEgw6AgMTE6MTYsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDIw
LzA0LzIwMjEgMTE6MTAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBMZSAxNi8wNC8yMDIx
IMOgIDE3OjE0LCBMdWNhcyBTdGFjaCBhIMOpY3JpdMKgOgo+Pj4gQW0gRnJlaXRhZywgZGVtIDE2
LjA0LjIwMjEgdW0gMTU6MDggKzAyMDAgc2NocmllYiBCZW5qYW1pbiBHYWlnbmFyZDoKPj4+PiBM
ZSAxNi8wNC8yMDIxIMOgIDEyOjU0LCBMdWNhcyBTdGFjaCBhIMOpY3JpdMKgOgo+Pj4+PiBBbSBN
aXR0d29jaCwgZGVtIDA3LjA0LjIwMjEgdW0gMDk6MzUgKzAyMDAgc2NocmllYiBCZW5qYW1pbiBH
YWlnbmFyZDoKPj4+Pj4+IEluIG9yZGVyIHRvIGJlIGFibGUgdG8gc2hhcmUgdGhlIGNvbnRyb2wg
aGFyZHdhcmUgYmxvY2sgYmV0d2Vlbgo+Pj4+Pj4gVlBVcyB1c2UgYSBzeXNjb24gaW5zdGVhZCBh
IGlvcmVtYXAgaXQgaW4gdGhlIGRyaXZlci4KPj4+Pj4+IFRvIGtlZXAgdGhlIGNvbXBhdGliaWxp
dHkgd2l0aCBvbGRlciBEVCBpZiAnbnhwLGlteDhtcS12cHUtY3RybCcKPj4+Pj4+IHBoYW5kbGUg
aXMgbm90IGZvdW5kIGxvb2sgYXQgJ2N0cmwnIHJlZy1uYW1lLgo+Pj4+Pj4gV2l0aCB0aGUgbWV0
aG9kIGl0IGJlY29tZXMgdXNlbGVzcyB0byBwcm92aWRlIGEgbGlzdCBvZiByZWdpc3Rlcgo+Pj4+
Pj4gbmFtZXMgc28gcmVtb3ZlIGl0Lgo+Pj4+PiBTb3JyeSBmb3IgcHV0dGluZyBhIHNwb2tlIGlu
IHRoZSB3aGVlbCBhZnRlciBtYW55IGl0ZXJhdGlvbnMgb2YgdGhlCj4+Pj4+IHNlcmllcy4KPj4+
Pj4KPj4+Pj4gV2UganVzdCBkaXNjdXNzZWQgYSB3YXkgZm9yd2FyZCBvbiBob3cgdG8gaGFuZGxl
IHRoZSBjbG9ja3MgYW5kIHJlc2V0cwo+Pj4+PiBwcm92aWRlZCBieSB0aGUgYmxrY3RsIGJsb2Nr
IG9uIGkuTVg4TU0gYW5kIGxhdGVyIGFuZCBpdCBzZWVtcyB0aGVyZSBpcwo+Pj4+PiBhIGNvbnNl
bnN1cyBvbiB0cnlpbmcgdG8gcHJvdmlkZSB2aXJ0dWFsIHBvd2VyIGRvbWFpbnMgZnJvbSBhIGJs
a2N0bAo+Pj4+PiBkcml2ZXIsIGNvbnRyb2xsaW5nIGNsb2NrcyBhbmQgcmVzZXRzIGZvciB0aGUg
ZGV2aWNlcyBpbiB0aGUgcG93ZXIKPj4+Pj4gZG9tYWluLiBJIHdvdWxkIGxpa2UgdG8gYXZvaWQg
aW50cm9kdWNpbmcgeWV0IGFub3RoZXIgd2F5IG9mIGhhbmRsaW5nCj4+Pj4+IHRoZSBibGtjdGwg
YW5kIHRodXMgd291bGQgbGlrZSB0byBhbGlnbiB0aGUgaS5NWDhNUSBWUFUgYmxrY3RsIHdpdGgK
Pj4+Pj4gd2hhdCB3ZSBhcmUgcGxhbm5pbmcgdG8gZG8gb24gdGhlIGxhdGVyIGNoaXAgZ2VuZXJh
dGlvbnMuCj4+Pj4+Cj4+Pj4+IENDJ2luZyBKYWNreSBCYWkgYW5kIFBlbmcgRmFuIGZyb20gTlhQ
LCBhcyB0aGV5IHdlcmUgZ29pbmcgdG8gZ2l2ZSB0aGlzCj4+Pj4+IHZpcnR1YWwgcG93ZXIgZG9t
YWluIHRoaW5nIGEgc2hvdC4KPj4+PiBUaGF0IGNvdWxkIHJlcGxhY2UgdGhlIDMgZmlyc3QgcGF0
Y2hlcyBhbmQgRHQgcGF0Y2hlIG9mIHRoaXMgc2VyaWVzCj4+Pj4gYnV0IHRoYXQgd2lsbCBub3Qg
aW1wYWN0IHRoZSBoZXZjIHBhcnQsIHNvIEkgd29uZGVyIGlmIHB1cmUgaGV2YyBwYXRjaGVzCj4+
Pj4gY291bGQgYmUgbWVyZ2VkIGFueXdheSA/Cj4+Pj4gVGhleSBhcmUgcmV2aWV3ZWQgYW5kIGRv
bid0IGRlcGVuZCBvZiBob3cgdGhlIGN0cmwgYmxvY2sgaXMgbWFuYWdlZC4KPj4+IEknbSBub3Qg
cmVhbGx5IGluIGEgcG9zaXRpb24gdG8gZ2l2ZSBhbnkgaW5mb3JtZWQgb3BpbmlvbiBhYm91dCB0
aGF0Cj4+PiBodmVjIHBhdGNoZXMsIGFzIEkgb25seSBza2ltbWVkIHRoZW0sIGJ1dCBJIGRvbid0
IHNlZSBhbnkgcmVhc29uIHRvCj4+PiBkZWxheSBwYXRjaGVzIDA0LTExIGZyb20gdGhpcyBzZXJp
ZXMgdW50aWwgdGhlIGkuTVg4TSBwbGF0Zm9ybSBpc3N1ZXMKPj4+IGFyZSBzb3J0ZWQuIEFGQUlD
UyB0aG9zZSB0aGluZ3MgYXJlIHRvdGFsbHkgb3J0aG9nb25hbC4KPj4gSGkgSGFucywKPj4gV2hh
dCBkbyB5b3UgdGhpbmsgYWJvdXQgdGhpcyBwcm9wb3NhbCB0byBzcGxpdCB0aGlzIHNlcmllcyA/
Cj4+IEdldCBoZXZjIHBhcnQgbWVyZ2VkIGNvdWxkIGFsbG93IG1lIHRvIGNvbnRpbnVlIHRvIGFk
ZCBmZWF0dXJlcwo+PiBsaWtlIHNjYWxpbmcgbGlzdHMsIGNvbXByZXNzZWQgcmVmZXJlbmNlIGJ1
ZmZlcnMgYW5kIDEwLWJpdCBzdXBwb3J0cy4KPiBNYWtlcyBzZW5zZSB0byBtZSEKCkdyZWF0ICEK
SWYgdGhlIGxhdGVzdCB2ZXJzaW9uIG1hdGNoIHlvdXIgZXhwZWN0YXRpb25zIGhvdyB3b3VsZCB5
b3UgbGlrZSB0byBwcm9jZXNzZWQgPwpDYW4geW91IG1lcmdlZCBwYXRjaGVzIDQgdG8gMTIgPyBv
ciBzaG91bGQgSSByZXNlbmQgdGhlbSBpbiBhIG5ldyBzaG9ydGVkIHNlcmllcyA/CgpSZWdhcmRz
LApCZW5qYW1pbgoKPgo+IFJlZ2FyZHMsCj4KPiAJSGFucwo+Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

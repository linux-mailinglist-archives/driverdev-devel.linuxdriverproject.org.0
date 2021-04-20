Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5118B3657A3
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Apr 2021 13:36:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6436040533;
	Tue, 20 Apr 2021 11:36:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ng23_yFWltds; Tue, 20 Apr 2021 11:36:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1DB924050F;
	Tue, 20 Apr 2021 11:36:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 993731BF31D
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 11:36:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 95192401E2
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 11:36:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=xs4all.nl
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uxru5vDn3lZl for <devel@linuxdriverproject.org>;
 Tue, 20 Apr 2021 11:35:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lb3-smtp-cloud7.xs4all.net (lb3-smtp-cloud7.xs4all.net
 [194.109.24.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3DA3A4012B
 for <devel@driverdev.osuosl.org>; Tue, 20 Apr 2021 11:35:57 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id YofWlXS4Q8K3KYofZlzPTx; Tue, 20 Apr 2021 13:35:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1618918554; bh=doq2K2ciyiMrj6S2cEcZtlgv25cz/m88RRkxLWtesi0=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=MeQVxCP+HH56vApGqKbqC5wUCSSWQGP9mNawk6Mk02oGP56yK+tCBQnJtmVAI9mCH
 TKeZA9gsE7s7v/jZJjdBi/p8sDDdMfgFUXldy7hOJVdugYNdylHPLXIhlc7GNgUOG0
 LlS+Q4T9uZLsVGfm/kujA39HiHl9Ndtv+X0Zu4lBz2FwhP3YYVJKNnZNj9vV0983Fo
 iT81rSskXhJWj0a62618wQduoFbNW8reougESlXqrPCo/JAXCxp/Vn6Mjz7IfRzcxc
 X3GaRMKVXT9ENB6INQAxZ0CUdLjA/wL/cQGhnq4b00oGj3HrHAQHxEJWdIJ1vWKjEl
 r3DdOOXYnszDw==
Subject: Re: [PATCH v9 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
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
 <e7064bb1-69e6-4214-380d-c464b7832da5@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <0f23d42e-b858-c57d-3bf7-32b511e919d1@xs4all.nl>
Date: Tue, 20 Apr 2021 13:35:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <e7064bb1-69e6-4214-380d-c464b7832da5@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfGZ13gHMa8gkiXjz8wgDyFzaYYCt9UUsYTPpCio4nZAkdDDxuKCKceeVqGxUSF/TqIr7N6FcI4GNAGxjmkU652ja4jvW2ByzAdmzDG7vM0WvbOQLToVt
 +mr75r84cLP2CO6ycEvczdsIhyMbPGyivQMF81Dk1z1w/MCH2xL3B2Pj9yGE+uFHVqCVUwwL8EdHJyq6n//fRi3m0eHmoDIVrcSHRSTVk1wFs3Fab5YV2D97
 3YIkQKISbzqaJeYyogGdeE8knqEpiFk/fYwiuSc/aSTT0qfrh9qmLrAyryJvItbse7nIlANMWfkNVeIsK6b1Uoc1+9+Fm+o0CYFLIPzLAggTUFyerXuWgwqk
 qqclmRbc7mo6E90K1AucAxaa9/s/LT8F/2to5S6UTEO63+spg6fMmDAI1YnCm/A2pW6lgtvsugovF2QKHfElcJuSLrY0X9whEo9a85W0qOD1bwFfpGwwf+H3
 pK/KHHQPZo42GVN9sY2vNauHBtESUNXdSNA+lorJBkj7VlDwUJL+8jq1WPuGlLwV7YWemR0ZZSEOQ/1mj3TaSDVLmellT2q1F3PYn1qnpxIKtc+K2XWJnWWH
 RAv9NS56n6kDsbfRKnYxZoeIpOh0psmezsRNAIvzUteOUMeJc9cFYX/6HzU3hbbYe3XdKTuqHXkAulupEOeRQ4xJnlXp0wPAQbSzWgJKz8pFvQEsPbXZO5gB
 D1hA43gaNvPivGfQBPep8U3dmOFT8+cCk6xQr+YuoSPlabY0HB4B5OYO5uFUUPqb1rxxRjwGnmRGRBAzPlCAjRL9snvPaRXdMopeT+G4EQG9aAtMyHRAk833
 MUi6eTmQAp4egsQoQk4yT50p3lAjq9eob2h/5HQtOxOs9GkQZer8sRzTfFp2dcRsqF25fIqkINBovF9M+QVjsZgAlULp9iRGXZxf00NjTsHW0ydseWWQQFxR
 3XqD/DPlAZmD4M3kUOuVTsa9LtHz1hsE5LKFNE89ZFuRfxMZ/IvuEsVNKFHv5GUrw18ATY4Eqrv9Q+gBgR+FlsbXPsI9xcBU3awWbqBxNp6YPjl1GBdnrSsQ
 UY/sfRYqzyGfdLHP/JnPNstLKjv5MlYB0d5ZyRqzbAOatkYa6rOB/9psCaL+n/9XBfClrWaF/gH1jooXhq4zn+gol4qMoXEF1nM=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMjAvMDQvMjAyMSAxMTozMSwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMjAv
MDQvMjAyMSDDoCAxMToxNiwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6Cj4+IE9uIDIwLzA0LzIw
MjEgMTE6MTAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4gTGUgMTYvMDQvMjAyMSDDoCAx
NzoxNCwgTHVjYXMgU3RhY2ggYSDDqWNyaXTCoDoKPj4+PiBBbSBGcmVpdGFnLCBkZW0gMTYuMDQu
MjAyMSB1bSAxNTowOCArMDIwMCBzY2hyaWViIEJlbmphbWluIEdhaWduYXJkOgo+Pj4+PiBMZSAx
Ni8wNC8yMDIxIMOgIDEyOjU0LCBMdWNhcyBTdGFjaCBhIMOpY3JpdMKgOgo+Pj4+Pj4gQW0gTWl0
dHdvY2gsIGRlbSAwNy4wNC4yMDIxIHVtIDA5OjM1ICswMjAwIHNjaHJpZWIgQmVuamFtaW4gR2Fp
Z25hcmQ6Cj4+Pj4+Pj4gSW4gb3JkZXIgdG8gYmUgYWJsZSB0byBzaGFyZSB0aGUgY29udHJvbCBo
YXJkd2FyZSBibG9jayBiZXR3ZWVuCj4+Pj4+Pj4gVlBVcyB1c2UgYSBzeXNjb24gaW5zdGVhZCBh
IGlvcmVtYXAgaXQgaW4gdGhlIGRyaXZlci4KPj4+Pj4+PiBUbyBrZWVwIHRoZSBjb21wYXRpYmls
aXR5IHdpdGggb2xkZXIgRFQgaWYgJ254cCxpbXg4bXEtdnB1LWN0cmwnCj4+Pj4+Pj4gcGhhbmRs
ZSBpcyBub3QgZm91bmQgbG9vayBhdCAnY3RybCcgcmVnLW5hbWUuCj4+Pj4+Pj4gV2l0aCB0aGUg
bWV0aG9kIGl0IGJlY29tZXMgdXNlbGVzcyB0byBwcm92aWRlIGEgbGlzdCBvZiByZWdpc3Rlcgo+
Pj4+Pj4+IG5hbWVzIHNvIHJlbW92ZSBpdC4KPj4+Pj4+IFNvcnJ5IGZvciBwdXR0aW5nIGEgc3Bv
a2UgaW4gdGhlIHdoZWVsIGFmdGVyIG1hbnkgaXRlcmF0aW9ucyBvZiB0aGUKPj4+Pj4+IHNlcmll
cy4KPj4+Pj4+Cj4+Pj4+PiBXZSBqdXN0IGRpc2N1c3NlZCBhIHdheSBmb3J3YXJkIG9uIGhvdyB0
byBoYW5kbGUgdGhlIGNsb2NrcyBhbmQgcmVzZXRzCj4+Pj4+PiBwcm92aWRlZCBieSB0aGUgYmxr
Y3RsIGJsb2NrIG9uIGkuTVg4TU0gYW5kIGxhdGVyIGFuZCBpdCBzZWVtcyB0aGVyZSBpcwo+Pj4+
Pj4gYSBjb25zZW5zdXMgb24gdHJ5aW5nIHRvIHByb3ZpZGUgdmlydHVhbCBwb3dlciBkb21haW5z
IGZyb20gYSBibGtjdGwKPj4+Pj4+IGRyaXZlciwgY29udHJvbGxpbmcgY2xvY2tzIGFuZCByZXNl
dHMgZm9yIHRoZSBkZXZpY2VzIGluIHRoZSBwb3dlcgo+Pj4+Pj4gZG9tYWluLiBJIHdvdWxkIGxp
a2UgdG8gYXZvaWQgaW50cm9kdWNpbmcgeWV0IGFub3RoZXIgd2F5IG9mIGhhbmRsaW5nCj4+Pj4+
PiB0aGUgYmxrY3RsIGFuZCB0aHVzIHdvdWxkIGxpa2UgdG8gYWxpZ24gdGhlIGkuTVg4TVEgVlBV
IGJsa2N0bCB3aXRoCj4+Pj4+PiB3aGF0IHdlIGFyZSBwbGFubmluZyB0byBkbyBvbiB0aGUgbGF0
ZXIgY2hpcCBnZW5lcmF0aW9ucy4KPj4+Pj4+Cj4+Pj4+PiBDQydpbmcgSmFja3kgQmFpIGFuZCBQ
ZW5nIEZhbiBmcm9tIE5YUCwgYXMgdGhleSB3ZXJlIGdvaW5nIHRvIGdpdmUgdGhpcwo+Pj4+Pj4g
dmlydHVhbCBwb3dlciBkb21haW4gdGhpbmcgYSBzaG90Lgo+Pj4+PiBUaGF0IGNvdWxkIHJlcGxh
Y2UgdGhlIDMgZmlyc3QgcGF0Y2hlcyBhbmQgRHQgcGF0Y2hlIG9mIHRoaXMgc2VyaWVzCj4+Pj4+
IGJ1dCB0aGF0IHdpbGwgbm90IGltcGFjdCB0aGUgaGV2YyBwYXJ0LCBzbyBJIHdvbmRlciBpZiBw
dXJlIGhldmMgcGF0Y2hlcwo+Pj4+PiBjb3VsZCBiZSBtZXJnZWQgYW55d2F5ID8KPj4+Pj4gVGhl
eSBhcmUgcmV2aWV3ZWQgYW5kIGRvbid0IGRlcGVuZCBvZiBob3cgdGhlIGN0cmwgYmxvY2sgaXMg
bWFuYWdlZC4KPj4+PiBJJ20gbm90IHJlYWxseSBpbiBhIHBvc2l0aW9uIHRvIGdpdmUgYW55IGlu
Zm9ybWVkIG9waW5pb24gYWJvdXQgdGhhdAo+Pj4+IGh2ZWMgcGF0Y2hlcywgYXMgSSBvbmx5IHNr
aW1tZWQgdGhlbSwgYnV0IEkgZG9uJ3Qgc2VlIGFueSByZWFzb24gdG8KPj4+PiBkZWxheSBwYXRj
aGVzIDA0LTExIGZyb20gdGhpcyBzZXJpZXMgdW50aWwgdGhlIGkuTVg4TSBwbGF0Zm9ybSBpc3N1
ZXMKPj4+PiBhcmUgc29ydGVkLiBBRkFJQ1MgdGhvc2UgdGhpbmdzIGFyZSB0b3RhbGx5IG9ydGhv
Z29uYWwuCj4+PiBIaSBIYW5zLAo+Pj4gV2hhdCBkbyB5b3UgdGhpbmsgYWJvdXQgdGhpcyBwcm9w
b3NhbCB0byBzcGxpdCB0aGlzIHNlcmllcyA/Cj4+PiBHZXQgaGV2YyBwYXJ0IG1lcmdlZCBjb3Vs
ZCBhbGxvdyBtZSB0byBjb250aW51ZSB0byBhZGQgZmVhdHVyZXMKPj4+IGxpa2Ugc2NhbGluZyBs
aXN0cywgY29tcHJlc3NlZCByZWZlcmVuY2UgYnVmZmVycyBhbmQgMTAtYml0IHN1cHBvcnRzLgo+
PiBNYWtlcyBzZW5zZSB0byBtZSEKPiAKPiBHcmVhdCAhCj4gSWYgdGhlIGxhdGVzdCB2ZXJzaW9u
IG1hdGNoIHlvdXIgZXhwZWN0YXRpb25zIGhvdyB3b3VsZCB5b3UgbGlrZSB0byBwcm9jZXNzZWQg
Pwo+IENhbiB5b3UgbWVyZ2VkIHBhdGNoZXMgNCB0byAxMiA/IG9yIHNob3VsZCBJIHJlc2VuZCB0
aGVtIGluIGEgbmV3IHNob3J0ZWQgc2VyaWVzID8KCkEgc2VwYXJhdGUgcGF0Y2ggc2VyaWVzIHdv
dWxkIGJlIGVhc2llciBmb3IgbWUuCgpSZWdhcmRzLAoKCUhhbnMKCj4gCj4gUmVnYXJkcywKPiBC
ZW5qYW1pbgo+IAo+Pgo+PiBSZWdhcmRzLAo+Pgo+PiAJSGFucwo+PgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

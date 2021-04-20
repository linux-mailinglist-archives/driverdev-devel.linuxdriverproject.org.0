Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3912F365524
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Apr 2021 11:17:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D0564022C;
	Tue, 20 Apr 2021 09:17:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dIRp5VZnBY4h; Tue, 20 Apr 2021 09:17:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 834C8401EB;
	Tue, 20 Apr 2021 09:17:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1045A1BF2C0
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 09:16:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F2233402F9
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 09:16:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=xs4all.nl
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i04s4-svuMSN for <devel@linuxdriverproject.org>;
 Tue, 20 Apr 2021 09:16:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from lb2-smtp-cloud7.xs4all.net (lb2-smtp-cloud7.xs4all.net
 [194.109.24.28])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9A82840310
 for <devel@driverdev.osuosl.org>; Tue, 20 Apr 2021 09:16:51 +0000 (UTC)
Received: from [192.168.2.10] ([84.202.3.209]) by smtp.xs4all.nl with ESMTPA
 id YmUllUgtKw8UmYmUpl1rqj; Tue, 20 Apr 2021 11:16:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1618910208; bh=Wx1b4HRfaZ+r/6ReWVRSHeFPp1P3g6TFkUyUkSeo2UI=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=gPsYn8b1c2epmHciLLZqj4RU6D/7VDgeFWXvH9Jc/tI77RwCdZ8MUBZzXKbf7iAEY
 93Kdph32ov2MaeQ8+/mAur+oqiSFjQFV4Ipvyz1Z/EzRuUEuVvwhyB9QF+mJA+AM04
 XtrlvOsMPoBd5uWKuoy/98yZBsDIt7X7NTEfeXzxPPZlHP/7unv/bXLHinCvRDGX8h
 mKmk+OIOEPgReV/aybXBqgJac4i1JIU3pqTb+gx51jOzC3RvtnH644JB/fpSeiX1sa
 s81zKOSMmL3tk6Fx5abobsbfjkGsxXF6rhveYSTjHoFDTM0xUXlWY1cfzSf1degZPo
 MwxJNcdiWHjsQ==
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
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <43a767f8-77f5-7937-c484-753a3123f6a2@xs4all.nl>
Date: Tue, 20 Apr 2021 11:16:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <36008691-d075-203d-0cac-2a012773ea34@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfGZKFRcQnHrrB8Ipsf1CNmQf/Flx92YqSYDdOPDeZztqOUClUbawsWCu5A9lWIwXKcgePCyFjcQJwnPrdsJQ581cu0O+/K5cc8vdEdnlVnBbBOWkeAxR
 xn7b0OpspojT5H+gVub8bgWR4QgtN/BKiSmbzMSQBI9vjK1f4N7lM3aSQrKfZiRoCsB8mpe5uURTYC+TOrhO65fcqUvPiGoZ8Oj9FM/1OZ0vU82342Ha44nz
 9ZM5w8MK6vrwqjVSF+ExkbNir/qCbvSxlkfkM+Wuy8q/9XrK5f4KHLWhsRCtIUpYuHlsuhath92nvMZqJinZipkBZlMqaQcUC9eoEWkSt1dhWUZC9U92xvbb
 8N24zp7jFCVUwLShy2QvxK2OCbWgvXGalLXabR+v8bty0BdimuRk9yFTyqAeAgSCf1xBuCa9GQaGhgAnXYCGNJTMOx0u7JKlBLbONBKp1UojBFKsRsIJ4vsL
 PbrdK3xaBInoMdtEZTBH7+gSW78CbyzH6kCAG6LrVlZXTQFXO7wkMXZZB+rDLefpDV1FpGTxqkfXUkFpPdCusEPRk9nmlmeT9V82vcP3ztK8g8XGBjTCRBhE
 CaqFLu7YJ+60+jBzUCP7c6PINBSG6GHXoH31Zjaqfz1UlHr8/age7N7xIlGvNPdcbRxa86WI9DxOgQW2Hm2OqjWjjI5sZiymulMw/T6Xr05TuKZOez2ZBm99
 CGT+I1VWC1rWeshCf5HQND5qVauqaTw/1BumWrmDZosG3LtHNhFO7G1QyvL82vWV+CQcQT3TvAWPojjgYfQsoNSpxaMg/rH0pnUVT9eLDUJU8e5s+E2zKNzl
 CpV25Pho0RD1R5pZBR2wP3iNBOnaJOUOIMdKCnM1cWDEgq9b2mW6wRr7udhvF2PcKhFm+kLWp2d8aBnFJkdriwC/sFktbmn2wl/dZi+3DnXh0xwpgu2dGE8M
 7lvx3DYzaPlOYsPXNxSzy2hCbNn1+5o3bEEZWUksr8r7onstlnX2QHZ2cwJZd9HZmIVIvr2cE7KAMtgtzIt4mnFS6Xi25UDJ02nwEfhOOXehxhUceHfV/eq6
 RcVpiaZxfMZsGT6uKNiQd1bzHDnVQO6dYV19j2fqSyzKJB8Jl1Mza7dp8Eb9Qu7xNsrHQF7bVdJylvnf/04qV6XigCcweSUd5Ew=
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

T24gMjAvMDQvMjAyMSAxMToxMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMTYv
MDQvMjAyMSDDoCAxNzoxNCwgTHVjYXMgU3RhY2ggYSDDqWNyaXTCoDoKPj4gQW0gRnJlaXRhZywg
ZGVtIDE2LjA0LjIwMjEgdW0gMTU6MDggKzAyMDAgc2NocmllYiBCZW5qYW1pbiBHYWlnbmFyZDoK
Pj4+IExlIDE2LzA0LzIwMjEgw6AgMTI6NTQsIEx1Y2FzIFN0YWNoIGEgw6ljcml0wqA6Cj4+Pj4g
QW0gTWl0dHdvY2gsIGRlbSAwNy4wNC4yMDIxIHVtIDA5OjM1ICswMjAwIHNjaHJpZWIgQmVuamFt
aW4gR2FpZ25hcmQ6Cj4+Pj4+IEluIG9yZGVyIHRvIGJlIGFibGUgdG8gc2hhcmUgdGhlIGNvbnRy
b2wgaGFyZHdhcmUgYmxvY2sgYmV0d2Vlbgo+Pj4+PiBWUFVzIHVzZSBhIHN5c2NvbiBpbnN0ZWFk
IGEgaW9yZW1hcCBpdCBpbiB0aGUgZHJpdmVyLgo+Pj4+PiBUbyBrZWVwIHRoZSBjb21wYXRpYmls
aXR5IHdpdGggb2xkZXIgRFQgaWYgJ254cCxpbXg4bXEtdnB1LWN0cmwnCj4+Pj4+IHBoYW5kbGUg
aXMgbm90IGZvdW5kIGxvb2sgYXQgJ2N0cmwnIHJlZy1uYW1lLgo+Pj4+PiBXaXRoIHRoZSBtZXRo
b2QgaXQgYmVjb21lcyB1c2VsZXNzIHRvIHByb3ZpZGUgYSBsaXN0IG9mIHJlZ2lzdGVyCj4+Pj4+
IG5hbWVzIHNvIHJlbW92ZSBpdC4KPj4+PiBTb3JyeSBmb3IgcHV0dGluZyBhIHNwb2tlIGluIHRo
ZSB3aGVlbCBhZnRlciBtYW55IGl0ZXJhdGlvbnMgb2YgdGhlCj4+Pj4gc2VyaWVzLgo+Pj4+Cj4+
Pj4gV2UganVzdCBkaXNjdXNzZWQgYSB3YXkgZm9yd2FyZCBvbiBob3cgdG8gaGFuZGxlIHRoZSBj
bG9ja3MgYW5kIHJlc2V0cwo+Pj4+IHByb3ZpZGVkIGJ5IHRoZSBibGtjdGwgYmxvY2sgb24gaS5N
WDhNTSBhbmQgbGF0ZXIgYW5kIGl0IHNlZW1zIHRoZXJlIGlzCj4+Pj4gYSBjb25zZW5zdXMgb24g
dHJ5aW5nIHRvIHByb3ZpZGUgdmlydHVhbCBwb3dlciBkb21haW5zIGZyb20gYSBibGtjdGwKPj4+
PiBkcml2ZXIsIGNvbnRyb2xsaW5nIGNsb2NrcyBhbmQgcmVzZXRzIGZvciB0aGUgZGV2aWNlcyBp
biB0aGUgcG93ZXIKPj4+PiBkb21haW4uIEkgd291bGQgbGlrZSB0byBhdm9pZCBpbnRyb2R1Y2lu
ZyB5ZXQgYW5vdGhlciB3YXkgb2YgaGFuZGxpbmcKPj4+PiB0aGUgYmxrY3RsIGFuZCB0aHVzIHdv
dWxkIGxpa2UgdG8gYWxpZ24gdGhlIGkuTVg4TVEgVlBVIGJsa2N0bCB3aXRoCj4+Pj4gd2hhdCB3
ZSBhcmUgcGxhbm5pbmcgdG8gZG8gb24gdGhlIGxhdGVyIGNoaXAgZ2VuZXJhdGlvbnMuCj4+Pj4K
Pj4+PiBDQydpbmcgSmFja3kgQmFpIGFuZCBQZW5nIEZhbiBmcm9tIE5YUCwgYXMgdGhleSB3ZXJl
IGdvaW5nIHRvIGdpdmUgdGhpcwo+Pj4+IHZpcnR1YWwgcG93ZXIgZG9tYWluIHRoaW5nIGEgc2hv
dC4KPj4+IFRoYXQgY291bGQgcmVwbGFjZSB0aGUgMyBmaXJzdCBwYXRjaGVzIGFuZCBEdCBwYXRj
aGUgb2YgdGhpcyBzZXJpZXMKPj4+IGJ1dCB0aGF0IHdpbGwgbm90IGltcGFjdCB0aGUgaGV2YyBw
YXJ0LCBzbyBJIHdvbmRlciBpZiBwdXJlIGhldmMgcGF0Y2hlcwo+Pj4gY291bGQgYmUgbWVyZ2Vk
IGFueXdheSA/Cj4+PiBUaGV5IGFyZSByZXZpZXdlZCBhbmQgZG9uJ3QgZGVwZW5kIG9mIGhvdyB0
aGUgY3RybCBibG9jayBpcyBtYW5hZ2VkLgo+PiBJJ20gbm90IHJlYWxseSBpbiBhIHBvc2l0aW9u
IHRvIGdpdmUgYW55IGluZm9ybWVkIG9waW5pb24gYWJvdXQgdGhhdAo+PiBodmVjIHBhdGNoZXMs
IGFzIEkgb25seSBza2ltbWVkIHRoZW0sIGJ1dCBJIGRvbid0IHNlZSBhbnkgcmVhc29uIHRvCj4+
IGRlbGF5IHBhdGNoZXMgMDQtMTEgZnJvbSB0aGlzIHNlcmllcyB1bnRpbCB0aGUgaS5NWDhNIHBs
YXRmb3JtIGlzc3Vlcwo+PiBhcmUgc29ydGVkLiBBRkFJQ1MgdGhvc2UgdGhpbmdzIGFyZSB0b3Rh
bGx5IG9ydGhvZ29uYWwuCj4gCj4gSGkgSGFucywKPiBXaGF0IGRvIHlvdSB0aGluayBhYm91dCB0
aGlzIHByb3Bvc2FsIHRvIHNwbGl0IHRoaXMgc2VyaWVzID8KPiBHZXQgaGV2YyBwYXJ0IG1lcmdl
ZCBjb3VsZCBhbGxvdyBtZSB0byBjb250aW51ZSB0byBhZGQgZmVhdHVyZXMKPiBsaWtlIHNjYWxp
bmcgbGlzdHMsIGNvbXByZXNzZWQgcmVmZXJlbmNlIGJ1ZmZlcnMgYW5kIDEwLWJpdCBzdXBwb3J0
cy4KCk1ha2VzIHNlbnNlIHRvIG1lIQoKUmVnYXJkcywKCglIYW5zCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

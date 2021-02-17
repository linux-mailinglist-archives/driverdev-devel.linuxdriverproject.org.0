Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D700A31D6D1
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 10:10:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 490DF8721C;
	Wed, 17 Feb 2021 09:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dAf6CrBELL-W; Wed, 17 Feb 2021 09:10:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25B5787203;
	Wed, 17 Feb 2021 09:10:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E76211BF865
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 09:10:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DDFB086110
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 09:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WrvSBPkPhYGV for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 09:10:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb1-smtp-cloud9.xs4all.net (lb1-smtp-cloud9.xs4all.net
 [194.109.24.22])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9058C811D0
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 09:10:48 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id CIqxl7UkCZvk6CIr0l6rUq; Wed, 17 Feb 2021 10:10:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1613553046; bh=uSxzPPyVvXNWM+WQDeaRwP48PE6c7mphNoRppLem0rY=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=e3CJEEyAjmSERDt8Inx1KHZ0hF2Wo0JERbLmD7awKrEGqC+gkG1qYyw55ux8La0kO
 W6n3lTXO50JP00pI115gXNMncz2Z+YMN+zXSZ22YZCp2FsQJVsgq3gbff/SjH9NGPk
 1pJlCIa5jgFg9unlqFvjRiAYzXrbpsYd8SK96Kd69YzIiOhyEF3pyj/VZnJFS7a1UH
 7Fs/cE2nO5OGBuC4zN+/mQQVBx8i5Kfp+25nT/MIVwypToL5iiJRaqNTX/P3k6wdPD
 FrQPLSm0Krod9bbO5pQvL9De7DBvsipUJFp4tJVajwmAiWKhs5q660PaAjBDP0crNg
 0MTl7iH9ZtVzA==
Subject: Re: [PATCH v1 00/18] Add HANTRO G2/HEVC decoder support for IMX8MQ
To: Greg KH <gregkh@linuxfoundation.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <YCzO7SRmBKzGeMUS@kroah.com>
 <04dfae0b-92e5-e02d-c687-ba4d28b7aaf2@collabora.com>
 <YCzVmRVL79KMkxXQ@kroah.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <63b62e9e-b95f-59a4-b830-c56d2cb9e4f8@xs4all.nl>
Date: Wed, 17 Feb 2021 10:10:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YCzVmRVL79KMkxXQ@kroah.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfCWTvvS3ntp+Ze+ND5twq3FMCVE1sSa/yxM9eKULJNJNKc944I4NbpFvKDCdcH0V3BJX+oU7FTwzESJgXnCwL77Ih7EB0zX0uU5PzaBLnRI9R34LXBgd
 zrERyF1rcsEuHD8tIo3a/zrZt3UKpKGOIRrhjSgachV2bh2GtGg0coYnosYcgp4hFp19eDpk7JOzbBEBv/X6IafM3sfhJ8HRNe8VJJBtJN0K/3Dj7Oz7KrIt
 9p96GxBx56YG3x9fF4JSrMs56oXPz/47sMw/RWnptfoUPtQp1og8S8Ot9ZgYgsYTxu8fMZlcwxR/FDSAjoWZMjrXQT1A0Jl2dlR1cQFx8qvyY0fvHOJNg5D9
 Xc7DBRcN1PAplu7kW3gBTE2PG+fczJEsvL4D274Rvzc8RW2PjcvGfvaUkmIpniCljdI8ulw8s4KEMEOVUoxBLowsYcZW7+rlBflkkRGTBGFlu1Wg2hhfpkKX
 SDYJBx+xlR8GQDQ+KiP5ACFgmAlp0rTazN0fVEylVdiQpAVNb5OwNLXH9Zx9hKooOx3RoHR+EVkXbcuN+RXrGavzcEMTc57e/cXOcPEAxTagUSVakKKjPdb9
 Qb3YjD+Ei02mNV22HyYJKc35N7RjJsqjMVHIsrmkAhETKdf9d0EcNfak/03J5poePHe/Z34EGlNCJPKx6NCXUymZ+Uq/1cTuknrzBNfzBI7tQV1E17N7WAed
 TU2+X66uywWoAkmwNDUG2DL8yEfZcxl8utD1JLcaflcPqJ2+xqgkn/XugDGZrw1SOjhEv2aqWZo45b1yIPvrim6FAfod8J7pu2LAXaKZgYxH+XEQu58OdsFK
 3GCh+CHxbluTV8FThcw2AybhlCuBA2tF3p1on9HIoIhmu7sen7TQLidyHl2SSz3pnDD5uwA+hsclFq0z6BPpt4s7Tip35a3/A1d+Lp6jMUqjXYqhfW6wmfQL
 14tRqoyYAqkj1ODAACQ70Q0pMXUBxpy5weS2QLm3HdQUYTMJ5QuvXBkDPIu1G79dDRnWNWRt2rHvQhM+5Vp0qRFajwvRSOE1TRlyXlKUMegPOp+OanOGF1P0
 o55OSHtLD1cW+cIAyA4FEkSpQ99E0StnZ9jTLY68N/ZwXgc253cpprT8
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
Cc: peng.fan@nxp.com, kernel@collabora.com, devel@driverdev.osuosl.org,
 Anson.Huang@nxp.com, krzk@kernel.org, linux-rockchip@lists.infradead.org,
 wens@csie.org, linux-imx@nxp.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, jernej.skrabec@siol.net, adrian.ratiu@collabora.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 p.zabel@pengutronix.de, shawnguo@kernel.org, shengjiu.wang@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMTcvMDIvMjAyMSAwOTozNiwgR3JlZyBLSCB3cm90ZToKPiBPbiBXZWQsIEZlYiAxNywgMjAy
MSBhdCAwOToyODowOUFNICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4KPj4gTGUg
MTcvMDIvMjAyMSDDoCAwOTowOCwgR3JlZyBLSCBhIMOpY3JpdMKgOgo+Pj4gT24gV2VkLCBGZWIg
MTcsIDIwMjEgYXQgMDk6MDI6NDhBTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4+
Pj4gVGhlIElNWDhNUSBnb3QgdHdvIFZQVXMgYnV0IHVudGlsIG5vdyBvbmx5IEcxIGhhcyBiZWVu
IGVuYWJsZWQuCj4+Pj4gVGhpcyBzZXJpZXMgYWltIHRvIGFkZCB0aGUgc2Vjb25kIFZQVSAoYWth
IEcyKSBhbmQgcHJvdmlkZSBiYXNpYwo+Pj4+IEhFVkMgZGVjb2Rpbmcgc3VwcG9ydC4KPj4+IFdo
eSBhcmUgeW91IGFkZGluZyB0aGlzIGRpcmVjdGx5IHRvIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS8g
YW5kIG5vdAo+Pj4gZHJpdmVycy9tZWRpYS8/ICBXaHkgY2FuJ3QgdGhpcyBqdXN0IGdvIHRvIHRo
ZSBtYWluIGxvY2F0aW9uIGFuZCBub3QKPj4+IGxpdmUgaW4gc3RhZ2luZz8KPj4KPj4gRzIvSEVW
QyBpcyBhZGRlZCBpbnNpZGUgdGhlIGFscmVhZHkgZXhpdGluZyBIYW50cm8gZHJpdmVyLCBpdCBp
cyAianVzdCIKPj4gYW4gb3RoZXIgY29kZWMgZnJvbSBIYW50cm8gZHJpdmVyIHBvaW50IG9mIHZp
ZXcuCj4+IEluIGFkZGl0aW9uIG9mIHRoYXQgdjRsMi1oZXZjIHVBUEkgaXMgc3RpbGwgdW5zdGFi
bGUuCj4+IE9uZSBnb2FsIG9mIHRoaXMgc2VyaWVzIGlzIHRvIGhhdmUgb25lIG1vcmUgY29uc3Vt
ZXIgb2YgdGhpcyB2NGwyLWhldmMKPj4gdUFQSSBzbyBtYXliZSB3ZSBjYW4gY2xhaW0gaXQgdG8g
YmUgc3RhYmxlIGVub3VnaCB0byBtb3ZlIGF3YXkgZnJvbSBzdGFnaW5nCj4+IGFuZCB0aGVuIGRv
IHRoZSBzYW1lIGZvciBIYW50cm8gZHJpdmVyLiBUaGF0IHdvdWxkIGJlIGEgZ3JlYXQgYWNoaWV2
ZW1lbnQgIQo+IAo+IEkga25vdyBJIGRvIG5vdCBsaWtlIHNlZWluZyBuZXcgYWRkaXRpb25zL2Zl
YXR1cmVzL3doYXRldmVyIGJlaW5nIGFkZGVkCj4gdG8gc3RhZ2luZyBkcml2ZXJzIGFzIHRoYXQg
ZW5jb3VyYWdlcyBwZW9wbGUgdG8gZG8gbmV3IHN0dWZmIG9uIHRoZW0KPiB3aXRob3V0IGRvaW5n
IHRoZSByZWFsIHdvcmsgbmVlZGVkIHRvIGdldCB0aGVtIG91dCBvZiBzdGFnaW5nLgoKSW4gb3Jk
ZXIgdG8gc3VwcG9ydCBhIHNwZWNpZmljIGNvZGVjIChNUEVHLTIsIEguMjY0LCBIRVZDLCBWUDgs
IGV0Yy4pIGZvcgpzdGF0ZWxlc3MgY29kZWMgaGFyZHdhcmUgbGlrZSB0aGUgaGFudHJvLCBWNEwy
IGNvbnRyb2xzIG5lZWQgdG8gYmUgZGVmaW5lZC4KVGhlIGNvbnRlbnRzIG9mIHRoZXNlIGNvbnRy
b2xzIGlzIGRlcml2ZWQgZGlyZWN0bHkgZnJvbSB0aGUgdW5kZXJseWluZyBjb2RlYwpzdGFuZGFy
ZHMsIGJ1dCBpdCBpcyBxdWl0ZSBkaWZmaWN1bHQgdG8gZ2V0IHRoaXMgcmlnaHQgd2l0aCB0aGUg
Zmlyc3QgYXR0ZW1wdCwKc2luY2UgdGhlc2Ugc3RhbmRhcmRzIGFyZSB2ZXJ5IGNvbXBsZXguCgpT
byB3ZSB3ZW50IGZvciB0aGUgc3RyYXRlZ3kgb2Yga2VlcGluZyB0aGVzZSBkcml2ZXJzIGluIHN0
YWdpbmcgdG8gbWFrZSBpdAplYXN5IHRvIHdvcmsgb24sIHdoaWxlIGtlZXBpbmcgdGhlIEFQSXMg
Zm9yIGVhY2ggY29kZWMgcHJpdmF0ZSAoaS5lLiwgdGhleSBhcmUKbm90IGV4cG9zZWQgaW4gaW5j
bHVkZS91YXBpL2xpbnV4KS4KCk9uY2Ugd2UgaGF2ZSBzdWZmaWNpZW50IGNvbmZpZGVuY2UgaW4g
dGhlIEFQSSBmb3IgYSBzcGVjaWZpYyBjb2RlYyB3ZSBtb3ZlCml0IHRvIHVhcGkgYW5kIHRodXMg
Zml4IHRoZSBBUEkuIFdlIGFsc28gcmVudW1iZXIgdGhlIGNvbnRyb2wgSURzIGF0IHRoYXQKdGlt
ZSB0byBhdm9pZCBhbnkgY29uZnVzaW9uIGJldHdlZW4gdGhlIHN0YWdpbmcgdmVyc2lvbiBhbmQg
dGhlIGZpbmFsIHZlcnNpb24uCgpXZSBkaWQgdGhhdCBmb3IgSC4yNjQgYW5kIEkgaG9wZSB3ZSBj
YW4gc29vbiBkbyB0aGUgc2FtZSBmb3IgTVBFRy0yIGFuZCBWUDguCgpIRVZDIGlzIGRlZmluaXRl
bHkgbm90IHJlYWR5IGZvciB0aGF0IHlldC4KClRoZSBrZXkgcGhyYXNlIGlzICdzdWZmaWNpZW50
IGNvbmZpZGVuY2UnOiBvbmUgcmVxdWlyZW1lbnQgaXMgdGhhdCBpdCBpcyBzdXBwb3J0ZWQKYnkg
YXQgbGVhc3QgdHdvIGRyaXZlcnMgdG8gYmUgcmVhc29uYWJseSBjZXJ0YWluIHRoZSBBUEkgZG9l
c24ndCBjb250YWluIGFueSBIVwpzcGVjaWZpYyBzdHVmZiwgYW5kIGl0IHBhc3NlcyB0ZXN0IHN1
aXRlcyBhbmQgcmV2aWV3IGJ5IGNvZGVjIGV4cGVydHMuCgpBbGwgdGhpcyBpcyBhY3RpdmVseSBi
ZWluZyB3b3JrZWQgb24sIHNvIHRoaXMgaXMgdmVyeSBtdWNoIGFsaXZlLCBidXQgaXQgaXMKY29t
cGxleCBhbmQgdGltZSBjb25zdW1pbmcuCgo+IFNvIHdoYXQgaXMgcHJldmVudGluZyB0aGUgZXhp
c3RpbmcgZHJpdmVyIGZyb20gZ2V0dGluZyBvdXQgb2Ygc3RhZ2luZwo+IG5vdz8KCk9uY2UgTVBF
Ry0yIGFuZCBWUDggYXJlIGZpbmFsaXplZCBpdCBpcyBwcm9iYWJseSB0aW1lIHRvIG1vdmUgdGhl
c2UgZHJpdmVycwpvdXQgb2Ygc3RhZ2luZywgd2hpbGUgc3RpbGwga2VlcGluZyB0aGUgSEVWQyBB
UEkgcGFydCBwcml2YXRlLgoKPiAKPiBBbmQgaG93IGFyZSB5b3UgYWxsIGNyZWF0aW5nIG5ldyB1
c2Vyc3BhY2UgYXBpcyBmb3Igc3RhZ2luZyBkcml2ZXJzIHRvCj4gdGhlIHY0bCBsYXllcj8gIFdo
YXQgaGFwcGVucyB3aGVuIHlvdSBleHBvcnQgc29tZXRoaW5nIG5ldyBhbmQgdGhlbgo+IHVzZXJz
cGFjZSBzdGFydHMgdG8gcmVseSBvbiBpdCBhbmQgdGhlbiB5b3UgY2hhbmdlIGl0PwoKTm90aGlu
ZyBpcyBleHBvcnRlZC4gU28gaWYgdXNlcnNwYWNlIHdhbnQgdG8gdXNlIGl0IHRoZXkgaGF2ZSB0
byBtYW51YWxseQpjb3B5IGhlYWRlcnMgZnJvbSBpbmNsdWRlL21lZGlhIHRvIHRoZWlyIGFwcGxp
Y2F0aW9uLgoKPiAKPiBBbnl3YXksIHRoZSBtZWRpYSBzdGFnaW5nIGRyaXZlcnMgYXJlIG9uIHRo
ZWlyIG93biwgSSBkb24ndCB0b3VjaCB0aGVtLAo+IGl0IGp1c3QgZmVlbHMgb2RkIHRvIG1lLi4u
CgpJdCdzIGFuIHVudXN1YWwgc2l0dWF0aW9uLiBCdXQgcHV0dGluZyB0aGUgZHJpdmVycyBpbiBz
dGFnaW5nIGFuZCBrZWVwaW5nCnRoZSBjb2RlYyBBUEkgaGVhZGVycyBwcml2YXRlIHR1cm5zIG91
dCB0byBiZSB0aGUgbW9zdCBlZmZlY3RpdmUgd2F5IHRvCmRldmVsb3AgdGhpcy4KClJlZ2FyZHMs
CgoJSGFucwoKUFM6IHN0YXRlZnVsIHZzIHN0YXRlbGVzcyBkZWNvZGVyczogc3RhdGVmdWwgZGVj
b2RlcnMgYXJlIGZ1bGx5IHN1cHBvcnRlZAp0b2RheTogeW91IGp1c3QgZmVlZCB0aGUgZGVjb2Rl
ciB0aGUgY29tcHJlc3NlZCBzdHJlYW0gYW5kIHRoZSBkZWNvZGVkIGZyYW1lcwphcmUgcHJvZHVj
ZWQgYnkgdGhlIGZpcm13YXJlL2hhcmR3YXJlLiBJLmUuIHRoZSBIVyB0YWtlcyBjYXJlIG9mIHRo
ZSBkZWNvZGVyCnN0YXRlLiBTdGF0ZWxlc3MgZGVjb2RlcnMgcmVxdWlyZSB5b3UgdG8gcGFzcyB0
aGUgY29tcHJlc3NlZCBmcmFtZSArIGRlY29kZXIKc3RhdGUgdG8gdGhlIGhhcmR3YXJlLCBzbyB0
aGV5IGRvIG5vdCBrZWVwIHRyYWNrIG9mIHRoZSBkZWNvZGVyIHN0YXRlLCB0aGF0Cm5lZWRzIHRv
IGJlIGRvbmUgaW4gc29mdHdhcmUuIEFuZCB0aGF0IHJlcXVpcmVzIHN0cnVjdHVyZXMgdG8gYmUg
Y3JlYXRlZCB0aGF0CnN0b3JlIHRoZSBzdGF0ZSwgd2hpY2ggbHVja2lseSBjYW4gYmUgZGVyaXZl
ZCBmcm9tIHRoZSBjb2RlYyBzdGFuZGFyZHMuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

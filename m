Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1C33468A1
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 20:12:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5861483FC0;
	Tue, 23 Mar 2021 19:12:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zE_6OI7jGDDW; Tue, 23 Mar 2021 19:12:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B50383FA8;
	Tue, 23 Mar 2021 19:12:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 658701BF841
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 19:12:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 545486085B
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 19:12:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=linaro.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bm3NUdD3r6Ay for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 19:12:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com
 [IPv6:2607:f8b0:4864:20::e2a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3FE156065F
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 19:12:44 +0000 (UTC)
Received: by mail-vs1-xe2a.google.com with SMTP id l13so9980464vst.8
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 12:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=NziR4wdTwbPmQRK5YhnnRmXhP9symav7D77le3H4K+M=;
 b=PMVJrfgoW6IO/eykiWrjsd3M2rhVX4YPMZxActq4wpEAmRKoODLJqZ5eOI8hAd3Ui/
 kSzrQ3FuaOzZIBiwn4SSeTiH56nva7fJ7jwJArxrKBI9I08bC2iOW/X4AFzNtLAsNXVw
 fIdYVNCx+ySgZrYUG4o13ipFMssy5VH6uWnpKJyoinFpA+/8heYRsB9WTXd4ONt/Bv7O
 +LCu9D9LBylKYOceGf33CRSQzA3Vf9iXuF4A9rSuewX9xMRvJ+rKmskixMa6u1701MFN
 KAZ3CnQdmXTvVit/bpC9d7KazulRxJUeQ0HNNX5bneUJLaxYamCbK0WSNJFdJKmbm+5W
 bGZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=NziR4wdTwbPmQRK5YhnnRmXhP9symav7D77le3H4K+M=;
 b=GDggEfrWm0WFdCUKGG0sd83EVwr/7rRJy+TUM3I/MEKZk0jkuID7sVxkrDN5T1S+yO
 RYjvPpFtHh0ADpfCPijvdNxj61VcMXZG9dmXgSDRLZOc4ADWMzX8neogQR1mMhPDqoAy
 8zzz0YbKkoLpj0DyYMeugyRkxCb1NuSDsc1SVUs97gOQ8WJ815mfZ8oTIRoZkjUfP6jQ
 IxamSRa98FQTiE9GfN/mfjp7wzD24id87mIQeK7cbzg1f2DL82LeynDuyScDTiKHPYGo
 6rUkHECSl9Qrt/MMKTKhkoEd3tAHNtxSeBYTFupC0TxliA9qIAYArpjKPXGbtEiA1277
 NpiQ==
X-Gm-Message-State: AOAM531Bz5artYmWr+Qs5KWzmHgL8Im8vBxgsdgqPEsOhuWgyk/6aIGv
 ni3Rbi2W04KsjjVUWcgLhOeV1XtK59ya5hp8oEgl4Q==
X-Google-Smtp-Source: ABdhPJzXFydY5TcCz9J1Or2xn4GBkykV9ba3oKyGbccCBa4HxmuOl+Gv/PYBfFODfgfgi/kqTbKgrJDTOyQZhsuqwfY=
X-Received: by 2002:a67:77c1:: with SMTP id s184mr4758525vsc.55.1616526762989; 
 Tue, 23 Mar 2021 12:12:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210315132501.441681-1-Jerome.Pouiller@silabs.com>
 <4503971.bAhddQ8uqO@pc-42>
 <CAPDyKFoXgV3m-rMKfjqRj91PNjOGaWg6odWG-EGdFKkL+dGWoA@mail.gmail.com>
 <5713463.b6Cmjs1FeV@pc-42>
In-Reply-To: <5713463.b6Cmjs1FeV@pc-42>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 23 Mar 2021 20:12:06 +0100
Message-ID: <CAPDyKFrONrUvbVVVF9iy4P17jZ_Fq+1pGMmsqM6C1hOXOWQnBw@mail.gmail.com>
Subject: Re: [PATCH v5 08/24] wfx: add bus_sdio.c
To: =?UTF-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <jerome.pouiller@silabs.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, DTML <devicetree@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCAyMyBNYXIgMjAyMSBhdCAxODo1MywgSsOpcsO0bWUgUG91aWxsZXIKPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPiB3cm90ZToKPgo+IE9uIFR1ZXNkYXkgMjMgTWFyY2ggMjAyMSAx
NToxMTo1NiBDRVQgVWxmIEhhbnNzb24gd3JvdGU6Cj4gPiBPbiBNb24sIDIyIE1hciAyMDIxIGF0
IDE4OjE0LCBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+IHdy
b3RlOgo+ID4gPiBPbiBNb25kYXkgMjIgTWFyY2ggMjAyMSAxMzoyMDozNSBDRVQgVWxmIEhhbnNz
b24gd3JvdGU6Cj4gPiA+ID4gT24gTW9uLCAxNSBNYXIgMjAyMSBhdCAxNDoyNSwgSmVyb21lIFBv
dWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPgo+ID4g
PiA+ID4gRnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
Pgo+ID4gPiA+ID4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxq
ZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gIGRyaXZl
cnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3NkaW8uYyB8IDI1OSArKysrKysrKysrKysr
KysrKysrKysKPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjU5IGluc2VydGlvbnMoKykKPiA+
ID4gPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dm
eC9idXNfc2Rpby5jCj4gPiA+ID4KPiA+ID4gPiBbLi4uXQo+ID4gPiA+Cj4gPiA+ID4gPiArc3Rh
dGljIGNvbnN0IHN0cnVjdCBzZGlvX2RldmljZV9pZCB3Znhfc2Rpb19pZHNbXSA9IHsKPiA+ID4g
PiA+ICsgICAgICAgeyBTRElPX0RFVklDRShTRElPX1ZFTkRPUl9JRF9TSUxBQlMsIFNESU9fREVW
SUNFX0lEX1NJTEFCU19XRjIwMCkgfSwKPiA+ID4gPiA+ICsgICAgICAgeyB9LAo+ID4gPiA+ID4g
K307Cj4gPiA+ID4gPiArTU9EVUxFX0RFVklDRV9UQUJMRShzZGlvLCB3Znhfc2Rpb19pZHMpOwo+
ID4gPiA+ID4gKwo+ID4gPiA+ID4gK3N0cnVjdCBzZGlvX2RyaXZlciB3Znhfc2Rpb19kcml2ZXIg
PSB7Cj4gPiA+ID4gPiArICAgICAgIC5uYW1lID0gIndmeC1zZGlvIiwKPiA+ID4gPiA+ICsgICAg
ICAgLmlkX3RhYmxlID0gd2Z4X3NkaW9faWRzLAo+ID4gPiA+ID4gKyAgICAgICAucHJvYmUgPSB3
Znhfc2Rpb19wcm9iZSwKPiA+ID4gPiA+ICsgICAgICAgLnJlbW92ZSA9IHdmeF9zZGlvX3JlbW92
ZSwKPiA+ID4gPiA+ICsgICAgICAgLmRydiA9IHsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAu
b3duZXIgPSBUSElTX01PRFVMRSwKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAub2ZfbWF0Y2hf
dGFibGUgPSB3Znhfc2Rpb19vZl9tYXRjaCwKPiA+ID4gPgo+ID4gPiA+IEl0J3Mgbm90IG1hbmRh
dG9yeSB0byBzdXBwb3J0IHBvd2VyIG1hbmFnZW1lbnQsIGxpa2Ugc3lzdGVtCj4gPiA+ID4gc3Vz
cGVuZC9yZXN1bWUuIEhvd2V2ZXIsIGFzIHRoaXMgbG9va3MgbGlrZSB0aGlzIGlzIGEgZHJpdmVy
IGZvciBhbgo+ID4gPiA+IGVtYmVkZGVkIFNESU8gZGV2aWNlLCB5b3UgcHJvYmFibHkgd2FudCB0
aGlzLgo+ID4gPiA+Cj4gPiA+ID4gSWYgdGhhdCBpcyB0aGUgY2FzZSwgcGxlYXNlIGFzc2lnbiB0
aGUgZGV2X3BtX29wcyBoZXJlIGFuZCBpbXBsZW1lbnQKPiA+ID4gPiB0aGUgLT5zdXNwZW5kfHJl
c3VtZSgpIGNhbGxiYWNrcy4KPiA+ID4KPiA+ID4gSSBoYXZlIG5vIHBsYXRmb3JtIHRvIHRlc3Qg
c3VzcGVuZC9yZXN1bWUsIHNvIEkgaGF2ZSBvbmx5IGEKPiA+ID4gdGhlb3JldGljYWwgdW5kZXJz
dGFuZGluZyBvZiB0aGlzIHN1YmplY3QuCj4gPgo+ID4gSSBzZWUuCj4gPgo+ID4gPgo+ID4gPiBJ
IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCB3aXRoIHRoZSBjdXJyZW50IGltcGxlbWVudGF0aW9uLCB0
aGUKPiA+ID4gZGV2aWNlIHdpbGwgYmUgcG93ZXJlZCBvZmYgb24gc3VzcGVuZCBhbmQgdGhlbiB0
b3RhbGx5IHJlc2V0Cj4gPiA+IChpbmNsdWRpbmcgcmVsb2FkaW5nIG9mIHRoZSBmaXJtd2FyZSkg
b24gcmVzdW1lLiBJIGFtIHdyb25nPwo+ID4KPiA+IFlvdSBhcmUgY29ycmVjdCwgZm9yIGEgKnJl
bW92YWJsZSogU0RJTyBjYXJkLiBJbiB0aGlzIGNhc2UsIHRoZQo+ID4gbW1jL3NkaW8gY29yZSB3
aWxsIHJlbW92ZSB0aGUgY29ycmVzcG9uZGluZyBTRElPIGNhcmQvZGV2aWNlIGFuZCBpdHMKPiA+
IGNvcnJlc3BvbmRpbmcgU0RJTyBmdW5jIGRldmljZXMgYXQgc3lzdGVtIHN1c3BlbmQuIEl0IHdp
bGwgdGhlbiBiZQo+ID4gcmVkZXRlY3RlZCBhdCBzeXN0ZW0gcmVzdW1lIChhbmQgdGhlIFNESU8g
ZnVuYyBkcml2ZXIgcmUtcHJvYmVkKS4KPiA+Cj4gPiBBbHRob3VnaCwgYXMgdGhpcyBpcyBhbiBl
bWJlZGRlZCBTRElPIGRldmljZSwgcGVyIGRlZmluaXRpb24gaXQncyBub3QKPiA+IGEgcmVtb3Zh
YmxlIGNhcmQgKE1NQ19DQVBfTk9OUkVNT1ZBQkxFIHNob3VsZCBiZSBzZXQgZm9yIHRoZQo+ID4g
Y29ycmVzcG9uZGluZyBtbWMgaG9zdCksIHRoZSBTRElPIGNhcmQgd2lsbCBzdGljayBhcm91bmQg
YW5kIGluc3RlYWQKPiA+IHRoZSAtPnN1c3BlbmR8cmVzdW1lKCkgY2FsbGJhY2sgbmVlZHMgdG8g
YmUgaW1wbGVtZW50ZWQgZm9yIHRoZSBTRElPCj4gPiBmdW5jIGRyaXZlci4KPgo+IElmIEkgZm9s
bG93IHdoYXQgaGFzIGJlZW4gZG9uZSBpbiBvdGhlciBkcml2ZXJzIEkgd291bGQgd3JpdGUgc29t
ZXRoaW5nCj4gbGlrZToKPgo+ICAgc3RhdGljIGludCB3Znhfc2Rpb19zdXNwZW5kKHN0cnVjdCBk
ZXZpY2UgKmRldikKPiAgIHsKPiAgICAgICAgICAgc3RydWN0IHNkaW9fZnVuYyAqZnVuYyA9IGRl
dl90b19zZGlvX2Z1bmMoZGV2KTsKPiAgICAgICAgICAgc3RydWN0IHdmeF9zZGlvX3ByaXYgKmJ1
cyA9IHNkaW9fZ2V0X2RydmRhdGEoZnVuYyk7Cj4KPiAgICAgICAgICAgY29uZmlnX3JlZ193cml0
ZV9iaXRzKGJ1cy0+Y29yZSwgQ0ZHX0lSUV9FTkFCTEVfREFUQSwgMCk7Cj4gICAgICAgICAgIC8v
IE5lY2Vzc2FyeSB0byBrZWVwIGRldmljZSBmaXJtd2FyZSBpbiBSQU0KPiAgICAgICAgICAgcmV0
dXJuIHNkaW9fc2V0X2hvc3RfcG1fZmxhZ3MoZnVuYywgTU1DX1BNX0tFRVBfUE9XRVIpOwoKVGhp
cyB3aWxsIHRlbGwgdGhlIG1tYy9zZGlvIGNvcmUgdG8ga2VlcCB0aGUgU0RJTyBjYXJkIHBvd2Vy
ZWQgb24KZHVyaW5nIHN5c3RlbSBzdXNwZW5kLiBUaHVzLCBpdCBkb2Vzbid0IG5lZWQgdG8gcmUt
aW5pdGlhbGl6ZSBpdCBhdApzeXN0ZW0gcmVzdW1lIC0gYW5kIHRoZSBmaXJtd2FyZSBzaG91bGQg
bm90IG5lZWQgdG8gYmUgcmUtcHJvZ3JhbW1lZC4KCk9uIHRoZSBvdGhlciBoYW5kLCBpZiB5b3Ug
ZG9uJ3QgcGxhbiB0byBzdXBwb3J0IHN5c3RlbSB3YWtldXBzLCBpdAp3b3VsZCBwcm9iYWJseSBi
ZSBiZXR0ZXIgdG8gcG93ZXIgb2ZmIHRoZSBjYXJkLCB0byBhdm9pZCB3YXN0aW5nCmVuZXJneSB3
aGlsZSB0aGUgc3lzdGVtIGlzIHN1c3BlbmRlZC4gSSBhc3N1bWUgdGhhdCBtZWFucyB5b3UgbmVl
ZCB0bwpyZS1wcm9ncmFtIHRoZSBmaXJtd2FyZSBhcyB3ZWxsLiBOb3JtYWxseSwgaXQncyB0aGVz
ZSBraW5kcyBvZiB0aGluZ3MKdGhhdCBuZWVkIHRvIGJlIG1hbmFnZWQgZnJvbSBhIC0+cmVzdW1l
KCkgY2FsbGJhY2suCgo+ICAgfQo+Cj4gSG93ZXZlciwgd2h5IG5vdCB0aGUgaW1wbGVtZW50YXRp
b24gYmVsb3c/Cj4KPiAgIHN0YXRpYyBpbnQgd2Z4X3NkaW9fc3VzcGVuZChzdHJ1Y3QgZGV2aWNl
ICpkZXYpCj4gICB7Cj4gICAgICAgICAgIHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMgPSBkZXZfdG9f
c2Rpb19mdW5jKGRldik7Cj4KPiAgICAgICAgICAgd2Z4X3NkaW9fcmVtb3ZlKGZ1bmMpOwoKSSBk
b24ndCBrbm93IHdoYXQgd2Z4X3NkaW9fcmVtb3ZlKCkgZG9lcywgYnV0IGZvciBzdXJlIHlvdSB3
b3VsZCBuZWVkCmEgLT5yZXN1bWUoKSBjYWxsYmFjayB0byBtYWtlIGl0IHBvc3NpYmxlIHRvIHJl
c3RvcmUgcG93ZXIvZmlybXdhcmUuCgo+ICAgICAgICAgICByZXR1cm4gMDsKPiAgIH0KPgo+IElu
IGJvdGggY2FzZXMsIEkgd29ycnkgdG8gcHJvdmlkZSB0aGVzZSBmdW5jdGlvbnMgd2l0aG91dCBi
ZWluZyBhYmxlIHRvCj4gdGVzdCB0aGVtLgoKQWxyaWdodCwgbGV0J3Mgc2ltcGx5IGxlYXZlIHRo
aXMgZHJpdmVyIHdpdGhvdXQgaGF2aW5nIHRoZSBQTQpjYWxsYmFja3MgYXNzaWduZWQuIEkgZ3Vl
c3Mgd2UgY2FuIHJldmlzaXQgdGhpcyBhdCBzb21lIGxhdGVyIHBvaW50LgoKVGhlIG1tYyBjb3Jl
IHdpbGwgbG9nIGEgbWVzc2FnZSBhYm91dCB0aGUgbWlzc2luZyBjYWxsYmFja3MsIGluIGNhc2UK
c29tZW9uZSB0cmllcyB0byBleGVjdXRlIHN5c3RlbSBzdXNwZW5kL3Jlc3VtZSB3aGVuIHRoZSBk
cml2ZXIgaGFzCmJlZW4gcHJvYmVkLgoKS2luZCByZWdhcmRzClVmZmUKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7608C424F42
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Oct 2021 10:27:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE6C240997;
	Thu,  7 Oct 2021 08:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PAscgSV3XmhL; Thu,  7 Oct 2021 08:27:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B20C140996;
	Thu,  7 Oct 2021 08:27:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 975691BF477
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:26:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with UTF8SMTP id 9354940996
 for <devel@linuxdriverproject.org>; Thu,  7 Oct 2021 08:26:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id qGmOfHhp4lhz for <devel@linuxdriverproject.org>;
 Thu,  7 Oct 2021 08:26:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp4.osuosl.org (Postfix) with UTF8SMTPS id BD1F140993
 for <devel@driverdev.osuosl.org>; Thu,  7 Oct 2021 08:26:51 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633595212; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=wI2s0bxPh2CPs/CNjvuA/9UBNxI8aMeMmsFnsc6CPxc=;
 b=kP502CbKYKpa2J8dMytNnQSsgLBhqBVG/rDEDwCrPziWSimLBLv48VWOs5Wt86aWCHaYbHGn
 3Miupy3/Dw93patK8jPNVC3/+hbgtLptG8cvtYNk7di+7hpgFK/vHfTpBJDO9G3hG7F0+LpV
 9FzldSddSY71YJGCAXBUGlF89hk=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-east-1.postgun.com with SMTP id
 615eaf499ebaf35aaa4e9e38 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 07 Oct 2021 08:26:49
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id D7444C4360C; Thu,  7 Oct 2021 08:26:48 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id DF4CAC4338F;
 Thu,  7 Oct 2021 08:26:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org DF4CAC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v7 08/24] wfx: add bus_sdio.c
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <149139701.nbvtKH4F0p@pc-42>
 <CAPDyKFr62Kykg3=9WiXAV8UToqjw8gj4t6bbM7pGQ+iGGQRLmg@mail.gmail.com>
 <4117481.h6P39bWmWk@pc-42>
Date: Thu, 07 Oct 2021 11:26:42 +0300
In-Reply-To: <4117481.h6P39bWmWk@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Wed, 06 Oct 2021 17:42:23 +0200")
Message-ID: <87czohckal.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
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
 Ulf Hansson <ulf.hansson@linaro.org>, netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 Pali =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cgo+
IE9uIFdlZG5lc2RheSA2IE9jdG9iZXIgMjAyMSAxNzowMjowNyBDRVNUIFVsZiBIYW5zc29uIHdy
b3RlOgo+PiBPbiBUdWUsIDUgT2N0IDIwMjEgYXQgMTA6MTQsIErDqXLDtG1lIFBvdWlsbGVyIDxq
ZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4gd3JvdGU6Cj4+ID4gT24gRnJpZGF5IDEgT2N0b2Jl
ciAyMDIxIDE3OjIzOjE2IENFU1QgVWxmIEhhbnNzb24gd3JvdGU6Cj4+ID4gPiBPbiBUaHUsIDMw
IFNlcHQgMjAyMSBhdCAxOTowNiwgUGFsaSBSb2jDoXIgPHBhbGlAa2VybmVsLm9yZz4gd3JvdGU6
Cj4+ID4gPiA+IE9uIFRodXJzZGF5IDMwIFNlcHRlbWJlciAyMDIxIDE4OjUxOjA5IErDqXLDtG1l
IFBvdWlsbGVyIHdyb3RlOgo+PiA+ID4gPiA+IE9uIFRodXJzZGF5IDMwIFNlcHRlbWJlciAyMDIx
IDEyOjA3OjU1IENFU1QgVWxmIEhhbnNzb24gd3JvdGU6Cj4+ID4gPiA+ID4gPiBPbiBNb24sIDIw
IFNlcHQgMjAyMSBhdCAxODoxMiwgSmVyb21lIFBvdWlsbGVyCj4+ID4gPiA+ID4gPiA8SmVyb21l
LlBvdWlsbGVyQHNpbGFicy5jb20+IHdyb3RlOgo+PiA+ID4gPiA+ID4gPgo+PiA+ID4gPiA+ID4g
PiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4+
ID4gPiA+ID4gPiA+Cj4+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWls
bGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KPj4gPiA+ID4gPiA+ID4gLS0tCj4+ID4g
PiA+ID4gPiA+ICBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMgfCAy
NjEgKysrKysrKysrKysrKysrKysrKysrCj4+ID4gPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwg
MjYxIGluc2VydGlvbnMoKykKPj4gPiA+ID4gPiA+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2J1c19zZGlvLmMKPj4gPiA+ID4gPiA+ID4KPj4g
PiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngv
YnVzX3NkaW8uYwo+PiA+ID4gPiA+ID4gPiBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93
ZngvYnVzX3NkaW8uYwo+PiA+ID4gPiA+ID4KPj4gPiA+ID4gPiA+IFsuLi5dCj4+ID4gPiA+ID4g
Pgo+PiA+ID4gPiA+ID4gPiArCj4+ID4gPiA+ID4gPiA+ICtzdGF0aWMgaW50IHdmeF9zZGlvX3By
b2JlKHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMsCj4+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgY29uc3Qgc3RydWN0IHNkaW9fZGV2aWNlX2lkICppZCkKPj4gPiA+ID4gPiA+
ID4gK3sKPj4gPiA+ID4gPiA+ID4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gZnVu
Yy0+ZGV2Lm9mX25vZGU7Cj4+ID4gPiA+ID4gPiA+ICsgICAgICAgc3RydWN0IHdmeF9zZGlvX3By
aXYgKmJ1czsKPj4gPiA+ID4gPiA+ID4gKyAgICAgICBpbnQgcmV0Owo+PiA+ID4gPiA+ID4gPiAr
Cj4+ID4gPiA+ID4gPiA+ICsgICAgICAgaWYgKGZ1bmMtPm51bSAhPSAxKSB7Cj4+ID4gPiA+ID4g
PiA+ICsgZGV2X2VycigmZnVuYy0+ZGV2LCAiU0RJTyBmdW5jdGlvbiBudW1iZXIgaXMgJWQgd2hp
bGUKPj4gPiA+ID4gPiA+ID4gaXQgc2hvdWxkIGFsd2F5cyBiZSAxICh1bnN1cHBvcnRlZCBjaGlw
PylcbiIsCj4+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGZ1bmMtPm51bSk7
Cj4+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPj4gPiA+ID4g
PiA+ID4gKyAgICAgICB9Cj4+ID4gPiA+ID4gPiA+ICsKPj4gPiA+ID4gPiA+ID4gKyAgICAgICBi
dXMgPSBkZXZtX2t6YWxsb2MoJmZ1bmMtPmRldiwgc2l6ZW9mKCpidXMpLCBHRlBfS0VSTkVMKTsK
Pj4gPiA+ID4gPiA+ID4gKyAgICAgICBpZiAoIWJ1cykKPj4gPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgIHJldHVybiAtRU5PTUVNOwo+PiA+ID4gPiA+ID4gPiArCj4+ID4gPiA+ID4gPiA+ICsg
ICAgICAgaWYgKCFucCB8fCAhb2ZfbWF0Y2hfbm9kZSh3Znhfc2Rpb19vZl9tYXRjaCwgbnApKSB7
Cj4+ID4gPiA+ID4gPiA+ICsgZGV2X3dhcm4oJmZ1bmMtPmRldiwgIm5vIGNvbXBhdGlibGUgZGV2
aWNlIGZvdW5kIGluCj4+ID4gPiA+ID4gPiA+IERUXG4iKTsKPj4gPiA+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+PiA+ID4gPiA+ID4gPiArICAgICAgIH0KPj4gPiA+
ID4gPiA+ID4gKwo+PiA+ID4gPiA+ID4gPiArICAgICAgIGJ1cy0+ZnVuYyA9IGZ1bmM7Cj4+ID4g
PiA+ID4gPiA+ICsgICAgICAgYnVzLT5vZl9pcnEgPSBpcnFfb2ZfcGFyc2VfYW5kX21hcChucCwg
MCk7Cj4+ID4gPiA+ID4gPiA+ICsgICAgICAgc2Rpb19zZXRfZHJ2ZGF0YShmdW5jLCBidXMpOwo+
PiA+ID4gPiA+ID4gPiArICAgICAgIGZ1bmMtPmNhcmQtPnF1aXJrcyB8PSBNTUNfUVVJUktfTEVO
SUVOVF9GTjAgfAo+PiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBN
TUNfUVVJUktfQkxLU1pfRk9SX0JZVEVfTU9ERSB8Cj4+ID4gPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIE1NQ19RVUlSS19CUk9LRU5fQllURV9NT0RFXzUxMjsKPj4gPiA+
ID4gPiA+Cj4+ID4gPiA+ID4gPiBJIHdvdWxkIHJhdGhlciBzZWUgdGhhdCB5b3UgYWRkIGFuIFNE
SU9fRklYVVAgZm9yIHRoZSBTRElPIGNhcmQsIHRvCj4+ID4gPiA+ID4gPiB0aGUgc2Rpb19maXh1
cF9tZXRob2RzW10sIGluIGRyaXZlcnMvbW1jL2NvcmUvcXVpcmtzLmgsIGluc3RlYWQgb2YKPj4g
PiA+ID4gPiA+IHRoaXMuCj4+ID4gPiA+ID4KPj4gPiA+ID4gPiBJbiB0aGUgY3VycmVudCBwYXRj
aCwgdGhlc2UgcXVpcmtzIGFyZSBhcHBsaWVkIG9ubHkgaWYgdGhlIGRldmljZSBhcHBlYXJzCj4+
ID4gPiA+ID4gaW4gdGhlIGRldmljZSB0cmVlIChzZWUgdGhlIGNvbmRpdGlvbiBhYm92ZSkuIElm
IEkgaW1wbGVtZW50IHRoZW0gaW4KPj4gPiA+ID4gPiBkcml2ZXJzL21tYy9jb3JlL3F1aXJrcy5o
IHRoZXkgd2lsbCBiZSBhcHBsaWVkIGFzIHNvb24gYXMgdGhlIGRldmljZSBpcwo+PiA+ID4gPiA+
IGRldGVjdGVkLiBJcyBpdCB3aGF0IHdlIHdhbnQ/Cj4+ID4gPiA+ID4KPj4gPiA+ID4gPiBOb3Rl
OiB3ZSBhbHJlYWR5IGhhdmUgaGFkIGEgZGlzY3Vzc2lvbiBhYm91dCB0aGUgc3RyYW5nZSBWSUQv
UElEIGRlY2xhcmVkCj4+ID4gPiA+ID4gYnkgdGhpcyBkZXZpY2U6Cj4+ID4gPiA+ID4gICBodHRw
czovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9uZXRkZXYvbXNnNjkyNTc3Lmh0bWwKPj4gPiA+ID4K
Pj4gPiA+ID4gWWVzLCB2ZW5kb3IgaWQgMHgwMDAwIGlzIGludmFsaWQgcGVyIFNESU8gc3BlYy4g
U28gYmFzZWQgb24gdGhpcyB2ZW5kb3IKPj4gPiA+ID4gaWQsIGl0IGlzIG5vdCBwb3NzaWJsZSB0
byB3cml0ZSBhbnkgcXVpcmsgaW4gbW1jL3NkaW8gZ2VuZXJpYyBjb2RlLgo+PiA+ID4gPgo+PiA+
ID4gPiBVbGYsIGJ1dCBtYXliZSBpdCBjb3VsZCBiZSBwb3NzaWJsZSB0byB3cml0ZSBxdWlyayBi
YXNlZCBvbiBPRgo+PiA+ID4gPiBjb21wYXRpYmxlIHN0cmluZz8KPj4gPiA+Cj4+ID4gPiBZZXMs
IHRoYXQgd291bGQgYmUgYmV0dGVyIGluIG15IG9waW5pb24uCj4+ID4gPgo+PiA+ID4gV2UgYWxy
ZWFkeSBoYXZlIERUIGJpbmRpbmdzIHRvIGRlc2NyaWJlIGVtYmVkZGVkIFNESU8gY2FyZHMgKGEg
c3Vibm9kZQo+PiA+ID4gdG8gdGhlIG1tYyBjb250cm9sbGVyIG5vZGUpLCBzbyB3ZSBzaG91bGQg
YmUgYWJsZSB0byBleHRlbmQgdGhhdCBJCj4+ID4gPiB0aGluay4KPj4gPgo+PiA+IFNvLCB0aGlz
IGZlYXR1cmUgZG9lcyBub3QgeWV0IGV4aXN0PyBEbyB5b3UgY29uc2lkZXIgaXQgaXMgYSBibG9j
a2VyIGZvcgo+PiA+IHRoZSBjdXJyZW50IHBhdGNoPwo+PiAKPj4gWWVzLCBzb3JyeS4gSSB0aGlu
ayB3ZSBzaG91bGQgYXZvaWQgdW5uZWNlc3NhcnkgaGFja3MgaW4gU0RJTyBmdW5jCj4+IGRyaXZl
cnMsIGVzcGVjaWFsbHkgdGhvc2UgdGhhdCBkZXNlcnZlIHRvIGJlIGZpeGVkIGluIHRoZSBtbWMg
Y29yZS4KPj4gCj4+IE1vcmVvdmVyLCB3ZSBhbHJlYWR5IHN1cHBvcnQgdGhlIHNpbWlsYXIgdGhp
bmcgZm9yIGVNTUMgY2FyZHMsIHBsdXMKPj4gdGhhdCBtb3N0IHBhcnRzIGFyZSBhbHJlYWR5IGRv
bmUgZm9yIFNESU8gdG9vLgo+PiAKPj4gPgo+PiA+IFRvIGJlIGhvbmVzdCwgSSBkb24ndCByZWFs
bHkgd2FudCB0byB0YWtlIG92ZXIgdGhpcyBjaGFuZ2UgaW4gbW1jL2NvcmUuCj4+IAo+PiBJIHVu
ZGVyc3RhbmQuIEFsbG93IG1lIGEgY291cGxlIG9mIGRheXMsIHRoZW4gSSBjYW4gcG9zdCBhIHBh
dGNoIHRvCj4+IGhlbHAgeW91IG91dC4KPgo+IEdyZWF0ISBUaGFuayB5b3UuIEkgYXBvbG9naXpl
IGZvciB0aGUgZXh0cmEgd29yayBkdWUgdG8gdGhpcyBpbnZhbGlkCj4gdmVuZG9yIGlkLgoKQlRX
IHBsZWFzZSBlc2NhbGF0ZSBpbiB5b3VyIGNvbXBhbnkgaG93IEhPUlJJQkxFIGl0IGlzIHRoYXQg
eW91Cm1hbnVmYWN0dXJlIFNESU8gZGV2aWNlcyB3aXRob3V0IHByb3BlciBkZXZpY2UgaWRzLCBh
bmQgbWFrZSBzdXJlIHRoYXQKYWxsIHlvdXIgZnV0dXJlIGRldmljZXMgaGF2ZSBvZmZpY2lhbGx5
IGFzc2lnbmVkIGlkcy4gSSBjYW5ub3Qgc3RyZXNzCmVub3VnaCBob3cgaW1wb3J0YW50IHRoYXQg
aXMgZm9yIHRoZSBMaW51eCBjb21tdW5pdHkhCgotLSAKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9wcm9qZWN0L2xpbnV4LXdpcmVsZXNzL2xpc3QvCgpodHRwczovL3dpcmVsZXNzLndpa2ku
a2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3VibWl0dGluZ3BhdGNoZXMK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

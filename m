Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C252A2EEF
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 17:04:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F373A86980;
	Mon,  2 Nov 2020 16:04:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jen7b7M401Wl; Mon,  2 Nov 2020 16:04:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 438A18695F;
	Mon,  2 Nov 2020 16:04:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BABAB1BF32B
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 16:04:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B3E6286957
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 16:04:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tpZ25bFrNAan for <devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 16:04:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from z5.mailgun.us (z5.mailgun.us [104.130.96.5])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0EF4B8693F
 for <devel@driverdev.osuosl.org>; Mon,  2 Nov 2020 16:04:08 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1604333053; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=xNCnI8IEieWgYDa9EFAGk4BnGJ1SylWmAUPiSZMRsUc=;
 b=JKLYtUeTovRr8mYZuJlX2msndqFZG7AScg1tc3V8N7aN25vYgU7uyKlpiQtxEIlcXHbokGxu
 IrzuTdRZJLyWx5dPg/yzVIPdi4xYeK1QYEGcwZa2Kx2QUKQb1CRqYECIcw++UYGH2V8uPd34
 2qweQr9t6vM1vGXvKzz5iu62e70=
X-Mailgun-Sending-Ip: 104.130.96.5
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-east-1.postgun.com with SMTP id
 5fa02d94b79ce7b2cdfd3466 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 02 Nov 2020 16:02:28
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0FD1EC433C8; Mon,  2 Nov 2020 16:02:28 +0000 (UTC)
Received: from x230.qca.qualcomm.com (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 8AB5DC433C6;
 Mon,  2 Nov 2020 16:02:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 8AB5DC433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 07/23] wfx: add bus_sdio.c
References: <20201012104648.985256-1-Jerome.Pouiller@silabs.com>
 <2628294.9EgBEFZmRI@pc-42> <20201014124334.lgx53qvtgkmfkepc@pali>
 <2444203.ROLCPKctRj@pc-42>
 <CAPDyKFqCn386r4ecLDnMQmxrAZCvU9r=-eY71UUNpXWNxKOz2g@mail.gmail.com>
Date: Mon, 02 Nov 2020 18:02:22 +0200
In-Reply-To: <CAPDyKFqCn386r4ecLDnMQmxrAZCvU9r=-eY71UUNpXWNxKOz2g@mail.gmail.com>
 (Ulf Hansson's message of "Fri, 16 Oct 2020 13:54:48 +0200")
Message-ID: <87eelbpx0x.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
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
 netdev <netdev@vger.kernel.org>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Pali =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxpbmFyby5vcmc+IHdyaXRlczoKCj4gT24gVGh1LCAx
NSBPY3QgMjAyMCBhdCAxNjowMywgSsOpcsO0bWUgUG91aWxsZXIKPiA8amVyb21lLnBvdWlsbGVy
QHNpbGFicy5jb20+IHdyb3RlOgo+Pgo+PiBPbiBXZWRuZXNkYXkgMTQgT2N0b2JlciAyMDIwIDE0
OjQzOjM0IENFU1QgUGFsaSBSb2jDoXIgd3JvdGU6Cj4+ID4gT24gV2VkbmVzZGF5IDE0IE9jdG9i
ZXIgMjAyMCAxMzo1MjoxNSBKw6lyw7RtZSBQb3VpbGxlciB3cm90ZToKPj4gPiA+IE9uIFR1ZXNk
YXkgMTMgT2N0b2JlciAyMDIwIDIyOjExOjU2IENFU1QgUGFsaSBSb2jDoXIgd3JvdGU6Cj4+ID4g
PiA+IE9uIE1vbmRheSAxMiBPY3RvYmVyIDIwMjAgMTI6NDY6MzIgSmVyb21lIFBvdWlsbGVyIHdy
b3RlOgo+PiA+ID4gPiA+ICsjZGVmaW5lIFNESU9fVkVORE9SX0lEX1NJTEFCUyAgICAgICAgMHgw
MDAwCj4+ID4gPiA+ID4gKyNkZWZpbmUgU0RJT19ERVZJQ0VfSURfU0lMQUJTX1dGMjAwICAweDEw
MDAKPj4gPiA+ID4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBzZGlvX2RldmljZV9pZCB3Znhfc2Rp
b19pZHNbXSA9IHsKPj4gPiA+ID4gPiArICAgICB7IFNESU9fREVWSUNFKFNESU9fVkVORE9SX0lE
X1NJTEFCUywgU0RJT19ERVZJQ0VfSURfU0lMQUJTX1dGMjAwKSB9LAo+PiA+ID4gPgo+PiA+ID4g
PiBQbGVhc2UgbW92ZSBpZHMgaW50byBjb21tb24gaW5jbHVkZSBmaWxlIGluY2x1ZGUvbGludXgv
bW1jL3NkaW9faWRzLmgKPj4gPiA+ID4gd2hlcmUgYXJlIGFsbCBTRElPIGlkcy4gTm93IGFsbCBk
cml2ZXJzIGhhdmUgaWRzIGRlZmluZWQgaW4gdGhhdCBmaWxlLgo+PiA+ID4gPgo+PiA+ID4gPiA+
ICsgICAgIC8vIEZJWE1FOiBpZ25vcmUgVklEL1BJRCBhbmQgb25seSByZWx5IG9uIGRldmljZSB0
cmVlCj4+ID4gPiA+ID4gKyAgICAgLy8geyBTRElPX0RFVklDRShTRElPX0FOWV9JRCwgU0RJT19B
TllfSUQpIH0sCj4+ID4gPiA+Cj4+ID4gPiA+IFdoYXQgaXMgdGhlIHJlYXNvbiBmb3IgaWdub3Jp
bmcgdmVuZG9yIGFuZCBkZXZpY2UgaWRzPwo+PiA+ID4KPj4gPiA+IFRoZSBkZXZpY2UgaGFzIGEg
cGFydGljdWxhcml0eSwgaXRzIFZJRC9QSUQgaXMgMDAwMDoxMDAwIChhcyB5b3UgY2FuIHNlZQo+
PiA+ID4gYWJvdmUpLiBUaGlzIHZhbHVlIGlzIHdlaXJkLiBUaGUgcmlzayBvZiBjb2xsaXNpb24g
d2l0aCBhbm90aGVyIGRldmljZSBpcwo+PiA+ID4gaGlnaC4KPj4gPgo+PiA+IFRob3NlIGlkcyBs
b29rcyBzdHJhbmdlLiBZb3UgYXJlIGZyb20gU2lsYWJzLCBjYW4geW91IGNoZWNrIGludGVybmFs
bHkKPj4gPiBpbiBTaWxhYnMgaWYgaWRzIGFyZSByZWFsbHkgY29ycmVjdD8gQW5kIHdoaWNoIHNk
aW8gdmVuZG9yIGlkIHlvdSBpbgo+PiA+IFNpbGFicyBnb3QgYXNzaWduZWQgZm9yIHlvdXIgcHJv
ZHVjdHM/Cj4+Cj4+IEkgY29uZmlybSB0aGVzZSBpZHMgYXJlIHRoZSBvbmVzIGJ1cm5lZCBpbiB0
aGUgV0YyMDAuIFdlIGhhdmUgdG8gZGVhbCB3aXRoCj4+IHRoYXQgOiggLgo+Cj4gWWVwLiBVbmZv
cnR1bmF0ZWx5IHRoaXMgaXNuJ3Qgc28gdW5jb21tb24gd2hlbiB0YXJnZXRpbmcgdGhlIGVtYmVk
ZGVkCj4gdHlwZXMgb2YgZGV2aWNlcy4KPgo+IFRoZSBnb29kIHRoaW5nIGlzLCB0aGF0IHdlIGFs
cmVhZHkgaGF2ZSBiaW5kaW5ncyBhbGxvd2luZyB1cyB0byBzcGVjaWZ5IHRoaXMuCj4KPj4KPj4K
Pj4gPiBJIGtub3cgdGhhdCBzZGlvIGRldmljZXMgd2l0aCBtdWx0aXBsZSBmdW5jdGlvbnMgbWF5
IGhhdmUgZGlmZmVyZW50IHNkaW8KPj4gPiB2ZW5kb3IvZGV2aWNlIGlkIHBhcnRpY3VsYXIgZnVu
Y3Rpb24gYW5kIGluIGNvbW1vbiBDSVMgKGZ1bmN0aW9uIDApLgo+PiA+Cj4+ID4gQ291bGQgbm90
IGJlIGEgcHJvYmxlbSB0aGF0IG9uIG9uZSBwbGFjZSBpcyB2ZW5kb3IvZGV2aWNlIGlkIGNvcnJl
Y3QgYW5kCj4+ID4gb24gb3RoZXIgcGxhY2UgaXMgdGhhdCBzdHJhbmdlIHZhbHVlPwo+PiA+Cj4+
ID4gSSBoYXZlIHNlbnQgZm9sbG93aW5nIHBhdGNoIChub3cgcGFydCBvZiB1cHN0cmVhbSBrZXJu
ZWwpIHdoaWNoIGV4cG9ydHMKPj4gPiB0aGVzZSBpZHMgdG8gdXNlcnNwYWNlOgo+PiA+IGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1tYy8yMDIwMDUyNzExMDg1OC4xNzUwNC0yLXBhbGlA
a2VybmVsLm9yZy9ULyN1Cj4+ID4KPj4gPiBBbHNvIGZvciBkZWJ1Z2dpbmcgaWRzIGFuZCBpbmZv
cm1hdGlvbiBhYm91dCBzZGlvIGNhcmRzLCBJIHNlbnQgYW5vdGhlcgo+PiA+IHBhdGNoIHdoaWNo
IGV4cG9ydCBhZGRpdGlvbmFsIGRhdGE6Cj4+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtbW1jLzIwMjAwNzI3MTMzODM3LjE5MDg2LTEtcGFsaUBrZXJuZWwub3JnL1QvI3UKPj4gPgo+
PiA+IENvdWxkIHlvdSB0cnkgdGhlbSBhbmQgbG9vayBhdCAvc3lzL2NsYXNzL21tY19ob3N0LyBh
dHRyaWJ1dGUgb3V0cHV0cz8KPj4KPj4gSGVyZSBpczoKPj4KPj4gICAgICMgY2QgL3N5cy9jbGFz
cy9tbWNfaG9zdC8gJiYgZ3JlcCAtciAuIG1tYzEvCj4+ICAgICBtbWMxL3Bvd2VyL3J1bnRpbWVf
c3VzcGVuZGVkX3RpbWU6MAo+PiAgICAgZ3JlcDogbW1jMS9wb3dlci9hdXRvc3VzcGVuZF9kZWxh
eV9tczogSW5wdXQvb3V0cHV0IGVycm9yCj4+ICAgICBtbWMxL3Bvd2VyL3J1bnRpbWVfYWN0aXZl
X3RpbWU6MAo+PiAgICAgbW1jMS9wb3dlci9jb250cm9sOmF1dG8KPj4gICAgIG1tYzEvcG93ZXIv
cnVudGltZV9zdGF0dXM6dW5zdXBwb3J0ZWQKPj4gICAgIG1tYzEvbW1jMTowMDAxL3ZlbmRvcjow
eDAwMDAKPj4gICAgIG1tYzEvbW1jMTowMDAxL3JjYToweDAwMDEKPj4gICAgIG1tYzEvbW1jMTow
MDAxL2RldmljZToweDEwMDAKPj4gICAgIG1tYzEvbW1jMTowMDAxL21tYzE6MDAwMToxL3ZlbmRv
cjoweDAwMDAKPj4gICAgIG1tYzEvbW1jMTowMDAxL21tYzE6MDAwMToxL2RldmljZToweDEwMDAK
Pj4gICAgIGdyZXA6IG1tYzEvbW1jMTowMDAxL21tYzE6MDAwMToxL2luZm80OiBObyBkYXRhIGF2
YWlsYWJsZQo+PiAgICAgbW1jMS9tbWMxOjAwMDEvbW1jMTowMDAxOjEvcG93ZXIvcnVudGltZV9z
dXNwZW5kZWRfdGltZTowCj4+ICAgICBncmVwOiBtbWMxL21tYzE6MDAwMS9tbWMxOjAwMDE6MS9w
b3dlci9hdXRvc3VzcGVuZF9kZWxheV9tczogSW5wdXQvb3V0cHV0IGVycm9yCj4+ICAgICBtbWMx
L21tYzE6MDAwMS9tbWMxOjAwMDE6MS9wb3dlci9ydW50aW1lX2FjdGl2ZV90aW1lOjAKPj4gICAg
IG1tYzEvbW1jMTowMDAxL21tYzE6MDAwMToxL3Bvd2VyL2NvbnRyb2w6YXV0bwo+PiAgICAgbW1j
MS9tbWMxOjAwMDEvbW1jMTowMDAxOjEvcG93ZXIvcnVudGltZV9zdGF0dXM6dW5zdXBwb3J0ZWQK
Pj4gICAgIG1tYzEvbW1jMTowMDAxL21tYzE6MDAwMToxL2NsYXNzOjB4MDAKPj4gICAgIGdyZXA6
IG1tYzEvbW1jMTowMDAxL21tYzE6MDAwMToxL2luZm8yOiBObyBkYXRhIGF2YWlsYWJsZQo+PiAg
ICAgbW1jMS9tbWMxOjAwMDEvbW1jMTowMDAxOjEvbW9kYWxpYXM6c2RpbzpjMDB2MDAwMGQxMDAw
Cj4+ICAgICBtbWMxL21tYzE6MDAwMS9tbWMxOjAwMDE6MS9yZXZpc2lvbjowLjAKPj4gICAgIG1t
YzEvbW1jMTowMDAxL21tYzE6MDAwMToxL3VldmVudDpPRl9OQU1FPW1tYwo+PiAgICAgbW1jMS9t
bWMxOjAwMDEvbW1jMTowMDAxOjEvdWV2ZW50Ok9GX0ZVTExOQU1FPS9zb2Mvc2RoY2lAN2UzMDAw
MDAvbW1jQDEKPj4gICAgIG1tYzEvbW1jMTowMDAxL21tYzE6MDAwMToxL3VldmVudDpPRl9DT01Q
QVRJQkxFXzA9c2lsYWJzLHdmeC1zZGlvCj4+ICAgICBtbWMxL21tYzE6MDAwMS9tbWMxOjAwMDE6
MS91ZXZlbnQ6T0ZfQ09NUEFUSUJMRV9OPTEKPj4gICAgIG1tYzEvbW1jMTowMDAxL21tYzE6MDAw
MToxL3VldmVudDpTRElPX0NMQVNTPTAwCj4+ICAgICBtbWMxL21tYzE6MDAwMS9tbWMxOjAwMDE6
MS91ZXZlbnQ6U0RJT19JRD0wMDAwOjEwMDAKPj4gICAgIG1tYzEvbW1jMTowMDAxL21tYzE6MDAw
MToxL3VldmVudDpTRElPX1JFVklTSU9OPTAuMAo+PiAgICAgbW1jMS9tbWMxOjAwMDEvbW1jMTow
MDAxOjEvdWV2ZW50Ok1PREFMSUFTPXNkaW86YzAwdjAwMDBkMTAwMAo+PiAgICAgZ3JlcDogbW1j
MS9tbWMxOjAwMDEvbW1jMTowMDAxOjEvaW5mbzM6IE5vIGRhdGEgYXZhaWxhYmxlCj4+ICAgICBn
cmVwOiBtbWMxL21tYzE6MDAwMS9tbWMxOjAwMDE6MS9pbmZvMTogTm8gZGF0YSBhdmFpbGFibGUK
Pj4gICAgIG1tYzEvbW1jMTowMDAxL29jcjoweDAwMjAwMDAwCj4+ICAgICBncmVwOiBtbWMxL21t
YzE6MDAwMS9pbmZvNDogTm8gZGF0YSBhdmFpbGFibGUKPj4gICAgIG1tYzEvbW1jMTowMDAxL3Bv
d2VyL3J1bnRpbWVfc3VzcGVuZGVkX3RpbWU6MAo+PiAgICAgZ3JlcDogbW1jMS9tbWMxOjAwMDEv
cG93ZXIvYXV0b3N1c3BlbmRfZGVsYXlfbXM6IElucHV0L291dHB1dCBlcnJvcgo+PiAgICAgbW1j
MS9tbWMxOjAwMDEvcG93ZXIvcnVudGltZV9hY3RpdmVfdGltZTowCj4+ICAgICBtbWMxL21tYzE6
MDAwMS9wb3dlci9jb250cm9sOmF1dG8KPj4gICAgIG1tYzEvbW1jMTowMDAxL3Bvd2VyL3J1bnRp
bWVfc3RhdHVzOnVuc3VwcG9ydGVkCj4+ICAgICBncmVwOiBtbWMxL21tYzE6MDAwMS9pbmZvMjog
Tm8gZGF0YSBhdmFpbGFibGUKPj4gICAgIG1tYzEvbW1jMTowMDAxL3R5cGU6U0RJTwo+PiAgICAg
bW1jMS9tbWMxOjAwMDEvcmV2aXNpb246MC4wCj4+ICAgICBtbWMxL21tYzE6MDAwMS91ZXZlbnQ6
TU1DX1RZUEU9U0RJTwo+PiAgICAgbW1jMS9tbWMxOjAwMDEvdWV2ZW50OlNESU9fSUQ9MDAwMDox
MDAwCj4+ICAgICBtbWMxL21tYzE6MDAwMS91ZXZlbnQ6U0RJT19SRVZJU0lPTj0wLjAKPj4gICAg
IGdyZXA6IG1tYzEvbW1jMTowMDAxL2luZm8zOiBObyBkYXRhIGF2YWlsYWJsZQo+PiAgICAgZ3Jl
cDogbW1jMS9tbWMxOjAwMDEvaW5mbzE6IE5vIGRhdGEgYXZhaWxhYmxlCj4+Cj4+Cj4KPiBQbGVh
c2UgaGF2ZSBhIGxvb2sgYXQgdGhlCj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L21tYy9tbWMtY29udHJvbGxlci55YW1sLCB0aGVyZSB5b3UKPiBmaW5kIHRoYXQgZnJvbSBhIGNo
aWxkIG5vZGUgb2YgdGhlIG1tYyBob3N0J3Mgbm9kZSwgd2UgY2FuIHNwZWNpZnkgYW4KPiBlbWJl
ZGRlZCBTRElPIGZ1bmN0aW9uYWwgZGV2aWNlLgo+Cj4gSW4gc2Rpb19hZGRfZnVuYygpLCB3aGlj
aCBjYWxscyBzZGlvX3NldF9vZl9ub2RlKCkgLSB3ZSBhc3NpZ24gdGhlCj4gZnVuYy0+ZGV2Lm9m
X25vZGUgaXRzIGNvcnJlc3BvbmRpbmcgY2hpbGQgbm9kZSBmb3IgdGhlIFNESU8gZnVuYy4KPiBB
bGxvd2luZyB0aGUgc2RpbyBmdW5jdGlvbmFsIGRyaXZlciB0byBiZSBtYXRjaGVkIHdpdGggdGhl
IFNESU8gZnVuYwo+IGRldmljZS4KPgo+IFBlcmhhcHMgd2hhdCBpcyBtaXNzaW5nLCBpcyB0aGF0
IHdlIG1heSB3YW50IHRvIGF2b2lkIHByb2JpbmcgYW4KPiBpbi1jb3JyZWN0IHNkaW8gZHJpdmVy
LCBiYXNlZCB1cG9uIGJ1Z2d5IFNESU8gaWRzLiBJIGRvbid0IHRoaW5rIHdlCj4gdGFrZSBzb21l
IGFjdGlvbnMgaW4gdGhlIG1tYyBjb3JlIHRvIHByZXZlbnQgdGhpcywgYnV0IG1heWJlIGl0J3Mg
bm90Cj4gYSBiaWcgcHJvYmxlbSBhbnl3YXkuCj4KPiBXaGVuIGl0IGNvbWVzIHRvIGRvY3VtZW50
aW5nIHRoZSBidWdneSBTRElPIGlkcywgcGxlYXNlIGFkZCBzb21lCj4gaW5mb3JtYXRpb24gYWJv
dXQgdGhpcyBpbiB0aGUgY29tbW9uIFNESU8gaGVhZGVycy4gSXQncyBuaWNlIHRvIGhhdmUgYQo+
IHRoYXQgaW5mb3JtYXRpb24sIGlmIGFueSBpc3N1ZSBjb21lcyB1cCBsYXRlciBvbi4KCkFuZCBp
ZiB0aGVyZSdzIHNvbWUgc3BlY2lhbCBzZXR1cCAoRFQgZXRjKSBuZWVkZWQgdG8gZ2V0IHRoZSB3
aXJlbGVzcwpkcml2ZXIgd29ya2luZyB0aGF0IHNob3VsZCBiZSBkb2N1bWVudGVkIGluIHRoZSBk
cml2ZXIgc2lkZSBhcyB3ZWxsLiBUaGUKZXhwZWN0YXRpb24gaXMgdGhhdCBhbiB1cHN0cmVhbSBk
cml2ZXIgaXMganVzdCBwbHVnIGFuZCBwbGF5LCBhbmQgaWYKaXQncyBub3QgdGhlcmUgc2hvdWxk
IGJlIGNsZWFyIGRvY3VtZW50YXRpb24gaG93IHRvIGVuYWJsZSB0aGUgZHJpdmVyLgoKLS0gCmh0
dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9saXN0LwoK
aHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0
aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=

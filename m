Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CFC287303
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Oct 2020 13:01:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E17C186C77;
	Thu,  8 Oct 2020 11:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F-awdM1vYJlD; Thu,  8 Oct 2020 11:01:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7FC1986C59;
	Thu,  8 Oct 2020 11:01:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5589B1BF471
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 11:01:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 49523272DE
 for <devel@linuxdriverproject.org>; Thu,  8 Oct 2020 11:01:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rH5FIY62MgyB for <devel@linuxdriverproject.org>;
 Thu,  8 Oct 2020 11:01:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m42-4.mailgun.net (m42-4.mailgun.net [69.72.42.4])
 by silver.osuosl.org (Postfix) with ESMTPS id 103522E13B
 for <devel@driverdev.osuosl.org>; Thu,  8 Oct 2020 11:01:20 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1602154884; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=eJBexxd8ncXOiQfY+iAAWapiGqaBRPOkeIcaQjW/Sdw=;
 b=AVMVEQe5/n7mrE4TA3QoG2EsJVBt+4rWTLFz+ElIWbgG9oSKLvH/7fc6eEv6WNlcYGGJc/vI
 71aPbWjs5uX603mwVpmRlXaF9O6HzA/Q8Inyj/95OJEZZKyxObi0KDBiWYqowFpgHiGL6LGy
 ZtZHq9Tyt8MsqLiaQ8kyzA3U5qY=
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n07.prod.us-west-2.postgun.com with SMTP id
 5f7ef170f9168450ea2d4b0a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 08 Oct 2020 11:01:04
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 4D714C433CA; Thu,  8 Oct 2020 11:01:04 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id C6B91C433CA;
 Thu,  8 Oct 2020 11:01:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org C6B91C433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH 0/7] wfx: move out from the staging area
References: <20201007101943.749898-1-Jerome.Pouiller@silabs.com>
 <20201007105513.GA1078344@kroah.com> <87ft6p2n0h.fsf@codeaurora.org>
 <16184307.3FagCOgvEJ@pc-42>
Date: Thu, 08 Oct 2020 14:00:59 +0300
In-Reply-To: <16184307.3FagCOgvEJ@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Thu, 08 Oct 2020 12:10:08 +0200")
Message-ID: <87tuv50yok.fsf@codeaurora.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cgo+
IE9uIFRodXJzZGF5IDggT2N0b2JlciAyMDIwIDA5OjMwOjA2IENFU1QgS2FsbGUgVmFsbyB3cm90
ZToKPiBbLi4uXQo+PiBZZXMsIHRoZSBkcml2ZXIgbmVlZHMgdG8gYmUgcmV2aWV3ZWQgaW4gbGlu
dXgtd2lyZWxlc3MgbGlzdC4gSSByZWNvbW1lbmQKPj4gc3VibWl0dGluZyB0aGUgd2hvbGUgZHJp
dmVyIGluIGEgcGF0Y2hzZXQgd2l0aCBvbmUgZmlsZSBwZXIgcGF0Y2gsIHdoaWNoCj4+IHNlZW1z
IHRvIGJlIHRoZSBlYXNpZXN0IHdheSB0byByZXZpZXcgYSBmdWxsIGRyaXZlci4gVGhlIGZpbmFs
IG1vdmUgd2lsbAo+PiBiZSBpbiBqdXN0IG9uZSBjb21taXQgbW92aW5nIHRoZSBkcml2ZXIsIGp1
c3QgbGlrZSBwYXRjaCA3IGRvZXMgaGVyZS4gQXMKPj4gYW4gZXhhbXBsZSBzZWUgaG93IHdpbGMx
MDAwIHJldmlldyB3YXMgZG9uZS4KPgo+IEkgc2VlLiBJIHN1cHBvc2UgaXQgaXMgc3RpbGwgYSBi
aXQgY29tcGxpY2F0ZWQgdG8gcmV2aWV3PyBNYXliZSBJIGNvdWxkCj4gdHJ5IHRvIG1ha2UgdGhp
bmdzIGVhc2llci4KPgo+IEZvciBteSBzdWJtaXNzaW9uIHRvIHN0YWdpbmcvIEkgaGFkIHRha2Vu
IHRpbWUgdG8gc3BsaXQgdGhlIGRyaXZlciBpbiBhbgo+IHVuZGVyc3RhbmRhYmxlIHNlcmllcyBv
ZiBwYXRjaGVzWzFdLiBJIHRoaW5rIGl0IHdhcyBlYXNpZXIgdG8gcmV2aWV3IHRoYW4KPiBqdXN0
IHNlbmRpbmcgZmlsZXMgb25lIGJ5IG9uZS4gSSBjb3VsZCBkbyB0aGUgc2FtZSB0aGluZyBmb3Ig
dGhlCj4gc3VibWlzc2lvbiB0byBsaW51eC13aXJlbGVzcy4gSXQgd291bGQgYXNrIG1lIGEgYml0
IG9mIHdvcmsgYnV0LCBzaW5jZSBJCj4gYWxyZWFkeSBoYXZlIGEgdGVtcGxhdGUsIGl0IGlzIGNv
bmNlaXZhYmxlLgo+Cj4gRG8geW91IHRoaW5rIGl0IGlzIHdvcnRoIGl0LCBvciBpdCB3b3VsZCBi
ZSBhbiB1bm5lY2Vzc2FyeSBlZmZvcnQ/Cj4KPiBbMV0KPiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9kcml2ZXJkZXYtZGV2ZWwvMjAxOTA5MTkxNDI1MjcuMzE3OTctMS1KZXJvbWUuUG91aWxsZXJA
c2lsYWJzLmNvbS8KPiAgICAgIG9yIGNvbW1pdHMgYTdhOTFjYTVhMjNkXi4uNDAxMTViYmM0MGUy
CgpJIGRvbid0IGtub3cgaG93IG90aGVycyB0aGluaywgYnV0IEkgcHJlZmVyIHRvIHJldmlldyBu
ZXcgZHJpdmVycyAib25lCmZpbGUgcGVyIHBhdGNoIiBzdHlsZSBhcyBJIGdldCB0byBzZWUgdGhl
IGJpZyBwaWN0dXJlIGVhc2lseS4gQW5kCmJlc2lkZXMsIHNwbGl0dGluZyB0aGUgZHJpdmVyIGxp
a2UgdGhhdCB3b3VsZCBiZSBhIGh1Z2Ugam9iIGZvciB5b3UuIEkKZG9uJ3QgdGhpbmsgaXQncyB3
b3J0aCB5b3VyIHRpbWUgaW4gdGhpcyBjYXNlLiBBbmQgbWFraW5nIGNoYW5nZXMgaW4gdGhlCmRy
aXZlciBkdXJpbmcgcmV2aWV3IHByb2Nlc3MgYmVjb21lcyBldmVuIG1vcmUgY29tcGxleC4KCi0t
IApodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtd2lyZWxlc3MvbGlz
dC8KCmh0dHBzOi8vd2lyZWxlc3Mud2lraS5rZXJuZWwub3JnL2VuL2RldmVsb3BlcnMvZG9jdW1l
bnRhdGlvbi9zdWJtaXR0aW5ncGF0Y2hlcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK

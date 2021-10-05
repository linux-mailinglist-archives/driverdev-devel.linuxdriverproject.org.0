Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEF1422F67
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 19:50:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C357683E20;
	Tue,  5 Oct 2021 17:50:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HmQ0b5A-pX5o; Tue,  5 Oct 2021 17:50:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EEED083D2F;
	Tue,  5 Oct 2021 17:50:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CA6A1BF34A
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 17:50:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id 2BC1F60C20
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 17:50:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=mg.codeaurora.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with UTF8SMTP id oj3ToTRFTqHu for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 17:49:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id C7101606E2
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 17:49:58 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1633456199; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=umNYz8pA01LGfst/ZDKb/BGeTkpsTgzCMazCvgWWhM4=;
 b=Jr2VJ0kV0x1lL7FPVd7Ao0qjwOgRClqrGlmmFF4o6qajMh7cIjTFXwfid7R7Oc0g8RK1+ecR
 wWTP1q38Ykl8hAK69Zb7ih3gw8noOzQaVHt5BxNfW858RcEqL00Dm1NcgUETslFrkBX6mNLK
 iNFH1SCSEffjMh/EirZo/UcKTUw=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 615c903930ce13d2b403d1b5 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 05 Oct 2021 17:49:45
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 3D3FBC4360C; Tue,  5 Oct 2021 17:49:45 +0000 (UTC)
Received: from tykki (tynnyri.adurom.net [51.15.11.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E2E1DC4338F;
 Tue,  5 Oct 2021 17:49:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org E2E1DC4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v8 00/24] wfx: get out from the staging area
References: <20211005135400.788058-1-Jerome.Pouiller@silabs.com>
 <875yubfthh.fsf@codeaurora.org> <2810333.gDgIz5hftg@pc-42>
Date: Tue, 05 Oct 2021 20:49:37 +0300
In-Reply-To: <2810333.gDgIz5hftg@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Tue, 05 Oct 2021 18:22:31 +0200")
Message-ID: <87o883e4zy.fsf@codeaurora.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?utf-8?Q?Roh?= =?utf-8?Q?=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cgo+
IE9uIFR1ZXNkYXkgNSBPY3RvYmVyIDIwMjEgMTY6MTU6MjIgQ0VTVCBLYWxsZSBWYWxvIHdyb3Rl
Ogo+PiBKZXJvbWUgUG91aWxsZXIgPEplcm9tZS5Qb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6
Cj4+IAo+PiA+IEZyb206IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJz
LmNvbT4KPiBbLi4uXQo+PiA+IHY4Ogo+PiA+ICAgLSBDaGFuZ2UgdGhlIHdheSB0aGUgRFQgaXMg
aGFuZGxlZC4gVGhlIHVzZXIgY2FuIG5vdyBzcGVjaWZ5IHRoZSBuYW1lIG9mCj4+ID4gICAgIHRo
ZSBib2FyZCAoPSBjaGlwICsgYW50ZW5uYSkgaGUgdXNlLiBJdCBlYXNpZXIgZm9yIGJvYXJkIGRl
c2lnbmVycyB0bwo+PiA+ICAgICBhZGQgbmV3IGVudHJpZXMuIEkgcGxhbiB0byBzZW5kIGEgUFIg
dG8gbGludXgtZmlybXdhcmUgdG8gaW5jbHVkZSBQRFMKPj4gPiAgICAgZmlsZXMgb2YgdGhlIGRl
dmVsb3BwZW1lbnQgYm9hcmRzIGJlbG9uZyB0aGUgZmlybXdhcmUgKEkgYWxzbyBwbGFuIHRvCj4+
ID4gICAgIHJlbG9jYXRlIHRoZXNlIGZpbGUgaW50byB3ZngvIGluc3RlYWQgb2Ygc2lsYWJzLyku
IChLYWxsZSwgUGFsaSkKPj4gPiAgIC0gUHJlZml4IHZpc2libGUgZnVuY3Rpb25zIGFuZCBzdHJ1
Y3RzIHdpdGggIndmeF8iLiBJIG1vc3RseSBrZXB0IHRoZQo+PiA+ICAgICBjb2RlIHVuZGVyIDgw
IGNvbHVtbnMuIChLYWxsZSwgUGFsaSwgR3JlZykKPj4gPiAgIC0gUmVtb3ZlIHN1cHBvcnQgZm9y
IGZvcmNlX3BzX3RpbWVvdXQgZm9yIG5vdy4gKEthbGxlKQo+PiA+ICAgLSBGaXggbGljZW5zZXMg
b2YgTWFrZWZpbGUsIEtjb25maWcgYW5kIGhpZl9hcGkqLmguIChLYWxsZSkKPj4gPiAgIC0gRG8g
bm90IG1peCBhbmQgbWF0Y2ggZW5kaWFuZXNzIGluIHN0cnVjdCBoaWZfaW5kX3N0YXJ0dXAuIChL
YWxsZSkKPj4gPiAgIC0gUmVtb3ZlIG1hZ2ljIHZhbHVlcy4gKEthbGxlKQo+PiA+ICAgLSBVc2Ug
SVNfQUxJR05FRCgpLiAoQlRXLCBQVFJfSVNfQUxJR05FRCgpIGRvZXMgbm90IGV4aXN0PykgKEth
bGxlKQo+PiA+ICAgLSBJIGhhdmUgYWxzbyBub3RpY2VkIHRoYXQgc29tZSBoZWFkZXJzIGZpbGVz
IGRpZCBub3QgZGVjbGFyZSBhbGwgdGhlCj4+ID4gICAgIHN0cnVjdCB0aGV5IHVzZWQuCj4+ID4K
Pj4gPiAgIFRoZXNlIGlzc3VlcyByZW1haW4gKEkgaG9wZSB0aGV5IGFyZSBub3QgYmxvY2tlcnMp
Ogo+PiA+ICAgLSBJIGhhdmUgY3VycmVudGx5IG5vIGlkZWFzIGhvdyB0byBpbXByb3ZlL3NpbXBs
aWZ5IHRoZSBwYXJzaW5nIFBEUyBmaWxlLgo+PiA+ICAgICAoS2FsbGUpCj4+IAo+PiBGb3IgdGhl
IFBEUyBmaWxlIHByb2JsZW0gaXQgd291bGQgaGVscCBpZiB5b3UgY291bGQgYWN0dWFsbHkgZGVz
Y3JpYmUKPj4gd2hhdCB0aGUgZmlybXdhcmUgcmVxdWlyZXMvbmVlZHMgYW5kIHRoZW4gd2UgY2Fu
IHN0YXJ0IGZyb20gdGhhdC4gSSBoYWQKPj4gc29tZSBxdWVzdGlvbnMgYWJvdXQgdGhpcyBpbiB2
NyBidXQgYXBwYXJlbnRseSB5b3UgbWlzc2VkIHRob3NlLgo+Cj4gRGlkIHlvdSByZWNlaXZlZCB0
aGlzIHJlcGx5WzFdPwo+Cj4gWzFdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjcyMzc4
Ny51REFTWHBvQVdLQHBjLTQyLwoKSSBkaWQgYW5kIEkgZXZlbiBtYWRlIGZ1cnRoZXIgcXVlc3Rp
b25zOgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzg3azBpeGo1dm4uZnNmQGNvZGVhdXJv
cmEub3JnLwoKQ2FuIHdlIHBsZWFzZSBjb250aW51ZSB0aGUgZGlzY3Vzc2lvbiBvbiB0aGF0IHRo
cmVhZCBpbnN0ZWFkIG9mIHBhc3NpbmcKb3V0IGxvcmUgbGlua3MgdG8gZWFjaCBvdGhlciA6KQoK
LS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13aXJlbGVzcy9s
aXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1
bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

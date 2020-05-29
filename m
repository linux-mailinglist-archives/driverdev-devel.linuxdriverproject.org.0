Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AE01E8173
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 17:14:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 40B42874B0;
	Fri, 29 May 2020 15:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uhanOpMqqZ22; Fri, 29 May 2020 15:14:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7A2B6874BC;
	Fri, 29 May 2020 15:14:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 173C61BF27E
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 15:14:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0F8B125F6B
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 15:14:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4zmKMLvsmwYN for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 15:14:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail27.static.mailgun.info (mail27.static.mailgun.info
 [104.130.122.27])
 by silver.osuosl.org (Postfix) with ESMTPS id C937825E87
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 15:14:16 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590765260; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=bmkITlJbkFN/KpY0Y2LGiwl4ZkNFL5njART6ph7HoIs=;
 b=KupFpqDtachbsXtY7nKzrRz7nA5yLKzf2jUsoHUGu3LiGaoUag7yQe1Fl3+NTHB5KecEKpJ+
 ZbX21DfgaykWvk9XO71qMhGXm2+ma1FQIJKnUQN69S8xO0rxU7MkNE6UhNhQyr69HHFHK1kv
 cQPauNXRkJRsvy5vxV/4b0U8G+4=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 5ed126b8cb0458693342a4ff (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 29 May 2020 15:14:00
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 0FAD7C43387; Fri, 29 May 2020 15:14:00 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 79299C433C6;
 Fri, 29 May 2020 15:13:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 79299C433C6
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH 00/10] staging: wfx: introduce nl80211 vendor extensions
References: <20200526171821.934581-1-Jerome.Pouiller@silabs.com>
 <87imghv9nm.fsf@codeaurora.org> <4249981.oEEGoI9oy7@pc-42>
Date: Fri, 29 May 2020 18:13:55 +0300
In-Reply-To: <4249981.oEEGoI9oy7@pc-42> (=?utf-8?B?IkrDqXLDtG1l?=
 Pouiller"'s message of "Wed, 27 May 2020 15:05:09 +0200")
Message-ID: <87wo4usrik.fsf@codeaurora.org>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPiB3cml0ZXM6Cgo+
IE9uIFdlZG5lc2RheSAyNyBNYXkgMjAyMCAxNDozNDozNyBDRVNUIEthbGxlIFZhbG8gd3JvdGU6
Cj4+IEplcm9tZSBQb3VpbGxlciA8SmVyb21lLlBvdWlsbGVyQHNpbGFicy5jb20+IHdyaXRlczoK
Pj4gCj4+ID4gVGhpcyBzZXJpZXMgaW50cm9kdWNlcyBzb21lIG5sODAyMTEgdmVuZG9yIGV4dGVu
c2lvbnMgdG8gdGhlIHdmeCBkcml2ZXIuCj4+ID4KPj4gPiBUaGlzIHNlcmllcyBtYXkgbGVhZCB0
byBzb21lIGRpc2N1c3Npb25zOgo+PiA+Cj4+ID4gICAxLiBQYXRjaCA3IGFsbG93cyB0byBjaGFu
Z2UgdGhlIGR5bmFtaWMgUFMgdGltZW91dC4gSSBoYXZlIGZvdW5kCj4+ID4gICAgICBhbiBBUEkg
aW4gd2V4dCAoY2ZnODAyMTFfd2V4dF9zaXdwb3dlcigpKSB0aGF0IGRvIG1vcmUgb3IgbGVzcyB0
aGUKPj4gPiAgICAgIHNhbWUgdGhpbmcuIEhvd2V2ZXIsIEkgaGF2ZSBub3QgZm91bmQgYW55IGVx
dWl2YWxlbnQgaW4gbmw4MDIxMS4gSXMgaXQKPj4gPiAgICAgIGV4cGVjdGVkIG9yIHRoaXMgQVBJ
IHNob3VsZCBiZSBwb3J0ZWQgdG8gbmw4MDIxMT8KPj4gCj4+IHN0cnVjdCB3aXJlbGVzc19kZXY6
OnBzX3RpbWVvdXQgZG9lc24ndCB3b3JrIGZvciB5b3U/Cj4KPiBJbmRlZWQsIGNmZzgwMjExX3dl
eHRfc2l3cG93ZXIoKSBtb2RpZnkgd2lyZWxlc3NfZGV2Ojpwc190aW1lb3V0LCBidXQKPiB0aGVy
ZSBpcyBubyBlcXVpdmFsZW50IGluIG5sODAyMTEsIG5vPwoKQWgsIEkgcmVtZW1iZXIgbm93LiBT
b21ldGhpbmcgbGlrZSAxMCB5ZWFycyBhZ28gdGhlcmUgd2FzIGEgZGlzY3Vzc2lvbgphYm91dCB1
c2luZyBxb3MtcG0gZnJhbWV3b3JrIGZvciBtb2RpZnlpbmcgdGhlIHRpbWVvdXQgKG9yIHNvbWV0
aGluZwpsaWtlIHRoYXQsIGNhbid0IHJlbWVtYmVyIHRoZSBkZXRhaWxzIGFueW1vcmUpIGJ1dCBu
byByZWNvbGxlY3Rpb24gd2hhdAp3YXMgdGhlIGVuZCByZXN1bHQuCgo+IEVsc2UsIEkgY2hvb3Nl
IHRvIG5vdCBkaXJlY3RseSBjaGFuZ2Ugd2lyZWxlc3NfZGV2Ojpwc190aW1lb3V0IGJlY2F1c2Ug
SQo+IHdvcnJpZWQgYWJvdXQgaW50ZXJhY3Rpb25zIHdpdGggb3RoZXIgcGFydHMgb2YgY2ZnODAy
MTEvbWFjODAyMTEuCgpUaGlzIGlzIGV4YWN0bHkgd2h5IHdlIGhhdmUgc3RyaWN0IHJ1bGVzIGZv
ciBubDgwMjExIHZlbmRvciBjb21tYW5kcy4gV2UKd2FudCB0byBoYXZlIGdlbmVyaWMgaW50ZXJm
YWNlcyBhcyBtdWNoIGFzIHBvc3NpYmxlLCBub3QgZWFjaCBkcml2ZXIKY29taW5nIHVwIHdpdGgg
dGhlaXIgb3duIGludGVyZmFjZXMuCgo+PiA+ICAgMi4gVGhlIGRldmljZSBUaGUgZGV2aWNlIGFs
bG93cyB0byBkbyBQYWNrZXQgVHJhZmZpYyBBcmJpdHJhdGlvbiAoUFRBIG9yCj4+ID4gICAgICBh
bHNvIENvZXgpLiBUaGlzIGZlYXR1cmUgYWxsb3dzIHRoZSBkZXZpY2UgdG8gY29tbXVuaWNhdGUg
d2l0aCBhbm90aGVyCj4+ID4gICAgICBSRiBkZXZpY2UgaW4gb3JkZXIgdG8gc2hhcmUgdGhlIGFj
Y2VzcyB0byB0aGUgUkYuIFRoZSBwYXRjaCA5IHByb3ZpZGVzCj4+ID4gICAgICBhIHdheSB0byBj
b25maWd1cmUgdGhhdC4gSG93ZXZlciwgSSB0aGluayB0aGF0IHRoaXMgY2hpcCBpcyBub3QgdGhl
Cj4+ID4gICAgICBvbmx5IG9uZSB0byBwcm92aWRlIHRoaXMgZmVhdHVyZS4gTWF5YmUgYSBzdGFu
ZGFyZCB3YXkgdG8gY2hhbmdlCj4+ID4gICAgICB0aGVzZSBwYXJhbWV0ZXJzIHNob3VsZCBiZSBw
cm92aWRlZD8KPj4gPgo+PiA+ICAgMy4gRm9yIHRoZXNlIHZlbmRvciBleHRlbnNpb25zLCBJIGhh
dmUgdXNlZCB0aGUgbmV3IHBvbGljeSBpbnRyb2R1Y2VkIGJ5Cj4+ID4gICAgICB0aGUgY29tbWl0
IDkwMWJiOTg5MTg1NTE2ICgibmw4MDIxMTogcmVxdWlyZSBhbmQgdmFsaWRhdGUgdmVuZG9yCj4+
ID4gICAgICBjb21tYW5kIHBvbGljeSIpLiBIb3dldmVyLCBpdCBzZWVtcyB0aGF0IG15IHZlcnNp
b24gb2YgJ2l3JyBpcyBub3QKPj4gPiAgICAgIGFibGUgdG8gZm9sbG93IHRoaXMgbmV3IHBvbGlj
eSAoaXQgZG9lcyBub3QgcGFjayB0aGUgbmV0bGluawo+PiA+ICAgICAgYXR0cmlidXRlcyBpbnRv
IGEgTkxBX05FU1RFRCkuIEkgY291bGQgZGV2ZWxvcCBhIHRvb2wgc3BlY2lmaWNhbGx5IGZvcgo+
PiA+ICAgICAgdGhhdCBBUEksIGJ1dCBpdCBpcyBub3QgdmVyeSBoYW5keS4gU28sIGluIHBhdGNo
IDEwLCBJIGhhdmUgYWxzbwo+PiA+ICAgICAgaW50cm9kdWNlZCBhbiBBUEkgZm9yIGNvbXBhdGli
aWxpdHkgd2l0aCBpdy4gQW55IGNvbW1lbnRzIGFib3V0IHRoaXM/Cj4+IAo+PiBJZiB5b3Ugd2Fu
dCB0aGUgZHJpdmVyIG91dCBvZiBzdGFnaW5nIEkgcmVjb21tZW5kIG5vdCBhZGRpbmcgYW55IHZl
bmRvcgo+PiBjb21tYW5kcyB1bnRpbCB0aGUgZHJpdmVyIGlzIG1vdmVkIHRvIGRyaXZlcnMvbmV0
L3dpcmVsZXNzLiBBbHNvIGRvIG5vdGUKPj4gdGhhdCB3ZSBoYXZlIHNwZWNpYWwgcnVsZXMgZm9y
IG5sODAyMTEgdmVuZG9yIGNvbW1hbmRzOgo+PiAKPj4gaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtl
cm5lbC5vcmcvZW4vZGV2ZWxvcGVycy9kb2N1bWVudGF0aW9uL25sODAyMTEjdmVuZG9yLXNwZWNp
ZmljX2FwaQo+Cj4gSSBob3BlZCB0byBzdWdnZXN0IHRoZSBtb3ZlIG9mIHRoaXMgZHJpdmVyIG91
dHNpZGUgb2Ygc3RhZ2luZyBpbiBzb21lCj4gd2Vla3MgKHRoZSBsYXN0IGl0ZW1zIGluIFRPRE8g
bGlzdCBhcmUgZWl0aGVyIG5vbi1lc3NlbnRpYWwgb3IgZWFzeSB0bwo+IGZpeCkuIFNvLCB5b3Ug
c3VnZ2VzdCBtZSB0byByZXNlbmQgdGhlc2UgcGF0Y2hlcyBhZnRlciB0aGF0IGNoYW5nZT8KCkl0
IG1ha2VzIGEgbG90IGVhc2llciBmb3IgdGhlIHJldmlldyBpZiB0aGVyZSBhcmUgbm8gbmw4MDIx
MSB2ZW5kb3IKY29tbWFuZHMgaW4gdGhlIGRyaXZlciwgbW9zdCBsaWtlbHkgeW91IHdvdWxkIG5l
ZWQgdG8gcmVtb3ZlIHRoZW0uIFNvCnllcywgZG9uJ3QgYWRkIGFueXRoaW5nIHVubGVzcyBhYnNv
bHV0ZWx5IGVzc2VudGlhbCB1bnRpbCB0aGUgZHJpdmVyIGlzCmFjY2VwdGVkIHVwc3RyZWFtLiBU
aGUgc21hbGxlciB0aGUgZHJpdmVyIHRoZSBmYXN0ZXIgdGhlIHJldmlldy4KCi0tIApodHRwczov
L3dpcmVsZXNzLndpa2kua2VybmVsLm9yZy9lbi9kZXZlbG9wZXJzL2RvY3VtZW50YXRpb24vc3Vi
bWl0dGluZ3BhdGNoZXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==

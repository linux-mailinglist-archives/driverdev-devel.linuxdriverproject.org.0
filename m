Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DDF179939
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 20:48:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9AD3120785;
	Wed,  4 Mar 2020 19:48:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9DDz9t+ItaUQ; Wed,  4 Mar 2020 19:48:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 977C12052D;
	Wed,  4 Mar 2020 19:47:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1B31BF589
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 19:47:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2554881B88
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 19:47:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GLowLX-Kq+Pr for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 19:47:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 795BE816F2
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 19:47:54 +0000 (UTC)
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 5DC8E891AC;
 Thu,  5 Mar 2020 08:47:51 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1583351271;
 bh=6XBNRDhkWzjQ/BWbtuSrwUhydhs8LSrpvUU5gWhaVjU=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=JyZ8aVNLcGj2bOxfqheLkl84Ck2ptHFI1yCxEhXR84p2n+6jHKEQL8ETZXkWUTzrg
 MOvP5jHOsctjT6qj7bQLHjO+aj+ki+inBfkfQivAOqJ3Ksc4AsNMi2+m3OMNxXnFyH
 /arlcU2vn86pJAoOk5hmedrR5IvkW7VZRHZjhkpcJuO0piBuFHn6MjdN7BYrpAwlcv
 6L1CRFM2WScsDABnxlu62ut07CakdQP+pcJ0jnxARqeg45hr+3Zk81QVfsdk2tbZvA
 VIyn361f7dE+JKHuC0tG9fiYvqoL4gMiryZAi0jITaXfabOkhQiRlyarNSbE7YQvyo
 gNFkmzZEGwlDQ==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e6005e50000>; Thu, 05 Mar 2020 08:47:49 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Thu, 5 Mar 2020 08:47:51 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1497.006; Thu, 5 Mar 2020 08:47:51 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "wzssyqa@gmail.com" <wzssyqa@gmail.com>
Subject: Re: [PATCH 0/6] Re-instate octeon staging drivers
Thread-Topic: [PATCH 0/6] Re-instate octeon staging drivers
Thread-Index: AQHV27jULEYW8pzvQEaKRSkEjvcZ7qgXS+4AgB+wyACAAFEjAIAAP0EAgAAXxACAAIVUAA==
Date: Wed, 4 Mar 2020 19:47:50 +0000
Message-ID: <bae500e38d3c83f1a8e11a4e593587b6c2363988.camel@alliedtelesis.co.nz>
References: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
 <20200212215200.GA2367959@kroah.com>
 <CAKcpw6VczRuMC_KRzP6VRPeZPtmEpVOJE5Fc+JhDH4mWU7jUVg@mail.gmail.com>
 <20200304063910.GA1203555@kroah.com>
 <CAKcpw6Vt1wUGcps2b86YGU8gGijvKTa6ERL5F1Nk=utaJyz+kg@mail.gmail.com>
 <20200304115038.GB1581141@kroah.com>
In-Reply-To: <20200304115038.GB1581141@kroah.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [2001:df5:b000:22:9f0:cd07:c13:4b8a]
Content-ID: <37F0F527A14B2B42BA74ADAAE608E27A@atlnz.lc>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "paulburton@kernel.org" <paulburton@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "willy@infradead.org" <willy@infradead.org>,
 "shomeek@phoenicselectronics.com" <shomeek@phoenicselectronics.com>,
 "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
 "linux@roeck-us.net" <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCAyMDIwLTAzLTA0IGF0IDEyOjUwICswMTAwLCBHcmVnIEtIIHdyb3RlOg0KPiBPbiBX
ZWQsIE1hciAwNCwgMjAyMCBhdCAwNjoyNTozNFBNICswODAwLCBZdW5RaWFuZyBTdSB3cm90ZToN
Cj4gPiBHcmVnIEtIIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4g5LqOMjAyMOW5tDPmnIg0
5pel5ZGo5LiJIOS4i+WNiDI6MznlhpnpgZPvvJoNCj4gPiA+IA0KPiA+ID4gT24gV2VkLCBNYXIg
MDQsIDIwMjAgYXQgMDk6NDg6NDZBTSArMDgwMCwgWXVuUWlhbmcgU3Ugd3JvdGU6DQo+ID4gPiA+
IEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPiDkuo4yMDIw5bm0MuaciDEz5pel
5ZGo5ZubIOS4iuWNiDU6NTLlhpnpgZPvvJoNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBPbiBXZWQs
IEZlYiAwNSwgMjAyMCBhdCAwMToxMToxMFBNICsxMzAwLCBDaHJpcyBQYWNraGFtIHdyb3RlOg0K
PiA+ID4gPiA+ID4gVGhpcyBzZXJpZXMgcmUtaW5zdGF0ZXMgdGhlIG9jdGVvbiBkcml2ZXJzIHRo
YXQgd2VyZSByZWNlbnRseSByZW1vdmVkIGFuZA0KPiA+ID4gPiA+ID4gYWRkcmVzc2VzIHRoZSBi
dWlsZCBpc3N1ZXMgdGhhdCBsZWFkIHRvIHRoYXQgZGVjaXNpb24uDQo+ID4gPiA+ID4gPiANCj4g
PiA+ID4gPiA+IEkndmUgYXBwcm9hY2hlZCBDYXZpdW0vTWFydmVsbCBhYm91dCB0YWtpbmcgYSBt
b3JlIGFjdGl2ZSBpbnRlcmVzdCBpbiBnZXR0aW5nDQo+ID4gPiA+ID4gPiB0aGUgY29kZSBvdXQg
b2Ygc3RhZ2luZyBhbmQgaW50byB0aGVpciBwcm9wZXIgbG9jYXRpb24uIE5vIHJlcGx5IG9uIHRo
YXQgKHlldCkuDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gR29vZCBsdWNrIHdpdGggdGFsa2luZyB0
byB0aGUgY29tcGFuaWVzLCBob3BlZnVsbHkgdGhhdCB3aWxsIHdvcmsuDQo+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gQW55d2F5LCBJJ3ZlIGFwcGxpZWQgdGhpcyBzZXJpZXMsIHRoYW5rcyBmb3IgdGhp
cywgbGV0J3Mgc2VlIHdoYXQgYnJlYWtzDQo+ID4gPiA+ID4gbm93IDopDQo+ID4gPiA+IA0KPiA+
ID4gPiBEaWQgeW91IG1lZXQgYW55IHByb2JsZW0gdG8gbWVyZ2UgQ2hyaXMncyBwYXRjaHNldD8N
Cj4gPiA+IA0KPiA+ID4gVGhleSBhcmUgYWxsIGluIGxpbnV4LW5leHQsIHNvIHlvdSBjYW4gc2Vl
IGZvciB5b3Vyc2VsZiA6KQ0KPiA+IA0KPiA+IFRoYW5rIHlvdSBzbyBtdWNoLiBJIGZvdW5kIGl0
Lg0KPiA+IEl0IGlzIHZlcnkgaW1wb3J0YW50IGZvciBEZWJpYW4gTUlQUyBQb3J0cyBhcyB3ZSBh
cmUgdXNpbmcgc29tZSBvZg0KPiA+IE9jdGVvbiBtYWNoaW5lcy4NCj4gDQo+IElmIGl0IGlzIHNv
IGltcG9ydGFudCwgd2h5IGlzIG5vIG9uZSB3b3JraW5nIG9uIGZpeGluZyB0aGVzZSBkcml2ZXJz
IHVwPw0KPiANCg0KSSBoYXZlIGhhZCBhIHJlcGx5IGZyb20gTWFydmVsbC4gVGhleSd2ZSBjb250
cmFjdGVkIHN1cHBvcnQgZm9yIHRoZSBvbGQNCkNhdml1bSBPY3Rlb24gZGVzaWducyBvdXQgdG8g
YW4gZXh0ZXJuYWwgY29tcGFueS4gSSdtIG5vdCBzdXJlIHRoYXQNCm1lYW5zIHRoYXQgd2UnbGwg
c2VlIHNvbWUgYWN0aW9uIG9uIHRoZXNlIGRyaXZlcnMgYW55IHRpbWUgc29vbiBidXQgYXQNCmxl
YXN0IHRoZXkncmUgZG9pbmcgc29tZXRoaW5nLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

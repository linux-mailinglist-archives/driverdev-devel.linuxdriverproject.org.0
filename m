Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B42B46F1
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 07:47:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0EFA84ADA;
	Tue, 17 Sep 2019 05:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rGanfVlHcPpQ; Tue, 17 Sep 2019 05:47:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2328484ADC;
	Tue, 17 Sep 2019 05:47:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DA72D1BF313
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 05:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D7A1320345
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 05:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kTZL5XynZIhV for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 05:47:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3D90F2014B
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 05:47:29 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 77F6521670;
 Tue, 17 Sep 2019 05:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568699249;
 bh=AVcvkAscp3almTt+ZEb5Om2XnT1GXYzgOvOjeTLhP5Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=v9wfoakWHsdeotJc5pXYISTjrwqZexbCiTIuhdOrQtvMNg4XTUMr/k3LcnJeVOupj
 Sv6ly9dTXs3uYL37+wVwcYdQj+o+SXRS+8t82/j2zAdCGkTYbpp8qg7anTE1ivyEMr
 pRnEYQ/X09TIK+rzlkpGmQhl0VCYl0XrXoscPzgs=
Date: Tue, 17 Sep 2019 07:47:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Park Ju Hyung <qkrwngud825@gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
Message-ID: <20190917054726.GA2058532@kroah.com>
References: <8998.1568693976@turing-police>
 <20190917053134.27926-1-qkrwngud825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917053134.27926-1-qkrwngud825@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com, valdis.kletnieks@vt.edu,
 namjae.jeon@samsung.com, linux-kernel@vger.kernel.org,
 alexander.levin@microsoft.com, sergey.senozhatsky@gmail.com,
 linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBTZXAgMTcsIDIwMTkgYXQgMDI6MzE6MzRQTSArMDkwMCwgUGFyayBKdSBIeXVuZyB3
cm90ZToKPiBPbiBUdWUsIDE3IFNlcCAyMDE5IDAwOjE5OjM2IC0wNDAwLCAiVmFsZGlzIEtsxJN0
bmlla3MiIHNhaWQ6Cj4gPiBJJ20gd29ya2luZyBvZmYgYSBzb21ld2hhdCBjbGVhbmVkIHVwIGNv
cHkgb2YgU2Ftc3VuZydzIG9yaWdpbmFsIGRyaXZlciwKPiA+IGJlY2F1c2UgdGhhdCdzIHdoYXQg
SSBoYWQga25vd2xlZGdlIG9mLiAgSWYgdGhlIHNkZmF0IGRyaXZlciBpcyBjbG9zZXIgdG8gYmVp
bmcKPiA+IG1lcmdlYWJsZSwgSSdkIG5vdCBvYmplY3QgaWYgdGhhdCBnb3QgbWVyZ2VkIGluc3Rl
YWQuCj4gCj4gR3JlZywgYXMgVmFsZGlzIG1lbnRpb25lZCBoZXJlLCB0aGUgc3RhZ2luZyB0cmVl
IGRyaXZlciBpcyBqdXN0IGFub3RoZXIgZXhGQVQgZm9yawo+IGZyb20gU2Ftc3VuZy4KPiBXaGF0
J3MgdGhlIHBvaW50IG9mIHVzaW5nIGEgbXVjaCBvbGRlciBkcml2ZXI/CgpJdCdzIHRoZSBmYWN0
IHRoYXQgaXQgYWN0dWFsbHkgd2FzIGluIGEgZm9ybSB0aGF0IGNvdWxkIGJlIG1lcmdlZCwgbm8K
b25lIGhhcyBkb25lIHRoYXQgd2l0aCB0aGUgc2RmYXQgY29kZSA6KQoKPiBzZEZBVCBpcyBjbGVh
cmx5IG1vcmUgbWF0dXJlZCBhbmQgYmVlbiBwdXQgaW50byBtb3JlIHJlY2VudCBwcm9kdWN0aW9u
IHNvZnR3YXJlcy4KPiBBbmQgYXMgSSB3cm90ZSBpbiBwcmV2aW91cyBlbWFpbCwgaXQgZG9lcyBp
bmNsdWRlIHNvbWUgcmVhbCBmaXhlcy4KCldoYXQgZml4ZXM/ICBUaGF0J3Mgd2hhdCBJJ20gYXNr
aW5nIGhlcmUuCgpIb3cgZG8gd2UgImtub3ciIHRoYXQgdGhpcyBpcyBiZXR0ZXIgdGhhbiB3aGF0
IHdlIGN1cnJlbnRseSBoYXZlIHRvZGF5PwpXZSBkb24ndCwgc28gaXQncyBhIGJpdCBoYXJkIHRv
IHRlbGwgc29tZW9uZSwgImRlbGV0ZSB0aGUgd29yayB5b3UgZGlkCmFuZCByZXBsYWNlIGl0IHdp
dGggdGhpcyBvdGhlciByYW5kb20gY2h1bmsgb2YgY29kZSwgY2F1c2luZyB5b3UgYSBidW5jaApt
b3JlIHdvcmsgaW4gdGhlIHByb2Nlc3MgZm9yIG5vIHNwZWNpZmljIHJlYXNvbiBvdGhlciB0aGFu
IGl0IGxvb2tzCiduZXdlcicuIiA6KAoKPiBBcyBOYW1qYWUgc2FpZCB0b28sIFNhbXN1bmcgd291
bGQgYmUgbW9yZSBpbnRlcmVzdGVkIGluIG1lcmdpbmcgc2RGQVQgdG8gdXBzdHJlYW0uCj4gSWYg
d2UgZGl2ZXJnZSwgU2Ftc3VuZyB3aWxsIGhhdmUgbGVzcyByZWFzb25zIHRvIGNvbnRyaWJ1dGUg
dGhlaXIgcGF0Y2hlcyB0byB1cHN0cmVhbS4KCkFyZSB0aGV5IGdvaW5nIHRvIGRvIHRoaXMgaWYg
d2UgZG8gdGFrZSB0aGUgc2RmYXQgY29kZT8gIElmIHNvLCBncmVhdCwKYnV0IEkgbmVlZCB0byBn
ZXQgc29tZW9uZSB0byBhZ3JlZSB0aGF0IHRoaXMgd2lsbCBoYXBwZW4uCgo+IEFsc28sIEkgdGhp
bmsgaXQgbWFrZXMgbXVjaCBtb3JlIHNlbnNlIHRvIG1ha2UgU2Ftc3VuZyB0aGUgbWFpbnRhaW5l
ciBvZiB0aGlzIGRyaXZlcgo+IChpZiB0aGV5J3JlIHdpbGxpbmcgdG8gcHV0IGluIHRoZSBtYW5w
b3dlciB0byBkbyBzbykuIEFza2luZyB0aGVtIHdvdWxkIGJlIHRoZSBmaXJzdAo+IHN0ZXAgaW4g
ZG9pbmcgc28uCgpUaGV5IGFyZSBtb3JlIHRoYW4gd2lsbGluZyB0byBzdGFydCBjb250cmlidXRp
bmcgYW5kIGJlaW5nIGEKY28tbWFpbnRhaW5lciBvZiBpdCwgaXQgbmVlZHMgYWxsIHRoZSBoZWxw
IGl0IGNhbiBnZXQuCgpCdXQgInNvbWVvbmUiIGZyb20gc2Ftc3VuZywgb3IgYW55d2hlcmUgZWxz
ZSwgaGFzIHRvIGJlIHdpbGxpbmcgdG8gc3RlcAp1cCBoZXJlIGFuZCBkbyB0aGlzIHdvcmsuICBX
aXRob3V0IHRoYXQgaGFwcGVuaW5nLCBJIGRvbid0IHNlZSBhIHJlYXNvbgp0byBjaGFuZ2UgYXQg
dGhpcyBwb2ludCBpbiB0aW1lLgoKUmVtYmVtYmVyLCBrZXJuZWwgZGV2ZWxvcG1lbnQgaGFwcGVu
cyBiZWNhdXNlIHBlb3BsZSBkbyB0aGUgd29yaywgd2hpY2gKVmFsZGlzIGRpZCwgYW5kIGNvbnRp
bnVlcyB0byBkby4gIFRocm93aW5nIHRoYXQgYXdheSBiZWNhdXNlIG9mIHRoZQp0aG91Z2h0IHRo
YXQgc29tZW9uZSBlbHNlIG1pZ2h0IGRvIHNvbWUgd29yayBpbiB0aGUgZnV0dXJlIGlzIG5vdCBo
b3cgd2UKd29yay4KCkkgcmVjb21tZW5kIGxvb2tpbmcgYXQgd2hhdCB3ZSBoYXZlIGluIHRoZSB0
cmVlIG5vdywgYW5kIHNlZWluZyB3aGF0IGlzCm1pc3NpbmcgY29tcGFyZWQgdG8gInNkZmF0Ii4g
IEkga25vdyBhIGxvdCBvZiBwbGFjZXMgaW4gdGhlIGV4ZmF0IGNvZGUKdGhhdCBuZWVkcyB0byBi
ZSBmaXhlZCB1cCwgb2RkcyBhcmUgdGhleSBhcmUgdGhlIHNhbWUgc3R1ZmYgdGhhdCBuZWVkcwp0
byBiZSByZXNvbHZlZCBpbiBzZGZhdCBhcyB3ZWxsLgoKdGhhbmtzLAoKZ3JlZyBrLWgKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

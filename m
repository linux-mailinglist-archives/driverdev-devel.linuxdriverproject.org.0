Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 597FE2D427F
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Dec 2020 13:57:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7807587067;
	Wed,  9 Dec 2020 12:57:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JxkuCnRdWvzy; Wed,  9 Dec 2020 12:57:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 284C387091;
	Wed,  9 Dec 2020 12:57:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A62E1BF407
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 12:57:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0214A8745B
 for <devel@linuxdriverproject.org>; Wed,  9 Dec 2020 12:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jmbkmbmOoArf for <devel@linuxdriverproject.org>;
 Wed,  9 Dec 2020 12:57:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bmail1.ministro.hu (bmail1.ministro.hu [5.249.150.236])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6743B87405
 for <devel@driverdev.osuosl.org>; Wed,  9 Dec 2020 12:57:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by bmail1.ministro.hu (Postfix) with ESMTP id 53227123AE9;
 Wed,  9 Dec 2020 13:57:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ministro.hu;
 s=201804; t=1607518652;
 bh=ivF8UJQ0nui932gV7q+Vx2HM88wGiAXI70k+UaqYnrU=;
 h=From:To:Cc:References:In-Reply-To:Subject:Date:From;
 b=PPNKSqb6FpgDz2BmOzUXUni7OeVA4JZxo6uI514lRRGgY9Jd0R9cyxzjTMVLfTuiP
 na3T0GbihpYNEENJtGKNT7UcTxqLOvtQwm7TKEuqX2ku8Nl53N/VjnyMB+1al4cKjq
 sFY5/1SBcZAjpxPZKAYCNOvg4p0RfjQnuhlLK2tvcDXuxlGgq7k9GMjNfeJKkPUyrd
 H/yGKlmAGySbNCYOgxk2IufcxZshRnVQtb+I3/R5LD1ze3QEkD4PEs0N0tn+Uw52ls
 +WalycZJDmCpN4tKg0jFGVG7dfkJenVxMAOy1S03m4Jyasy4HVv7kiMltMh7zXoueN
 rr30V18rJa0Zg==
X-Virus-Scanned: Debian amavisd-new at ministro.hu
Received: from bmail1.ministro.hu ([127.0.0.1])
 by localhost (bmail1.ministro.hu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RDXvmWuXYQHT; Wed,  9 Dec 2020 13:57:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by bmail1.ministro.hu (Postfix) with ESMTP id 4C36B123AE6;
 Wed,  9 Dec 2020 13:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ministro.hu;
 s=201804; t=1607518623;
 bh=ivF8UJQ0nui932gV7q+Vx2HM88wGiAXI70k+UaqYnrU=;
 h=From:To:Cc:References:In-Reply-To:Subject:Date:From;
 b=cfinZCwIbNmxAOze+m8ZQUZAsQy7wCGf5RfieLwS+iS5NS9/1AG7qaGXdAgGEJA/T
 ykKpZMUyfIrLmfBytZmj+0LetGeaMVfuYW5y8eTthiihh43jq+JG0ShvQY1ys4rxfH
 D0bRfwcQxHsnAINKYT6908aZGoD5KMisuzCfOKT7IPycHY2uui/qTFMVwS0lY+U1id
 VUti51SE672XlwgPZ4sVXPktdJ+ZKBht8Np19l9uDor67FNHJR17VxRiWZYaO4aMsu
 M4//6zd20e0zPHg0/uG1Niuduf7zHaflIyFFDDt70jEZg7gBh8mIuezzIS6fihsrs3
 6LrPGdfqcdXQw==
From: "Info" <info@ministro.hu>
To: "'Greg Kroah-Hartman'" <gregkh@linuxfoundation.org>
References: <!&!AAAAAAAAAAAuAAAAAAAAAM7AkQxKEJRHh2BgMNSTrQkBAExvbAW64DNBoXXP8CRioZMAAAAzfOEAABAAAAAJUqiRO33GQqGIHffCVyG/AQAAAAA=@ministro.hu>
 <X9C8zlCMvTev7ELE@kroah.com>
In-Reply-To: <X9C8zlCMvTev7ELE@kroah.com>
Subject: RE: ***UNCHECKED*** Re: [PATCH] Staging: silabs si4455 serial driver
Date: Wed, 9 Dec 2020 13:57:01 +0100
Message-ID: <!&!AAAAAAAAAAAuAAAAAAAAAM7AkQxKEJRHh2BgMNSTrQkBAExvbAW64DNBoXXP8CRioZMAAAAzfOEAABAAAADw4WwGItHrQ5iFlvxJ/JFMAQAAAAA=@ministro.hu>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJyKQPHehkkfqd9+nsH6keBxU1MfAGA7sq/qKvzxgA=
Content-Language: hu
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
 'Rob Herring' <robh+dt@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

PiBPbiBXZWQsIERlYyAwOSwgMjAyMCBhdCAxMjowOTo1OFBNICswMTAwLCBJbmZvIHdyb3RlOgo+
ID4gVGhpcyBpcyBhIHNlcmlhbCBwb3J0IGRyaXZlciBmb3IKPiA+IFNpbGljb24gTGFicyBTaTQ0
NTUgU3ViLUdIeiB0cmFuc2NpdmVyLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKw7N6c2VmIEhv
cnbDoXRoIDxpbmZvQG1pbmlzdHJvLmh1Pgo+Cj4gTm90ZSwgeW91ciBGcm9tOiBsaW5lIGRvZXMg
bm90IG1hdGNoIHRoaXMgbGluZSwgc28gSSBjYW4ndCB0YWtlIHRoaXMuCj4KPiBCdXQ6Cj4KPiA+
IC0tLQo+ID4gIC4uLi9iaW5kaW5ncy9zdGFnaW5nL3NlcmlhbC9zaWxhYnMsc2k0NDU1LnR4dCB8
ICAgMzkgKwoKSSdsbCBmaXggdGhpcywgc29ycnkuCgo+Cj4gc3RhZ2luZyBkcml2ZXJzIG5lZWQg
dG8gYmUgc2VsZi1jb250YWluZWQsIHNvIHRoaXMgc2hvdWxkIGJlIGhlcmUuICBJdCBuZWVkcyB0
byBiZSByZXZpZXdlZCBieSB0aGUgRFQgbWFpbnRhaW5lcnMgd2hlbiBtb3Zpbmcgb3V0IG9mIHN0
YWdpbmcuCj4KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uYWVlNWM3NjEzYjMxCj4gPiAtLS0gL2Rl
di9udWxsCj4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvc2k0NDU1L1RPRE8KPiA+IEBAIC0wLDAg
KzEsMyBAQAo+ID4gK1RPRE86Cj4gPiArICAgICAgICAtIGFkZCB2YXJpYWJsZSBwYWNrZXQgbGVu
Z3RoIHN1cHBvcnQKPiA+ICsgICAgICAgIC0gYWRkIGZpcm13YXJlIHBhdGNoaW5nIHN1cHBvcnQg
aW4gY2FzZSBvZiBTaTQ0NTUtQzJBCj4KPiBXaHkgYXJlIHRoZXNlIGEgcmVxdWlyZW1lbnQgdG8g
Z2V0IGl0IG91dCBvZiBzdGFnaW5nPyAgV2h5IGdvIGludG8gc3RhZ2luZyBhdCBhbGw/ICBXaHkg
bm90IGdvIGludG8gdGhlICdyZWFsJyBwYXJ0IG9mIHRoZSBrZXJuZWwgZGlyZWN0bHk/Cj4gV2hh
dCBpcyBrZWVwaW5nIHRoYXQgZnJvbSBoYXBwZW5pbmcgdG9kYXk/Cj4KPiBUaGVzZSBsb29rIGxp
a2UgbmV3IGZlYXR1cmVzIHRoYXQgeW91IGNhbiBhZGQgbGF0ZXIsIGFuZCBzaG91bGRuJ3QgYmUg
YSByZXF1aXJlbWVudCBmb3IgYWNjZXB0YW5jZSBpbnRvIHRoZSBub3JtYWwgcGFydCBvZiB0aGUg
a2VybmVsIGZvciB0aGlzIGRyaXZlci4gIFdoeSBoYXZlIHlvdSBub3QgdHJpZWQgZG9pbmcgdGhh
dCBmaXJzdD8KClllcywgeW91IGFyZSByaWdodC4gVGhlIFRPRE8gbGlzdCBpcyBmb3IgbWUsIGFu
ZCB0aGUgZHJpdmVyIGNhbiBnZXQgb3V0IG9mIHN0YWdpbmcgd2l0aG91dCB0aGVzZS4KVGhlIGN1
cmVudCBzdGF0ZSBvZiB0aGUgZHJpdmVyIGlzIGNvbXBsZXRseSBjb3ZlcnMgbXkgcmVxdWlyZW1l
bnRzLCBidXQgSSB3b3VsZCBjb21wbGV0ZSB0aGVzZSBmdW5jdGlvbnMgaW50IGhlIGZ1dHVyZS4K
VGhlIG1haW4gcmVhc29uIGZvciBub3QgaW1wbGVtZW50aW5nIHRoZSBmaXJtd2FyZSBwYXRjaGlu
ZyBmZWF0dXJlIGlzLCBjdXJyZW50bHkgSSBoYXZlIG5vIFNpNDQ1NS1DMkEgaW4gbXkgZGV2ZWxv
cG1lbnQgc3lzdGVtLgpNeSBwcm9kdWN0IGlzIGJhc2VkIG9uIFNpNDQ1NS1CMUEsIGJ1dCBJJ20g
d2FpdGluZyBmb3IgdGhlIFNpNDQ1NS1DMkEgbW9kdWxlLgoKPiB0aGFua3MsCj4KPiBncmVnIGst
aAoKCsOcZHbDtnpsZXR0ZWwgLyBCZXN0IHJlZ2FyZHM6CkrDs3pzZWYgSG9ydsOhdGgKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

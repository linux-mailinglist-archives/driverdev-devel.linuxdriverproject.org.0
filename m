Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 341D952AAF2
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 May 2022 20:33:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B191841B3B;
	Tue, 17 May 2022 18:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LJ4YWf3Xja81; Tue, 17 May 2022 18:33:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0792741B32;
	Tue, 17 May 2022 18:33:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C28A1BF855
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 May 2022 18:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B78783E4D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 May 2022 18:33:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gratismspoints.com;
 domainkeys=pass (2048-bit key) header.from=sam.eas@gratismspoints.com
 header.d=gratismspoints.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aI-bDJhDdHFe
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 May 2022 18:32:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from eddatermay.gratismspoints.com (eddatermay.gratismspoints.com
 [193.233.182.249])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2CCDB83E40
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 17 May 2022 18:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim;
 d=gratismspoints.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=sam.eas@gratismspoints.com; bh=IZ15cS/syGNdXjNxqZWTmr9B00E=;
 b=jYFOPVwYwv+eiPbq7jlOBbbXn3sGjpOzi1duRMhsVZX+jfL3PjvwA05z2ZORrSOXD4UwUOybyl9W
 DpmidzDkaEiyBLoecH33QgOlrz72ggaFIYyDPTgX5l3HmnfB4Eqsqm1Rhxr/tetffG8+Oiyk7BQq
 IGNrb2wKtMDEHNwOwT5OlcBoJFQyJrYq3NJvjIX6F8anFa6kqjxeReqBwezVxI/qk+Scw4q9jK/A
 BYz8rR2BgoYaWU6nU3J7jDgkdLItgd/UHWOqGs9/YHUehNz0qaiqCqD0kTFLh1mxM/B16OU9YOzI
 u45gkp/CI3v2qONLEmCPuZXvnGZELe5eO3k3XA==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=gratismspoints.com; 
 b=yUz+nLCYy9Xf9DiRaocse23Y2YHZOgouIaYImMXnyJGwHleg4foDxgE6zyP4WBAeHMV2s2NQFvOx
 IXG0/H9XGGAJLWrOLnmZ64LrdK5N2BUgWcS7vxCYfcy0n/oZiOeBRUjOAZluKVdc0lxt8X+EpSF6
 c5RUGj4+NSHyAgjie6WGwCe6koXPdR3fH7aP/rvpP9ODjUdk56Xijx7hOwpSMBUXwfkj9JK7aMFH
 2xOJIjVaSpvc5T3im9spboABDFluj4ysf/B4L88MkJmh3agyv4dJzsCCtHWouKgjkXdxiMxdVMDG
 r0uHWKcU0QyBOLaZ6BvTamAe7xRScC0WEwC+9Q==;
From: Mustafa Ayvaz <sam.eas@gratismspoints.com>
To: driverdev-devel@linuxdriverproject.org
Subject: MUT. PARTNER
Date: 17 May 2022 20:32:38 +0200
Message-ID: <20220517203238.55AD9F925F9FEA76@gratismspoints.com>
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
Reply-To: me.mayvaz@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBkcml2ZXJkZXYtZGV2ZWwsCgpJIGFtIE11c3RhZmEgQXl2YXosIGEgcGVyc29uYWwgYXR0
b3JuZXkgdG8gdGhlIGxhdGUgTXIuIFJvYmVydCwgCndobyBsb3N0IGhpcyBsaWZlIGR1ZSB0byBD
b3JvbmF2aXJ1cyBkaXNlYXNlLCB3aGljaCBoZSBjb250cmFjdGVkIApkdXJpbmcgaGlzIGJ1c2lu
ZXNzIHRyaXAgaW4gQ2hpbmEuIEkgY29udGFjdGVkIHlvdSB0byB3b3JrIHdpdGggCm1lIGluIHNl
Y3VyaW5nIHRoZSB0cmFuc2ZlciBvZiBhIGZ1bmQ6IEZvdXIgbWlsbGlvbiBmb3VyIGh1bmRyZWQg
CmFuZCB0d2VudHkgdGhvdXNhbmQgVVMgZG9sbGFycywgbGVnYWN5IGxlZnQgYnkgaGltLgoKSSBo
YXZlIHRob3JvdWdobHkgc2VhcmNoZWQgZm9yIHRoZSBuZXh0IG9mIGtpbiB0byBteSBkZWNlYXNl
ZCAKY2xpZW50LCBidXQgaGF2ZSBmYWlsZWQgYXMgSSBkbyBub3QgaGF2ZSBoaXMgY3VycmVudCBy
ZXNpZGVuY2UgCmFuZCBjb250YWN0IGRldGFpbHMuIEFzIEkgd2FzIHNlYXJjaGluZywgSSBidW1w
ZWQgaW50byB5b3VyIApwcm9maWxlIGhhdmluZyB0aGUgc2FtZSBsYXN0IG5hbWUgYW5kIGluIHRo
ZSBzYW1lIGxvY2FsaXR5IHdpdGggCnRoZSBuZXh0IG9mIGtpbi4gSSBkZWNpZGVkIHRvIGNvbnRh
Y3QgeW91IGFuZCB1c2UgeW91IGFzIHRoZSAKQm9uYWZpZGUgbmV4dCBvZiBraW4uCgpJIHNvbGlj
aXQgeW91ciBjb25zZW50IHRvIHByb2R1Y2UgeW91IGFzIHRoZSBuZXh0IG9mIGtpbiB0byBteSAK
ZGVjZWFzZWQgY2xpZW50IHNpbmNlIGJvdGggb2YgeW91IGJlYXIgdGhlIHNhbWUgbGFzdCBuYW1l
LiBUaGUgCmZ1bmRzIHdpbGwgdGhlbiBiZSB0cmFuc2ZlcnJlZCB0byB5b3UgYXMgdGhlIGJlbmVm
aWNpYXJ5IGFuZCAKc2hhcmVkIGFjY29yZGluZyB0byBhIHByb3Bvc2VkIHNoYXJpbmcgcGF0dGVy
biAvIHJhdGlvIG9mIDYwOjQwIAppLmUuIDYwJSBmb3IgbWUgYW5kIDQwJSBmb3IgeW91LiBLaW5k
bHkgY29udGFjdCBtZSBpbW1lZGlhdGVseSAKZm9yIG1vcmUgaW5mb3JtYXRpb24uCgpSZWdhcmRz
Ck11c3RhZmEgQXl2YXouCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCl9fX19fX19fX19fX19fX19fX19fX19fXwoKTGllYmVy
IGRyaXZlcmRldi1kZXZlbCwKCkljaCBiaW4gTXVzdGFmYSBBeXZheiwgZWluIHBlcnPDtm5saWNo
ZXIgQW53YWx0IGRlcyB2ZXJzdG9yYmVuZW4gCkhlcnJuIFJvYmVydCwgZGVyIHNlaW4gTGViZW4g
YXVmZ3J1bmQgZWluZXIgQ29yb25hdmlydXMtS3JhbmtoZWl0IAp2ZXJsb3JlbiBoYXQsIGRpZSBl
ciBzaWNoIHfDpGhyZW5kIHNlaW5lciBHZXNjaMOkZnRzcmVpc2UgaW4gQ2hpbmEgCnp1Z2V6b2dl
biBoYXQuIEljaCBoYWJlIFNpZSBrb250YWt0aWVydCwgdW0gbWl0IG1pciAKenVzYW1tZW56dWFy
YmVpdGVuLCB1bSBkaWUgw5xiZXJ3ZWlzdW5nIGVpbmVzIEZvbmRzIApzaWNoZXJ6dXN0ZWxsZW46
IFZpZXIgTWlsbGlvbmVuIHZpZXJodW5kZXJ0endhbnppZ3RhdXNlbmQgVVMtCkRvbGxhciwgZWlu
IHZvbiBpaG0gaGludGVybGFzc2VuZXMgVmVybcOkY2h0bmlzLgoKSWNoIGhhYmUgZ3LDvG5kbGlj
aCBuYWNoIGRlbiBuw6RjaHN0ZW4gQW5nZWjDtnJpZ2VuIG1laW5lcyAKdmVyc3RvcmJlbmVuIEts
aWVudGVuIGdlc3VjaHQsIGJpbiBhYmVyIGdlc2NoZWl0ZXJ0LCBkYSBpY2ggCnNlaW5lbiBha3R1
ZWxsZW4gV29obnNpdHogdW5kIHNlaW5lIEtvbnRha3RkYXRlbiBuaWNodCBoYWJlLiBCZWkgCm1l
aW5lciBTdWNoZSBiaW4gaWNoIGF1ZiBJaHIgUHJvZmlsIGdlc3Rvw59lbiwgZGFzIGRlbiBnbGVp
Y2hlbiAKTmFjaG5hbWVuIGhhdCB1bmQgc2ljaCBpbiBkZXIgZ2xlaWNoZW4gR2VnZW5kIHdpZSBk
aWUgbsOkY2hzdGVuIApBbmdlaMO2cmlnZW4gYmVmaW5kZXQuIEljaCBiZXNjaGxvc3MsIFNpZSB6
dSBrb250YWt0aWVyZW4gdW5kIFNpZSAKYWxzIEJvbmFmaWRlLU7DpGNoc3RlbiB6dSB2ZXJ3ZW5k
ZW4uCgpJY2ggZXJiaXR0ZSBJaHIgRWludmVyc3TDpG5kbmlzLCBTaWUgYWxzIG7DpGNoc3RlbiBB
bmdlaMO2cmlnZW4gCm1laW5lcyB2ZXJzdG9yYmVuZW4gTWFuZGFudGVuIHZvcnp1c3RlbGxlbiwg
ZGEgU2llIGJlaWRlIApkZW5zZWxiZW4gTmFjaG5hbWVuIHRyYWdlbi4gRGllIEdlbGRlciB3ZXJk
ZW4gZGFubiBhbiBTaWUgYWxzIApCZWfDvG5zdGlndGVuIMO8YmVyd2llc2VuIHVuZCBnZW3DpMOf
IGVpbmVtIHZvcmdlc2NobGFnZW5lbiAKQXVmdGVpbHVuZ3NtdXN0ZXIgLyBWZXJow6RsdG5pcyB2
b24gNjA6NDAgZ2V0ZWlsdCwgZC5oLiA2MCAlIGbDvHIgCm1pY2ggdW5kIDQwICUgZsO8ciBTaWUu
IEJpdHRlIGtvbnRha3RpZXJlbiBTaWUgbWljaCB1bWdlaGVuZCBmw7xyIAp3ZWl0ZXJlIEluZm9y
bWF0aW9uZW4uCgpHcsO8w59lCk11c3RhZmEgQXl2YXouCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=

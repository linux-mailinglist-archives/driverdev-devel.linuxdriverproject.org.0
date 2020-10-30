Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7972A12F1
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Oct 2020 03:39:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED02F873E6;
	Sat, 31 Oct 2020 02:39:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IUmgu0C8yVAB; Sat, 31 Oct 2020 02:39:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76F2B86EB0;
	Sat, 31 Oct 2020 02:39:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F66F1BF36B
 for <devel@linuxdriverproject.org>; Sat, 31 Oct 2020 02:39:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 70C4C2E24B
 for <devel@linuxdriverproject.org>; Sat, 31 Oct 2020 02:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z6sKQztA9f9z for <devel@linuxdriverproject.org>;
 Sat, 31 Oct 2020 02:39:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from server.msgroupspa.com (unknown [185.149.113.111])
 by silver.osuosl.org (Postfix) with ESMTPS id 3F64A2E22E
 for <devel@driverdev.osuosl.org>; Sat, 31 Oct 2020 02:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=msgroupspa.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 Message-ID:Reply-To:Subject:To:From:Date:MIME-Version:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gOeEglh1DIJatPKqyvOsPs4e0Zw8Lzg9wwjnNfQdiM8=; b=nK3IDYT+DT+afspoRk1vnh030x
 JBANriWCpwGFqkJTHXsxgXz4zPu7XOm+ROYW+1LhSp6Xws1Wm9Gxv0Soi++3fpbt9358vEM1Vilpv
 5xlCNIs/Y8Yak5vs3SvhE9OTE/TC6Vf04ze0iphAaRgUliWRhAsWS8s68bwFyUv4tdChHxOH/JwR2
 Vv+jWIv637j1UH3aZ6QLvXZrjdEmRucUTVxZtH4VnCDjrc4XZi9EwE5rzVsYDmyiNG+eYB+1QY+/8
 bPWWeacOm9DyYRD9g3bLyiVv0uincEH4/sdJ6fuUSabQfGsi095GX6rsmNCONVo4/rhE4INecsjOZ
 9QdrBN4A==;
Received: from [::1] (port=55352 helo=server.msgroupspa.com)
 by server.msgroupspa.com with esmtpa (Exim 4.93)
 (envelope-from <no-reply@msgroupspa.com>)
 id 1kYPRU-0006Ky-OT; Fri, 30 Oct 2020 16:07:24 +0800
MIME-Version: 1.0
Date: Fri, 30 Oct 2020 16:07:24 +0800
From: "Mr. John Galvan" <no-reply@msgroupspa.com>
To: undisclosed-recipients:;
Subject: Hello/Hallo
User-Agent: Roundcube Webmail/1.4.8
Message-ID: <8970d4ac30f8022b0ae628d9b69a2d43@msgroupspa.com>
X-Sender: no-reply@msgroupspa.com
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.msgroupspa.com
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - msgroupspa.com
X-Get-Message-Sender-Via: server.msgroupspa.com: authenticated_id:
 no-reply@msgroupspa.com
X-Authenticated-Sender: server.msgroupspa.com: no-reply@msgroupspa.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
Reply-To: galvan.johnny@outlook.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgotLSAKU2lyL01hZGFtLAoKSSBoYXZlIGFjY2VzcyB0byB2ZXJ5IHZpdGFsIGluZm9ybWF0aW9u
IHRoYXQgY2FuIGJlIHVzZWQgdG8gbW92ZSBhIGh1Z2UgCmFtb3VudCBvZiBtb25leS4gSSBoYXZl
IGRvbmUgbXkgaG9tZXdvcmsgdmVyeSB3ZWxsIGFuZCBJIGhhdmUgdGhlIAptYWNoaW5lcmllcyBp
biBwbGFjZSB0byBnZXQgaXQgZG9uZSBzaW5jZSBJIGFtIHN0aWxsIGluIGFjdGl2ZSBzZXJ2aWNl
LiAKSWYgaXQgd2FzIHBvc3NpYmxlIGZvciBtZSB0byBkbyBpdCBhbG9uZSBJIHdvdWxkIG5vdCBo
YXZlIGJvdGhlcmVkIApjb250YWN0aW5nIHlvdS4gVWx0aW1hdGVseSBJIG5lZWQgYW4gaG9uZXN0
IGZvcmVpZ25lciB0byBwbGF5IGFuIAppbXBvcnRhbnQgcm9sZSBpbiB0aGUgY29tcGxldGlvbiBv
ZiB0aGlzIGJ1c2luZXNzIHRyYW5zYWN0aW9uLiBTZW5kIApyZXNwb25kcyB0byB0aGlzIGVtYWls
OsKgZ2FsdmFuLmpvaG5ueUBvdXRsb29rLmNvbQoKUmVnYXJkcywKSm9obiBHYWx2YW4KCi0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQoKU2lyIC8gTWFkYW0sCgpJY2ggaGFiZSBadWdhbmcgenUgc2VociB3aWNodGlnZW4gSW5mb3Jt
YXRpb25lbiwgbWl0IGRlbmVuIGljaCBlaW5lIApncm/Dn2UgTWVuZ2UgR2VsZCBiZXdlZ2VuIGth
bm4uIEljaCBoYWJlIG1laW5lIEhhdXNhdWZnYWJlbiBzZWhyIGd1dCAKZ2VtYWNodCB1bmQgaWNo
IGhhYmUgZGllIE1hc2NoaW5lbiwgdW0gc2llIHp1IGVybGVkaWdlbiwgZGEgaWNoIGltbWVyIApu
b2NoIGltIGFrdGl2ZW4gRGllbnN0IGJpbi4gV2VubiBlcyBtaXIgbcO2Z2xpY2ggZ2V3ZXNlbiB3
w6RyZSwgZXMgYWxsZWluZSAKenUgdHVuLCBow6R0dGUgaWNoIG1pY2ggbmljaHQgZGFydW0gZ2Vr
w7xtbWVydCwgU2llIHp1IGtvbnRha3RpZXJlbi4gCkxldHp0ZW5kbGljaCBicmF1Y2hlIGljaCBl
aW5lbiBlaHJsaWNoZW4gQXVzbMOkbmRlciwgZGVyIGVpbmUgd2ljaHRpZ2UgClJvbGxlIGJlaW0g
QWJzY2hsdXNzIGRpZXNlcyBHZXNjaMOkZnRzdm9yZ2FuZ3Mgc3BpZWx0LiBTZW5kZW4gU2llIApB
bnR3b3J0ZW4gYXVmIGRpZXNlIEUtTWFpbDogZ2FsdmFuLmpvaG5ueUBvdXRsb29rLmNvbQoKR3LD
vMOfZSwKSm9obiBHYWx2YW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==

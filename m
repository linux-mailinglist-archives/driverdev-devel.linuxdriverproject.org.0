Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E7A419467
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Sep 2021 14:38:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A64EF607EB;
	Mon, 27 Sep 2021 12:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id efnf4_IrKJXb; Mon, 27 Sep 2021 12:38:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 861B4607E8;
	Mon, 27 Sep 2021 12:38:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D5C01BF28B
 for <devel@linuxdriverproject.org>; Mon, 27 Sep 2021 12:38:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5507C607E8
 for <devel@linuxdriverproject.org>; Mon, 27 Sep 2021 12:38:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9psp2i9tEVZ0 for <devel@linuxdriverproject.org>;
 Mon, 27 Sep 2021 12:38:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2628B607E5
 for <devel@driverdev.osuosl.org>; Mon, 27 Sep 2021 12:38:29 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id u18so75411140lfd.12
 for <devel@driverdev.osuosl.org>; Mon, 27 Sep 2021 05:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=62Bh+1DrjA/HuMy/QdakWs/fG3VoyR0z7thxmdI6jms=;
 b=Ohth4k+4ODTxjaQMokc6lGOJoTs96wA8IYjUg4RnTXYM65pS1Q44TMCQ+BdYmfsOrU
 iVSSnTTF1umsrf40JMJWVH1xKzT1mY55HmEok7yUKcl8M9hmFZM2EH3pn+iNVqUBIbhr
 F7Qt4A2RQOu8YXgDd9dyXY0JTjYtPDqGkqFgMeS3CjAIo5LYaHn0xu33ZoaLWpaLTxvs
 JtdqILi8r2Q1/dwPJLlTQihE7C3Uz7yq03fd0zIOwnQ9fyaNECSudkP4iwWdvJnSMz2E
 Fv1u9MsKGj6Ma9HvzislTTMWpe+axo8cIajeniZCXCjTu6URXt21G1ajYEyRNnlXFBkk
 i72A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=62Bh+1DrjA/HuMy/QdakWs/fG3VoyR0z7thxmdI6jms=;
 b=zdx7ebgtEg5i/hwL24WG10mcrZJ0E7/yQqLtGO3mrZZ+gCaQDcISagDkwwYGRpysa+
 iQufhbgvheN92TiTqX26uDaBG2tkmWsvfZrc9xsq8JUJUr16xMpje0UM1I1D+k9hQM+a
 XfkrDaunL4Pw56hoA1c/YPl2bm9Gj/z0MJ+uxy0xBFIr03k/PS3LFadwIvcZCwSK3yJd
 IhSQc6MzSqWk7Yjn76Go/iQMvJfKnX11F111drHl7Ujr5NmTce9CEKQcnheHhs5dyW7B
 XQy0eHA12XkqmGd3nhCagavnBLQHnWRqY2OsSvXT+XhFhrGoTrCC+dlm6DJXOiOVGK5R
 0YzA==
X-Gm-Message-State: AOAM532eLNZdXDhReJkEJ2eh8E0Ki2UjnPsCM6YLT9B+CMIA9ntf+vRC
 XpYKhHPhGLMf1EZ20U1BbG00GrDvXrIQ7popTBc=
X-Google-Smtp-Source: ABdhPJxBa2xzprN3IY8ZBVbZCWOkwTqYcVPkFoT36nz3FP9bnFlXMZoPVNTOMTR/hQgGy3vY3Aey67+ICThwa0XqR1M=
X-Received: by 2002:ac2:5e9c:: with SMTP id b28mr24352377lfq.405.1632746305799; 
 Mon, 27 Sep 2021 05:38:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9a:5d93:0:b0:13e:8895:d0a4 with HTTP; Mon, 27 Sep 2021
 05:38:25 -0700 (PDT)
From: mrsnicole apollonia <mrsnicoleapollonia666@gmail.com>
Date: Mon, 27 Sep 2021 12:38:25 +0000
Message-ID: <CAApT8_DTSzbWwJHqdVQk==97YApU2L4vVjH7S8OFn7RBxRdNGQ@mail.gmail.com>
Subject: I NEED YOUR URGENT RESPONSE AND TRUST,
To: undisclosed-recipients:;
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
Reply-To: mrsnicoleapollonia92@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBmcmllbmQsCgpNeSBuYW1lIGlzIE1ycy4gTmljb2xlIEFwb2xsb25pYW4sIGZyb20gKFBh
cmlzKSBGcmFuY2UuIEkgaGF2ZSBiZWVuCnN1ZmZlcmluZyBmcm9tIG92YXJpYW4gY2FuY2VyIGRp
c2Vhc2UgYW5kIHRoZSBkb2N0b3Igc2F5cyB0aGF0IEkgaGF2ZQpqdXN0IGEgc2hvcnQgdGltZSB0
byBsaXZlLiBGb3IgdGhlIHBhc3QgVHdlbHZlIHllYXJzLCBJIGhhdmUgYmVpbmcKZGVhbGluZyBv
biBnb2xkIGV4cG9ydGF0aW9uLCBiZWZvcmUgZmFsbGluZyBpbGwgZHVlIHRvIHRoZSBDYW5jZXIu
CgpNeSBsYXRlIGh1c2JhbmQsIERyLiBCZW5vaXQga2Fib3JlLGEgcmV0aXJlZCBkaXBsb21hdCBh
bmQgb25lIHRpbWUKbWluaXN0ZXIgb2YgbWluZXMgYW5kIFBvd2VyIGluIHRoZSByZXB1YmxpYyBv
ZiBCdXJraW5hIEZhc28gbWFkZSBhIGxvdApvZiBtb25leSBmcm9tIHRoZSBzYWxlcyBvZiBHb2xk
IGFuZCBjb3R0b24gd2hpbGUgaGUgd2FzIGEgbWluaXN0ZXIsCmJ1dCB3ZSBoYWQgbm8gY2hpbGQg
b2Ygb3VyIG93bi5teSBsYXRlciBodXNiYW5kIHJlYWxpemVkIHRocm91Z2ggYQpwb3dlcmZ1bCBt
YW4gb2YgR29kIHRoYXQgaXQgd2FzIGV2aWwgY291cnNlIGluc3RpdHV0ZWQgYnkgaGlzIGJyb3Ro
ZXIKaW4gb3RoZXIgdG8gaW5oZXJpdCBoaXMgd2VhbHRoLCBidXQgYmVmb3JlIHRoZW4gaXQgd2Fz
IHRvbyBsYXRlLCBJIGFuZApteSBodXNiYW5kIGFncmVlZCB0aGF0IGhlIHNob3VsZCByZW1hcnJ5
IGFub3RoZXIgd2lmZSBidXQgb3VyIHJlbGlnaW9uCmRpZCBub3QgcGVybWl0IGl0LCB3aGlsZSBw
bGFubmluZyB0aGlzIG15IGh1c2JhbmTigJlzIGJyb3RoZXIgaGVhcmQgaXQKYW5kIHRoZXkgcGxh
bm5lZCBhbmQga2lsbGVkIG15IGh1c2JhbmQgYXQgdGhlIGFnZSBvZiA1NiwgaGUgZGllZCBpbgp0
aGUgbW9udGggb2YgU2VwdGVtYmVyIDIwMDcKCk5vdyB0aGF0IEkgYW0gdmVyeSBzaWNrIGFuZCBh
Y2NvcmRpbmcgdG8gdGhlIGRvY3RvcixpIHdpbGwgbm90IHN1cnZpdmUKdGhlIHNpY2tuZXNzLlRo
ZSB3b3JzdCBvZiBpdCBhbGwgaXMgdGhhdCBJIGRvIG5vdCBoYXZlIGFueSBmYW1pbHkKbWVtYmVy
cyBvciBjaGlsZHJlbiB0byBpbmhlcml0IG15IHdlYWx0aC5JIGFtIHdyaXRpbmcgdGhpcyBsZXR0
ZXIgbm93CnRocm91Z2ggdGhlIGhlbHAgb2YgdGhlIGNvbXB1dGVyIGJlc2lkZSBteSBzaWNrIGJl
ZC5JIGhhdmUgKCQxMC41Ck1pbGxpb24gVVMgRG9sbGFycykgZGVwb3NpdGVkIGluIEVjby1CYW5r
IGhlcmUgaW4gQnVya2luYSBGYXNvIGFuZCBJCmFtIHdpbGxpbmcgdG8gaW5zdHJ1Y3QgbXkgYmFu
ayB0byB0cmFuc2ZlciB0aGUgZnVuZCB0byB5b3UgYXMgbXkKZm9yZWlnbiBUcnVzdGVlLllvdSB3
aWxsIGFwcGx5IHRvIHRoZSBiYW5rLCB0aGF0IHRoZXkgc2hvdWxkIHJlbGVhc2UKdGhlIGZ1bmQg
dG8geW91LCBidXQgeW91IHdpbGwgYXNzdXJlIG1lIHRoYXQgeW91IHdpbGwgdGFrZSA1MCUgb2Yg
dGhlCmZ1bmQgYW5kIGdpdmUgNTAlIHRvIHRoZSBvcnBoYW5hZ2VzIGhvbWUgaW4geW91ciBjb3Vu
dHJ5IGZvciBteSBzb3VsCnRvIHJlc3QgYWZ0ZXIgaSBoYXZlIGdvbmUuSW4gbXkgbmV4dCBlbWFp
bCwgSSB3aWxsIHNlbmQgeW91IHRoZSBjb3B5Cm9mIHRoZSBDZXJ0aWZpY2F0ZSBvZiBEZXBvc2l0
IHdoaWNoIHdpbGwgZW5hYmxlIHlvdSBhcHBseSB0byB0aGUgYmFuawphbmQgcmVjZWl2ZSB0aGUg
bW9uZXkgd2l0aCBubyBjYXNlLlJlc3BvbmQgdG8gbWUgaW1tZWRpYXRlbHkgZm9yCmZ1cnRoZXIg
ZGV0YWlscyBhbmQgaW5zdHJ1Y3Rpb25zIHNpbmNlIEkgYW0gaW4gdGhlIGVuZCB0aW1lcyBvZiBt
eQpsaWZlIGR1ZSB0bwp0aGUgb3ZhcmlhbiBjYW5jZXIgZGlzZWFzZS5Ib3BpbmcgdG8gcmVjZWl2
ZSB5b3VyIHJlc3BvbnNlIGFzIHNvb24gYXMgcG9zc2libGUuCgpZb3VycyBGYWl0aGZ1bGx5LApN
cnMuIE5pY29sZSBBcG9sbG9uaWEsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=

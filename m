Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B3EEC1085F5
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Nov 2019 01:34:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76D39863D5;
	Mon, 25 Nov 2019 00:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lfWxoJffiLL9; Mon, 25 Nov 2019 00:34:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA3B8860A3;
	Mon, 25 Nov 2019 00:34:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CAA561BF95C
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 00:34:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 916B88573E
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 00:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YS5jnwL8tyQW for <devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 00:34:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F290A85B9D
 for <devel@driverdev.osuosl.org>; Mon, 25 Nov 2019 00:34:14 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id l14so11055698oti.10
 for <devel@driverdev.osuosl.org>; Sun, 24 Nov 2019 16:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=m4t9YVjynZf0AR8Va6Z1la9JyW9CTSQufaX/nbf2sfA=;
 b=PWUaSZDPvqv4PrLtDvHCBjoC9k2Wv9/boTHtiOzcBiyJRrn+LS7w9Py70afmDFOxlE
 a2hjqbjgyz6VRLyIsvBnQS0nWbJj55WqBDe4QlkR242ltZWnj2R4QlaJaVT0SoKyvZqH
 7pW1r/u/ClJaimtf/FpN716DqUlzGN4vghk0M4Lq8M4KLIsIv2AE6nDXC//sWr2+eb+v
 ckNiZNpwsZEvtYgnVICD0E6oFeudBVV0AgxCbkJSWB16+RcYT7XQlqCz2Ii4V0+nN9gb
 vckiwOJ/ILrQZmZS21hyR2dSCVqL8CJG4mFEnKDJgMJ5CKTgnlwc1OWyji2rtpSagfW1
 kR9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=m4t9YVjynZf0AR8Va6Z1la9JyW9CTSQufaX/nbf2sfA=;
 b=bC4YfNfMkglImpVWi4KKAi85j/YWP6aIYeZ/cWeQ+dafjUxA2uTC092S0p57ueX+R0
 mydQsEOinksSYAImtWzjwLtZaFhOyRKMPO1jI18FX0IEmr4roAoo/nVG9k5kp7quEXJv
 XsBY1BBT36yyFB86v7X2GemJt3/9H0BafLqoisVzz1VEf10gvnYFvKeks+cLc+KSBAmd
 8KCLKKfatCWq2iF+1gi3u0u3jx9ORKCxQVlLm9MaMsSXwYybwGO7SFVU6fUeS3ePZWtn
 CHitoo8RjxJ9lfqjpY//QE+DCOgeWBv4HHZYQMEtFgirWchjGsNasdNTyoEKyK0BFAZD
 hFig==
X-Gm-Message-State: APjAAAXG/qDwApRnmygpRudpUmli+xkTzj9ZgiiYF6z2evPe9fzWiS3F
 U1JOhtlteY8l+F1pKAAkVzqxvwZTgUUG/KeYppk=
X-Google-Smtp-Source: APXvYqz6+j2p8SSfTXVblZs6eARAJoC0S6MkpS4daZLQ2xzPwvgaNoyLsell/XFBJIpH7hGewAkbCalZsIWuZX5UuiE=
X-Received: by 2002:a9d:3782:: with SMTP id x2mr17968626otb.21.1574642054251; 
 Sun, 24 Nov 2019 16:34:14 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac9:1287:0:0:0:0:0 with HTTP; Sun, 24 Nov 2019 16:34:13
 -0800 (PST)
From: AISHA GADDAFI <mahasaliou95@gmail.com>
Date: Sun, 24 Nov 2019 16:34:13 -0800
Message-ID: <CAON_=owDKh__ygkQsYZyZmpJWm9n2YrDejaxiBU4zk2-2ugcJA@mail.gmail.com>
Subject: Lieber Freund (Assalamu Alaikum),
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
Reply-To: aishagaddafi969@aol.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkxpZWJlciBGcmV1bmQgKEFzc2FsYW11IEFsYWlrdW0pLAoKSWNoIGJpbiB2b3IgZWluZXIg
cHJpdmF0ZW4gU3VjaGUgYXVmIElocmVuIEUtTWFpbC1Lb250YWt0IGdlc3Rvw59lbgpJaHJlIEhp
bGZlLiBNZWluIE5hbWUgaXN0IEFpc2hhIEFsLVFhZGRhZmksIGFsbGVpbmVyemllaGVuZGUgTXV0
dGVyIHVuZCBXaXR3ZQptaXQgZHJlaSBLaW5kZXJuLiBJY2ggYmluIGRpZSBlaW56aWdlIGJpb2xv
Z2lzY2hlIFRvY2h0ZXIgZGVzIHNww6R0ZW4gTGlieWVycwpQcsOkc2lkZW50IChPYmVyc3QgTXVh
bW1hciBHYWRkYWZpKS4KCkljaCBoYWJlIEludmVzdG1lbnRmb25kcyBpbSBXZXJ0IHZvbiBzaWVi
ZW51bmR6d2FuemlnIE1pbGxpb25lbiB1bmQKZsO8bmZodW5kZXJ0dGF1c2VuZApVbml0ZWQgU3Rh
dGUgRG9sbGFyICgyNy41MDAuMDAwLDAwICQpIHVuZCBpY2ggYnJhdWNoZSBlaW5lCnZlcnRyYXVl
bnN3w7xyZGlnZSBJbnZlc3RpdGlvbgpNYW5hZ2VyIC8gUGFydG5lciB3ZWdlbiBtZWluZXMgYWt0
dWVsbGVuIEZsw7xjaHRsaW5nc3N0YXR1cyBiaW4gaWNoIGplZG9jaApJbnRlcmVzc2UgYW4gSWhu
ZW4gZsO8ciBkaWUgVW50ZXJzdMO8dHp1bmcgdm9uIEludmVzdGl0aW9uc3Byb2pla3RlbiBpbgpJ
aHJlbSBMYW5kLCBrYW5uIHNlaW4KVm9uIGRvcnQgYXVzIGvDtm5uZW4gd2lyIGluIG7DpGNoc3Rl
ciBadWt1bmZ0IGVpbmUgR2VzY2jDpGZ0c2JlemllaHVuZyBhdWZiYXVlbi4KCkljaCBiaW4gZ2Vy
bmUgYmVyZWl0LCBtaXQgSWhuZW4gZGFzIFZlcmjDpGx0bmlzIGRlciBCZXRlaWxpZ3VuZ3NxdW90
ZSB6dSB0ZWlsZW4Kc3TDvHR6ZW4gU2llIHNpY2ggYXVmIGRpZSB6dWvDvG5mdGlnZW4gSW52ZXN0
aXRpb25lbiwgZGllIEdld2lubmUgZXJ6aWVsZW4uCgpXZW5uIFNpZSBiZXJlaXQgc2luZCwgZGll
c2VzIFByb2pla3QgaW4gbWVpbmVtIE5hbWVuIGR1cmNoenVmw7xocmVuLAphbnR3b3J0ZW4gU2ll
IGJpdHRlIGRyaW5nZW5kCkRhbWl0IGljaCBJaG5lbiBtZWhyIEluZm9ybWF0aW9uZW4gw7xiZXIg
ZGllIEludmVzdG1lbnRmb25kcyBnZWJlbiBrYW5uLgoKSWhyZSBkcmluZ2VuZGUgQW50d29ydCB3
aXJkIGdlc2Now6R0enQuIFNjaHJlaWJlbiBTaWUgbWlyIGFuIGRpZXNlCkUtTWFpbC1BZHJlc3Nl
ICgKYWlzaGFnYWRkYWZpOTY5QGFvbC5jb20gKSB6dXIgd2VpdGVyZW4gRGlza3Vzc2lvbi4KCkZy
ZXVuZGxpY2hlIEdyw7zDn2UKRnJhdSBBaXNoYSBBbC1HYWRkYWZpCkFudHdvcnQgYW46IGFpc2hh
Z2FkZGFmaTk2OUBhb2wuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=

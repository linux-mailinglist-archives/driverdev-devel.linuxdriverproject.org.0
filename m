Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0747BED6CC
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 02:11:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A906895F0;
	Mon,  4 Nov 2019 01:11:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nUWwbXx7VPzI; Mon,  4 Nov 2019 01:11:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22109895CE;
	Mon,  4 Nov 2019 01:11:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C86DA1BF42D
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:11:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C3205895AF
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 01:11:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h2l80gh7l0PA for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 01:11:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B49E5895A5
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 01:11:23 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id w3so9507746edt.2
 for <devel@driverdev.osuosl.org>; Sun, 03 Nov 2019 17:11:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=115n8fVPcb6FFdMlLEXy4f+oj6Xj6AxVK8mXd42SbSI=;
 b=ApuGL7YrxLM8BftgAodrbFbSCfEfLNrPAl6GiUucaSBDob6MxzJ0VQWbc7zvSs083O
 yv2jvt+2cQiu+x4yDRL3unQbs7903MuL/sWKPxqvPqV9SCq+Em9+buwdhR1oJbp4toNR
 uWbKNLUYJXCx4dmH2AhXy90wNlGscOrdEj2HzwcCVNGNJWtXpOqo14Sjx54fkRcqbjtn
 CvHDN2lELU7aj4T7uJMl0Rkm7yezfkUUNLkttInukMCzA1xhRgg4fiYFI6g9EuyQ1kxc
 z63DjMhnrk+o5RCt5+JdjK2rD5s1LBNNgE7Nx/xhx2YQ/kNHbLUkOJgwuqFQjsuySJQm
 mg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=115n8fVPcb6FFdMlLEXy4f+oj6Xj6AxVK8mXd42SbSI=;
 b=lpEi0RSVGSMsF19zniHbBLKJY9uC44oHAmIfVNeohYME7p868TbjZZLo9vszwJCvKK
 zhAlDpXm3tYPq7FHiMFNy41g3qr19bBs3L+ebMDMuE87mFV6+afX2RXW79Sg55on5zr1
 hr9gWMNqjZQzjYadNtEFvnI5MLYtakuricN9pt7pYTgG2rXYwEO3xAgWZiXV+hyo/vbe
 FaqiNcJtuYqz6zVbnIIqUaSONQXoIXfqMwdbl3jJBprreAyvM3xZ+wiMYO+KjPNg3/u3
 lggJiQrooJkirct24Rt3kwHRqpHCTMNmzdwc92Jb/HjKEQH1Id4CIoUmHo5zW6E359uG
 SfZg==
X-Gm-Message-State: APjAAAWiDOBc7H8quqdF/vlPTIKm/8thCPL7bpNPMu6mRd4LIStHRgli
 j1j/gMuTxERFHH2CrMVLqdSztJNc1hU2TMPjk4A=
X-Google-Smtp-Source: APXvYqxQL8eD9tqZ59qkYETdKJG6UR5FKbad3gaVNFYHgJxdi2eT2l+dlAMUEYNYebVm1dJQ/OpbQAB0yi9MqlCkl7w=
X-Received: by 2002:a17:906:af62:: with SMTP id
 os2mr13988646ejb.105.1572829882046; 
 Sun, 03 Nov 2019 17:11:22 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6402:48d:0:0:0:0 with HTTP; Sun, 3 Nov 2019 17:11:21
 -0800 (PST)
From: Aisha Gddafi <aishagddafi6800@gmail.com>
Date: Sun, 3 Nov 2019 17:11:21 -0800
Message-ID: <CAFdvC6PvyrpyiJsXCak7gSDhs-8WDfCgErSccb0KLRO4rTsYRQ@mail.gmail.com>
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
Reply-To: ayishagddafio@mail.com
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
ICgKYXlpc2hhZ2RkYWZpb0BtYWlsLmNvbSApIHp1ciB3ZWl0ZXJlbiBEaXNrdXNzaW9uLgoKRnJl
dW5kbGljaGUgR3LDvMOfZQpGcmF1IEFpc2hhIEFsLUdhZGRhZmkKQW50d29ydCBhbjogYXlpc2hh
Z2RkYWZpb0BtYWlsLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK

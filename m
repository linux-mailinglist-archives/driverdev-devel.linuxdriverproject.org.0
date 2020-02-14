Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B86B715DC08
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Feb 2020 16:52:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D7C8C204D1;
	Fri, 14 Feb 2020 15:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cxhqRgXcNM64; Fri, 14 Feb 2020 15:52:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7C19A21FF6;
	Fri, 14 Feb 2020 15:52:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7BB601BF3FE
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 15:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6CF8187659
 for <devel@linuxdriverproject.org>; Fri, 14 Feb 2020 15:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZysPhEgoDtUJ for <devel@linuxdriverproject.org>;
 Fri, 14 Feb 2020 15:52:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DE60A8764F
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 15:52:06 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id f2so879606pjq.1
 for <devel@driverdev.osuosl.org>; Fri, 14 Feb 2020 07:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=IpCZSXAx8owBqHw3Ciq2qWIWID0wZsvtrxLFPPxTd8w=;
 b=Sz/uCQkrlNLMIyVTrqeeLApJsKMFLdaIdC6GwIdgthRaUzvoM0JNSYjFAYycyMplUp
 M2vU8fzLFgIVHDWMjYzJxc+mSfDNl5RX7J1wiyHU+t9fnEbIbs7+6h8UlvWnYKlK/MAu
 4S/BN45C8qB1DpCYeCHUmp5l3TWAOuFVnTZPpUmL4bbs8IUe6iuu1piCBVwaNBhBoff1
 8UKGnUGMLy71Ri6bC8wpyBs2kRGs25wjQJ5tX4voCdyssqWLIs0L5K8qvKVrJihPkWF4
 X1AHJlroMMy9n3EjHeD45O8eq2E2iZFZe9FjhJpdPi2gAb7ddzG4NtXRxjUJWt/yH6Ty
 jvSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=IpCZSXAx8owBqHw3Ciq2qWIWID0wZsvtrxLFPPxTd8w=;
 b=cS0AVRzCpD1RnUeul7c45p3dNvawgaCU631qhFKCQe+WmKnjzr5ADvKqoejIh0KHQS
 m4hit5RqmrSsySQeZFhhnYjtZRK38MbuxHga/BUdRlD1UhYqY1dezAGUS2+LyydMjRVR
 MHRT81aw8s5ebUgFgeIo9QtqHfNaCmZb5mvkD2YqFlDKgXZplRaUfr6ieGdWdxwlqb6V
 Z9nCoUhyjT1xE0mm4Fm0jEEjHNoeyJC1R2wU+gla9ZDvf99ZL7Pruk1jNrCmU2XT7moY
 JBJZaPquAo0Is50OUCqnkIgpnQEYvzUy0ieMMG16yzB2JYoTQSbzapTBVJqXrc8l1noE
 FQ9Q==
X-Gm-Message-State: APjAAAV/dyxTivEVLgxqS6kLObcGY36o+PEj3hyK/Xq4Qs1QtrjcbOQu
 Cpnj3yE5xIAugezjLJ5nkEID+2KbXPClAmcR9zw=
X-Google-Smtp-Source: APXvYqwSM0Ql5SH2pfUB91qlYK4BldlNU54w/I2vQaakY+lN7zn8m6Lh4S2KXYNUPde1u+QLyA8l8emCc+myUu0GxTU=
X-Received: by 2002:a17:90a:20aa:: with SMTP id
 f39mr4451732pjg.35.1581695526398; 
 Fri, 14 Feb 2020 07:52:06 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90b:30d7:0:0:0:0 with HTTP; Fri, 14 Feb 2020 07:52:05
 -0800 (PST)
From: David Abula <marcels1954@gmail.com>
Date: Fri, 14 Feb 2020 15:52:05 +0000
Message-ID: <CADUkOXbdMk-0E-bw9irCAGHKyQDXeqTRYb_3FzgwezvMqYBNjQ@mail.gmail.com>
Subject: RE
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
Reply-To: davidabulatg1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGFsbG8sClNjaMO2bmVuIFRhZywKQml0dGUgbmVobWVuIFNpZSBtZWluZSBhdWZyaWNodGlnZW4g
R2zDvGNrd8O8bnNjaGUgYW4gdW5kIGljaCB3ZWnDnywgZGFzcwpkaWVzZSBCb3RzY2hhZnQgU2ll
IMO8YmVycmFzY2hlbiBrYW5uLCBhYmVyIGljaCByYXRlIElobmVuLCBzaWUgbWl0Cmd1dGVtIFZl
cnN0w6RuZG5pcyB6dSBsZXNlbi4gSWNoIGJpbiBSZWNodHNhbndhbHQgRGF2aWQgQWJ1bGEgYXVz
IFRvZ28uCkRhaGVyIGdpYnQgZXMgZWluZW4gYmVzdGltbXRlbiBCZXRyYWcgdm9uIDExLDcgTWlv
LiBVU0QsIGRlciB2b24KbWVpbmVtIHZlcnN0b3JiZW5lbiBLdW5kZW4sIGVpbmVtIFN0YWF0c2LD
vHJnZXIgSWhyZXMgTGFuZGVzLCBkZXIgdm9yCmVpbmlnZW4gSmFocmVuIGhpZXIgaW4gbWVpbmVt
IExhbmQgZ2VzdG9yYmVuIGlzdCwgw7xicmlnIGdlYmxpZWJlbiBpc3QuCkthbm4gaWNoIElobmVu
IHZlcnRyYXVlbiwgZGFzcyBTaWUgbWl0IElobmVuIHp1c2FtbWVuYXJiZWl0ZW4sIHVtIGRlbgpH
ZXNhbXRiZXRyYWcgdm9uIDExLDcgTWlvLiBVU0QgYXVmIElociBLb250byBpbiBJaHJlbSBMYW5k
IHp1CsO8YmVyd2Vpc2VuPyB1bmQgbmFjaGRlbSB3aXIgZGVuIEdlc2FtdGZvbmRzIHp1IDUwJSBi
aXMgNTAlIGdldGVpbHQKaGFiZW4uIEF1w59lcmRlbSBpc3QgbWVpbmUgRnJhdSBrcmFuayB1bmQg
aWNoIG11c3Mgc2llIGlucyBLcmFua2VuaGF1cwppbSBBdXNsYW5kIGZsaWVnZW4sIGRhaGVyIG3D
tmNodGUgaWNoIHp1bSBFcmZvbGcgZGllc2VyIFRyYW5zYWt0aW9uCmdlbGFuZ2VuLCBkYW1pdCBp
Y2ggbWl0IGRlbSB3ZWl0ZXJtYWNoZW4ga2FubiBCZWhhbmRsdW5nIG1laW5lciBGcmF1Cldlbm4g
U2llIEludGVyZXNzZSBoYWJlbiwgbWl0IG1pciB6dXNhbW1lbnp1YXJiZWl0ZW4sIGVtcGZlaGxl
IGljaApJaG5lbiwgbWlyIGluIG1laW5lciBFLU1haWwtQWRyZXNzZSB6dSBhbnR3b3J0ZW4sIG9k
ZXIgU2llIGdlYmVuIG1pcgpJaHJlIEUtTWFpbC1BZHJlc3NlLCBkYW1pdCBpY2ggSWhuZW4gZGll
IHZvbGxzdMOkbmRpZ2VuIERldGFpbHMgw7xiZXIKZGllIFRyYW5zYWt0aW9uIHNlbmRlbiBrYW5u
LCBkYW1pdCBTaWUga2FubiBtaXQgbWlyIGxlc2VuIHVuZCB6dSBlaW5lbQpndXRlbiBWZXJzdMOk
bmRuaXMga29tbWVuLiBBbnR3b3J0ZW4gU2llIG1pciBhdWYgbWVpbmUgRS1NYWlsLUFkcmVzc2UK
KGRhdmlkYWJ1bGF0ZzFAZ21haWwuY29tKS4gVmllbGVuIERhbmsgdW5kIGljaCB3YXJ0ZSBhdWYg
SWhyZQpzb2ZvcnRpZ2UKQW50d29ydC4KTWl0IGZyZXVuZGxpY2hlbiBHcsO8w59lbiwKUmVjaHRz
YW53YWx0IERhdmlkIEFidWxhClRlbGVmb246ICsyMjg5MDcxMjE4OApkYXZpZGFidWxhdGcxQGdt
YWlsLmNvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK

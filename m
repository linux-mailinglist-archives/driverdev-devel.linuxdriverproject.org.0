Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9A047760F
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Dec 2021 16:37:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E781B40B37;
	Thu, 16 Dec 2021 15:37:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zv7AXUHQOjMX; Thu, 16 Dec 2021 15:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9499840B27;
	Thu, 16 Dec 2021 15:37:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F36CB1BF3BF
 for <devel@linuxdriverproject.org>; Thu, 16 Dec 2021 15:37:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DB61F40B27
 for <devel@linuxdriverproject.org>; Thu, 16 Dec 2021 15:37:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E2JZtEtLUi7Z for <devel@linuxdriverproject.org>;
 Thu, 16 Dec 2021 15:37:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com
 [IPv6:2607:f8b0:4864:20::32d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9520D400D1
 for <devel@driverdev.osuosl.org>; Thu, 16 Dec 2021 15:37:29 +0000 (UTC)
Received: by mail-ot1-x32d.google.com with SMTP id
 n17-20020a9d64d1000000b00579cf677301so29397623otl.8
 for <devel@driverdev.osuosl.org>; Thu, 16 Dec 2021 07:37:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=5ELhc8/aZCbsDztqXXKQeUc8BkABjFmel9iGt8HoW10=;
 b=gCW+IGJqLBGT61EOEdzBPtd74V2o4UHlpTCF4RpgDPdC2JCeKUm9kJ4uhtoDzhIeR1
 rLMIVHWvifXihSuKiGJzOw4PgSwdIbhvI95YjbyRBL8sasTkjWcXvzGV1/VwZa8FF0Ue
 EctecTM3TWKzF3/LnhiAVicJFzK+NEh7jZV/BMf9Ubgtl36Lfe455zuGBYeivJetsHLZ
 BDTn34II5n4ONkW2kzIeACUO7DZ9zJEOl/Ver/cMSniOC3LThDLtI0JPApRbjc/6g6Qg
 j92yNQoj0chFQ6rO3W8GS5bSYegXgUhkFkJtRwEJdnn+iAtBxyxG1WEcRwcVZ997EiB5
 tEfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=5ELhc8/aZCbsDztqXXKQeUc8BkABjFmel9iGt8HoW10=;
 b=MAQQI8ZY1KbZsjV85HBHXd2ldS8LBJjnq8J4mN/nlgYEE9UzS23qjZiRADJmwFMVO4
 Ks2wJHG5E4WA9xfAjMY9YFlohbY467bd492Wxw7ZMUHdNihqmv4DvBiT7jhNDiQfx5Nu
 DkC88bwzsLlsBzw6gIFh/WcQClUW7wfsSpgTSCk/Y+IawqKam5AZ8u6ReQeC+rKUYBw+
 fBvl/QVD8eljLW9uuyZcmAZls+Oc1I9G1BOLRVpCVOavR0m5GKOTeEM0av5F+XxuTlcn
 swZ90Anl3KuVQa/dAyc9OdhHLokD5aVU7CA0gVCsoY2lAo64Hx9X9HHsoDFd3dw9WNce
 tdvQ==
X-Gm-Message-State: AOAM530bM0VY3/84E4hijuJuKYsFndPThhF8tQGVerHw6L20ocwT71Jl
 R1j/h4gXLoHeSMsnWjzo4a5whCLgNKq/3diwpV4=
X-Google-Smtp-Source: ABdhPJwDxXKomkhBMSZecfzqXbfPInY8YEevgMyZjYng1L5idOKeaMBhcvKqCXedhJHL0x9jetycvuxj0lBTXrhqv+M=
X-Received: by 2002:a05:6830:2366:: with SMTP id
 r6mr12980007oth.376.1639669048743; 
 Thu, 16 Dec 2021 07:37:28 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6830:4cf:0:0:0:0 with HTTP; Thu, 16 Dec 2021 07:37:28
 -0800 (PST)
From: Mrmohammed shamekh <azizissaa101@gmail.com>
Date: Thu, 16 Dec 2021 07:37:28 -0800
Message-ID: <CALbx=XRcCv2Bbk2WNXSxGXrHDP6YnvUC+yOfwoyusgSA5xXsJg@mail.gmail.com>
Subject: URGENTBUSINESSPROPOSAL
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
Reply-To: mohammedshamekh24@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gClNpci9NcnMuCgpHb29kIERheSwKCldlIHRoZSBXb3JsZCBCYW5rIEdyb3VwIExpYWlzb24g
b2ZmaWNlIGluIEJ1cmtpbmEgRmFzby1PdWFnYWRvdWdvdSBCRgp3aXNoZXMgdG8gYnJpbmcgdG8g
YmFzZSBvbiB0aGUgaW5zdHJ1Y3Rpb24gYnkgdGhlIEVjb25vbWljIENvbW11bml0eQpvZiBXZXN0
IEFmcmljYW4gU3RhdGVzIChFQ08tV0FTKSBhbmQgQWZyaWNhbiBVbmlvbiBpbmNsdWRpbmcgdGhl
IHdvcmxkCmJhbmsgR3JvdXAgR2VuZXZhIG9mZmljZSBpbiBTd2l0emVybGFuZCB3aXNoZXMgdG8g
aW5mb3JtIHlvdSB0aGF0IHlvdQpoYXZlIGJlZW4gY29tcGVuc2F0ZSB3aXRoIGNhc2ggcmV3YXJk
IGNhcmQgdmFsdWVkIG9mIHskODAwLjAwMC4wMH0KYmVjYXVzZSB5b3VyIGZpbGUgd2FzIHBhc3Nl
ZCB0byBvdXIgb2ZmaWNlIHlvdSBhcmUgYW1vbmcgdGhlIHZpY3RpbSBvZgpmcmF1ZCBhbmQgc2Nh
bSBpbiBBZnJpY2EgLyBCdXJraW5hIEZhc28g4oCTT3VhZ2Fkb3Vnb3UuCgpZb3VyIGZ1bmQgeyQ4
MDAuMDAwLjAwfSB0byBjYXNoIHJld2FyZCBhdG0gdmlzYSBjYXJkIGxlZ2FsbHkKYXBwcm92ZWQg
Ynkgb3VyIGNvcnJlc3BvbmRlbmNlIGJhbmsgb2YgQW1lcmljYSB2aWV3IHRoZSB3ZWIgbGluayBi
ZWxvdwpEaXJlY3RvciBhcHByb3ZlZCDCrChodHRwczovL25ld3Nyb29tLmJhbmtvZmFtZXJpY2Eu
Y29tL3BhdWwtZG9ub2ZyaW8pIC4KUEVBU0UgRk9SV0FSRCBZT1VSIElORk9STUFUSU9OIFRPIE1y
ICBtb2hhbW1lZCAgIHNoYW1la2ggLAoxLiBGdWxsIE5hbWU6Li4uLi4uLi4uCjIuIENvdW50cnk6
Li4uLi4uLi4KMy4gRGVsaXZlcnkgQWRkcmVzczouLi4uLi4uLi4uCjQuIFRlbGVwaG9uZTouLi4u
Li4uLi4uLi4uLiYgT2NjdXBhdGlvbi4uLi4uLi4KNS4gWW91ciBBZ2UuLi4uLi4gL1NleC4uLi4u
Li4uLi4KCk5PVEU6IEZvciB0aGUgaW1tZWRpYXRlIGNvbGxlY3Rpb24gb2YgeW91ciBDQVNIIFJF
V0FSRCBDQVJEIGNvbnRhY3QKb3VyIHJlcHJlc2VudGF0aXZlIEFnZW50LiBNciAgbW9oYW1tZWQg
ICBzaGFtZWtoICwgTGlhaXNvbiBvZmZpY2UgaW4gQnVya2luYQpGYXNvLU91YWdhZG91Z291IEJG
IHRvIGVuYWJsZSB5b3UgY29uZmlybSB5b3VyIHBheW1lbnQgd2l0aG91dCBmdXJ0aGVyCmRlbGF5
IGFuZCBub3RlIGFueSBvdGhlciBjb250YWN0IHlvdSBtYWRlIG91dHNpZGUgaGlzIG9mZmljZSBp
cyBhdCBvZgp5b3VyIG93biByaXNrLgoKS2luZGx5IHJlcGx5IG1lIGJhY2sgdG8gbXkgYWx0ZXJu
YXRpdmUgZW1haWwKYWRkcmVzcyhNciBtb2hhbW1lZHNoYW1la2gyNEBnbWFpbC5jb20pIE1yICBt
b2hhbW1lZCAgIHNoYW1la2gKCgpUaGFua3MKTXIgIG1vaGFtbWVkICAgc2hhbWVraCAsCkNvLWNv
b3JkaW5hdG9yCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=

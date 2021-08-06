Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 369813E2E2A
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Aug 2021 18:09:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBCE0402FA;
	Fri,  6 Aug 2021 16:09:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dnpBn_VX0tv1; Fri,  6 Aug 2021 16:09:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 386E940231;
	Fri,  6 Aug 2021 16:09:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9EBE31BF2F7
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 16:09:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9859360706
 for <devel@linuxdriverproject.org>; Fri,  6 Aug 2021 16:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cwn0G4j5dqe9 for <devel@linuxdriverproject.org>;
 Fri,  6 Aug 2021 16:09:19 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com
 [IPv6:2607:f8b0:4864:20::234])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 075B8606F3
 for <devel@driverdev.osuosl.org>; Fri,  6 Aug 2021 16:09:18 +0000 (UTC)
Received: by mail-oi1-x234.google.com with SMTP id u10so12762765oiw.4
 for <devel@driverdev.osuosl.org>; Fri, 06 Aug 2021 09:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=OBi0oTo3aDwSNEK1lw7mnPYsUbBkTGGhh3pLIEHBCac=;
 b=YbRnvoIJFJVpqwcg5CWHh0kejdBvwidala/C3Wh7BJvZKNKtY/u+77q+xuuswcdbOV
 Gqgjp0/TdqSw2uWrvoTyT3mo3vNnQIXDDFLdQ0NirpIQCD0NyVRe3MyjWsJLiVsLAWJA
 Gmm4YhGE3CNyzGM3oEy+OYnVG5Tz8VeL+CZ/C1VZwV9dH4e6r9NdykY+6fzZ2uWRyLq+
 +1uLEF6HtveiKuY+HXTUd7fZ2dF5veVbQ3tzyWla/5R4NZlV7rHBpFfd8vnb4c2DEG7B
 3pTq+7/Z09rJEq5NFFpxE1+N30evpP0D/IUhPCq+2PHUQg7rk+G7lzjQNqSrF5so9lmE
 sK1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=OBi0oTo3aDwSNEK1lw7mnPYsUbBkTGGhh3pLIEHBCac=;
 b=b6Mvn8xen0gAxx6fBW4tWQpt68E0o0FPQhXHWWYsN/kXyFBmiqcH4gy6bnqn/vClJK
 sBHRj6aeW5P5j2kLLr92ZT277oxnrbaX+Pfk+3TYZWwcayh5S3cs9u5oq5LzRKTGOfEr
 iKZ5ThZrr/Eyf48gi2XX1DVDri003XvExp78pWOh/3OutsvPb1G9ai/FrPkIbo+1FiN2
 xZM/3fYBZEYR7yLaQqS1KiAWKTS4H822anAw3E4Q+QiUL3ErAN6iqKosyq+Scfm0nuQ3
 yIrhWRfeAwceXsIG8lkatO4uzRQlgG0bbTlaik4MsOC7zVM4ExoUsit/9+A8DWm5V1cE
 SnhA==
X-Gm-Message-State: AOAM532C5zVik4Q1+IyROMfQjl1+w8dwx5lfK1kP5zicpCb51qm9mUzz
 BZctbl8m0BCFaSxfic10qBG06oXEZ4DindMACeE=
X-Google-Smtp-Source: ABdhPJwXVVWQBZ+etQJrRds7DFLegHBjXVCMI8M4kwh7AZtkY1gNYcFqjNnJQw1//qMEHJXMHJr7MLyQmdtS9RTCGuU=
X-Received: by 2002:aca:bf84:: with SMTP id p126mr7724837oif.154.1628266157729; 
 Fri, 06 Aug 2021 09:09:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:13c3:0:0:0:0 with HTTP; Fri, 6 Aug 2021 09:09:17
 -0700 (PDT)
From: St Mary Orphanage Home <stmaryorphanagehome78@gmail.com>
Date: Fri, 6 Aug 2021 09:09:17 -0700
X-Google-Sender-Auth: hQDutYe8K4b4lmqLqx-XLA1T7z8
Message-ID: <CAL5z9Pc+CuJG+-bZCACf-mChP-okChOyKzPsapyQryGpr_FP9w@mail.gmail.com>
Subject: Dear friend
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
Reply-To: stmaryorphanagehome@yandex.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R29vZCBkYXkgbXkgZGVhcmVzdCBvbmUKCkkga25vdyB0aGlzIGNvbnRhY3QgbWF5IHN1cnByaXNl
IHlvdS4gSSBhbSB3cml0aW5nIHRoaXMgZW1haWwgdG8geW91CndpdGggaGVhdnkgdGVhcnMuIFdo
ZW4gSSB3YW50ZWQgdG8gZmluZCBzb21lb25lIGZhciBhd2F5IGZvciBwZXJzb25hbApyZWFzb25z
LCBteSBleWVzIGFuZCBteSBoZWFydCB3ZXJlIGV4dHJlbWVseSBzYWQuIEFsdGhvdWdoIHdlIGRp
ZG7igJl0Cmtub3cgZWFjaCBvdGhlciBiZWZvcmUsIGkgZGVjaWRlZCB0byB0ZWxsIHlvdSB0aGlz
LCAgSSBoYXZlIG5vIGNob2ljZQp0byBjb250YWN0IHlvdS4gTXkgbmFtZSBpcyBSZXYgRmF0aGVy
IElzYWFjIEJyeWFuIGZyb20gU3QgTWFyeQpPcnBoYW5hZ2UgaG9tZSwgYW0gY29udGFjdGluZyB5
b3Ugb24gYSByaXNrIGZyZWUgYnVzaW5lc3MgcHJvcG9zYWwKYWJvdXQgYSAxNSB5ZWFyIG9sZCBn
aXJsIHdob3NlIG5hbWUgaXMgRmFycmluYSBLaXBrYWx5YSB0aGF0IGlzIGluIFN0Ck1hcnkgT3Jw
aGFuYWdlIGhvbWUgaGVyZSBpbiBCdXJraW5hIEZhc28uIEhlciBwYXJlbnRzIHNldHRsZWQgaW4K
QnVya2luYSBGYXNvIGFzIGFuIGludmVzdG9yIDkgeWVhcnMgYWdvLCBidXQgdGhleSBkaWVkIGlu
IGEgY2FyCmFjY2lkZW50IGluIDIwMjAsYW5kIGxlZnQgdGhpcyBsaXR0bGUgZ2lybCBhbG9uZSB3
aXRob3V0IG5vIHJlbGF0aXZlcwpiZWNhdXNlIHNoZSBpcyB0aGVyZSBvbmx5IGNoaWxkLgoKTm90
IGtub3dpbmcgaGVyIHBhcmVudHMgZGVwb3NpdGVkICAzLDUwMCwwMDAuMDAgVVMgZG9sbGFycygz
LjUKbWlsbGlvbiBVUyBkb2xsYXJzKSBpbnRvIGEgZml4ZWQgZGVwb3NpdCBhY2NvdW50IGluIFUu
Qi5BIGJhbmsgaW4KQnVya2luYSBGYXNvLCBoZXIgcGFyZW50cyByYWlzZWQgZnVuZHMgZnJvbSBh
IDkteWVhciBpbnZlc3RvciBpbgpCdXJraW5hIEZhc28gLiBUaGUgbW9uZXkgaXMgc3RpbGwgdGhl
cmUuIFdlICBoYXZlIGJlZW4gdG8gdGhlIGJhbmsKc2V2ZXJhbCBvY2Nhc2lvbiBidXQgdGhlIGJh
bmsgaGFzIHJlZnVzZWQgdG8gcmVsZWFzZSB0aGlzIGZ1bmQgdG8gdGhpcwpsaXR0bGUgZ2lybCBi
ZWNhdXNlIHNoZSBpcyBhbiB1bmRlciBhZ2VkICBnaXJsLCB0aGUgYmFuayBhZHZpc2VkIHdlCnNo
b3VsZCBicmluZyBhIGZvcmVpZ25lciB0aGF0IHdpbGwgcmVjZWl2ZSB0aGlzIGZ1bmQgYW5kIHRo
ZW4gdHJhbnNmZXIKaXQgdG8gdGhpcyBsaXR0bGUgZ2lybCB0byBlYXNlIGFuZCBoZWxwIHRoaXMg
bGl0dGxlIG9ycGhhbi4gV2UgaGF2ZQp0aGUgYXBwcm92ZSBwcm9wZXIgbGVnYWwgZG9jdW1lbnRz
IHRvIGhhbmQgdGhlbSBvdmVyIHRoaXMgZnVuZCB0byB5b3UKaW4geW91ciBjb3VudHJ5LCB0aGF0
IGlzIHRoZSByZWFzb24gd2h5IGkgYW0gY29udGFjdGluZyB5b3UgdG8gaGVscApyZWNlaXZlIHRo
aXMgZnVuZCBpbiB5b3VyIGNvdW50cnksIHRvIGhlbHAgdGhlIGxpZmUgb2YgdGhpcyBsaXR0bGUK
Z2lybCBhbmQgdGhlIG90aGVyIG9ycGhhbnMgaGVyZSBpbiB0aGUgb3JwaGFuYWdlIGhvbWUgaGVy
ZSBpbiBTdCBNYXJ5Ck9ycGhhbmFnZSBob21lIGluIEJ1cmtpbmEgRmFzbwoKSSBob3BlIHlvdSB1
c2UgNjAlIG9mIHRoZSBtb25leSBmb3IgcGVyc29uYWwgdXNlIHRvIHNob3cgeW91ciB0cnVzdAph
bmQgZWZmb3J0cyB0byBtYWtlIHRoaXMgZ2lmdCBhIHJlYWxpdHksIGFuZCA0MCUgb2YgdGhlIG1v
bmV5IHdpbGwgYmUKZG9uYXRlZCB0byB0aGlzIGxpdHRsZSBnaXJsIHRvIGhlbHAgYmV0dGVyIGhl
ciBsaWZlIGFuZCB0aGUgbGlmZeKAmXMgb2YKb3RoZXIgb3JwaGFuIGhlcmUgaW4gdGhlIG9ycGhh
bmFnZSAgaG9tZSBvdmVyIGhlcmUgaW4gQnVya2luYSBGYXNvIGFuZAphbHNvIHRvIFN0cmVldCBj
aGFyaXRpZXMuIEFmdGVyIHJlY2VpdmluZyB5b3VyIHJlcGx5LCBJIHdpbGwgY29udGFjdAp5b3Ug
YXMgc29vbiBhcyBwb3NzaWJsZSB3aXRoIHRoZSAgcHJvY2VzcyAgYW5kIGFwcHJvdmUgdGhlIGN1
cnJlbnQKYmVuZWZpY2lhcnnigJlzIGZ1bmRzIFRoZSBkaXJlY3RvciBvZiB0aGUgYmFuayB3aWxs
IGJlIG5vdGlmaWVkIHRoYXQgeW91CmFyZSB0aGUgcGVyc29uIEkgY2hvb3NlIHRvIGNvbGxlY3Qg
b24gdGhpcyBsaXR0bGUgZ2lybHMgYmVoYWxmLiB5b3UKY2FuIGNhbGwgb3IgY2hhdCBtZSBvbiB3
aGFzdGFwcCB3aXRoIHRoaXMgbnVtYmVyICsyMjY1NjgxMzY3NQoKTWF5IHRoZSBwZWFjZSBvZiB0
aGUgbG9yZCBiZSB3aXRoIHlvdQpSZXYgRmF0aGVyIElzYWFjIEJyeWFuCkRpcmVjdG9yIFN0IE1h
cnkgT3JwaGFuYWdlIEhvbWUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==

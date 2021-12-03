Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEC54679BA
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Dec 2021 15:49:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 71C194040A;
	Fri,  3 Dec 2021 14:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RLbooeSt1qRR; Fri,  3 Dec 2021 14:49:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B960A40408;
	Fri,  3 Dec 2021 14:49:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20AE61BF2F2
 for <devel@linuxdriverproject.org>; Fri,  3 Dec 2021 14:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 00CBB82521
 for <devel@linuxdriverproject.org>; Fri,  3 Dec 2021 14:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LaspZCYr8QW6 for <devel@linuxdriverproject.org>;
 Fri,  3 Dec 2021 14:49:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A656824E3
 for <devel@driverdev.osuosl.org>; Fri,  3 Dec 2021 14:49:27 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id p13so3146934pfw.2
 for <devel@driverdev.osuosl.org>; Fri, 03 Dec 2021 06:49:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=WOyJjkaw0a1yWtfZg+K+NoUdaW9a96/iScerTzC0GVA=;
 b=VTbAKG7bfu4pgymo9hZl9cUV4vv0XHTUFoMJVuwVmmc7x6+naZ+pjCBfoSbqACoFRE
 sv+X3rCuAjxOjoVVPsrJnGUz3ow8VbplD7NtqeqW/Ke70t9b2ODOUwxOXNnU17mbXj5G
 rl9QRZkav1K8HIP2DoAndks7CXKW9USAt06IyqnEEHISsbQ/ukoy0Pg7u6cfrIdsKPTM
 1Mo7PNUCFqQgp/Zu+idpZi6iuhIbCON2quj62CT0yvjYQe1m/9ttFXYCSA4dEk+vfDJK
 y177Sn++BkmVsX17WdzgBEIeAX2pIb/lJVN0nE72//T423Iq/digjKkD5NMMC4djF3Qp
 YdUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=WOyJjkaw0a1yWtfZg+K+NoUdaW9a96/iScerTzC0GVA=;
 b=d3r6bVMVvQtLaAUiPPtIZyPzUUi4dLbYXV2C1Z1Kx/m9L1xtnR8qfXEfwuIHAbn2EX
 fywBdxFjOunqbfVXwmEx6hE6pos9iOaSndh66qJJYEgsnmGpmgoQHcg37EZHw2DoKhFl
 UmYcqd+P5jhm7IemBOxipOC0EgFXZS5WpjAgwsRPjUexXBlsiknqkHvV57DWILFgCg38
 o3U/hZ5h2iLbI+tCLl6xQosLUAJcC4V31QSVtNobmu3/Youlksx37sCk+UlEpUuHn+4P
 UAQAgG+RHYWppqA7cK9/u2BFl3DO7i1uNbyfLasmRjp/XZpNi6vtL5x2kQvYCrEYpB86
 tg6A==
X-Gm-Message-State: AOAM532ZVUlWCsc4QAbOzaD3d/Vu/NeWXfZZVOPe4Hs+tCPFFUbxKdKr
 8XuIJ5k42jVIAXJgihYwYsFCKC2oAgBaM6Qf7eA=
X-Google-Smtp-Source: ABdhPJx8xWqMzEFYBt+Y+wPmSFAvWVkdm/ghkvL9Mg9B7JTsy16VNyOcKdtNPOTObKPDEghksTagmIApwL4Lakz0yTk=
X-Received: by 2002:a05:6a00:cd0:b0:49f:b198:97a5 with SMTP id
 b16-20020a056a000cd000b0049fb19897a5mr19837933pfv.80.1638542966610; Fri, 03
 Dec 2021 06:49:26 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:90a:ee88:0:0:0:0 with HTTP; Fri, 3 Dec 2021 06:49:26
 -0800 (PST)
From: "Mrs.Christine Marran " <christinemarran77@gmail.com>
Date: Fri, 3 Dec 2021 06:49:26 -0800
X-Google-Sender-Auth: gIWLUkYGxRt6Q-BxUpMzs5Tzluk
Message-ID: <CAN3+5f5P0eskphy90=kP=tbA8dFQUXVkUxTakfJ-+LxQqEYDew@mail.gmail.com>
Subject: Greetings Dear,
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
Reply-To: christinemarran77@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzIERlYXIsCgoKSSdtIGEgNzUgeWVhciBvbGQgQnJpdGlzaCB3b21hbi4gSSB3YXMg
Ym9ybiBhbiBvcnBoYW4gYW5kIEdPRCBibGVzc2VkCm1lIGFidW5kYW50bHkgd2l0aCByaWNoZXMg
YnV0IG5vIGNoaWxkcmVuIG5vciBodXNiYW5kIHdoaWNoIG1ha2VzIG1lCmFuIHVuaGFwcHkgd29t
YW4uIE5vdyBJIGFtIGFmZmVjdGVkIHdpdGggY2FuY2VyIG9mIHRoZSBsdW5nIGFuZCBicmVhc3QK
d2l0aCBhIHBhcnRpYWwgc3Ryb2tlIHdoaWNoIGhhcyBhZmZlY3RlZCBteSBzcGVlY2guIEkgY2Fu
IG5vIGxvbmdlcgp0YWxrIHdlbGwgYW5kIGhhbGYgb2YgbXkgYm9keSBpcyBwYXJhbHl6ZWQsIEkg
c2VudCB0aGlzIGVtYWlsIHRvIHlvdQp3aXRoIHRoZSBoZWxwIG9mIG15IHByaXZhdGUgZmVtYWxl
IG51cnNlLgoKQWZ0ZXIgZ29pbmcgdGhyb3VnaCB5b3VyIHByb2ZpbGUsIEkgZGVjaWRlZCB0byBt
YWtlIG15IGxhc3QgZG9uYXRpb24Kb2YgVGVuIE1pbGxpb24gRml2ZSBIdW5kcmVkIFRob3VzYW5k
IFVuaXRlZCBLaW5nZG9tIFBvdW5kcwooVUvCozEwLjUwMCwgMDAwLCAwMCkgdG8geW91IGFzIG15
IGludmVzdG1lbnQgbWFuYWdlci4gSSB3YW50IHlvdSB0bwpidWlsZCBhbiBPcnBoYW5hZ2UgaG9t
ZSB3aXRoIG15IG5hbWUgKCAgTXJzLkNocmlzdGluZSBNYXJyYW4gICkgaW4KeW91ciBjb3VudHJ5
LgoKSWYgeW91IGFyZSB3aWxsaW5nIGFuZCBhYmxlIHRvIGRvIHRoaXMgdGFzayBmb3IgdGhlIHNh
a2Ugb2YgaHVtYW5pdHkKdGhlbiBzZW5kIG1lIGJlbG93IGluZm9ybWF0aW9uIGZvciBtb3JlIGRl
dGFpbHMgdG8gcmVjZWl2ZSB0aGUgZnVuZHMuCgoxLiBOYW1lLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uCgoyLiBQaG9uZSBudW1iZXIuLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uCgozLiBBZGRyZXNzLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uCgo0LiBDb3VudHJ5IG9mIE9yaWdpbiBhbmQgcmVzaWRlbmNl
CgpNcnMuQ2hyaXN0aW5lIE1hcnJhbiAgICwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==

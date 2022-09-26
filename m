Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E5E5EA8BF
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Sep 2022 16:42:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BBB6640144;
	Mon, 26 Sep 2022 14:41:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBB6640144
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zEJIaWrH4XLv; Mon, 26 Sep 2022 14:41:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 504CE400BB;
	Mon, 26 Sep 2022 14:41:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 504CE400BB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 41C2C1BF369
 for <devel@linuxdriverproject.org>; Mon, 26 Sep 2022 14:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 29DD640144
 for <devel@linuxdriverproject.org>; Mon, 26 Sep 2022 14:41:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29DD640144
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jVUg70WNCtEF for <devel@linuxdriverproject.org>;
 Mon, 26 Sep 2022 14:41:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30996400BB
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30996400BB
 for <devel@linuxdriverproject.org>; Mon, 26 Sep 2022 14:41:53 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id e18so9361063edj.3
 for <devel@linuxdriverproject.org>; Mon, 26 Sep 2022 07:41:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=9o1KrTYMU7P5FRr4MCvOVgz7z4+UomX8dxwckhFFzvw=;
 b=HL1zCoKoO8xlqxmVt6xyUUh6inNfZpLOjABzsuPo/VfgbIjiAPhmCsQBHHVYRM3s3f
 CAHy0ozW8WIhUwFRtKJ0d30nZPYVX8kix/FMwvNbzGLY8jt4GIze2re+ZYNfBd7ou++4
 pGWRSmx6rMIYJozwfiqkaIDurQMFTDqQtdmCDZh1FMqVQOFKe0tSREPbwMTikzBIvolA
 NT5p5TUfXoN17ySG3e5619TAd6BVksS96dTkFCp0ketJuIsR09mweYYf8bd4qRRRR2hP
 OeGlnFMmVGZ120/o2aI+fF/FvCWAAyl5rT8UuV+zYNUa8MutxDifJnVwQihGfc1Zu4NL
 flyQ==
X-Gm-Message-State: ACrzQf2e7xAXZUh/Z5pYSqVdzvXk3/qF8CgH8KDH2SZGyOfHyvQFJYuu
 9d7T+y1nyRqNt4MqoU9yP/1E+UeE/Is08EBWiW0=
X-Google-Smtp-Source: AMsMyM49O7ArD74VGaV9nO5NrypO+TFudKepx9CZPLs2Eej5AG5PdEuyYywKgIOJOcuC0A4nEMMJ+9WbNxacVYFhl04=
X-Received: by 2002:a05:6402:40cc:b0:452:697e:da18 with SMTP id
 z12-20020a05640240cc00b00452697eda18mr22202820edb.288.1664203311374; Mon, 26
 Sep 2022 07:41:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:2485:0:0:0:0:0 with HTTP; Mon, 26 Sep 2022 07:41:50
 -0700 (PDT)
From: Frau Rahel Blocher <mohammedabdulhamid308@gmail.com>
Date: Mon, 26 Sep 2022 15:41:50 +0100
Message-ID: <CADOu71guh8SZo-a-w=ez7qvNnd40V5ShOiyVajbScSnCZ6Gnwg@mail.gmail.com>
Subject: Aw: Spende
To: undisclosed-recipients:;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date;
 bh=9o1KrTYMU7P5FRr4MCvOVgz7z4+UomX8dxwckhFFzvw=;
 b=HAh/xOh0e59svi2+dZcwAYdJtlWxFotr2i+zYUludR7sFRN89bTw2sco3uBhRR6Tmd
 8VV8Ekzwfa+PLL2SqUWiFwaPwJdICkT3D7x10GRQuNzeN5eui9nLF2ry8kuUi7VEgRdh
 gFIjRGC2OBoqqCcw/fHo7v9f7Q55V6ntMwyqoMhPiASLS8IEylM9Qj7FbWoquOv/OqL7
 VYG6ExVdAiFA2UuRjCq12TXFi9syXvzQ03mf48QzdJ3ekS6VCDHsl1aOimRJICdES1va
 eDXF/G/MoiikggumstQPNzWui19el/Sd8TfpmPOsWYT8QW3snT5xEBzXQVo8uaoWtNWu
 SbEw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=HAh/xOh0
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
Reply-To: frau.rahel.blocher.spende001@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCkhhbGxvIEdlbGllYnRlLAoKSWNoIGJpbiBGcmF1IFJhaGVsIEJsb2NoZXIsIGVpbmUgU2No
d2VpemVyaW4gdW5kIENFTyB2b24gRWxtYQpFbGVjdHJvbmljIEluYy5Db24sIEludmVzdG9yaW4g
dW5kIFBoaWxhbnRocm9waW4uIEljaCBiaW4gZGVyClZvcnNpdHplbmRlIHZvbiBFbG1hIEVsZWN0
cm9uaWMgTGltaXRlZC4gSWNoIGhhYmUgMzUgUHJvemVudCBtZWluZXMKcGVyc8O2bmxpY2hlbiBW
ZXJtw7ZnZW5zIGbDvHIgd29obHTDpHRpZ2UgWndlY2tlIHZlcnNjaGVua3QuIFVuZCBpY2ggaGFi
ZQphdWNoIHp1Z2VzYWd0LCBkaWUgcmVzdGxpY2hlbiAzNSAlIGluIGRpZXNlbSBKYWhyIDIwMjIg
YW4KRWluemVscGVyc29uZW4genUgdmVyc2NoZW5rZW4uIEljaCBoYWJlIGJlc2NobG9zc2VuLCBJ
aG5lbgoxLjQwMC4wMDAsMDAgRXVybyB6dSBzcGVuZGVuLCB1bmQgZGllcyBpc3QgZGVyIFd1bnNj
aCBtZWluZXMgVmF0ZXJzLAp1bmQgd2VubiBTaWUgYW4gbWVpbmVyIFNwZW5kZSBpbnRlcmVzc2ll
cnQgc2luZCwga29udGFrdGllcmVuIFNpZSBtaWNoCmbDvHIgd2VpdGVyZSBJbmZvcm1hdGlvbmVu
IHVuZCBEYXRlbi4KClNpZSBrw7ZubmVuIGF1Y2ggbWVociDDvGJlciBtaWNoIMO8YmVyIGRlbiBM
aW5rIGxlc2VuOgpodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9SYWhlbF9CbG9jaGVyCgoh
ISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhISEhICEhISEh
CkhlcnpsaWNoZXIgR3J1c3MKQ0VPIEVsbWEgRWxlY3Ryb25pYwpSYWhlbCBCbG9jaGVyCkUtTWFp
bDogZnJhdS5yYWhlbC5ibG9jaGVyLnNwZW5kZTAwMUBob3RtYWlsLmNvbQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
